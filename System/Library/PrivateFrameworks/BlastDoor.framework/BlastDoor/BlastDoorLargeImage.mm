@interface BlastDoorLargeImage
- (BlastDoorLargeImage)init;
- (BlastDoorMachImage)image;
- (BlastDoorMediaMetadata)metadata;
@end

@implementation BlastDoorLargeImage

- (BlastDoorMachImage)image
{
  v3 = type metadata accessor for LargeImage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_213FB568C(self + OBJC_IVAR___BlastDoorLargeImage_largeImage, v6, type metadata accessor for LargeImage);
  v7 = *v6;
  selfCopy = self;

  sub_213FB5844(v6, type metadata accessor for LargeImage);
  v9 = type metadata accessor for _ObjCMachImageWrapper();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___BlastDoorMachImage_image] = v7;
  v13.receiver = v10;
  v13.super_class = v9;

  v11 = [(BlastDoorLargeImage *)&v13 init];

  return v11;
}

- (BlastDoorMediaMetadata)metadata
{
  v3 = type metadata accessor for MediaMetadata();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self + OBJC_IVAR___BlastDoorLargeImage_largeImage;
  v8 = type metadata accessor for LargeImage(0);
  sub_213FB568C(&v7[*(v8 + 20)], v6, type metadata accessor for MediaMetadata);
  v9 = type metadata accessor for _ObjCMediaMetadataWrapper(0);
  v10 = objc_allocWithZone(v9);
  sub_213FB568C(v6, v10 + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata, type metadata accessor for MediaMetadata);
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = [(BlastDoorLargeImage *)&v13 init];
  sub_213FB5844(v6, type metadata accessor for MediaMetadata);

  return v11;
}

- (BlastDoorLargeImage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end