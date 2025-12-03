@interface IMKeyValueCollectionDictionaryStorage
- (IMKeyValueCollectionDictionaryStorage)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionary;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMKeyValueCollectionDictionaryStorage

- (NSDictionary)dictionary
{
  v2 = [(NSMutableDictionary *)self->_dictionary copy];

  return v2;
}

- (IMKeyValueCollectionDictionaryStorage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = IMKeyValueCollectionDictionaryStorage;
  v5 = [(IMKeyValueCollectionDictionaryStorage *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy mutableCopy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  dictionary = self->_dictionary;

  return [v4 initWithDictionary:dictionary];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = IMKeyValueCollectionDictionaryStorage;
  v4 = [(IMKeyValueCollectionDictionaryStorage *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ :%@]", v4, self->_dictionary];

  return v5;
}

@end