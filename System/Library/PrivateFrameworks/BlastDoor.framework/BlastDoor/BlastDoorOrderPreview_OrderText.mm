@interface BlastDoorOrderPreview_OrderText
- (BlastDoorColor)overrideColor;
- (BlastDoorOrderPreview_OrderText)init;
- (NSString)description;
@end

@implementation BlastDoorOrderPreview_OrderText

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText);
  v5 = *&self->orderPreview_OrderText[OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText];
  v6 = *&self->orderPreview_OrderText[OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText + 8];
  v7 = *&self->orderPreview_OrderText[OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText + 24];
  v8 = self->orderPreview_OrderText[OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText + 40];

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorColor)overrideColor
{
  v2 = self + OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText;
  if (self->orderPreview_OrderText[OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText + 40])
  {
    v3 = 0;
  }

  else
  {
    v4 = type metadata accessor for _ObjCColorWrapper();
    v8 = *(v2 + 2);
    v9 = *(v2 + 1);
    v5 = objc_allocWithZone(v4);
    v6 = &v5[OBJC_IVAR___BlastDoorColor_color];
    *v6 = v9;
    *(v6 + 1) = v8;
    v10.receiver = v5;
    v10.super_class = v4;
    v3 = [(BlastDoorOrderPreview_OrderText *)&v10 init];
  }

  return v3;
}

- (BlastDoorOrderPreview_OrderText)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end