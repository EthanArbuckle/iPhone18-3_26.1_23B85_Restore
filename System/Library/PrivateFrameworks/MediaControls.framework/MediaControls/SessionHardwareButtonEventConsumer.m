@interface SessionHardwareButtonEventConsumer
- (void)consumeEvent:(unint64_t)a3 forButtonOfKind:(unint64_t)a4;
@end

@implementation SessionHardwareButtonEventConsumer

- (void)consumeEvent:(unint64_t)a3 forButtonOfKind:(unint64_t)a4
{

  sub_1A225E998(a3, a4);
}

@end