@interface CSDeviceUnblockPolicyEnvironment
- (BOOL)isEqual:(id)a3;
- (CSDeviceUnblockPolicyEnvironment)initWithBuilder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation CSDeviceUnblockPolicyEnvironment

- (CSDeviceUnblockPolicyEnvironment)initWithBuilder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CSDeviceUnblockPolicyEnvironment;
  v5 = [(CSDeviceUnblockPolicyEnvironment *)&v8 init];
  if (v5)
  {
    v6 = objc_alloc_init(CSDeviceUnblockPolicyEnvironmentBuilder);
    v4[2](v4, v6);
    v5->_isUserRequestedEraseEnabled = [(CSDeviceUnblockPolicyEnvironmentBuilder *)v6 isUserRequestedEraseEnabled];
    v5->_isUserFindMyAccountPresent = [(CSDeviceUnblockPolicyEnvironmentBuilder *)v6 isUserFindMyAccountPresent];
    v5->_isDeviceInternetConnectionActive = [(CSDeviceUnblockPolicyEnvironmentBuilder *)v6 isDeviceInternetConnectionActive];
    v5->_isPasscodeGracePeriodUsable = [(CSDeviceUnblockPolicyEnvironmentBuilder *)v6 isPasscodeGracePeriodUsable];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CSDeviceUnblockPolicyEnvironment alloc];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__CSDeviceUnblockPolicyEnvironment_copyWithZone___block_invoke;
  v6[3] = &unk_27838B668;
  v6[4] = self;
  return [(CSDeviceUnblockPolicyEnvironment *)v4 initWithBuilder:v6];
}

- (id)description
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  if ([(CSDeviceUnblockPolicyEnvironment *)self isUserRequestedEraseEnabled])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = [v3 stringWithFormat:@"isUserRequestedEraseEnabled: %@", v4];
  v18[0] = v5;
  v6 = MEMORY[0x277CCACA8];
  if ([(CSDeviceUnblockPolicyEnvironment *)self isUserFindMyAccountPresent])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v6 stringWithFormat:@"isUserFindMyAccountPresent: %@", v7];
  v18[1] = v8;
  v9 = MEMORY[0x277CCACA8];
  if ([(CSDeviceUnblockPolicyEnvironment *)self isDeviceInternetConnectionActive])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v9 stringWithFormat:@"isDeviceInternetConnectionActive: %@", v10];
  v18[2] = v11;
  v12 = MEMORY[0x277CCACA8];
  if ([(CSDeviceUnblockPolicyEnvironment *)self isPasscodeGracePeriodUsable])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = [v12 stringWithFormat:@"isPasscodeGracePeriodUsable: %@", v13];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
  v16 = [v3 stringWithFormat:@"%@", v15];

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CSDeviceUnblockPolicyEnvironment *)self isUserRequestedEraseEnabled];
    if (v6 == [v5 isUserRequestedEraseEnabled] && (v7 = -[CSDeviceUnblockPolicyEnvironment isUserFindMyAccountPresent](self, "isUserFindMyAccountPresent"), v7 == objc_msgSend(v5, "isUserFindMyAccountPresent")) && (v8 = -[CSDeviceUnblockPolicyEnvironment isDeviceInternetConnectionActive](self, "isDeviceInternetConnectionActive"), v8 == objc_msgSend(v5, "isDeviceInternetConnectionActive")))
    {
      v11 = [(CSDeviceUnblockPolicyEnvironment *)self isPasscodeGracePeriodUsable];
      v9 = v11 ^ [v5 isPasscodeGracePeriodUsable] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(CSDeviceUnblockPolicyEnvironment *)self description];
  v3 = [v2 hash];

  return v3;
}

@end