@interface MNNavigationServiceCallback_DidUpdateStepIndex
- (MNNavigationServiceCallback_DidUpdateStepIndex)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNNavigationServiceCallback_DidUpdateStepIndex

- (MNNavigationServiceCallback_DidUpdateStepIndex)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MNNavigationServiceCallback_DidUpdateStepIndex;
  v5 = [(MNNavigationServiceCallbackParameters *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_stepIndex = [v4 decodeIntegerForKey:@"_stepIndex"];
    v5->_segmentIndex = [v4 decodeIntegerForKey:@"_segmentIndex"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MNNavigationServiceCallback_DidUpdateStepIndex;
  v4 = a3;
  [(MNNavigationServiceCallbackParameters *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_stepIndex forKey:{@"_stepIndex", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_segmentIndex forKey:@"_segmentIndex"];
}

@end