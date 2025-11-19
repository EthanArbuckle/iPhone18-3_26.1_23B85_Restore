@interface HMDResidentReachabilityContext
- (BOOL)isEqual:(id)a3;
- (HMDResidentReachabilityContext)initWithCoder:(id)a3;
- (HMDResidentReachabilityContext)initWithMostRecentReachability:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDResidentReachabilityContext

- (unint64_t)hash
{
  v2 = [(HMDResidentReachabilityContext *)self mostRecentReachability];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v7)
  {
    v8 = [(HMDResidentReachabilityContext *)self mostRecentReachability];
    if (v8 || ([v7 mostRecentReachability], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = [(HMDResidentReachabilityContext *)self mostRecentReachability];
      v10 = [v7 mostRecentReachability];
      v11 = [v9 isEqual:v10];

      if (v8)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_12;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (HMDResidentReachabilityContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentReachabilityContext *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDResidentReachabilityContextCodingKeyMostRecentReachability"];
    mostRecentReachability = v5->_mostRecentReachability;
    v5->_mostRecentReachability = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentReachabilityContext *)self mostRecentReachability];
  [v4 encodeObject:v5 forKey:@"HMDResidentReachabilityContextCodingKeyMostRecentReachability"];
}

- (HMDResidentReachabilityContext)initWithMostRecentReachability:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDResidentReachabilityContext;
  v6 = [(HMDResidentReachabilityContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mostRecentReachability, a3);
  }

  return v7;
}

@end