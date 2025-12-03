@interface MLContentRating
- (MLContentRating)initWithContentRatingDictionary:(id)dictionary;
- (MLContentRating)initWithStringRepresentation:(id)representation;
- (NSNumber)ratingRank;
- (id)copyStringRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setValue:(id)value forKey:(id)key;
- (void)_setValueCopy:(id)copy forKey:(id)key;
@end

@implementation MLContentRating

- (void)_setValueCopy:(id)copy forKey:(id)key
{
  keyCopy = key;
  v7 = [copy copy];
  [(MLContentRating *)self _setValue:v7 forKey:keyCopy];
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

- (id)copyStringRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  ratingSystem = [(MLContentRating *)self ratingSystem];
  v5 = ratingSystem;
  if (ratingSystem)
  {
    v6 = ratingSystem;
  }

  else
  {
    v6 = &stru_28408B690;
  }

  [v3 appendFormat:@"%@|", v6];
  ratingLabel = [(MLContentRating *)self ratingLabel];

  if (ratingLabel)
  {
    v8 = ratingLabel;
  }

  else
  {
    v8 = &stru_28408B690;
  }

  [v3 appendFormat:@"%@|", v8];
  ratingRank = [(MLContentRating *)self ratingRank];
  stringValue = [ratingRank stringValue];

  if (stringValue)
  {
    v11 = stringValue;
  }

  else
  {
    v11 = &stru_28408B690;
  }

  [v3 appendFormat:@"%@|", v11];
  ratingDescription = [(MLContentRating *)self ratingDescription];

  if (ratingDescription)
  {
    v13 = ratingDescription;
  }

  else
  {
    v13 = &stru_28408B690;
  }

  [v3 appendString:v13];

  return v3;
}

- (MLContentRating)initWithStringRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([representationCopy length])
  {
    v6 = [representationCopy componentsSeparatedByString:@"|"];
    v7 = [v6 count];
    if (v7)
    {
      v8 = v7;
      v9 = [v6 objectAtIndex:0];
      [v5 setObject:v9 forKey:@"system"];

      if (v8 != 1)
      {
        v10 = [v6 objectAtIndex:1];
        [v5 setObject:v10 forKey:@"label"];

        if (v8 >= 3)
        {
          v11 = MEMORY[0x277CCABB0];
          v12 = [v6 objectAtIndex:2];
          v13 = [v11 numberWithInt:{objc_msgSend(v12, "intValue")}];
          [v5 setObject:v13 forKey:@"rank"];
        }

        v14 = [v6 objectAtIndex:1];
        [v5 setObject:v14 forKey:@"content"];
      }
    }
  }

  v15 = [(MLContentRating *)self initWithContentRatingDictionary:v5];

  return v15;
}

- (NSNumber)ratingRank
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"rank"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v2, "integerValue")}];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  dictionary = self->_dictionary;

  return [v4 initWithContentRatingDictionary:dictionary];
}

- (MLContentRating)initWithContentRatingDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = MLContentRating;
  v5 = [(MLContentRating *)&v9 init];
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