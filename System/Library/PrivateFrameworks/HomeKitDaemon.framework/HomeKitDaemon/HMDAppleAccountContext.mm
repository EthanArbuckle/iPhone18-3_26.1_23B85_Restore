@interface HMDAppleAccountContext
- (BOOL)isEqual:(id)equal;
- (HMDAppleAccountContext)init;
- (HMDAppleAccountContext)initWithAccount:(id)account;
- (NSArray)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDAppleAccountContext

- (NSArray)attributeDescriptions
{
  v18[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMDAppleAccountContext *)self identifier];
  defaultFormatter = [MEMORY[0x277D0F8D8] defaultFormatter];
  v6 = [v3 initWithName:@"ID" value:identifier options:0 formatter:defaultFormatter];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  username = [(HMDAppleAccountContext *)self username];
  v9 = +[HMDAccountHandleFormatter defaultFormatter];
  v10 = [v7 initWithName:@"UN" value:username options:0 formatter:v9];
  v18[1] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  alternateDSID = [(HMDAppleAccountContext *)self alternateDSID];
  defaultFormatter2 = [MEMORY[0x277D0F8D8] defaultFormatter];
  v14 = [v11 initWithName:@"ADSID" value:alternateDSID options:0 formatter:defaultFormatter2];
  v18[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

    identifier = [(HMDAppleAccountContext *)self identifier];
    identifier2 = [(HMDAppleAccountContext *)v6 identifier];
    v9 = HMFEqualObjects();

    if (!v9)
    {
      goto LABEL_9;
    }

    username = [(HMDAppleAccountContext *)self username];
    username2 = [(HMDAppleAccountContext *)v6 username];
    v12 = HMFEqualObjects();

    if (v12)
    {
      alternateDSID = [(HMDAppleAccountContext *)self alternateDSID];
      alternateDSID2 = [(HMDAppleAccountContext *)v6 alternateDSID];
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
  identifier = [(HMDAppleAccountContext *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (HMDAppleAccountContext)initWithAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    v17.receiver = self;
    v17.super_class = HMDAppleAccountContext;
    v5 = [(HMDAppleAccountContext *)&v17 init];
    if (v5)
    {
      username = [accountCopy username];
      v7 = [username copy];
      username = v5->_username;
      v5->_username = v7;

      aa_personID = [accountCopy aa_personID];
      v10 = [aa_personID copy];
      identifier = v5->_identifier;
      v5->_identifier = v10;

      aa_altDSID = [accountCopy aa_altDSID];
      v13 = [aa_altDSID copy];
      alternateDSID = v5->_alternateDSID;
      v5->_alternateDSID = v13;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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