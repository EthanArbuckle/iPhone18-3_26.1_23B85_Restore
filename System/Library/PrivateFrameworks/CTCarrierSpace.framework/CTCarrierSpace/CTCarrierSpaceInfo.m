@interface CTCarrierSpaceInfo
- (BOOL)isEqual:(id)a3;
- (CTCarrierSpaceInfo)init;
- (CTCarrierSpaceInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTCarrierSpaceInfo

- (CTCarrierSpaceInfo)init
{
  v8.receiver = self;
  v8.super_class = CTCarrierSpaceInfo;
  v2 = [(CTCarrierSpaceInfo *)&v8 init];
  v3 = v2;
  if (v2)
  {
    usageInfo = v2->_usageInfo;
    v2->_usageInfo = 0;

    plansInfo = v3->_plansInfo;
    v3->_plansInfo = 0;

    appsInfo = v3->_appsInfo;
    v3->_appsInfo = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTCarrierSpaceInfo *)self usageInfo];
  [v3 appendFormat:@" usageInfo=%@", v4];

  v5 = [(CTCarrierSpaceInfo *)self plansInfo];
  [v3 appendFormat:@" plansInfo=%@", v5];

  v6 = [(CTCarrierSpaceInfo *)self appsInfo];
  [v3 appendFormat:@" appsInfo=%@", v6];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CTCarrierSpaceInfo *)self usageInfo];
      v6 = [(CTCarrierSpaceInfo *)v4 usageInfo];
      if ([v5 isEqual:v6])
      {
        v7 = [(CTCarrierSpaceInfo *)self plansInfo];
        v8 = [(CTCarrierSpaceInfo *)v4 plansInfo];
        if ([v7 isEqual:v8])
        {
          v9 = [(CTCarrierSpaceInfo *)self appsInfo];
          v10 = [(CTCarrierSpaceInfo *)v4 appsInfo];
          v11 = [v9 isEqual:v10];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  usageInfo = self->_usageInfo;
  v5 = a3;
  [v5 encodeObject:usageInfo forKey:@"usageInfo"];
  [v5 encodeObject:self->_plansInfo forKey:@"plansInfo"];
  [v5 encodeObject:self->_appsInfo forKey:@"appsInfo"];
}

- (CTCarrierSpaceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CTCarrierSpaceInfo;
  v5 = [(CTCarrierSpaceInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"usageInfo"];
    usageInfo = v5->_usageInfo;
    v5->_usageInfo = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"plansInfo"];
    plansInfo = v5->_plansInfo;
    v5->_plansInfo = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appsInfo"];
    appsInfo = v5->_appsInfo;
    v5->_appsInfo = v10;
  }

  return v5;
}

@end