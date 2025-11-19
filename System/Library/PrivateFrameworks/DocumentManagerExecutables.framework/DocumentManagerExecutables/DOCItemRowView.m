@interface DOCItemRowView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (_TtC26DocumentManagerExecutables14DOCItemRowView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation DOCItemRowView

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCItemRowView();
  v2 = v4.receiver;
  v3 = [(DOCItemRowView *)&v4 didMoveToWindow];
  (*((*MEMORY[0x277D85000] & *v2) + 0x3B0))(v3);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v6 = DOCItemRowView.systemLayoutSizeFitting(_:)(__PAIR128__(v5, *&width));

  v7 = v6.width;
  height = v6.height;
  result.height = height;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  DOCItemRowView.layoutSubviews()();
}

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_progressState;
  v4 = *(**(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCItemRowView_progressState) + 184);
  v5 = self;

  v4(0);

  v6 = *(**(&self->super.super.super.isa + v3) + 136);

  v6(0);

  v7.receiver = v5;
  v7.super_class = type metadata accessor for DOCItemRowView();
  [(DOCItemRowView *)&v7 dealloc];
}

- (_TtC26DocumentManagerExecutables14DOCItemRowView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end