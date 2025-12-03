@interface CHRAnalyticsManager
+ (CHRAnalyticsManager)shared;
- (void)postOnboardingFunnelEventWithStep:(int64_t)step context:(int64_t)context gatewayUrl:(id)url;
- (void)postPrivacyInteractionEventWithType:(int64_t)type context:(int64_t)context action:(BOOL)action;
- (void)postUserInteractionEventWithType:(int64_t)type context:(int64_t)context action:(int64_t)action category:(id)category conceptIdentifier:(id)identifier;
- (void)submitAndFlushQueuedEvents;
@end

@implementation CHRAnalyticsManager

+ (CHRAnalyticsManager)shared
{
  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE06AEB8;

  return v3;
}

- (void)submitAndFlushQueuedEvents
{
  selfCopy = self;
  sub_1D1223F40();
}

- (void)postOnboardingFunnelEventWithStep:(int64_t)step context:(int64_t)context gatewayUrl:(id)url
{
  urlCopy = url;
  selfCopy = self;
  sub_1D122101C(step, context, url);
}

- (void)postUserInteractionEventWithType:(int64_t)type context:(int64_t)context action:(int64_t)action category:(id)category conceptIdentifier:(id)identifier
{
  categoryCopy = category;
  identifierCopy = identifier;
  selfCopy = self;
  sub_1D122157C(type, context, action, category, identifier);
}

- (void)postPrivacyInteractionEventWithType:(int64_t)type context:(int64_t)context action:(BOOL)action
{
  selfCopy = self;
  sub_1D1223978(type, context, action);
}

@end