@interface NWStatsInterfaceRegistry
+ (id)sharedInstance;
- (BOOL)isTrackingInterfaceIndex:(unsigned int)index;
- (BOOL)machOUUIDBelongsToVPNProvider:(id)provider;
- (NWStatsInterfaceRegistry)init;
- (id)getState;
- (void)addInterfaceIndexToRegistry:(unsigned int)registry;
- (void)addVPNBytesForInterfaceIndex:(unsigned int)index fromSnapshot:(id)snapshot;
- (void)subtractVPNBytesForVPNProviderAppUUID:(id)d fromSnapshot:(id)snapshot;
@end

@implementation NWStatsInterfaceRegistry

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NWStatsInterfaceRegistry_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred != -1)
  {
    dispatch_once(&sharedInstance_pred, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __42__NWStatsInterfaceRegistry_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (id)getState
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__NWStatsInterfaceRegistry_getState__block_invoke;
  v7[3] = &unk_27996DB70;
  v4 = v3;
  v8 = v4;
  selfCopy = self;
  os_unfair_lock_lock(&lock);
  __36__NWStatsInterfaceRegistry_getState__block_invoke(v7);
  os_unfair_lock_unlock(&lock);
  v5 = v4;

  return v4;
}

void __36__NWStatsInterfaceRegistry_getState__block_invoke(uint64_t a1)
{
  [*(a1 + 32) addObject:@"NWStatsInterfaceRegistry:"];
  v2 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Queried interface indexes - %@", *(*(a1 + 40) + 8)];
  [v2 addObject:v3];

  v4 = *(a1 + 32);
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Looked up machO UUIDs - %@", *(*(a1 + 40) + 16)];
  [v4 addObject:v5];

  v6 = *(a1 + 32);
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Accumulated interface bytes - %@", *(*(a1 + 40) + 24)];
  [v6 addObject:v7];
}

- (NWStatsInterfaceRegistry)init
{
  v10.receiver = self;
  v10.super_class = NWStatsInterfaceRegistry;
  v2 = [(NWStatsInterfaceRegistry *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    neQueriedInterfaceIndexes = v2->_neQueriedInterfaceIndexes;
    v2->_neQueriedInterfaceIndexes = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    machOUUIDLookups = v2->_machOUUIDLookups;
    v2->_machOUUIDLookups = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    interfaceByteAccumulators = v2->_interfaceByteAccumulators;
    v2->_interfaceByteAccumulators = v7;
  }

  return v2;
}

- (void)addInterfaceIndexToRegistry:(unsigned int)registry
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__NWStatsInterfaceRegistry_addInterfaceIndexToRegistry___block_invoke;
  v3[3] = &unk_27996DD28;
  v3[4] = self;
  registryCopy = registry;
  os_unfair_lock_lock(&lock);
  __56__NWStatsInterfaceRegistry_addInterfaceIndexToRegistry___block_invoke(v3);
  os_unfair_lock_unlock(&lock);
}

void __56__NWStatsInterfaceRegistry_addInterfaceIndexToRegistry___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
  LOBYTE(v2) = [v2 containsObject:v3];

  if ((v2 & 1) == 0)
  {
    *v15 = 0;
    v16 = 0;
    *uu = 0;
    v14 = 0;
    if (if_indextoname(*(a1 + 40), v15))
    {
      ne_session_map_interface_to_provider_uuid();
    }

    memset(v12, 0, sizeof(v12));
    uuid_unparse(uu, v12);
    if (!uuid_is_null(uu))
    {
      v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:uu];
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
      [*(*(a1 + 32) + 16) setObject:v5 forKeyedSubscript:v4];

      v6 = objc_alloc_init(VPNInterfaceByteCountAccumulator);
      v7 = *(*(a1 + 32) + 24);
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
      [v7 setObject:v6 forKeyedSubscript:v8];
    }

    v9 = *(*(a1 + 32) + 8);
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
    [v9 addObject:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)machOUUIDBelongsToVPNProvider:(id)provider
{
  providerCopy = provider;
  v5 = providerCopy;
  if (providerCopy)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v10 = __58__NWStatsInterfaceRegistry_machOUUIDBelongsToVPNProvider___block_invoke;
    v11 = &unk_27996E3B0;
    v14 = &v15;
    selfCopy = self;
    v13 = providerCopy;
    v6 = v9;
    os_unfair_lock_lock(&lock);
    v10(v6);
    os_unfair_lock_unlock(&lock);

    v7 = *(v16 + 24);
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void __58__NWStatsInterfaceRegistry_machOUUIDBelongsToVPNProvider___block_invoke(void *a1)
{
  v2 = *(a1[4] + 16);
  if (v2)
  {
    v3 = [v2 objectForKeyedSubscript:a1[5]];
    *(*(a1[6] + 8) + 24) = v3 != 0;
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 0;
  }
}

- (BOOL)isTrackingInterfaceIndex:(unsigned int)index
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v6 = __53__NWStatsInterfaceRegistry_isTrackingInterfaceIndex___block_invoke;
  v7 = &unk_27996E3D8;
  selfCopy = self;
  v9 = &v11;
  indexCopy = index;
  v3 = v5;
  os_unfair_lock_lock(&lock);
  v6(v3);
  os_unfair_lock_unlock(&lock);

  LOBYTE(v3) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v3;
}

void __53__NWStatsInterfaceRegistry_isTrackingInterfaceIndex___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 48)];
  if ([v2 containsObject:?])
  {
    v3 = *(*(a1 + 32) + 24);
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 48)];
    v5 = [v3 objectForKeyedSubscript:v4];
    *(*(*(a1 + 40) + 8) + 24) = v5 != 0;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (void)addVPNBytesForInterfaceIndex:(unsigned int)index fromSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v7 = snapshotCopy;
  if (snapshotCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __70__NWStatsInterfaceRegistry_addVPNBytesForInterfaceIndex_fromSnapshot___block_invoke;
    v8[3] = &unk_27996E400;
    v8[4] = self;
    indexCopy = index;
    v9 = snapshotCopy;
    os_unfair_lock_lock(&lock);
    __70__NWStatsInterfaceRegistry_addVPNBytesForInterfaceIndex_fromSnapshot___block_invoke(v8);
    os_unfair_lock_unlock(&lock);
  }
}

