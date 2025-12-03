@interface SUUIArtworkProvidingFactory
+ (id)artworkCacheCandidatesForProvider:(id)provider;
+ (id)artworkProviderForStoreResponse:(id)response;
@end

@implementation SUUIArtworkProvidingFactory

+ (id)artworkProviderForStoreResponse:(id)response
{
  responseCopy = response;
  if ([SUUIArtworkList canHandleArtworkFormat:responseCopy])
  {
    v4 = [[SUUIArtworkList alloc] initWithArtworkListArray:responseCopy];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if ([SUUIArtworkTemplate canHandleArtworkFormat:responseCopy])
  {
    v4 = [[SUUIArtworkTemplate alloc] initWithTemplateDictionary:responseCopy];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)artworkCacheCandidatesForProvider:(id)provider
{
  providerCopy = provider;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    artworks = [providerCopy artworks];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      servedArtworks = [providerCopy servedArtworks];
      artworks = [servedArtworks allObjects];
    }

    else
    {
      artworks = 0;
    }
  }

  return artworks;
}

@end