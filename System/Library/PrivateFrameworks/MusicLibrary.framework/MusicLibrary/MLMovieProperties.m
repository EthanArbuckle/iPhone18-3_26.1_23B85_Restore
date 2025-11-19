@interface MLMovieProperties
- (MLMovieProperties)initWithMoviePropertiesDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setValue:(id)a3 forKey:(id)a4;
- (void)_setValueCopy:(id)a3 forKey:(id)a4;
@end

@implementation MLMovieProperties

- (void)_setValueCopy:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  [(MLMovieProperties *)self _setValue:v7 forKey:v6];
}

- (void)_setValue:(id)a3 forKey:(id)a4
{
  dictionary = self->_dictionary;
  if (a3)
  {
    [(NSMutableDictionary *)dictionary setObject:a3 forKey:a4];
  }

  else
  {
    [(NSMutableDictionary *)dictionary removeObjectForKey:a4];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  dictionary = self->_dictionary;

  return [v4 initWithMoviePropertiesDictionary:dictionary];
}

- (MLMovieProperties)initWithMoviePropertiesDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MLMovieProperties;
  v5 = [(MLMovieProperties *)&v9 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 mutableCopy];
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