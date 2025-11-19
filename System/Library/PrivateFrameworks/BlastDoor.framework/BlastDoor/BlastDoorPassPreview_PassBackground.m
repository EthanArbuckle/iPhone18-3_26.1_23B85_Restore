@interface BlastDoorPassPreview_PassBackground
- (BlastDoorColor)color;
- (BlastDoorPassPreview_PassBackground)init;
- (BlastDoorPassPreview_PassImage)image;
- (NSString)description;
@end

@implementation BlastDoorPassPreview_PassBackground

- (NSString)description
{
  sub_2144966B0(self + OBJC_IVAR___BlastDoorPassPreview_PassBackground_passPreview_PassBackground, v4);
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorPassPreview_PassImage)image
{
  v2 = self;
  v3 = sub_214588F9C();

  return v3;
}

- (BlastDoorColor)color
{
  v2 = &self->passPreview_PassBackground[OBJC_IVAR___BlastDoorPassPreview_PassBackground_passPreview_PassBackground + 432];
  v3 = type metadata accessor for _ObjCColorWrapper();
  v8 = *(v2 + 1);
  v9 = *v2;
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorColor_color];
  *v5 = v9;
  *(v5 + 1) = v8;
  v10.receiver = v4;
  v10.super_class = v3;
  v6 = [(BlastDoorPassPreview_PassBackground *)&v10 init];

  return v6;
}

- (BlastDoorPassPreview_PassBackground)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end