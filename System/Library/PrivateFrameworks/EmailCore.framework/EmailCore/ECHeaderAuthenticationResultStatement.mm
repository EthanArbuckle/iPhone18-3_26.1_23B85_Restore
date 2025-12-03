@interface ECHeaderAuthenticationResultStatement
- (ECHeaderAuthenticationResultStatement)initWithMethod:(id)method result:(id)result reason:(id)reason properties:(id)properties;
- (id)_valueForPropertyPassingTest:(id)test;
- (id)valueForFullProperty:(id)property;
- (id)valueForPropertyType:(id)type property:(id)property;
@end

@implementation ECHeaderAuthenticationResultStatement

- (ECHeaderAuthenticationResultStatement)initWithMethod:(id)method result:(id)result reason:(id)reason properties:(id)properties
{
  methodCopy = method;
  resultCopy = result;
  reasonCopy = reason;
  propertiesCopy = properties;
  v18.receiver = self;
  v18.super_class = ECHeaderAuthenticationResultStatement;
  v15 = [(ECHeaderAuthenticationResultStatement *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_method, method);
    objc_storeStrong(&v16->_result, result);
    objc_storeStrong(&v16->_reason, reason);
    objc_storeStrong(&v16->_properties, properties);
  }

  return v16;
}

- (id)valueForFullProperty:(id)property
{
  propertyCopy = property;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__ECHeaderAuthenticationResultStatement_valueForFullProperty___block_invoke;
  v8[3] = &unk_27874BAE0;
  v9 = propertyCopy;
  v5 = propertyCopy;
  v6 = [(ECHeaderAuthenticationResultStatement *)self _valueForPropertyPassingTest:v8];

  return v6;
}

uint64_t __62__ECHeaderAuthenticationResultStatement_valueForFullProperty___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 fullProperty];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)valueForPropertyType:(id)type property:(id)property
{
  typeCopy = type;
  propertyCopy = property;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__ECHeaderAuthenticationResultStatement_valueForPropertyType_property___block_invoke;
  v12[3] = &unk_27874BB08;
  v13 = typeCopy;
  v14 = propertyCopy;
  v8 = propertyCopy;
  v9 = typeCopy;
  v10 = [(ECHeaderAuthenticationResultStatement *)self _valueForPropertyPassingTest:v12];

  return v10;
}

uint64_t __71__ECHeaderAuthenticationResultStatement_valueForPropertyType_property___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 propertyType];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 property];
    v6 = [v5 isEqualToString:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_valueForPropertyPassingTest:(id)test
{
  testCopy = test;
  properties = [(ECHeaderAuthenticationResultStatement *)self properties];
  v6 = [properties ef_firstObjectPassingTest:testCopy];

  value = [v6 value];

  return value;
}

@end