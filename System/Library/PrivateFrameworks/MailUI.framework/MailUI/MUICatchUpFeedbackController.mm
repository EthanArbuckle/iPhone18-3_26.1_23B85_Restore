@interface MUICatchUpFeedbackController
+ (BOOL)isFeedbackRestricted;
+ (void)provideAutomaticSummaryFeedbackWithType:(int64_t)a3 message:(id)a4 sourceViewController:(id)a5;
+ (void)provideHighlightsFeedbackWithType:(int64_t)a3 message:(id)a4 sourceViewController:(id)a5;
@end

@implementation MUICatchUpFeedbackController

+ (void)provideAutomaticSummaryFeedbackWithType:(int64_t)a3 message:(id)a4 sourceViewController:(id)a5
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  swift_getObjCClassMetadata();
  static MUICatchUpFeedbackController.provideAutomaticSummaryFeedback(with:message:sourceViewController:)(a3, a4, a5);
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](a4);
}

+ (void)provideHighlightsFeedbackWithType:(int64_t)a3 message:(id)a4 sourceViewController:(id)a5
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  swift_getObjCClassMetadata();
  static MUICatchUpFeedbackController.provideHighlightsFeedback(with:message:sourceViewController:)(a3, a4, a5);
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](a4);
}

+ (BOOL)isFeedbackRestricted
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static MUICatchUpFeedbackController.isFeedbackRestricted()();
  return sub_214CCD384() & 1;
}

@end