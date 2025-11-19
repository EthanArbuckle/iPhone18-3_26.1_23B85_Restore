@interface MailPresenter
- (BOOL)canComposeMail;
- (_TtC12NewsArticles13MailPresenter)init;
- (void)presentMail:(id)a3;
@end

@implementation MailPresenter

- (BOOL)canComposeMail
{
  v2 = objc_opt_self();

  return [v2 canSendMail];
}

- (void)presentMail:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D7AF3680(v4);
}

- (_TtC12NewsArticles13MailPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end