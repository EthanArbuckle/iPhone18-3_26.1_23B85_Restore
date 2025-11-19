@interface DMFFetchScreenshotResultObject
- (DMFFetchScreenshotResultObject)initWithCoder:(id)a3;
- (DMFFetchScreenshotResultObject)initWithData:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchScreenshotResultObject

- (DMFFetchScreenshotResultObject)initWithData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DMFFetchScreenshotResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    screenshotData = v5->_screenshotData;
    v5->_screenshotData = v6;
  }

  return v5;
}

- (DMFFetchScreenshotResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DMFFetchScreenshotResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"screenshotData"];
    screenshotData = v5->_screenshotData;
    v5->_screenshotData = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMFFetchScreenshotResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [(DMFFetchScreenshotResultObject *)self screenshotData:v6.receiver];
  [v4 encodeObject:v5 forKey:@"screenshotData"];
}

@end