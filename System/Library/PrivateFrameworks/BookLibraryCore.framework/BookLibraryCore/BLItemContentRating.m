@interface BLItemContentRating
+ (id)stringForRatingSystem:(int64_t)a3;
+ (int64_t)ratingSystemFromString:(id)a3;
- (BLItemContentRating)init;
- (BLItemContentRating)initWithDictionary:(id)a3;
- (NSDictionary)contentRatingDictionary;
- (NSString)ratingDescription;
- (NSString)ratingLabel;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)rank;
- (int64_t)ratingSystem;
- (void)_setValue:(id)a3 forProperty:(id)a4;
- (void)_setValueCopy:(id)a3 forProperty:(id)a4;
- (void)setRank:(int64_t)a3;
- (void)setRatingSystem:(int64_t)a3;
@end

@implementation BLItemContentRating

- (BLItemContentRating)init
{
  v6.receiver = self;
  v6.super_class = BLItemContentRating;
  v2 = [(BLItemContentRating *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dictionary = v2->_dictionary;
    v2->_dictionary = v3;
  }

  return v2;
}

- (BLItemContentRating)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BLItemContentRating;
  v5 = [(BLItemContentRating *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSMutableDictionary *)self->_dictionary mutableCopyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (int64_t)rank
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"rank"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 intValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)ratingDescription
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"description"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)ratingLabel
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"label"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (int64_t)ratingSystem
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"system"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [objc_opt_class() ratingSystemFromString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRank:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(BLItemContentRating *)self _setValue:v4 forProperty:@"rank"];
}

- (void)setRatingSystem:(int64_t)a3
{
  v4 = [objc_opt_class() stringForRatingSystem:a3];
  [(BLItemContentRating *)self _setValue:v4 forProperty:@"system"];
}

+ (int64_t)ratingSystemFromString:(id)a3
{
  v4 = &qword_278D16D80;
  v5 = 96;
  while ([*(v4 - 1) caseInsensitiveCompare:a3])
  {
    v4 += 2;
    if (!--v5)
    {
      return 0;
    }
  }

  return *v4;
}

+ (id)stringForRatingSystem:(int64_t)a3
{
  v3 = &qword_278D16D80;
  v4 = 96;
  while (*v3 != a3)
  {
    v3 += 2;
    if (!--v4)
    {
      v5 = 0;
      goto LABEL_6;
    }
  }

  v5 = *(v3 - 1);
LABEL_6:

  return v5;
}

- (NSDictionary)contentRatingDictionary
{
  v2 = [(NSMutableDictionary *)self->_dictionary copy];

  return v2;
}

- (void)_setValueCopy:(id)a3 forProperty:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  [(BLItemContentRating *)self _setValue:v7 forProperty:v6];
}

- (void)_setValue:(id)a3 forProperty:(id)a4
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

@end