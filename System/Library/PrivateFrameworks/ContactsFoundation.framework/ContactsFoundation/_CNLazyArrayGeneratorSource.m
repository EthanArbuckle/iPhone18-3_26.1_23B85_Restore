@interface _CNLazyArrayGeneratorSource
- (_CNLazyArrayGeneratorSource)initWithInitialState:(id)a3 condition:(id)a4 nextState:(id)a5 resultSelector:(id)a6;
- (id)nextObject;
@end

@implementation _CNLazyArrayGeneratorSource

- (_CNLazyArrayGeneratorSource)initWithInitialState:(id)a3 condition:(id)a4 nextState:(id)a5 resultSelector:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v25.receiver = self;
  v25.super_class = _CNLazyArrayGeneratorSource;
  v15 = [(_CNLazyArrayGeneratorSource *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_state, a3);
    v17 = [v12 copy];
    condition = v16->_condition;
    v16->_condition = v17;

    v19 = [v13 copy];
    nextState = v16->_nextState;
    v16->_nextState = v19;

    v21 = [v14 copy];
    resultFromState = v16->_resultFromState;
    v16->_resultFromState = v21;

    v16->_firstTime = 1;
    v23 = v16;
  }

  return v16;
}

- (id)nextObject
{
  if (self->_firstTime)
  {
    self->_firstTime = 0;
    state = self->_state;
    condition = self->_condition;
    if (((*(self->_condition + 2))() & 1) == 0)
    {
LABEL_3:
      v5 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    nextState = self->_nextState;
    v7 = self->_state;
    v8 = (*(self->_nextState + 2))();
    v9 = self->_state;
    self->_state = v8;

    v10 = self->_state;
    if (!(*(self->_condition + 2))())
    {
      goto LABEL_3;
    }
  }

  v11 = self->_state;
  v5 = (*(self->_resultFromState + 2))();
LABEL_6:

  return v5;
}

@end