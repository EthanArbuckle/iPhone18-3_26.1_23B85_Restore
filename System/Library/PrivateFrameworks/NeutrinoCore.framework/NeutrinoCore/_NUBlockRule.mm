@interface _NUBlockRule
- (BOOL)evaluatePredicateWithSystem:(id)system;
- (_NUBlockRule)initWithPredicate:(id)predicate action:(id)action;
- (void)performActionWithSystem:(id)system;
@end

@implementation _NUBlockRule

- (void)performActionWithSystem:(id)system
{
  action = self->_action;
  if (action)
  {
    action[2](action, system);
  }
}

- (BOOL)evaluatePredicateWithSystem:(id)system
{
  predicate = self->_predicate;
  if (predicate)
  {
    LOBYTE(predicate) = predicate[2](predicate, system);
  }

  return predicate;
}

- (_NUBlockRule)initWithPredicate:(id)predicate action:(id)action
{
  predicateCopy = predicate;
  actionCopy = action;
  v14.receiver = self;
  v14.super_class = _NUBlockRule;
  v8 = [(_NUBlockRule *)&v14 init];
  if (v8)
  {
    v9 = MEMORY[0x1C68D98A0](predicateCopy);
    predicate = v8->_predicate;
    v8->_predicate = v9;

    v11 = MEMORY[0x1C68D98A0](actionCopy);
    action = v8->_action;
    v8->_action = v11;
  }

  return v8;
}

@end