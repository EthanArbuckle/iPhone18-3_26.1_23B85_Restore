@interface BlastDoorFileTransferAttribute_ImageInfo
- (BlastDoorFileTransferAttribute_ImageInfo)init;
- (CGSize)size;
- (NSString)description;
@end

@implementation BlastDoorFileTransferAttribute_ImageInfo

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorFileTransferAttribute_ImageInfo_fileTransferAttribute_ImageInfo);
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (CGSize)size
{
  v2 = *(&self->super.isa + OBJC_IVAR___BlastDoorFileTransferAttribute_ImageInfo_fileTransferAttribute_ImageInfo);
  v3 = *&self->fileTransferAttribute_ImageInfo[OBJC_IVAR___BlastDoorFileTransferAttribute_ImageInfo_fileTransferAttribute_ImageInfo];
  result.height = v3;
  result.width = v2;
  return result;
}

- (BlastDoorFileTransferAttribute_ImageInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end