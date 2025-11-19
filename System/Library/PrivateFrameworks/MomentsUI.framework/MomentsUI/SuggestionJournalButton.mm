@interface SuggestionJournalButton
- (_TtC9MomentsUI23SuggestionJournalButton)initWithCoder:(id)a3;
- (_TtC9MomentsUI23SuggestionJournalButton)initWithFrame:(CGRect)a3;
@end

@implementation SuggestionJournalButton

- (_TtC9MomentsUI23SuggestionJournalButton)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9MomentsUI23SuggestionJournalButton_buttonTapped);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9MomentsUI23SuggestionJournalButton_singleCellAsset) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for SuggestionJournalButton();
  v5 = a3;
  v6 = [(SuggestionJournalButton *)&v10 initWithCoder:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    SuggestionJournalButton.sharedInit()();
  }

  return v7;
}

- (_TtC9MomentsUI23SuggestionJournalButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end