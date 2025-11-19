@interface FeedbackServiceXPC.Server
- (void)logFeedback:(id)a3 ofType:(id)a4 ofVariant:(id)a5 forEvent:(int64_t)a6 withTimestamp:(id)a7 shouldProcessImmediately:(BOOL)a8 completion:(id)a9;
@end

@implementation FeedbackServiceXPC.Server

- (void)logFeedback:(id)a3 ofType:(id)a4 ofVariant:(id)a5 forEvent:(int64_t)a6 withTimestamp:(id)a7 shouldProcessImmediately:(BOOL)a8 completion:(id)a9
{
  v35 = a8;
  v36 = a6;
  v14 = sub_1C4EF9CD8();
  v37 = *(v14 - 8);
  v38 = v14;
  v15 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(a9);
  v19 = a3;
  v20 = a4;
  v21 = a7;
  v34 = self;
  v22 = a5;
  v23 = sub_1C4EF9A68();
  v25 = v24;

  v26 = sub_1C4F01138();
  v28 = v27;

  if (v22)
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
  v32 = v34;
  sub_1C4807420(v23, v25, v26, v28, v29, v31, v36, v17, v35, v34, v18);
  _Block_release(v18);

  sub_1C4434000(v23, v25);

  (*(v37 + 8))(v17, v38);
}

@end