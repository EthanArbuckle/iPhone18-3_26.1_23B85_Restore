@interface DOCThumbnailFittingImageView
- (DOCNode)node;
- (NSURL)url;
- (_TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView)initWithFrame:(CGRect)a3;
- (_TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView)initWithImage:(id)a3;
- (_TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)thumbnailLoaded:(id)a3;
- (void)updateThumbnail;
@end

@implementation DOCThumbnailFittingImageView

- (DOCNode)node
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (NSURL)url
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14 - v5;
  outlined init with copy of DOCGridLayout.Spec?(self + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_url, &v14 - v5, &_s10Foundation3URLVSgMd);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    (*(v8 + 8))(v6, v7);
    v10 = v12;
  }

  return v10;
}

- (_TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_currentGeneration;
  type metadata accessor for AtomicGenerationCounter();
  v5 = swift_allocObject();
  *(self + v4) = v5;
  *(v5 + 16) = 0;
  *(self + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_addDecoration) = 0;
  *(self + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView_nodeThumbnail) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)thumbnailLoaded:(id)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = self;
  swift_unknownObjectRetain_n();
  v6 = self;
  DOCRunInMainThread(_:)();

  swift_unknownObjectRelease();
}

- (void)updateThumbnail
{
  v2 = self;
  DOCThumbnailFittingImageView.updateThumbnail()();
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCThumbnailFittingImageView();
  v2 = v4.receiver;
  [(DOCThumbnailFittingImageView *)&v4 didMoveToWindow];
  v3 = [v2 window];
  if (v3)
  {

    (*((*MEMORY[0x277D85000] & *v2) + 0xE8))();
  }
}

- (void)layoutSubviews
{
  v2 = self;
  DOCThumbnailFittingImageView.layoutSubviews()();
}

- (_TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView)initWithImage:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables28DOCThumbnailFittingImageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end