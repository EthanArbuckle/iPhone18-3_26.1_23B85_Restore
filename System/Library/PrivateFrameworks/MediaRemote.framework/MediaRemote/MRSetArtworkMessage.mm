@interface MRSetArtworkMessage
- (MRSetArtworkMessage)initWithArtworkData:(id)data;
- (NSData)artworkData;
@end

@implementation MRSetArtworkMessage

- (MRSetArtworkMessage)initWithArtworkData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = MRSetArtworkMessage;
  v5 = [(MRProtocolMessage *)&v8 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRSetArtworkMessageProtobuf);
    [(_MRSetArtworkMessageProtobuf *)v6 setJpegData:dataCopy];
    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (NSData)artworkData
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  jpegData = [underlyingCodableMessage jpegData];

  return jpegData;
}

@end