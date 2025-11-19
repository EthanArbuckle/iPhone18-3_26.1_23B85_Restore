@interface DIAttributePickerItem
- (DIAttributePickerItem)initWithCoder:(id)a3;
- (DIAttributePickerItem)initWithName:(id)a3 value:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DIAttributePickerItem

- (void)encodeWithCoder:(id)a3
{
  localizedDisplayName = self->_localizedDisplayName;
  v5 = a3;
  [v5 encodeObject:localizedDisplayName forKey:@"localizedDisplayName"];
  [v5 encodeObject:self->_value forKey:@"value"];
}

- (DIAttributePickerItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDisplayName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];

  v7 = [(DIAttributePickerItem *)self initWithName:v5 value:v6];
  return v7;
}

- (DIAttributePickerItem)initWithName:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length] && objc_msgSend(v7, "length"))
  {
    v14.receiver = self;
    v14.super_class = DIAttributePickerItem;
    v8 = [(DIAttributePickerItem *)&v14 init];
    if (v8)
    {
      v9 = [v6 copy];
      localizedDisplayName = v8->_localizedDisplayName;
      v8->_localizedDisplayName = v9;

      v11 = [v7 copy];
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
  v4 = [(DIAttributePickerItem *)self localizedDisplayName];
  [v3 appendFormat:@"localizedDisplayName: '%@'; ", v4];

  v5 = [(DIAttributePickerItem *)self value];
  [v3 appendFormat:@"value: '%@'; ", v5];

  [v3 appendFormat:@">"];

  return v3;
}

@end