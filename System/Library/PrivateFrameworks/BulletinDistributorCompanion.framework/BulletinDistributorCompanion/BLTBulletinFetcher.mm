@interface BLTBulletinFetcher
+ (id)batchBulletinFetchForBulletinIDs:(id)ds fetcher:(id)fetcher completion:(id)completion;
- (BOOL)_incrementSection;
- (void)_fetchBulletins;
- (void)_setBulletinIDs:(id)ds;
- (void)_setClientCompletion:(id)completion;
- (void)_setFetcher:(id)fetcher;
@end

@implementation BLTBulletinFetcher

- (void)_setFetcher:(id)fetcher
{
  v4 = [fetcher copy];
  fetcher = self->_fetcher;
  self->_fetcher = v4;

  MEMORY[0x2821F96F8](v4, fetcher);
}

- (void)_setClientCompletion:(id)completion
{
  v4 = [completion copy];
  clientCompletion = self->_clientCompletion;
  self->_clientCompletion = v4;

  MEMORY[0x2821F96F8](v4, clientCompletion);
}

- (void)_setBulletinIDs:(id)ds
{
  objc_storeStrong(&self->_bulletinIDs, ds);
  dsCopy = ds;
  allKeys = [(NSDictionary *)self->_bulletinIDs allKeys];
  sectionIDs = self->_sectionIDs;
  self->_sectionIDs = allKeys;

  self->_sectionIDsIndex = -1;

  [(BLTBulletinFetcher *)self _incrementSection];
}

- (BOOL)_incrementSection
{
  p_sectionIDs = &self->_sectionIDs;
  sectionIDs = self->_sectionIDs;
  v5 = &p_sectionIDs[1]->super.isa + 1;
  self->_sectionIDsIndex = v5;
  v6 = [(NSArray *)sectionIDs count];
  if (v5 < v6)
  {
    bulletinIDs = self->_bulletinIDs;
    v8 = [(NSArray *)self->_sectionIDs objectAtIndexedSubscript:self->_sectionIDsIndex];
    v9 = [(NSDictionary *)bulletinIDs objectForKeyedSubscript:v8];
    publisherMatchIDsForSection = self->_publisherMatchIDsForSection;
    self->_publisherMatchIDsForSection = v9;

    self->_publisherMatchIDsForSectionIndex = 0;
  }

  return v5 < v6;
}

- (void)_fetchBulletins
{
  publisherMatchIDsForSectionIndex = self->_publisherMatchIDsForSectionIndex;
  if (publisherMatchIDsForSectionIndex >= [(NSArray *)self->_publisherMatchIDsForSection count])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __37__BLTBulletinFetcher__fetchBulletins__block_invoke_2;
    v13[3] = &unk_278D31428;
    v13[4] = self;
    v4 = MEMORY[0x245D067A0](v13);
    v7 = self->_publisherMatchIDsForSectionIndex;
    if (v7 >= [(NSArray *)self->_publisherMatchIDsForSection count])
    {
      v4[2](v4);
    }

    else
    {
      v8 = [(NSArray *)self->_publisherMatchIDsForSection subarrayWithRange:self->_publisherMatchIDsForSectionIndex, [(NSArray *)self->_publisherMatchIDsForSection count]- self->_publisherMatchIDsForSectionIndex];
      fetcher = self->_fetcher;
      v10 = [(NSArray *)self->_sectionIDs objectAtIndexedSubscript:self->_sectionIDsIndex];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __37__BLTBulletinFetcher__fetchBulletins__block_invoke_3;
      v11[3] = &unk_278D314F0;
      v12 = v4;
      fetcher[2](fetcher, v8, v10, v11);
    }
  }

  else
  {
    v4 = [(NSArray *)self->_publisherMatchIDsForSection subarrayWithRange:self->_publisherMatchIDsForSectionIndex, 1];
    ++self->_publisherMatchIDsForSectionIndex;
    v5 = self->_fetcher;
    v6 = [(NSArray *)self->_sectionIDs objectAtIndexedSubscript:self->_sectionIDsIndex];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__BLTBulletinFetcher__fetchBulletins__block_invoke;
    v14[3] = &unk_278D31428;
    v14[4] = self;
    (*(v5 + 2))(v5, v4, v6, v14);
  }
}

uint64_t __37__BLTBulletinFetcher__fetchBulletins__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _incrementSection];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 _fetchBulletins];
  }

  else
  {
    result = v3[6];
    if (result)
    {
      v5 = *(result + 16);

      return v5();
    }
  }

  return result;
}

+ (id)batchBulletinFetchForBulletinIDs:(id)ds fetcher:(id)fetcher completion:(id)completion
{
  completionCopy = completion;
  fetcherCopy = fetcher;
  dsCopy = ds;
  v10 = objc_alloc_init(BLTBulletinFetcher);
  [(BLTBulletinFetcher *)v10 _setFetcher:fetcherCopy];

  [(BLTBulletinFetcher *)v10 _setClientCompletion:completionCopy];
  [(BLTBulletinFetcher *)v10 _setBulletinIDs:dsCopy];

  [(BLTBulletinFetcher *)v10 _fetchBulletins];

  return v10;
}

@end