@interface _BTNotificationLocationTimestamp
- (BOOL)isEqual:(id)a3;
- (_BTNotificationLocationTimestamp)initWithLocation:(id)a3 timestamp:(id)a4;
@end

@implementation _BTNotificationLocationTimestamp

- (_BTNotificationLocationTimestamp)initWithLocation:(id)a3 timestamp:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _BTNotificationLocationTimestamp;
  v8 = [(_BTNotificationLocationTimestamp *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(_BTNotificationLocationTimestamp *)v8 setLocation:v6];
    [(_BTNotificationLocationTimestamp *)v9 setTimestamp:v7];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 location];
    v6 = [(_BTNotificationLocationTimestamp *)self location];
    v7 = MapsSuggestionsAlmostSameLocation();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end