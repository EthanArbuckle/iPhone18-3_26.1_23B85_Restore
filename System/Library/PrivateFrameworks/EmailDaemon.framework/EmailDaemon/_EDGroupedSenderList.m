@interface _EDGroupedSenderList
- (_EDGroupedSenderList)initWithComparator:(id)a3 grouping:(int64_t)a4;
- (id)groupedSenderAtIndex:(unint64_t)a3;
- (id)groupedSenderForKey:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (id)orderedGroupedSendersWithLimit:(unint64_t)a3;
- (unint64_t)count;
- (unint64_t)unreadCount;
- (void)_checkConsistencyAndRebuildIfNecessary;
- (void)addGroupedSender:(id)a3;
- (void)removeGroupedSender:(id)a3;
- (void)updateGroupedSender:(id)a3;
@end

@implementation _EDGroupedSenderList

- (_EDGroupedSenderList)initWithComparator:(id)a3 grouping:(int64_t)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = _EDGroupedSenderList;
  v7 = [(_EDGroupedSenderList *)&v15 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    groupsBySender = v7->_groupsBySender;
    v7->_groupsBySender = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    orderedGroups = v7->_orderedGroups;
    v7->_orderedGroups = v10;

    v12 = _Block_copy(v6);
    comparator = v7->_comparator;
    v7->_comparator = v12;

    v7->_lock._os_unfair_lock_opaque = 0;
    v7->_grouping = a4;
  }

  return v7;
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_groupsBySender count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (unint64_t)unreadCount
{
  v2 = [(_EDGroupedSenderList *)self orderedGroupedSenders];
  v3 = [v2 array];
  v4 = [v3 ef_filter:&__block_literal_global_417];
  v5 = [v4 count];

  return v5;
}

- (id)groupedSenderAtIndex:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableOrderedSet *)self->_orderedGroups objectAtIndex:a3];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v3 = [(_EDGroupedSenderList *)self groupedSenderForKey:a3];

  return v3;
}

- (id)groupedSenderForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_groupsBySender objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)orderedGroupedSendersWithLimit:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  orderedGroups = self->_orderedGroups;
  if (a3)
  {
    v6 = [(NSMutableOrderedSet *)orderedGroups ef_prefix:a3];
  }

  else
  {
    v6 = [(NSMutableOrderedSet *)orderedGroups copy];
  }

  v7 = v6;
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (void)addGroupedSender:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AD98];
  v8 = v4;
  v6 = [v4 objectID];
  v7 = [v5 numberWithLongLong:{objc_msgSend(v6, "businessID")}];

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_groupsBySender setObject:v8 forKeyedSubscript:v7];
  [(NSMutableOrderedSet *)self->_orderedGroups ef_insertObject:v8 usingComparator:self->_comparator];
  [(_EDGroupedSenderList *)self _checkConsistencyAndRebuildIfNecessary];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeGroupedSender:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AD98];
  v8 = v4;
  v6 = [v4 objectID];
  v7 = [v5 numberWithLongLong:{objc_msgSend(v6, "businessID")}];

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_groupsBySender setObject:0 forKeyedSubscript:v7];
  [(NSMutableOrderedSet *)self->_orderedGroups removeObject:v8];
  [(_EDGroupedSenderList *)self _checkConsistencyAndRebuildIfNecessary];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateGroupedSender:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AD98];
  v9 = v4;
  v6 = [v4 objectID];
  v7 = [v5 numberWithLongLong:{objc_msgSend(v6, "businessID")}];

  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_groupsBySender objectForKeyedSubscript:v7];

  if (v8)
  {
    [(NSMutableOrderedSet *)self->_orderedGroups removeObject:v9];
    [(NSMutableOrderedSet *)self->_orderedGroups ef_insertObject:v9 usingComparator:self->_comparator];
    [(_EDGroupedSenderList *)self _checkConsistencyAndRebuildIfNecessary];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_checkConsistencyAndRebuildIfNecessary
{
  v3 = [(NSMutableDictionary *)self->_groupsBySender count];
  if (v3 != [(NSMutableOrderedSet *)self->_orderedGroups count])
  {
    v4 = objc_alloc(MEMORY[0x1E695DFA0]);
    v5 = [(NSMutableDictionary *)self->_groupsBySender allValues];
    v6 = [v4 initWithArray:v5];
    orderedGroups = self->_orderedGroups;
    self->_orderedGroups = v6;

    v8 = self->_orderedGroups;
    comparator = self->_comparator;

    [(NSMutableOrderedSet *)v8 sortUsingComparator:comparator];
  }
}

@end