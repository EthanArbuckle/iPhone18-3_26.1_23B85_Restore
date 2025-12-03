@interface CRKIDSLocalSimulationConfiguration
- (CRKIDSLocalSimulationConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKIDSLocalSimulationConfiguration

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithBool:{-[CRKIDSLocalSimulationConfiguration shouldForceAccountsInactive](self, "shouldForceAccountsInactive")}];
  [coderCopy encodeObject:v6 forKey:@"shouldForceAccountsInactive"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKIDSLocalSimulationConfiguration shouldForceRemoteUsersNotRegistered](self, "shouldForceRemoteUsersNotRegistered")}];
  [coderCopy encodeObject:v7 forKey:@"shouldForceRemoteUsersNotRegistered"];
}

- (CRKIDSLocalSimulationConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CRKIDSLocalSimulationConfiguration;
  v5 = [(CRKIDSLocalSimulationConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shouldForceAccountsInactive"];
    v5->_shouldForceAccountsInactive = [v6 BOOLValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shouldForceRemoteUsersNotRegistered"];
    v5->_shouldForceRemoteUsersNotRegistered = [v7 BOOLValue];
  }

  return v5;
}

@end