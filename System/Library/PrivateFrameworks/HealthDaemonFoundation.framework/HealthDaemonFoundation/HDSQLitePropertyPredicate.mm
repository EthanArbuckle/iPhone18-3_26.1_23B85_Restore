@interface HDSQLitePropertyPredicate
- (BOOL)isCompatibleWithPredicate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation HDSQLitePropertyPredicate

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = HDSQLitePropertyPredicate;
  v3 = [(HDSQLitePredicate *)&v7 hash];
  v4 = [(HDSQLitePropertyPredicate *)self property];
  v5 = [v4 hash];

  return v3 + v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HDSQLitePropertyPredicate;
  if ([(HDSQLitePredicate *)&v12 isEqual:v4])
  {
    v5 = [(HDSQLitePropertyPredicate *)self property];
    v6 = [v4 property];
    if (v5 == v6)
    {
      v10 = 1;
    }

    else
    {
      v7 = [v4 property];
      if (v7)
      {
        v8 = [(HDSQLitePropertyPredicate *)self property];
        v9 = [v4 property];
        v10 = [v8 isEqual:v9];
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

- (BOOL)isCompatibleWithPredicate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDSQLitePropertyPredicate;
  if (![(HDSQLitePredicate *)&v9 isCompatibleWithPredicate:v4])
  {
    goto LABEL_5;
  }

  property = self->_property;
  v6 = v4[1];
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