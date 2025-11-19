@interface GTCaptureProgress
- (GTCaptureProgress)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTCaptureProgress

- (GTCaptureProgress)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = GTCaptureProgress;
  v5 = [(GTCaptureProgress *)&v15 init];
  if (v5)
  {
    v5->_captureState = [v4 decodeInt64ForKey:@"captureState"];
    v5->_capturedCommandsBuffers = [v4 decodeInt64ForKey:@"capturedCommandsBuffers"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
    descriptor = v5->_descriptor;
    v5->_descriptor = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stats"];
    stats = v5->_stats;
    v5->_stats = v8;

    v10 = objc_opt_new();
    completionState = v5->_completionState;
    v5->_completionState = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"completionState.archiveURL"];
    [(GTCaptureCompletionState *)v5->_completionState setArchiveURL:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"completionState.error"];
    [(GTCaptureCompletionState *)v5->_completionState setError:v13];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  captureState = self->_captureState;
  v5 = a3;
  [v5 encodeInt64:captureState forKey:@"captureState"];
  [v5 encodeInt64:self->_capturedCommandsBuffers forKey:@"capturedCommandsBuffers"];
  [v5 encodeObject:self->_descriptor forKey:@"descriptor"];
  [v5 encodeObject:self->_stats forKey:@"stats"];
  v6 = [(GTCaptureCompletionState *)self->_completionState archiveURL];
  [v5 encodeObject:v6 forKey:@"completionState.archiveURL"];

  v7 = [(GTCaptureCompletionState *)self->_completionState error];
  [v5 encodeObject:v7 forKey:@"completionState.error"];
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