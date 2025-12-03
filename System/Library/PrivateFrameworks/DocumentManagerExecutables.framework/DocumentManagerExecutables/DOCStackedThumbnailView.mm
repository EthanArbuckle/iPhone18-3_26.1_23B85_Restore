@interface DOCStackedThumbnailView
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (CGSize)topThumbnailSize;
- (NSArray)nodes;
- (NSArray)urls;
- (_TtC26DocumentManagerExecutables23DOCStackedThumbnailView)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutables23DOCStackedThumbnailView)initWithFrame:(CGRect)frame;
- (_TtC26DocumentManagerExecutables23DOCStackedThumbnailView)initWithTopThumbnailSize:(CGSize)size;
- (void)layoutSubviews;
- (void)setNodes:(id)nodes;
- (void)setTopThumbnailSize:(CGSize)size;
- (void)setUrls:(id)urls;
@end

@implementation DOCStackedThumbnailView

- (NSArray)nodes
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_nodes;
  swift_beginAccess();
  if (*(self + v3))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setNodes:(id)nodes
{
  nodesCopy = nodes;
  if (nodes)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    nodesCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  DOCStackedThumbnailView.nodes.setter(nodesCopy);
}

- (NSArray)urls
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_urls;
  swift_beginAccess();
  if (*(self + v3))
  {
    type metadata accessor for URL();

    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setUrls:(id)urls
{
  urlsCopy = urls;
  if (urls)
  {
    type metadata accessor for URL();
    urlsCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  DOCStackedThumbnailView.urls.setter(urlsCopy);
}

- (CGSize)topThumbnailSize
{
  v2 = (self + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_topThumbnailSize);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setTopThumbnailSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  DOCStackedThumbnailView.topThumbnailSize.setter(width, height);
}

- (_TtC26DocumentManagerExecutables23DOCStackedThumbnailView)initWithTopThumbnailSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_imageCache;
  type metadata accessor for ImageCache();
  swift_allocObject();
  *(self + v6) = ImageCache.init()();
  *(self + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_nodes) = 0;
  *(self + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_urls) = 0;
  *(self + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_thumbnailImageViews) = MEMORY[0x277D84F90];
  v7 = (self + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_topThumbnailSize);
  *v7 = width;
  v7[1] = height;
  v10.receiver = self;
  v10.super_class = type metadata accessor for DOCStackedThumbnailView();
  v8 = [(DOCStackedThumbnailView *)&v10 initWithFrame:0.0, 0.0, 0.0, 0.0];
  [(DOCStackedThumbnailView *)v8 setClipsToBounds:1];
  return v8;
}

- (_TtC26DocumentManagerExecutables23DOCStackedThumbnailView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_imageCache;
  type metadata accessor for ImageCache();
  swift_allocObject();
  *(self + v4) = ImageCache.init()();
  *(self + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_nodes) = 0;
  *(self + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_urls) = 0;
  *(self + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_thumbnailImageViews) = MEMORY[0x277D84F90];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  DOCStackedThumbnailView.layoutSubviews()();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = DOCStackedThumbnailView.intrinsicContentSize.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  [(DOCStackedThumbnailView *)self intrinsicContentSize:size.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC26DocumentManagerExecutables23DOCStackedThumbnailView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end