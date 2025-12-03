@interface CRKDumpASMCredentialsResultObject
- (CRKDumpASMCredentialsResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKDumpASMCredentialsResultObject

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKDumpASMCredentialsResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CRKDumpASMCredentialsResultObject *)self credentials:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"credentials"];
}

- (CRKDumpASMCredentialsResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = CRKDumpASMCredentialsResultObject;
  v5 = [(CATTaskResultObject *)&v21 initWithCoder:coderCopy];
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
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"credentials"];
    credentials = v5->_credentials;
    v5->_credentials = v15;
  }

  return v5;
}

@end