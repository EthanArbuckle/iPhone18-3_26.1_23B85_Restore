@interface BLItemContentRating
+ (id)stringForRatingSystem:(int64_t)system;
+ (int64_t)ratingSystemFromString:(id)string;
- (BLItemContentRating)init;
- (BLItemContentRating)initWithDictionary:(id)dictionary;
- (NSDictionary)contentRatingDictionary;
- (NSString)ratingDescription;
- (NSString)ratingLabel;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)rank;
- (int64_t)ratingSystem;
- (void)_setValue:(id)value forProperty:(id)property;
- (void)_setValueCopy:(id)copy forProperty:(id)property;
- (void)setRank:(int64_t)rank;
- (void)setRatingSystem:(int64_t)system;
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

- (BLItemContentRating)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = BLItemContentRating;
  v5 = [(BLItemContentRating *)&v9 init];
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
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSMutableDictionary *)self->_dictionary mutableCopyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (int64_t)rank
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"rank"];
  if (objc_opt_respondsToSelector())
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
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

- (void)setRank:(int64_t)rank
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:rank];
  [(BLItemContentRating *)self _setValue:v4 forProperty:@"rank"];
}

- (void)setRatingSystem:(int64_t)system
{
  v4 = [objc_opt_class() stringForRatingSystem:system];
  [(BLItemContentRating *)self _setValue:v4 forProperty:@"system"];
}

+ (int64_t)ratingSystemFromString:(id)string
{
  v4 = &qword_278D16D80;
  v5 = 96;
  while ([*(v4 - 1) caseInsensitiveCompare:string])
  {
    v4 += 2;
    if (!--v5)
    {
      return 0;
    }
  }

  return *v4;
}

+ (id)stringForRatingSystem:(int64_t)system
{
  v3 = &qword_278D16D80;
  v4 = 96;
  while (*v3 != system)
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

- (void)_setValueCopy:(id)copy forProperty:(id)property
{
  propertyCopy = property;
  v7 = [copy copy];
  [(BLItemContentRating *)self _setValue:v7 forProperty:propertyCopy];
}

- (void)_setValue:(id)value forProperty:(id)property
{
  dictionary = self->_dictionary;
  if (value)
  {
    [(NSMutableDictionary *)dictionary setObject:value forKey:property];
  }

  else
  {
    [(NSMutableDictionary *)dictionary removeObjectForKey:property];
  }
}

@end