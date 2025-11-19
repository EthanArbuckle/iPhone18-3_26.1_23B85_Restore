@interface WFRemoteContentItem
+ (id)itemWithSerializedItem:(id)a3 forType:(id)a4 named:(id)a5 attributionSet:(id)a6 cachingIdentifier:(id)a7;
- (WFRemoteContentItem)initWithSerializedItem:(id)a3 named:(id)a4 attributionSet:(id)a5 cachingIdentifier:(id)a6;
- (id)name;
- (id)preferredFileType;
@end

@implementation WFRemoteContentItem

- (id)preferredFileType
{
  v3 = [(WFRemoteContentItem *)self serializedItem];
  v4 = [v3 objectForKey:@"link.contentkit.remoteitem.preferredfiletype"];

  if (v4)
  {
    v5 = [MEMORY[0x277D79F68] typeWithString:v4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WFRemoteContentItem;
    v5 = [(WFContentItem *)&v8 preferredFileType];
  }

  v6 = v5;

  return v6;
}

- (id)name
{
  v2 = [(WFRemoteContentItem *)self serializedItem];
  v3 = [v2 objectForKey:@"link.contentkit.name"];

  return v3;
}

- (WFRemoteContentItem)initWithSerializedItem:(id)a3 named:(id)a4 attributionSet:(id)a5 cachingIdentifier:(id)a6
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = WFRemoteContentItem;
  v8 = [(WFRemoteContentItem *)&v13 init];
  if (v8)
  {
    v9 = [v7 copy];
    serializedItem = v8->_serializedItem;
    v8->_serializedItem = v9;

    v11 = v8;
  }

  return v8;
}

+ (id)itemWithSerializedItem:(id)a3 forType:(id)a4 named:(id)a5 attributionSet:(id)a6 cachingIdentifier:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = [[a1 alloc] initWithSerializedItem:v14 named:v13 attributionSet:v12 cachingIdentifier:v11];

  return v15;
}

@end