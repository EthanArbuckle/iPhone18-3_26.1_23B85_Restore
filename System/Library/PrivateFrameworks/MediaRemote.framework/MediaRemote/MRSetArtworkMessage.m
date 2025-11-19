@interface MRSetArtworkMessage
- (MRSetArtworkMessage)initWithArtworkData:(id)a3;
- (NSData)artworkData;
@end

@implementation MRSetArtworkMessage

- (MRSetArtworkMessage)initWithArtworkData:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MRSetArtworkMessage;
  v5 = [(MRProtocolMessage *)&v8 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRSetArtworkMessageProtobuf);
    [(_MRSetArtworkMessageProtobuf *)v6 setJpegData:v4];
    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (NSData)artworkData
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 jpegData];

  return v3;
}

@end