@interface CNKCoreAnalyticsReporter
- (void)reportCanceledSOSCountdownToCall:(double)call;
- (void)reportCanceledSOSCountdownToNotify:(double)notify;
- (void)reportIncompatibilityTypeInvalidWithRecipientCount:(int64_t)count reason:(int64_t)reason;
- (void)reportIncompatibilityTypeLegacyWithRecipientCount:(int64_t)count reason:(int64_t)reason;
- (void)reportIncompatibilityTypeNoneWithRecipientCount:(int64_t)count reason:(int64_t)reason;
- (void)reportIncompatibilityTypeWebWithRecipientCount:(int64_t)count reason:(int64_t)reason;
- (void)reportMultipleCallsWaitingUIAction:(int64_t)action;
@end

@implementation CNKCoreAnalyticsReporter

- (void)reportCanceledSOSCountdownToCall:(double)call
{
  selfCopy = self;
  CNKCoreAnalyticsReporter.reportCanceledSOSCountdown(toCall:)(call);
}

- (void)reportCanceledSOSCountdownToNotify:(double)notify
{
  selfCopy = self;
  CNKCoreAnalyticsReporter.reportCanceledSOSCountdown(toNotify:)(notify);
}

- (void)reportMultipleCallsWaitingUIAction:(int64_t)action
{
  selfCopy = self;
  CNKCoreAnalyticsReporter.report(_:)(action);
}

- (void)reportIncompatibilityTypeNoneWithRecipientCount:(int64_t)count reason:(int64_t)reason
{
  selfCopy = self;
  CNKCoreAnalyticsReporter.reportIncompatibilityTypeNone(recipientCount:reason:)(count, reason);
}

- (void)reportIncompatibilityTypeLegacyWithRecipientCount:(int64_t)count reason:(int64_t)reason
{
  selfCopy = self;
  CNKCoreAnalyticsReporter.reportIncompatibilityTypeLegacy(recipientCount:reason:)(count, reason);
}

- (void)reportIncompatibilityTypeWebWithRecipientCount:(int64_t)count reason:(int64_t)reason
{
  selfCopy = self;
  CNKCoreAnalyticsReporter.reportIncompatibilityTypeWeb(recipientCount:reason:)(count, reason);
}

- (void)reportIncompatibilityTypeInvalidWithRecipientCount:(int64_t)count reason:(int64_t)reason
{
  selfCopy = self;
  CNKCoreAnalyticsReporter.reportIncompatibilityTypeInvalid(recipientCount:reason:)(count, reason);
}

@end