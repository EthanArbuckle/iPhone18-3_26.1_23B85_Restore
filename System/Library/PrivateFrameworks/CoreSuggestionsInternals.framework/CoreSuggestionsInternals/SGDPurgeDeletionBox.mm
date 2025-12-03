@interface SGDPurgeDeletionBox
- (SGDPurgeDeletionBox)init;
- (void)addDeletion:(id)deletion domainSelection:(id)selection;
- (void)addDeletion:(id)deletion uniqueIds:(id)ids;
- (void)addPurge:(id)purge uniqueIds:(id)ids;
@end

@implementation SGDPurgeDeletionBox

- (SGDPurgeDeletionBox)init
{
  v10.receiver = self;
  v10.super_class = SGDPurgeDeletionBox;
  v2 = [(SGDPurgeDeletionBox *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    deleteUniqueIds = v2->_deleteUniqueIds;
    v2->_deleteUniqueIds = v3;

    v5 = objc_opt_new();
    purgeUniqueIds = v2->_purgeUniqueIds;
    v2->_purgeUniqueIds = v5;

    v7 = objc_opt_new();
    deleteDomainIds = v2->_deleteDomainIds;
    v2->_deleteDomainIds = v7;
  }

  return v2;
}

- (void)addDeletion:(id)deletion domainSelection:(id)selection
{
  deleteDomainIds = self->_deleteDomainIds;
  selectionCopy = selection;
  deletionCopy = deletion;
  v9 = [(NSMutableDictionary *)deleteDomainIds objectForKey:deletionCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  [v12 addDomainsFromSelection:selectionCopy];
  [(NSMutableDictionary *)self->_deleteDomainIds setObject:v12 forKeyedSubscript:deletionCopy];
}

- (void)addPurge:(id)purge uniqueIds:(id)ids
{
  purgeCopy = purge;
  deleteUniqueIds = self->_deleteUniqueIds;
  idsCopy = ids;
  v8 = [(NSMutableDictionary *)deleteUniqueIds objectForKey:purgeCopy];
  v9 = [(NSMutableDictionary *)self->_purgeUniqueIds objectForKey:purgeCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  allObjects = [idsCopy allObjects];

  [v12 addObjectsFromArray:allObjects];
  if (v8)
  {
    [v12 minusSet:v8];
  }

  [(NSMutableDictionary *)self->_purgeUniqueIds setObject:v12 forKeyedSubscript:purgeCopy];
}

- (void)addDeletion:(id)deletion uniqueIds:(id)ids
{
  deletionCopy = deletion;
  idsCopy = ids;
  v7 = [(NSMutableDictionary *)self->_purgeUniqueIds objectForKey:deletionCopy];
  v8 = v7;
  if (v7)
  {
    [v7 minusSet:idsCopy];
  }

  v9 = [(NSMutableDictionary *)self->_deleteUniqueIds objectForKey:deletionCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  allObjects = [idsCopy allObjects];
  [v12 addObjectsFromArray:allObjects];

  [(NSMutableDictionary *)self->_deleteUniqueIds setObject:v12 forKeyedSubscript:deletionCopy];
}

@end