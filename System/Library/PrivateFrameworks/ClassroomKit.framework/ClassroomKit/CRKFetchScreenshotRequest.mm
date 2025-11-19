@interface CRKFetchScreenshotRequest
- (CRKFetchScreenshotRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchScreenshotRequest

- (CRKFetchScreenshotRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKFetchScreenshotRequest;
  v5 = [(CATTaskRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxWidth"];
    v5->_maxWidth = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxHeight"];
    v5->_maxHeight = [v7 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRKFetchScreenshotRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKFetchScreenshotRequest maxWidth](self, "maxWidth", v7.receiver, v7.super_class)}];
  [v4 encodeObject:v5 forKey:@"maxWidth"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKFetchScreenshotRequest maxHeight](self, "maxHeight")}];
  [v4 encodeObject:v6 forKey:@"maxHeight"];
}

@end