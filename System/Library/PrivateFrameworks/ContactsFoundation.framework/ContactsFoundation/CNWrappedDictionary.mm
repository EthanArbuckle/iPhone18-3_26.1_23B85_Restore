@interface CNWrappedDictionary
- (CNWrappedDictionary)initWithDictionary:(id)dictionary;
@end

@implementation CNWrappedDictionary

- (CNWrappedDictionary)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = CNWrappedDictionary;
  v5 = [(CNWrappedDictionary *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    underlyingDictionary = v5->_underlyingDictionary;
    v5->_underlyingDictionary = v6;

    v8 = v5;
  }

  return v5;
}

@end