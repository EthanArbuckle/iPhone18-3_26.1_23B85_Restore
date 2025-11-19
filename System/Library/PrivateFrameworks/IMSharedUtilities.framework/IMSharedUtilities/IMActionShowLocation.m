@interface IMActionShowLocation
- (IMActionShowLocation)init;
- (IMActionShowLocation)initWithLatitude:(id)a3 longitude:(id)a4 query:(id)a5 label:(id)a6 fallbackUrl:(id)a7;
- (id)dictionaryRepresentation;
@end

@implementation IMActionShowLocation

- (IMActionShowLocation)initWithLatitude:(id)a3 longitude:(id)a4 query:(id)a5 label:(id)a6 fallbackUrl:(id)a7
{
  v8 = a6;
  if (a5)
  {
    v12 = sub_1A88C82E8();
    v14 = v13;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v12 = 0;
  v14 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = sub_1A88C82E8();
  v16 = v15;
  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_4:
  a7 = sub_1A88C82E8();
  v18 = v17;
LABEL_8:
  v19 = a3;
  v20 = a4;
  *(self + OBJC_IVAR___IMActionShowLocation_latitude) = v19;
  *(self + OBJC_IVAR___IMActionShowLocation_longitude) = v20;
  v21 = (self + OBJC_IVAR___IMActionShowLocation_query);
  *v21 = v12;
  v21[1] = v14;
  v22 = (self + OBJC_IVAR___IMActionShowLocation_label);
  *v22 = v8;
  v22[1] = v16;
  v23 = (self + OBJC_IVAR___IMActionShowLocation_fallbackUrl);
  *v23 = a7;
  v23[1] = v18;
  v25.receiver = self;
  v25.super_class = IMActionShowLocation;
  return [(IMActionShowLocation *)&v25 init];
}

- (id)dictionaryRepresentation
{
  v2 = self;
  sub_1A8770700();

  v3 = sub_1A88C8188();

  return v3;
}

- (IMActionShowLocation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end