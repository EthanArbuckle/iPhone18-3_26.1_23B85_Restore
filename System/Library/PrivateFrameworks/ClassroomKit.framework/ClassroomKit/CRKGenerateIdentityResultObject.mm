@interface CRKGenerateIdentityResultObject
- (CRKGenerateIdentityResultObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKGenerateIdentityResultObject

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRKGenerateIdentityResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v7 encodeWithCoder:v4];
  v5 = [(CRKGenerateIdentityResultObject *)self certificateData:v7.receiver];
  [v4 encodeObject:v5 forKey:@"certificateData"];

  v6 = [(CRKGenerateIdentityResultObject *)self privateKeyData];
  [v4 encodeObject:v6 forKey:@"privateKeyData"];
}

- (CRKGenerateIdentityResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CRKGenerateIdentityResultObject;
  v5 = [(CATTaskResultObject *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"certificateData"];
    certificateData = v5->_certificateData;
    v5->_certificateData = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"privateKeyData"];
    privateKeyData = v5->_privateKeyData;
    v5->_privateKeyData = v10;
  }

  return v5;
}

@end