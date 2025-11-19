@interface FormatMicaSectionDecorationView
- (_TtC8NewsFeed31FormatMicaSectionDecorationView)initWithCoder:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)didMoveToSuperview;
- (void)gutterViewBoundsDidChange;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation FormatMicaSectionDecorationView

- (_TtC8NewsFeed31FormatMicaSectionDecorationView)initWithCoder:(id)a3
{
  v4 = sub_1D725895C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8NewsFeed31FormatMicaSectionDecorationView_micaView;
  *(&self->super.super.super.super.isa + v9) = [objc_allocWithZone(sub_1D725F90C()) initWithFrame_];
  v10 = (self + OBJC_IVAR____TtC8NewsFeed31FormatMicaSectionDecorationView_token);
  sub_1D725894C();
  v11 = sub_1D725893C();
  v13 = v12;
  (*(v5 + 8))(v8, v4);
  *v10 = v11;
  v10[1] = v13;
  v14 = OBJC_IVAR____TtC8NewsFeed31FormatMicaSectionDecorationView_model;
  v15 = type metadata accessor for FormatMicaSectionDecorationItem();
  (*(*(v15 - 8) + 56))(self + v14, 1, 1, v15);
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)willMoveToSuperview:(id)a3
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  v5 = a3;
  [(FormatMicaSectionDecorationView *)&v8 willMoveToSuperview:v5];
  v6 = sub_1D726341C();
  if (v6)
  {
    v7 = v6;
    sub_1D725CA1C();
  }
}

- (void)didMoveToSuperview
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(FormatMicaSectionDecorationView *)&v5 didMoveToSuperview];
  v3 = sub_1D726341C();
  if (v3)
  {
    v4 = v3;
    sub_1D725CA0C();
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(FormatMicaSectionDecorationView *)&v3 layoutSubviews];
  [v2 bounds];
  sub_1D726344C();
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D688C558(v4);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D688CDD4(a3);
}

- (void)gutterViewBoundsDidChange
{
  v2 = self;
  sub_1D72634AC();
}

@end