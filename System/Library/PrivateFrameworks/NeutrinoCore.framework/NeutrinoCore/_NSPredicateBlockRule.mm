@interface _NSPredicateBlockRule
- (_NSPredicateBlockRule)initWithPredicate:(id)a3 action:(id)a4;
- (id)debugDescription;
- (void)performActionWithSystem:(id)a3;
@end

@implementation _NSPredicateBlockRule

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSPredicateRule *)self predicate];
  v5 = [v4 debugDescription];
  v6 = MEMORY[0x1C68D98A0](self->_action);
  v7 = [v3 stringWithFormat:@"IF %@ THEN %@", v5, v6];

  return v7;
}

- (void)performActionWithSystem:(id)a3
{
  action = self->_action;
  if (action)
  {
    action[2](action, a3);
  }
}

- (_NSPredicateBlockRule)initWithPredicate:(id)a3 action:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = _NSPredicateBlockRule;
  v7 = [(NSPredicateRule *)&v11 initWithPredicate:a3];
  if (v7)
  {
    v8 = MEMORY[0x1C68D98A0](v6);
    action = v7->_action;
    v7->_action = v8;
  }

  return v7;
}

@end