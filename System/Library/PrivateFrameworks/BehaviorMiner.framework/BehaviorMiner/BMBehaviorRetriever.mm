@interface BMBehaviorRetriever
- (BMBehaviorRetriever)init;
- (BMBehaviorRetriever)initWithURL:(id)l;
- (BMBehaviorRetriever)initWithURL:(id)l taskSpecificItemTypes:(id)types;
- (id)retrieveRulesWithAbsoluteSupport:(unint64_t)support support:(double)a4 confidence:(double)confidence conviction:(double)conviction lift:(double)lift rulePowerFactor:(double)factor uniqueDaysLastWeek:(unint64_t)week uniqueDaysTotal:(unint64_t)self0 filters:(id)self1 error:(id *)self2;
- (id)retrieveRulesWithSupport:(double)support confidence:(double)confidence filters:(id)filters;
- (id)retrieveRulesWithSupport:(double)support confidence:(double)confidence filters:(id)filters error:(id *)error;
@end

@implementation BMBehaviorRetriever

- (BMBehaviorRetriever)init
{
  v3 = +[BMBehaviorStorage defaultURL];
  v4 = [(BMBehaviorRetriever *)self initWithURL:v3];

  return v4;
}

- (BMBehaviorRetriever)initWithURL:(id)l
{
  v4 = MEMORY[0x277CBEB98];
  lCopy = l;
  v6 = [v4 set];
  v7 = [(BMBehaviorRetriever *)self initWithURL:lCopy taskSpecificItemTypes:v6];

  return v7;
}

- (BMBehaviorRetriever)initWithURL:(id)l taskSpecificItemTypes:(id)types
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  typesCopy = types;
  v22.receiver = self;
  v22.super_class = BMBehaviorRetriever;
  v8 = [(BMBehaviorRetriever *)&v22 init];
  if (v8)
  {
    v9 = [[BMBehaviorStorage alloc] initWithURL:lCopy readOnly:1];
    storage = v8->_storage;
    v8->_storage = v9;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = typesCopy;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [BMItemType registerItemType:*(*(&v18 + 1) + 8 * v15++), v18];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v13);
    }

    v8->_fetchLimit = 2048;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)retrieveRulesWithSupport:(double)support confidence:(double)confidence filters:(id)filters
{
  if (filters)
  {
    v8 = [(BMBehaviorRetriever *)self retrieveRulesWithSupport:filters confidence:0 filters:support error:confidence];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB98] set];
    v8 = [(BMBehaviorRetriever *)self retrieveRulesWithSupport:v9 confidence:0 filters:support error:confidence];
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = v10;

  return v10;
}

- (id)retrieveRulesWithSupport:(double)support confidence:(double)confidence filters:(id)filters error:(id *)error
{
  filtersCopy = filters;
  storage = [(BMBehaviorRetriever *)self storage];
  v12 = [storage fetchRulesWithSupport:filtersCopy confidence:self->_fetchLimit filters:error limit:support error:confidence];

  return v12;
}

- (id)retrieveRulesWithAbsoluteSupport:(unint64_t)support support:(double)a4 confidence:(double)confidence conviction:(double)conviction lift:(double)lift rulePowerFactor:(double)factor uniqueDaysLastWeek:(unint64_t)week uniqueDaysTotal:(unint64_t)self0 filters:(id)self1 error:(id *)self2
{
  filtersCopy = filters;
  storage = [(BMBehaviorRetriever *)self storage];
  v24 = [storage fetchRulesWithAbsoluteSupport:support support:week confidence:total conviction:filtersCopy lift:self->_fetchLimit rulePowerFactor:error uniqueDaysLastWeek:a4 uniqueDaysTotal:confidence filters:conviction limit:lift error:factor];

  return v24;
}

@end