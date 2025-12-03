@interface GEOSharedNavState
- (id)_transportTypeStringForAnalytics;
@end

@implementation GEOSharedNavState

- (id)_transportTypeStringForAnalytics
{
  if ([(GEOSharedNavState *)self hasTransportType])
  {
    transportType = [(GEOSharedNavState *)self transportType];
    if (transportType >= 7)
    {
      v4 = [NSString stringWithFormat:@"(unknown: %i)", transportType];
    }

    else
    {
      v4 = *(&off_10003D940 + transportType);
    }
  }

  else
  {
    v4 = @"UNKNOWN_TRANSPORT_TYPE";
  }

  return v4;
}

@end