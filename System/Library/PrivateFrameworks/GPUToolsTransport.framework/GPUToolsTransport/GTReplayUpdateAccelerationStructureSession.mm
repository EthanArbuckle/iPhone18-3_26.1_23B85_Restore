@interface GTReplayUpdateAccelerationStructureSession
- (GTReplayUpdateAccelerationStructureSession)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayUpdateAccelerationStructureSession

- (GTReplayUpdateAccelerationStructureSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = GTReplayUpdateAccelerationStructureSession;
  v5 = [(GTReplayRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_sessionsID = [coderCopy decodeInt64ForKey:@"sessionsID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTReplayUpdateAccelerationStructureSession;
  coderCopy = coder;
  [(GTReplayRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_sessionsID forKey:{@"sessionsID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_data forKey:@"data"];
}

@end