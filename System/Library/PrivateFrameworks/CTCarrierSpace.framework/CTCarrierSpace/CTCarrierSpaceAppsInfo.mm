@interface CTCarrierSpaceAppsInfo
- (BOOL)isEqual:(id)equal;
- (CTCarrierSpaceAppsInfo)init;
- (CTCarrierSpaceAppsInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTCarrierSpaceAppsInfo

- (CTCarrierSpaceAppsInfo)init
{
  v7.receiver = self;
  v7.super_class = CTCarrierSpaceAppsInfo;
  v2 = [(CTCarrierSpaceAppsInfo *)&v7 init];
  v3 = v2;
  if (v2)
  {
    appsList = v2->_appsList;
    v2->_appsList = 0;

    appsURL = v3->_appsURL;
    v3->_appsURL = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  appsList = [(CTCarrierSpaceAppsInfo *)self appsList];
  [v3 appendFormat:@" appIdList=%@", appsList];

  appsURL = [(CTCarrierSpaceAppsInfo *)self appsURL];
  [v3 appendFormat:@" appsURL=%@", appsURL];

  [v3 appendString:@">"];

  return v3;
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
      appsList = [(CTCarrierSpaceAppsInfo *)self appsList];
      appsList2 = [(CTCarrierSpaceAppsInfo *)equalCopy appsList];
      if (appsList == appsList2 || (-[CTCarrierSpaceAppsInfo appsList](self, "appsList"), v3 = objc_claimAutoreleasedReturnValue(), -[CTCarrierSpaceAppsInfo appsList](equalCopy, "appsList"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToArray:v4]))
      {
        appsURL = [(CTCarrierSpaceAppsInfo *)self appsURL];
        appsURL2 = [(CTCarrierSpaceAppsInfo *)equalCopy appsURL];
        if (appsURL == appsURL2)
        {
          v9 = 1;
        }

        else
        {
          appsURL3 = [(CTCarrierSpaceAppsInfo *)self appsURL];
          appsURL4 = [(CTCarrierSpaceAppsInfo *)equalCopy appsURL];
          v9 = [appsURL3 isEqualToString:appsURL4];
        }

        if (appsList == appsList2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v9 = 0;
      }

LABEL_13:
      goto LABEL_14;
    }

    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  appsList = self->_appsList;
  coderCopy = coder;
  [coderCopy encodeObject:appsList forKey:@"appsList"];
  [coderCopy encodeObject:self->_appsURL forKey:@"appsURL"];
}

- (CTCarrierSpaceAppsInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CTCarrierSpaceAppsInfo;
  v5 = [(CTCarrierSpaceAppsInfo *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"appsList"];
    appsList = v5->_appsList;
    v5->_appsList = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appsURL"];
    appsURL = v5->_appsURL;
    v5->_appsURL = v11;
  }

  return v5;
}

@end