@interface GEOMapsURLShortenerRequest
- (double)_clampedTimeout;
@end

@implementation GEOMapsURLShortenerRequest

- (double)_clampedTimeout
{
  [(GEOMapsURLShortenerRequest *)self timeout];
  v3 = 60.0;
  if (v2 <= 60.0)
  {
    v3 = v2;
  }

  v4 = v2 > 0.0;
  result = 10.0;
  if (v4)
  {
    return v3;
  }

  return result;
}

@end