@interface MUIManualSummaryController
+ (BOOL)shouldAllowSummarizationForContentLength:(int64_t)a3;
+ (BOOL)shouldAlwaysHideConversationSummarizeControl;
- (MUIManualSummaryController)initWithMessages:(id)a3 sourceViewController:(id)a4;
- (void)provideFeedbackWithType:(int64_t)a3;
- (void)summarizeMessageUsingExternalIntelligence:(BOOL)a3 completion:(id)a4;
@end

@implementation MUIManualSummaryController

+ (BOOL)shouldAlwaysHideConversationSummarizeControl
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  sub_214C57F88();
  return sub_214CCD384() & 1;
}

- (MUIManualSummaryController)initWithMessages:(id)a3 sourceViewController:(id)a4
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  sub_214B71394();
  v4 = sub_214CCF7E4();
  v8 = sub_214C5825C(v4, a4);
  MEMORY[0x277D82BD8](a3);
  return v8;
}

- (void)summarizeMessageUsingExternalIntelligence:(BOOL)a3 completion:(id)a4
{
  swift_getObjectType();
  v6 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self);
  v7 = sub_214CCD394();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  MUIManualSummaryController.summarizeMessage(usingExternalIntelligence:completion:)(v7 & 1, sub_214C097E4, v8);

  MEMORY[0x277D82BD8](self);
}

- (void)provideFeedbackWithType:(int64_t)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIManualSummaryController.provideFeedback(with:)(a3);
  MEMORY[0x277D82BD8](self);
}

+ (BOOL)shouldAllowSummarizationForContentLength:(int64_t)a3
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static MUIManualSummaryController.shouldAllowSummarization(forContentLength:)(a3);
  return sub_214CCD384() & 1;
}

@end