@interface CRKRemoteConnectionRequest
- (CRKRemoteConnectionRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKRemoteConnectionRequest

- (CRKRemoteConnectionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CRKRemoteConnectionRequest;
  v5 = [(CATTaskRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notificationDuration"];
    [v6 doubleValue];
    v5->_notificationDuration = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CRKRemoteConnectionRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = MEMORY[0x277CCABB0];
  [(CRKRemoteConnectionRequest *)self notificationDuration:v7.receiver];
  v6 = [v5 numberWithDouble:?];
  [coderCopy encodeObject:v6 forKey:@"notificationDuration"];
}

@end