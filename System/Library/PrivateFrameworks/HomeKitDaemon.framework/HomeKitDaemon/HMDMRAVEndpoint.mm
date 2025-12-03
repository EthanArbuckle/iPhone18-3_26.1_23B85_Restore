@interface HMDMRAVEndpoint
- (BOOL)isEqual:(id)equal;
- (HMDMRAVEndpoint)initWithMRAVEndpoint:(void *)endpoint;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation HMDMRAVEndpoint

- (id)attributeDescriptions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D0F778]) initWithName:@"MRAVEndPointRef" value:{-[HMDMRAVEndpoint mravEndpoint](self, "mravEndpoint")}];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (unint64_t)hash
{
  selfCopy = self;

  return [(HMDMRAVEndpoint *)selfCopy mravEndpoint];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
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
    v7 = v6;
    if (v6)
    {
      mravEndpoint = [(HMDMRAVEndpoint *)v6 mravEndpoint];
      v9 = mravEndpoint == [(HMDMRAVEndpoint *)self mravEndpoint];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  CFRelease(self->_mravEndpoint);
  v3.receiver = self;
  v3.super_class = HMDMRAVEndpoint;
  [(HMDMRAVEndpoint *)&v3 dealloc];
}

- (HMDMRAVEndpoint)initWithMRAVEndpoint:(void *)endpoint
{
  if (endpoint)
  {
    v8.receiver = self;
    v8.super_class = HMDMRAVEndpoint;
    v4 = [(HMDMRAVEndpoint *)&v8 init];
    if (v4)
    {
      v4->_mravEndpoint = CFRetain(endpoint);
    }

    return v4;
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    return [(HMDHomeActivityHomeAwayAggregatorStorage *)v6 fetchLegacyPresenceMapOnManagedObjectContext];
  }
}

@end