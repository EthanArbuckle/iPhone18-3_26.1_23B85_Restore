@interface HDSQLiteCheckConstraint
- (HDSQLiteCheckConstraint)init;
- (NSString)SQLCheckConstraint;
- (id)_init;
@end

@implementation HDSQLiteCheckConstraint

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HDSQLiteCheckConstraint;
  return [(HDSQLiteCheckConstraint *)&v3 init];
}

- (HDSQLiteCheckConstraint)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (NSString)SQLCheckConstraint
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end