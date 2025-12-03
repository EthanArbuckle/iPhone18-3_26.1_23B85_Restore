@interface PhotosGridQuickLookDataSource.MediaPreviewItem
- (NSURL)previewItemURL;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)init;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithCoder:(id)coder;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithData:(id)data contentType:(id)type previewTitle:(id)title;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithDataProvider:(id)provider contentType:(id)type previewTitle:(id)title;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithFPItem:(id)item;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithPreviewItemProvider:(id)provider contentType:(id)type previewTitle:(id)title fileSize:(id)size;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithSearchableItemUniqueIdentifier:(id)identifier applicationBundleIdentifier:(id)bundleIdentifier;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithSearchableItemUniqueIdentifier:(id)identifier queryString:(id)string applicationBundleIdentifier:(id)bundleIdentifier previewTitle:(id)title;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithURL:(id)l;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithURL:(id)l MIMEType:(id)type;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithURL:(id)l previewTitle:(id)title editingMode:(int64_t)mode;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithURLSandboxWrapper:(id)wrapper;
- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithURLSandboxWrapper:(id)wrapper previewTitle:(id)title editingMode:(int64_t)mode;
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

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithCoder:(id)coder
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

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithURL:(id)l
{
  v3 = type metadata accessor for URL();
  MEMORY[0x1EEE9AC00](v3 - 8);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithURL:(id)l previewTitle:(id)title editingMode:(int64_t)mode
{
  v5 = type metadata accessor for URL();
  MEMORY[0x1EEE9AC00](v5 - 8);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithURLSandboxWrapper:(id)wrapper
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithURLSandboxWrapper:(id)wrapper previewTitle:(id)title editingMode:(int64_t)mode
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithFPItem:(id)item
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithURL:(id)l MIMEType:(id)type
{
  v4 = type metadata accessor for URL();
  MEMORY[0x1EEE9AC00](v4 - 8);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithData:(id)data contentType:(id)type previewTitle:(id)title
{
  dataCopy = data;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithDataProvider:(id)provider contentType:(id)type previewTitle:(id)title
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithPreviewItemProvider:(id)provider contentType:(id)type previewTitle:(id)title fileSize:(id)size
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithSearchableItemUniqueIdentifier:(id)identifier queryString:(id)string applicationBundleIdentifier:(id)bundleIdentifier previewTitle:(id)title
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC20CommunicationDetails29PhotosGridQuickLookDataSource16MediaPreviewItem)initWithSearchableItemUniqueIdentifier:(id)identifier applicationBundleIdentifier:(id)bundleIdentifier
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