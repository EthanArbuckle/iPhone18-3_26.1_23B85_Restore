@interface SGSuggestionsWorkGroupManagerGuardedData
- (SGSuggestionsWorkGroupManagerGuardedData)init;
- (id)createGroupForUniqueId:(id)id;
- (void)addToProcessedIds:(id)ids;
- (void)enterGroupForUniqueId:(id)id;
- (void)leaveGroupForUniqueId:(id)id;
@end

@implementation SGSuggestionsWorkGroupManagerGuardedData

- (void)addToProcessedIds:(id)ids
{
  idsCopy = ids;
  if ([(NSMutableArray *)self->_uniqueIds count]>= 0x40 && ([(NSMutableArray *)self->_uniqueIds containsObject:idsCopy]& 1) == 0)
  {
    [(NSMutableArray *)self->_uniqueIds removeObjectAtIndex:0];
  }

  [(NSMutableArray *)self->_uniqueIds addObject:idsCopy];
}

- (void)leaveGroupForUniqueId:(id)id
{
  v3 = [(NSMapTable *)self->_groupLookup objectForKey:id];
  if (v3)
  {
    v4 = v3;
    dispatch_group_leave(v3);
    v3 = v4;
  }
}

- (void)enterGroupForUniqueId:(id)id
{
  v3 = [(NSMapTable *)self->_groupLookup objectForKey:id];
  if (v3)
  {
    v4 = v3;
    dispatch_group_enter(v3);
    v3 = v4;
  }
}

- (id)createGroupForUniqueId:(id)id
{
  idCopy = id;
  v5 = dispatch_group_create();
  [(NSMapTable *)self->_groupLookup setObject:v5 forKey:idCopy];

  return v5;
}

- (SGSuggestionsWorkGroupManagerGuardedData)init
{
  v8.receiver = self;
  v8.super_class = SGSuggestionsWorkGroupManagerGuardedData;
  v2 = [(SGSuggestionsWorkGroupManagerGuardedData *)&v8 init];
  if (v2)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    groupLookup = v2->_groupLookup;
    v2->_groupLookup = strongToWeakObjectsMapTable;

    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:64];
    uniqueIds = v2->_uniqueIds;
    v2->_uniqueIds = v5;
  }

  return v2;
}

@end