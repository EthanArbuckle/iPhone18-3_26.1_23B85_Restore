@interface BlastDoorPassPreview_PassText
- (BlastDoorColor)color;
- (BlastDoorPassPreview_PassText)init;
- (NSString)description;
@end

@implementation BlastDoorPassPreview_PassText

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText);
  v5 = *&self->passPreview_PassText[OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText];
  v6 = *&self->passPreview_PassText[OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText + 8];
  v7 = *&self->passPreview_PassText[OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText + 24];

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorColor)color
{
  v2 = self + OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText;
  v3 = type metadata accessor for _ObjCColorWrapper();
  v8 = *(v2 + 2);
  v9 = *(v2 + 1);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorColor_color];
  *v5 = v9;
  *(v5 + 1) = v8;
  v10.receiver = v4;
  v10.super_class = v3;
  v6 = [(BlastDoorPassPreview_PassText *)&v10 init];

  return v6;
}

- (BlastDoorPassPreview_PassText)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end