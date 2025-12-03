@interface CRKSetVolumeRequest
- (CRKSetVolumeRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKSetVolumeRequest

- (CRKSetVolumeRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CRKSetVolumeRequest;
  v5 = [(CATTaskRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"volume"];
    [v6 doubleValue];
    v5->_volume = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CRKSetVolumeRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = MEMORY[0x277CCABB0];
  [(CRKSetVolumeRequest *)self volume:v7.receiver];
  v6 = [v5 numberWithDouble:?];
  [coderCopy encodeObject:v6 forKey:@"volume"];
}

@end