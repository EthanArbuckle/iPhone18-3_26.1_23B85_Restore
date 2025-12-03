@interface SessionHardwareButtonEventConsumer
- (void)consumeEvent:(unint64_t)event forButtonOfKind:(unint64_t)kind;
@end

@implementation SessionHardwareButtonEventConsumer

- (void)consumeEvent:(unint64_t)event forButtonOfKind:(unint64_t)kind
{

  sub_1A225E998(event, kind);
}

@end