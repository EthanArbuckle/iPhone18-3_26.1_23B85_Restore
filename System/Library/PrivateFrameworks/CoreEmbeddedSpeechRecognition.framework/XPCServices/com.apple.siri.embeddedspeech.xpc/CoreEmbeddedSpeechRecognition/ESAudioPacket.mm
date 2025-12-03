@interface ESAudioPacket
- (ESAudioPacket)initWithData:(id)data packetTimestamps:(id)timestamps;
@end

@implementation ESAudioPacket

- (ESAudioPacket)initWithData:(id)data packetTimestamps:(id)timestamps
{
  dataCopy = data;
  timestampsCopy = timestamps;
  v12.receiver = self;
  v12.super_class = ESAudioPacket;
  v9 = [(ESAudioPacket *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, data);
    objc_storeStrong(&v10->_packetTimestamps, timestamps);
  }

  return v10;
}

@end