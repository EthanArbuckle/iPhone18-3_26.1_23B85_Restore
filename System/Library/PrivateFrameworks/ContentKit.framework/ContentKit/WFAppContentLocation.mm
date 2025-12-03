@interface WFAppContentLocation
+ (id)locationWithAppDescriptor:(id)descriptor;
+ (id)locationWithAppDescriptor:(id)descriptor managedLevel:(unint64_t)level promptingBehaviour:(unint64_t)behaviour;
+ (id)locationWithAppDescriptor:(id)descriptor promptingBehaviour:(unint64_t)behaviour;
+ (id)locationWithSystemAppBundleIdentifier:(id)identifier promptingBehaviour:(unint64_t)behaviour;
+ (id)objectWithWFSerializedRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (INAppDescriptor)appDescriptor;
- (NSDictionary)serializedAppDescriptor;
- (NSString)description;
- (WFAppContentLocation)initWithAppDescriptor:(id)descriptor serializedAppDescriptor:(id)appDescriptor identifier:(id)identifier managedLevel:(unint64_t)level promptingBehaviour:(unint64_t)behaviour;
- (WFAppContentLocation)initWithCoder:(id)coder;
- (id)app;
- (id)localizedMDMDescription;
- (id)localizedTitle;
- (id)wfSerializedRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAppContentLocation

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  appDescriptor = [(WFAppContentLocation *)self appDescriptor];
  v7 = [v3 stringWithFormat:@"<%@: %p, app descriptor: %@, promptingBehaviour: %tu>", v5, self, appDescriptor, -[WFContentLocation promptingBehaviour](self, "promptingBehaviour")];

  return v7;
}

- (id)wfSerializedRepresentation
{
  v3 = MEMORY[0x277CBEB38];
  v9.receiver = self;
  v9.super_class = WFAppContentLocation;
  wfSerializedRepresentation = [(WFContentLocation *)&v9 wfSerializedRepresentation];
  v5 = [v3 dictionaryWithDictionary:wfSerializedRepresentation];

  serializedAppDescriptor = [(WFAppContentLocation *)self serializedAppDescriptor];
  [v5 setValue:serializedAppDescriptor forKey:@"appDescriptor"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WFAppContentLocation managedLevel](self, "managedLevel")}];
  [v5 setValue:v7 forKey:@"managedLevel"];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFAppContentLocation;
  coderCopy = coder;
  [(WFContentLocation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_appDescriptor forKey:{@"appDescriptor", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_serializedAppDescriptor forKey:@"serializedAppDescriptor"];
  [coderCopy encodeInteger:-[WFAppContentLocation managedLevel](self forKey:{"managedLevel"), @"managedLevel"}];
  [coderCopy encodeInteger:-[WFContentLocation promptingBehaviour](self forKey:{"promptingBehaviour"), @"promptingBehaviour"}];
}

- (WFAppContentLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appDescriptor"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"serializedAppDescriptor"];

  v14 = [coderCopy decodeIntegerForKey:@"managedLevel"];
  v15 = [coderCopy decodeIntegerForKey:@"promptingBehaviour"];

  v16 = [(WFAppContentLocation *)self initWithAppDescriptor:v5 serializedAppDescriptor:v13 identifier:@"com.apple.shortcuts.appdestination" managedLevel:v14 promptingBehaviour:v15];
  return v16;
}

- (unint64_t)hash
{
  appDescriptor = [(WFAppContentLocation *)self appDescriptor];
  hashForSmartPromptPurposes = [appDescriptor hashForSmartPromptPurposes];

  return hashForSmartPromptPurposes;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10.receiver = self;
    v10.super_class = WFAppContentLocation;
    if ([(WFContentLocation *)&v10 isEqual:equalCopy])
    {
      appDescriptor = [(WFAppContentLocation *)self appDescriptor];
      appDescriptor2 = [equalCopy appDescriptor];
      v7 = [appDescriptor isEqualForSmartPromptPurposes:appDescriptor2];
    }

    else
    {
      v7 = 0;
    }

    v8 = equalCopy;
  }

  else
  {

    v8 = 0;
    v7 = 0;
  }

  return v7;
}

