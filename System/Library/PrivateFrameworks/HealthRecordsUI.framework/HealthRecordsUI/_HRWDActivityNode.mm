@interface _HRWDActivityNode
- (HRWDUserActivityResponder)nextResponder;
- (HRWDUserActivityResponder)responder;
- (_HRWDActivityNode)initWithResponder:(id)responder;
- (id)_nextNode;
- (id)changeActivityForResponder:(id)responder activityDictionary:(id)dictionary;
- (id)description;
- (id)transitionActivityForResponder:(id)responder newResponder:(id)newResponder transitionDictionary:(id)dictionary;
- (void)addActivitiesToArray:(id)array currentNode:(id)node;
@end

@implementation _HRWDActivityNode

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  responder = [(_HRWDActivityNode *)self responder];
  nextResponder = [(_HRWDActivityNode *)self nextResponder];
  v6 = [v3 stringWithFormat:@"Responder: %@ Next Responder: %@ \n", responder, nextResponder];

  return v6;
}

- (_HRWDActivityNode)initWithResponder:(id)responder
{
  responderCopy = responder;
  v13.receiver = self;
  v13.super_class = _HRWDActivityNode;
  v5 = [(_HRWDActivityNode *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(_HRWDActivityNode *)v5 setResponder:responderCopy];
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

- (id)changeActivityForResponder:(id)responder activityDictionary:(id)dictionary
{
  responderCopy = responder;
  dictionaryCopy = dictionary;
  responder = [(_HRWDActivityNode *)self responder];

  if (responder == responderCopy)
  {
    if (dictionaryCopy)
    {
      [(NSMutableDictionary *)self->_responderActivity addEntriesFromDictionary:dictionaryCopy];
    }

    selfCopy = self;
  }

  else
  {
    _nextNode = [(_HRWDActivityNode *)self _nextNode];
    v10 = _nextNode;
    if (_nextNode)
    {
      selfCopy = [_nextNode changeActivityForResponder:responderCopy activityDictionary:dictionaryCopy];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)transitionActivityForResponder:(id)responder newResponder:(id)newResponder transitionDictionary:(id)dictionary
{
  responderCopy = responder;
  newResponderCopy = newResponder;
  dictionaryCopy = dictionary;
  responder = [(_HRWDActivityNode *)self responder];

  if (responder == responderCopy)
  {
    v14 = [(NSMapTable *)self->_responderTable objectForKey:newResponderCopy];
    if (!v14)
    {
      v14 = [[_HRWDActivityNode alloc] initWithResponder:newResponderCopy];
      [(NSMapTable *)self->_responderTable setObject:v14 forKey:newResponderCopy];
    }

    objc_storeStrong(&self->_nextResponderActivity, dictionary);
    [(_HRWDActivityNode *)self setNextResponder:newResponderCopy];
  }

  else
  {
    _nextNode = [(_HRWDActivityNode *)self _nextNode];
    v13 = _nextNode;
    if (_nextNode)
    {
      v14 = [_nextNode transitionActivityForResponder:responderCopy newResponder:newResponderCopy transitionDictionary:dictionaryCopy];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)addActivitiesToArray:(id)array currentNode:(id)node
{
  arrayCopy = array;
  nodeCopy = node;
  [arrayCopy addObject:self->_responderActivity];
  _nextNode = [(_HRWDActivityNode *)self _nextNode];
  v8 = _nextNode;
  if (self != nodeCopy && _nextNode)
  {
    [arrayCopy addObject:self->_nextResponderActivity];
    [v8 addActivitiesToArray:arrayCopy currentNode:nodeCopy];
  }
}

- (id)_nextNode
{
  nextResponder = [(_HRWDActivityNode *)self nextResponder];

  if (nextResponder)
  {
    responderTable = self->_responderTable;
    nextResponder2 = [(_HRWDActivityNode *)self nextResponder];
    v6 = [(NSMapTable *)responderTable objectForKey:nextResponder2];
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