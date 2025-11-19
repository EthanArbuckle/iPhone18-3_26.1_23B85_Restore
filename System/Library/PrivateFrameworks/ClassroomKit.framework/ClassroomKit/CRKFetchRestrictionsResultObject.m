@interface CRKFetchRestrictionsResultObject
- (CRKFetchRestrictionsResultObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchRestrictionsResultObject

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRKFetchRestrictionsResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [(CRKFetchRestrictionsResultObject *)self valuesByRestriction:v6.receiver];
  [v4 encodeObject:v5 forKey:@"valuesByRestriction"];
}

- (CRKFetchRestrictionsResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CRKFetchRestrictionsResultObject;
  v5 = [(CATTaskResultObject *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"valuesByRestriction"];
    valuesByRestriction = v5->_valuesByRestriction;
    v5->_valuesByRestriction = v10;
  }

  return v5;
}

@end