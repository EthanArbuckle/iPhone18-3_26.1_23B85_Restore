@interface GEOSharedNavLocationInfo(MSPExtras)
- (__CFString)mspDescription;
- (uint64_t)clearMatchedCoordinate;
- (uint64_t)hasMatchedCoordinate;
- (uint64_t)setMatchedCoordinate:()MSPExtras;
- (unint64_t)matchedCoordinate;
@end

@implementation GEOSharedNavLocationInfo(MSPExtras)

- (uint64_t)hasMatchedCoordinate
{
  result = [a1 hasMatchedCoordinateIndex];
  if (result)
  {

    return [a1 hasMatchedCoordinateOffset];
  }

  return result;
}

- (unint64_t)matchedCoordinate
{
  if ([a1 hasMatchedCoordinate])
  {
    v2 = [a1 matchedCoordinateIndex];
    [a1 matchedCoordinateOffset];
  }

  else
  {
    v2 = *MEMORY[0x277D0E9F8];
    v3 = *(MEMORY[0x277D0E9F8] + 4);
  }

  return v2 | (v3 << 32);
}

- (uint64_t)setMatchedCoordinate:()MSPExtras
{
  v4 = HIDWORD(a3);
  [a1 setMatchedCoordinateIndex:?];
  LODWORD(v5) = v4;

  return [a1 setMatchedCoordinateOffset:v5];
}

- (uint64_t)clearMatchedCoordinate
{
  result = [a1 hasMatchedCoordinate];
  if (result)
  {
    [a1 setMatchedCoordinateIndex:0];
    [a1 setHasMatchedCoordinateIndex:0];
    [a1 setMatchedCoordinateOffset:0.0];

    return [a1 setHasMatchedCoordinateOffset:0];
  }

  return result;
}

- (__CFString)mspDescription
{
  if ([a1 hasCoordinate])
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [a1 coordinate];
    [v3 lat];
    v5 = v4;
    v6 = [a1 coordinate];
    [v6 lng];
    v8 = [v2 stringWithFormat:@"(%lf, %lf)", v5, v7];
  }

  else
  {
    v8 = @"(no coordinate)";
  }

  return v8;
}

@end