@interface WorldLine
- (NSArray)identifiersOfObjectsComposedInto;
- (_TtC17MeasureFoundation9WorldLine)init;
- (void)setIdentifiersOfObjectsComposedInto:(id)into;
@end

@implementation WorldLine

- (NSArray)identifiersOfObjectsComposedInto
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_identifiersOfObjectsComposedInto;
  swift_beginAccess();
  if (*(self + v3))
  {

    v4 = sub_258428850();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setIdentifiersOfObjectsComposedInto:(id)into
{
  if (into)
  {
    v4 = sub_258428860();
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_identifiersOfObjectsComposedInto;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (_TtC17MeasureFoundation9WorldLine)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end