@interface MailPresenter
- (BOOL)canComposeMail;
- (_TtC12NewsArticles13MailPresenter)init;
- (void)presentMail:(id)mail;
@end

@implementation MailPresenter

- (BOOL)canComposeMail
{
  v2 = objc_opt_self();

  return [v2 canSendMail];
}

- (void)presentMail:(id)mail
{
  mailCopy = mail;
  selfCopy = self;
  sub_1D7AF3680(mailCopy);
}

- (_TtC12NewsArticles13MailPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end