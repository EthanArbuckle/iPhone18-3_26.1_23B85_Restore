@interface ECHeaderAuthenticationResultStatement
- (ECHeaderAuthenticationResultStatement)initWithMethod:(id)a3 result:(id)a4 reason:(id)a5 properties:(id)a6;
- (id)_valueForPropertyPassingTest:(id)a3;
- (id)valueForFullProperty:(id)a3;
- (id)valueForPropertyType:(id)a3 property:(id)a4;
@end

@implementation ECHeaderAuthenticationResultStatement

- (ECHeaderAuthenticationResultStatement)initWithMethod:(id)a3 result:(id)a4 reason:(id)a5 properties:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ECHeaderAuthenticationResultStatement;
  v15 = [(ECHeaderAuthenticationResultStatement *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_method, a3);
    objc_storeStrong(&v16->_result, a4);
    objc_storeStrong(&v16->_reason, a5);
    objc_storeStrong(&v16->_properties, a6);
  }

  return v16;
}

- (id)valueForFullProperty:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__ECHeaderAuthenticationResultStatement_valueForFullProperty___block_invoke;
  v8[3] = &unk_27874BAE0;
  v9 = v4;
  v5 = v4;
  v6 = [(ECHeaderAuthenticationResultStatement *)self _valueForPropertyPassingTest:v8];

  return v6;
}

uint64_t __62__ECHeaderAuthenticationResultStatement_valueForFullProperty___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 fullProperty];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)valueForPropertyType:(id)a3 property:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__ECHeaderAuthenticationResultStatement_valueForPropertyType_property___block_invoke;
  v12[3] = &unk_27874BB08;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
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

- (id)_valueForPropertyPassingTest:(id)a3
{
  v4 = a3;
  v5 = [(ECHeaderAuthenticationResultStatement *)self properties];
  v6 = [v5 ef_firstObjectPassingTest:v4];

  v7 = [v6 value];

  return v7;
}

@end