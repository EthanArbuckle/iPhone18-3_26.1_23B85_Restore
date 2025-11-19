@interface ECHeaderAuthenticationResultProperty
- (ECHeaderAuthenticationResultProperty)initWithPropertyType:(id)a3 property:(id)a4 value:(id)a5;
@end

@implementation ECHeaderAuthenticationResultProperty

- (ECHeaderAuthenticationResultProperty)initWithPropertyType:(id)a3 property:(id)a4 value:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = ECHeaderAuthenticationResultProperty;
  v12 = [(ECHeaderAuthenticationResultProperty *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_propertyType, a3);
    objc_storeStrong(&v13->_property, a4);
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%@", v9, v10];
    fullProperty = v13->_fullProperty;
    v13->_fullProperty = v14;

    objc_storeStrong(&v13->_value, a5);
  }

  return v13;
}

@end