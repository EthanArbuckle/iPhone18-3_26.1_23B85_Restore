@interface CRKSetUserImageRequest
- (CRKSetUserImageRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKSetUserImageRequest

- (CRKSetUserImageRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CRKSetUserImageRequest;
  v5 = [(CATTaskRequest *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"userIdentifier"];
    userIdentifier = v5->_userIdentifier;
    v5->_userIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"userImageData"];
    userImageData = v5->_userImageData;
    v5->_userImageData = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"courseIdentifier"];
    courseIdentifier = v5->_courseIdentifier;
    v5->_courseIdentifier = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CRKSetUserImageRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v8 encodeWithCoder:coderCopy];
  v5 = [(CRKSetUserImageRequest *)self userIdentifier:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"userIdentifier"];

  userImageData = [(CRKSetUserImageRequest *)self userImageData];
  [coderCopy encodeObject:userImageData forKey:@"userImageData"];

  courseIdentifier = [(CRKSetUserImageRequest *)self courseIdentifier];
  [coderCopy encodeObject:courseIdentifier forKey:@"courseIdentifier"];
}

@end