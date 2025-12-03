@interface IMActionShowLocation
- (IMActionShowLocation)init;
- (IMActionShowLocation)initWithLatitude:(id)latitude longitude:(id)longitude query:(id)query label:(id)label fallbackUrl:(id)url;
- (id)dictionaryRepresentation;
@end

@implementation IMActionShowLocation

- (IMActionShowLocation)initWithLatitude:(id)latitude longitude:(id)longitude query:(id)query label:(id)label fallbackUrl:(id)url
{
  labelCopy = label;
  if (query)
  {
    v12 = sub_1A88C82E8();
    v14 = v13;
    if (labelCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    if (url)
    {
      goto LABEL_4;
    }

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v12 = 0;
  v14 = 0;
  if (!label)
  {
    goto LABEL_6;
  }

LABEL_3:
  labelCopy = sub_1A88C82E8();
  v16 = v15;
  if (!url)
  {
    goto LABEL_7;
  }

LABEL_4:
  url = sub_1A88C82E8();
  v18 = v17;
LABEL_8:
  latitudeCopy = latitude;
  longitudeCopy = longitude;
  *(self + OBJC_IVAR___IMActionShowLocation_latitude) = latitudeCopy;
  *(self + OBJC_IVAR___IMActionShowLocation_longitude) = longitudeCopy;
  v21 = (self + OBJC_IVAR___IMActionShowLocation_query);
  *v21 = v12;
  v21[1] = v14;
  v22 = (self + OBJC_IVAR___IMActionShowLocation_label);
  *v22 = labelCopy;
  v22[1] = v16;
  v23 = (self + OBJC_IVAR___IMActionShowLocation_fallbackUrl);
  *v23 = url;
  v23[1] = v18;
  v25.receiver = self;
  v25.super_class = IMActionShowLocation;
  return [(IMActionShowLocation *)&v25 init];
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
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