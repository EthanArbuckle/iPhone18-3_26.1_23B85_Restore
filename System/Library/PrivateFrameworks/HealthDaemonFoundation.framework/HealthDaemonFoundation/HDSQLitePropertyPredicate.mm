@interface HDSQLitePropertyPredicate
- (BOOL)isCompatibleWithPredicate:(id)predicate;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation HDSQLitePropertyPredicate

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = HDSQLitePropertyPredicate;
  v3 = [(HDSQLitePredicate *)&v7 hash];
  property = [(HDSQLitePropertyPredicate *)self property];
  v5 = [property hash];

  return v3 + v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = HDSQLitePropertyPredicate;
  if ([(HDSQLitePredicate *)&v12 isEqual:equalCopy])
  {
    property = [(HDSQLitePropertyPredicate *)self property];
    property2 = [equalCopy property];
    if (property == property2)
    {
      v10 = 1;
    }

    else
    {
      property3 = [equalCopy property];
      if (property3)
      {
        property4 = [(HDSQLitePropertyPredicate *)self property];
        property5 = [equalCopy property];
        v10 = [property4 isEqual:property5];
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isCompatibleWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v9.receiver = self;
  v9.super_class = HDSQLitePropertyPredicate;
  if (![(HDSQLitePredicate *)&v9 isCompatibleWithPredicate:predicateCopy])
  {
    goto LABEL_5;
  }

  property = self->_property;
  v6 = predicateCopy[1];
  if (property == v6)
  {
    v7 = 1;
    goto LABEL_7;
  }

  if (v6)
  {
    v7 = [(NSString *)property isEqual:?];
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

LABEL_7:

  return v7;
}

@end