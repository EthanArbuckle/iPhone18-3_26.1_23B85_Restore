@interface LocalFileProvider
- (_TtC18FileProviderDaemon17LocalFileProvider)initWithDomain:(id)domain;
- (id)URLForItemWithPersistentIdentifier:(id)identifier;
- (id)_defaultApplicationContainerForBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (id)fetchContentsForItemWithIdentifier:(id)identifier version:(id)version completionHandler:(id)handler;
- (id)fetchThumbnailsForDictionary:(id)dictionary requestedSize:(CGSize)size perThumbnailCompletionHandler:(id)handler completionHandler:(id)completionHandler;
- (id)fetchThumbnailsForDictionary:(id)dictionary requestedSize:(CGSize)size perThumbnailCompletionHandlerDataURLWithMetadata:(id)metadata completionHandler:(id)handler;
- (id)fetchThumbnailsForDictionary:(id)dictionary requestedSize:(CGSize)size perThumbnailCompletionHandlerWithMetadata:(id)metadata completionHandler:(id)handler;
- (id)persistentIdentifierForItemAtURL:(id)l;
- (id)supportedServiceSourcesForItemIdentifier:(id)identifier error:(id *)error;
- (void)_dumpInternalStateToTermDumper:(id)dumper completionHandler:(id)handler;
- (void)_removeTrashedItemsOlderThanDate:(id)date completionHandler:(id)handler;
- (void)_trashItemAtURLWithoutCoordination:(id)coordination completionHandler:(id)handler;
- (void)changeItem:(id)item baseVersion:(id)version changedFields:(unint64_t)fields contents:(id)contents options:(unint64_t)options completionHandler:(id)handler;
- (void)createDirectoryWithName:(id)name inParentItemIdentifier:(id)identifier completionHandler:(id)handler;
- (void)importDocumentAtURL:(id)l toParentItemIdentifier:(id)identifier completionHandler:(id)handler;
- (void)itemChangedAtURL:(id)l;
- (void)renameItemWithIdentifier:(id)identifier toName:(id)name completionHandler:(id)handler;
- (void)reparentItemWithIdentifier:(id)identifier toParentItemWithIdentifier:(id)withIdentifier newName:(id)name completionHandler:(id)handler;
- (void)setFavoriteRank:(id)rank forItemIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setLastUsedDate:(id)date forItemIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setTagData:(id)data forItemIdentifier:(id)identifier completionHandler:(id)handler;
- (void)stopProvidingItemAtURL:(id)l;
- (void)untrashItemWithIdentifier:(id)identifier toParentItemIdentifier:(id)itemIdentifier completionHandler:(id)handler;
- (void)waitForStabilizationWithCompletionHandler:(id)handler;
@end

@implementation LocalFileProvider

- (_TtC18FileProviderDaemon17LocalFileProvider)initWithDomain:(id)domain
{
  domainCopy = domain;
  v5 = sub_1CEFFAF68(domain);

  return v5;
}

- (id)URLForItemWithPersistentIdentifier:(id)identifier
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  identifierCopy = identifier;
  selfCopy = self;
  sub_1CF2FD4F4(identifierCopy, v8);

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

- (id)persistentIdentifierForItemAtURL:(id)l
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E59D8();
  selfCopy = self;
  v10 = sub_1CF2FDD8C(v8);

  (*(v5 + 8))(v8, v4);

  return v10;
}

- (void)stopProvidingItemAtURL:(id)l
{
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E59D8();
  (*(v4 + 8))(v7, v3);
}

- (void)itemChangedAtURL:(id)l
{
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E59D8();
  defaultManager = [objc_opt_self() defaultManager];
  v9 = *MEMORY[0x1E6967298];
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF00A468;
  aBlock[3] = &block_descriptor_373;
  v10 = _Block_copy(aBlock);
  [defaultManager signalEnumeratorForContainerItemIdentifier:v9 completionHandler:v10];
  _Block_release(v10);

  (*(v4 + 8))(v7, v3);
}

- (id)fetchContentsForItemWithIdentifier:(id)identifier version:(id)version completionHandler:(id)handler
{
  ObjectType = swift_getObjectType();
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  aBlock[4] = sub_1CF32725C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF2FE8E8;
  aBlock[3] = &block_descriptor_370;
  v12 = _Block_copy(aBlock);
  identifierCopy = identifier;
  versionCopy = version;
  selfCopy = self;

  v18.receiver = selfCopy;
  v18.super_class = ObjectType;
  v16 = [(NSFileProviderExtension *)&v18 fetchContentsForItemWithIdentifier:identifierCopy version:versionCopy completionHandler:v12];
  _Block_release(v12);

  return v16;
}

- (void)importDocumentAtURL:(id)l toParentItemIdentifier:(id)identifier completionHandler:(id)handler
{
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(handler);
  sub_1CF9E59D8();
  _Block_copy(v13);
  identifierCopy = identifier;
  selfCopy = self;
  sub_1CF3174C8(v12, identifierCopy, selfCopy, v13);
  _Block_release(v13);
  _Block_release(v13);

  (*(v9 + 8))(v12, v8);
}

