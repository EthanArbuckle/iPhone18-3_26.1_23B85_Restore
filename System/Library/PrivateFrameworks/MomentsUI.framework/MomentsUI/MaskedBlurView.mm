@interface MaskedBlurView
- (void)layoutSubviews;
@end

@implementation MaskedBlurView

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for MaskedBlurView();
  v2 = v6.receiver;
  layoutSubviews = [(MaskedBlurView *)&v6 layoutSubviews];
  v4 = (*((*MEMORY[0x277D85000] & *v2) + 0x60))(layoutSubviews);
  [v2 bounds];
  [v4 setFrame_];

  v5 = *(v2 + OBJC_IVAR____TtC9MomentsUI14MaskedBlurView_blurView);
  [v2 bounds];
  [v5 setFrame_];
}

@end