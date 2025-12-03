@interface FeedbackServiceXPC.Server
- (void)logFeedback:(id)feedback ofType:(id)type ofVariant:(id)variant forEvent:(int64_t)event withTimestamp:(id)timestamp shouldProcessImmediately:(BOOL)immediately completion:(id)completion;
@end

@implementation FeedbackServiceXPC.Server

- (void)logFeedback:(id)feedback ofType:(id)type ofVariant:(id)variant forEvent:(int64_t)event withTimestamp:(id)timestamp shouldProcessImmediately:(BOOL)immediately completion:(id)completion
{
  immediatelyCopy = immediately;
  eventCopy = event;
  v14 = sub_1C4EF9CD8();
  v37 = *(v14 - 8);
  v38 = v14;
  v15 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(completion);
  feedbackCopy = feedback;
  typeCopy = type;
  timestampCopy = timestamp;
  selfCopy = self;
  variantCopy = variant;
  v23 = sub_1C4EF9A68();
  v25 = v24;

  v26 = sub_1C4F01138();
  v28 = v27;

  if (variantCopy)
  {
    v29 = sub_1C4F01138();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  sub_1C4EF9C78();

  _Block_copy(v18);
  v32 = selfCopy;
  sub_1C4807420(v23, v25, v26, v28, v29, v31, eventCopy, v17, immediatelyCopy, selfCopy, v18);
  _Block_release(v18);

  sub_1C4434000(v23, v25);

  (*(v37 + 8))(v17, v38);
}

@end