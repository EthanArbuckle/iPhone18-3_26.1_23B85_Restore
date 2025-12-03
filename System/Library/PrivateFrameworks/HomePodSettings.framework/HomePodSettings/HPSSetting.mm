@interface HPSSetting
+ (HPSSetting)settingWithKeyPath:(id)path value:(id)value;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSetting:(id)setting;
- (BOOL)isEquivalentToSetting:(id)setting;
- (HPSSetting)initWithCoder:(id)coder;
- (HPSSetting)initWithKeyPath:(id)path value:(id)value;
- (NSString)lastModifiedDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HPSSetting

- (HPSSetting)initWithKeyPath:(id)path value:(id)value
{
  pathCopy = path;
  valueCopy = value;
  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    objc_exception_throw(*MEMORY[0x277CBE658]);
  }

  v17.receiver = self;
  v17.super_class = HPSSetting;
  v9 = [(HPSSetting *)&v17 init];
  if (v9)
  {
    v10 = [pathCopy copy];
    keyPath = v9->_keyPath;
    v9->_keyPath = v10;

    v12 = [valueCopy copyWithZone:0];
    value = v9->_value;
    v9->_value = v12;

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    lastModifiedDate = v9->_lastModifiedDate;
    v9->_lastModifiedDate = distantPast;
  }

  return v9;
}

+ (HPSSetting)settingWithKeyPath:(id)path value:(id)value
{
  valueCopy = value;
  pathCopy = path;
  v8 = [[self alloc] initWithKeyPath:pathCopy value:valueCopy];

  return v8;
}

- (BOOL)isEquivalentToSetting:(id)setting
{
  settingCopy = setting;
  value = [(HPSSetting *)self value];

  keyPath = [(HPSSetting *)self keyPath];
  keyPath2 = [settingCopy keyPath];
  v8 = [keyPath isEqualToString:keyPath2];
  if (!value)
  {
    if (v8)
    {
      value2 = [settingCopy value];
      v11 = value2 == 0;
      goto LABEL_6;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  if (!v8)
  {
    goto LABEL_7;
  }

  value2 = [(HPSSetting *)self value];
  value3 = [settingCopy value];
  v11 = [value2 isEqual:value3];

LABEL_6:
LABEL_8:

  return v11;
}

- (BOOL)isEqualToSetting:(id)setting
{
  settingCopy = setting;
  value = [(HPSSetting *)self value];

  keyPath = [(HPSSetting *)self keyPath];
  keyPath2 = [settingCopy keyPath];
  v8 = [keyPath isEqualToString:keyPath2];
  if (value)
  {
    if (v8)
    {
      value2 = [(HPSSetting *)self value];
      value3 = [settingCopy value];
      if (![value2 isEqual:value3])
      {
        v13 = 0;
LABEL_12:

        goto LABEL_13;
      }

      lastModifiedDate = [(HPSSetting *)self lastModifiedDate];
      lastModifiedDate2 = [settingCopy lastModifiedDate];
      v13 = [lastModifiedDate isEqual:lastModifiedDate2];

LABEL_11:
      goto LABEL_12;
    }
  }

  else if (v8)
  {
    value2 = [settingCopy value];
    if (value2)
    {
      v13 = 0;
LABEL_13:

      goto LABEL_14;
    }

    value3 = [(HPSSetting *)self lastModifiedDate];
    lastModifiedDate = [settingCopy lastModifiedDate];
    v13 = [value3 isEqual:lastModifiedDate];
    goto LABEL_11;
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HPSSetting *)self isEqualToSetting:equalCopy];
  }

  return v5;
}

- (unint64_t)hash
{
  keyPath = [(HPSSetting *)self keyPath];
  v3 = [keyPath hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  keyPath = [(HPSSetting *)self keyPath];
  value = [(HPSSetting *)self value];
  lastModifiedDescription = [(HPSSetting *)self lastModifiedDescription];
  v9 = [v3 stringWithFormat:@"<%@: %p, %@ = %@%@>", v5, self, keyPath, value, lastModifiedDescription];

  return v9;
}

- (NSString)lastModifiedDescription
{
  lastModifiedDate = [(HPSSetting *)self lastModifiedDate];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  if ([lastModifiedDate isEqualToDate:distantPast])
  {
    v5 = &stru_28664DBD0;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    lastModifiedDate2 = [(HPSSetting *)self lastModifiedDate];
    v5 = [v6 stringWithFormat:@" (modified: %@)", lastModifiedDate2];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  keyPath = [(HPSSetting *)self keyPath];
  [coderCopy encodeObject:keyPath forKey:@"setting.keypath"];

  value = [(HPSSetting *)self value];
  if (value)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v6 setRequiresSecureCoding:1];
    [v6 encodeObject:value forKey:@"setting.value"];
    encodedData = [v6 encodedData];
    [coderCopy encodeObject:encodedData forKey:@"setting.value"];
  }

  lastModifiedDate = [(HPSSetting *)self lastModifiedDate];
  [coderCopy encodeObject:lastModifiedDate forKey:@"setting.lastmodifieddate"];
}

- (HPSSetting)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = HPSSetting;
  v5 = [(HPSSetting *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setting.keypath"];
    keyPath = v5->_keyPath;
    v5->_keyPath = v6;

    if (!v5->_keyPath)
    {
      goto LABEL_14;
    }

    if ([coderCopy containsValueForKey:@"setting.value"])
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setting.value"];
      v24 = 0;
      v9 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v8 error:&v24];
      v10 = v24;
      [v9 setRequiresSecureCoding:1];
      [v9 _enableStrictSecureDecodingMode];
      [v9 setDecodingFailurePolicy:1];
      valueClass = [objc_opt_class() valueClass];
      if (valueClass)
      {
        v12 = [v9 decodeObjectOfClass:valueClass forKey:@"setting.value"];
        value = v5->_value;
        v5->_value = v12;

        if (!v5->_value)
        {
LABEL_13:

          goto LABEL_14;
        }
      }

      else
      {
        valueClasses = [objc_opt_class() valueClasses];
        if (!valueClasses)
        {
          goto LABEL_13;
        }

        v15 = valueClasses;
        v16 = [v9 decodeObjectOfClasses:valueClasses forKey:@"setting.value"];
        v17 = v5->_value;
        v5->_value = v16;

        v18 = v5->_value;
        if (!v18)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setting.lastmodifieddate"];
    lastModifiedDate = v5->_lastModifiedDate;
    v5->_lastModifiedDate = v19;

    v21 = v5->_lastModifiedDate;
    if (!v21)
    {
LABEL_14:
      v22 = 0;
      goto LABEL_15;
    }
  }

  v22 = v5;
LABEL_15:

  return v22;
}

@end