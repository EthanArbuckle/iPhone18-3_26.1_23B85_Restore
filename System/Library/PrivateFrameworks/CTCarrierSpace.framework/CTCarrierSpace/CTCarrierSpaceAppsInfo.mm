@interface CTCarrierSpaceAppsInfo
- (BOOL)isEqual:(id)a3;
- (CTCarrierSpaceAppsInfo)init;
- (CTCarrierSpaceAppsInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
  v4 = [(CTCarrierSpaceAppsInfo *)self appsList];
  [v3 appendFormat:@" appIdList=%@", v4];

  v5 = [(CTCarrierSpaceAppsInfo *)self appsURL];
  [v3 appendFormat:@" appsURL=%@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (v6 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(CTCarrierSpaceAppsInfo *)self appsList];
      v8 = [(CTCarrierSpaceAppsInfo *)v6 appsList];
      if (v7 == v8 || (-[CTCarrierSpaceAppsInfo appsList](self, "appsList"), v3 = objc_claimAutoreleasedReturnValue(), -[CTCarrierSpaceAppsInfo appsList](v6, "appsList"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToArray:v4]))
      {
        v10 = [(CTCarrierSpaceAppsInfo *)self appsURL];
        v11 = [(CTCarrierSpaceAppsInfo *)v6 appsURL];
        if (v10 == v11)
        {
          v9 = 1;
        }

        else
        {
          v12 = [(CTCarrierSpaceAppsInfo *)self appsURL];
          v13 = [(CTCarrierSpaceAppsInfo *)v6 appsURL];
          v9 = [v12 isEqualToString:v13];
        }

        if (v7 == v8)
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

- (void)encodeWithCoder:(id)a3
{
  appsList = self->_appsList;
  v5 = a3;
  [v5 encodeObject:appsList forKey:@"appsList"];
  [v5 encodeObject:self->_appsURL forKey:@"appsURL"];
}

- (CTCarrierSpaceAppsInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CTCarrierSpaceAppsInfo;
  v5 = [(CTCarrierSpaceAppsInfo *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"appsList"];
    appsList = v5->_appsList;
    v5->_appsList = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appsURL"];
    appsURL = v5->_appsURL;
    v5->_appsURL = v11;
  }

  return v5;
}

@end