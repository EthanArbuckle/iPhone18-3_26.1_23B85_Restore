@interface BMBehaviorRetriever
- (BMBehaviorRetriever)init;
- (BMBehaviorRetriever)initWithURL:(id)a3;
- (BMBehaviorRetriever)initWithURL:(id)a3 taskSpecificItemTypes:(id)a4;
- (id)retrieveRulesWithAbsoluteSupport:(unint64_t)a3 support:(double)a4 confidence:(double)a5 conviction:(double)a6 lift:(double)a7 rulePowerFactor:(double)a8 uniqueDaysLastWeek:(unint64_t)a9 uniqueDaysTotal:(unint64_t)a10 filters:(id)a11 error:(id *)a12;
- (id)retrieveRulesWithSupport:(double)a3 confidence:(double)a4 filters:(id)a5;
- (id)retrieveRulesWithSupport:(double)a3 confidence:(double)a4 filters:(id)a5 error:(id *)a6;
@end

@implementation BMBehaviorRetriever

- (BMBehaviorRetriever)init
{
  v3 = +[BMBehaviorStorage defaultURL];
  v4 = [(BMBehaviorRetriever *)self initWithURL:v3];

  return v4;
}

- (BMBehaviorRetriever)initWithURL:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [v4 set];
  v7 = [(BMBehaviorRetriever *)self initWithURL:v5 taskSpecificItemTypes:v6];

  return v7;
}

- (BMBehaviorRetriever)initWithURL:(id)a3 taskSpecificItemTypes:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = BMBehaviorRetriever;
  v8 = [(BMBehaviorRetriever *)&v22 init];
  if (v8)
  {
    v9 = [[BMBehaviorStorage alloc] initWithURL:v6 readOnly:1];
    storage = v8->_storage;
    v8->_storage = v9;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = v7;
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

- (id)retrieveRulesWithSupport:(double)a3 confidence:(double)a4 filters:(id)a5
{
  if (a5)
  {
    v8 = [(BMBehaviorRetriever *)self retrieveRulesWithSupport:a5 confidence:0 filters:a3 error:a4];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB98] set];
    v8 = [(BMBehaviorRetriever *)self retrieveRulesWithSupport:v9 confidence:0 filters:a3 error:a4];
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

- (id)retrieveRulesWithSupport:(double)a3 confidence:(double)a4 filters:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = [(BMBehaviorRetriever *)self storage];
  v12 = [v11 fetchRulesWithSupport:v10 confidence:self->_fetchLimit filters:a6 limit:a3 error:a4];

  return v12;
}

- (id)retrieveRulesWithAbsoluteSupport:(unint64_t)a3 support:(double)a4 confidence:(double)a5 conviction:(double)a6 lift:(double)a7 rulePowerFactor:(double)a8 uniqueDaysLastWeek:(unint64_t)a9 uniqueDaysTotal:(unint64_t)a10 filters:(id)a11 error:(id *)a12
{
  v22 = a11;
  v23 = [(BMBehaviorRetriever *)self storage];
  v24 = [v23 fetchRulesWithAbsoluteSupport:a3 support:a9 confidence:a10 conviction:v22 lift:self->_fetchLimit rulePowerFactor:a12 uniqueDaysLastWeek:a4 uniqueDaysTotal:a5 filters:a6 limit:a7 error:a8];

  return v24;
}

@end