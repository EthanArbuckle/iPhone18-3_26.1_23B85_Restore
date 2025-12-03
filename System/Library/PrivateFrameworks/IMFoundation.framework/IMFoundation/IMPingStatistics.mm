@interface IMPingStatistics
- (IMPingStatistics)initWithMaxRTT:(double)t medianRTT:(double)tT avgRTT:(double)rTT minRTT:(double)minRTT transmitted:(int)transmitted successful:(int)successful received:(int)received;
- (double)packetLossRate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_addReceivedPacket:(double)packet;
- (void)_addTransmittedPacket:(BOOL)packet;
@end

@implementation IMPingStatistics

- (IMPingStatistics)initWithMaxRTT:(double)t medianRTT:(double)tT avgRTT:(double)rTT minRTT:(double)minRTT transmitted:(int)transmitted successful:(int)successful received:(int)received
{
  v17.receiver = self;
  v17.super_class = IMPingStatistics;
  result = [(IMPingStatistics *)&v17 init];
  if (result)
  {
    result->_medianRoundtripTime = tT;
    result->_averageRoundtripTime = rTT;
    result->_minRoundtripTime = minRTT;
    result->_maxRoundtripTime = t;
    result->_numPingsTransmitted = transmitted;
    result->_numPingsReceived = received;
    result->_numPacketsSuccessfullySent = successful;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(IMPingStatistics, a2, zone);
  result = objc_msgSend_initWithMaxRTT_medianRTT_avgRTT_minRTT_transmitted_successful_received_(v4, v5, self->_numPingsTransmitted, self->_numPacketsSuccessfullySent, self->_numPingsReceived, self->_maxRoundtripTime, self->_medianRoundtripTime, self->_averageRoundtripTime, self->_minRoundtripTime);
  if (result)
  {
    *(result + 8) = *&self->_standardDeviationRoundtripTime;
  }

  return result;
}

- (void)_addTransmittedPacket:(BOOL)packet
{
  ++self->_numPingsTransmitted;
  if (packet)
  {
    ++self->_numPacketsSuccessfullySent;
  }
}

- (void)_addReceivedPacket:(double)packet
{
  minRoundtripTime = self->_minRoundtripTime;
  if (minRoundtripTime == 0.0 || minRoundtripTime > packet)
  {
    self->_minRoundtripTime = packet;
  }

  if (self->_maxRoundtripTime < packet)
  {
    self->_maxRoundtripTime = packet;
  }

  v5 = self->_sumRoundtripTimes + packet;
  self->_sumRoundtripTimes = v5;
  numPingsReceived = self->_numPingsReceived;
  self->_averageRoundtripTime = v5 / numPingsReceived;
  self->_numPingsReceived = numPingsReceived + 1;
}

- (double)packetLossRate
{
  numPingsTransmitted = self->_numPingsTransmitted;
  if (numPingsTransmitted)
  {
    return 1.0 - (self->_numPingsReceived / numPingsTransmitted);
  }

  else
  {
    return 0.0;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12 = *&self->_minRoundtripTime;
  v11 = *&self->_medianRoundtripTime;
  standardDeviationRoundtripTime = self->_standardDeviationRoundtripTime;
  numPacketsSuccessfullySent = self->_numPacketsSuccessfullySent;
  numPingsTransmitted = self->_numPingsTransmitted;
  numPingsReceived = self->_numPingsReceived;
  objc_msgSend_packetLossRate(self, a2, v2);
  return objc_msgSend_stringWithFormat_(v3, v8, @"Ping Statistics:sent = %d, successful = %d, received = %d, min = %f, max = %f, median = %f, average = %f, standardDeviation = %f, packetLossRate = %f", numPingsTransmitted, numPacketsSuccessfullySent, numPingsReceived, v12, v11, *&standardDeviationRoundtripTime, v9);
}

@end