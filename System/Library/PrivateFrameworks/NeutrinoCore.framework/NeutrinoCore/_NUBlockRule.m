@interface _NUBlockRule
- (BOOL)evaluatePredicateWithSystem:(id)a3;
- (_NUBlockRule)initWithPredicate:(id)a3 action:(id)a4;
- (void)performActionWithSystem:(id)a3;
@end

@implementation _NUBlockRule

- (void)performActionWithSystem:(id)a3
{
  action = self->_action;
  if (action)
  {
    action[2](action, a3);
  }
}

- (BOOL)evaluatePredicateWithSystem:(id)a3
{
  predicate = self->_predicate;
  if (predicate)
  {
    LOBYTE(predicate) = predicate[2](predicate, a3);
  }

  return predicate;
}

- (_NUBlockRule)initWithPredicate:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _NUBlockRule;
  v8 = [(_NUBlockRule *)&v14 init];
  if (v8)
  {
    v9 = MEMORY[0x1C68D98A0](v6);
    predicate = v8->_predicate;
    v8->_predicate = v9;

    v11 = MEMORY[0x1C68D98A0](v7);
    action = v8->_action;
    v8->_action = v11;
  }

  return v8;
}

@end