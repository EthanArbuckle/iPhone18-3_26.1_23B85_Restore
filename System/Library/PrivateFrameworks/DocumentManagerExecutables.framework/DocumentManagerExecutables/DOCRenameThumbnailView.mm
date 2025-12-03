@interface DOCRenameThumbnailView
- (CGSize)intrinsicContentSize;
- (UIImage)image;
- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView)initWithImage:(id)image;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setImage:(id)image;
@end

@implementation DOCRenameThumbnailView

- (UIImage)image
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  image = [(DOCAspectImageView *)&v4 image];

  return image;
}

- (void)setImage:(id)image
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  imageCopy = image;
  v5 = v7.receiver;
  [(DOCAspectImageView *)&v7 setImage:imageCopy];
  v6 = DOCRenameThumbnailView.addDecoration.getter();
  specialized static DOCRenameThumbnailView.updateDecoration(on:addDecoration:)(v5, v6 & 1);
}

- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_item) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_fullSizeThumbnail) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(DOCRenameThumbnailView *)&v4 didMoveToWindow];
  window = [v2 window];
  if (window)
  {

    DOCRenameThumbnailView.recalculateThumbnail()();
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(DOCRenameThumbnailView *)&v4 layoutSubviews];
  v3 = DOCRenameThumbnailView.addDecoration.getter();
  specialized static DOCRenameThumbnailView.updateDecoration(on:addDecoration:)(v2, v3 & 1);
}

- (CGSize)intrinsicContentSize
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v2 = v10.receiver;
  [(DOCRenameThumbnailView *)&v10 intrinsicContentSize];
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

- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView)initWithImage:(id)image
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end