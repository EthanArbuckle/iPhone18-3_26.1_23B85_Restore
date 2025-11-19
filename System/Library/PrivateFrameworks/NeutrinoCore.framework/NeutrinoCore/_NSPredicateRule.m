@interface _NSPredicateRule
- (_NSPredicateRule)initWithCoder:(id)a3;
- (_NSPredicateRule)initWithPredicate:(id)a3 fact:(id)a4 grade:(double)a5 asserting:(BOOL)a6;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
- (void)performActionWithSystem:(id)a3;
@end

@implementation _NSPredicateRule

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSPredicateRule *)self predicate];
  v5 = [v4 debugDescription];
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

- (void)performActionWithSystem:(id)a3
{
  fact = self->_fact;
  grade = self->_grade;
  if (self->_asserting)
  {
    [a3 assertFact:fact grade:grade];
  }

  else
  {
    [a3 retractFact:fact grade:grade];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _NSPredicateRule;
  v4 = a3;
  [(NSPredicateRule *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_asserting forKey:{@"asserting", v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"grade" forKey:self->_grade];
  [v4 encodeObject:self->_fact forKey:@"fact"];
}

- (_NSPredicateRule)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _NSPredicateRule;
  v5 = [(NSPredicateRule *)&v10 initWithCoder:v4];
  if (v5)
  {
    v5->_asserting = [v4 decodeBoolForKey:@"asserting"];
    [v4 decodeDoubleForKey:@"grade"];
    v5->_grade = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fact"];
    fact = v5->_fact;
    v5->_fact = v7;
  }

  return v5;
}

- (_NSPredicateRule)initWithPredicate:(id)a3 fact:(id)a4 grade:(double)a5 asserting:(BOOL)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = _NSPredicateRule;
  v12 = [(NSPredicateRule *)&v15 initWithPredicate:a3];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fact, a4);
    v13->_grade = a5;
    v13->_asserting = a6;
  }

  return v13;
}

@end