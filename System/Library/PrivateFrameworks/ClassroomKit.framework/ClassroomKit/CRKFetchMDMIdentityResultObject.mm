@interface CRKFetchMDMIdentityResultObject
- (CRKFetchMDMIdentityResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchMDMIdentityResultObject

- (CRKFetchMDMIdentityResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CRKFetchMDMIdentityResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"mdmIdentityCommonName"];
    mdmIdentityCommonName = v5->_mdmIdentityCommonName;
    v5->_mdmIdentityCommonName = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKFetchMDMIdentityResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CRKFetchMDMIdentityResultObject *)self mdmIdentityCommonName:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"mdmIdentityCommonName"];
}

@end