@interface MFDAMessagePayloadFetchResponseImpl
- (MFDAMessagePayloadFetchResponseImpl)initWithData:(id)data streaming:(BOOL)streaming streamingDone:(BOOL)done;
@end

@implementation MFDAMessagePayloadFetchResponseImpl

- (MFDAMessagePayloadFetchResponseImpl)initWithData:(id)data streaming:(BOOL)streaming streamingDone:(BOOL)done
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = MFDAMessagePayloadFetchResponseImpl;
  v10 = [(MFDAMessagePayloadFetchResponseImpl *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->data, data);
    v11->streaming = streaming;
    v11->streamingDone = done;
  }

  return v11;
}

@end