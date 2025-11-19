@interface BlastDoorFileTransferAttributeAttachmentSubtypeWrapper
- (BlastDoorAudioMessageAttachmentInfo)audioMessage;
- (BlastDoorEmojiImageAttachmentInfo)emojiImage;
- (BlastDoorFileTransferAttributeAttachmentSubtypeWrapper)init;
- (BlastDoorGeneralAttachmentInfo)unspecified;
- (BlastDoorLivePhotoAttachmentInfo)livePhoto;
- (BlastDoorStickerAttachmentInfo)sticker;
- (NSString)description;
- (unint64_t)type;
@end

@implementation BlastDoorFileTransferAttributeAttachmentSubtypeWrapper

- (NSString)description
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype, 0x139uLL);
  memcpy(v6, self + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype, sizeof(v6));
  sub_21431D304(__dst, &v5);
  sub_2146D9608();
  v3 = sub_2146D9588();

  return v3;
}

- (unint64_t)type
{
  memcpy(v4, self + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype, 0x139uLL);
  v2 = sub_214321D58(v4);
  sub_213FBF550(v4);
  return v2;
}

- (BlastDoorGeneralAttachmentInfo)unspecified
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype, sizeof(__dst));
  memcpy(v15, self + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype, 0x139uLL);
  if (sub_214321D58(v15))
  {
    v3 = 0;
  }

  else
  {
    v4 = sub_213FBF550(v15);
    v5 = *v4;
    v6 = v4[1];
    v7 = type metadata accessor for _ObjCGeneralAttachmentInfoWrapper();
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR___BlastDoorGeneralAttachmentInfo_generalAttachmentInfo];
    *v9 = v5;
    *(v9 + 1) = v6;
    memcpy(v13, __dst, 0x139uLL);
    v10 = *(sub_213FBF550(v13) + 8);
    v12.receiver = v8;
    v12.super_class = v7;

    v3 = [(BlastDoorFileTransferAttributeAttachmentSubtypeWrapper *)&v12 init];
  }

  return v3;
}

- (BlastDoorEmojiImageAttachmentInfo)emojiImage
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype, sizeof(__dst));
  memcpy(v13, self + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype, 0x139uLL);
  if (sub_214321D58(v13) == 1)
  {
    v3 = sub_213FBF550(v13);
    v4 = type metadata accessor for _ObjCEmojiImageAttachmentInfoWrapper();
    v5 = objc_allocWithZone(v4);
    memcpy(&v5[OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo], v3, 0x111uLL);
    memcpy(v11, __dst, 0x139uLL);
    v6 = sub_213FBF550(v11);
    sub_2142E346C(v6, v10);
    v9.receiver = v5;
    v9.super_class = v4;
    v7 = [(BlastDoorFileTransferAttributeAttachmentSubtypeWrapper *)&v9 init];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BlastDoorStickerAttachmentInfo)sticker
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype, sizeof(__dst));
  memcpy(v13, self + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype, 0x139uLL);
  if (sub_214321D58(v13) == 2)
  {
    v3 = sub_213FBF550(v13);
    v4 = type metadata accessor for _ObjCStickerAttachmentInfoWrapper();
    v5 = objc_allocWithZone(v4);
    memcpy(&v5[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo], v3, 0x139uLL);
    memcpy(v11, __dst, 0x139uLL);
    v6 = sub_213FBF550(v11);
    sub_2142E371C(v6, v10);
    v9.receiver = v5;
    v9.super_class = v4;
    v7 = [(BlastDoorFileTransferAttributeAttachmentSubtypeWrapper *)&v9 init];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BlastDoorLivePhotoAttachmentInfo)livePhoto
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype, sizeof(__dst));
  memcpy(v19, self + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype, 0x139uLL);
  if (sub_214321D58(v19) == 3)
  {
    v3 = sub_213FBF550(v19);
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    v7 = type metadata accessor for _ObjCLivePhotoAttachmentInfoWrapper();
    v15 = *v3;
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR___BlastDoorLivePhotoAttachmentInfo_livePhotoAttachmentInfo];
    *v9 = v15;
    *(v9 + 2) = v4;
    *(v9 + 3) = v5;
    v9[32] = v6;
    memcpy(v17, __dst, 0x139uLL);
    v10 = sub_213FBF550(v17);
    v11 = *(v10 + 8);
    v12 = *(v10 + 24);
    v16.receiver = v8;
    v16.super_class = v7;

    v13 = [(BlastDoorFileTransferAttributeAttachmentSubtypeWrapper *)&v16 init];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BlastDoorAudioMessageAttachmentInfo)audioMessage
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype, sizeof(__dst));
  memcpy(v23, self + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype, 0x139uLL);
  if (sub_214321D58(v23) == 4)
  {
    v3 = sub_213FBF550(v23);
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
    v9 = type metadata accessor for _ObjCAudioMessageAttachmentInfoWrapper();
    v19 = *v3;
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR___BlastDoorAudioMessageAttachmentInfo_audioMessageAttachmentInfo];
    *v11 = v19;
    *(v11 + 2) = v4;
    *(v11 + 3) = v5;
    v11[32] = v6;
    *(v11 + 5) = v7;
    *(v11 + 6) = v8;
    memcpy(v21, __dst, 0x139uLL);
    v12 = sub_213FBF550(v21);
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[3];
    v16 = v12[6];

    sub_213FDC9D0(v14, v15);
    v20.receiver = v10;
    v20.super_class = v9;

    v17 = [(BlastDoorFileTransferAttributeAttachmentSubtypeWrapper *)&v20 init];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BlastDoorFileTransferAttributeAttachmentSubtypeWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end