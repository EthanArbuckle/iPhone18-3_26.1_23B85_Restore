@interface MNNavigationServiceCallback_DidChangeVoiceGuidanceLevel
- (MNNavigationServiceCallback_DidChangeVoiceGuidanceLevel)initWithCoder:(id)coder;
@end

@implementation MNNavigationServiceCallback_DidChangeVoiceGuidanceLevel

- (MNNavigationServiceCallback_DidChangeVoiceGuidanceLevel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = MNNavigationServiceCallback_DidChangeVoiceGuidanceLevel;
  v5 = [(MNNavigationServiceCallbackParameters *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_voiceGuidanceLevel = [coderCopy decodeIntegerForKey:@"_voiceGuidanceLevel"];
    v6 = v5;
  }

  return v5;
}

@end