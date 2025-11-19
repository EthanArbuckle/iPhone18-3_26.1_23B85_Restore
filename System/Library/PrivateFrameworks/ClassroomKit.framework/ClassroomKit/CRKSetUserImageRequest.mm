@interface CRKSetUserImageRequest
- (CRKSetUserImageRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKSetUserImageRequest

- (CRKSetUserImageRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CRKSetUserImageRequest;
  v5 = [(CATTaskRequest *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"userIdentifier"];
    userIdentifier = v5->_userIdentifier;
    v5->_userIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"userImageData"];
    userImageData = v5->_userImageData;
    v5->_userImageData = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"courseIdentifier"];
    courseIdentifier = v5->_courseIdentifier;
    v5->_courseIdentifier = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CRKSetUserImageRequest;
  v4 = a3;
  [(CATTaskRequest *)&v8 encodeWithCoder:v4];
  v5 = [(CRKSetUserImageRequest *)self userIdentifier:v8.receiver];
  [v4 encodeObject:v5 forKey:@"userIdentifier"];

  v6 = [(CRKSetUserImageRequest *)self userImageData];
  [v4 encodeObject:v6 forKey:@"userImageData"];

  v7 = [(CRKSetUserImageRequest *)self courseIdentifier];
  [v4 encodeObject:v7 forKey:@"courseIdentifier"];
}

@end