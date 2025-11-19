@interface CRKIDSLocalSimulationConfiguration
- (CRKIDSLocalSimulationConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKIDSLocalSimulationConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithBool:{-[CRKIDSLocalSimulationConfiguration shouldForceAccountsInactive](self, "shouldForceAccountsInactive")}];
  [v5 encodeObject:v6 forKey:@"shouldForceAccountsInactive"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKIDSLocalSimulationConfiguration shouldForceRemoteUsersNotRegistered](self, "shouldForceRemoteUsersNotRegistered")}];
  [v5 encodeObject:v7 forKey:@"shouldForceRemoteUsersNotRegistered"];
}

- (CRKIDSLocalSimulationConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKIDSLocalSimulationConfiguration;
  v5 = [(CRKIDSLocalSimulationConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shouldForceAccountsInactive"];
    v5->_shouldForceAccountsInactive = [v6 BOOLValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shouldForceRemoteUsersNotRegistered"];
    v5->_shouldForceRemoteUsersNotRegistered = [v7 BOOLValue];
  }

  return v5;
}

@end