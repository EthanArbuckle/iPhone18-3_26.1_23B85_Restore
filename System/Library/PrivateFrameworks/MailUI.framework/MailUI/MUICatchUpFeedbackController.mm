@interface MUICatchUpFeedbackController
+ (BOOL)isFeedbackRestricted;
+ (void)provideAutomaticSummaryFeedbackWithType:(int64_t)type message:(id)message sourceViewController:(id)controller;
+ (void)provideHighlightsFeedbackWithType:(int64_t)type message:(id)message sourceViewController:(id)controller;
@end

@implementation MUICatchUpFeedbackController

+ (void)provideAutomaticSummaryFeedbackWithType:(int64_t)type message:(id)message sourceViewController:(id)controller
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](message);
  MEMORY[0x277D82BE0](controller);
  swift_getObjCClassMetadata();
  static MUICatchUpFeedbackController.provideAutomaticSummaryFeedback(with:message:sourceViewController:)(type, message, controller);
  MEMORY[0x277D82BD8](controller);
  MEMORY[0x277D82BD8](message);
}

+ (void)provideHighlightsFeedbackWithType:(int64_t)type message:(id)message sourceViewController:(id)controller
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](message);
  MEMORY[0x277D82BE0](controller);
  swift_getObjCClassMetadata();
  static MUICatchUpFeedbackController.provideHighlightsFeedback(with:message:sourceViewController:)(type, message, controller);
  MEMORY[0x277D82BD8](controller);
  MEMORY[0x277D82BD8](message);
}

+ (BOOL)isFeedbackRestricted
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static MUICatchUpFeedbackController.isFeedbackRestricted()();
  return sub_214CCD384() & 1;
}

@end