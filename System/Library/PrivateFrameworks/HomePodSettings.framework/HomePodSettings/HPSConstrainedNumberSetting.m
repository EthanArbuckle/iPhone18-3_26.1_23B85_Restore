@interface HPSConstrainedNumberSetting
- (HPSConstrainedNumberSetting)initWithCoder:(id)a3;
- (HPSConstrainedNumberSetting)initWithKeyPath:(id)a3 numberValue:(id)a4 minimumValue:(id)a5 maximumValue:(id)a6 stepValue:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HPSConstrainedNumberSetting

- (HPSConstrainedNumberSetting)initWithKeyPath:(id)a3 numberValue:(id)a4 minimumValue:(id)a5 maximumValue:(id)a6 stepValue:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(HPSNumberSetting *)self initWithKeyPath:a3 numberValue:a4];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_minimumValue, a5);
    objc_storeStrong(&v17->_maximumValue, a6);
    objc_storeStrong(&v17->_stepValue, a7);
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HPSConstrainedNumberSetting;
  [(HPSSetting *)&v8 encodeWithCoder:v4];
  v5 = [(HPSConstrainedNumberSetting *)self minimumValue];
  if (v5)
  {
    [v4 encodeObject:v5 forKey:@"setting.minimum"];
  }

  v6 = [(HPSConstrainedNumberSetting *)self maximumValue];

  if (v6)
  {
    [v4 encodeObject:v6 forKey:@"setting.maximum"];
  }

  v7 = [(HPSConstrainedNumberSetting *)self stepValue];

  if (v7)
  {
    [v4 encodeObject:v7 forKey:@"setting.step"];
  }
}

- (HPSConstrainedNumberSetting)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HPSConstrainedNumberSetting;
  v5 = [(HPSSetting *)&v15 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = objc_opt_class();
  if ([v4 containsValueForKey:@"setting.minimum"])
  {
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"setting.minimum"];
    minimumValue = v5->_minimumValue;
    v5->_minimumValue = v7;

    if (!v5->_minimumValue)
    {
      goto LABEL_9;
    }
  }

  if ([v4 containsValueForKey:@"setting.maximum"])
  {
    v9 = [v4 decodeObjectOfClass:v6 forKey:@"setting.maximum"];
    maximumValue = v5->_maximumValue;
    v5->_maximumValue = v9;

    if (!v5->_maximumValue)
    {
      goto LABEL_9;
    }
  }

  if ([v4 containsValueForKey:@"setting.step"] && (objc_msgSend(v4, "decodeObjectOfClass:forKey:", v6, @"setting.step"), v11 = objc_claimAutoreleasedReturnValue(), stepValue = v5->_stepValue, v5->_stepValue = v11, stepValue, !v5->_stepValue))
  {
LABEL_9:
    v13 = 0;
  }

  else
  {
LABEL_8:
    v13 = v5;
  }

  return v13;
}

@end