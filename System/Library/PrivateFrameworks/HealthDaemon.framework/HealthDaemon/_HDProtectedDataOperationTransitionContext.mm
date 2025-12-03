@interface _HDProtectedDataOperationTransitionContext
- (BOOL)isEqual:(id)equal;
- (_HDProtectedDataOperationTransitionContext)initWithOldState:(int64_t)state newState:(int64_t)newState;
- (id)copyWithNewState:(int64_t)state;
@end

@implementation _HDProtectedDataOperationTransitionContext

- (_HDProtectedDataOperationTransitionContext)initWithOldState:(int64_t)state newState:(int64_t)newState
{
  v7.receiver = self;
  v7.super_class = _HDProtectedDataOperationTransitionContext;
  result = [(_HDProtectedDataOperationTransitionContext *)&v7 init];
  if (result)
  {
    result->_oldState = state;
    result->_newState = newState;
  }

  return result;
}

- (id)copyWithNewState:(int64_t)state
{
  v5 = objc_alloc(objc_opt_class());
  oldState = self->_oldState;

  return [v5 initWithOldState:oldState newState:state];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_oldState == equalCopy->_oldState && self->_newState == equalCopy->_newState;
  }

  return v5;
}

@end