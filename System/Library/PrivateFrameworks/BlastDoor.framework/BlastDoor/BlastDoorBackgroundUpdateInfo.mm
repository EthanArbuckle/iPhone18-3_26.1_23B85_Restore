@interface BlastDoorBackgroundUpdateInfo
- (BOOL)has_fileSize;
- (BlastDoorBackgroundUpdateInfo)init;
- (NSString)chatId;
- (NSString)description;
- (NSString)encryptionKey;
- (unint64_t)fileSize;
- (unint64_t)posterDataVersion;
@end

@implementation BlastDoorBackgroundUpdateInfo

- (NSString)description
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo, 0x122uLL);
  memcpy(v6, self + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo, sizeof(v6));
  sub_2143087B4(__dst, v5);
  sub_2146D9608();
  v3 = sub_2146D9588();

  return v3;
}

- (NSString)encryptionKey
{
  v2 = *&self->backgroundUpdateInfo[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 184];
  if (v2)
  {
    if (v2 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v4 = *&self->backgroundUpdateInfo[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 176];
    v5 = *&self->backgroundUpdateInfo[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 184];

    v6 = sub_2146D9588();
    sub_213FDC6D0(v4, v2);
    v3 = v6;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)has_fileSize
{
  if ((self->backgroundUpdateInfo[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 225] & 1) == 0)
  {
    return (self->backgroundUpdateInfo[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 224] & 1) == 0;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

- (unint64_t)fileSize
{
  v2 = self + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo;
  if (self->backgroundUpdateInfo[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 225])
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v3 = v2[232];
    v4 = *(v2 + 28);
    if (v3)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

- (unint64_t)posterDataVersion
{
  if (self->backgroundUpdateInfo[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 240])
  {
    return 0;
  }

  else
  {
    return *&self->backgroundUpdateInfo[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 232];
  }
}

- (NSString)chatId
{
  v2 = *&self->backgroundUpdateInfo[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 272];
  if (v2)
  {
    if (v2 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v4 = *&self->backgroundUpdateInfo[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 264];
    v5 = *&self->backgroundUpdateInfo[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 272];

    v6 = sub_2146D9588();
    sub_213FDC6D0(v4, v2);
    v3 = v6;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BlastDoorBackgroundUpdateInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end