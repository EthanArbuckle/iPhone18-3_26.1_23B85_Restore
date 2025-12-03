@interface _EDGroupedSenderList
- (_EDGroupedSenderList)initWithComparator:(id)comparator grouping:(int64_t)grouping;
- (id)groupedSenderAtIndex:(unint64_t)index;
- (id)groupedSenderForKey:(id)key;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)orderedGroupedSendersWithLimit:(unint64_t)limit;
- (unint64_t)count;
- (unint64_t)unreadCount;
- (void)_checkConsistencyAndRebuildIfNecessary;
- (void)addGroupedSender:(id)sender;
- (void)removeGroupedSender:(id)sender;
- (void)updateGroupedSender:(id)sender;
@end

@implementation _EDGroupedSenderList

- (_EDGroupedSenderList)initWithComparator:(id)comparator grouping:(int64_t)grouping
{
  comparatorCopy = comparator;
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

    v12 = _Block_copy(comparatorCopy);
    comparator = v7->_comparator;
    v7->_comparator = v12;

    v7->_lock._os_unfair_lock_opaque = 0;
    v7->_grouping = grouping;
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
  orderedGroupedSenders = [(_EDGroupedSenderList *)self orderedGroupedSenders];
  array = [orderedGroupedSenders array];
  v4 = [array ef_filter:&__block_literal_global_417];
  v5 = [v4 count];

  return v5;
}

- (id)groupedSenderAtIndex:(unint64_t)index
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableOrderedSet *)self->_orderedGroups objectAtIndex:index];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v3 = [(_EDGroupedSenderList *)self groupedSenderForKey:subscript];

  return v3;
}

- (id)groupedSenderForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_groupsBySender objectForKeyedSubscript:keyCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)orderedGroupedSendersWithLimit:(unint64_t)limit
{
  os_unfair_lock_lock(&self->_lock);
  orderedGroups = self->_orderedGroups;
  if (limit)
  {
    v6 = [(NSMutableOrderedSet *)orderedGroups ef_prefix:limit];
  }

  else
  {
    v6 = [(NSMutableOrderedSet *)orderedGroups copy];
  }

  v7 = v6;
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (void)addGroupedSender:(id)sender
{
  senderCopy = sender;
  v5 = MEMORY[0x1E696AD98];
  v8 = senderCopy;
  objectID = [senderCopy objectID];
  v7 = [v5 numberWithLongLong:{objc_msgSend(objectID, "businessID")}];

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_groupsBySender setObject:v8 forKeyedSubscript:v7];
  [(NSMutableOrderedSet *)self->_orderedGroups ef_insertObject:v8 usingComparator:self->_comparator];
  [(_EDGroupedSenderList *)self _checkConsistencyAndRebuildIfNecessary];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeGroupedSender:(id)sender
{
  senderCopy = sender;
  v5 = MEMORY[0x1E696AD98];
  v8 = senderCopy;
  objectID = [senderCopy objectID];
  v7 = [v5 numberWithLongLong:{objc_msgSend(objectID, "businessID")}];

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_groupsBySender setObject:0 forKeyedSubscript:v7];
  [(NSMutableOrderedSet *)self->_orderedGroups removeObject:v8];
  [(_EDGroupedSenderList *)self _checkConsistencyAndRebuildIfNecessary];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateGroupedSender:(id)sender
{
  senderCopy = sender;
  v5 = MEMORY[0x1E696AD98];
  v9 = senderCopy;
  objectID = [senderCopy objectID];
  v7 = [v5 numberWithLongLong:{objc_msgSend(objectID, "businessID")}];

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
    allValues = [(NSMutableDictionary *)self->_groupsBySender allValues];
    v6 = [v4 initWithArray:allValues];
    orderedGroups = self->_orderedGroups;
    self->_orderedGroups = v6;

    v8 = self->_orderedGroups;
    comparator = self->_comparator;

    [(NSMutableOrderedSet *)v8 sortUsingComparator:comparator];
  }
}

@end