@interface DMFSetVolumeRequest
- (DMFSetVolumeRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFSetVolumeRequest

- (DMFSetVolumeRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DMFSetVolumeRequest;
  v5 = [(CATTaskRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"volume"];
    [v6 doubleValue];
    *&v7 = v7;
    *(&v5->super.super._handlesNotifications + 1) = LODWORD(v7);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DMFSetVolumeRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = MEMORY[0x1E696AD98];
  [(DMFSetVolumeRequest *)self volume:v7.receiver];
  v6 = [v5 numberWithFloat:?];
  [v4 encodeObject:v6 forKey:@"volume"];
}

@end