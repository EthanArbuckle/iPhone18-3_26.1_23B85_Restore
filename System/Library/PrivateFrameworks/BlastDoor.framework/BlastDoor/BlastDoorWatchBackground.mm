@interface BlastDoorWatchBackground
- (BlastDoorImage)backgroundImage;
- (BlastDoorWatchBackground)init;
- (NSString)description;
- (NSString)extensionIdentifier;
- (double)luminance;
@end

@implementation BlastDoorWatchBackground

- (NSString)description
{
  sub_2140A6810(self + OBJC_IVAR___BlastDoorWatchBackground_watchBackground, v4);
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorImage)backgroundImage
{
  v2 = self;
  v3 = sub_214551F28();

  return v3;
}

- (double)luminance
{
  sub_2140A6810(self + OBJC_IVAR___BlastDoorWatchBackground_watchBackground, v4);
  if (v6)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = v5;
    sub_2142E4DA0(v4);
    return v2;
  }

  return result;
}

- (NSString)extensionIdentifier
{
  v2 = *&self->watchBackground[OBJC_IVAR___BlastDoorWatchBackground_watchBackground + 464];
  v3 = *&self->watchBackground[OBJC_IVAR___BlastDoorWatchBackground_watchBackground + 472];

  v4 = sub_2146D9588();

  return v4;
}

- (BlastDoorWatchBackground)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end