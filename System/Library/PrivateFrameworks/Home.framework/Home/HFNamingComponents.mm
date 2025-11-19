@interface HFNamingComponents
+ (id)namingComponentFromAccessory:(id)a3;
+ (id)namingComponentFromDiscoveredAccessory:(id)a3;
+ (id)namingComponentFromHomeKitObject:(id)a3;
+ (id)namingComponentFromMediaProfile:(id)a3;
+ (id)namingComponentFromMediaSystem:(id)a3;
+ (id)namingComponentFromService:(id)a3;
+ (id)namingComponentFromServiceGroup:(id)a3;
- (HFNamingComponents)initWithHomeKitObject:(id)a3;
- (NSString)defaultName;
- (NSString)name;
- (NSString)placeholderText;
- (NSString)textFieldDisplayText;
- (id)categoryName;
- (id)commitableNameForString:(id)a3;
- (id)configuredName;
- (id)description;
- (id)homeKitSafeStringForString:(id)a3;
- (id)roomName;
@end

@implementation HFNamingComponents

+ (id)namingComponentFromService:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithHomeKitObject:v3];
  [v4 setIsService:1];
  v5 = [v3 hf_parentService];
  [v4 setIsChildService:v5 != 0];

  [v4 setAllowsNullResettableName:0];
  [v4 setIsTelevision:{objc_msgSend(v3, "hf_isTelevision")}];
  v6 = [v3 hf_isTelevision];

  [v4 setAllowsEmptyNameTextField:v6];

  return v4;
}

+ (id)namingComponentFromServiceGroup:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithHomeKitObject:v3];

  [v4 setIsServiceGroup:1];
  [v4 setAllowsNullResettableName:0];

  return v4;
}

+ (id)namingComponentFromAccessory:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithHomeKitObject:v3];
  v5 = 1;
  [v4 setIsAccessory:1];
  [v4 setIsMediaAccessoryOrStereoPair:{objc_msgSend(v3, "hf_isMediaAccessory")}];
  [v4 setIsTelevision:{objc_msgSend(v3, "hf_isTelevision")}];
  [v4 setAllowsNullResettableName:{objc_msgSend(v3, "hf_isMediaAccessory")}];
  if (([v3 hf_isMediaAccessory] & 1) == 0)
  {
    v5 = [v3 hf_isTelevision];
  }

  [v4 setAllowsEmptyNameTextField:v5];

  return v4;
}

+ (id)namingComponentFromMediaProfile:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v5 = [v3 accessory];

  v6 = [v4 initWithHomeKitObject:v5];
  [v6 setIsAccessory:1];
  [v6 setIsMediaAccessoryOrStereoPair:1];
  [v6 setIsTelevision:0];
  [v6 setAllowsNullResettableName:1];
  [v6 setAllowsEmptyNameTextField:1];

  return v6;
}

+ (id)namingComponentFromMediaSystem:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithHomeKitObject:v3];

  [v4 setIsMediaAccessoryOrStereoPair:1];
  [v4 setAllowsNullResettableName:1];
  [v4 setAllowsEmptyNameTextField:1];

  return v4;
}

+ (id)namingComponentFromDiscoveredAccessory:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithHomeKitObject:v3];
  [v4 setIsDiscoveredAccessory:1];
  v5 = [v3 accessory];
  [v4 setIsMediaAccessoryOrStereoPair:{objc_msgSend(v5, "hf_isMediaAccessory")}];

  v6 = [v3 accessory];

  [v4 setIsTelevision:{objc_msgSend(v6, "hf_isTelevision")}];

  return v4;
}

+ (id)namingComponentFromHomeKitObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_opt_class() namingComponentFromService:v3];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() namingComponentFromAccessory:v3];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [objc_opt_class() namingComponentFromMediaProfile:v3];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = [objc_opt_class() namingComponentFromMediaSystem:v3];
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v6 = objc_opt_class();
          if (isKindOfClass)
          {
            v4 = [v6 namingComponentFromServiceGroup:v3];
          }

          else
          {
            v4 = [[v6 alloc] initWithHomeKitObject:v3];
          }
        }
      }
    }
  }

  v7 = v4;

  return v7;
}

- (HFNamingComponents)initWithHomeKitObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFNamingComponents;
  v6 = [(HFNamingComponents *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_homeKitObject, a3);
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
  v4 = [(HFNamingComponents *)self name];
  v5 = [v3 appendObject:v4 withName:@"name"];

  v6 = [(HFNamingComponents *)self placeholderText];
  v7 = [v3 appendObject:v6 withName:@"placeholder text"];

  v8 = [(HFNamingComponents *)self textFieldDisplayText];
  v9 = [v3 appendObject:v8 withName:@"text field text"];

  v10 = [v3 build];

  return v10;
}

- (NSString)name
{
  if ([(HFNamingComponents *)self isMediaAccessoryOrStereoPair])
  {
LABEL_2:
    v3 = [(HFNamingComponents *)self configuredName];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = [(HFNamingComponents *)self categoryName];
    }

    goto LABEL_10;
  }

  if ([(HFNamingComponents *)self isTelevision])
  {
    v6 = [(HFNamingComponents *)self defaultName];
    v7 = [(HFNamingComponents *)self configuredName];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      v9 = [(HFNamingComponents *)self categoryName];
      goto LABEL_12;
    }

    goto LABEL_2;
  }

  v10 = [(HFNamingComponents *)self homeKitObject];
  v11 = objc_opt_respondsToSelector();

  if ((v11 & 1) == 0)
  {
    objc_opt_class();
    v13 = [(HFNamingComponents *)self homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v4 = v14;

    if (v4)
    {
      v15 = [v4 accessory];
      v9 = [v15 name];
    }

    else
    {
      v15 = [(HFNamingComponents *)self homeKitObject];
      NSLog(&cfstr_CouldNotDeterm.isa, v15);
      v9 = 0;
    }

    goto LABEL_11;
  }

  v4 = [(HFNamingComponents *)self homeKitObject];
  v5 = [v4 name];
LABEL_10:
  v9 = v5;
LABEL_11:

LABEL_12:

  return v9;
}

