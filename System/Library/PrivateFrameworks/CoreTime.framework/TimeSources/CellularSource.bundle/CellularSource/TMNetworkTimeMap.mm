@interface TMNetworkTimeMap
- (BOOL)timeZone:(id)zone matchesOffset:(int)offset dst:(BOOL)dst date:(id)date;
- (TMNetworkTimeMap)initWithDictionary:(id)dictionary;
- (TMNetworkTimeMap)initWithUrl:(id)url;
- (void)dealloc;
@end

@implementation TMNetworkTimeMap

- (TMNetworkTimeMap)initWithUrl:(id)url
{
  if (url)
  {
    url = [NSDictionary dictionaryWithContentsOfURL:?];
  }

  return [(TMNetworkTimeMap *)self initWithDictionary:url];
}

- (TMNetworkTimeMap)initWithDictionary:(id)dictionary
{
  v7.receiver = self;
  v7.super_class = TMNetworkTimeMap;
  v4 = [(TMNetworkTimeMap *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(TMNetworkTimeMap *)v4 setNetworkMap:dictionary];
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

- (BOOL)timeZone:(id)zone matchesOffset:(int)offset dst:(BOOL)dst date:(id)date
{
  dstCopy = dst;
  v9 = [NSTimeZone timeZoneWithName:zone];
  result = 0;
  if (v9)
  {
    v10 = v9;
    if ([(NSTimeZone *)v9 secondsFromGMTForDate:date]== (60 * offset) && [(NSTimeZone *)v10 isDaylightSavingTimeForDate:date]== dstCopy)
    {
      return 1;
    }
  }

  return result;
}

@end