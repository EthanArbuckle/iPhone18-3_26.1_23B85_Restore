@interface CRKFetchUserImageRequest
- (CRKFetchUserImageRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchUserImageRequest

- (CRKFetchUserImageRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CRKFetchUserImageRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"courseIdentifier"];
    courseIdentifier = v5->_courseIdentifier;
    v5->_courseIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"userIdentifier"];
    userIdentifier = v5->_userIdentifier;
    v5->_userIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRKFetchUserImageRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = [(CRKFetchUserImageRequest *)self courseIdentifier:v7.receiver];
  [v4 encodeObject:v5 forKey:@"courseIdentifier"];

  v6 = [(CRKFetchUserImageRequest *)self userIdentifier];
  [v4 encodeObject:v6 forKey:@"userIdentifier"];
}

@end