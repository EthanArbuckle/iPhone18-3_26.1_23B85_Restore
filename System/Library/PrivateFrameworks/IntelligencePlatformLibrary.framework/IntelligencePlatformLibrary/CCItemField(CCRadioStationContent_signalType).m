@interface CCItemField(CCRadioStationContent_signalType)
- (uint64_t)radioStationContentSignalType;
@end

@implementation CCItemField(CCRadioStationContent_signalType)

- (uint64_t)radioStationContentSignalType
{
  LODWORD(result) = [a1 uint32Value];
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end