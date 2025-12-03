@interface HFNamingComponents
+ (id)namingComponentFromAccessory:(id)accessory;
+ (id)namingComponentFromDiscoveredAccessory:(id)accessory;
+ (id)namingComponentFromHomeKitObject:(id)object;
+ (id)namingComponentFromMediaProfile:(id)profile;
+ (id)namingComponentFromMediaSystem:(id)system;
+ (id)namingComponentFromService:(id)service;
+ (id)namingComponentFromServiceGroup:(id)group;
- (HFNamingComponents)initWithHomeKitObject:(id)object;
- (NSString)defaultName;
- (NSString)name;
- (NSString)placeholderText;
- (NSString)textFieldDisplayText;
- (id)categoryName;
- (id)commitableNameForString:(id)string;
- (id)configuredName;
- (id)description;
- (id)homeKitSafeStringForString:(id)string;
- (id)roomName;
@end

@implementation HFNamingComponents

+ (id)namingComponentFromService:(id)service
{
  serviceCopy = service;
  v4 = [objc_alloc(objc_opt_class()) initWithHomeKitObject:serviceCopy];
  [v4 setIsService:1];
  hf_parentService = [serviceCopy hf_parentService];
  [v4 setIsChildService:hf_parentService != 0];

  [v4 setAllowsNullResettableName:0];
  [v4 setIsTelevision:{objc_msgSend(serviceCopy, "hf_isTelevision")}];
  hf_isTelevision = [serviceCopy hf_isTelevision];

  [v4 setAllowsEmptyNameTextField:hf_isTelevision];

  return v4;
}

+ (id)namingComponentFromServiceGroup:(id)group
{
  groupCopy = group;
  v4 = [objc_alloc(objc_opt_class()) initWithHomeKitObject:groupCopy];

  [v4 setIsServiceGroup:1];
  [v4 setAllowsNullResettableName:0];

  return v4;
}

+ (id)namingComponentFromAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v4 = [objc_alloc(objc_opt_class()) initWithHomeKitObject:accessoryCopy];
  hf_isTelevision = 1;
  [v4 setIsAccessory:1];
  [v4 setIsMediaAccessoryOrStereoPair:{objc_msgSend(accessoryCopy, "hf_isMediaAccessory")}];
  [v4 setIsTelevision:{objc_msgSend(accessoryCopy, "hf_isTelevision")}];
  [v4 setAllowsNullResettableName:{objc_msgSend(accessoryCopy, "hf_isMediaAccessory")}];
  if (([accessoryCopy hf_isMediaAccessory] & 1) == 0)
  {
    hf_isTelevision = [accessoryCopy hf_isTelevision];
  }

  [v4 setAllowsEmptyNameTextField:hf_isTelevision];

  return v4;
}

+ (id)namingComponentFromMediaProfile:(id)profile
{
  profileCopy = profile;
  v4 = objc_alloc(objc_opt_class());
  accessory = [profileCopy accessory];

  v6 = [v4 initWithHomeKitObject:accessory];
  [v6 setIsAccessory:1];
  [v6 setIsMediaAccessoryOrStereoPair:1];
  [v6 setIsTelevision:0];
  [v6 setAllowsNullResettableName:1];
  [v6 setAllowsEmptyNameTextField:1];

  return v6;
}

+ (id)namingComponentFromMediaSystem:(id)system
{
  systemCopy = system;
  v4 = [objc_alloc(objc_opt_class()) initWithHomeKitObject:systemCopy];

  [v4 setIsMediaAccessoryOrStereoPair:1];
  [v4 setAllowsNullResettableName:1];
  [v4 setAllowsEmptyNameTextField:1];

  return v4;
}

+ (id)namingComponentFromDiscoveredAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v4 = [objc_alloc(objc_opt_class()) initWithHomeKitObject:accessoryCopy];
  [v4 setIsDiscoveredAccessory:1];
  accessory = [accessoryCopy accessory];
  [v4 setIsMediaAccessoryOrStereoPair:{objc_msgSend(accessory, "hf_isMediaAccessory")}];

  accessory2 = [accessoryCopy accessory];

  [v4 setIsTelevision:{objc_msgSend(accessory2, "hf_isTelevision")}];

  return v4;
}

+ (id)namingComponentFromHomeKitObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_opt_class() namingComponentFromService:objectCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() namingComponentFromAccessory:objectCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [objc_opt_class() namingComponentFromMediaProfile:objectCopy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = [objc_opt_class() namingComponentFromMediaSystem:objectCopy];
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v6 = objc_opt_class();
          if (isKindOfClass)
          {
            v4 = [v6 namingComponentFromServiceGroup:objectCopy];
          }

          else
          {
            v4 = [[v6 alloc] initWithHomeKitObject:objectCopy];
          }
        }
      }
    }
  }

  v7 = v4;

  return v7;
}

