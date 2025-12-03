@interface CTCarrierSpaceInfo
- (BOOL)isEqual:(id)equal;
- (CTCarrierSpaceInfo)init;
- (CTCarrierSpaceInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
  usageInfo = [(CTCarrierSpaceInfo *)self usageInfo];
  [v3 appendFormat:@" usageInfo=%@", usageInfo];

  plansInfo = [(CTCarrierSpaceInfo *)self plansInfo];
  [v3 appendFormat:@" plansInfo=%@", plansInfo];

  appsInfo = [(CTCarrierSpaceInfo *)self appsInfo];
  [v3 appendFormat:@" appsInfo=%@", appsInfo];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      usageInfo = [(CTCarrierSpaceInfo *)self usageInfo];
      usageInfo2 = [(CTCarrierSpaceInfo *)equalCopy usageInfo];
      if ([usageInfo isEqual:usageInfo2])
      {
        plansInfo = [(CTCarrierSpaceInfo *)self plansInfo];
        plansInfo2 = [(CTCarrierSpaceInfo *)equalCopy plansInfo];
        if ([plansInfo isEqual:plansInfo2])
        {
          appsInfo = [(CTCarrierSpaceInfo *)self appsInfo];
          appsInfo2 = [(CTCarrierSpaceInfo *)equalCopy appsInfo];
          v11 = [appsInfo isEqual:appsInfo2];
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

- (void)encodeWithCoder:(id)coder
{
  usageInfo = self->_usageInfo;
  coderCopy = coder;
  [coderCopy encodeObject:usageInfo forKey:@"usageInfo"];
  [coderCopy encodeObject:self->_plansInfo forKey:@"plansInfo"];
  [coderCopy encodeObject:self->_appsInfo forKey:@"appsInfo"];
}

- (CTCarrierSpaceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTCarrierSpaceInfo;
  v5 = [(CTCarrierSpaceInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"usageInfo"];
    usageInfo = v5->_usageInfo;
    v5->_usageInfo = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"plansInfo"];
    plansInfo = v5->_plansInfo;
    v5->_plansInfo = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appsInfo"];
    appsInfo = v5->_appsInfo;
    v5->_appsInfo = v10;
  }

  return v5;
}

@end