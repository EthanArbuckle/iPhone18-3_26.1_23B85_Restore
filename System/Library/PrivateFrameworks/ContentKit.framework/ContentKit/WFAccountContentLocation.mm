@interface WFAccountContentLocation
+ (id)locationWithAccountIdentifier:(id)identifier appDescriptor:(id)descriptor managedLevel:(unint64_t)level promptingBehaviour:(unint64_t)behaviour;
+ (id)locationWithAccountIdentifier:(id)identifier appDescriptor:(id)descriptor promptingBehaviour:(unint64_t)behaviour;
+ (id)objectWithWFSerializedRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (WFAccountContentLocation)initWithAccountIdentifier:(id)identifier appDescriptor:(id)descriptor serializedAppDescriptor:(id)appDescriptor managedLevel:(unint64_t)level promptingBehaviour:(unint64_t)behaviour;
- (WFAccountContentLocation)initWithCoder:(id)coder;
- (id)appContentLocation;
- (id)localizedMDMDescription;
- (id)wfSerializedRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAccountContentLocation

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  appDescriptor = [(WFAppContentLocation *)self appDescriptor];
  accountIdentifier = [(WFAccountContentLocation *)self accountIdentifier];
  v8 = [v3 stringWithFormat:@"<%@: %p, app descriptor: %@, accountIdentifier: %@, promptingBehaviour: %tu>", v5, self, appDescriptor, accountIdentifier, -[WFContentLocation promptingBehaviour](self, "promptingBehaviour")];

  return v8;
}

- (id)wfSerializedRepresentation
{
  v3 = MEMORY[0x277CBEB38];
  v8.receiver = self;
  v8.super_class = WFAccountContentLocation;
  wfSerializedRepresentation = [(WFAppContentLocation *)&v8 wfSerializedRepresentation];
  v5 = [v3 dictionaryWithDictionary:wfSerializedRepresentation];

  accountIdentifier = [(WFAccountContentLocation *)self accountIdentifier];
  [v5 setValue:accountIdentifier forKeyPath:@"accountIdentifier"];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFAccountContentLocation;
  coderCopy = coder;
  [(WFAppContentLocation *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFAccountContentLocation *)self accountIdentifier:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"accountIdentifier"];
}

- (WFAccountContentLocation)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = WFAccountContentLocation;
  coderCopy = coder;
  v4 = [(WFAppContentLocation *)&v10 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"accountIdentifier", v10.receiver, v10.super_class}];

  appDescriptor = [(WFAppContentLocation *)v4 appDescriptor];
  serializedAppDescriptor = [(WFAppContentLocation *)v4 serializedAppDescriptor];
  v8 = [(WFAccountContentLocation *)v4 initWithAccountIdentifier:v5 appDescriptor:appDescriptor serializedAppDescriptor:serializedAppDescriptor managedLevel:[(WFAppContentLocation *)v4 managedLevel] promptingBehaviour:[(WFContentLocation *)v4 promptingBehaviour]];

  return v8;
}

