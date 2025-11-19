@interface HPSSetting
+ (HPSSetting)settingWithKeyPath:(id)a3 value:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSetting:(id)a3;
- (BOOL)isEquivalentToSetting:(id)a3;
- (HPSSetting)initWithCoder:(id)a3;
- (HPSSetting)initWithKeyPath:(id)a3 value:(id)a4;
- (NSString)lastModifiedDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HPSSetting

- (HPSSetting)initWithKeyPath:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v10 = [v6 copy];
    keyPath = v9->_keyPath;
    v9->_keyPath = v10;

    v12 = [v7 copyWithZone:0];
    value = v9->_value;
    v9->_value = v12;

    v14 = [MEMORY[0x277CBEAA8] distantPast];
    lastModifiedDate = v9->_lastModifiedDate;
    v9->_lastModifiedDate = v14;
  }

  return v9;
}

+ (HPSSetting)settingWithKeyPath:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithKeyPath:v7 value:v6];

  return v8;
}

- (BOOL)isEquivalentToSetting:(id)a3
{
  v4 = a3;
  v5 = [(HPSSetting *)self value];

  v6 = [(HPSSetting *)self keyPath];
  v7 = [v4 keyPath];
  v8 = [v6 isEqualToString:v7];
  if (!v5)
  {
    if (v8)
    {
      v9 = [v4 value];
      v11 = v9 == 0;
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

  v9 = [(HPSSetting *)self value];
  v10 = [v4 value];
  v11 = [v9 isEqual:v10];

LABEL_6:
LABEL_8:

  return v11;
}

- (BOOL)isEqualToSetting:(id)a3
{
  v4 = a3;
  v5 = [(HPSSetting *)self value];

  v6 = [(HPSSetting *)self keyPath];
  v7 = [v4 keyPath];
  v8 = [v6 isEqualToString:v7];
  if (v5)
  {
    if (v8)
    {
      v9 = [(HPSSetting *)self value];
      v10 = [v4 value];
      if (![v9 isEqual:v10])
      {
        v13 = 0;
LABEL_12:

        goto LABEL_13;
      }

      v11 = [(HPSSetting *)self lastModifiedDate];
      v12 = [v4 lastModifiedDate];
      v13 = [v11 isEqual:v12];

LABEL_11:
      goto LABEL_12;
    }
  }

  else if (v8)
  {
    v9 = [v4 value];
    if (v9)
    {
      v13 = 0;
LABEL_13:

      goto LABEL_14;
    }

    v10 = [(HPSSetting *)self lastModifiedDate];
    v11 = [v4 lastModifiedDate];
    v13 = [v10 isEqual:v11];
    goto LABEL_11;
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HPSSetting *)self isEqualToSetting:v4];
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(HPSSetting *)self keyPath];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HPSSetting *)self keyPath];
  v7 = [(HPSSetting *)self value];
  v8 = [(HPSSetting *)self lastModifiedDescription];
  v9 = [v3 stringWithFormat:@"<%@: %p, %@ = %@%@>", v5, self, v6, v7, v8];

  return v9;
}

- (NSString)lastModifiedDescription
{
  v3 = [(HPSSetting *)self lastModifiedDate];
  v4 = [MEMORY[0x277CBEAA8] distantPast];
  if ([v3 isEqualToDate:v4])
  {
    v5 = &stru_28664DBD0;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [(HPSSetting *)self lastModifiedDate];
    v5 = [v6 stringWithFormat:@" (modified: %@)", v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(HPSSetting *)self keyPath];
  [v9 encodeObject:v4 forKey:@"setting.keypath"];

  v5 = [(HPSSetting *)self value];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v6 setRequiresSecureCoding:1];
    [v6 encodeObject:v5 forKey:@"setting.value"];
    v7 = [v6 encodedData];
    [v9 encodeObject:v7 forKey:@"setting.value"];
  }

  v8 = [(HPSSetting *)self lastModifiedDate];
  [v9 encodeObject:v8 forKey:@"setting.lastmodifieddate"];
}

- (HPSSetting)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = HPSSetting;
  v5 = [(HPSSetting *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setting.keypath"];
    keyPath = v5->_keyPath;
    v5->_keyPath = v6;

    if (!v5->_keyPath)
    {
      goto LABEL_14;
    }

    if ([v4 containsValueForKey:@"setting.value"])
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setting.value"];
      v24 = 0;
      v9 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v8 error:&v24];
      v10 = v24;
      [v9 setRequiresSecureCoding:1];
      [v9 _enableStrictSecureDecodingMode];
      [v9 setDecodingFailurePolicy:1];
      v11 = [objc_opt_class() valueClass];
      if (v11)
      {
        v12 = [v9 decodeObjectOfClass:v11 forKey:@"setting.value"];
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
        v14 = [objc_opt_class() valueClasses];
        if (!v14)
        {
          goto LABEL_13;
        }

        v15 = v14;
        v16 = [v9 decodeObjectOfClasses:v14 forKey:@"setting.value"];
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

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setting.lastmodifieddate"];
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