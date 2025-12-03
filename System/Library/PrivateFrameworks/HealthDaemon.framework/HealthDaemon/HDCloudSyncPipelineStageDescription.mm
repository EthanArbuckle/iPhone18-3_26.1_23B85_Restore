@interface HDCloudSyncPipelineStageDescription
- (HDCloudSyncPipelineStageDescription)init;
- (NSString)description;
- (id)copyWithZone:(void *)zone;
- (id)descriptionForLogs;
- (id)mergeWithDescription:(id)description;
- (id)serializedPrettyPrinted:(BOOL)printed error:(id *)error;
- (id)setAccountInfoPartition:(id)partition hasValidCredentials:(BOOL)credentials accountStatus:(id)status encryptionStatus:(id)encryptionStatus;
@end

@implementation HDCloudSyncPipelineStageDescription

- (id)mergeWithDescription:(id)description
{
  descriptionCopy = description;
  selfCopy = self;
  HDCloudSyncPipelineStageDescription.merge(with:)(v6, descriptionCopy);
  v8 = v7;

  return v8;
}

- (id)setAccountInfoPartition:(id)partition hasValidCredentials:(BOOL)credentials accountStatus:(id)status encryptionStatus:(id)encryptionStatus
{
  v8 = sub_22911C35C();
  v10 = v9;
  v11 = sub_22911C35C();
  v13 = v12;
  v14 = sub_22911C35C();
  v16 = v15;
  selfCopy = self;
  v18._countAndFlagsBits = v8;
  v18._object = v10;
  v19._countAndFlagsBits = v11;
  v19._object = v13;
  v20._countAndFlagsBits = v14;
  v20._object = v16;
  HDCloudSyncPipelineStageDescription.setAccountInfo(partition:hasValidCredentials:accountStatus:encryptionStatus:)(v21, v18, credentials, v19, v20);
  v23 = v22;

  return v23;
}

- (id)serializedPrettyPrinted:(BOOL)printed error:(id *)error
{
  selfCopy = self;
  v6 = HDCloudSyncPipelineStageDescription.serialized(prettyPrinted:)(printed);
  v8 = v7;

  v9 = sub_22911B80C();
  sub_2289BCF3C(v6, v8);

  return v9;
}

- (id)descriptionForLogs
{
  selfCopy = self;
  v3 = HDCloudSyncPipelineStageDescription.descriptionForLogs()();
  v5 = v4;

  v6 = sub_22911B80C();
  sub_2289BCF3C(v3, v5);

  return v6;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  HDCloudSyncPipelineStageDescription.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_22911CACC();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (NSString)description
{
  selfCopy = self;
  HDCloudSyncPipelineStageDescription.description.getter();

  v3 = sub_22911C34C();

  return v3;
}

- (HDCloudSyncPipelineStageDescription)init
{
  v2 = (self + OBJC_IVAR___HDCloudSyncPipelineStageDescription__accountInfo);
  *v2 = 0u;
  v2[1] = 0u;
  *(&self->super.isa + OBJC_IVAR___HDCloudSyncPipelineStageDescription__descriptions) = MEMORY[0x277D84F90];
  v4.receiver = self;
  v4.super_class = HDCloudSyncPipelineStageDescription;
  return [(HDCloudSyncPipelineStageDescription *)&v4 init];
}

@end