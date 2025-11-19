@interface MKHTTPRange
- (MKHTTPRange)initWithHeaderValue:(id)a3;
- (MKHTTPRange)initWithOffset:(unint64_t)a3 length:(unint64_t)a4;
@end

@implementation MKHTTPRange

- (MKHTTPRange)initWithHeaderValue:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@"bytes="];
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
        v9 = [v7 longLongValue];
      }

      else
      {
        v9 = 0;
      }

      if ([v8 length])
      {
        v10 = [v8 longLongValue] - v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v6 = v4;
  }

  return [(MKHTTPRange *)self initWithOffset:v9 length:v10];
}

- (MKHTTPRange)initWithOffset:(unint64_t)a3 length:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = MKHTTPRange;
  v6 = [(MKHTTPRange *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(MKHTTPRange *)v6 setOffset:a3];
    [(MKHTTPRange *)v7 setLength:a4];
  }

  return v7;
}

@end