- (NSString)placeholderText
{
  if ([(HFNamingComponents *)self isTelevision])
  {
    v3 = [(HFNamingComponents *)self categoryName];
  }

  else
  {
    v4 = [(HFNamingComponents *)self defaultName];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [(HFNamingComponents *)self name];
    }

    v3 = v6;
  }

  return v3;
}

- (NSString)textFieldDisplayText
{
  if ([(HFNamingComponents *)self allowsEmptyNameTextField])
  {
    if ([(HFNamingComponents *)self isMediaAccessoryOrStereoPair])
    {
      v3 = [(HFNamingComponents *)self defaultName];

      v4 = [(HFNamingComponents *)self name];
      v5 = self;
      if (!v3)
      {
        v6 = [(HFNamingComponents *)self roomName];
LABEL_9:
        v8 = v6;
        if ([v4 isEqualToString:v6])
        {
          v9 = 0;
        }

        else
        {
          v9 = [(HFNamingComponents *)self name];
        }

        goto LABEL_14;
      }

LABEL_8:
      v6 = [(HFNamingComponents *)v5 defaultName];
      goto LABEL_9;
    }

    if ([(HFNamingComponents *)self isTelevision])
    {
      v7 = [(HFNamingComponents *)self defaultName];

      if (v7)
      {
        v4 = [(HFNamingComponents *)self configuredName];
        v5 = self;
        goto LABEL_8;
      }
    }
  }

  v9 = [(HFNamingComponents *)self name];
LABEL_14:

  return v9;
}

- (id)homeKitSafeStringForString:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = [(HFNamingComponents *)self textFieldDisplayText];
    goto LABEL_15;
  }

  v5 = [HFUtilities sanitizeUserEnteredHomeKitName:v4];
  if ([v4 length])
  {
    v6 = v5;
  }

  else
  {
    if ([(HFNamingComponents *)self allowsEmptyNameTextField])
    {
      v7 = 0;
      goto LABEL_14;
    }

    if ([(HFNamingComponents *)self isChildService])
    {
      v8 = [(HFNamingComponents *)self defaultName];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = [(HFNamingComponents *)self name];
      }

      v7 = v10;

      goto LABEL_14;
    }

    v6 = [(HFNamingComponents *)self textFieldDisplayText];
  }

  v7 = v6;
LABEL_14:

LABEL_15:

  return v7;
}

- (id)commitableNameForString:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    goto LABEL_2;
  }

  if ([(HFNamingComponents *)self allowsNullResettableName])
  {
    v5 = v4;
  }

  else
  {
    v6 = [(HFNamingComponents *)self defaultName];

    if (!v6)
    {
LABEL_2:
      v5 = [(HFNamingComponents *)self homeKitSafeStringForString:v4];
      goto LABEL_7;
    }

    v5 = [(HFNamingComponents *)self defaultName];
  }

LABEL_7:
  v7 = v5;

  return v7;
}

- (id)roomName
{
  v3 = [(HFNamingComponents *)self homeKitObject];
  v4 = [v3 conformsToProtocol:&unk_282562B78];

  if (v4)
  {
    v5 = [(HFNamingComponents *)self homeKitObject];
    v6 = [v5 hf_parentRoom];
    v7 = [v6 name];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)defaultName
{
  if ([(HFNamingComponents *)self isService])
  {
    objc_opt_class();
    v3 = [(HFNamingComponents *)self homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

LABEL_6:
    v6 = [v5 defaultName];
LABEL_7:
    v7 = v6;

    goto LABEL_8;
  }

  if ([(HFNamingComponents *)self isMediaAccessoryOrStereoPair])
  {
    v9 = [(HFNamingComponents *)self categoryName];
    v5 = v9;
    if (v9)
    {
      v6 = v9;
    }

    else
    {
      v6 = [(HFNamingComponents *)self roomName];
    }

    goto LABEL_7;
  }

  if ([(HFNamingComponents *)self isTelevision])
  {
    objc_opt_class();
    v10 = [(HFNamingComponents *)self homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v5 = [v12 hf_primaryService];

    goto LABEL_6;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)configuredName
{
  v3 = [(HFNamingComponents *)self homeKitObject];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(HFNamingComponents *)self homeKitObject];
    v6 = [v5 configuredName];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)categoryName
{
  if ([(HFNamingComponents *)self isAccessory])
  {
    objc_opt_class();
    v3 = [(HFNamingComponents *)self homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

LABEL_6:
    v6 = [v5 hf_userFriendlyLocalizedCapitalizedDescription];
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
    v13 = [(HFNamingComponents *)self homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v5 = [v15 accessory];

    goto LABEL_6;
  }

  if ([(HFNamingComponents *)self isMediaAccessoryOrStereoPair])
  {
LABEL_8:
    objc_opt_class();
    v7 = [(HFNamingComponents *)self homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = MEMORY[0x277CD1650];
    v5 = [v9 category];

    v11 = [v5 categoryType];
    v6 = [v10 hf_userFriendlyLocalizedCapitalizedDescription:v11];

    goto LABEL_12;
  }

  v6 = 0;
LABEL_13:

  return v6;
}

@end