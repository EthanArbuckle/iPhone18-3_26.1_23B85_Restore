@interface SUUIArtworkProvidingFactory
+ (id)artworkCacheCandidatesForProvider:(id)a3;
+ (id)artworkProviderForStoreResponse:(id)a3;
@end

@implementation SUUIArtworkProvidingFactory

+ (id)artworkProviderForStoreResponse:(id)a3
{
  v3 = a3;
  if ([SUUIArtworkList canHandleArtworkFormat:v3])
  {
    v4 = [[SUUIArtworkList alloc] initWithArtworkListArray:v3];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if ([SUUIArtworkTemplate canHandleArtworkFormat:v3])
  {
    v4 = [[SUUIArtworkTemplate alloc] initWithTemplateDictionary:v3];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)artworkCacheCandidatesForProvider:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 artworks];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 servedArtworks];
      v4 = [v5 allObjects];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

@end