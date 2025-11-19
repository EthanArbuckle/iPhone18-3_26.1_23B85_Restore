@interface CoreIRLearningSession
- (CoreIRLearningSession)initWithCoder:(id)a3;
- (CoreIRLearningSession)initWithReason:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)endLearning;
@end

@implementation CoreIRLearningSession

- (CoreIRLearningSession)initWithReason:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CoreIRLearningSession;
  result = [(CoreIRLearningSession *)&v5 init];
  if (result)
  {
    result->_reason = a3;
  }

  return result;
}

- (CoreIRLearningSession)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CoreIRLearningSession;
  v4 = [(CoreIRLearningSession *)&v6 init];
  if (v4)
  {
    v4->_reason = [a3 decodeInt32ForKey:@"Reason"];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
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