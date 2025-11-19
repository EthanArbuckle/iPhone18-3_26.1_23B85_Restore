@interface CWFRangingMeasurement
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRangingMeasurement:(id)a3;
- (CWFRangingMeasurement)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFRangingMeasurement

- (BOOL)isEqualToRangingMeasurement:(id)a3
{
  v4 = a3;
  roundTripTime = self->_roundTripTime;
  if (roundTripTime == [v4 roundTripTime] && (channel = self->_channel, channel == objc_msgSend(v4, "channel")) && (RSSI = self->_RSSI, RSSI == objc_msgSend(v4, "RSSI")) && (SNR = self->_SNR, SNR == objc_msgSend(v4, "SNR")))
  {
    coreID = self->_coreID;
    v10 = coreID == [v4 coreID];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFRangingMeasurement *)self isEqualToRangingMeasurement:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_roundTripTime];
  v4 = self->_channel ^ [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_RSSI];
  v6 = [v5 hash];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_SNR];
  v8 = v4 ^ v6 ^ [v7 hash];
  coreID = self->_coreID;

  return v8 ^ coreID;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFRangingMeasurement allocWithZone:?]];
  [(CWFRangingMeasurement *)v4 setRoundTripTime:self->_roundTripTime];
  [(CWFRangingMeasurement *)v4 setRSSI:self->_RSSI];
  [(CWFRangingMeasurement *)v4 setChannel:self->_channel];
  [(CWFRangingMeasurement *)v4 setSNR:self->_SNR];
  [(CWFRangingMeasurement *)v4 setCoreID:self->_coreID];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  roundTripTime = self->_roundTripTime;
  v6 = a3;
  v7 = [v4 numberWithInteger:roundTripTime];
  [v6 encodeObject:v7 forKey:@"_roundTripTime"];

  [v6 encodeInteger:self->_RSSI forKey:@"_RSSI"];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_channel];
  [v6 encodeObject:v8 forKey:@"_channel"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_SNR];
  [v6 encodeObject:v9 forKey:@"_SNR"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_coreID];
  [v6 encodeObject:v10 forKey:@"_coreID"];
}

- (CWFRangingMeasurement)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CWFRangingMeasurement;
  v5 = [(CWFRangingMeasurement *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_roundTripTime"];
    v5->_roundTripTime = [v6 integerValue];

    v5->_RSSI = [v4 decodeIntegerForKey:@"_RSSI"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_channel"];
    v5->_channel = [v7 unsignedIntegerValue];

    v5->_SNR = [v4 decodeIntegerForKey:@"_SNR"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_coreID"];
    v5->_coreID = [v8 unsignedIntegerValue];
  }

  return v5;
}

@end