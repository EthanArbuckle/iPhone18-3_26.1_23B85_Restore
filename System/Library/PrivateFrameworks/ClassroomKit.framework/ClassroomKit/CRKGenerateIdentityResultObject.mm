@interface CRKGenerateIdentityResultObject
- (CRKGenerateIdentityResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKGenerateIdentityResultObject

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CRKGenerateIdentityResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CRKGenerateIdentityResultObject *)self certificateData:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"certificateData"];

  privateKeyData = [(CRKGenerateIdentityResultObject *)self privateKeyData];
  [coderCopy encodeObject:privateKeyData forKey:@"privateKeyData"];
}

- (CRKGenerateIdentityResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CRKGenerateIdentityResultObject;
  v5 = [(CATTaskResultObject *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"certificateData"];
    certificateData = v5->_certificateData;
    v5->_certificateData = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"privateKeyData"];
    privateKeyData = v5->_privateKeyData;
    v5->_privateKeyData = v10;
  }

  return v5;
}

@end