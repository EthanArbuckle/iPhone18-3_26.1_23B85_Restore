@interface DMFSetVolumeRequest
- (DMFSetVolumeRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFSetVolumeRequest

- (DMFSetVolumeRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = DMFSetVolumeRequest;
  v5 = [(CATTaskRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"volume"];
    [v6 doubleValue];
    *&v7 = v7;
    *(&v5->super.super._handlesNotifications + 1) = LODWORD(v7);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DMFSetVolumeRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = MEMORY[0x1E696AD98];
  [(DMFSetVolumeRequest *)self volume:v7.receiver];
  v6 = [v5 numberWithFloat:?];
  [coderCopy encodeObject:v6 forKey:@"volume"];
}

@end