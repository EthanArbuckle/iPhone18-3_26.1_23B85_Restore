@interface PADInternalClassifier
- (void)finishLivenessWithSelfie:(id)a3 performIDMatching:(BOOL)a4 completion:(id)a5;
- (void)processLivenessFrame:(id)a3 withOptions:(PADClassifierFrameOptions)a4 taOptions:(int64_t)a5;
- (void)startLiveness:(id)a3 onGestureStart:(id)a4 onIncorrectGestureDetected:(id)a5 onGesturesFinished:(id)a6;
@end

@implementation PADInternalClassifier

- (void)startLiveness:(id)a3 onGestureStart:(id)a4 onIncorrectGestureDetected:(id)a5 onGesturesFinished:(id)a6
{
  v10 = _Block_copy(a4);
  v11 = _Block_copy(a5);
  v12 = _Block_copy(a6);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v16 = a3;
  v17 = self;
  sub_2456A637C(v16, sub_2456AAF1C, v13, sub_2456AB07C, v14, sub_2456AAF30, v15);
}

- (void)processLivenessFrame:(id)a3 withOptions:(PADClassifierFrameOptions)a4 taOptions:(int64_t)a5
{
  v6 = *&a4.var0;
  v8 = a3;
  v9 = self;
  sub_2456A6F74(v8, v6 & 0x10101, a5);
}

- (void)finishLivenessWithSelfie:(id)a3 performIDMatching:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = self;
  sub_2456A72E4(v10, a4, sub_2456AB078, v9);
}

@end