void __70__NWStatsInterfaceRegistry_addVPNBytesForInterfaceIndex_fromSnapshot___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 48)];
  LODWORD(v2) = [v2 containsObject:v3];

  if (v2)
  {
    v4 = *(*(a1 + 32) + 24);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 48)];
    v7 = [v4 objectForKeyedSubscript:v5];

    v6 = v7;
    if (v7)
    {
      [v7 addBytesToAttributeToVPNProviderFromSnapshot:*(a1 + 40)];
      v6 = v7;
    }
  }
}

- (void)subtractVPNBytesForVPNProviderAppUUID:(id)d fromSnapshot:(id)snapshot
{
  dCopy = d;
  snapshotCopy = snapshot;
  v8 = snapshotCopy;
  if (dCopy && snapshotCopy)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __79__NWStatsInterfaceRegistry_subtractVPNBytesForVPNProviderAppUUID_fromSnapshot___block_invoke;
    v9[3] = &unk_27996DAD0;
    v9[4] = self;
    v10 = dCopy;
    v11 = v8;
    os_unfair_lock_lock(&lock);
    __79__NWStatsInterfaceRegistry_subtractVPNBytesForVPNProviderAppUUID_fromSnapshot___block_invoke(v9);
    os_unfair_lock_unlock(&lock);
  }
}

void __79__NWStatsInterfaceRegistry_subtractVPNBytesForVPNProviderAppUUID_fromSnapshot___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 24);
  v5 = [*(v2 + 16) objectForKeyedSubscript:a1[5]];
  v4 = [v3 objectForKeyedSubscript:v5];
  [v4 subtractBytesAttributedToVPNProviderFromSnapshot:a1[6]];
}

@end