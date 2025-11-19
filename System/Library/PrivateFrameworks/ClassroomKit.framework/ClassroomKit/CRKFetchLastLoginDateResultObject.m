@interface CRKFetchLastLoginDateResultObject
- (CRKFetchLastLoginDateResultObject)initWithCoder:(id)a3;
- (CRKFetchLastLoginDateResultObject)initWithDatesByAppleID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchLastLoginDateResultObject

- (CRKFetchLastLoginDateResultObject)initWithDatesByAppleID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKFetchLastLoginDateResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    lastLoginDatesByAppleID = v5->_lastLoginDatesByAppleID;
    v5->_lastLoginDatesByAppleID = v6;
  }

  return v5;
}

- (CRKFetchLastLoginDateResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CRKFetchLastLoginDateResultObject;
  v5 = [(CATTaskResultObject *)&v21 initWithCoder:v4];
  if (v5)
  {
    v20 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v18 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v20 setWithObjects:{v19, v18, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"lastLoginDatesByAppleID"];
    lastLoginDatesByAppleID = v5->_lastLoginDatesByAppleID;
    v5->_lastLoginDatesByAppleID = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRKFetchLastLoginDateResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [(CRKFetchLastLoginDateResultObject *)self lastLoginDatesByAppleID:v6.receiver];
  [v4 encodeObject:v5 forKey:@"lastLoginDatesByAppleID"];
}

@end