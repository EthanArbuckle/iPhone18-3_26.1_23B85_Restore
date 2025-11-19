@interface HMDRemoteMessagePolicy
- (BOOL)isEqual:(id)a3;
- (HMDRemoteMessagePolicy)init;
- (id)__initWithRequiresSecureMessage:(BOOL)a3 allowsAnonymousMessage:(BOOL)a4 requiresAccountMessage:(BOOL)a5 transportRestriction:(unint64_t)a6 roles:(unint64_t)a7;
- (unint64_t)hash;
@end

@implementation HMDRemoteMessagePolicy

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
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
    if (v6 && (v7 = [(HMDRemoteMessagePolicy *)self requiresSecureMessage], v7 == [(HMDRemoteMessagePolicy *)v6 requiresSecureMessage]) && (v8 = [(HMDRemoteMessagePolicy *)self allowsAnonymousMessage], v8 == [(HMDRemoteMessagePolicy *)v6 allowsAnonymousMessage]) && (v9 = [(HMDRemoteMessagePolicy *)self requiresAccountMessage], v9 == [(HMDRemoteMessagePolicy *)v6 requiresAccountMessage]) && (v10 = [(HMDRemoteMessagePolicy *)self transportRestriction], v10 == [(HMDRemoteMessagePolicy *)v6 transportRestriction]))
    {
      v11 = [(HMDRemoteMessagePolicy *)self roles];
      v12 = v11 == [(HMDRemoteMessagePolicy *)v6 roles];
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
  v3 = [(HMDRemoteMessagePolicy *)self requiresSecureMessage];
  v4 = [(HMDRemoteMessagePolicy *)self allowsAnonymousMessage];
  v5 = 2;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = v5 | v3;
  v7 = [(HMDRemoteMessagePolicy *)self requiresAccountMessage];
  v8 = 4;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = v6 | v8 | (8 * [(HMDRemoteMessagePolicy *)self transportRestriction]);
  return v9 ^ (16 * [(HMDRemoteMessagePolicy *)self roles]);
}

- (id)__initWithRequiresSecureMessage:(BOOL)a3 allowsAnonymousMessage:(BOOL)a4 requiresAccountMessage:(BOOL)a5 transportRestriction:(unint64_t)a6 roles:(unint64_t)a7
{
  v13.receiver = self;
  v13.super_class = HMDRemoteMessagePolicy;
  result = [(HMDRemoteMessagePolicy *)&v13 init];
  if (result)
  {
    *(result + 8) = a3;
    *(result + 9) = a4;
    *(result + 10) = a5;
    *(result + 2) = a6;
    *(result + 3) = a7;
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