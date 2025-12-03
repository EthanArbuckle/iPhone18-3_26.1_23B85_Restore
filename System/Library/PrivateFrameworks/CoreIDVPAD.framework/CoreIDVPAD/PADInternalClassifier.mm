@interface PADInternalClassifier
- (void)finishLivenessWithSelfie:(id)selfie performIDMatching:(BOOL)matching completion:(id)completion;
- (void)processLivenessFrame:(id)frame withOptions:(PADClassifierFrameOptions)options taOptions:(int64_t)taOptions;
- (void)startLiveness:(id)liveness onGestureStart:(id)start onIncorrectGestureDetected:(id)detected onGesturesFinished:(id)finished;
@end

@implementation PADInternalClassifier

- (void)startLiveness:(id)liveness onGestureStart:(id)start onIncorrectGestureDetected:(id)detected onGesturesFinished:(id)finished
{
  v10 = _Block_copy(start);
  v11 = _Block_copy(detected);
  v12 = _Block_copy(finished);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  livenessCopy = liveness;
  selfCopy = self;
  sub_2456A637C(livenessCopy, sub_2456AAF1C, v13, sub_2456AB07C, v14, sub_2456AAF30, v15);
}

- (void)processLivenessFrame:(id)frame withOptions:(PADClassifierFrameOptions)options taOptions:(int64_t)taOptions
{
  v6 = *&options.var0;
  frameCopy = frame;
  selfCopy = self;
  sub_2456A6F74(frameCopy, v6 & 0x10101, taOptions);
}

- (void)finishLivenessWithSelfie:(id)selfie performIDMatching:(BOOL)matching completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  selfieCopy = selfie;
  selfCopy = self;
  sub_2456A72E4(selfieCopy, matching, sub_2456AB078, v9);
}

@end