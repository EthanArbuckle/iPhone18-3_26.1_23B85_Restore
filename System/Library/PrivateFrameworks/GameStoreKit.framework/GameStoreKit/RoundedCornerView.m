@interface RoundedCornerView
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation RoundedCornerView

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for RoundedCornerView();
  v2 = v6.receiver;
  [(RoundedCornerView *)&v6 layoutSubviews];
  v3 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderView;
  swift_beginAccess();
  v4 = *&v2[v3];
  if (v4)
  {
    v5 = v4;
    [v2 bounds];
    [v5 setFrame_];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for RoundedCornerView();
  v4 = v8.receiver;
  v5 = a3;
  [(RoundedCornerView *)&v8 traitCollectionDidChange:v5];
  v6 = [v4 traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (!v5 || v7 != [v5 userInterfaceStyle])
  {
    (*((*MEMORY[0x277D85000] & *v4) + 0xE8))();
  }
}

@end