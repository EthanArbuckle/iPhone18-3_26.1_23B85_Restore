@interface CRKFeaturePermissionResultObject
- (CRKFeaturePermissionResultObject)initWithCoder:(id)a3;
- (NSDictionary)dictionaryValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFeaturePermissionResultObject

- (CRKFeaturePermissionResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKFeaturePermissionResultObject;
  v5 = [(CRKFeaturePermissionResultObject *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"permission"];
    v5->_permission = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modifiable"];
    v5->_modifiable = [v7 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[CRKFeaturePermissionResultObject permission](self, "permission")}];
  [v5 encodeObject:v6 forKey:@"permission"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKFeaturePermissionResultObject isModifiable](self, "isModifiable")}];
  [v5 encodeObject:v7 forKey:@"modifiable"];
}

- (NSDictionary)dictionaryValue
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"value";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKFeaturePermissionResultObject permission](self, "permission")}];
  v7[1] = @"modifiable";
  v8[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKFeaturePermissionResultObject isModifiable](self, "isModifiable")}];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

@end