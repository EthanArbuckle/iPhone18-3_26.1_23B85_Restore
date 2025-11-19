@interface MNTraceLocationRow
- ($F24F406B2B787EFB06265DBA3D28CBD5)correctedCoordinate;
@end

@implementation MNTraceLocationRow

- ($F24F406B2B787EFB06265DBA3D28CBD5)correctedCoordinate
{
  latitude = self->_correctedCoordinate.latitude;
  longitude = self->_correctedCoordinate.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

@end