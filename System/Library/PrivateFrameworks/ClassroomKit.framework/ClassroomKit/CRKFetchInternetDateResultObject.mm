@interface CRKFetchInternetDateResultObject
- (CRKFetchInternetDateResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchInternetDateResultObject

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKFetchInternetDateResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CRKFetchInternetDateResultObject *)self date:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"date"];
}

- (CRKFetchInternetDateResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CRKFetchInternetDateResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"date"];
    date = v5->_date;
    v5->_date = v7;
  }

  return v5;
}

@end