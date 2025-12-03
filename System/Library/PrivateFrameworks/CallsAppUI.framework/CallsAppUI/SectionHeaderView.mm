@interface SectionHeaderView
- (_TtC10CallsAppUI17SectionHeaderView)initWithCoder:(id)coder;
- (void)prepareForReuse;
@end

@implementation SectionHeaderView

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SectionHeaderView();
  v2 = v5.receiver;
  [(SectionHeaderView *)&v5 prepareForReuse];
  v3 = OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_headerView;
  [*&v2[OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_headerView] removeFromSuperview];
  v4 = *&v2[v3];
  *&v2[v3] = 0;
}

- (_TtC10CallsAppUI17SectionHeaderView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_configuration) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_headerView) = 0;
  result = sub_1CFCA01D8();
  __break(1u);
  return result;
}

@end