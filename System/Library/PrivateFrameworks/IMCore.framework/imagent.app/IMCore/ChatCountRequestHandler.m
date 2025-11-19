@interface ChatCountRequestHandler
- (_TtC7imagent23ChatCountRequestHandler)init;
- (void)unreadCountFullReplacementWithCompletion:(id)a3;
- (void)unreadCountWithCompletion:(id)a3;
@end

@implementation ChatCountRequestHandler

- (void)unreadCountWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 unreadMessagesCount];

  v3[2](v3, v5);

  _Block_release(v3);
}

- (void)unreadCountFullReplacementWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100034270(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (_TtC7imagent23ChatCountRequestHandler)init
{
  *(&self->super.isa + OBJC_IVAR____TtC7imagent23ChatCountRequestHandler_requiredCapabilities) = 67141636;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ChatCountRequestHandler();
  return [(ChatCountRequestHandler *)&v3 init];
}

@end