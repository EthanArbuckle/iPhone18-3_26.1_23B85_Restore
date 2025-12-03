@interface MLMovieArtist
- (MLMovieArtist)initWithMovieArtistDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setValue:(id)value forKey:(id)key;
- (void)_setValueCopy:(id)copy forKey:(id)key;
@end

@implementation MLMovieArtist

- (void)_setValueCopy:(id)copy forKey:(id)key
{
  keyCopy = key;
  v7 = [copy copy];
  [(MLMovieArtist *)self _setValue:v7 forKey:keyCopy];
}

- (void)_setValue:(id)value forKey:(id)key
{
  dictionary = self->_dictionary;
  if (value)
  {
    [(NSMutableDictionary *)dictionary setObject:value forKey:key];
  }

  else
  {
    [(NSMutableDictionary *)dictionary removeObjectForKey:key];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  dictionary = self->_dictionary;

  return [v4 initWithMovieArtistDictionary:dictionary];
}

- (MLMovieArtist)initWithMovieArtistDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = MLMovieArtist;
  v5 = [(MLMovieArtist *)&v9 init];
  if (v5)
  {
    if (dictionaryCopy)
    {
      v6 = [dictionaryCopy mutableCopy];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    dictionary = v5->_dictionary;
    v5->_dictionary = v6;
  }

  return v5;
}

@end