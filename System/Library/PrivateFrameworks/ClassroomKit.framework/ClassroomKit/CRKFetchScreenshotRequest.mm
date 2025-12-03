@interface CRKFetchScreenshotRequest
- (CRKFetchScreenshotRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchScreenshotRequest

- (CRKFetchScreenshotRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CRKFetchScreenshotRequest;
  v5 = [(CATTaskRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxWidth"];
    v5->_maxWidth = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxHeight"];
    v5->_maxHeight = [v7 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CRKFetchScreenshotRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKFetchScreenshotRequest maxWidth](self, "maxWidth", v7.receiver, v7.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"maxWidth"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKFetchScreenshotRequest maxHeight](self, "maxHeight")}];
  [coderCopy encodeObject:v6 forKey:@"maxHeight"];
}

@end