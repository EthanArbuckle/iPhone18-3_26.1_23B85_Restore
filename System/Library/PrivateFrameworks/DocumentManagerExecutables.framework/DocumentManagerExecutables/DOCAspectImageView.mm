@interface DOCAspectImageView
- (UIImage)image;
- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView)initWithFrame:(CGRect)frame;
- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView)initWithImage:(id)image;
- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
- (void)setImage:(id)image;
@end

@implementation DOCAspectImageView

- (UIImage)image
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCAspectImageView();
  image = [(DOCAspectImageView *)&v4 image];

  return image;
}

- (void)setImage:(id)image
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCAspectImageView();
  imageCopy = image;
  v5 = v6.receiver;
  [(DOCAspectImageView *)&v6 setImage:imageCopy];
  DOCAspectImageView.updateAspectRatioConstraint()();
}

- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView)initWithImage:(id)image
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView_aspectConstraint) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCAspectImageView();
  imageCopy = image;
  v5 = [(DOCAspectImageView *)&v7 initWithImage:imageCopy];
  DOCAspectImageView.updateAspectRatioConstraint()();

  return v5;
}

- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView_aspectConstraint) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end