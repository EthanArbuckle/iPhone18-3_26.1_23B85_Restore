@interface CRKRemoteConnectionRequest
- (CRKRemoteConnectionRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKRemoteConnectionRequest

- (CRKRemoteConnectionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKRemoteConnectionRequest;
  v5 = [(CATTaskRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notificationDuration"];
    [v6 doubleValue];
    v5->_notificationDuration = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRKRemoteConnectionRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = MEMORY[0x277CCABB0];
  [(CRKRemoteConnectionRequest *)self notificationDuration:v7.receiver];
  v6 = [v5 numberWithDouble:?];
  [v4 encodeObject:v6 forKey:@"notificationDuration"];
}

@end