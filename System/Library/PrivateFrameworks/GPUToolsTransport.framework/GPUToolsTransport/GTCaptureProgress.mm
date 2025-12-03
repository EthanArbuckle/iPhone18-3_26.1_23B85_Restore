@interface GTCaptureProgress
- (GTCaptureProgress)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTCaptureProgress

- (GTCaptureProgress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = GTCaptureProgress;
  v5 = [(GTCaptureProgress *)&v15 init];
  if (v5)
  {
    v5->_captureState = [coderCopy decodeInt64ForKey:@"captureState"];
    v5->_capturedCommandsBuffers = [coderCopy decodeInt64ForKey:@"capturedCommandsBuffers"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
    descriptor = v5->_descriptor;
    v5->_descriptor = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stats"];
    stats = v5->_stats;
    v5->_stats = v8;

    v10 = objc_opt_new();
    completionState = v5->_completionState;
    v5->_completionState = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"completionState.archiveURL"];
    [(GTCaptureCompletionState *)v5->_completionState setArchiveURL:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"completionState.error"];
    [(GTCaptureCompletionState *)v5->_completionState setError:v13];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  captureState = self->_captureState;
  coderCopy = coder;
  [coderCopy encodeInt64:captureState forKey:@"captureState"];
  [coderCopy encodeInt64:self->_capturedCommandsBuffers forKey:@"capturedCommandsBuffers"];
  [coderCopy encodeObject:self->_descriptor forKey:@"descriptor"];
  [coderCopy encodeObject:self->_stats forKey:@"stats"];
  archiveURL = [(GTCaptureCompletionState *)self->_completionState archiveURL];
  [coderCopy encodeObject:archiveURL forKey:@"completionState.archiveURL"];

  error = [(GTCaptureCompletionState *)self->_completionState error];
  [coderCopy encodeObject:error forKey:@"completionState.error"];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v6.receiver = self;
  v6.super_class = GTCaptureProgress;
  v3 = [(GTCaptureProgress *)&v6 description];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

@end