- (unint64_t)hash
{
  appDescriptor = [(WFAppContentLocation *)self appDescriptor];
  hashForSmartPromptPurposes = [appDescriptor hashForSmartPromptPurposes];
  accountIdentifier = [(WFAccountContentLocation *)self accountIdentifier];
  v6 = [accountIdentifier hash];

  return v6 ^ hashForSmartPromptPurposes;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10.receiver = self;
    v10.super_class = WFAccountContentLocation;
    if ([(WFAppContentLocation *)&v10 isEqual:equalCopy])
    {
      accountIdentifier = [(WFAccountContentLocation *)self accountIdentifier];
      accountIdentifier2 = [equalCopy accountIdentifier];
      v7 = [accountIdentifier isEqualToString:accountIdentifier2];
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
  v3 = [(WFAppContentLocation *)self app];
  v4 = v3;
  if (!v3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  localizedName = [v3 localizedName];
  accountIdentifier = [(WFAccountContentLocation *)self accountIdentifier];
  if (accountIdentifier)
  {
    v7 = +[WFManagedConfigurationProfile defaultProfile];
    v8 = [v7 accountWithIdentifier:accountIdentifier];
  }

  else
  {
    v8 = 0;
  }

  displayAccount = [v8 displayAccount];
  accountDescription = [displayAccount accountDescription];

  managedLevel = [(WFAppContentLocation *)self managedLevel];
  if (localizedName && accountDescription)
  {
    v13 = MEMORY[0x277CCACA8];
    if (managedLevel == 2)
    {
      v14 = @"the managed “%1$@” account of the “%2$@” app";
    }

    else
    {
      v14 = @"the unmanaged “%1$@” account of the “%2$@” app";
    }

    v17 = WFLocalizedString(v14);
    v20 = localizedName;
  }

  else
  {
    if (localizedName)
    {
      v15 = MEMORY[0x277CCACA8];
      if (managedLevel == 2)
      {
        v16 = @"the managed “%@” app";
      }

      else
      {
        v16 = @"the unmanaged “%@” app";
      }

      v17 = WFLocalizedString(v16);
      [v15 localizedStringWithFormat:v17, localizedName, v20];
      goto LABEL_21;
    }

    if (!accountDescription)
    {
      v9 = 0;
      goto LABEL_22;
    }

    v13 = MEMORY[0x277CCACA8];
    if (managedLevel == 2)
    {
      v18 = @"the managed “%@” account";
    }

    else
    {
      v18 = @"the unmanaged “%@” account";
    }

    v17 = WFLocalizedString(v18);
  }

  [v13 localizedStringWithFormat:v17, accountDescription, v20];
  v9 = LABEL_21:;

LABEL_22:
LABEL_23:

  return v9;
}

- (id)appContentLocation
{
  appDescriptor = [(WFAppContentLocation *)self appDescriptor];
  v4 = [WFAppContentLocation locationWithAppDescriptor:appDescriptor managedLevel:[(WFAppContentLocation *)self managedLevel] promptingBehaviour:[(WFContentLocation *)self promptingBehaviour]];

  return v4;
}

- (WFAccountContentLocation)initWithAccountIdentifier:(id)identifier appDescriptor:(id)descriptor serializedAppDescriptor:(id)appDescriptor managedLevel:(unint64_t)level promptingBehaviour:(unint64_t)behaviour
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  v24.receiver = self;
  v24.super_class = WFAccountContentLocation;
  v15 = [(WFAppContentLocation *)&v24 initWithAppDescriptor:descriptorCopy serializedAppDescriptor:appDescriptor identifier:@"com.apple.shortcuts.accountDestination" managedLevel:level promptingBehaviour:behaviour];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountIdentifier, identifier);
    v17 = +[WFManagedConfigurationProfile defaultProfile];
    bundleIdentifier = [descriptorCopy bundleIdentifier];
    v19 = [v17 isAccountBasedSourceApp:bundleIdentifier];

    if (v19)
    {
      v20 = [v17 accountWithIdentifier:identifierCopy];
      if (!v20)
      {
        v21 = getWFContentGraphLogObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v26 = "[WFAccountContentLocation initWithAccountIdentifier:appDescriptor:serializedAppDescriptor:managedLevel:promptingBehaviour:]";
          _os_log_impl(&dword_21E1BD000, v21, OS_LOG_TYPE_FAULT, "%s Creating a WFAccountContentLocation, but could not get account info or it doesn't exist", buf, 0xCu);
        }

        v20 = 0;
      }
    }

    else
    {
      v20 = getWFContentGraphLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v26 = "[WFAccountContentLocation initWithAccountIdentifier:appDescriptor:serializedAppDescriptor:managedLevel:promptingBehaviour:]";
        _os_log_impl(&dword_21E1BD000, v20, OS_LOG_TYPE_FAULT, "%s Creating a WFAccountContentLocation, but the given bundle identifier isn't account-based", buf, 0xCu);
      }
    }

    v22 = v16;
  }

  return v16;
}

+ (id)objectWithWFSerializedRepresentation:(id)representation
{
  v14 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v5 = [representationCopy wfObjectOfClass:objc_opt_class() forKeyPath:@"accountIdentifier"];
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___WFAccountContentLocation;
    v6 = objc_msgSendSuper2(&v11, sel_objectWithWFSerializedRepresentation_, representationCopy);
    v7 = v6;
    if (v6)
    {
      appDescriptor = [v6 appDescriptor];
      v9 = [self locationWithAccountIdentifier:v5 appDescriptor:appDescriptor managedLevel:{-[NSObject managedLevel](v7, "managedLevel")}];
    }

    else
    {
      appDescriptor = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(appDescriptor, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v13 = "+[WFAccountContentLocation objectWithWFSerializedRepresentation:]";
        _os_log_impl(&dword_21E1BD000, appDescriptor, OS_LOG_TYPE_ERROR, "%s Failed to decode WFAccountContentLocation as WFAppContentLocation to read bundleIdentifier", buf, 0xCu);
      }

      v9 = 0;
    }
  }

  else
  {
    v7 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "+[WFAccountContentLocation objectWithWFSerializedRepresentation:]";
      _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_ERROR, "%s Failed to decode accountIdentifier on WFAccountContentLocation", buf, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)locationWithAccountIdentifier:(id)identifier appDescriptor:(id)descriptor managedLevel:(unint64_t)level promptingBehaviour:(unint64_t)behaviour
{
  descriptorCopy = descriptor;
  identifierCopy = identifier;
  v12 = [[self alloc] initWithAccountIdentifier:identifierCopy appDescriptor:descriptorCopy serializedAppDescriptor:0 managedLevel:level promptingBehaviour:behaviour];

  return v12;
}

+ (id)locationWithAccountIdentifier:(id)identifier appDescriptor:(id)descriptor promptingBehaviour:(unint64_t)behaviour
{
  descriptorCopy = descriptor;
  identifierCopy = identifier;
  v10 = +[WFManagedConfigurationProfile defaultProfile];
  if ([v10 isAccountManaged:identifierCopy])
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = [self locationWithAccountIdentifier:identifierCopy appDescriptor:descriptorCopy managedLevel:v11 promptingBehaviour:behaviour];

  return v12;
}

@end