@interface MSBucketBarConfigurationController
- (BOOL)isBucketBarHiddenForMailboxes:(id)mailboxes;
- (BOOL)setBucketBarHidden:(BOOL)hidden forMailboxes:(id)mailboxes;
- (MSBucketBarConfigurationController)init;
- (id)stateCaptureInformation;
- (int64_t)selectedBucketForMailboxes:(id)mailboxes;
- (void)bucketBarConfigurationProvider:(id)provider didChangeConfiguration:(id)configuration;
- (void)setSelectedBucket:(int64_t)bucket mailboxes:(id)mailboxes;
@end

@implementation MSBucketBarConfigurationController

- (BOOL)isBucketBarHiddenForMailboxes:(id)mailboxes
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F914758, &qword_257FB2C28);
  v4 = sub_257FA96A0();
  selfCopy = self;
  v6 = MSBucketBarConfigurationController.isBucketBarHidden(forMailboxes:)(v4);

  return v6;
}

- (int64_t)selectedBucketForMailboxes:(id)mailboxes
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F914758, &qword_257FB2C28);
  v4 = sub_257FA96A0();
  selfCopy = self;
  v6 = MSBucketBarConfigurationController.selectedBucket(forMailboxes:)(v4);

  return v6;
}

- (BOOL)setBucketBarHidden:(BOOL)hidden forMailboxes:(id)mailboxes
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F914758, &qword_257FB2C28);
  v6 = sub_257FA96A0();
  selfCopy = self;
  v8 = MSBucketBarConfigurationController.setBucketBarHidden(_:forMailboxes:)(hidden, v6);

  return v8;
}

- (void)setSelectedBucket:(int64_t)bucket mailboxes:(id)mailboxes
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F914758, &qword_257FB2C28);
  v6 = sub_257FA96A0();
  selfCopy = self;
  MSBucketBarConfigurationController.setSelectedBucket(_:mailboxes:)(bucket, v6);
}

- (id)stateCaptureInformation
{
  selfCopy = self;
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

- (void)bucketBarConfigurationProvider:(id)provider didChangeConfiguration:(id)configuration
{
  sub_257F909B0(0, &qword_280CFF6A0, 0x277CCABB0);
  v5 = sub_257FA9610();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_257FA81B8(v5);
  swift_unknownObjectRelease();
}

@end