@interface MSBucketBarConfigurationController
- (BOOL)isBucketBarHiddenForMailboxes:(id)a3;
- (BOOL)setBucketBarHidden:(BOOL)a3 forMailboxes:(id)a4;
- (MSBucketBarConfigurationController)init;
- (id)stateCaptureInformation;
- (int64_t)selectedBucketForMailboxes:(id)a3;
- (void)bucketBarConfigurationProvider:(id)a3 didChangeConfiguration:(id)a4;
- (void)setSelectedBucket:(int64_t)a3 mailboxes:(id)a4;
@end

@implementation MSBucketBarConfigurationController

- (BOOL)isBucketBarHiddenForMailboxes:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F914758, &qword_257FB2C28);
  v4 = sub_257FA96A0();
  v5 = self;
  v6 = MSBucketBarConfigurationController.isBucketBarHidden(forMailboxes:)(v4);

  return v6;
}

- (int64_t)selectedBucketForMailboxes:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F914758, &qword_257FB2C28);
  v4 = sub_257FA96A0();
  v5 = self;
  v6 = MSBucketBarConfigurationController.selectedBucket(forMailboxes:)(v4);

  return v6;
}

- (BOOL)setBucketBarHidden:(BOOL)a3 forMailboxes:(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F914758, &qword_257FB2C28);
  v6 = sub_257FA96A0();
  v7 = self;
  v8 = MSBucketBarConfigurationController.setBucketBarHidden(_:forMailboxes:)(a3, v6);

  return v8;
}

- (void)setSelectedBucket:(int64_t)a3 mailboxes:(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F914758, &qword_257FB2C28);
  v6 = sub_257FA96A0();
  v7 = self;
  MSBucketBarConfigurationController.setSelectedBucket(_:mailboxes:)(a3, v6);
}

- (id)stateCaptureInformation
{
  v2 = self;
  MSBucketBarConfigurationController.stateCaptureInformation()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9147C8, qword_257FB2C38);
  v3 = sub_257FA9600();

  return v3;
}

- (MSBucketBarConfigurationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bucketBarConfigurationProvider:(id)a3 didChangeConfiguration:(id)a4
{
  sub_257F909B0(0, &qword_280CFF6A0, 0x277CCABB0);
  v5 = sub_257FA9610();
  swift_unknownObjectRetain();
  v6 = self;
  sub_257FA81B8(v5);
  swift_unknownObjectRelease();
}

@end