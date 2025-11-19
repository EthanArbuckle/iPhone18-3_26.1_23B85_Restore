@interface ESAudioPacketTimestamps
- (ESAudioPacketTimestamps)initWithPacketRecordedTimeInTicks:(id)a3 packetReadyUpstreamTimeInTicks:(id)a4 packetReceivedTime:(double)a5 packetReceivedTimeInTicks:(id)a6;
- (id)description;
@end

@implementation ESAudioPacketTimestamps

- (id)description
{
  v3 = [(NSNumber *)self->_packetRecordedTimeInTicks stringValue];
  v4 = [(NSNumber *)self->_packetReadyUpstreamTimeInTicks stringValue];
  v5 = [(NSNumber *)self->_packetReceivedTimeInTicks stringValue];
  v6 = [NSString stringWithFormat:@"Audio packet timestamps in ticks: recorded %@, ready upstream %@, received %@ cumulative duration (sec): %f", v3, v4, v5, *&self->_cumulativeAudioDuration];;

  return v6;
}

- (ESAudioPacketTimestamps)initWithPacketRecordedTimeInTicks:(id)a3 packetReadyUpstreamTimeInTicks:(id)a4 packetReceivedTime:(double)a5 packetReceivedTimeInTicks:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = ESAudioPacketTimestamps;
  v14 = [(ESAudioPacketTimestamps *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_packetRecordedTimeInTicks, a3);
    objc_storeStrong(&v15->_packetReadyUpstreamTimeInTicks, a4);
    v15->_packetReceivedTime = a5;
    objc_storeStrong(&v15->_packetReceivedTimeInTicks, a6);
  }

  return v15;
}

@end