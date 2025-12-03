@interface CRKFetchUserImageResultObject
- (CRKFetchUserImageResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchUserImageResultObject

- (CRKFetchUserImageResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CRKFetchUserImageResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"userImageData"];
    userImageData = v5->_userImageData;
    v5->_userImageData = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKFetchUserImageResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CRKFetchUserImageResultObject *)self userImageData:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"userImageData"];
}

@end