@interface WFRemoteContentItem
+ (id)itemWithSerializedItem:(id)item forType:(id)type named:(id)named attributionSet:(id)set cachingIdentifier:(id)identifier;
- (WFRemoteContentItem)initWithSerializedItem:(id)item named:(id)named attributionSet:(id)set cachingIdentifier:(id)identifier;
- (id)name;
- (id)preferredFileType;
@end

@implementation WFRemoteContentItem

- (id)preferredFileType
{
  serializedItem = [(WFRemoteContentItem *)self serializedItem];
  v4 = [serializedItem objectForKey:@"link.contentkit.remoteitem.preferredfiletype"];

  if (v4)
  {
    preferredFileType = [MEMORY[0x277D79F68] typeWithString:v4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WFRemoteContentItem;
    preferredFileType = [(WFContentItem *)&v8 preferredFileType];
  }

  v6 = preferredFileType;

  return v6;
}

- (id)name
{
  serializedItem = [(WFRemoteContentItem *)self serializedItem];
  v3 = [serializedItem objectForKey:@"link.contentkit.name"];

  return v3;
}

- (WFRemoteContentItem)initWithSerializedItem:(id)item named:(id)named attributionSet:(id)set cachingIdentifier:(id)identifier
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = WFRemoteContentItem;
  v8 = [(WFRemoteContentItem *)&v13 init];
  if (v8)
  {
    v9 = [itemCopy copy];
    serializedItem = v8->_serializedItem;
    v8->_serializedItem = v9;

    v11 = v8;
  }

  return v8;
}

+ (id)itemWithSerializedItem:(id)item forType:(id)type named:(id)named attributionSet:(id)set cachingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  setCopy = set;
  namedCopy = named;
  itemCopy = item;
  v15 = [[self alloc] initWithSerializedItem:itemCopy named:namedCopy attributionSet:setCopy cachingIdentifier:identifierCopy];

  return v15;
}

@end