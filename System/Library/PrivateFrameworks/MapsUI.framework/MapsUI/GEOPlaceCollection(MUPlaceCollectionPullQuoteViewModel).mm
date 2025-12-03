@interface GEOPlaceCollection(MUPlaceCollectionPullQuoteViewModel)
- (id)plainTextDescription;
- (id)publisherIconForIsNightMode:()MUPlaceCollectionPullQuoteViewModel;
- (id)publisherName;
@end

@implementation GEOPlaceCollection(MUPlaceCollectionPullQuoteViewModel)

- (id)publisherIconForIsNightMode:()MUPlaceCollectionPullQuoteViewModel
{
  mEMORY[0x1E696F318] = [MEMORY[0x1E696F318] sharedInstance];
  publisherName = [self publisherName];
  publisherAttribution = [self publisherAttribution];
  iconIdentifier = [publisherAttribution iconIdentifier];
  mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
  [mEMORY[0x1E696F3B8] screenScale];
  v10 = [mEMORY[0x1E696F318] iconForPublisherNamed:publisherName usingId:iconIdentifier usingContentScale:1 usingSizeGroup:a3 isNightMode:?];

  return v10;
}

- (id)plainTextDescription
{
  publisherBlockQuote = [self publisherBlockQuote];
  plainTextDescription = [publisherBlockQuote plainTextDescription];

  return plainTextDescription;
}

- (id)publisherName
{
  publisherAttribution = [self publisherAttribution];
  displayName = [publisherAttribution displayName];

  return displayName;
}

@end