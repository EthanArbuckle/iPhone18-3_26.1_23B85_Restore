@interface HMImmutableSetting(HFAdditions)
- (id)homeKitAccessorySettingValueForRawValue:()HFAdditions;
- (id)value;
@end

@implementation HMImmutableSetting(HFAdditions)

- (id)value
{
  objc_opt_class();
  selfCopy = self;
  if (objc_opt_isKindOfClass())
  {
    v3 = selfCopy;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  objc_opt_class();
  v5 = selfCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  objc_opt_class();
  v8 = v5;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  objc_opt_class();
  v11 = v8;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  objc_opt_class();
  v14 = v11;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  objc_opt_class();
  v17 = v14;
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (v4)
  {
    stringValue = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "BOOLValue")}];
LABEL_31:
    v21 = stringValue;
    goto LABEL_32;
  }

  if (v7)
  {
    stringValue = [v7 stringValue];
    goto LABEL_31;
  }

  if (v10)
  {
    stringValue = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "integerValue")}];
    goto LABEL_31;
  }

  if (v13)
  {
    stringValue = [v13 stringListValue];
    goto LABEL_31;
  }

  if (v16)
  {
    stringValue = [v16 languageValues];
    goto LABEL_31;
  }

  if (v19)
  {
    stringValue = [v19 languageValue];
    goto LABEL_31;
  }

  v21 = 0;
LABEL_32:

  return v21;
}

- (id)homeKitAccessorySettingValueForRawValue:()HFAdditions
{
  v4 = a3;
  objc_opt_class();
  selfCopy = self;
  if (objc_opt_isKindOfClass())
  {
    v6 = selfCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  objc_opt_class();
  v8 = selfCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  objc_opt_class();
  v11 = v8;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  objc_opt_class();
  v14 = v4;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  objc_opt_class();
  v17 = v14;
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (v16 | v19)
  {
    if (v7)
    {
      v20 = [objc_alloc(MEMORY[0x277CD1DA8]) initWithBoolValue:{objc_msgSend(v16, "BOOLValue")}];
LABEL_23:
      v21 = v20;
      goto LABEL_25;
    }

    if (v13)
    {
      v20 = [objc_alloc(MEMORY[0x277CD1DB8]) initWithIntegerValue:{objc_msgSend(v16, "integerValue")}];
      goto LABEL_23;
    }

    if (v10)
    {
      v20 = [objc_alloc(MEMORY[0x277CD1DC8]) initWithStringValue:v19];
      goto LABEL_23;
    }
  }

  v21 = 0;
LABEL_25:

  return v21;
}

@end