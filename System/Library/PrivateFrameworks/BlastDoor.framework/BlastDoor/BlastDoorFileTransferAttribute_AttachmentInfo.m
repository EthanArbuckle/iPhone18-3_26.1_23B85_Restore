@interface BlastDoorFileTransferAttribute_AttachmentInfo
- (BlastDoorFileTransferAttribute_AttachmentInfo)init;
- (NSString)encryptionKey;
@end

@implementation BlastDoorFileTransferAttribute_AttachmentInfo

- (NSString)encryptionKey
{
  v2 = self + OBJC_IVAR___BlastDoorFileTransferAttribute_AttachmentInfo_fileTransferAttribute_AttachmentInfo[0];
  v3 = &v2[*(type metadata accessor for FileTransferAttribute.AttachmentInfo(0) + 32)];
  v4 = *v3;
  v5 = *(v3 + 1);

  v6 = sub_2146D9588();

  return v6;
}

- (BlastDoorFileTransferAttribute_AttachmentInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end