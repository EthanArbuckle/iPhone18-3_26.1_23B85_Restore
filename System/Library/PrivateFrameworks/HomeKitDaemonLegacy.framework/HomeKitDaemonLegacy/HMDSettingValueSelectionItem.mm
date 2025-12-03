@interface HMDSettingValueSelectionItem
- (BOOL)isEqual:(id)equal;
- (HMDSettingValueSelectionItem)initWithIdentifier:(id)identifier selection:(id)selection;
- (unint64_t)hash;
@end

@implementation HMDSettingValueSelectionItem

- (unint64_t)hash
{
  identifier = [(HMDSettingValueSelectionItem *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      identifier = [(HMDSettingValueSelectionItem *)self identifier];
      identifier2 = [(HMDSettingValueSelectionItem *)v6 identifier];
      if ([identifier isEqual:identifier2])
      {
        selection = [(HMDSettingValueSelectionItem *)self selection];
        selection2 = [(HMDSettingValueSelectionItem *)v6 selection];
        v11 = [selection isEqualToString:selection2];
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

- (HMDSettingValueSelectionItem)initWithIdentifier:(id)identifier selection:(id)selection
{
  identifierCopy = identifier;
  selectionCopy = selection;
  v12.receiver = self;
  v12.super_class = HMDSettingValueSelectionItem;
  v9 = [(HMDSettingValueSelectionItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_selection, selection);
  }

  return v10;
}

@end