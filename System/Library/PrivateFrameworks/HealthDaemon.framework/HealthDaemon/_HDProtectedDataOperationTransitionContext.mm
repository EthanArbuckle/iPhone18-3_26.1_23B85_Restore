@interface _HDProtectedDataOperationTransitionContext
- (BOOL)isEqual:(id)a3;
- (_HDProtectedDataOperationTransitionContext)initWithOldState:(int64_t)a3 newState:(int64_t)a4;
- (id)copyWithNewState:(int64_t)a3;
@end

@implementation _HDProtectedDataOperationTransitionContext

- (_HDProtectedDataOperationTransitionContext)initWithOldState:(int64_t)a3 newState:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = _HDProtectedDataOperationTransitionContext;
  result = [(_HDProtectedDataOperationTransitionContext *)&v7 init];
  if (result)
  {
    result->_oldState = a3;
    result->_newState = a4;
  }

  return result;
}

- (id)copyWithNewState:(int64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  oldState = self->_oldState;

  return [v5 initWithOldState:oldState newState:a3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_oldState == v4->_oldState && self->_newState == v4->_newState;
  }

  return v5;
}

@end