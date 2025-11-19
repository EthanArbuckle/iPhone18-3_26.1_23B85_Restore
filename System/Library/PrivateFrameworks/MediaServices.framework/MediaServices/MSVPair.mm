@interface MSVPair
+ (id)pairWithFirst:(id)a3 second:(id)a4;
- (BOOL)isEqual:(id)a3;
- (MSVPair)initWithCoder:(id)a3;
- (MSVPair)initWithFirst:(id)a3 second:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSVPair

- (void)encodeWithCoder:(id)a3
{
  first = self->_first;
  v5 = a3;
  [v5 encodeObject:first forKey:@"first"];
  [v5 encodeObject:self->_second forKey:@"second"];
}

- (MSVPair)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"first"];
  v6 = [v4 decodeObjectForKey:@"second"];

  v7 = [(MSVPair *)self initWithFirst:v5 second:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      first = self->_first;
      if (first == v5->_first || [first isEqual:?])
      {
        second = self->_second;
        if (second == v5->_second)
        {
          v8 = 1;
        }

        else
        {
          v8 = [second isEqual:?];
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (MSVPair)initWithFirst:(id)a3 second:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MSVPair;
  v9 = [(MSVPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, a3);
    objc_storeStrong(&v10->_second, a4);
  }

  return v10;
}

+ (id)pairWithFirst:(id)a3 second:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithFirst:v7 second:v6];

  return v8;
}

@end