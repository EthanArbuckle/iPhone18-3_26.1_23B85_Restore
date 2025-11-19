@interface NSPredicateRule
- (BOOL)evaluatePredicateWithSystem:(id)a3;
- (NSPredicateRule)init;
- (NSPredicateRule)initWithCoder:(id)a3;
- (NSPredicateRule)initWithPredicate:(id)a3;
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

- (BOOL)evaluatePredicateWithSystem:(id)a3
{
  predicate = self->_predicate;
  v4 = a3;
  v5 = [v4 constants];
  LOBYTE(predicate) = [(NSPredicate *)predicate evaluateWithObject:v4 substitutionVariables:v5];

  return predicate;
}

- (NSPredicateRule)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];

  v6 = [(NSPredicateRule *)self initWithPredicate:v5];
  return v6;
}

- (NSPredicateRule)initWithPredicate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NSPredicateRule;
  v6 = [(NSPredicateRule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_predicate, a3);
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