@interface _NSPredicateRule
- (_NSPredicateRule)initWithCoder:(id)coder;
- (_NSPredicateRule)initWithPredicate:(id)predicate fact:(id)fact grade:(double)grade asserting:(BOOL)asserting;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
- (void)performActionWithSystem:(id)system;
@end

@implementation _NSPredicateRule

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  predicate = [(NSPredicateRule *)self predicate];
  v5 = [predicate debugDescription];
  v6 = v5;
  if (self->_asserting)
  {
    v7 = @"assert";
  }

  else
  {
    v7 = @"retract";
  }

  v8 = [v3 stringWithFormat:@"IF %@ THEN %@(%@) by %.2f", v5, v7, self->_fact, *&self->_grade];

  return v8;
}

- (void)performActionWithSystem:(id)system
{
  fact = self->_fact;
  grade = self->_grade;
  if (self->_asserting)
  {
    [system assertFact:fact grade:grade];
  }

  else
  {
    [system retractFact:fact grade:grade];
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _NSPredicateRule;
  coderCopy = coder;
  [(NSPredicateRule *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_asserting forKey:{@"asserting", v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"grade" forKey:self->_grade];
  [coderCopy encodeObject:self->_fact forKey:@"fact"];
}

- (_NSPredicateRule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _NSPredicateRule;
  v5 = [(NSPredicateRule *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_asserting = [coderCopy decodeBoolForKey:@"asserting"];
    [coderCopy decodeDoubleForKey:@"grade"];
    v5->_grade = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fact"];
    fact = v5->_fact;
    v5->_fact = v7;
  }

  return v5;
}

- (_NSPredicateRule)initWithPredicate:(id)predicate fact:(id)fact grade:(double)grade asserting:(BOOL)asserting
{
  factCopy = fact;
  v15.receiver = self;
  v15.super_class = _NSPredicateRule;
  v12 = [(NSPredicateRule *)&v15 initWithPredicate:predicate];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fact, fact);
    v13->_grade = grade;
    v13->_asserting = asserting;
  }

  return v13;
}

@end