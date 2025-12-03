@interface CRKGenerateIdentityRequest
- (CRKGenerateIdentityRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKGenerateIdentityRequest

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKGenerateIdentityRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CRKGenerateIdentityRequest *)self commonName:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"commonName"];
}

- (CRKGenerateIdentityRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CRKGenerateIdentityRequest;
  v5 = [(CATTaskRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"commonName"];
    commonName = v5->_commonName;
    v5->_commonName = v7;
  }

  return v5;
}

@end