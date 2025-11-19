@interface SGSuggestionsWorkGroupManagerGuardedData
- (SGSuggestionsWorkGroupManagerGuardedData)init;
- (id)createGroupForUniqueId:(id)a3;
- (void)addToProcessedIds:(id)a3;
- (void)enterGroupForUniqueId:(id)a3;
- (void)leaveGroupForUniqueId:(id)a3;
@end

@implementation SGSuggestionsWorkGroupManagerGuardedData

- (void)addToProcessedIds:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_uniqueIds count]>= 0x40 && ([(NSMutableArray *)self->_uniqueIds containsObject:v4]& 1) == 0)
  {
    [(NSMutableArray *)self->_uniqueIds removeObjectAtIndex:0];
  }

  [(NSMutableArray *)self->_uniqueIds addObject:v4];
}

- (void)leaveGroupForUniqueId:(id)a3
{
  v3 = [(NSMapTable *)self->_groupLookup objectForKey:a3];
  if (v3)
  {
    v4 = v3;
    dispatch_group_leave(v3);
    v3 = v4;
  }
}

- (void)enterGroupForUniqueId:(id)a3
{
  v3 = [(NSMapTable *)self->_groupLookup objectForKey:a3];
  if (v3)
  {
    v4 = v3;
    dispatch_group_enter(v3);
    v3 = v4;
  }
}

- (id)createGroupForUniqueId:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  [(NSMapTable *)self->_groupLookup setObject:v5 forKey:v4];

  return v5;
}

- (SGSuggestionsWorkGroupManagerGuardedData)init
{
  v8.receiver = self;
  v8.super_class = SGSuggestionsWorkGroupManagerGuardedData;
  v2 = [(SGSuggestionsWorkGroupManagerGuardedData *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    groupLookup = v2->_groupLookup;
    v2->_groupLookup = v3;

    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:64];
    uniqueIds = v2->_uniqueIds;
    v2->_uniqueIds = v5;
  }

  return v2;
}

@end