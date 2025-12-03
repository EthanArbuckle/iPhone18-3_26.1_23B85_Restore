@interface DDUIApplicationInfo
- (DDUIApplicationInfo)initWithApplicationID:(id)d serviceIdentifier:(id)identifier bundleID:(id)iD appName:(id)name adamID:(unint64_t)adamID;
- (DDUIApplicationInfo)initWithDictionaryRepresentation:(id)representation;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation DDUIApplicationInfo

- (DDUIApplicationInfo)initWithApplicationID:(id)d serviceIdentifier:(id)identifier bundleID:(id)iD appName:(id)name adamID:(unint64_t)adamID
{
  dCopy = d;
  identifierCopy = identifier;
  iDCopy = iD;
  nameCopy = name;
  v16 = nameCopy;
  selfCopy = 0;
  if (dCopy && iDCopy && nameCopy)
  {
    v22.receiver = self;
    v22.super_class = DDUIApplicationInfo;
    v18 = [(DDUIApplicationInfo *)&v22 init];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_applicationID, d);
      objc_storeStrong(&v19->_serviceIdentifier, identifier);
      objc_storeStrong(&v19->_bundleID, iD);
      objc_storeStrong(&v19->_appName, name);
      v19->_adamID = adamID;
    }

    self = v19;
    selfCopy = self;
  }

  return selfCopy;
}

- (DDUIApplicationInfo)initWithDictionaryRepresentation:(id)representation
{
  if (representation)
  {
    representationCopy = representation;
    v5 = [representationCopy objectForKeyedSubscript:@"DDUIMessageApplicationIDKey"];
    v6 = [representationCopy objectForKeyedSubscript:@"DDUIMessageServiceIDKey"];
    v7 = [representationCopy objectForKeyedSubscript:@"DDUIMessageBundleIDKey"];
    v8 = [representationCopy objectForKeyedSubscript:@"DDUIMessageAppNameKey"];
    v9 = [representationCopy objectForKeyedSubscript:@"DDUIMessageAdamIDKey"];

    self = -[DDUIApplicationInfo initWithApplicationID:serviceIdentifier:bundleID:appName:adamID:](self, "initWithApplicationID:serviceIdentifier:bundleID:appName:adamID:", v5, v6, v7, v8, [v9 unsignedLongLongValue]);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"DDUIMessageApplicationIDKey";
  applicationID = [(DDUIApplicationInfo *)self applicationID];
  v12[0] = applicationID;
  v11[1] = @"DDUIMessageServiceIDKey";
  serviceIdentifier = [(DDUIApplicationInfo *)self serviceIdentifier];
  v12[1] = serviceIdentifier;
  v11[2] = @"DDUIMessageBundleIDKey";
  bundleID = [(DDUIApplicationInfo *)self bundleID];
  v12[2] = bundleID;
  v11[3] = @"DDUIMessageAppNameKey";
  appName = [(DDUIApplicationInfo *)self appName];
  v12[3] = appName;
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