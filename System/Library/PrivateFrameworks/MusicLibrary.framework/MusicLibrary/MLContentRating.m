@interface MLContentRating
- (MLContentRating)initWithContentRatingDictionary:(id)a3;
- (MLContentRating)initWithStringRepresentation:(id)a3;
- (NSNumber)ratingRank;
- (id)copyStringRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setValue:(id)a3 forKey:(id)a4;
- (void)_setValueCopy:(id)a3 forKey:(id)a4;
@end

@implementation MLContentRating

- (void)_setValueCopy:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  [(MLContentRating *)self _setValue:v7 forKey:v6];
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

- (id)copyStringRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = [(MLContentRating *)self ratingSystem];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_28408B690;
  }

  [v3 appendFormat:@"%@|", v6];
  v7 = [(MLContentRating *)self ratingLabel];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_28408B690;
  }

  [v3 appendFormat:@"%@|", v8];
  v9 = [(MLContentRating *)self ratingRank];
  v10 = [v9 stringValue];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &stru_28408B690;
  }

  [v3 appendFormat:@"%@|", v11];
  v12 = [(MLContentRating *)self ratingDescription];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = &stru_28408B690;
  }

  [v3 appendString:v13];

  return v3;
}

- (MLContentRating)initWithStringRepresentation:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([v4 length])
  {
    v6 = [v4 componentsSeparatedByString:@"|"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  dictionary = self->_dictionary;

  return [v4 initWithContentRatingDictionary:dictionary];
}

- (MLContentRating)initWithContentRatingDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MLContentRating;
  v5 = [(MLContentRating *)&v9 init];
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