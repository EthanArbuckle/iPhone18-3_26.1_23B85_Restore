@interface ESAudioPacketTimestamps
- (ESAudioPacketTimestamps)initWithPacketRecordedTimeInTicks:(id)ticks packetReadyUpstreamTimeInTicks:(id)inTicks packetReceivedTime:(double)time packetReceivedTimeInTicks:(id)timeInTicks;
- (id)description;
@end

@implementation ESAudioPacketTimestamps

- (id)description
{
  stringValue = [(NSNumber *)self->_packetRecordedTimeInTicks stringValue];
  stringValue2 = [(NSNumber *)self->_packetReadyUpstreamTimeInTicks stringValue];
  stringValue3 = [(NSNumber *)self->_packetReceivedTimeInTicks stringValue];
  v6 = [NSString stringWithFormat:@"Audio packet timestamps in ticks: recorded %@, ready upstream %@, received %@ cumulative duration (sec): %f", stringValue, stringValue2, stringValue3, *&self->_cumulativeAudioDuration];;

  return v6;
}

- (ESAudioPacketTimestamps)initWithPacketRecordedTimeInTicks:(id)ticks packetReadyUpstreamTimeInTicks:(id)inTicks packetReceivedTime:(double)time packetReceivedTimeInTicks:(id)timeInTicks
{
  ticksCopy = ticks;
  inTicksCopy = inTicks;
  timeInTicksCopy = timeInTicks;
  v17.receiver = self;
  v17.super_class = ESAudioPacketTimestamps;
  v14 = [(ESAudioPacketTimestamps *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_packetRecordedTimeInTicks, ticks);
    objc_storeStrong(&v15->_packetReadyUpstreamTimeInTicks, inTicks);
    v15->_packetReceivedTime = time;
    objc_storeStrong(&v15->_packetReceivedTimeInTicks, timeInTicks);
  }

  return v15;
}

@end