- (id)localizedMDMDescription
{
  appDescriptor = [(WFAppContentLocation *)self appDescriptor];
  localizedName = [appDescriptor localizedName];

  if (localizedName)
  {
    managedLevel = [(WFAppContentLocation *)self managedLevel];
    v6 = MEMORY[0x277CCACA8];
    if (managedLevel == 2)
    {
      v7 = @"the managed “%@” app";
    }

    else
    {
      v7 = @"the unmanaged “%@” app";
    }

    v8 = WFLocalizedString(v7);
    v9 = [v6 localizedStringWithFormat:v8, localizedName];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)app
{
  v15 = *MEMORY[0x277D85DE8];
  appDescriptor = [(WFAppContentLocation *)self appDescriptor];
  bundleIdentifier = [appDescriptor bundleIdentifier];

  if (bundleIdentifier)
  {
    appDescriptor2 = [(WFAppContentLocation *)self appDescriptor];
    applicationRecord = [appDescriptor2 applicationRecord];

    if (applicationRecord)
    {
      goto LABEL_7;
    }

    v7 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      appDescriptor3 = [(WFAppContentLocation *)self appDescriptor];
      bundleIdentifier2 = [appDescriptor3 bundleIdentifier];
      v11 = 136315394;
      v12 = "[WFAppContentLocation app]";
      v13 = 2114;
      v14 = bundleIdentifier2;
      _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_ERROR, "%s Failed to get application record for bundleIdentifier: %{public}@", &v11, 0x16u);
    }
  }

  applicationRecord = 0;
LABEL_7:

  return applicationRecord;
}

- (NSDictionary)serializedAppDescriptor
{
  serializedAppDescriptor = self->_serializedAppDescriptor;
  if (!serializedAppDescriptor)
  {
    serializedAppDescriptor = self->_appDescriptor;
    if (serializedAppDescriptor)
    {
      serializedRepresentation = [serializedAppDescriptor serializedRepresentation];
      v5 = self->_serializedAppDescriptor;
      self->_serializedAppDescriptor = serializedRepresentation;

      serializedAppDescriptor = self->_serializedAppDescriptor;
    }
  }

  return serializedAppDescriptor;
}

- (INAppDescriptor)appDescriptor
{
  appDescriptor = self->_appDescriptor;
  if (!appDescriptor)
  {
    if (self->_serializedAppDescriptor)
    {
      v4 = [objc_alloc(MEMORY[0x277CD3A58]) initWithSerializedRepresentation:self->_serializedAppDescriptor];
      mEMORY[0x277CD3A88] = [MEMORY[0x277CD3A88] sharedResolver];
      v6 = [mEMORY[0x277CD3A88] resolvedAppMatchingDescriptor:v4];

      bundleIdentifier = [v6 bundleIdentifier];
      if ([bundleIdentifier length])
      {
        bundleIdentifier2 = [v6 bundleIdentifier];
        bundleIdentifier3 = [v4 bundleIdentifier];
        v10 = [bundleIdentifier2 isEqualToString:bundleIdentifier3];

        if (v10)
        {
LABEL_7:
          v15 = self->_appDescriptor;
          self->_appDescriptor = v6;

          appDescriptor = self->_appDescriptor;
          goto LABEL_9;
        }

        bundleIdentifier = [MEMORY[0x277CD3A88] sharedResolver];
        v11 = objc_alloc(MEMORY[0x277CD3A58]);
        bundleIdentifier4 = [v4 bundleIdentifier];
        v13 = [v11 initWithBundleIdentifier:bundleIdentifier4];
        v14 = [bundleIdentifier resolvedAppMatchingDescriptor:v13];

        v6 = v14;
      }

      goto LABEL_7;
    }

    appDescriptor = 0;
  }

LABEL_9:

  return appDescriptor;
}

- (id)localizedTitle
{
  localizedTitle = self->_localizedTitle;
  if (!localizedTitle)
  {
    v4 = WFPossibleMobileDocumentsFileProviderDomainIDs();
    appDescriptor = [(WFAppContentLocation *)self appDescriptor];
    extensionBundleIdentifier = [appDescriptor extensionBundleIdentifier];
    applicationRecord = [v4 containsObject:extensionBundleIdentifier];

    if (applicationRecord)
    {
      v8 = WFLocalizedString(@"iCloud Drive");
      appDescriptor2 = self->_localizedTitle;
      self->_localizedTitle = v8;
    }

    else
    {
      appDescriptor2 = [(WFAppContentLocation *)self appDescriptor];
      localizedName = [appDescriptor2 localizedName];
      localizedName2 = localizedName;
      if (!localizedName)
      {
        extensionBundleIdentifier = [(WFAppContentLocation *)self appDescriptor];
        applicationRecord = [extensionBundleIdentifier applicationRecord];
        localizedName2 = [applicationRecord localizedName];
      }

      v12 = [localizedName2 copy];
      v13 = self->_localizedTitle;
      self->_localizedTitle = v12;

      if (!localizedName)
      {
      }
    }

    localizedTitle = self->_localizedTitle;
  }

  return localizedTitle;
}

