@interface CollectionViewSuggestionCell
- (_TtC9MomentsUI28CollectionViewSuggestionCell)initWithCoder:(id)a3;
@end

@implementation CollectionViewSuggestionCell

- (_TtC9MomentsUI28CollectionViewSuggestionCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9MomentsUI28CollectionViewSuggestionCell_titleLabel;
  *(&self->super.super.super.super.super.isa + v4) = closure #1 in variable initialization expression of CollectionViewSuggestionCell.titleLabel(&selRef_labelColor, specialized static CommonTheme.Font.footnoteEmphShortFont());
  v5 = OBJC_IVAR____TtC9MomentsUI28CollectionViewSuggestionCell_subTitleLabel;
  *(&self->super.super.super.super.super.isa + v5) = closure #1 in variable initialization expression of CollectionViewSuggestionCell.titleLabel(&selRef_secondaryLabelColor, specialized static CommonTheme.Font.footnoteShortFont());
  v6 = OBJC_IVAR____TtC9MomentsUI28CollectionViewSuggestionCell_actor;
  type metadata accessor for SuggestionCellReuseActor();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  *(&self->super.super.super.super.super.isa + v6) = v7;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end