@interface CNKCoreAnalyticsReporter
- (void)reportCanceledSOSCountdownToCall:(double)a3;
- (void)reportCanceledSOSCountdownToNotify:(double)a3;
- (void)reportIncompatibilityTypeInvalidWithRecipientCount:(int64_t)a3 reason:(int64_t)a4;
- (void)reportIncompatibilityTypeLegacyWithRecipientCount:(int64_t)a3 reason:(int64_t)a4;
- (void)reportIncompatibilityTypeNoneWithRecipientCount:(int64_t)a3 reason:(int64_t)a4;
- (void)reportIncompatibilityTypeWebWithRecipientCount:(int64_t)a3 reason:(int64_t)a4;
- (void)reportMultipleCallsWaitingUIAction:(int64_t)a3;
@end

@implementation CNKCoreAnalyticsReporter

- (void)reportCanceledSOSCountdownToCall:(double)a3
{
  v4 = self;
  CNKCoreAnalyticsReporter.reportCanceledSOSCountdown(toCall:)(a3);
}

- (void)reportCanceledSOSCountdownToNotify:(double)a3
{
  v4 = self;
  CNKCoreAnalyticsReporter.reportCanceledSOSCountdown(toNotify:)(a3);
}

- (void)reportMultipleCallsWaitingUIAction:(int64_t)a3
{
  v4 = self;
  CNKCoreAnalyticsReporter.report(_:)(a3);
}

- (void)reportIncompatibilityTypeNoneWithRecipientCount:(int64_t)a3 reason:(int64_t)a4
{
  v6 = self;
  CNKCoreAnalyticsReporter.reportIncompatibilityTypeNone(recipientCount:reason:)(a3, a4);
}

- (void)reportIncompatibilityTypeLegacyWithRecipientCount:(int64_t)a3 reason:(int64_t)a4
{
  v6 = self;
  CNKCoreAnalyticsReporter.reportIncompatibilityTypeLegacy(recipientCount:reason:)(a3, a4);
}

- (void)reportIncompatibilityTypeWebWithRecipientCount:(int64_t)a3 reason:(int64_t)a4
{
  v6 = self;
  CNKCoreAnalyticsReporter.reportIncompatibilityTypeWeb(recipientCount:reason:)(a3, a4);
}

- (void)reportIncompatibilityTypeInvalidWithRecipientCount:(int64_t)a3 reason:(int64_t)a4
{
  v6 = self;
  CNKCoreAnalyticsReporter.reportIncompatibilityTypeInvalid(recipientCount:reason:)(a3, a4);
}

@end