- (HFNamingComponents)initWithHomeKitObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = HFNamingComponents;
  v6 = [(HFNamingComponents *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_homeKitObject, object);
    [(HFNamingComponents *)v7 setAllowsEmptyNameTextField:0];
    [(HFNamingComponents *)v7 setAllowsNullResettableName:0];
    [(HFNamingComponents *)v7 setIsAccessory:0];
    [(HFNamingComponents *)v7 setIsDiscoveredAccessory:0];
    [(HFNamingComponents *)v7 setIsService:0];
    [(HFNamingComponents *)v7 setIsChildService:0];
    [(HFNamingComponents *)v7 setIsServiceGroup:0];
    [(HFNamingComponents *)v7 setIsMediaAccessoryOrStereoPair:0];
    [(HFNamingComponents *)v7 setIsTelevision:0];
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  name = [(HFNamingComponents *)self name];
  v5 = [v3 appendObject:name withName:@"name"];

  placeholderText = [(HFNamingComponents *)self placeholderText];
  v7 = [v3 appendObject:placeholderText withName:@"placeholder text"];

  textFieldDisplayText = [(HFNamingComponents *)self textFieldDisplayText];
  v9 = [v3 appendObject:textFieldDisplayText withName:@"text field text"];

  build = [v3 build];

  return build;
}

- (NSString)name
{
  if ([(HFNamingComponents *)self isMediaAccessoryOrStereoPair])
  {
LABEL_2:
    configuredName = [(HFNamingComponents *)self configuredName];
    homeKitObject3 = configuredName;
    if (configuredName)
    {
      categoryName = configuredName;
    }

    else
    {
      categoryName = [(HFNamingComponents *)self categoryName];
    }

    goto LABEL_10;
  }

  if ([(HFNamingComponents *)self isTelevision])
  {
    defaultName = [(HFNamingComponents *)self defaultName];
    configuredName2 = [(HFNamingComponents *)self configuredName];
    v8 = [defaultName isEqualToString:configuredName2];

    if (v8)
    {
      categoryName2 = [(HFNamingComponents *)self categoryName];
      goto LABEL_12;
    }

    goto LABEL_2;
  }

  homeKitObject = [(HFNamingComponents *)self homeKitObject];
  v11 = objc_opt_respondsToSelector();

  if ((v11 & 1) == 0)
  {
    objc_opt_class();
    homeKitObject2 = [(HFNamingComponents *)self homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v14 = homeKitObject2;
    }

    else
    {
      v14 = 0;
    }

    homeKitObject3 = v14;

    if (homeKitObject3)
    {
      accessory = [homeKitObject3 accessory];
      categoryName2 = [accessory name];
    }

    else
    {
      accessory = [(HFNamingComponents *)self homeKitObject];
      NSLog(&cfstr_CouldNotDeterm.isa, accessory);
      categoryName2 = 0;
    }

    goto LABEL_11;
  }

  homeKitObject3 = [(HFNamingComponents *)self homeKitObject];
  categoryName = [homeKitObject3 name];
LABEL_10:
  categoryName2 = categoryName;
LABEL_11:

LABEL_12:

  return categoryName2;
}

- (NSString)placeholderText
{
  if ([(HFNamingComponents *)self isTelevision])
  {
    categoryName = [(HFNamingComponents *)self categoryName];
  }

  else
  {
    defaultName = [(HFNamingComponents *)self defaultName];
    v5 = defaultName;
    if (defaultName)
    {
      name = defaultName;
    }

    else
    {
      name = [(HFNamingComponents *)self name];
    }

    categoryName = name;
  }

  return categoryName;
}

- (NSString)textFieldDisplayText
{
  if ([(HFNamingComponents *)self allowsEmptyNameTextField])
  {
    if ([(HFNamingComponents *)self isMediaAccessoryOrStereoPair])
    {
      defaultName = [(HFNamingComponents *)self defaultName];

      name = [(HFNamingComponents *)self name];
      selfCopy2 = self;
      if (!defaultName)
      {
        roomName = [(HFNamingComponents *)self roomName];
LABEL_9:
        v8 = roomName;
        if ([name isEqualToString:roomName])
        {
          name2 = 0;
        }

        else
        {
          name2 = [(HFNamingComponents *)self name];
        }

        goto LABEL_14;
      }

LABEL_8:
      roomName = [(HFNamingComponents *)selfCopy2 defaultName];
      goto LABEL_9;
    }

    if ([(HFNamingComponents *)self isTelevision])
    {
      defaultName2 = [(HFNamingComponents *)self defaultName];

      if (defaultName2)
      {
        name = [(HFNamingComponents *)self configuredName];
        selfCopy2 = self;
        goto LABEL_8;
      }
    }
  }

  name2 = [(HFNamingComponents *)self name];
LABEL_14:

  return name2;
}

