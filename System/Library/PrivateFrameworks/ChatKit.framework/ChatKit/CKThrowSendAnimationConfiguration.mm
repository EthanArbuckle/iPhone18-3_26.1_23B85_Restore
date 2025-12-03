@interface CKThrowSendAnimationConfiguration
+ (id)new;
- (_TtC7ChatKit33CKThrowSendAnimationConfiguration)init;
- (_TtC7ChatKit33CKThrowSendAnimationConfiguration)initWithDuration:(double)duration beginTime:(double)time speed:(float)speed animationDelegate:(id)delegate timingFunction:(id)function fillMode:(id)mode animationGroup:(id)group initialSize:(CGSize)self0 finalSize:(CGSize)self1 preferredFrameRateRange:(CAFrameRateRange)self2 highFrameRateReason:(unsigned int)self3;
@end

@implementation CKThrowSendAnimationConfiguration

- (_TtC7ChatKit33CKThrowSendAnimationConfiguration)initWithDuration:(double)duration beginTime:(double)time speed:(float)speed animationDelegate:(id)delegate timingFunction:(id)function fillMode:(id)mode animationGroup:(id)group initialSize:(CGSize)self0 finalSize:(CGSize)self1 preferredFrameRateRange:(CAFrameRateRange)self2 highFrameRateReason:(unsigned int)self3
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  functionCopy = function;
  modeCopy = mode;
  groupCopy = group;
  v29 = sub_1908666D4(duration, time, speed, width, height, finalSize.width, finalSize.height, range.minimum, delegate, functionCopy, modeCopy, groupCopy, reason, v26, v27, v28, SLODWORD(range.maximum), SLODWORD(range.preferred));
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