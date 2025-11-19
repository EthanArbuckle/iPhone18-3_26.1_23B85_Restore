@interface BlastDoorAnimatedImageFrame
- (BlastDoorAnimatedImageFrame)init;
- (BlastDoorImage)image;
- (NSString)description;
- (NSString)stickerEffect;
- (NSString)utTypeString;
- (double)frameDuration;
@end

@implementation BlastDoorAnimatedImageFrame

- (NSString)description
{
  sub_21446887C(self + OBJC_IVAR___BlastDoorAnimatedImageFrame_animatedImageFrame, v4);
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorImage)image
{
  v2 = self;
  v3 = sub_21454CF54();

  return v3;
}

- (double)frameDuration
{
  result = *&self->animatedImageFrame[OBJC_IVAR___BlastDoorAnimatedImageFrame_animatedImageFrame + 432];
  if (self->animatedImageFrame[OBJC_IVAR___BlastDoorAnimatedImageFrame_animatedImageFrame + 440])
  {
    return 0.0;
  }

  return result;
}

- (NSString)stickerEffect
{
  self->animatedImageFrame[OBJC_IVAR___BlastDoorAnimatedImageFrame_animatedImageFrame + 441];
  self->animatedImageFrame[OBJC_IVAR___BlastDoorAnimatedImageFrame_animatedImageFrame + 441];
  v2 = self;
  v3 = sub_2146D9588();

  return v3;
}

- (NSString)utTypeString
{
  if (*&self->animatedImageFrame[OBJC_IVAR___BlastDoorAnimatedImageFrame_animatedImageFrame + 456])
  {
    v2 = *&self->animatedImageFrame[OBJC_IVAR___BlastDoorAnimatedImageFrame_animatedImageFrame + 448];
    v3 = *&self->animatedImageFrame[OBJC_IVAR___BlastDoorAnimatedImageFrame_animatedImageFrame + 456];

    v4 = sub_2146D9588();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BlastDoorAnimatedImageFrame)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end