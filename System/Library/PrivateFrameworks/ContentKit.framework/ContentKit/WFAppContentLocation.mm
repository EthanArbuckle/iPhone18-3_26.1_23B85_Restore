@interface WFAppContentLocation
+ (id)locationWithAppDescriptor:(id)a3;
+ (id)locationWithAppDescriptor:(id)a3 managedLevel:(unint64_t)a4 promptingBehaviour:(unint64_t)a5;
+ (id)locationWithAppDescriptor:(id)a3 promptingBehaviour:(unint64_t)a4;
+ (id)locationWithSystemAppBundleIdentifier:(id)a3 promptingBehaviour:(unint64_t)a4;
+ (id)objectWithWFSerializedRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (INAppDescriptor)appDescriptor;
- (NSDictionary)serializedAppDescriptor;
- (NSString)description;
- (WFAppContentLocation)initWithAppDescriptor:(id)a3 serializedAppDescriptor:(id)a4 identifier:(id)a5 managedLevel:(unint64_t)a6 promptingBehaviour:(unint64_t)a7;
- (WFAppContentLocation)initWithCoder:(id)a3;
- (id)app;
- (id)localizedMDMDescription;
- (id)localizedTitle;
- (id)wfSerializedRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAppContentLocation

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFAppContentLocation *)self appDescriptor];
  v7 = [v3 stringWithFormat:@"<%@: %p, app descriptor: %@, promptingBehaviour: %tu>", v5, self, v6, -[WFContentLocation promptingBehaviour](self, "promptingBehaviour")];

  return v7;
}

- (id)wfSerializedRepresentation
{
  v3 = MEMORY[0x277CBEB38];
  v9.receiver = self;
  v9.super_class = WFAppContentLocation;
  v4 = [(WFContentLocation *)&v9 wfSerializedRepresentation];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = [(WFAppContentLocation *)self serializedAppDescriptor];
  [v5 setValue:v6 forKey:@"appDescriptor"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WFAppContentLocation managedLevel](self, "managedLevel")}];
  [v5 setValue:v7 forKey:@"managedLevel"];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFAppContentLocation;
  v4 = a3;
  [(WFContentLocation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_appDescriptor forKey:{@"appDescriptor", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_serializedAppDescriptor forKey:@"serializedAppDescriptor"];
  [v4 encodeInteger:-[WFAppContentLocation managedLevel](self forKey:{"managedLevel"), @"managedLevel"}];
  [v4 encodeInteger:-[WFContentLocation promptingBehaviour](self forKey:{"promptingBehaviour"), @"promptingBehaviour"}];
}

- (WFAppContentLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appDescriptor"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"serializedAppDescriptor"];

  v14 = [v4 decodeIntegerForKey:@"managedLevel"];
  v15 = [v4 decodeIntegerForKey:@"promptingBehaviour"];

  v16 = [(WFAppContentLocation *)self initWithAppDescriptor:v5 serializedAppDescriptor:v13 identifier:@"com.apple.shortcuts.appdestination" managedLevel:v14 promptingBehaviour:v15];
  return v16;
}

- (unint64_t)hash
{
  v2 = [(WFAppContentLocation *)self appDescriptor];
  v3 = [v2 hashForSmartPromptPurposes];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10.receiver = self;
    v10.super_class = WFAppContentLocation;
    if ([(WFContentLocation *)&v10 isEqual:v4])
    {
      v5 = [(WFAppContentLocation *)self appDescriptor];
      v6 = [v4 appDescriptor];
      v7 = [v5 isEqualForSmartPromptPurposes:v6];
    }

    else
    {
      v7 = 0;
    }

    v8 = v4;
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
  v3 = [(WFAppContentLocation *)self appDescriptor];
  v4 = [v3 localizedName];

  if (v4)
  {
    v5 = [(WFAppContentLocation *)self managedLevel];
    v6 = MEMORY[0x277CCACA8];
    if (v5 == 2)
    {
      v7 = @"the managed “%@” app";
    }

    else
    {
      v7 = @"the unmanaged “%@” app";
    }

    v8 = WFLocalizedString(v7);
    v9 = [v6 localizedStringWithFormat:v8, v4];
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
  v3 = [(WFAppContentLocation *)self appDescriptor];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v5 = [(WFAppContentLocation *)self appDescriptor];
    v6 = [v5 applicationRecord];

    if (v6)
    {
      goto LABEL_7;
    }

    v7 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(WFAppContentLocation *)self appDescriptor];
      v9 = [v8 bundleIdentifier];
      v11 = 136315394;
      v12 = "[WFAppContentLocation app]";
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_ERROR, "%s Failed to get application record for bundleIdentifier: %{public}@", &v11, 0x16u);
    }
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (NSDictionary)serializedAppDescriptor
{
  serializedAppDescriptor = self->_serializedAppDescriptor;
  if (!serializedAppDescriptor)
  {
    serializedAppDescriptor = self->_appDescriptor;
    if (serializedAppDescriptor)
    {
      v4 = [serializedAppDescriptor serializedRepresentation];
      v5 = self->_serializedAppDescriptor;
      self->_serializedAppDescriptor = v4;

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
      v5 = [MEMORY[0x277CD3A88] sharedResolver];
      v6 = [v5 resolvedAppMatchingDescriptor:v4];

      v7 = [v6 bundleIdentifier];
      if ([v7 length])
      {
        v8 = [v6 bundleIdentifier];
        v9 = [v4 bundleIdentifier];
        v10 = [v8 isEqualToString:v9];

        if (v10)
        {
LABEL_7:
          v15 = self->_appDescriptor;
          self->_appDescriptor = v6;

          appDescriptor = self->_appDescriptor;
          goto LABEL_9;
        }

        v7 = [MEMORY[0x277CD3A88] sharedResolver];
        v11 = objc_alloc(MEMORY[0x277CD3A58]);
        v12 = [v4 bundleIdentifier];
        v13 = [v11 initWithBundleIdentifier:v12];
        v14 = [v7 resolvedAppMatchingDescriptor:v13];

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
    v5 = [(WFAppContentLocation *)self appDescriptor];
    v6 = [v5 extensionBundleIdentifier];
    v7 = [v4 containsObject:v6];

    if (v7)
    {
      v8 = WFLocalizedString(@"iCloud Drive");
      v9 = self->_localizedTitle;
      self->_localizedTitle = v8;
    }

    else
    {
      v9 = [(WFAppContentLocation *)self appDescriptor];
      v10 = [v9 localizedName];
      v11 = v10;
      if (!v10)
      {
        v6 = [(WFAppContentLocation *)self appDescriptor];
        v7 = [v6 applicationRecord];
        v11 = [v7 localizedName];
      }

      v12 = [v11 copy];
      v13 = self->_localizedTitle;
      self->_localizedTitle = v12;

      if (!v10)
      {
      }
    }

    localizedTitle = self->_localizedTitle;
  }

  return localizedTitle;
}

- (WFAppContentLocation)initWithAppDescriptor:(id)a3 serializedAppDescriptor:(id)a4 identifier:(id)a5 managedLevel:(unint64_t)a6 promptingBehaviour:(unint64_t)a7
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  if (!(v14 | v15))
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFAppContentLocation.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"descriptor || serializedAppDescriptor"}];
  }

  v22.receiver = self;
  v22.super_class = WFAppContentLocation;
  v17 = [(WFContentLocation *)&v22 initWithIdentifier:v16 promptingBehaviour:a7];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_appDescriptor, a3);
    objc_storeStrong(&v18->_serializedAppDescriptor, a4);
    v18->_managedLevel = a6;
    v19 = v18;
  }

  return v18;
}

