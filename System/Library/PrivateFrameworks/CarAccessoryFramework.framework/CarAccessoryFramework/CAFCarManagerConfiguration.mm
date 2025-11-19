@interface CAFCarManagerConfiguration
- (CAFCarManagerConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation CAFCarManagerConfiguration

- (CAFCarManagerConfiguration)init
{
  v4.receiver = self;
  v4.super_class = CAFCarManagerConfiguration;
  v2 = [(CAFCarManagerConfiguration *)&v4 init];
  if (v2)
  {
    v2->_sparseTree = CAFDefaultsGetBoolean(@"sparseTree", 1);
  }

  return v2;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(CAFCarManagerConfiguration *)self sparseTree];
  v4 = @"NO";
  if (v3)
  {
    v4 = @"YES";
  }

  return [v2 stringWithFormat:@"sparseTree=%@", v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CAFCarManagerConfiguration allocWithZone:?]];
  v5 = [(CAFCarManagerConfiguration *)self registrations];
  [(CAFCarManagerConfiguration *)v4 setRegistrations:v5];

  [(CAFCarManagerConfiguration *)v4 setSparseTree:[(CAFCarManagerConfiguration *)self sparseTree]];
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(CAFCarManagerConfiguration *)[CAFCarManagerMutableConfiguration allocWithZone:?]];
  v5 = [(CAFCarManagerConfiguration *)self registrations];
  [(CAFCarManagerConfiguration *)v4 setRegistrations:v5];

  [(CAFCarManagerConfiguration *)v4 setSparseTree:[(CAFCarManagerConfiguration *)self sparseTree]];
  return v4;
}

@end