- (WFAppContentLocation)initWithAppDescriptor:(id)descriptor serializedAppDescriptor:(id)appDescriptor identifier:(id)identifier managedLevel:(unint64_t)level promptingBehaviour:(unint64_t)behaviour
{
  descriptorCopy = descriptor;
  appDescriptorCopy = appDescriptor;
  identifierCopy = identifier;
  if (!(descriptorCopy | appDescriptorCopy))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAppContentLocation.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"descriptor || serializedAppDescriptor"}];
  }

  v22.receiver = self;
  v22.super_class = WFAppContentLocation;
  v17 = [(WFContentLocation *)&v22 initWithIdentifier:identifierCopy promptingBehaviour:behaviour];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_appDescriptor, descriptor);
    objc_storeStrong(&v18->_serializedAppDescriptor, appDescriptor);
    v18->_managedLevel = level;
    v19 = v18;
  }

  return v18;
}

+ (id)objectWithWFSerializedRepresentation:(id)representation
{
  v15 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  serializedRepresentation = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"appDescriptor"];
  if (serializedRepresentation)
  {
LABEL_6:
    v9 = [representationCopy wfObjectOfClass:objc_opt_class() forKeyPath:@"managedLevel"];
    unsignedIntegerValue = [v9 unsignedIntegerValue];

    v11 = [[self alloc] initWithAppDescriptor:0 serializedAppDescriptor:serializedRepresentation identifier:@"com.apple.shortcuts.appdestination" managedLevel:unsignedIntegerValue promptingBehaviour:0];
    goto LABEL_7;
  }

  v6 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v7 = getWFWorkflowExecutionLogObject();
  serializedRepresentation = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315138;
      v14 = "+[WFAppContentLocation objectWithWFSerializedRepresentation:]";
      _os_log_impl(&dword_21E1BD000, serializedRepresentation, OS_LOG_TYPE_DEBUG, "%s Reading legacy bundle identifier from WFAppContentLocation and upgrading to app descriptor", &v13, 0xCu);
    }

    v8 = [objc_alloc(MEMORY[0x277CD3A58]) initWithBundleIdentifier:v6];
    serializedRepresentation = [v8 serializedRepresentation];

    goto LABEL_6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "+[WFAppContentLocation objectWithWFSerializedRepresentation:]";
    _os_log_impl(&dword_21E1BD000, serializedRepresentation, OS_LOG_TYPE_ERROR, "%s Failed to decode app descriptor from WFAppContentLocation", &v13, 0xCu);
  }

  v11 = 0;
LABEL_7:

  return v11;
}

+ (id)locationWithAppDescriptor:(id)descriptor managedLevel:(unint64_t)level promptingBehaviour:(unint64_t)behaviour
{
  descriptorCopy = descriptor;
  v9 = [[self alloc] initWithAppDescriptor:descriptorCopy serializedAppDescriptor:0 identifier:@"com.apple.shortcuts.appdestination" managedLevel:level promptingBehaviour:behaviour];

  return v9;
}

+ (id)locationWithAppDescriptor:(id)descriptor promptingBehaviour:(unint64_t)behaviour
{
  descriptorCopy = descriptor;
  v7 = +[WFManagedConfigurationProfile defaultProfile];
  bundleIdentifier = [descriptorCopy bundleIdentifier];
  v9 = [v7 isAppManaged:bundleIdentifier];

  if (v9)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = [[self alloc] initWithAppDescriptor:descriptorCopy serializedAppDescriptor:0 identifier:@"com.apple.shortcuts.appdestination" managedLevel:v10 promptingBehaviour:behaviour];

  return v11;
}

+ (id)locationWithAppDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [self locationWithAppDescriptor:descriptorCopy promptingBehaviour:{objc_msgSend(descriptorCopy, "isThirdParty")}];

  return v5;
}

+ (id)locationWithSystemAppBundleIdentifier:(id)identifier promptingBehaviour:(unint64_t)behaviour
{
  v6 = MEMORY[0x277CD3A58];
  identifierCopy = identifier;
  v8 = [[v6 alloc] initWithBundleIdentifier:identifierCopy];

  mEMORY[0x277CD3A88] = [MEMORY[0x277CD3A88] sharedResolver];
  v10 = [mEMORY[0x277CD3A88] resolvedAppMatchingDescriptor:v8];

  v11 = [self locationWithAppDescriptor:v10 promptingBehaviour:behaviour];

  return v11;
}

@end