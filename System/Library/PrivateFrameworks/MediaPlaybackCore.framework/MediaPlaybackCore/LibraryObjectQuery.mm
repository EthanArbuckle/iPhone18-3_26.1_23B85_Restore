@interface LibraryObjectQuery
- ($2F6F4602BBD9A38257A07259C79964DD)tokenForDatabase:(id)database;
- (MPIdentifierSet)inputIdentifiers;
- (MPObjectDatabaseProgressiveResult)parentResult;
- (void)setIdentifiers:(id)identifiers forDatabase:(id)database;
- (void)setInputIdentifiers:(id)identifiers;
- (void)setParentResult:(id)result;
@end

@implementation LibraryObjectQuery

- (MPIdentifierSet)inputIdentifiers
{
  v2 = sub_1C5CAFA74();

  return v2;
}

- (void)setInputIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  selfCopy = self;
  sub_1C5CAFAE0(identifiersCopy);
}

- (MPObjectDatabaseProgressiveResult)parentResult
{
  v2 = sub_1C5CAFB28();

  return v2;
}

- (void)setParentResult:(id)result
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5CAFB98(result);
}

- (void)setIdentifiers:(id)identifiers forDatabase:(id)database
{
  identifiersCopy = identifiers;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5CAFBB0(identifiers);

  swift_unknownObjectRelease();
}

- ($2F6F4602BBD9A38257A07259C79964DD)tokenForDatabase:(id)database
{
  v3 = sub_1C5CAFC78();
  result.var1 = v4;
  result.var2 = HIDWORD(v4);
  result.var0 = v3;
  return result;
}

@end