@interface DMFFetchScreenshotRequest
- (DMFFetchScreenshotRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchScreenshotRequest

- (DMFFetchScreenshotRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DMFFetchScreenshotRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxWidth"];
    v5->_maxWidth = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxHeight"];
    v5->_maxHeight = [v7 unsignedIntegerValue];

    v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"sessionToken"];
    sessionToken = v5->_sessionToken;
    v5->_sessionToken = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"usesPixels"];
    v5->_usesPixels = [v11 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = DMFFetchScreenshotRequest;
  v4 = a3;
  [(CATTaskRequest *)&v9 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFFetchScreenshotRequest maxWidth](self, "maxWidth", v9.receiver, v9.super_class)}];
  [v4 encodeObject:v5 forKey:@"maxWidth"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFFetchScreenshotRequest maxHeight](self, "maxHeight")}];
  [v4 encodeObject:v6 forKey:@"maxHeight"];

  v7 = [(DMFFetchScreenshotRequest *)self sessionToken];
  [v4 encodeObject:v7 forKey:@"sessionToken"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchScreenshotRequest usesPixels](self, "usesPixels")}];
  [v4 encodeObject:v8 forKey:@"usesPixels"];
}

@end