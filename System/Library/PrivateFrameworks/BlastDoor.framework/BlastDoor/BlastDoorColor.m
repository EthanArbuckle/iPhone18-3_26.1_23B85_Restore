@interface BlastDoorColor
- (BlastDoorColor)init;
- (NSString)description;
@end

@implementation BlastDoorColor

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorColor_color);
  v5 = *&self->color[OBJC_IVAR___BlastDoorColor_color + 8];
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorColor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end