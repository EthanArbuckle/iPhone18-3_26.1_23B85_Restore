@interface CAFCarManagerConfiguration
- (CAFCarManagerConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
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
  sparseTree = [(CAFCarManagerConfiguration *)self sparseTree];
  v4 = @"NO";
  if (sparseTree)
  {
    v4 = @"YES";
  }

  return [v2 stringWithFormat:@"sparseTree=%@", v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CAFCarManagerConfiguration allocWithZone:?]];
  registrations = [(CAFCarManagerConfiguration *)self registrations];
  [(CAFCarManagerConfiguration *)v4 setRegistrations:registrations];

  [(CAFCarManagerConfiguration *)v4 setSparseTree:[(CAFCarManagerConfiguration *)self sparseTree]];
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(CAFCarManagerConfiguration *)[CAFCarManagerMutableConfiguration allocWithZone:?]];
  registrations = [(CAFCarManagerConfiguration *)self registrations];
  [(CAFCarManagerConfiguration *)v4 setRegistrations:registrations];

  [(CAFCarManagerConfiguration *)v4 setSparseTree:[(CAFCarManagerConfiguration *)self sparseTree]];
  return v4;
}

@end