@interface FeedbackServiceNoOpServer
- (BOOL)logWithFeedbackData:(id)data type:(id)type variant:(id)variant eventId:(int64_t)id withTimestamp:(id)timestamp shouldProcessImmediately:(BOOL)immediately error:(id *)error;
@end

@implementation FeedbackServiceNoOpServer

- (BOOL)logWithFeedbackData:(id)data type:(id)type variant:(id)variant eventId:(int64_t)id withTimestamp:(id)timestamp shouldProcessImmediately:(BOOL)immediately error:(id *)error
{
  v28 = sub_1ABF21EB4();
  v14 = *(v28 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  dataCopy = data;
  typeCopy = type;
  timestampCopy = timestamp;
  selfCopy = self;
  variantCopy = variant;
  v23 = sub_1ABF21DD4();
  v25 = v24;

  sub_1ABF23C04();
  if (variantCopy)
  {
    sub_1ABF23C04();
  }

  sub_1ABF21E64();

  (*(v14 + 8))(v17, v28);

  sub_1ABA96210(v23, v25);
  return 1;
}

@end