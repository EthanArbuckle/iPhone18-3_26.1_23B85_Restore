@interface HMDSettingValueSelectionItem
- (BOOL)isEqual:(id)a3;
- (HMDSettingValueSelectionItem)initWithIdentifier:(id)a3 selection:(id)a4;
- (unint64_t)hash;
@end

@implementation HMDSettingValueSelectionItem

- (unint64_t)hash
{
  v2 = [(HMDSettingValueSelectionItem *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMDSettingValueSelectionItem *)self identifier];
      v8 = [(HMDSettingValueSelectionItem *)v6 identifier];
      if ([v7 isEqual:v8])
      {
        v9 = [(HMDSettingValueSelectionItem *)self selection];
        v10 = [(HMDSettingValueSelectionItem *)v6 selection];
        v11 = [v9 isEqualToString:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (HMDSettingValueSelectionItem)initWithIdentifier:(id)a3 selection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDSettingValueSelectionItem;
  v9 = [(HMDSettingValueSelectionItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_selection, a4);
  }

  return v10;
}

@end