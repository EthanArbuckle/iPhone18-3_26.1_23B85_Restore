@interface HMDSettingSelectionItem
- (BOOL)isEqual:(id)equal;
- (HMDSettingSelectionItem)initWithCoder:(id)coder;
- (HMDSettingSelectionItem)initWithTitle:(id)title;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDSettingSelectionItem

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMDSettingSelectionItem *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HM.identifier"];

  title = [(HMDSettingSelectionItem *)self title];
  [coderCopy encodeObject:title forKey:@"HM.title"];
}

- (HMDSettingSelectionItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.title"];
  v6 = [(HMDSettingSelectionItem *)self initWithTitle:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v7;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  title = [(HMDSettingSelectionItem *)self title];
  identifier = [(HMDSettingSelectionItem *)self identifier];
  uUIDString = [identifier UUIDString];
  v7 = [v3 stringWithFormat:@"%@ (%@)", title, uUIDString];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
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
      title = [(HMDSettingSelectionItem *)self title];
      title2 = [(HMDSettingSelectionItem *)v6 title];
      v9 = [title isEqual:title2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  title = [(HMDSettingSelectionItem *)self title];
  v3 = [title hash];

  return v3;
}

- (HMDSettingSelectionItem)initWithTitle:(id)title
{
  titleCopy = title;
  if (titleCopy)
  {
    v12.receiver = self;
    v12.super_class = HMDSettingSelectionItem;
    v5 = [(HMDSettingSelectionItem *)&v12 init];
    if (v5)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      identifier = v5->_identifier;
      v5->_identifier = uUID;

      v8 = [titleCopy copy];
      title = v5->_title;
      v5->_title = v8;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end