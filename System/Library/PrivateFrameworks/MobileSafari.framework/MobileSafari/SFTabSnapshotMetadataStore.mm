@interface SFTabSnapshotMetadataStore
- (NSURL)directoryURL;
- (SFTabSnapshotMetadataStore)init;
- (SFTabSnapshotMetadataStore)initWithDirectoryURL:(id)l;
- (void)deleteMetadataExceptIdentifiers:(NSSet *)identifiers completion:(id)completion;
- (void)deleteMetadataForIdentifier:(NSUUID *)identifier completion:(id)completion;
- (void)loadMetadataWithCompletion:(id)completion;
- (void)saveMetadata:(SFTabSnapshotMetadata *)metadata completion:(id)completion;
@end

@implementation SFTabSnapshotMetadataStore

- (SFTabSnapshotMetadataStore)initWithDirectoryURL:(id)l
{
  v3 = sub_18BC1EA98();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EA38();
  return sub_18B7B23D0(v5);
}

- (void)loadMetadataWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_18BC20F48();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_18BC52940;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_18BC52948;
  v12[5] = v11;
  selfCopy = self;
  sub_18BC10FA8(0, 0, v7, &unk_18BC52950, v12);
}

- (void)deleteMetadataExceptIdentifiers:(NSSet *)identifiers completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = identifiers;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_18BC20F48();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_18BC52970;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_18BC52978;
  v14[5] = v13;
  identifiersCopy = identifiers;
  selfCopy = self;
  sub_18BC10FA8(0, 0, v9, &unk_18BC52980, v14);
}

- (NSURL)directoryURL
{
  v3 = _s7StorageVMa();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = sub_18BC1EA98();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v10 = OBJC_IVAR___SFTabSnapshotMetadataStore__storage;
  swift_beginAccess();
  sub_18B7B193C(self + v10, v14);
  swift_dynamicCast();
  (*(v7 + 16))(v9, &v5[*(v3 + 20)], v6);
  sub_18B7B1998(v5, _s7StorageVMa);
  v11 = sub_18BC1E9E8();
  (*(v7 + 8))(v9, v6);

  return v11;
}

- (void)deleteMetadataForIdentifier:(NSUUID *)identifier completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_18BC20F48();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_18BC52990;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_18BC52998;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_18BC10FA8(0, 0, v9, &unk_18BC529A0, v14);
}

- (void)saveMetadata:(SFTabSnapshotMetadata *)metadata completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = metadata;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_18BC20F48();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_18BC52918;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_18BC4A550;
  v14[5] = v13;
  metadataCopy = metadata;
  selfCopy = self;
  sub_18BC10FA8(0, 0, v9, &unk_18BC55D20, v14);
}

- (SFTabSnapshotMetadataStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end