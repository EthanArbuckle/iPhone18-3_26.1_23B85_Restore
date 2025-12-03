@interface DMFFetchScreenshotResultObject
- (DMFFetchScreenshotResultObject)initWithCoder:(id)coder;
- (DMFFetchScreenshotResultObject)initWithData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchScreenshotResultObject

- (DMFFetchScreenshotResultObject)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = DMFFetchScreenshotResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [dataCopy copy];
    screenshotData = v5->_screenshotData;
    v5->_screenshotData = v6;
  }

  return v5;
}

- (DMFFetchScreenshotResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = DMFFetchScreenshotResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"screenshotData"];
    screenshotData = v5->_screenshotData;
    v5->_screenshotData = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFFetchScreenshotResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchScreenshotResultObject *)self screenshotData:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"screenshotData"];
}

@end