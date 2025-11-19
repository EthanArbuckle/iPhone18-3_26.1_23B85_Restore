@interface CNWrappedDictionary
- (CNWrappedDictionary)initWithDictionary:(id)a3;
@end

@implementation CNWrappedDictionary

- (CNWrappedDictionary)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNWrappedDictionary;
  v5 = [(CNWrappedDictionary *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    underlyingDictionary = v5->_underlyingDictionary;
    v5->_underlyingDictionary = v6;

    v8 = v5;
  }

  return v5;
}

@end