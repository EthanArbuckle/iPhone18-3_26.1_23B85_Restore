@interface LocalFileProvider
- (_TtC18FileProviderDaemon17LocalFileProvider)initWithDomain:(id)a3;
- (id)URLForItemWithPersistentIdentifier:(id)a3;
- (id)_defaultApplicationContainerForBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (id)fetchContentsForItemWithIdentifier:(id)a3 version:(id)a4 completionHandler:(id)a5;
- (id)fetchThumbnailsForDictionary:(id)a3 requestedSize:(CGSize)a4 perThumbnailCompletionHandler:(id)a5 completionHandler:(id)a6;
- (id)fetchThumbnailsForDictionary:(id)a3 requestedSize:(CGSize)a4 perThumbnailCompletionHandlerDataURLWithMetadata:(id)a5 completionHandler:(id)a6;
- (id)fetchThumbnailsForDictionary:(id)a3 requestedSize:(CGSize)a4 perThumbnailCompletionHandlerWithMetadata:(id)a5 completionHandler:(id)a6;
- (id)persistentIdentifierForItemAtURL:(id)a3;
- (id)supportedServiceSourcesForItemIdentifier:(id)a3 error:(id *)a4;
- (void)_dumpInternalStateToTermDumper:(id)a3 completionHandler:(id)a4;
- (void)_removeTrashedItemsOlderThanDate:(id)a3 completionHandler:(id)a4;
- (void)_trashItemAtURLWithoutCoordination:(id)a3 completionHandler:(id)a4;
- (void)changeItem:(id)a3 baseVersion:(id)a4 changedFields:(unint64_t)a5 contents:(id)a6 options:(unint64_t)a7 completionHandler:(id)a8;
- (void)createDirectoryWithName:(id)a3 inParentItemIdentifier:(id)a4 completionHandler:(id)a5;
- (void)importDocumentAtURL:(id)a3 toParentItemIdentifier:(id)a4 completionHandler:(id)a5;
- (void)itemChangedAtURL:(id)a3;
- (void)renameItemWithIdentifier:(id)a3 toName:(id)a4 completionHandler:(id)a5;
- (void)reparentItemWithIdentifier:(id)a3 toParentItemWithIdentifier:(id)a4 newName:(id)a5 completionHandler:(id)a6;
- (void)setFavoriteRank:(id)a3 forItemIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setLastUsedDate:(id)a3 forItemIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setTagData:(id)a3 forItemIdentifier:(id)a4 completionHandler:(id)a5;
- (void)stopProvidingItemAtURL:(id)a3;
- (void)untrashItemWithIdentifier:(id)a3 toParentItemIdentifier:(id)a4 completionHandler:(id)a5;
- (void)waitForStabilizationWithCompletionHandler:(id)a3;
@end

@implementation LocalFileProvider

- (_TtC18FileProviderDaemon17LocalFileProvider)initWithDomain:(id)a3
{
  v4 = a3;
  v5 = sub_1CEFFAF68(a3);

  return v5;
}

- (id)URLForItemWithPersistentIdentifier:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = a3;
  v10 = self;
  sub_1CF2FD4F4(v9, v8);

  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v8, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_1CF9E5928();
    (*(v12 + 8))(v8, v11);
    v14 = v15;
  }

  return v14;
}

- (id)persistentIdentifierForItemAtURL:(id)a3
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E59D8();
  v9 = self;
  v10 = sub_1CF2FDD8C(v8);

  (*(v5 + 8))(v8, v4);

  return v10;
}

- (void)stopProvidingItemAtURL:(id)a3
{
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E59D8();
  (*(v4 + 8))(v7, v3);
}

- (void)itemChangedAtURL:(id)a3
{
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E59D8();
  v8 = [objc_opt_self() defaultManager];
  v9 = *MEMORY[0x1E6967298];
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF00A468;
  aBlock[3] = &block_descriptor_373;
  v10 = _Block_copy(aBlock);
  [v8 signalEnumeratorForContainerItemIdentifier:v9 completionHandler:v10];
  _Block_release(v10);

  (*(v4 + 8))(v7, v3);
}

- (id)fetchContentsForItemWithIdentifier:(id)a3 version:(id)a4 completionHandler:(id)a5
{
  ObjectType = swift_getObjectType();
  v10 = _Block_copy(a5);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  aBlock[4] = sub_1CF32725C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF2FE8E8;
  aBlock[3] = &block_descriptor_370;
  v12 = _Block_copy(aBlock);
  v13 = a3;
  v14 = a4;
  v15 = self;

  v18.receiver = v15;
  v18.super_class = ObjectType;
  v16 = [(NSFileProviderExtension *)&v18 fetchContentsForItemWithIdentifier:v13 version:v14 completionHandler:v12];
  _Block_release(v12);

  return v16;
}

- (void)importDocumentAtURL:(id)a3 toParentItemIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  sub_1CF9E59D8();
  _Block_copy(v13);
  v14 = a4;
  v15 = self;
  sub_1CF3174C8(v12, v14, v15, v13);
  _Block_release(v13);
  _Block_release(v13);

  (*(v9 + 8))(v12, v8);
}

