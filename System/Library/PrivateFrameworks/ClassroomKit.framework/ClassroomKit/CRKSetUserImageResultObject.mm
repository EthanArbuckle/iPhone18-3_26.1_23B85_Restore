@interface CRKSetUserImageResultObject
- (CRKSetUserImageResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKSetUserImageResultObject

- (CRKSetUserImageResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CRKSetUserImageResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"imageIdentifier"];
    imageIdentifier = v5->_imageIdentifier;
    v5->_imageIdentifier = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKSetUserImageResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CRKSetUserImageResultObject *)self imageIdentifier:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"imageIdentifier"];
}

@end