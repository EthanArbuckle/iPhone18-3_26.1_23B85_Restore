@interface CPLRejectedRecords
- (BOOL)isEqual:(id)a3;
- (BOOL)rejectsTheSameRecordsAs:(id)a3;
- (CPLRejectedRecords)init;
- (id)objectForKeyedSubscript:(id)a3;
- (id)rejectedDescriptions;
- (void)enumerateRecordsAndReasonsUsingBlock:(id)a3;
- (void)removeRejectedRecordsWithScopedIdentifiers:(id)a3;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
@end

@implementation CPLRejectedRecords

- (id)rejectedDescriptions
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableDictionary count](self->_records, "count")}];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CPLRejectedRecords_rejectedDescriptions__block_invoke;
  v6[3] = &unk_1E861FDA0;
  v4 = v3;
  v7 = v4;
  [(CPLRejectedRecords *)self enumerateRecordsAndReasonsUsingBlock:v6];

  return v4;
}

void __42__CPLRejectedRecords_rejectedDescriptions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v9 = objc_opt_class();
  v10 = [v7 scopedIdentifier];

  v11 = [v8 initWithFormat:@"%@ %@: '%@'", v9, v10, v6];
  [*(a1 + 32) addObject:v11];
}

- (BOOL)rejectsTheSameRecordsAs:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  else
  {
    return [*(a3 + 1) isEqual:self->_records];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && [(NSMutableDictionary *)v4->_records isEqual:self->_records])
    {
      v6 = [(NSMutableDictionary *)v4->_reasons isEqual:self->_reasons];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)enumerateRecordsAndReasonsUsingBlock:(id)a3
{
  v4 = a3;
  records = self->_records;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__CPLRejectedRecords_enumerateRecordsAndReasonsUsingBlock___block_invoke;
  v7[3] = &unk_1E861FD78;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)records enumerateKeysAndObjectsUsingBlock:v7];
}

void __59__CPLRejectedRecords_enumerateRecordsAndReasonsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 16);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  (*(*(a1 + 40) + 16))();
}

- (void)removeRejectedRecordsWithScopedIdentifiers:(id)a3
{
  records = self->_records;
  v5 = a3;
  [(NSMutableDictionary *)records removeObjectsForKeys:v5];
  [(NSMutableDictionary *)self->_reasons removeObjectsForKeys:v5];
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v6 scopedIdentifier];
  records = self->_records;
  if (v9)
  {
    [(NSMutableDictionary *)records setObject:v6 forKeyedSubscript:v7];
    [(NSMutableDictionary *)self->_reasons setObject:v9 forKeyedSubscript:v7];
  }

  else
  {
    [(NSMutableDictionary *)records removeObjectForKey:v7];
    [(NSMutableDictionary *)self->_reasons removeObjectForKey:v7];
  }
}

- (id)objectForKeyedSubscript:(id)a3
{
  reasons = self->_reasons;
  v4 = [a3 scopedIdentifier];
  v5 = [(NSMutableDictionary *)reasons objectForKeyedSubscript:v4];

  return v5;
}

- (CPLRejectedRecords)init
{
  v8.receiver = self;
  v8.super_class = CPLRejectedRecords;
  v2 = [(CPLRejectedRecords *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    records = v2->_records;
    v2->_records = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    reasons = v2->_reasons;
    v2->_reasons = v5;
  }

  return v2;
}

@end