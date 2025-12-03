@interface _BTNotificationLocationTimestamp
- (BOOL)isEqual:(id)equal;
- (_BTNotificationLocationTimestamp)initWithLocation:(id)location timestamp:(id)timestamp;
@end

@implementation _BTNotificationLocationTimestamp

- (_BTNotificationLocationTimestamp)initWithLocation:(id)location timestamp:(id)timestamp
{
  locationCopy = location;
  timestampCopy = timestamp;
  v11.receiver = self;
  v11.super_class = _BTNotificationLocationTimestamp;
  v8 = [(_BTNotificationLocationTimestamp *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(_BTNotificationLocationTimestamp *)v8 setLocation:locationCopy];
    [(_BTNotificationLocationTimestamp *)v9 setTimestamp:timestampCopy];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    location = [equalCopy location];
    location2 = [(_BTNotificationLocationTimestamp *)self location];
    v7 = MapsSuggestionsAlmostSameLocation();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end