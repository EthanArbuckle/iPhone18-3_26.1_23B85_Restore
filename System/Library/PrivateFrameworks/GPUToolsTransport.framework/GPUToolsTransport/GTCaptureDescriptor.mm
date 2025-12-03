@interface GTCaptureDescriptor
- (GTCaptureDescriptor)initWithCoder:(id)coder;
- (GTCaptureDescriptor)initWithRequestID:(unint64_t)d;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTCaptureDescriptor

- (GTCaptureDescriptor)initWithRequestID:(unint64_t)d
{
  v6.receiver = self;
  v6.super_class = GTCaptureDescriptor;
  v3 = [(GTCaptureRequest *)&v6 initWithRequestID:d];
  v4 = v3;
  if (v3)
  {
    v3->_sessionID = [(GTCaptureRequest *)v3 requestID];
  }

  return v4;
}

- (GTCaptureDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = GTCaptureDescriptor;
  v5 = [(GTCaptureRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_sessionID = [coderCopy decodeInt64ForKey:@"sessionID"];
    v5->_triggerHitsToStart = [coderCopy decodeInt64ForKey:@"triggerHitsToStart"];
    v5->_triggerHitsToEnd = [coderCopy decodeInt64ForKey:@"triggerHitsToEnd"];
    v5->_suspendAfterCapture = [coderCopy decodeBoolForKey:@"suspendAfterCapture"];
    v5->_ignoreUnusedResources = [coderCopy decodeBoolForKey:@"ignoreUnusedResources"];
    v5->_isToolsCapture = [coderCopy decodeBoolForKey:@"isToolsCapture"];
    v5->_includeBacktrace = [coderCopy decodeBoolForKey:@"includeBacktrace"];
    v5->_streamRef = [coderCopy decodeInt64ForKey:@"streamRef"];
    v6 = [coderCopy decodeObjectForKey:@"outputURL"];
    outputURL = v5->_outputURL;
    v5->_outputURL = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sessionID = self->_sessionID;
  coderCopy = coder;
  [coderCopy encodeInt64:sessionID forKey:@"sessionID"];
  [coderCopy encodeInt64:self->_triggerHitsToStart forKey:@"triggerHitsToStart"];
  [coderCopy encodeInt64:self->_triggerHitsToEnd forKey:@"triggerHitsToEnd"];
  [coderCopy encodeBool:self->_suspendAfterCapture forKey:@"suspendAfterCapture"];
  [coderCopy encodeBool:self->_ignoreUnusedResources forKey:@"ignoreUnusedResources"];
  [coderCopy encodeBool:self->_isToolsCapture forKey:@"isToolsCapture"];
  [coderCopy encodeBool:self->_includeBacktrace forKey:@"includeBacktrace"];
  [coderCopy encodeInt64:self->_streamRef forKey:@"streamRef"];
  [coderCopy encodeObject:self->_outputURL forKey:@"outputURL"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = GTCaptureDescriptor;
  v4 = [(GTCaptureDescriptor *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@\n    sessionID: %llu", v4, self->_sessionID];

  return v5;
}

@end