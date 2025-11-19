@interface WFAccountContentLocation
+ (id)locationWithAccountIdentifier:(id)a3 appDescriptor:(id)a4 managedLevel:(unint64_t)a5 promptingBehaviour:(unint64_t)a6;
+ (id)locationWithAccountIdentifier:(id)a3 appDescriptor:(id)a4 promptingBehaviour:(unint64_t)a5;
+ (id)objectWithWFSerializedRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (WFAccountContentLocation)initWithAccountIdentifier:(id)a3 appDescriptor:(id)a4 serializedAppDescriptor:(id)a5 managedLevel:(unint64_t)a6 promptingBehaviour:(unint64_t)a7;
- (WFAccountContentLocation)initWithCoder:(id)a3;
- (id)appContentLocation;
- (id)localizedMDMDescription;
- (id)wfSerializedRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAccountContentLocation

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFAppContentLocation *)self appDescriptor];
  v7 = [(WFAccountContentLocation *)self accountIdentifier];
  v8 = [v3 stringWithFormat:@"<%@: %p, app descriptor: %@, accountIdentifier: %@, promptingBehaviour: %tu>", v5, self, v6, v7, -[WFContentLocation promptingBehaviour](self, "promptingBehaviour")];

  return v8;
}

- (id)wfSerializedRepresentation
{
  v3 = MEMORY[0x277CBEB38];
  v8.receiver = self;
  v8.super_class = WFAccountContentLocation;
  v4 = [(WFAppContentLocation *)&v8 wfSerializedRepresentation];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = [(WFAccountContentLocation *)self accountIdentifier];
  [v5 setValue:v6 forKeyPath:@"accountIdentifier"];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFAccountContentLocation;
  v4 = a3;
  [(WFAppContentLocation *)&v6 encodeWithCoder:v4];
  v5 = [(WFAccountContentLocation *)self accountIdentifier:v6.receiver];
  [v4 encodeObject:v5 forKey:@"accountIdentifier"];
}

