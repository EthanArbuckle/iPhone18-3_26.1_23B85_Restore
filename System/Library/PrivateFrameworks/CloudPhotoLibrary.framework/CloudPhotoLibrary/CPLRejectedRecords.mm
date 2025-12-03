@interface CPLRejectedRecords
- (BOOL)isEqual:(id)equal;
- (BOOL)rejectsTheSameRecordsAs:(id)as;
- (CPLRejectedRecords)init;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)rejectedDescriptions;
- (void)enumerateRecordsAndReasonsUsingBlock:(id)block;
- (void)removeRejectedRecordsWithScopedIdentifiers:(id)identifiers;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
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

- (BOOL)rejectsTheSameRecordsAs:(id)as
{
  if (as == self)
  {
    return 1;
  }

  else
  {
    return [*(as + 1) isEqual:self->_records];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && [(NSMutableDictionary *)equalCopy->_records isEqual:self->_records])
    {
      v6 = [(NSMutableDictionary *)equalCopy->_reasons isEqual:self->_reasons];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)enumerateRecordsAndReasonsUsingBlock:(id)block
{
  blockCopy = block;
  records = self->_records;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__CPLRejectedRecords_enumerateRecordsAndReasonsUsingBlock___block_invoke;
  v7[3] = &unk_1E861FD78;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableDictionary *)records enumerateKeysAndObjectsUsingBlock:v7];
}

void __59__CPLRejectedRecords_enumerateRecordsAndReasonsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 16);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  (*(*(a1 + 40) + 16))();
}

- (void)removeRejectedRecordsWithScopedIdentifiers:(id)identifiers
{
  records = self->_records;
  identifiersCopy = identifiers;
  [(NSMutableDictionary *)records removeObjectsForKeys:identifiersCopy];
  [(NSMutableDictionary *)self->_reasons removeObjectsForKeys:identifiersCopy];
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  scopedIdentifier = [subscriptCopy scopedIdentifier];
  records = self->_records;
  if (objectCopy)
  {
    [(NSMutableDictionary *)records setObject:subscriptCopy forKeyedSubscript:scopedIdentifier];
    [(NSMutableDictionary *)self->_reasons setObject:objectCopy forKeyedSubscript:scopedIdentifier];
  }

  else
  {
    [(NSMutableDictionary *)records removeObjectForKey:scopedIdentifier];
    [(NSMutableDictionary *)self->_reasons removeObjectForKey:scopedIdentifier];
  }
}

- (id)objectForKeyedSubscript:(id)subscript
{
  reasons = self->_reasons;
  scopedIdentifier = [subscript scopedIdentifier];
  v5 = [(NSMutableDictionary *)reasons objectForKeyedSubscript:scopedIdentifier];

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