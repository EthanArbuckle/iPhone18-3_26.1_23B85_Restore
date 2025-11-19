@interface _EDSearchableIndexPendingRemovals
- (_EDSearchableIndexPendingRemovals)initWithPurgeReasons:(id)a3 exclusionReasons:(id)a4;
- (id)_identifiersPassingReasonsTest:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addIdentifiers:(id)a3 withReasons:(id)a4;
@end

@implementation _EDSearchableIndexPendingRemovals

- (_EDSearchableIndexPendingRemovals)initWithPurgeReasons:(id)a3 exclusionReasons:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = _EDSearchableIndexPendingRemovals;
  v8 = [(_EDSearchableIndexPendingRemovals *)&v16 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    reasonsByIdentifier = v8->_reasonsByIdentifier;
    v8->_reasonsByIdentifier = v9;

    v11 = [v6 copy];
    purgeReasons = v8->_purgeReasons;
    v8->_purgeReasons = v11;

    v13 = [v7 copy];
    exclusionReasons = v8->_exclusionReasons;
    v8->_exclusionReasons = v13;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithPurgeReasons:self->_purgeReasons exclusionReasons:self->_exclusionReasons];
  v5 = [(NSMutableDictionary *)self->_reasonsByIdentifier mutableCopy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (id)_identifiersPassingReasonsTest:(id)a3
{
  v4 = a3;
  v5 = [(_EDSearchableIndexPendingRemovals *)self purgeReasons];
  v6 = [(_EDSearchableIndexPendingRemovals *)self exclusionReasons];
  v7 = [MEMORY[0x1E695DF70] array];
  reasonsByIdentifier = self->_reasonsByIdentifier;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68___EDSearchableIndexPendingRemovals__identifiersPassingReasonsTest___block_invoke;
  v16[3] = &unk_1E8257300;
  v9 = v4;
  v20 = v9;
  v10 = v5;
  v17 = v10;
  v11 = v6;
  v18 = v11;
  v12 = v7;
  v19 = v12;
  [(NSMutableDictionary *)reasonsByIdentifier enumerateKeysAndObjectsUsingBlock:v16];
  v13 = v19;
  v14 = v12;

  return v12;
}

- (void)addIdentifiers:(id)a3 withReasons:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [(NSMutableDictionary *)self->_reasonsByIdentifier objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v11), v15];
        v13 = v12;
        if (v12)
        {
          [v12 unionSet:v7];
        }

        else
        {
          v13 = [MEMORY[0x1E695DFA8] setWithSet:v7];
          [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end