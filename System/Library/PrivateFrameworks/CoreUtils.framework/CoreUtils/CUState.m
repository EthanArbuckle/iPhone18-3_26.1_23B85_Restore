@interface CUState
- (CUState)initWithName:(id)a3 parent:(id)a4;
- (id)description;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CUState

- (void)invalidate
{
  eventHandler = self->_eventHandler;
  self->_eventHandler = 0;

  [(NSPointerArray *)self->_lcaMap setCount:0];
  lcaMap = self->_lcaMap;
  self->_lcaMap = 0;

  parent = self->_parent;
  self->_parent = 0;
}

- (id)description
{
  v2 = [(NSString *)self->_name copy];

  return v2;
}

- (void)dealloc
{
  if (self->_eventHandler || self->_lcaMap || self->_parent)
  {
    FatalErrorF("State %@: invalidate not called", a2, v2, v3, v4, v5, v6, v7, self->_name);
  }

  name = self->_name;
  self->_name = 0;

  v10.receiver = self;
  v10.super_class = CUState;
  [(CUState *)&v10 dealloc];
}

- (CUState)initWithName:(id)a3 parent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = CUState;
  v8 = [(CUState *)&v22 init];
  if (!v8)
  {
    FatalErrorF("init failed", v9, v10, v11, v12, v13, v14, v15, v22.receiver);
  }

  v16 = v8;
  v17 = [v6 copy];
  name = v16->_name;
  v16->_name = v17;

  v19 = v7;
  parent = v16->_parent;
  v16->_parent = v19;

  return v16;
}

@end