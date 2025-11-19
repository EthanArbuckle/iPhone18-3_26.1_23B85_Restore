@interface BlastDoorAudioMessageAttachmentInfo
- (BlastDoorAudioMessageAttachmentInfo)init;
- (NSString)description;
@end

@implementation BlastDoorAudioMessageAttachmentInfo

- (NSString)description
{
  v2 = *&self->audioMessageAttachmentInfo[OBJC_IVAR___BlastDoorAudioMessageAttachmentInfo_audioMessageAttachmentInfo + 8];
  v3 = *&self->audioMessageAttachmentInfo[OBJC_IVAR___BlastDoorAudioMessageAttachmentInfo_audioMessageAttachmentInfo + 16];
  v6 = *(&self->super.isa + OBJC_IVAR___BlastDoorAudioMessageAttachmentInfo_audioMessageAttachmentInfo);
  v7 = *&self->audioMessageAttachmentInfo[OBJC_IVAR___BlastDoorAudioMessageAttachmentInfo_audioMessageAttachmentInfo];
  v8 = self->audioMessageAttachmentInfo[OBJC_IVAR___BlastDoorAudioMessageAttachmentInfo_audioMessageAttachmentInfo + 24];
  v9 = *&self->audioMessageAttachmentInfo[OBJC_IVAR___BlastDoorAudioMessageAttachmentInfo_audioMessageAttachmentInfo + 32];
  v10 = *&self->audioMessageAttachmentInfo[OBJC_IVAR___BlastDoorAudioMessageAttachmentInfo_audioMessageAttachmentInfo + 40];

  sub_213FDC9D0(v2, v3);

  sub_2146D9608();
  v4 = sub_2146D9588();

  return v4;
}

- (BlastDoorAudioMessageAttachmentInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end