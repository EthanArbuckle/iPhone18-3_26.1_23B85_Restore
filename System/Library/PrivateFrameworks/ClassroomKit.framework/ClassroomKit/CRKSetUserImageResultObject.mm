@interface CRKSetUserImageResultObject
- (CRKSetUserImageResultObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKSetUserImageResultObject

- (CRKSetUserImageResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CRKSetUserImageResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"imageIdentifier"];
    imageIdentifier = v5->_imageIdentifier;
    v5->_imageIdentifier = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRKSetUserImageResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [(CRKSetUserImageResultObject *)self imageIdentifier:v6.receiver];
  [v4 encodeObject:v5 forKey:@"imageIdentifier"];
}

@end