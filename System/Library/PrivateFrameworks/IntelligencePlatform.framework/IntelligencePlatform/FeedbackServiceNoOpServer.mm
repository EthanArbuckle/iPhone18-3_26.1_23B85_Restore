@interface FeedbackServiceNoOpServer
- (BOOL)logWithFeedbackData:(id)a3 type:(id)a4 variant:(id)a5 eventId:(int64_t)a6 withTimestamp:(id)a7 shouldProcessImmediately:(BOOL)a8 error:(id *)a9;
@end

@implementation FeedbackServiceNoOpServer

- (BOOL)logWithFeedbackData:(id)a3 type:(id)a4 variant:(id)a5 eventId:(int64_t)a6 withTimestamp:(id)a7 shouldProcessImmediately:(BOOL)a8 error:(id *)a9
{
  v28 = sub_1ABF21EB4();
  v14 = *(v28 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3;
  v19 = a4;
  v20 = a7;
  v21 = self;
  v22 = a5;
  v23 = sub_1ABF21DD4();
  v25 = v24;

  sub_1ABF23C04();
  if (v22)
  {
    sub_1ABF23C04();
  }

  sub_1ABF21E64();

  (*(v14 + 8))(v17, v28);

  sub_1ABA96210(v23, v25);
  return 1;
}

@end