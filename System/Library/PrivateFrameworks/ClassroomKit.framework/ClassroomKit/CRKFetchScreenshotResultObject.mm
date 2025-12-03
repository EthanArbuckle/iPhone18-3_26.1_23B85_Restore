@interface CRKFetchScreenshotResultObject
- (CRKFetchScreenshotResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchScreenshotResultObject

- (CRKFetchScreenshotResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CRKFetchScreenshotResultObject;
  v5 = [(CATTaskResultObject *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"screenshotData"];
    screenshotData = v5->_screenshotData;
    v5->_screenshotData = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"studentIdentifier"];
    studentIdentifier = v5->_studentIdentifier;
    v5->_studentIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CRKFetchScreenshotResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CRKFetchScreenshotResultObject *)self screenshotData:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"screenshotData"];

  studentIdentifier = [(CRKFetchScreenshotResultObject *)self studentIdentifier];
  [coderCopy encodeObject:studentIdentifier forKey:@"studentIdentifier"];
}

@end