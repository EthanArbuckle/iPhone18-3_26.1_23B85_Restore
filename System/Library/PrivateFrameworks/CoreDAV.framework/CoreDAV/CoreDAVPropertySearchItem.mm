@interface CoreDAVPropertySearchItem
- (CoreDAVPropertySearchItem)initWithSearchPropertyNameSpace:(id)a3 andName:(id)a4;
- (id)description;
- (void)write:(id)a3;
@end

@implementation CoreDAVPropertySearchItem

- (CoreDAVPropertySearchItem)initWithSearchPropertyNameSpace:(id)a3 andName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CoreDAVPropertySearchItem *)self init];
  if (v8)
  {
    v9 = [(CoreDAVItem *)[CoreDAVLeafItem alloc] initWithNameSpace:v6 andName:v7];
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

  v5 = [(CoreDAVPropertySearchItem *)self prop];
  [v3 appendFormat:@"\n  Prop: [%@]", v5];

  v6 = [(CoreDAVPropertySearchItem *)self match];
  [v3 appendFormat:@"\n  Match: [%@]", v6];

  v7 = [(CoreDAVPropertySearchItem *)self matchTypeAttribute];
  [v3 appendFormat:@"\n  MatchTypeAttribute: [%@]", v7];

  return v3;
}

- (void)write:(id)a3
{
  v16 = a3;
  v4 = [(CoreDAVItem *)self name];
  v5 = [(CoreDAVItem *)self nameSpace];
  [v16 startElement:v4 inNamespace:v5 withAttributeNamesAndValues:0];

  [v16 startElement:@"prop" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
  v6 = [(CoreDAVPropertySearchItem *)self prop];
  v7 = [v6 name];
  v8 = [(CoreDAVPropertySearchItem *)self prop];
  v9 = [v8 nameSpace];
  [v16 appendElement:v7 inNamespace:v9 withStringContent:0 withAttributeNamesAndValues:0];

  [v16 endElement:@"prop" inNamespace:@"DAV:"];
  v10 = [(CoreDAVPropertySearchItem *)self match];

  if (v10)
  {
    v11 = [(CoreDAVPropertySearchItem *)self matchTypeAttribute];

    v12 = [(CoreDAVPropertySearchItem *)self match];
    if (v11)
    {
      v13 = [(CoreDAVPropertySearchItem *)self matchTypeAttribute];
      [v16 appendElement:@"match" inNamespace:@"DAV:" withStringContent:v12 withAttributeNamesAndValues:{@"match-type", v13, 0}];
    }

    else
    {
      [v16 appendElement:@"match" inNamespace:@"DAV:" withStringContent:v12 withAttributeNamesAndValues:0];
    }
  }

  v14 = [(CoreDAVItem *)self name];
  v15 = [(CoreDAVItem *)self nameSpace];
  [v16 endElement:v14 inNamespace:v15];
}

@end