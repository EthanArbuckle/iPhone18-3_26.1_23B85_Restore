@interface GTReplayUpdateAccelerationStructureSession
- (GTReplayUpdateAccelerationStructureSession)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplayUpdateAccelerationStructureSession

- (GTReplayUpdateAccelerationStructureSession)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GTReplayUpdateAccelerationStructureSession;
  v5 = [(GTReplayRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v5->_sessionsID = [v4 decodeInt64ForKey:@"sessionsID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTReplayUpdateAccelerationStructureSession;
  v4 = a3;
  [(GTReplayRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_sessionsID forKey:{@"sessionsID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_data forKey:@"data"];
}

@end