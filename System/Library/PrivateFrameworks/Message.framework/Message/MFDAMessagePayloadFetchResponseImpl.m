@interface MFDAMessagePayloadFetchResponseImpl
- (MFDAMessagePayloadFetchResponseImpl)initWithData:(id)a3 streaming:(BOOL)a4 streamingDone:(BOOL)a5;
@end

@implementation MFDAMessagePayloadFetchResponseImpl

- (MFDAMessagePayloadFetchResponseImpl)initWithData:(id)a3 streaming:(BOOL)a4 streamingDone:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = MFDAMessagePayloadFetchResponseImpl;
  v10 = [(MFDAMessagePayloadFetchResponseImpl *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->data, a3);
    v11->streaming = a4;
    v11->streamingDone = a5;
  }

  return v11;
}

@end