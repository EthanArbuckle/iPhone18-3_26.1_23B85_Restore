@interface HDSQLiteRawCheckConstraint
+ (id)checkConstraintWithSQL:(id)a3;
- (void)_initWithSQL:(void *)a1;
@end

@implementation HDSQLiteRawCheckConstraint

- (void)_initWithSQL:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = HDSQLiteRawCheckConstraint;
    a1 = objc_msgSendSuper2(&v7, sel__init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

+ (id)checkConstraintWithSQL:(id)a3
{
  v3 = a3;
  v4 = [[HDSQLiteRawCheckConstraint alloc] _initWithSQL:v3];

  return v4;
}

@end