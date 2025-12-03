@interface MKHTTPRange
- (MKHTTPRange)initWithHeaderValue:(id)value;
- (MKHTTPRange)initWithOffset:(unint64_t)offset length:(unint64_t)length;
@end

@implementation MKHTTPRange

- (MKHTTPRange)initWithHeaderValue:(id)value
{
  v4 = [value componentsSeparatedByString:@"bytes="];
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:1];
    v6 = [v5 componentsSeparatedByString:@"-"];

    if ([v6 count] == 2)
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      v8 = [v6 objectAtIndexedSubscript:1];
      if ([v7 length])
      {
        longLongValue = [v7 longLongValue];
      }

      else
      {
        longLongValue = 0;
      }

      if ([v8 length])
      {
        v10 = [v8 longLongValue] - longLongValue;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
      longLongValue = 0;
    }
  }

  else
  {
    v10 = 0;
    longLongValue = 0;
    v6 = v4;
  }

  return [(MKHTTPRange *)self initWithOffset:longLongValue length:v10];
}

- (MKHTTPRange)initWithOffset:(unint64_t)offset length:(unint64_t)length
{
  v9.receiver = self;
  v9.super_class = MKHTTPRange;
  v6 = [(MKHTTPRange *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(MKHTTPRange *)v6 setOffset:offset];
    [(MKHTTPRange *)v7 setLength:length];
  }

  return v7;
}

@end