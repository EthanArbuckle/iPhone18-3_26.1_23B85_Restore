@interface FCCPauseRingsPostNotificationRequest
- (FCCPauseRingsPostNotificationRequest)initWithForce:(BOOL)force;
- (FCCPauseRingsPostNotificationRequest)initWithTransportData:(id)data;
- (id)transportData;
@end

@implementation FCCPauseRingsPostNotificationRequest

- (FCCPauseRingsPostNotificationRequest)initWithForce:(BOOL)force
{
  v5.receiver = self;
  v5.super_class = FCCPauseRingsPostNotificationRequest;
  result = [(FCCPauseRingsPostNotificationRequest *)&v5 init];
  if (result)
  {
    result->_force = force;
  }

  return result;
}

- (FCCPauseRingsPostNotificationRequest)initWithTransportData:(id)data
{
  dataCopy = data;
  v5 = [[FCCPauseRingsPostNotificationRequestProtobuf alloc] initWithData:dataCopy];

  if ([(FCCPauseRingsPostNotificationRequestProtobuf *)v5 hasForce])
  {
    force = [(FCCPauseRingsPostNotificationRequestProtobuf *)v5 force];
  }

  else
  {
    force = 0;
  }

  v7 = [(FCCPauseRingsPostNotificationRequest *)self initWithForce:force];

  return v7;
}

- (id)transportData
{
  v3 = objc_alloc_init(FCCPauseRingsPostNotificationRequestProtobuf);
  [(FCCPauseRingsPostNotificationRequestProtobuf *)v3 setForce:self->_force];
  data = [(FCCPauseRingsPostNotificationRequestProtobuf *)v3 data];

  return data;
}

@end