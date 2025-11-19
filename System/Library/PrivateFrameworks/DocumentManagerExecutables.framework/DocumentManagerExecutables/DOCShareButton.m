@interface DOCShareButton
- (_TtC26DocumentManagerExecutablesP33_D84699134F2F83A5DD978A1B1F3ADA5814DOCShareButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)tintColorDidChange;
- (void)updateConfiguration;
@end

@implementation DOCShareButton

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(DOCShareButton *)&v3 tintColorDidChange];
  [v2 setNeedsLayout];
}

- (void)updateConfiguration
{
  v2 = self;
  DOCShareButton.updateConfiguration()();
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(DOCShareButton *)&v4 layoutSubviews];
  [v2 bounds];
  [v2 _setContinuousCornerRadius_];
}

- (_TtC26DocumentManagerExecutablesP33_D84699134F2F83A5DD978A1B1F3ADA5814DOCShareButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end