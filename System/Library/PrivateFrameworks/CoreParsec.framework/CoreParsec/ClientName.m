@interface ClientName
+ (id)extractClientNameFromString:(id)a3;
+ (id)extractClientNameFromUserAgent:(id)a3 allowAbbreviation:(BOOL)a4;
@end

@implementation ClientName

+ (id)extractClientNameFromUserAgent:(id)a3 allowAbbreviation:(BOOL)a4
{
  if (a3)
  {
    v5 = sub_1B1122A5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  swift_getObjCClassMetadata();
  static ClientName.extractClientNameFromUserAgent(_:allowAbbreviation:)(v5, v7, a4);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1B1122A4C();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)extractClientNameFromString:(id)a3
{
  if (a3)
  {
    v3 = sub_1B1122A5C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  static ClientName.extractClientNameFromString(_:)(v3, v5);
  v7 = v6;

  if (v7)
  {
    v8 = sub_1B1122A4C();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end