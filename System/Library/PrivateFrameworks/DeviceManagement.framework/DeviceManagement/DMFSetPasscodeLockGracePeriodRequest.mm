@interface DMFSetPasscodeLockGracePeriodRequest
- (DMFSetPasscodeLockGracePeriodRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFSetPasscodeLockGracePeriodRequest

- (DMFSetPasscodeLockGracePeriodRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = DMFSetPasscodeLockGracePeriodRequest;
  v5 = [(CATTaskRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seconds"];
    [v6 doubleValue];
    v5->_seconds = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DMFSetPasscodeLockGracePeriodRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = MEMORY[0x1E696AD98];
  [(DMFSetPasscodeLockGracePeriodRequest *)self seconds:v7.receiver];
  v6 = [v5 numberWithDouble:?];
  [coderCopy encodeObject:v6 forKey:@"seconds"];
}

@end