+ (id)objectWithWFSerializedRepresentation:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"appDescriptor"];
  if (v5)
  {
LABEL_6:
    v9 = [v4 wfObjectOfClass:objc_opt_class() forKeyPath:@"managedLevel"];
    v10 = [v9 unsignedIntegerValue];

    v11 = [[a1 alloc] initWithAppDescriptor:0 serializedAppDescriptor:v5 identifier:@"com.apple.shortcuts.appdestination" managedLevel:v10 promptingBehaviour:0];
    goto LABEL_7;
  }

  v6 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v7 = getWFWorkflowExecutionLogObject();
  v5 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315138;
      v14 = "+[WFAppContentLocation objectWithWFSerializedRepresentation:]";
      _os_log_impl(&dword_21E1BD000, v5, OS_LOG_TYPE_DEBUG, "%s Reading legacy bundle identifier from WFAppContentLocation and upgrading to app descriptor", &v13, 0xCu);
    }

    v8 = [objc_alloc(MEMORY[0x277CD3A58]) initWithBundleIdentifier:v6];
    v5 = [v8 serializedRepresentation];

    goto LABEL_6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "+[WFAppContentLocation objectWithWFSerializedRepresentation:]";
    _os_log_impl(&dword_21E1BD000, v5, OS_LOG_TYPE_ERROR, "%s Failed to decode app descriptor from WFAppContentLocation", &v13, 0xCu);
  }

  v11 = 0;
LABEL_7:

  return v11;
}

+ (id)locationWithAppDescriptor:(id)a3 managedLevel:(unint64_t)a4 promptingBehaviour:(unint64_t)a5
{
  v8 = a3;
  v9 = [[a1 alloc] initWithAppDescriptor:v8 serializedAppDescriptor:0 identifier:@"com.apple.shortcuts.appdestination" managedLevel:a4 promptingBehaviour:a5];

  return v9;
}

+ (id)locationWithAppDescriptor:(id)a3 promptingBehaviour:(unint64_t)a4
{
  v6 = a3;
  v7 = +[WFManagedConfigurationProfile defaultProfile];
  v8 = [v6 bundleIdentifier];
  v9 = [v7 isAppManaged:v8];

  if (v9)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = [[a1 alloc] initWithAppDescriptor:v6 serializedAppDescriptor:0 identifier:@"com.apple.shortcuts.appdestination" managedLevel:v10 promptingBehaviour:a4];

  return v11;
}

+ (id)locationWithAppDescriptor:(id)a3
{
  v4 = a3;
  v5 = [a1 locationWithAppDescriptor:v4 promptingBehaviour:{objc_msgSend(v4, "isThirdParty")}];

  return v5;
}

+ (id)locationWithSystemAppBundleIdentifier:(id)a3 promptingBehaviour:(unint64_t)a4
{
  v6 = MEMORY[0x277CD3A58];
  v7 = a3;
  v8 = [[v6 alloc] initWithBundleIdentifier:v7];

  v9 = [MEMORY[0x277CD3A88] sharedResolver];
  v10 = [v9 resolvedAppMatchingDescriptor:v8];

  v11 = [a1 locationWithAppDescriptor:v10 promptingBehaviour:a4];

  return v11;
}

@end