- (void)createDirectoryWithName:(id)a3 inParentItemIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  _Block_copy(v7);
  v11 = a4;
  v12 = self;
  sub_1CF317C3C(v8, v10, v11, v12, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)renameItemWithIdentifier:(id)a3 toName:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  _Block_copy(v7);
  v11 = a3;
  v12 = self;
  sub_1CF3182B4(v11, v8, v10, v12, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)reparentItemWithIdentifier:(id)a3 toParentItemWithIdentifier:(id)a4 newName:(id)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  if (a5)
  {
    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    a5 = v12;
  }

  else
  {
    v11 = 0;
  }

  _Block_copy(v10);
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_1CF3185E8(v13, v14, v11, a5, v15, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)_trashItemAtURLWithoutCoordination:(id)a3 completionHandler:(id)a4
{
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_1CF9E59D8();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self;
  sub_1CF319E34(v10, 0, v13, sub_1CF326F78, v12, sub_1CF2FFD5C);

  (*(v7 + 8))(v10, v6);
}

- (void)untrashItemWithIdentifier:(id)a3 toParentItemIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1CF31A4B8(v9, a4, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)setLastUsedDate:(id)a3 forItemIdentifier:(id)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - v11;
  v13 = _Block_copy(a5);
  if (a3)
  {
    sub_1CF9E5CB8();
    v14 = sub_1CF9E5CF8();
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  }

  else
  {
    v15 = sub_1CF9E5CF8();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  }

  _Block_copy(v13);
  v16 = a4;
  v17 = self;
  sub_1CF31AA24(v12, v16, v17, v13);
  _Block_release(v13);
  _Block_release(v13);

  sub_1CEFCCC44(v12, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
}

- (void)setTagData:(id)a3 forItemIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = a4;
  v9 = self;
  if (a3)
  {
    v10 = a3;
    a3 = sub_1CF9E5B88();
    v12 = v11;
  }

  else
  {
    v12 = 0xF000000000000000;
  }

  _Block_copy(v7);
  sub_1CF31AE70(a3, v12, a4, self, v7);
  _Block_release(v7);
  _Block_release(v7);
  sub_1CEFE48D8(a3, v12);
}

- (void)setFavoriteRank:(id)a3 forItemIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1CF31B224(a3, v10, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (id)supportedServiceSourcesForItemIdentifier:(id)a3 error:(id *)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1CFA00250;
  v7 = objc_allocWithZone(FileProviderValidationServiceSource);
  v8 = a3;
  v9 = self;
  result = [v7 initWithFileProviderExtension:v9 itemIdentifier:v8];
  if (result)
  {
    *(v6 + 32) = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF648, &unk_1CFA01DF0);
    v11 = sub_1CF9E6D28();

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)_removeTrashedItemsOlderThanDate:(id)a3 completionHandler:(id)a4
{
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_1CF9E5CB8();
  _Block_copy(v11);
  v12 = self;
  sub_1CF31B5E0(v10, v12, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (id)_defaultApplicationContainerForBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  v10 = sub_1CF31C1B0(v6, v8, v9, v5);
  _Block_release(v5);
  _Block_release(v5);

  return v10;
}

- (void)_dumpInternalStateToTermDumper:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1CF31C48C(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)changeItem:(id)a3 baseVersion:(id)a4 changedFields:(unint64_t)a5 contents:(id)a6 options:(unint64_t)a7 completionHandler:(id)a8
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v24 - v16;
  v18 = _Block_copy(a8);
  if (a6)
  {
    sub_1CF9E59D8();
    v19 = sub_1CF9E5A58();
    (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  }

  else
  {
    v20 = sub_1CF9E5A58();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  swift_unknownObjectRetain();
  v22 = a4;
  v23 = self;
  sub_1CF324DE0(a3, v22, a5, v17, sub_1CF32615C, v21);
  swift_unknownObjectRelease();

  sub_1CEFCCC44(v17, &unk_1EC4BE310, qword_1CF9FCBE0);
}

- (void)waitForStabilizationWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1CF3251C0(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (id)fetchThumbnailsForDictionary:(id)a3 requestedSize:(CGSize)a4 perThumbnailCompletionHandler:(id)a5 completionHandler:(id)a6
{
  v8 = _Block_copy(a5);
  v9 = _Block_copy(a6);
  type metadata accessor for NSFileProviderItemIdentifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF510, &unk_1CFA01DA0);
  sub_1CEFD5B1C(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier);
  v10 = sub_1CF9E6638();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v13 = self;
  v14 = sub_1CF32548C(v10, sub_1CF326154, v11, sub_1CF067718, v12);

  return v14;
}

- (id)fetchThumbnailsForDictionary:(id)a3 requestedSize:(CGSize)a4 perThumbnailCompletionHandlerWithMetadata:(id)a5 completionHandler:(id)a6
{
  v8 = _Block_copy(a5);
  v9 = _Block_copy(a6);
  type metadata accessor for NSFileProviderItemIdentifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF510, &unk_1CFA01DA0);
  sub_1CEFD5B1C(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier);
  v10 = sub_1CF9E6638();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CF326118;
  *(v13 + 24) = v11;
  v14 = self;

  v15 = sub_1CF32548C(v10, sub_1CF326120, v13, sub_1CF067718, v12);

  return v15;
}

- (id)fetchThumbnailsForDictionary:(id)a3 requestedSize:(CGSize)a4 perThumbnailCompletionHandlerDataURLWithMetadata:(id)a5 completionHandler:(id)a6
{
  v8 = _Block_copy(a5);
  v9 = _Block_copy(a6);
  type metadata accessor for NSFileProviderItemIdentifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF510, &unk_1CFA01DA0);
  sub_1CEFD5B1C(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier);
  v10 = sub_1CF9E6638();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CF326100;
  *(v13 + 24) = v11;
  v14 = self;

  v15 = sub_1CF32548C(v10, sub_1CF326108, v13, sub_1CF067710, v12);

  return v15;
}

@end