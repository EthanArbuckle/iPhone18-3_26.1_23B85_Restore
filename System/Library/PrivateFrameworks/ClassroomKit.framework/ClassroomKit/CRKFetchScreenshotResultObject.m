@interface CRKFetchScreenshotResultObject
- (CRKFetchScreenshotResultObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchScreenshotResultObject

- (CRKFetchScreenshotResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CRKFetchScreenshotResultObject;
  v5 = [(CATTaskResultObject *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"screenshotData"];
    screenshotData = v5->_screenshotData;
    v5->_screenshotData = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"studentIdentifier"];
    studentIdentifier = v5->_studentIdentifier;
    v5->_studentIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRKFetchScreenshotResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v7 encodeWithCoder:v4];
  v5 = [(CRKFetchScreenshotResultObject *)self screenshotData:v7.receiver];
  [v4 encodeObject:v5 forKey:@"screenshotData"];

  v6 = [(CRKFetchScreenshotResultObject *)self studentIdentifier];
  [v4 encodeObject:v6 forKey:@"studentIdentifier"];
}

@end