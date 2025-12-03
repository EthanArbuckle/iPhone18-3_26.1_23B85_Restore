@interface DOCFolderThumbnailView
- (CGSize)intrinsicContentSize;
- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView)initWithImage:(id)image;
- (void)didMoveToWindow;
@end

@implementation DOCFolderThumbnailView

- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_thumbnail) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCFolderThumbnailView();
  v2 = v4.receiver;
  [(DOCFolderThumbnailView *)&v4 didMoveToWindow];
  window = [v2 window];
  if (window)
  {

    DOCFolderThumbnailView.recalculateIcon()();
  }
}

- (CGSize)intrinsicContentSize
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for DOCFolderThumbnailView();
  v2 = v10.receiver;
  [(DOCFolderThumbnailView *)&v10 intrinsicContentSize];
  traitCollection = [v2 traitCollection];
  [traitCollection displayScale];

  DOCAdaptSizeToRect();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView)initWithImage:(id)image
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end