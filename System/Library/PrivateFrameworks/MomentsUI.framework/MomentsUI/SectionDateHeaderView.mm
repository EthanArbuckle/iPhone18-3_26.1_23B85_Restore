@interface SectionDateHeaderView
- (_TtC9MomentsUI21SectionDateHeaderView)initWithCoder:(id)coder;
@end

@implementation SectionDateHeaderView

- (_TtC9MomentsUI21SectionDateHeaderView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9MomentsUI21SectionDateHeaderView_dateLabel;
  *(&self->super.super.super.super.isa + v4) = closure #1 in variable initialization expression of SectionDateHeaderView.dateLabel();
  v5 = OBJC_IVAR____TtC9MomentsUI21SectionDateHeaderView_date;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end