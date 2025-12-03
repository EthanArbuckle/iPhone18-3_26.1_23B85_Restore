@interface CoreIRLearningSession
- (CoreIRLearningSession)initWithCoder:(id)coder;
- (CoreIRLearningSession)initWithReason:(unint64_t)reason;
- (id)copyWithZone:(_NSZone *)zone;
- (void)endLearning;
@end

@implementation CoreIRLearningSession

- (CoreIRLearningSession)initWithReason:(unint64_t)reason
{
  v5.receiver = self;
  v5.super_class = CoreIRLearningSession;
  result = [(CoreIRLearningSession *)&v5 init];
  if (result)
  {
    result->_reason = reason;
  }

  return result;
}

- (CoreIRLearningSession)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CoreIRLearningSession;
  v4 = [(CoreIRLearningSession *)&v6 init];
  if (v4)
  {
    v4->_reason = [coder decodeInt32ForKey:@"Reason"];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  reason = self->_reason;

  return [v4 initWithReason:reason];
}

- (void)endLearning
{
  owningDevice = self->_owningDevice;
  if (owningDevice && [(CoreIRDevice *)owningDevice learningSession]== self)
  {
    v4 = self->_owningDevice;

    [(CoreIRDevice *)v4 setLearningSession:0];
  }
}

@end