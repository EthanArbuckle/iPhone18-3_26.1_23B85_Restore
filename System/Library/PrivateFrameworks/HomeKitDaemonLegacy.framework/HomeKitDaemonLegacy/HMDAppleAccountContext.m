@interface HMDAppleAccountContext
- (BOOL)isEqual:(id)a3;
- (HMDAppleAccountContext)init;
- (HMDAppleAccountContext)initWithAccount:(id)a3;
- (NSArray)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDAppleAccountContext

- (NSArray)attributeDescriptions
{
  v18[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDAppleAccountContext *)self identifier];
  v5 = [MEMORY[0x277D0F8D8] defaultFormatter];
  v6 = [v3 initWithName:@"ID" value:v4 options:0 formatter:v5];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDAppleAccountContext *)self username];
  v9 = +[HMDAccountHandleFormatter defaultFormatter];
  v10 = [v7 initWithName:@"UN" value:v8 options:0 formatter:v9];
  v18[1] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = [(HMDAppleAccountContext *)self alternateDSID];
  v13 = [MEMORY[0x277D0F8D8] defaultFormatter];
  v14 = [v11 initWithName:@"ADSID" value:v12 options:0 formatter:v13];
  v18[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = [(HMDAppleAccountContext *)self identifier];
    v8 = [(HMDAppleAccountContext *)v6 identifier];
    v9 = HMFEqualObjects();

    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = [(HMDAppleAccountContext *)self username];
    v11 = [(HMDAppleAccountContext *)v6 username];
    v12 = HMFEqualObjects();

    if (v12)
    {
      v13 = [(HMDAppleAccountContext *)self alternateDSID];
      v14 = [(HMDAppleAccountContext *)v6 alternateDSID];
      v15 = HMFEqualObjects();
    }

    else
    {
LABEL_9:
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v2 = [(HMDAppleAccountContext *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (HMDAppleAccountContext)initWithAccount:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v17.receiver = self;
    v17.super_class = HMDAppleAccountContext;
    v5 = [(HMDAppleAccountContext *)&v17 init];
    if (v5)
    {
      v6 = [v4 username];
      v7 = [v6 copy];
      username = v5->_username;
      v5->_username = v7;

      v9 = [v4 aa_personID];
      v10 = [v9 copy];
      identifier = v5->_identifier;
      v5->_identifier = v10;

      v12 = [v4 aa_altDSID];
      v13 = [v12 copy];
      alternateDSID = v5->_alternateDSID;
      v5->_alternateDSID = v13;
    }

    self = v5;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (HMDAppleAccountContext)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end