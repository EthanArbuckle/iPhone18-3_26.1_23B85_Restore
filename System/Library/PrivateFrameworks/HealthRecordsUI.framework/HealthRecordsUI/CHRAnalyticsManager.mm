@interface CHRAnalyticsManager
+ (CHRAnalyticsManager)shared;
- (void)postOnboardingFunnelEventWithStep:(int64_t)a3 context:(int64_t)a4 gatewayUrl:(id)a5;
- (void)postPrivacyInteractionEventWithType:(int64_t)a3 context:(int64_t)a4 action:(BOOL)a5;
- (void)postUserInteractionEventWithType:(int64_t)a3 context:(int64_t)a4 action:(int64_t)a5 category:(id)a6 conceptIdentifier:(id)a7;
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
  v2 = self;
  sub_1D1223F40();
}

- (void)postOnboardingFunnelEventWithStep:(int64_t)a3 context:(int64_t)a4 gatewayUrl:(id)a5
{
  v9 = a5;
  v10 = self;
  sub_1D122101C(a3, a4, a5);
}

- (void)postUserInteractionEventWithType:(int64_t)a3 context:(int64_t)a4 action:(int64_t)a5 category:(id)a6 conceptIdentifier:(id)a7
{
  v13 = a6;
  v14 = a7;
  v15 = self;
  sub_1D122157C(a3, a4, a5, a6, a7);
}

- (void)postPrivacyInteractionEventWithType:(int64_t)a3 context:(int64_t)a4 action:(BOOL)a5
{
  v8 = self;
  sub_1D1223978(a3, a4, a5);
}

@end