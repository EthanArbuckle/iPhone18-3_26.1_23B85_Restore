@interface MKHTTPContentRange
- (MKHTTPContentRange)initWithHeaderValue:(id)a3;
- (MKHTTPContentRange)initWithOffset:(unint64_t)a3 length:(unint64_t)a4 total:(unint64_t)a5;
@end

@implementation MKHTTPContentRange

- (MKHTTPContentRange)initWithHeaderValue:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@"bytes"];
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:1];
    v6 = [v5 componentsSeparatedByString:@"/"];

    if ([v6 count] == 2)
    {
      v7 = [v6 objectAtIndexedSubscript:1];
      v8 = [v7 longLongValue];

      v9 = [v6 objectAtIndexedSubscript:0];
      v4 = [v9 componentsSeparatedByString:@"-"];

      if ([v4 count] == 2)
      {
        v10 = [v4 objectAtIndexedSubscript:0];
        v11 = [v10 longLongValue];

        v12 = [v4 objectAtIndexedSubscript:1];
        v13 = [v12 longLongValue];

        v14 = v13 - v11 + 1;
      }

      else
      {
        v11 = 0;
        v14 = 0;
      }
    }

    else
    {
      v11 = 0;
      v14 = 0;
      v8 = 0;
      v4 = v6;
    }
  }

  else
  {
    v11 = 0;
    v14 = 0;
    v8 = 0;
  }

  return [(MKHTTPContentRange *)self initWithOffset:v11 length:v14 total:v8];
}

- (MKHTTPContentRange)initWithOffset:(unint64_t)a3 length:(unint64_t)a4 total:(unint64_t)a5
{
  v11.receiver = self;
  v11.super_class = MKHTTPContentRange;
  v8 = [(MKHTTPContentRange *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MKHTTPContentRange *)v8 setOffset:a3];
    [(MKHTTPContentRange *)v9 setLength:a4];
    [(MKHTTPContentRange *)v9 setTotal:a5];
  }

  return v9;
}

@end