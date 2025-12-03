@interface NSPredicateRule
- (BOOL)evaluatePredicateWithSystem:(id)system;
- (NSPredicateRule)init;
- (NSPredicateRule)initWithCoder:(id)coder;
- (NSPredicateRule)initWithPredicate:(id)predicate;
- (id)debugDescription;
@end

@implementation NSPredicateRule

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSPredicate *)self->_predicate debugDescription];
  v7 = [v3 stringWithFormat:@"%@ : IF '%@'", v5, v6];

  return v7;
}

- (BOOL)evaluatePredicateWithSystem:(id)system
{
  predicate = self->_predicate;
  systemCopy = system;
  constants = [systemCopy constants];
  LOBYTE(predicate) = [(NSPredicate *)predicate evaluateWithObject:systemCopy substitutionVariables:constants];

  return predicate;
}

- (NSPredicateRule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];

  v6 = [(NSPredicateRule *)self initWithPredicate:v5];
  return v6;
}

- (NSPredicateRule)initWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v9.receiver = self;
  v9.super_class = NSPredicateRule;
  v6 = [(NSPredicateRule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_predicate, predicate);
  }

  return v7;
}

- (NSPredicateRule)init
{
  v3 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  v4 = [(NSPredicateRule *)self initWithPredicate:v3];

  return v4;
}

@end