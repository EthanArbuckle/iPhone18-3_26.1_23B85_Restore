@interface MapsSuggestionsContactActivity
- (NSString)uniqueName;
- (_TtC15MapsSuggestions30MapsSuggestionsContactActivity)init;
- (_TtP15MapsSuggestions38MapsSuggestionsContactActivityDelegate_)contactActivityDelegate;
- (void)contactActivityEntriesWith:(id)with;
- (void)setUniqueName:(id)name;
@end

@implementation MapsSuggestionsContactActivity

- (void)contactActivityEntriesWith:(id)with
{
  v4 = _Block_copy(with);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1C5279708;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1C513DC84(v7, v6);
  sub_1C513EDF0(v7);
}

- (NSString)uniqueName
{
  v2 = self + OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity_uniqueName;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_1C529D71C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUniqueName:(id)name
{
  if (name)
  {
    v4 = sub_1C529D72C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC15MapsSuggestions30MapsSuggestionsContactActivity_uniqueName);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (_TtP15MapsSuggestions38MapsSuggestionsContactActivityDelegate_)contactActivityDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC15MapsSuggestions30MapsSuggestionsContactActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end