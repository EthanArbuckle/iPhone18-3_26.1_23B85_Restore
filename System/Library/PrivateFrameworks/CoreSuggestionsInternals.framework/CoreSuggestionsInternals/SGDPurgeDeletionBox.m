@interface SGDPurgeDeletionBox
- (SGDPurgeDeletionBox)init;
- (void)addDeletion:(id)a3 domainSelection:(id)a4;
- (void)addDeletion:(id)a3 uniqueIds:(id)a4;
- (void)addPurge:(id)a3 uniqueIds:(id)a4;
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

- (void)addDeletion:(id)a3 domainSelection:(id)a4
{
  deleteDomainIds = self->_deleteDomainIds;
  v7 = a4;
  v8 = a3;
  v9 = [(NSMutableDictionary *)deleteDomainIds objectForKey:v8];
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

  [v12 addDomainsFromSelection:v7];
  [(NSMutableDictionary *)self->_deleteDomainIds setObject:v12 forKeyedSubscript:v8];
}

- (void)addPurge:(id)a3 uniqueIds:(id)a4
{
  v14 = a3;
  deleteUniqueIds = self->_deleteUniqueIds;
  v7 = a4;
  v8 = [(NSMutableDictionary *)deleteUniqueIds objectForKey:v14];
  v9 = [(NSMutableDictionary *)self->_purgeUniqueIds objectForKey:v14];
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

  v13 = [v7 allObjects];

  [v12 addObjectsFromArray:v13];
  if (v8)
  {
    [v12 minusSet:v8];
  }

  [(NSMutableDictionary *)self->_purgeUniqueIds setObject:v12 forKeyedSubscript:v14];
}

- (void)addDeletion:(id)a3 uniqueIds:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_purgeUniqueIds objectForKey:v14];
  v8 = v7;
  if (v7)
  {
    [v7 minusSet:v6];
  }

  v9 = [(NSMutableDictionary *)self->_deleteUniqueIds objectForKey:v14];
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

  v13 = [v6 allObjects];
  [v12 addObjectsFromArray:v13];

  [(NSMutableDictionary *)self->_deleteUniqueIds setObject:v12 forKeyedSubscript:v14];
}

@end