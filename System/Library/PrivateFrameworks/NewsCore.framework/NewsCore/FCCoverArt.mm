@interface FCCoverArt
- (FCCoverArt)initWithJSONData:(id)data;
- (FCCoverArt)initWithJSONString:(id)string;
@end

@implementation FCCoverArt

- (FCCoverArt)initWithJSONString:(id)string
{
  v4 = [string dataUsingEncoding:4];
  v5 = [(FCCoverArt *)self initWithJSONData:v4];

  return v5;
}

- (FCCoverArt)initWithJSONData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v14 = 0;
    v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:&v14];
    v6 = v14;
    if (v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      selfCopy = 0;
      v5 = v6;
    }

    else
    {
      v13.receiver = self;
      v13.super_class = FCCoverArt;
      v7 = [(FCCoverArt *)&v13 init];
      if (v7)
      {
        v8 = [v5 objectForKeyedSubscript:@"coverArt"];
        v9 = FCCoverArtImagesFromUnprocessedImages(v8);
        images = v7->_images;
        v7->_images = v9;
      }

      self = v7;
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end