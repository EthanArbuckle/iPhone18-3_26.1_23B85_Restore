@interface GTCaptureResponse
- (GTCaptureResponse)init;
- (GTCaptureResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTCaptureResponse

- (GTCaptureResponse)init
{
  v6.receiver = self;
  v6.super_class = GTCaptureResponse;
  v2 = [(GTCaptureResponse *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_version.var0.version = 1;
    v4 = v2;
  }

  return v3;
}

- (GTCaptureResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = GTCaptureResponse;
  v5 = [(GTCaptureResponse *)&v12 init];
  if (v5)
  {
    v5->_version.value = [coderCopy decodeInt64ForKey:@"version"];
    v5->_requestID = [coderCopy decodeInt64ForKey:@"requestID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeInt64:version.value forKey:@"version"];
  [coderCopy encodeInt64:self->_requestID forKey:@"requestID"];
  [coderCopy encodeObject:self->_data forKey:@"data"];
  [coderCopy encodeObject:self->_error forKey:@"error"];
}

@end