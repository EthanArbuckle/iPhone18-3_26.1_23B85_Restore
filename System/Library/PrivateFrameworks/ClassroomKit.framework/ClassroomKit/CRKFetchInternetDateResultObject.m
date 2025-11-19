@interface CRKFetchInternetDateResultObject
- (CRKFetchInternetDateResultObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchInternetDateResultObject

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRKFetchInternetDateResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [(CRKFetchInternetDateResultObject *)self date:v6.receiver];
  [v4 encodeObject:v5 forKey:@"date"];
}

- (CRKFetchInternetDateResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CRKFetchInternetDateResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"date"];
    date = v5->_date;
    v5->_date = v7;
  }

  return v5;
}

@end