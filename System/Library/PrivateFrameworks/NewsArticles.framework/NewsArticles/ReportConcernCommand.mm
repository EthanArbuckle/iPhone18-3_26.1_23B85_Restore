@interface ReportConcernCommand
- (_TtC12NewsArticles20ReportConcernCommand)init;
- (_TtC12NewsArticles20ReportConcernCommand)initWithCoder:(id)coder;
- (void)executeWithContext:(id)context delegate:(id)delegate qualityOfService:(int64_t)service;
@end

@implementation ReportConcernCommand

- (_TtC12NewsArticles20ReportConcernCommand)initWithCoder:(id)coder
{
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)executeWithContext:(id)context delegate:(id)delegate qualityOfService:(int64_t)service
{
  contextCopy = context;
  swift_unknownObjectRetain();
  selfCopy = self;
  _s12NewsArticles20ReportConcernCommandC7execute4with8delegate16qualityOfServiceySo14FCCloudContextCSg_So17FCCommandDelegate_pSgSo09NSQualityjK0VtF_0(context, delegate);

  swift_unknownObjectRelease();
}

- (_TtC12NewsArticles20ReportConcernCommand)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end