@interface GDFeedbackServiceInner
- (BOOL)objcRecordWithFeedback:(id)a3 error:(id *)a4;
- (BOOL)objcRecordWithFeedback:(id)a3 for:(int64_t)a4 error:(id *)a5;
@end

@implementation GDFeedbackServiceInner

- (BOOL)objcRecordWithFeedback:(id)a3 error:(id *)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  FeedbackService.objcRecord(feedback:)(a3);

  swift_unknownObjectRelease();
  return 1;
}

- (BOOL)objcRecordWithFeedback:(id)a3 for:(int64_t)a4 error:(id *)a5
{
  swift_unknownObjectRetain();
  v8 = self;
  FeedbackService.objcRecord(feedback:for:)(a3, a4);

  swift_unknownObjectRelease();
  return 1;
}

@end