- (void)createDirectoryWithName:(id)name inParentItemIdentifier:(id)identifier completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  _Block_copy(v7);
  identifierCopy = identifier;
  selfCopy = self;
  sub_1CF317C3C(v8, v10, identifierCopy, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)renameItemWithIdentifier:(id)identifier toName:(id)name completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  _Block_copy(v7);
  identifierCopy = identifier;
  selfCopy = self;
  sub_1CF3182B4(identifierCopy, v8, v10, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)reparentItemWithIdentifier:(id)identifier toParentItemWithIdentifier:(id)withIdentifier newName:(id)name completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  if (name)
  {
    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    name = v12;
  }

  else
  {
    v11 = 0;
  }

  _Block_copy(v10);
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  selfCopy = self;
  sub_1CF3185E8(identifierCopy, withIdentifierCopy, v11, name, selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)_trashItemAtURLWithoutCoordination:(id)coordination completionHandler:(id)handler
{
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(handler);
  sub_1CF9E59D8();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  selfCopy = self;
  sub_1CF319E34(v10, 0, selfCopy, sub_1CF326F78, v12, sub_1CF2FFD5C);

  (*(v7 + 8))(v10, v6);
}

- (void)untrashItemWithIdentifier:(id)identifier toParentItemIdentifier:(id)itemIdentifier completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  identifierCopy = identifier;
  itemIdentifierCopy = itemIdentifier;
  selfCopy = self;
  sub_1CF31A4B8(identifierCopy, itemIdentifier, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)setLastUsedDate:(id)date forItemIdentifier:(id)identifier completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - v11;
  v13 = _Block_copy(handler);
  if (date)
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
  identifierCopy = identifier;
  selfCopy = self;
  sub_1CF31AA24(v12, identifierCopy, selfCopy, v13);
  _Block_release(v13);
  _Block_release(v13);

  sub_1CEFCCC44(v12, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
}

- (void)setTagData:(id)data forItemIdentifier:(id)identifier completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  identifierCopy = identifier;
  selfCopy = self;
  if (data)
  {
    dataCopy = data;
    data = sub_1CF9E5B88();
    v12 = v11;
  }

  else
  {
    v12 = 0xF000000000000000;
  }

  _Block_copy(v7);
  sub_1CF31AE70(data, v12, identifier, self, v7);
  _Block_release(v7);
  _Block_release(v7);
  sub_1CEFE48D8(data, v12);
}

- (void)setFavoriteRank:(id)rank forItemIdentifier:(id)identifier completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  rankCopy = rank;
  identifierCopy = identifier;
  selfCopy = self;
  sub_1CF31B224(rank, identifierCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (id)supportedServiceSourcesForItemIdentifier:(id)identifier error:(id *)error
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1CFA00250;
  v7 = objc_allocWithZone(FileProviderValidationServiceSource);
  identifierCopy = identifier;
  selfCopy = self;
  result = [v7 initWithFileProviderExtension:selfCopy itemIdentifier:identifierCopy];
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

- (void)_removeTrashedItemsOlderThanDate:(id)date completionHandler:(id)handler
{
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(handler);
  sub_1CF9E5CB8();
  _Block_copy(v11);
  selfCopy = self;
  sub_1CF31B5E0(v10, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (id)_defaultApplicationContainerForBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  v10 = sub_1CF31C1B0(v6, v8, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);

  return v10;
}

- (void)_dumpInternalStateToTermDumper:(id)dumper completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  dumperCopy = dumper;
  selfCopy = self;
  sub_1CF31C48C(dumperCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)changeItem:(id)item baseVersion:(id)version changedFields:(unint64_t)fields contents:(id)contents options:(unint64_t)options completionHandler:(id)handler
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v24 - v16;
  v18 = _Block_copy(handler);
  if (contents)
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
  versionCopy = version;
  selfCopy = self;
  sub_1CF324DE0(item, versionCopy, fields, v17, sub_1CF32615C, v21);
  swift_unknownObjectRelease();

  sub_1CEFCCC44(v17, &unk_1EC4BE310, qword_1CF9FCBE0);
}

- (void)waitForStabilizationWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  _Block_copy(v4);
  selfCopy = self;
  sub_1CF3251C0(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (id)fetchThumbnailsForDictionary:(id)dictionary requestedSize:(CGSize)size perThumbnailCompletionHandler:(id)handler completionHandler:(id)completionHandler
{
  v8 = _Block_copy(handler);
  v9 = _Block_copy(completionHandler);
  type metadata accessor for NSFileProviderItemIdentifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF510, &unk_1CFA01DA0);
  sub_1CEFD5B1C(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier);
  v10 = sub_1CF9E6638();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  selfCopy = self;
  v14 = sub_1CF32548C(v10, sub_1CF326154, v11, sub_1CF067718, v12);

  return v14;
}

- (id)fetchThumbnailsForDictionary:(id)dictionary requestedSize:(CGSize)size perThumbnailCompletionHandlerWithMetadata:(id)metadata completionHandler:(id)handler
{
  v8 = _Block_copy(metadata);
  v9 = _Block_copy(handler);
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
  selfCopy = self;

  v15 = sub_1CF32548C(v10, sub_1CF326120, v13, sub_1CF067718, v12);

  return v15;
}

- (id)fetchThumbnailsForDictionary:(id)dictionary requestedSize:(CGSize)size perThumbnailCompletionHandlerDataURLWithMetadata:(id)metadata completionHandler:(id)handler
{
  v8 = _Block_copy(metadata);
  v9 = _Block_copy(handler);
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
  selfCopy = self;

  v15 = sub_1CF32548C(v10, sub_1CF326108, v13, sub_1CF067710, v12);

  return v15;
}

@end