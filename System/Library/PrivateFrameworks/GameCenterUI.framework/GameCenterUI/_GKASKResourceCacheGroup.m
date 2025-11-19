@interface _GKASKResourceCacheGroup
- (_GKASKResourceCacheGroup)init;
- (id)makeMemberContents;
- (id)onlyMemberContents;
- (id)snapshotMemberContents;
- (void)discardMemberContents:(id)a3;
@end

@implementation _GKASKResourceCacheGroup

- (_GKASKResourceCacheGroup)init
{
  v6.receiver = self;
  v6.super_class = _GKASKResourceCacheGroup;
  v2 = [(_GKASKResourceCacheGroup *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    memberContents = v2->_memberContents;
    v2->_memberContents = v3;

    v2->_guard._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)snapshotMemberContents
{
  os_unfair_lock_lock(&self->_guard);
  v3 = [(NSMutableArray *)self->_memberContents copy];
  os_unfair_lock_unlock(&self->_guard);

  return v3;
}

- (id)onlyMemberContents
{
  os_unfair_lock_lock(&self->_guard);
  v3 = [(NSMutableArray *)self->_memberContents firstObject];
  os_unfair_lock_unlock(&self->_guard);

  return v3;
}

- (id)makeMemberContents
{
  v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
  os_unfair_lock_lock(&self->_guard);
  [(NSMutableArray *)self->_memberContents addObject:v3];
  [(_GKASKResourceCacheGroup *)self setHasMultipleMembers:[(NSMutableArray *)self->_memberContents count]> 1];
  os_unfair_lock_unlock(&self->_guard);

  return v3;
}

- (void)discardMemberContents:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_guard);
  [(NSMutableArray *)self->_memberContents removeObjectIdenticalTo:v4];

  [(_GKASKResourceCacheGroup *)self setHasMultipleMembers:[(NSMutableArray *)self->_memberContents count]> 1];

  os_unfair_lock_unlock(&self->_guard);
}

@end