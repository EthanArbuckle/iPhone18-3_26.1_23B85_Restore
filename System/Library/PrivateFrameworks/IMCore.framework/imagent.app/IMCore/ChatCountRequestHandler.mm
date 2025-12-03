@interface ChatCountRequestHandler
- (_TtC7imagent23ChatCountRequestHandler)init;
- (void)unreadCountFullReplacementWithCompletion:(id)completion;
- (void)unreadCountWithCompletion:(id)completion;
@end

@implementation ChatCountRequestHandler

- (void)unreadCountWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  sharedInstance = [objc_opt_self() sharedInstance];
  unreadMessagesCount = [sharedInstance unreadMessagesCount];

  v3[2](v3, unreadMessagesCount);

  _Block_release(v3);
}

- (void)unreadCountFullReplacementWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
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