@interface SuggestionsSearchViewCell
- (_TtC11CallsSearch25SuggestionsSearchViewCell)initWithCoder:(id)coder;
- (_TtC11CallsSearch25SuggestionsSearchViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation SuggestionsSearchViewCell

- (_TtC11CallsSearch25SuggestionsSearchViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  if (identifier)
  {
    sub_1CFB8FA90();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionImage) = 0;
    v8 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionText);
    *v8 = 0;
    v8[1] = 0;
    identifier = sub_1CFB8FA80();
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
  v10 = [(SuggestionsSearchViewCell *)&v12 initWithStyle:style reuseIdentifier:identifier];

  return v10;
}

- (_TtC11CallsSearch25SuggestionsSearchViewCell)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionImage) = 0;
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC11CallsSearch25SuggestionsSearchViewCell_suggestionText);
  *v6 = 0;
  v6[1] = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(SuggestionsSearchViewCell *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end