- (id)homeKitSafeStringForString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    textFieldDisplayText = [(HFNamingComponents *)self textFieldDisplayText];
    goto LABEL_15;
  }

  v5 = [HFUtilities sanitizeUserEnteredHomeKitName:stringCopy];
  if ([stringCopy length])
  {
    textFieldDisplayText2 = v5;
  }

  else
  {
    if ([(HFNamingComponents *)self allowsEmptyNameTextField])
    {
      textFieldDisplayText = 0;
      goto LABEL_14;
    }

    if ([(HFNamingComponents *)self isChildService])
    {
      defaultName = [(HFNamingComponents *)self defaultName];
      v9 = defaultName;
      if (defaultName)
      {
        name = defaultName;
      }

      else
      {
        name = [(HFNamingComponents *)self name];
      }

      textFieldDisplayText = name;

      goto LABEL_14;
    }

    textFieldDisplayText2 = [(HFNamingComponents *)self textFieldDisplayText];
  }

  textFieldDisplayText = textFieldDisplayText2;
LABEL_14:

LABEL_15:

  return textFieldDisplayText;
}

- (id)commitableNameForString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    goto LABEL_2;
  }

  if ([(HFNamingComponents *)self allowsNullResettableName])
  {
    defaultName2 = stringCopy;
  }

  else
  {
    defaultName = [(HFNamingComponents *)self defaultName];

    if (!defaultName)
    {
LABEL_2:
      defaultName2 = [(HFNamingComponents *)self homeKitSafeStringForString:stringCopy];
      goto LABEL_7;
    }

    defaultName2 = [(HFNamingComponents *)self defaultName];
  }

LABEL_7:
  v7 = defaultName2;

  return v7;
}

- (id)roomName
{
  homeKitObject = [(HFNamingComponents *)self homeKitObject];
  v4 = [homeKitObject conformsToProtocol:&unk_282562B78];

  if (v4)
  {
    homeKitObject2 = [(HFNamingComponents *)self homeKitObject];
    hf_parentRoom = [homeKitObject2 hf_parentRoom];
    name = [hf_parentRoom name];
  }

  else
  {
    name = 0;
  }

  return name;
}

- (NSString)defaultName
{
  if ([(HFNamingComponents *)self isService])
  {
    objc_opt_class();
    homeKitObject = [(HFNamingComponents *)self homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v4 = homeKitObject;
    }

    else
    {
      v4 = 0;
    }

    hf_primaryService = v4;

LABEL_6:
    defaultName = [hf_primaryService defaultName];
LABEL_7:
    v7 = defaultName;

    goto LABEL_8;
  }

  if ([(HFNamingComponents *)self isMediaAccessoryOrStereoPair])
  {
    categoryName = [(HFNamingComponents *)self categoryName];
    hf_primaryService = categoryName;
    if (categoryName)
    {
      defaultName = categoryName;
    }

    else
    {
      defaultName = [(HFNamingComponents *)self roomName];
    }

    goto LABEL_7;
  }

  if ([(HFNamingComponents *)self isTelevision])
  {
    objc_opt_class();
    homeKitObject2 = [(HFNamingComponents *)self homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v11 = homeKitObject2;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    hf_primaryService = [v12 hf_primaryService];

    goto LABEL_6;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)configuredName
{
  homeKitObject = [(HFNamingComponents *)self homeKitObject];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    homeKitObject2 = [(HFNamingComponents *)self homeKitObject];
    configuredName = [homeKitObject2 configuredName];
  }

  else
  {
    configuredName = 0;
  }

  return configuredName;
}

- (id)categoryName
{
  if ([(HFNamingComponents *)self isAccessory])
  {
    objc_opt_class();
    homeKitObject = [(HFNamingComponents *)self homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v4 = homeKitObject;
    }

    else
    {
      v4 = 0;
    }

    accessory = v4;

LABEL_6:
    hf_userFriendlyLocalizedCapitalizedDescription = [accessory hf_userFriendlyLocalizedCapitalizedDescription];
LABEL_12:

    goto LABEL_13;
  }

  if ([(HFNamingComponents *)self isDiscoveredAccessory])
  {
    goto LABEL_8;
  }

  if ([(HFNamingComponents *)self isService])
  {
    objc_opt_class();
    homeKitObject2 = [(HFNamingComponents *)self homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v14 = homeKitObject2;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    accessory = [v15 accessory];

    goto LABEL_6;
  }

  if ([(HFNamingComponents *)self isMediaAccessoryOrStereoPair])
  {
LABEL_8:
    objc_opt_class();
    homeKitObject3 = [(HFNamingComponents *)self homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v8 = homeKitObject3;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = MEMORY[0x277CD1650];
    accessory = [v9 category];

    categoryType = [accessory categoryType];
    hf_userFriendlyLocalizedCapitalizedDescription = [v10 hf_userFriendlyLocalizedCapitalizedDescription:categoryType];

    goto LABEL_12;
  }

  hf_userFriendlyLocalizedCapitalizedDescription = 0;
LABEL_13:

  return hf_userFriendlyLocalizedCapitalizedDescription;
}

@end