@interface CADSpotlightMockDefaults
- (CADSpotlightMockDefaults)init;
- (NSString)description;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation CADSpotlightMockDefaults

- (CADSpotlightMockDefaults)init
{
  v6.receiver = self;
  v6.super_class = CADSpotlightMockDefaults;
  v2 = [(CADSpotlightMockDefaults *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dict = v2->_dict;
    v2->_dict = dictionary;
  }

  return v2;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if ([keyCopy isEqualToString:@"LastUnfinishedSpotlightReindex"])
  {
    if (objectCopy)
    {
      self->_reindexStarted = 1;
      [(CADSpotlightMockDefaults *)self setSuccessfullyReindexed:0];
      v7 = objectCopy;
LABEL_5:
      [(NSMutableDictionary *)self->_dict setObject:v7 forKey:keyCopy];
      goto LABEL_10;
    }

    if (self->_reindexStarted)
    {
      self->_reindexStarted = 0;
    }

    [(CADSpotlightMockDefaults *)self setSuccessfullyReindexed:?];
  }

  else
  {
    v7 = objectCopy;
    if (objectCopy)
    {
      goto LABEL_5;
    }
  }

  [(NSMutableDictionary *)self->_dict removeObjectForKey:keyCopy];
LABEL_10:
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(NSMutableDictionary *)self->_dict description];
  v6 = [v3 stringWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

@end