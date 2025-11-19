@interface CKThrowSendAnimationConfiguration
+ (id)new;
- (_TtC7ChatKit33CKThrowSendAnimationConfiguration)init;
- (_TtC7ChatKit33CKThrowSendAnimationConfiguration)initWithDuration:(double)a3 beginTime:(double)a4 speed:(float)a5 animationDelegate:(id)a6 timingFunction:(id)a7 fillMode:(id)a8 animationGroup:(id)a9 initialSize:(CGSize)a10 finalSize:(CGSize)a11 preferredFrameRateRange:(CAFrameRateRange)a12 highFrameRateReason:(unsigned int)a13;
@end

@implementation CKThrowSendAnimationConfiguration

- (_TtC7ChatKit33CKThrowSendAnimationConfiguration)initWithDuration:(double)a3 beginTime:(double)a4 speed:(float)a5 animationDelegate:(id)a6 timingFunction:(id)a7 fillMode:(id)a8 animationGroup:(id)a9 initialSize:(CGSize)a10 finalSize:(CGSize)a11 preferredFrameRateRange:(CAFrameRateRange)a12 highFrameRateReason:(unsigned int)a13
{
  height = a10.height;
  width = a10.width;
  swift_unknownObjectRetain();
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v29 = sub_1908666D4(a3, a4, a5, width, height, a11.width, a11.height, a12.minimum, a6, v23, v24, v25, a13, v26, v27, v28, SLODWORD(a12.maximum), SLODWORD(a12.preferred));
  swift_unknownObjectRelease();
  return v29;
}

- (_TtC7ChatKit33CKThrowSendAnimationConfiguration)init
{
  swift_unknownObjectWeakInit();
  result = sub_190D58510();
  __break(1u);
  return result;
}

+ (id)new
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

@end