@interface SuggestionsSearchViewCell
- (_TtC11CallsSearch25SuggestionsSearchViewCell)initWithCoder:(id)a3;
- (_TtC11CallsSearch25SuggestionsSearchViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation SuggestionsSearchViewCell

- (_TtC11CallsSearch25SuggestionsSearchViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    sub_1CFB8FA90();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionImage) = 0;
    v8 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionText);
    *v8 = 0;
    v8[1] = 0;
    a4 = sub_1CFB8FA80();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionImage) = 0;
    v9 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionText);
    *v9 = 0;
    v9[1] = 0;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(SuggestionsSearchViewCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];

  return v10;
}

- (_TtC11CallsSearch25SuggestionsSearchViewCell)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionImage) = 0;
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionText);
  *v6 = 0;
  v6[1] = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(SuggestionsSearchViewCell *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end