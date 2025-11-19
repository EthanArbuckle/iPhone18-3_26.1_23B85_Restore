@interface ESAudioPacket
- (ESAudioPacket)initWithData:(id)a3 packetTimestamps:(id)a4;
@end

@implementation ESAudioPacket

- (ESAudioPacket)initWithData:(id)a3 packetTimestamps:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ESAudioPacket;
  v9 = [(ESAudioPacket *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, a3);
    objc_storeStrong(&v10->_packetTimestamps, a4);
  }

  return v10;
}

@end