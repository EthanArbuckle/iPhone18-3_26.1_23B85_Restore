@interface BlastDoorStickerAttachmentInfo
- (BlastDoorStickerAttachmentInfo)init;
- (CGPoint)stickerOffset;
- (NSString)balloonBundleID;
- (NSString)description;
- (NSString)stickerExternalURI;
- (double)parentPreviewWidth;
- (double)stickerRotation;
- (double)stickerScale;
- (unint64_t)associatedPositionIntent;
- (unint64_t)positionIntent;
- (unint64_t)stickerPositionVersion;
@end

@implementation BlastDoorStickerAttachmentInfo

- (NSString)description
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo, 0x139uLL);
  memcpy(v6, self + OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo, sizeof(v6));
  sub_2142E371C(__dst, &v5);
  sub_2146D9608();
  v3 = sub_2146D9588();

  return v3;
}

- (NSString)stickerExternalURI
{
  v2 = *&self->stickerAttachmentInfo[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 136];
  if (v2)
  {
    if (v2 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v4 = *&self->stickerAttachmentInfo[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 128];
    v5 = *&self->stickerAttachmentInfo[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 136];

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

- (NSString)balloonBundleID
{
  v2 = *&self->stickerAttachmentInfo[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 176];
  if (v2)
  {
    if (v2 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v4 = *&self->stickerAttachmentInfo[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 168];
    v5 = *&self->stickerAttachmentInfo[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 176];

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

- (unint64_t)positionIntent
{
  if (self->stickerAttachmentInfo[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 200])
  {
    return 0;
  }

  else
  {
    return *&self->stickerAttachmentInfo[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 192];
  }
}

- (unint64_t)associatedPositionIntent
{
  if (self->stickerAttachmentInfo[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 216])
  {
    return 0;
  }

  else
  {
    return *&self->stickerAttachmentInfo[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 208];
  }
}

- (double)parentPreviewWidth
{
  result = *&self->stickerAttachmentInfo[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 224];
  if (self->stickerAttachmentInfo[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 232])
  {
    return 0.0;
  }

  return result;
}

- (CGPoint)stickerOffset
{
  v2 = *&self->stickerAttachmentInfo[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 240];
  v3 = *&self->stickerAttachmentInfo[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 248];
  if (self->stickerAttachmentInfo[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 256])
  {
    v2 = 0.0;
    v3 = 0.0;
  }

  result.y = v3;
  result.x = v2;
  return result;
}

- (double)stickerScale
{
  result = *&self->stickerAttachmentInfo[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 264];
  if (self->stickerAttachmentInfo[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 272])
  {
    return 0.0;
  }

  return result;
}

- (double)stickerRotation
{
  result = *&self->stickerAttachmentInfo[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 280];
  if (self->stickerAttachmentInfo[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 288])
  {
    return 0.0;
  }

  return result;
}

- (unint64_t)stickerPositionVersion
{
  if (self->stickerAttachmentInfo[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 304])
  {
    return 0;
  }

  else
  {
    return *&self->stickerAttachmentInfo[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo + 296];
  }
}

- (BlastDoorStickerAttachmentInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end