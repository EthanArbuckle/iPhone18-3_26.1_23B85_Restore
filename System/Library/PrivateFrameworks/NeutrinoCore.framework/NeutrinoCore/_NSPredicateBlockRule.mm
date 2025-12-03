@interface _NSPredicateBlockRule
- (_NSPredicateBlockRule)initWithPredicate:(id)predicate action:(id)action;
- (id)debugDescription;
- (void)performActionWithSystem:(id)system;
@end

@implementation _NSPredicateBlockRule

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  predicate = [(NSPredicateRule *)self predicate];
  v5 = [predicate debugDescription];
  v6 = MEMORY[0x1C68D98A0](self->_action);
  v7 = [v3 stringWithFormat:@"IF %@ THEN %@", v5, v6];

  return v7;
}

- (void)performActionWithSystem:(id)system
{
  action = self->_action;
  if (action)
  {
    action[2](action, system);
  }
}

- (_NSPredicateBlockRule)initWithPredicate:(id)predicate action:(id)action
{
  actionCopy = action;
  v11.receiver = self;
  v11.super_class = _NSPredicateBlockRule;
  v7 = [(NSPredicateRule *)&v11 initWithPredicate:predicate];
  if (v7)
  {
    v8 = MEMORY[0x1C68D98A0](actionCopy);
    action = v7->_action;
    v7->_action = v8;
  }

  return v7;
}

@end