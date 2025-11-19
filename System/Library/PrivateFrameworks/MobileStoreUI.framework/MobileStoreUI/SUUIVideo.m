@interface SUUIVideo
- (SUUIVideo)initWithVideoDictionary:(id)a3;
@end

@implementation SUUIVideo

- (SUUIVideo)initWithVideoDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SUUIVideo;
  v5 = [(SUUIVideo *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"previewFrame"];
    v7 = [SUUIArtworkProvidingFactory artworkProviderForStoreResponse:v6];
    artworks = v5->_artworks;
    v5->_artworks = v7;

    v9 = [v4 objectForKey:@"video"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v9];
      url = v5->_url;
      v5->_url = v10;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_8;
      }

      url = [v9 objectForKey:@"url"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:url];
        v13 = v5->_url;
        v5->_url = v12;
      }
    }

LABEL_8:
  }

  return v5;
}

@end