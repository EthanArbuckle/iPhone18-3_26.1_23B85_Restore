@interface CWFRangingMeasurement
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRangingMeasurement:(id)measurement;
- (CWFRangingMeasurement)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFRangingMeasurement

- (BOOL)isEqualToRangingMeasurement:(id)measurement
{
  measurementCopy = measurement;
  roundTripTime = self->_roundTripTime;
  if (roundTripTime == [measurementCopy roundTripTime] && (channel = self->_channel, channel == objc_msgSend(measurementCopy, "channel")) && (RSSI = self->_RSSI, RSSI == objc_msgSend(measurementCopy, "RSSI")) && (SNR = self->_SNR, SNR == objc_msgSend(measurementCopy, "SNR")))
  {
    coreID = self->_coreID;
    v10 = coreID == [measurementCopy coreID];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFRangingMeasurement *)self isEqualToRangingMeasurement:v5];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFRangingMeasurement allocWithZone:?]];
  [(CWFRangingMeasurement *)v4 setRoundTripTime:self->_roundTripTime];
  [(CWFRangingMeasurement *)v4 setRSSI:self->_RSSI];
  [(CWFRangingMeasurement *)v4 setChannel:self->_channel];
  [(CWFRangingMeasurement *)v4 setSNR:self->_SNR];
  [(CWFRangingMeasurement *)v4 setCoreID:self->_coreID];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  roundTripTime = self->_roundTripTime;
  coderCopy = coder;
  v7 = [v4 numberWithInteger:roundTripTime];
  [coderCopy encodeObject:v7 forKey:@"_roundTripTime"];

  [coderCopy encodeInteger:self->_RSSI forKey:@"_RSSI"];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_channel];
  [coderCopy encodeObject:v8 forKey:@"_channel"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_SNR];
  [coderCopy encodeObject:v9 forKey:@"_SNR"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_coreID];
  [coderCopy encodeObject:v10 forKey:@"_coreID"];
}

- (CWFRangingMeasurement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CWFRangingMeasurement;
  v5 = [(CWFRangingMeasurement *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_roundTripTime"];
    v5->_roundTripTime = [v6 integerValue];

    v5->_RSSI = [coderCopy decodeIntegerForKey:@"_RSSI"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_channel"];
    v5->_channel = [v7 unsignedIntegerValue];

    v5->_SNR = [coderCopy decodeIntegerForKey:@"_SNR"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_coreID"];
    v5->_coreID = [v8 unsignedIntegerValue];
  }

  return v5;
}

@end