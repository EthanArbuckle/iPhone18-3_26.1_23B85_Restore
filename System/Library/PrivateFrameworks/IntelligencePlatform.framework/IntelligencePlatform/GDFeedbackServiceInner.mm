@interface GDFeedbackServiceInner
- (BOOL)objcRecordWithFeedback:(id)feedback error:(id *)error;
- (BOOL)objcRecordWithFeedback:(id)feedback for:(int64_t)for error:(id *)error;
@end

@implementation GDFeedbackServiceInner

- (BOOL)objcRecordWithFeedback:(id)feedback error:(id *)error
{
  swift_unknownObjectRetain();
  selfCopy = self;
  FeedbackService.objcRecord(feedback:)(feedback);

  swift_unknownObjectRelease();
  return 1;
}

- (BOOL)objcRecordWithFeedback:(id)feedback for:(int64_t)for error:(id *)error
{
  swift_unknownObjectRetain();
  selfCopy = self;
  FeedbackService.objcRecord(feedback:for:)(feedback, for);

  swift_unknownObjectRelease();
  return 1;
}

@end