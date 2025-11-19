@interface FCCPauseRingsPostNotificationRequest
- (FCCPauseRingsPostNotificationRequest)initWithForce:(BOOL)a3;
- (FCCPauseRingsPostNotificationRequest)initWithTransportData:(id)a3;
- (id)transportData;
@end

@implementation FCCPauseRingsPostNotificationRequest

- (FCCPauseRingsPostNotificationRequest)initWithForce:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = FCCPauseRingsPostNotificationRequest;
  result = [(FCCPauseRingsPostNotificationRequest *)&v5 init];
  if (result)
  {
    result->_force = a3;
  }

  return result;
}

- (FCCPauseRingsPostNotificationRequest)initWithTransportData:(id)a3
{
  v4 = a3;
  v5 = [[FCCPauseRingsPostNotificationRequestProtobuf alloc] initWithData:v4];

  if ([(FCCPauseRingsPostNotificationRequestProtobuf *)v5 hasForce])
  {
    v6 = [(FCCPauseRingsPostNotificationRequestProtobuf *)v5 force];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(FCCPauseRingsPostNotificationRequest *)self initWithForce:v6];

  return v7;
}

- (id)transportData
{
  v3 = objc_alloc_init(FCCPauseRingsPostNotificationRequestProtobuf);
  [(FCCPauseRingsPostNotificationRequestProtobuf *)v3 setForce:self->_force];
  v4 = [(FCCPauseRingsPostNotificationRequestProtobuf *)v3 data];

  return v4;
}

@end