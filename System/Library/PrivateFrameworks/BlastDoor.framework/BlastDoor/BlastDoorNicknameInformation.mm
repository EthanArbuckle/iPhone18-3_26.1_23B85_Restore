@interface BlastDoorNicknameInformation
- (BlastDoorNicknameInformation)init;
- (NSData)avatarRecipeDataTag;
- (NSData)decryptionKey;
- (NSData)lowResWallpaperTag;
- (NSData)wallpaperMetadataTag;
- (NSData)wallpaperTag;
- (NSString)description;
- (int64_t)updateInfoIncluded;
@end

@implementation BlastDoorNicknameInformation

- (NSString)description
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation, 0x109uLL);
  memcpy(v6, self + OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation, sizeof(v6));
  sub_2142FB7A4(__dst, &v5);
  sub_2146D9608();
  v3 = sub_2146D9588();

  return v3;
}

- (NSData)decryptionKey
{
  v2 = *&self->nicknameInformation[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 56];
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v3 = *&self->nicknameInformation[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 48];
    sub_21402D9F8(v3, v2);
    v4 = sub_2146D8A38();
    sub_213FDC6BC(v3, v2);

    return v4;
  }

  return result;
}

- (int64_t)updateInfoIncluded
{
  if (self->nicknameInformation[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 80])
  {
    return 0;
  }

  else
  {
    return *&self->nicknameInformation[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 72];
  }
}

- (NSData)wallpaperTag
{
  v2 = *&self->nicknameInformation[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 128];
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    if (v2 >> 60 == 15)
    {
      v3 = 0;
    }

    else
    {
      v4 = *&self->nicknameInformation[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 120];
      sub_213FDCA18(v4, v2);
      v5 = sub_2146D8A38();
      sub_214032564(v4, v2);
      v3 = v5;
    }

    return v3;
  }

  return result;
}

- (NSData)lowResWallpaperTag
{
  v2 = *&self->nicknameInformation[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 168];
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    if (v2 >> 60 == 15)
    {
      v3 = 0;
    }

    else
    {
      v4 = *&self->nicknameInformation[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 160];
      sub_213FDCA18(v4, v2);
      v5 = sub_2146D8A38();
      sub_214032564(v4, v2);
      v3 = v5;
    }

    return v3;
  }

  return result;
}

- (NSData)wallpaperMetadataTag
{
  v2 = *&self->nicknameInformation[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 208];
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    if (v2 >> 60 == 15)
    {
      v3 = 0;
    }

    else
    {
      v4 = *&self->nicknameInformation[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 200];
      sub_213FDCA18(v4, v2);
      v5 = sub_2146D8A38();
      sub_214032564(v4, v2);
      v3 = v5;
    }

    return v3;
  }

  return result;
}

- (NSData)avatarRecipeDataTag
{
  v2 = *&self->nicknameInformation[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 248];
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    if (v2 >> 60 == 15)
    {
      v3 = 0;
    }

    else
    {
      v4 = *&self->nicknameInformation[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation + 240];
      sub_213FDCA18(v4, v2);
      v5 = sub_2146D8A38();
      sub_214032564(v4, v2);
      v3 = v5;
    }

    return v3;
  }

  return result;
}

- (BlastDoorNicknameInformation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end