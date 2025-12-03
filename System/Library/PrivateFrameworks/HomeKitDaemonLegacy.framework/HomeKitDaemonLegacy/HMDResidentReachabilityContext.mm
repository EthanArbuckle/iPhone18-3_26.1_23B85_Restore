@interface HMDResidentReachabilityContext
- (BOOL)isEqual:(id)equal;
- (HMDResidentReachabilityContext)initWithCoder:(id)coder;
- (HMDResidentReachabilityContext)initWithMostRecentReachability:(id)reachability;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDResidentReachabilityContext

- (unint64_t)hash
{
  mostRecentReachability = [(HMDResidentReachabilityContext *)self mostRecentReachability];
  v3 = [mostRecentReachability hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v7)
  {
    mostRecentReachability = [(HMDResidentReachabilityContext *)self mostRecentReachability];
    if (mostRecentReachability || ([v7 mostRecentReachability], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      mostRecentReachability2 = [(HMDResidentReachabilityContext *)self mostRecentReachability];
      mostRecentReachability3 = [v7 mostRecentReachability];
      v11 = [mostRecentReachability2 isEqual:mostRecentReachability3];

      if (mostRecentReachability)
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

- (HMDResidentReachabilityContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HMDResidentReachabilityContext *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDResidentReachabilityContextCodingKeyMostRecentReachability"];
    mostRecentReachability = v5->_mostRecentReachability;
    v5->_mostRecentReachability = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  mostRecentReachability = [(HMDResidentReachabilityContext *)self mostRecentReachability];
  [coderCopy encodeObject:mostRecentReachability forKey:@"HMDResidentReachabilityContextCodingKeyMostRecentReachability"];
}

- (HMDResidentReachabilityContext)initWithMostRecentReachability:(id)reachability
{
  reachabilityCopy = reachability;
  v9.receiver = self;
  v9.super_class = HMDResidentReachabilityContext;
  v6 = [(HMDResidentReachabilityContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mostRecentReachability, reachability);
  }

  return v7;
}

@end