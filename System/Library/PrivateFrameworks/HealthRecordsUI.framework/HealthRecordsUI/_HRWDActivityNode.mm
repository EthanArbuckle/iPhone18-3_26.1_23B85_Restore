@interface _HRWDActivityNode
- (HRWDUserActivityResponder)nextResponder;
- (HRWDUserActivityResponder)responder;
- (_HRWDActivityNode)initWithResponder:(id)a3;
- (id)_nextNode;
- (id)changeActivityForResponder:(id)a3 activityDictionary:(id)a4;
- (id)description;
- (id)transitionActivityForResponder:(id)a3 newResponder:(id)a4 transitionDictionary:(id)a5;
- (void)addActivitiesToArray:(id)a3 currentNode:(id)a4;
@end

@implementation _HRWDActivityNode

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_HRWDActivityNode *)self responder];
  v5 = [(_HRWDActivityNode *)self nextResponder];
  v6 = [v3 stringWithFormat:@"Responder: %@ Next Responder: %@ \n", v4, v5];

  return v6;
}

- (_HRWDActivityNode)initWithResponder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _HRWDActivityNode;
  v5 = [(_HRWDActivityNode *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(_HRWDActivityNode *)v5 setResponder:v4];
    [(_HRWDActivityNode *)v6 setNextResponder:0];
    v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];
    responderActivity = v6->_responderActivity;
    v6->_responderActivity = v7;

    nextResponderActivity = v6->_nextResponderActivity;
    v6->_nextResponderActivity = 0;

    v10 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:5 valueOptions:0 capacity:4];
    responderTable = v6->_responderTable;
    v6->_responderTable = v10;
  }

  return v6;
}

- (id)changeActivityForResponder:(id)a3 activityDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_HRWDActivityNode *)self responder];

  if (v8 == v6)
  {
    if (v7)
    {
      [(NSMutableDictionary *)self->_responderActivity addEntriesFromDictionary:v7];
    }

    v11 = self;
  }

  else
  {
    v9 = [(_HRWDActivityNode *)self _nextNode];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 changeActivityForResponder:v6 activityDictionary:v7];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)transitionActivityForResponder:(id)a3 newResponder:(id)a4 transitionDictionary:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_HRWDActivityNode *)self responder];

  if (v11 == v8)
  {
    v14 = [(NSMapTable *)self->_responderTable objectForKey:v9];
    if (!v14)
    {
      v14 = [[_HRWDActivityNode alloc] initWithResponder:v9];
      [(NSMapTable *)self->_responderTable setObject:v14 forKey:v9];
    }

    objc_storeStrong(&self->_nextResponderActivity, a5);
    [(_HRWDActivityNode *)self setNextResponder:v9];
  }

  else
  {
    v12 = [(_HRWDActivityNode *)self _nextNode];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 transitionActivityForResponder:v8 newResponder:v9 transitionDictionary:v10];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)addActivitiesToArray:(id)a3 currentNode:(id)a4
{
  v9 = a3;
  v6 = a4;
  [v9 addObject:self->_responderActivity];
  v7 = [(_HRWDActivityNode *)self _nextNode];
  v8 = v7;
  if (self != v6 && v7)
  {
    [v9 addObject:self->_nextResponderActivity];
    [v8 addActivitiesToArray:v9 currentNode:v6];
  }
}

- (id)_nextNode
{
  v3 = [(_HRWDActivityNode *)self nextResponder];

  if (v3)
  {
    responderTable = self->_responderTable;
    v5 = [(_HRWDActivityNode *)self nextResponder];
    v6 = [(NSMapTable *)responderTable objectForKey:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HRWDUserActivityResponder)responder
{
  WeakRetained = objc_loadWeakRetained(&self->_responder);

  return WeakRetained;
}

- (HRWDUserActivityResponder)nextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_nextResponder);

  return WeakRetained;
}

@end