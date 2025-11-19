@interface CADSpotlightMockDefaults
- (CADSpotlightMockDefaults)init;
- (NSString)description;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation CADSpotlightMockDefaults

- (CADSpotlightMockDefaults)init
{
  v6.receiver = self;
  v6.super_class = CADSpotlightMockDefaults;
  v2 = [(CADSpotlightMockDefaults *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    dict = v2->_dict;
    v2->_dict = v3;
  }

  return v2;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([v6 isEqualToString:@"LastUnfinishedSpotlightReindex"])
  {
    if (v8)
    {
      self->_reindexStarted = 1;
      [(CADSpotlightMockDefaults *)self setSuccessfullyReindexed:0];
      v7 = v8;
LABEL_5:
      [(NSMutableDictionary *)self->_dict setObject:v7 forKey:v6];
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
    v7 = v8;
    if (v8)
    {
      goto LABEL_5;
    }
  }

  [(NSMutableDictionary *)self->_dict removeObjectForKey:v6];
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