@interface BlastDoorOrderPreview
- (BlastDoorColor)backgroundColor;
- (BlastDoorOrderPreview)init;
- (BlastDoorOrderPreview_OrderImage)headerImage;
- (BlastDoorOrderPreview_OrderText)primaryText;
- (BlastDoorOrderPreview_OrderText)secondaryText;
- (BlastDoorOrderPreview_OrderText)tertiaryText;
- (NSString)description;
@end

@implementation BlastDoorOrderPreview

- (NSString)description
{
  sub_214392134(self + OBJC_IVAR___BlastDoorOrderPreview_orderPreview, &v4);
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorOrderPreview_OrderImage)headerImage
{
  v2 = self;
  v3 = sub_21456C9E4();

  return v3;
}

- (BlastDoorColor)backgroundColor
{
  v2 = self + OBJC_IVAR___BlastDoorOrderPreview_orderPreview;
  if (self->orderPreview[OBJC_IVAR___BlastDoorOrderPreview_orderPreview + 472])
  {
    v3 = 0;
  }

  else
  {
    v4 = type metadata accessor for _ObjCColorWrapper();
    v8 = *(v2 + 29);
    v9 = *(v2 + 28);
    v5 = objc_allocWithZone(v4);
    v6 = &v5[OBJC_IVAR___BlastDoorColor_color];
    *v6 = v9;
    *(v6 + 1) = v8;
    v10.receiver = v5;
    v10.super_class = v4;
    v3 = [(BlastDoorOrderPreview *)&v10 init];
  }

  return v3;
}

- (BlastDoorOrderPreview_OrderText)primaryText
{
  v3 = *&self->orderPreview[OBJC_IVAR___BlastDoorOrderPreview_orderPreview + 480];
  v2 = *&self->orderPreview[OBJC_IVAR___BlastDoorOrderPreview_orderPreview + 488];
  v4 = &self->orderPreview[OBJC_IVAR___BlastDoorOrderPreview_orderPreview + 496];
  v5 = self->orderPreview[OBJC_IVAR___BlastDoorOrderPreview_orderPreview + 528];
  v6 = type metadata accessor for _ObjCOrderPreview_OrderTextWrapper();
  v11 = *(v4 + 1);
  v12 = *v4;
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText];
  *v8 = v3;
  *(v8 + 1) = v2;
  *(v8 + 1) = v12;
  *(v8 + 2) = v11;
  v8[48] = v5;
  v13.receiver = v7;
  v13.super_class = v6;

  v9 = [(BlastDoorOrderPreview *)&v13 init];

  return v9;
}

- (BlastDoorOrderPreview_OrderText)secondaryText
{
  v2 = self + OBJC_IVAR___BlastDoorOrderPreview_orderPreview;
  v3 = *&self->orderPreview[OBJC_IVAR___BlastDoorOrderPreview_orderPreview + 544];
  if (v3)
  {
    v4 = v2[592];
    v5 = *(v2 + 68);
    v6 = type metadata accessor for _ObjCOrderPreview_OrderTextWrapper();
    v11 = *(v2 + 36);
    v12 = *(v2 + 35);
    v7 = objc_allocWithZone(v6);
    v8 = &v7[OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText];
    *v8 = v5;
    *(v8 + 1) = v3;
    *(v8 + 1) = v12;
    *(v8 + 2) = v11;
    v8[48] = v4 & 1;
    v13.receiver = v7;
    v13.super_class = v6;

    v9 = [(BlastDoorOrderPreview *)&v13 init];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BlastDoorOrderPreview_OrderText)tertiaryText
{
  v2 = self + OBJC_IVAR___BlastDoorOrderPreview_orderPreview;
  v3 = *&self->orderPreview[OBJC_IVAR___BlastDoorOrderPreview_orderPreview + 600];
  if (v3)
  {
    v4 = v2[648];
    v5 = (v2 + 616);
    v6 = *(v2 + 75);
    v7 = type metadata accessor for _ObjCOrderPreview_OrderTextWrapper();
    v12 = v5[1];
    v13 = *v5;
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText];
    *v9 = v6;
    *(v9 + 1) = v3;
    *(v9 + 1) = v13;
    *(v9 + 2) = v12;
    v9[48] = v4 & 1;
    v14.receiver = v8;
    v14.super_class = v7;

    v10 = [(BlastDoorOrderPreview *)&v14 init];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BlastDoorOrderPreview)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end