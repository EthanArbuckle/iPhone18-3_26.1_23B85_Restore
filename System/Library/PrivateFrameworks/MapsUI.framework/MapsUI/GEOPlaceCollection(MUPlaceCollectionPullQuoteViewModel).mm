@interface GEOPlaceCollection(MUPlaceCollectionPullQuoteViewModel)
- (id)plainTextDescription;
- (id)publisherIconForIsNightMode:()MUPlaceCollectionPullQuoteViewModel;
- (id)publisherName;
@end

@implementation GEOPlaceCollection(MUPlaceCollectionPullQuoteViewModel)

- (id)publisherIconForIsNightMode:()MUPlaceCollectionPullQuoteViewModel
{
  v5 = [MEMORY[0x1E696F318] sharedInstance];
  v6 = [a1 publisherName];
  v7 = [a1 publisherAttribution];
  v8 = [v7 iconIdentifier];
  v9 = [MEMORY[0x1E696F3B8] sharedInstance];
  [v9 screenScale];
  v10 = [v5 iconForPublisherNamed:v6 usingId:v8 usingContentScale:1 usingSizeGroup:a3 isNightMode:?];

  return v10;
}

- (id)plainTextDescription
{
  v1 = [a1 publisherBlockQuote];
  v2 = [v1 plainTextDescription];

  return v2;
}

- (id)publisherName
{
  v1 = [a1 publisherAttribution];
  v2 = [v1 displayName];

  return v2;
}

@end