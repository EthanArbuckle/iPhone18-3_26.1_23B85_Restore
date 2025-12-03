@interface ConversationHUDEphemeralNotice
- (void)didTapEphemeralAlertStack;
@end

@implementation ConversationHUDEphemeralNotice

- (void)didTapEphemeralAlertStack
{
  selfCopy = self;
  ConversationHUDEphemeralNotice.didTapEphemeralAlertStack()();
}

@end