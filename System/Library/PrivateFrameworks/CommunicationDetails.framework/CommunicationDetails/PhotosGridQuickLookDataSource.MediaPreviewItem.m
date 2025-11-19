@interface PhotosGridQuickLookDataSource.MediaPreviewItem
- (NSURL)previewItemURL;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)init;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithCoder:(id)a3;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithData:(id)a3 contentType:(id)a4 previewTitle:(id)a5;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithDataProvider:(id)a3 contentType:(id)a4 previewTitle:(id)a5;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithFPItem:(id)a3;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithPreviewItemProvider:(id)a3 contentType:(id)a4 previewTitle:(id)a5 fileSize:(id)a6;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithSearchableItemUniqueIdentifier:(id)a3 applicationBundleIdentifier:(id)a4;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithSearchableItemUniqueIdentifier:(id)a3 queryString:(id)a4 applicationBundleIdentifier:(id)a5 previewTitle:(id)a6;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithURL:(id)a3;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithURL:(id)a3 MIMEType:(id)a4;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithURL:(id)a3 previewTitle:(id)a4 editingMode:(int64_t)a5;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithURLSandboxWrapper:(id)a3;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithURLSandboxWrapper:(id)a3 previewTitle:(id)a4 editingMode:(int64_t)a5;
@end

@implementation PhotosGridQuickLookDataSource.MediaPreviewItem

- (NSURL)previewItemURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_mediaItemURL;
  swift_beginAccess();
  outlined init with copy of URL?(self + v6, v5, &_s10Foundation3URLVSgMd);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    (*(v8 + 8))(v5, v7);
    v10 = v12;
  }

  return v10;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_itemProvider;
  *(&self->super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  v5 = OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_mediaItemURL;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  *(&self->super.super.isa + OBJC_IVAR____TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem_hasFetchingStarted) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithURL:(id)a3
{
  v3 = type metadata accessor for URL();
  MEMORY[0x1EEE9AC00](v3 - 8);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithURL:(id)a3 previewTitle:(id)a4 editingMode:(int64_t)a5
{
  v5 = type metadata accessor for URL();
  MEMORY[0x1EEE9AC00](v5 - 8);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithURLSandboxWrapper:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithURLSandboxWrapper:(id)a3 previewTitle:(id)a4 editingMode:(int64_t)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithFPItem:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithURL:(id)a3 MIMEType:(id)a4
{
  v4 = type metadata accessor for URL();
  MEMORY[0x1EEE9AC00](v4 - 8);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithData:(id)a3 contentType:(id)a4 previewTitle:(id)a5
{
  v5 = a3;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithDataProvider:(id)a3 contentType:(id)a4 previewTitle:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithPreviewItemProvider:(id)a3 contentType:(id)a4 previewTitle:(id)a5 fileSize:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithSearchableItemUniqueIdentifier:(id)a3 queryString:(id)a4 applicationBundleIdentifier:(id)a5 previewTitle:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithSearchableItemUniqueIdentifier:(id)a3 applicationBundleIdentifier:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end