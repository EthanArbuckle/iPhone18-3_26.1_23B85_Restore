@interface MSVPair
+ (id)pairWithFirst:(id)first second:(id)second;
- (BOOL)isEqual:(id)equal;
- (MSVPair)initWithCoder:(id)coder;
- (MSVPair)initWithFirst:(id)first second:(id)second;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSVPair

- (void)encodeWithCoder:(id)coder
{
  first = self->_first;
  coderCopy = coder;
  [coderCopy encodeObject:first forKey:@"first"];
  [coderCopy encodeObject:self->_second forKey:@"second"];
}

- (MSVPair)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"first"];
  v6 = [coderCopy decodeObjectForKey:@"second"];

  v7 = [(MSVPair *)self initWithFirst:v5 second:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (MSVPair)initWithFirst:(id)first second:(id)second
{
  firstCopy = first;
  secondCopy = second;
  v12.receiver = self;
  v12.super_class = MSVPair;
  v9 = [(MSVPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, first);
    objc_storeStrong(&v10->_second, second);
  }

  return v10;
}

+ (id)pairWithFirst:(id)first second:(id)second
{
  secondCopy = second;
  firstCopy = first;
  v8 = [[self alloc] initWithFirst:firstCopy second:secondCopy];

  return v8;
}

@end