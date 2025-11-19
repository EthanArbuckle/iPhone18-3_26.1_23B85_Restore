@interface DOCStackedThumbnailView
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (CGSize)topThumbnailSize;
- (NSArray)nodes;
- (NSArray)urls;
- (_TtC26DocumentManagerExecutables23DOCStackedThumbnailView)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables23DOCStackedThumbnailView)initWithFrame:(CGRect)a3;
- (_TtC26DocumentManagerExecutables23DOCStackedThumbnailView)initWithTopThumbnailSize:(CGSize)a3;
- (void)layoutSubviews;
- (void)setNodes:(id)a3;
- (void)setTopThumbnailSize:(CGSize)a3;
- (void)setUrls:(id)a3;
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

- (void)setNodes:(id)a3
{
  v3 = a3;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = self;
  DOCStackedThumbnailView.nodes.setter(v3);
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

- (void)setUrls:(id)a3
{
  v3 = a3;
  if (a3)
  {
    type metadata accessor for URL();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = self;
  DOCStackedThumbnailView.urls.setter(v3);
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

- (void)setTopThumbnailSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  DOCStackedThumbnailView.topThumbnailSize.setter(width, height);
}

- (_TtC26DocumentManagerExecutables23DOCStackedThumbnailView)initWithTopThumbnailSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (_TtC26DocumentManagerExecutables23DOCStackedThumbnailView)initWithCoder:(id)a3
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
  v2 = self;
  DOCStackedThumbnailView.layoutSubviews()();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = DOCStackedThumbnailView.intrinsicContentSize.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  [(DOCStackedThumbnailView *)self intrinsicContentSize:a3.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC26DocumentManagerExecutables23DOCStackedThumbnailView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end