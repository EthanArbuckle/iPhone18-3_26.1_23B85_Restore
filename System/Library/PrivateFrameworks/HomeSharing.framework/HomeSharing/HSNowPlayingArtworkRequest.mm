@interface HSNowPlayingArtworkRequest
- (CGSize)maximumSize;
- (HSNowPlayingArtworkRequest)initWithInterfaceID:(unsigned int)d maximumSize:(CGSize)size playQueueIndex:(unsigned int)index;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation HSNowPlayingArtworkRequest

- (CGSize)maximumSize
{
  width = self->_maximumSize.width;
  height = self->_maximumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(HSResponse *)HSNowPlayingArtworkResponse responseWithResponse:response];
  error = [v3 error];

  if (!error)
  {
    mIMEType = [v3 MIMEType];
    [v3 setArtworkMIMEType:mIMEType];

    responseData = [v3 responseData];
    [v3 setArtworkData:responseData];
  }

  return v3;
}

- (HSNowPlayingArtworkRequest)initWithInterfaceID:(unsigned int)d maximumSize:(CGSize)size playQueueIndex:(unsigned int)index
{
  v5 = *&index;
  height = size.height;
  width = size.width;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%u/%s", "ctrl-int", *&d, "nowplayingartwork"];
  v18.receiver = self;
  v18.super_class = HSNowPlayingArtworkRequest;
  v11 = [(HSRequest *)&v18 initWithAction:v10];

  if (v11)
  {
    HIDWORD(v12) = 1048576000;
    if (width > 0.00000011920929 || height > 0.00000011920929)
    {
      LODWORD(v12) = vcvtpd_s64_f64(width);
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i", v12];
      [(HSRequest *)v11 setValue:v13 forArgument:@"mw"];

      LODWORD(v14) = vcvtpd_s64_f64(height);
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i", v14];
      [(HSRequest *)v11 setValue:v15 forArgument:@"mh"];
    }

    if (v5)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v5];
      [(HSRequest *)v11 setValue:v16 forArgument:@"index"];
    }

    v11->_interfaceID = d;
    v11->_maximumSize.width = width;
    v11->_maximumSize.height = height;
    v11->_playQueueIndex = v5;
  }

  return v11;
}

@end