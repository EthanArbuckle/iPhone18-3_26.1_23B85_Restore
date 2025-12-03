@interface SFOnDeviceSummarization
+ (BOOL)isSummarizationAvailabileForLanguageCode:(id)code;
- (NSString)summary;
- (SFOnDeviceSummarization)init;
- (SFOnDeviceSummarizationDelegate)delegate;
- (void)summarizeArticleText:(id)text;
@end

@implementation SFOnDeviceSummarization

- (SFOnDeviceSummarizationDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (SFOnDeviceSummarization)init
{
  swift_unknownObjectWeakInit();
  v3 = (self + OBJC_IVAR___SFOnDeviceSummarization__summary);
  *v3 = 0;
  v3[1] = 0;
  *(self + OBJC_IVAR___SFOnDeviceSummarization__isSafe) = 1;
  v5.receiver = self;
  v5.super_class = SFOnDeviceSummarization;
  return [(SFOnDeviceSummarization *)&v5 init];
}

- (NSString)summary
{
  if (*(self + OBJC_IVAR___SFOnDeviceSummarization__summary + 8))
  {
    sub_18BC1E3F8();
    v2 = sub_18BC20B98();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (BOOL)isSummarizationAvailabileForLanguageCode:(id)code
{
  v3 = sub_18BC20BD8();
  v5 = _sSo23SFOnDeviceSummarizationC12MobileSafariE02isC10Availabile15forLanguageCodeSbSS_tFZ_0(v3, v4);

  return v5 & 1;
}

- (void)summarizeArticleText:(id)text
{
  sub_18BC20BD8();
  selfCopy = self;
  sub_18BBC0B10();
}

@end