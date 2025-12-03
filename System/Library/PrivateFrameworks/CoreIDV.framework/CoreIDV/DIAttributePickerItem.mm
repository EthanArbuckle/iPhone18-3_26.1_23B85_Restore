@interface DIAttributePickerItem
- (DIAttributePickerItem)initWithCoder:(id)coder;
- (DIAttributePickerItem)initWithName:(id)name value:(id)value;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DIAttributePickerItem

- (void)encodeWithCoder:(id)coder
{
  localizedDisplayName = self->_localizedDisplayName;
  coderCopy = coder;
  [coderCopy encodeObject:localizedDisplayName forKey:@"localizedDisplayName"];
  [coderCopy encodeObject:self->_value forKey:@"value"];
}

- (DIAttributePickerItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDisplayName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];

  v7 = [(DIAttributePickerItem *)self initWithName:v5 value:v6];
  return v7;
}

- (DIAttributePickerItem)initWithName:(id)name value:(id)value
{
  nameCopy = name;
  valueCopy = value;
  if ([nameCopy length] && objc_msgSend(valueCopy, "length"))
  {
    v14.receiver = self;
    v14.super_class = DIAttributePickerItem;
    v8 = [(DIAttributePickerItem *)&v14 init];
    if (v8)
    {
      v9 = [nameCopy copy];
      localizedDisplayName = v8->_localizedDisplayName;
      v8->_localizedDisplayName = v9;

      v11 = [valueCopy copy];
      value = v8->_value;
      v8->_value = v11;
    }
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  localizedDisplayName = [(DIAttributePickerItem *)self localizedDisplayName];
  [v3 appendFormat:@"localizedDisplayName: '%@'; ", localizedDisplayName];

  value = [(DIAttributePickerItem *)self value];
  [v3 appendFormat:@"value: '%@'; ", value];

  [v3 appendFormat:@">"];

  return v3;
}

@end