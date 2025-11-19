@interface LibraryObjectQuery
- ($2F6F4602BBD9A38257A07259C79964DD)tokenForDatabase:(id)a3;
- (MPIdentifierSet)inputIdentifiers;
- (MPObjectDatabaseProgressiveResult)parentResult;
- (void)setIdentifiers:(id)a3 forDatabase:(id)a4;
- (void)setInputIdentifiers:(id)a3;
- (void)setParentResult:(id)a3;
@end

@implementation LibraryObjectQuery

- (MPIdentifierSet)inputIdentifiers
{
  v2 = sub_1C5CAFA74();

  return v2;
}

- (void)setInputIdentifiers:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C5CAFAE0(v4);
}

- (MPObjectDatabaseProgressiveResult)parentResult
{
  v2 = sub_1C5CAFB28();

  return v2;
}

- (void)setParentResult:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1C5CAFB98(a3);
}

- (void)setIdentifiers:(id)a3 forDatabase:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1C5CAFBB0(a3);

  swift_unknownObjectRelease();
}

- ($2F6F4602BBD9A38257A07259C79964DD)tokenForDatabase:(id)a3
{
  v3 = sub_1C5CAFC78();
  result.var1 = v4;
  result.var2 = HIDWORD(v4);
  result.var0 = v3;
  return result;
}

@end