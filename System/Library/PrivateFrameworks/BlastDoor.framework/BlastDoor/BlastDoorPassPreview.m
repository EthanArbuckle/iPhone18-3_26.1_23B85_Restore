@interface BlastDoorPassPreview
- (BlastDoorColor)backgroundColor;
- (BlastDoorPassPreview)init;
- (BlastDoorPassPreview_PassBackground)background;
- (BlastDoorPassPreview_PassImage)headerImage;
- (BlastDoorPassPreview_PassImage)icon;
- (BlastDoorPassPreview_PassText)primaryText;
- (BlastDoorPassPreview_PassText)secondaryText;
- (BlastDoorPassPreview_PassText)tertiaryText;
- (NSString)description;
@end

@implementation BlastDoorPassPreview

- (NSString)description
{
  sub_214497A24(self + OBJC_IVAR___BlastDoorPassPreview_passPreview, v4);
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorPassPreview_PassImage)headerImage
{
  v2 = self;
  v3 = sub_21456D448();

  return v3;
}

- (BlastDoorPassPreview_PassImage)icon
{
  v2 = self;
  v3 = sub_21456D5F4();

  return v3;
}

- (BlastDoorPassPreview_PassBackground)background
{
  sub_2144966B0(&self->passPreview[OBJC_IVAR___BlastDoorPassPreview_passPreview + 872], v7);
  v2 = type metadata accessor for _ObjCPassPreview_PassBackgroundWrapper();
  v3 = objc_allocWithZone(v2);
  sub_2144966B0(v7, v3 + OBJC_IVAR___BlastDoorPassPreview_PassBackground_passPreview_PassBackground);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = [(BlastDoorPassPreview *)&v6 init];
  sub_2144966E8(v7);

  return v4;
}

- (BlastDoorPassPreview_PassText)primaryText
{
  v2 = self + OBJC_IVAR___BlastDoorPassPreview_passPreview;
  v3 = *&self->passPreview[OBJC_IVAR___BlastDoorPassPreview_passPreview + 1352];
  if (v3)
  {
    v4 = (v2 + 1368);
    v5 = *(v2 + 169);
    v6 = type metadata accessor for _ObjCPassPreview_PassTextWrapper();
    v11 = v4[1];
    v12 = *v4;
    v7 = objc_allocWithZone(v6);
    v8 = &v7[OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText];
    *v8 = v5;
    *(v8 + 1) = v3;
    *(v8 + 1) = v12;
    *(v8 + 2) = v11;
    v13.receiver = v7;
    v13.super_class = v6;

    v9 = [(BlastDoorPassPreview *)&v13 init];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BlastDoorPassPreview_PassText)secondaryText
{
  v2 = self + OBJC_IVAR___BlastDoorPassPreview_passPreview;
  v3 = *&self->passPreview[OBJC_IVAR___BlastDoorPassPreview_passPreview + 1400];
  if (v3)
  {
    v4 = (v2 + 1416);
    v5 = *(v2 + 175);
    v6 = type metadata accessor for _ObjCPassPreview_PassTextWrapper();
    v11 = v4[1];
    v12 = *v4;
    v7 = objc_allocWithZone(v6);
    v8 = &v7[OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText];
    *v8 = v5;
    *(v8 + 1) = v3;
    *(v8 + 1) = v12;
    *(v8 + 2) = v11;
    v13.receiver = v7;
    v13.super_class = v6;

    v9 = [(BlastDoorPassPreview *)&v13 init];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BlastDoorPassPreview_PassText)tertiaryText
{
  v2 = self + OBJC_IVAR___BlastDoorPassPreview_passPreview;
  v3 = *&self->passPreview[OBJC_IVAR___BlastDoorPassPreview_passPreview + 1448];
  if (v3)
  {
    v4 = (v2 + 1464);
    v5 = *(v2 + 181);
    v6 = type metadata accessor for _ObjCPassPreview_PassTextWrapper();
    v11 = v4[1];
    v12 = *v4;
    v7 = objc_allocWithZone(v6);
    v8 = &v7[OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText];
    *v8 = v5;
    *(v8 + 1) = v3;
    *(v8 + 1) = v12;
    *(v8 + 2) = v11;
    v13.receiver = v7;
    v13.super_class = v6;

    v9 = [(BlastDoorPassPreview *)&v13 init];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BlastDoorColor)backgroundColor
{
  sub_214497A24(self + OBJC_IVAR___BlastDoorPassPreview_passPreview, v12);
  v3 = self;
  v9 = v14;
  v10 = v13;
  sub_214497A5C(v12);
  v4 = type metadata accessor for _ObjCColorWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorColor_color];
  *v6 = v10;
  *(v6 + 1) = v9;
  v11.receiver = v5;
  v11.super_class = v4;
  v7 = [(BlastDoorPassPreview *)&v11 init];

  return v7;
}

- (BlastDoorPassPreview)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end