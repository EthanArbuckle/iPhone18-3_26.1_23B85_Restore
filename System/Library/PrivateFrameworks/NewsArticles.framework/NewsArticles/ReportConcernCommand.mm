@interface ReportConcernCommand
- (_TtC12NewsArticles20ReportConcernCommand)init;
- (_TtC12NewsArticles20ReportConcernCommand)initWithCoder:(id)a3;
- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5;
@end

@implementation ReportConcernCommand

- (_TtC12NewsArticles20ReportConcernCommand)initWithCoder:(id)a3
{
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = self;
  _s12NewsArticles20ReportConcernCommandC7execute4with8delegate16qualityOfServiceySo14FCCloudContextCSg_So17FCCommandDelegate_pSgSo09NSQualityjK0VtF_0(a3, a4);

  swift_unknownObjectRelease();
}

- (_TtC12NewsArticles20ReportConcernCommand)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end