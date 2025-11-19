@interface MNNavigationServiceCallback_DidChangeVoiceGuidanceLevel
- (MNNavigationServiceCallback_DidChangeVoiceGuidanceLevel)initWithCoder:(id)a3;
@end

@implementation MNNavigationServiceCallback_DidChangeVoiceGuidanceLevel

- (MNNavigationServiceCallback_DidChangeVoiceGuidanceLevel)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MNNavigationServiceCallback_DidChangeVoiceGuidanceLevel;
  v5 = [(MNNavigationServiceCallbackParameters *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_voiceGuidanceLevel = [v4 decodeIntegerForKey:@"_voiceGuidanceLevel"];
    v6 = v5;
  }

  return v5;
}

@end