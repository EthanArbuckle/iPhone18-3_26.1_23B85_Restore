@interface ENAdvertisementMetadata
- (ENAdvertisementMetadata)initWithVersion:(int64_t)version txPower:(char)power calibrationConfidence:(unsigned __int8)confidence;
- (NSString)versionString;
- (unsigned)attenuationForRSSI:(char)i saturated:(BOOL)saturated;
@end

@implementation ENAdvertisementMetadata

- (ENAdvertisementMetadata)initWithVersion:(int64_t)version txPower:(char)power calibrationConfidence:(unsigned __int8)confidence
{
  v9.receiver = self;
  v9.super_class = ENAdvertisementMetadata;
  result = [(ENAdvertisementMetadata *)&v9 init];
  if (result)
  {
    result->_version = version;
    result->_txPower = power;
    result->_calibrationConfidence = confidence;
  }

  return result;
}

- (NSString)versionString
{
  version = self->_version;
  v3 = @"?";
  if (version == 2)
  {
    v3 = @"1.1";
  }

  if (version == 1)
  {
    return @"1.0";
  }

  else
  {
    return &v3->isa;
  }
}

- (unsigned)attenuationForRSSI:(char)i saturated:(BOOL)saturated
{
  if (i == 127 && saturated)
  {
    return 0;
  }

  else
  {
    return (self->_txPower - i) & ~((self->_txPower - i) >> 31);
  }
}

@end