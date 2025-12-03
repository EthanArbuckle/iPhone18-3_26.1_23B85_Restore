@interface HDSQLiteRawCheckConstraint
+ (id)checkConstraintWithSQL:(id)l;
- (void)_initWithSQL:(void *)l;
@end

@implementation HDSQLiteRawCheckConstraint

- (void)_initWithSQL:(void *)l
{
  v3 = a2;
  if (l)
  {
    v7.receiver = l;
    v7.super_class = HDSQLiteRawCheckConstraint;
    l = objc_msgSendSuper2(&v7, sel__init);
    if (l)
    {
      v4 = [v3 copy];
      v5 = l[1];
      l[1] = v4;
    }
  }

  return l;
}

+ (id)checkConstraintWithSQL:(id)l
{
  lCopy = l;
  v4 = [[HDSQLiteRawCheckConstraint alloc] _initWithSQL:lCopy];

  return v4;
}

@end