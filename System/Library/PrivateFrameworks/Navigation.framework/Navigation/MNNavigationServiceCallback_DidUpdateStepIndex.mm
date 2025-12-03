@interface MNNavigationServiceCallback_DidUpdateStepIndex
- (MNNavigationServiceCallback_DidUpdateStepIndex)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNNavigationServiceCallback_DidUpdateStepIndex

- (MNNavigationServiceCallback_DidUpdateStepIndex)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = MNNavigationServiceCallback_DidUpdateStepIndex;
  v5 = [(MNNavigationServiceCallbackParameters *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_stepIndex = [coderCopy decodeIntegerForKey:@"_stepIndex"];
    v5->_segmentIndex = [coderCopy decodeIntegerForKey:@"_segmentIndex"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MNNavigationServiceCallback_DidUpdateStepIndex;
  coderCopy = coder;
  [(MNNavigationServiceCallbackParameters *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_stepIndex forKey:{@"_stepIndex", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_segmentIndex forKey:@"_segmentIndex"];
}

@end