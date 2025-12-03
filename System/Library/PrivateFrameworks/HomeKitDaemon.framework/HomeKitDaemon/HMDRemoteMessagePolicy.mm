@interface HMDRemoteMessagePolicy
- (BOOL)isEqual:(id)equal;
- (HMDRemoteMessagePolicy)init;
- (id)__initWithRequiresSecureMessage:(BOOL)message allowsAnonymousMessage:(BOOL)anonymousMessage requiresAccountMessage:(BOOL)accountMessage transportRestriction:(unint64_t)restriction roles:(unint64_t)roles;
- (unint64_t)hash;
@end

@implementation HMDRemoteMessagePolicy

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
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
    if (v6 && (v7 = [(HMDRemoteMessagePolicy *)self requiresSecureMessage], v7 == [(HMDRemoteMessagePolicy *)v6 requiresSecureMessage]) && (v8 = [(HMDRemoteMessagePolicy *)self allowsAnonymousMessage], v8 == [(HMDRemoteMessagePolicy *)v6 allowsAnonymousMessage]) && (v9 = [(HMDRemoteMessagePolicy *)self requiresAccountMessage], v9 == [(HMDRemoteMessagePolicy *)v6 requiresAccountMessage]) && (v10 = [(HMDRemoteMessagePolicy *)self transportRestriction], v10 == [(HMDRemoteMessagePolicy *)v6 transportRestriction]))
    {
      roles = [(HMDRemoteMessagePolicy *)self roles];
      v12 = roles == [(HMDRemoteMessagePolicy *)v6 roles];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  requiresSecureMessage = [(HMDRemoteMessagePolicy *)self requiresSecureMessage];
  allowsAnonymousMessage = [(HMDRemoteMessagePolicy *)self allowsAnonymousMessage];
  v5 = 2;
  if (!allowsAnonymousMessage)
  {
    v5 = 0;
  }

  v6 = v5 | requiresSecureMessage;
  requiresAccountMessage = [(HMDRemoteMessagePolicy *)self requiresAccountMessage];
  v8 = 4;
  if (!requiresAccountMessage)
  {
    v8 = 0;
  }

  v9 = v6 | v8 | (8 * [(HMDRemoteMessagePolicy *)self transportRestriction]);
  return v9 ^ (16 * [(HMDRemoteMessagePolicy *)self roles]);
}

- (id)__initWithRequiresSecureMessage:(BOOL)message allowsAnonymousMessage:(BOOL)anonymousMessage requiresAccountMessage:(BOOL)accountMessage transportRestriction:(unint64_t)restriction roles:(unint64_t)roles
{
  v13.receiver = self;
  v13.super_class = HMDRemoteMessagePolicy;
  result = [(HMDRemoteMessagePolicy *)&v13 init];
  if (result)
  {
    *(result + 8) = message;
    *(result + 9) = anonymousMessage;
    *(result + 10) = accountMessage;
    *(result + 2) = restriction;
    *(result + 3) = roles;
  }

  return result;
}

- (HMDRemoteMessagePolicy)init
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