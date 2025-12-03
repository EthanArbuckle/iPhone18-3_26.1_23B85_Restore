@interface DMFFetchScreenshotRequest
- (DMFFetchScreenshotRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchScreenshotRequest

- (DMFFetchScreenshotRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DMFFetchScreenshotRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxWidth"];
    v5->_maxWidth = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxHeight"];
    v5->_maxHeight = [v7 unsignedIntegerValue];

    v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"sessionToken"];
    sessionToken = v5->_sessionToken;
    v5->_sessionToken = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"usesPixels"];
    v5->_usesPixels = [v11 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = DMFFetchScreenshotRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v9 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFFetchScreenshotRequest maxWidth](self, "maxWidth", v9.receiver, v9.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"maxWidth"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFFetchScreenshotRequest maxHeight](self, "maxHeight")}];
  [coderCopy encodeObject:v6 forKey:@"maxHeight"];

  sessionToken = [(DMFFetchScreenshotRequest *)self sessionToken];
  [coderCopy encodeObject:sessionToken forKey:@"sessionToken"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchScreenshotRequest usesPixels](self, "usesPixels")}];
  [coderCopy encodeObject:v8 forKey:@"usesPixels"];
}

@end