- (WFAccountContentLocation)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = WFAccountContentLocation;
  v3 = a3;
  v4 = [(WFAppContentLocation *)&v10 initWithCoder:v3];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"accountIdentifier", v10.receiver, v10.super_class}];

  v6 = [(WFAppContentLocation *)v4 appDescriptor];
  v7 = [(WFAppContentLocation *)v4 serializedAppDescriptor];
  v8 = [(WFAccountContentLocation *)v4 initWithAccountIdentifier:v5 appDescriptor:v6 serializedAppDescriptor:v7 managedLevel:[(WFAppContentLocation *)v4 managedLevel] promptingBehaviour:[(WFContentLocation *)v4 promptingBehaviour]];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(WFAppContentLocation *)self appDescriptor];
  v4 = [v3 hashForSmartPromptPurposes];
  v5 = [(WFAccountContentLocation *)self accountIdentifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10.receiver = self;
    v10.super_class = WFAccountContentLocation;
    if ([(WFAppContentLocation *)&v10 isEqual:v4])
    {
      v5 = [(WFAccountContentLocation *)self accountIdentifier];
      v6 = [v4 accountIdentifier];
      v7 = [v5 isEqualToString:v6];
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
  v3 = [(WFAppContentLocation *)self app];
  v4 = v3;
  if (!v3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  v5 = [v3 localizedName];
  v6 = [(WFAccountContentLocation *)self accountIdentifier];
  if (v6)
  {
    v7 = +[WFManagedConfigurationProfile defaultProfile];
    v8 = [v7 accountWithIdentifier:v6];
  }

  else
  {
    v8 = 0;
  }

  v10 = [v8 displayAccount];
  v11 = [v10 accountDescription];

  v12 = [(WFAppContentLocation *)self managedLevel];
  if (v5 && v11)
  {
    v13 = MEMORY[0x277CCACA8];
    if (v12 == 2)
    {
      v14 = @"the managed “%1$@” account of the “%2$@” app";
    }

    else
    {
      v14 = @"the unmanaged “%1$@” account of the “%2$@” app";
    }

    v17 = WFLocalizedString(v14);
    v20 = v5;
  }

  else
  {
    if (v5)
    {
      v15 = MEMORY[0x277CCACA8];
      if (v12 == 2)
      {
        v16 = @"the managed “%@” app";
      }

      else
      {
        v16 = @"the unmanaged “%@” app";
      }

      v17 = WFLocalizedString(v16);
      [v15 localizedStringWithFormat:v17, v5, v20];
      goto LABEL_21;
    }

    if (!v11)
    {
      v9 = 0;
      goto LABEL_22;
    }

    v13 = MEMORY[0x277CCACA8];
    if (v12 == 2)
    {
      v18 = @"the managed “%@” account";
    }

    else
    {
      v18 = @"the unmanaged “%@” account";
    }

    v17 = WFLocalizedString(v18);
  }

  [v13 localizedStringWithFormat:v17, v11, v20];
  v9 = LABEL_21:;

LABEL_22:
LABEL_23:

  return v9;
}

- (id)appContentLocation
{
  v3 = [(WFAppContentLocation *)self appDescriptor];
  v4 = [WFAppContentLocation locationWithAppDescriptor:v3 managedLevel:[(WFAppContentLocation *)self managedLevel] promptingBehaviour:[(WFContentLocation *)self promptingBehaviour]];

  return v4;
}

- (WFAccountContentLocation)initWithAccountIdentifier:(id)a3 appDescriptor:(id)a4 serializedAppDescriptor:(id)a5 managedLevel:(unint64_t)a6 promptingBehaviour:(unint64_t)a7
{
  v27 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v24.receiver = self;
  v24.super_class = WFAccountContentLocation;
  v15 = [(WFAppContentLocation *)&v24 initWithAppDescriptor:v14 serializedAppDescriptor:a5 identifier:@"com.apple.shortcuts.accountDestination" managedLevel:a6 promptingBehaviour:a7];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountIdentifier, a3);
    v17 = +[WFManagedConfigurationProfile defaultProfile];
    v18 = [v14 bundleIdentifier];
    v19 = [v17 isAccountBasedSourceApp:v18];

    if (v19)
    {
      v20 = [v17 accountWithIdentifier:v13];
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

+ (id)objectWithWFSerializedRepresentation:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 wfObjectOfClass:objc_opt_class() forKeyPath:@"accountIdentifier"];
  if (v5)
  {
    v11.receiver = a1;
    v11.super_class = &OBJC_METACLASS___WFAccountContentLocation;
    v6 = objc_msgSendSuper2(&v11, sel_objectWithWFSerializedRepresentation_, v4);
    v7 = v6;
    if (v6)
    {
      v8 = [v6 appDescriptor];
      v9 = [a1 locationWithAccountIdentifier:v5 appDescriptor:v8 managedLevel:{-[NSObject managedLevel](v7, "managedLevel")}];
    }

    else
    {
      v8 = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v13 = "+[WFAccountContentLocation objectWithWFSerializedRepresentation:]";
        _os_log_impl(&dword_21E1BD000, v8, OS_LOG_TYPE_ERROR, "%s Failed to decode WFAccountContentLocation as WFAppContentLocation to read bundleIdentifier", buf, 0xCu);
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

+ (id)locationWithAccountIdentifier:(id)a3 appDescriptor:(id)a4 managedLevel:(unint64_t)a5 promptingBehaviour:(unint64_t)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [[a1 alloc] initWithAccountIdentifier:v11 appDescriptor:v10 serializedAppDescriptor:0 managedLevel:a5 promptingBehaviour:a6];

  return v12;
}

+ (id)locationWithAccountIdentifier:(id)a3 appDescriptor:(id)a4 promptingBehaviour:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[WFManagedConfigurationProfile defaultProfile];
  if ([v10 isAccountManaged:v9])
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = [a1 locationWithAccountIdentifier:v9 appDescriptor:v8 managedLevel:v11 promptingBehaviour:a5];

  return v12;
}

@end