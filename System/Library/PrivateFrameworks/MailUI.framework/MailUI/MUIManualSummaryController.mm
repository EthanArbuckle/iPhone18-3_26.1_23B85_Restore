@interface MUIManualSummaryController
+ (BOOL)shouldAllowSummarizationForContentLength:(int64_t)length;
+ (BOOL)shouldAlwaysHideConversationSummarizeControl;
- (MUIManualSummaryController)initWithMessages:(id)messages sourceViewController:(id)controller;
- (void)provideFeedbackWithType:(int64_t)type;
- (void)summarizeMessageUsingExternalIntelligence:(BOOL)intelligence completion:(id)completion;
@end

@implementation MUIManualSummaryController

+ (BOOL)shouldAlwaysHideConversationSummarizeControl
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  sub_214C57F88();
  return sub_214CCD384() & 1;
}

- (MUIManualSummaryController)initWithMessages:(id)messages sourceViewController:(id)controller
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](messages);
  MEMORY[0x277D82BE0](controller);
  sub_214B71394();
  v4 = sub_214CCF7E4();
  v8 = sub_214C5825C(v4, controller);
  MEMORY[0x277D82BD8](messages);
  return v8;
}

- (void)summarizeMessageUsingExternalIntelligence:(BOOL)intelligence completion:(id)completion
{
  swift_getObjectType();
  v6 = _Block_copy(completion);
  MEMORY[0x277D82BE0](self);
  v7 = sub_214CCD394();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  MUIManualSummaryController.summarizeMessage(usingExternalIntelligence:completion:)(v7 & 1, sub_214C097E4, v8);

  MEMORY[0x277D82BD8](self);
}

- (void)provideFeedbackWithType:(int64_t)type
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIManualSummaryController.provideFeedback(with:)(type);
  MEMORY[0x277D82BD8](self);
}

+ (BOOL)shouldAllowSummarizationForContentLength:(int64_t)length
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static MUIManualSummaryController.shouldAllowSummarization(forContentLength:)(length);
  return sub_214CCD384() & 1;
}

@end