@interface DDUIApplicationInfo
- (DDUIApplicationInfo)initWithApplicationID:(id)a3 serviceIdentifier:(id)a4 bundleID:(id)a5 appName:(id)a6 adamID:(unint64_t)a7;
- (DDUIApplicationInfo)initWithDictionaryRepresentation:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation DDUIApplicationInfo

- (DDUIApplicationInfo)initWithApplicationID:(id)a3 serviceIdentifier:(id)a4 bundleID:(id)a5 appName:(id)a6 adamID:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  v17 = 0;
  if (v12 && v14 && v15)
  {
    v22.receiver = self;
    v22.super_class = DDUIApplicationInfo;
    v18 = [(DDUIApplicationInfo *)&v22 init];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_applicationID, a3);
      objc_storeStrong(&v19->_serviceIdentifier, a4);
      objc_storeStrong(&v19->_bundleID, a5);
      objc_storeStrong(&v19->_appName, a6);
      v19->_adamID = a7;
    }

    self = v19;
    v17 = self;
  }

  return v17;
}

- (DDUIApplicationInfo)initWithDictionaryRepresentation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 objectForKeyedSubscript:@"DDUIMessageApplicationIDKey"];
    v6 = [v4 objectForKeyedSubscript:@"DDUIMessageServiceIDKey"];
    v7 = [v4 objectForKeyedSubscript:@"DDUIMessageBundleIDKey"];
    v8 = [v4 objectForKeyedSubscript:@"DDUIMessageAppNameKey"];
    v9 = [v4 objectForKeyedSubscript:@"DDUIMessageAdamIDKey"];

    self = -[DDUIApplicationInfo initWithApplicationID:serviceIdentifier:bundleID:appName:adamID:](self, "initWithApplicationID:serviceIdentifier:bundleID:appName:adamID:", v5, v6, v7, v8, [v9 unsignedLongLongValue]);
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)dictionaryRepresentation
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"DDUIMessageApplicationIDKey";
  v3 = [(DDUIApplicationInfo *)self applicationID];
  v12[0] = v3;
  v11[1] = @"DDUIMessageServiceIDKey";
  v4 = [(DDUIApplicationInfo *)self serviceIdentifier];
  v12[1] = v4;
  v11[2] = @"DDUIMessageBundleIDKey";
  v5 = [(DDUIApplicationInfo *)self bundleID];
  v12[2] = v5;
  v11[3] = @"DDUIMessageAppNameKey";
  v6 = [(DDUIApplicationInfo *)self appName];
  v12[3] = v6;
  v11[4] = @"DDUIMessageAdamIDKey";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[DDUIApplicationInfo adamID](self, "adamID")}];
  v12[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = *&self->_applicationID;
  return [v3 stringWithFormat:@"<%@: %p; applicationID = %@; serviceIdentifier = %@; bundleID = %@; appName = %@; adamID = %llu>", v4, self, self->_applicationID, self->_serviceIdentifier, self->_bundleID, self->_appName, self->_adamID];
}

@end