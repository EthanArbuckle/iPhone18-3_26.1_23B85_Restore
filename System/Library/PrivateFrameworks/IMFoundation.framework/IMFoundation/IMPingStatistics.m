@interface IMPingStatistics
- (IMPingStatistics)initWithMaxRTT:(double)a3 medianRTT:(double)a4 avgRTT:(double)a5 minRTT:(double)a6 transmitted:(int)a7 successful:(int)a8 received:(int)a9;
- (double)packetLossRate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_addReceivedPacket:(double)a3;
- (void)_addTransmittedPacket:(BOOL)a3;
@end

@implementation IMPingStatistics

- (IMPingStatistics)initWithMaxRTT:(double)a3 medianRTT:(double)a4 avgRTT:(double)a5 minRTT:(double)a6 transmitted:(int)a7 successful:(int)a8 received:(int)a9
{
  v17.receiver = self;
  v17.super_class = IMPingStatistics;
  result = [(IMPingStatistics *)&v17 init];
  if (result)
  {
    result->_medianRoundtripTime = a4;
    result->_averageRoundtripTime = a5;
    result->_minRoundtripTime = a6;
    result->_maxRoundtripTime = a3;
    result->_numPingsTransmitted = a7;
    result->_numPingsReceived = a9;
    result->_numPacketsSuccessfullySent = a8;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(IMPingStatistics, a2, a3);
  result = objc_msgSend_initWithMaxRTT_medianRTT_avgRTT_minRTT_transmitted_successful_received_(v4, v5, self->_numPingsTransmitted, self->_numPacketsSuccessfullySent, self->_numPingsReceived, self->_maxRoundtripTime, self->_medianRoundtripTime, self->_averageRoundtripTime, self->_minRoundtripTime);
  if (result)
  {
    *(result + 8) = *&self->_standardDeviationRoundtripTime;
  }

  return result;
}

- (void)_addTransmittedPacket:(BOOL)a3
{
  ++self->_numPingsTransmitted;
  if (a3)
  {
    ++self->_numPacketsSuccessfullySent;
  }
}

- (void)_addReceivedPacket:(double)a3
{
  minRoundtripTime = self->_minRoundtripTime;
  if (minRoundtripTime == 0.0 || minRoundtripTime > a3)
  {
    self->_minRoundtripTime = a3;
  }

  if (self->_maxRoundtripTime < a3)
  {
    self->_maxRoundtripTime = a3;
  }

  v5 = self->_sumRoundtripTimes + a3;
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