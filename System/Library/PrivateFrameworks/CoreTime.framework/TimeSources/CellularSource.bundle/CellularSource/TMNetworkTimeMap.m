@interface TMNetworkTimeMap
- (BOOL)timeZone:(id)a3 matchesOffset:(int)a4 dst:(BOOL)a5 date:(id)a6;
- (TMNetworkTimeMap)initWithDictionary:(id)a3;
- (TMNetworkTimeMap)initWithUrl:(id)a3;
- (void)dealloc;
@end

@implementation TMNetworkTimeMap

- (TMNetworkTimeMap)initWithUrl:(id)a3
{
  if (a3)
  {
    a3 = [NSDictionary dictionaryWithContentsOfURL:?];
  }

  return [(TMNetworkTimeMap *)self initWithDictionary:a3];
}

- (TMNetworkTimeMap)initWithDictionary:(id)a3
{
  v7.receiver = self;
  v7.super_class = TMNetworkTimeMap;
  v4 = [(TMNetworkTimeMap *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(TMNetworkTimeMap *)v4 setNetworkMap:a3];
  }

  return v5;
}

- (void)dealloc
{
  [(TMNetworkTimeMap *)self setNetworkMap:0];
  v3.receiver = self;
  v3.super_class = TMNetworkTimeMap;
  [(TMNetworkTimeMap *)&v3 dealloc];
}

- (BOOL)timeZone:(id)a3 matchesOffset:(int)a4 dst:(BOOL)a5 date:(id)a6
{
  v7 = a5;
  v9 = [NSTimeZone timeZoneWithName:a3];
  result = 0;
  if (v9)
  {
    v10 = v9;
    if ([(NSTimeZone *)v9 secondsFromGMTForDate:a6]== (60 * a4) && [(NSTimeZone *)v10 isDaylightSavingTimeForDate:a6]== v7)
    {
      return 1;
    }
  }

  return result;
}

@end