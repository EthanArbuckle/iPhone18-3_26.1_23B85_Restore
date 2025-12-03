@interface MKHTTPContentRange
- (MKHTTPContentRange)initWithHeaderValue:(id)value;
- (MKHTTPContentRange)initWithOffset:(unint64_t)offset length:(unint64_t)length total:(unint64_t)total;
@end

@implementation MKHTTPContentRange

- (MKHTTPContentRange)initWithHeaderValue:(id)value
{
  v4 = [value componentsSeparatedByString:@"bytes"];
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:1];
    v6 = [v5 componentsSeparatedByString:@"/"];

    if ([v6 count] == 2)
    {
      v7 = [v6 objectAtIndexedSubscript:1];
      longLongValue = [v7 longLongValue];

      v9 = [v6 objectAtIndexedSubscript:0];
      v4 = [v9 componentsSeparatedByString:@"-"];

      if ([v4 count] == 2)
      {
        v10 = [v4 objectAtIndexedSubscript:0];
        longLongValue2 = [v10 longLongValue];

        v12 = [v4 objectAtIndexedSubscript:1];
        longLongValue3 = [v12 longLongValue];

        v14 = longLongValue3 - longLongValue2 + 1;
      }

      else
      {
        longLongValue2 = 0;
        v14 = 0;
      }
    }

    else
    {
      longLongValue2 = 0;
      v14 = 0;
      longLongValue = 0;
      v4 = v6;
    }
  }

  else
  {
    longLongValue2 = 0;
    v14 = 0;
    longLongValue = 0;
  }

  return [(MKHTTPContentRange *)self initWithOffset:longLongValue2 length:v14 total:longLongValue];
}

- (MKHTTPContentRange)initWithOffset:(unint64_t)offset length:(unint64_t)length total:(unint64_t)total
{
  v11.receiver = self;
  v11.super_class = MKHTTPContentRange;
  v8 = [(MKHTTPContentRange *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MKHTTPContentRange *)v8 setOffset:offset];
    [(MKHTTPContentRange *)v9 setLength:length];
    [(MKHTTPContentRange *)v9 setTotal:total];
  }

  return v9;
}

@end