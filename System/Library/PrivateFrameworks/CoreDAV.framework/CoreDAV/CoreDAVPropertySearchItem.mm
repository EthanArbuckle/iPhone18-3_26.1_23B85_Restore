@interface CoreDAVPropertySearchItem
- (CoreDAVPropertySearchItem)initWithSearchPropertyNameSpace:(id)space andName:(id)name;
- (id)description;
- (void)write:(id)write;
@end

@implementation CoreDAVPropertySearchItem

- (CoreDAVPropertySearchItem)initWithSearchPropertyNameSpace:(id)space andName:(id)name
{
  spaceCopy = space;
  nameCopy = name;
  v8 = [(CoreDAVPropertySearchItem *)self init];
  if (v8)
  {
    v9 = [(CoreDAVItem *)[CoreDAVLeafItem alloc] initWithNameSpace:spaceCopy andName:nameCopy];
    prop = v8->_prop;
    v8->_prop = v9;
  }

  return v8;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v9.receiver = self;
  v9.super_class = CoreDAVPropertySearchItem;
  v4 = [(CoreDAVItem *)&v9 description];
  [v3 appendFormat:@"[%@]", v4];

  prop = [(CoreDAVPropertySearchItem *)self prop];
  [v3 appendFormat:@"\n  Prop: [%@]", prop];

  match = [(CoreDAVPropertySearchItem *)self match];
  [v3 appendFormat:@"\n  Match: [%@]", match];

  matchTypeAttribute = [(CoreDAVPropertySearchItem *)self matchTypeAttribute];
  [v3 appendFormat:@"\n  MatchTypeAttribute: [%@]", matchTypeAttribute];

  return v3;
}

- (void)write:(id)write
{
  writeCopy = write;
  name = [(CoreDAVItem *)self name];
  nameSpace = [(CoreDAVItem *)self nameSpace];
  [writeCopy startElement:name inNamespace:nameSpace withAttributeNamesAndValues:0];

  [writeCopy startElement:@"prop" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
  prop = [(CoreDAVPropertySearchItem *)self prop];
  name2 = [prop name];
  prop2 = [(CoreDAVPropertySearchItem *)self prop];
  nameSpace2 = [prop2 nameSpace];
  [writeCopy appendElement:name2 inNamespace:nameSpace2 withStringContent:0 withAttributeNamesAndValues:0];

  [writeCopy endElement:@"prop" inNamespace:@"DAV:"];
  match = [(CoreDAVPropertySearchItem *)self match];

  if (match)
  {
    matchTypeAttribute = [(CoreDAVPropertySearchItem *)self matchTypeAttribute];

    match2 = [(CoreDAVPropertySearchItem *)self match];
    if (matchTypeAttribute)
    {
      matchTypeAttribute2 = [(CoreDAVPropertySearchItem *)self matchTypeAttribute];
      [writeCopy appendElement:@"match" inNamespace:@"DAV:" withStringContent:match2 withAttributeNamesAndValues:{@"match-type", matchTypeAttribute2, 0}];
    }

    else
    {
      [writeCopy appendElement:@"match" inNamespace:@"DAV:" withStringContent:match2 withAttributeNamesAndValues:0];
    }
  }

  name3 = [(CoreDAVItem *)self name];
  nameSpace3 = [(CoreDAVItem *)self nameSpace];
  [writeCopy endElement:name3 inNamespace:nameSpace3];
}

@end