@interface DOCAspectImageView
- (UIImage)image;
- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView)initWithFrame:(CGRect)a3;
- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView)initWithImage:(id)a3;
- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
- (void)setImage:(id)a3;
@end

@implementation DOCAspectImageView

- (UIImage)image
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCAspectImageView();
  v2 = [(DOCAspectImageView *)&v4 image];

  return v2;
}

- (void)setImage:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCAspectImageView();
  v4 = a3;
  v5 = v6.receiver;
  [(DOCAspectImageView *)&v6 setImage:v4];
  DOCAspectImageView.updateAspectRatioConstraint()();
}

- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView)initWithImage:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView_aspectConstraint) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCAspectImageView();
  v4 = a3;
  v5 = [(DOCAspectImageView *)&v7 initWithImage:v4];
  DOCAspectImageView.updateAspectRatioConstraint()();

  return v5;
}

- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView_aspectConstraint) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end