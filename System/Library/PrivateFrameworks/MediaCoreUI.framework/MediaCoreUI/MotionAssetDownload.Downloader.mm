@interface MotionAssetDownload.Downloader
- (_TtCO11MediaCoreUI19MotionAssetDownload10Downloader)init;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
@end

@implementation MotionAssetDownload.Downloader

- (_TtCO11MediaCoreUI19MotionAssetDownload10Downloader)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtCO11MediaCoreUI19MotionAssetDownload10Downloader____lazy_storage___downloadSession) = 0;
  *(&self->super.isa + OBJC_IVAR____TtCO11MediaCoreUI19MotionAssetDownload10Downloader_downloadContainers) = MEMORY[0x1E69E7CC8];
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(MotionAssetDownload.Downloader *)&v5 init];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_1C5BCB214();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = qword_1EC1909D0;
  taskCopy = task;
  selfCopy = self;
  errorCopy = error;
  v16 = taskCopy;
  v17 = selfCopy;
  v18 = errorCopy;
  if (v12 != -1)
  {
    swift_once();
  }

  v19 = qword_1EC19A688;
  v20 = sub_1C59F832C(&qword_1EC1930A8, type metadata accessor for MotionCacheActor);
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = v16;
  v21[5] = v17;
  v21[6] = v18;

  sub_1C5AD0FB8(0, 0, v10, &unk_1C5BD7478, v21);
}

@end