@interface ECHeaderAuthenticationResultProperty
- (ECHeaderAuthenticationResultProperty)initWithPropertyType:(id)type property:(id)property value:(id)value;
@end

@implementation ECHeaderAuthenticationResultProperty

- (ECHeaderAuthenticationResultProperty)initWithPropertyType:(id)type property:(id)property value:(id)value
{
  typeCopy = type;
  propertyCopy = property;
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = ECHeaderAuthenticationResultProperty;
  v12 = [(ECHeaderAuthenticationResultProperty *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_propertyType, type);
    objc_storeStrong(&v13->_property, property);
    propertyCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%@", typeCopy, propertyCopy];
    fullProperty = v13->_fullProperty;
    v13->_fullProperty = propertyCopy;

    objc_storeStrong(&v13->_value, value);
  }

  return v13;
}

@end