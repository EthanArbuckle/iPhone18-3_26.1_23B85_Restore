@interface NTKFacePigmentSet
+ (id)facePigmentSetFromProtoBuffer:(id)a3 sharedCollections:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSArray)defaultGalleryColors;
- (id)collectionForSlot:(id)a3;
- (id)pigmentSet;
- (id)pigmentsFromMostRecentAddableCollectionForSlot:(id)a3;
- (id)pigmentsFromMostRecentAddableCollectionsForSlot:(id)a3;
- (id)protoBuffer;
- (int64_t)numberOfItemsForAllSlots;
@end

@implementation NTKFacePigmentSet

- (id)pigmentSet
{
  v2 = [(NSDictionary *)self->_collectionBySlots allValues];
  v3 = [v2 firstObject];

  return v3;
}

- (id)collectionForSlot:(id)a3
{
  v4 = a3;
  if (!v4 || ([(NSDictionary *)self->_collectionBySlots objectForKeyedSubscript:v4], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [(NTKFacePigmentSet *)self pigmentSet];
  }

  return v5;
}

- (NSArray)defaultGalleryColors
{
  v2 = [(NTKFacePigmentSet *)self pigmentSet];
  v3 = [v2 defaultGalleryColors];

  return v3;
}

- (int64_t)numberOfItemsForAllSlots
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(NTKFacePigmentSet *)self collectionBySlots];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__NTKFacePigmentSet_numberOfItemsForAllSlots__block_invoke;
  v5[3] = &unk_278781A20;
  v5[4] = &v6;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __45__NTKFacePigmentSet_numberOfItemsForAllSlots__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (id)pigmentsFromMostRecentAddableCollectionForSlot:(id)a3
{
  v3 = [(NTKFacePigmentSet *)self collectionForSlot:0];
  v4 = [v3 pigmentsFromMostRecentAddableCollection];

  return v4;
}

- (id)pigmentsFromMostRecentAddableCollectionsForSlot:(id)a3
{
  v3 = [(NTKFacePigmentSet *)self collectionForSlot:0];
  v4 = [v3 pigmentsFromMostRecentAddableCollections];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 domain];
    v7 = [(NTKFacePigmentSet *)self domain];
    v8 = NTKEqualObjects(v6, v7);

    if (v8 && (v9 = [v5 numberOfSlots], v9 == -[NTKFacePigmentSet numberOfSlots](self, "numberOfSlots")) && (objc_msgSend(v5, "collectionBySlots"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), -[NTKFacePigmentSet collectionBySlots](self, "collectionBySlots"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v10, v11 == v13))
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 1;
      v14 = [v5 collectionBySlots];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __29__NTKFacePigmentSet_isEqual___block_invoke;
      v17[3] = &unk_278781A48;
      v17[4] = self;
      v17[5] = &v18;
      [v14 enumerateKeysAndObjectsUsingBlock:v17];

      v15 = *(v19 + 24);
      _Block_object_dispose(&v18, 8);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void __29__NTKFacePigmentSet_isEqual___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  v10 = [v7 collectionBySlots];
  v11 = [v10 objectForKeyedSubscript:v9];

  LOBYTE(v9) = [v8 isEqual:v11];
  *(*(*(a1 + 40) + 8) + 24) = v9;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

+ (id)facePigmentSetFromProtoBuffer:(id)a3 sharedCollections:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = a3;
    v8 = objc_alloc_init(a1);
    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v7, "collectionBySlotsCount")}];
    v10 = [v7 collectionBySlots];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __69__NTKFacePigmentSet_facePigmentSetFromProtoBuffer_sharedCollections___block_invoke;
    v20 = &unk_278781A70;
    v21 = v6;
    v11 = v9;
    v22 = v11;
    [v10 enumerateObjectsUsingBlock:&v17];

    v12 = v8[2];
    v8[2] = v11;
    v13 = v11;

    v14 = [v7 domain];

    v15 = v8[1];
    v8[1] = v14;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __69__NTKFacePigmentSet_facePigmentSetFromProtoBuffer_sharedCollections___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 collection];
  v5 = [NTKPigmentCollection collectionFromProtoBuffer:v4 sharedCollections:*(a1 + 32)];

  v6 = [v3 slot];

  if (v6 && v5)
  {
    v7 = *(a1 + 40);
    v8 = [v3 slot];
    [v7 setObject:v5 forKeyedSubscript:v8];
  }

  else
  {
    v9 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __69__NTKFacePigmentSet_facePigmentSetFromProtoBuffer_sharedCollections___block_invoke_cold_1(v3, v9);
    }
  }
}

- (id)protoBuffer
{
  v3 = objc_alloc_init(NTKProtoFacePigmentSet);
  [(NTKProtoFacePigmentSet *)v3 setDomain:self->_domain];
  collectionBySlots = self->_collectionBySlots;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__NTKFacePigmentSet_protoBuffer__block_invoke;
  v7[3] = &unk_278781A98;
  v5 = v3;
  v8 = v5;
  [(NSDictionary *)collectionBySlots enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __32__NTKFacePigmentSet_protoBuffer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = objc_alloc_init(NTKProtoCollectionBySlot);
  [(NTKProtoCollectionBySlot *)v8 setSlot:v6];

  v7 = [v5 protoBufferIgnoringSharedCollections:1];

  [(NTKProtoCollectionBySlot *)v8 setCollection:v7];
  [*(a1 + 32) addCollectionBySlots:v8];
}

void __69__NTKFacePigmentSet_facePigmentSetFromProtoBuffer_sharedCollections___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 formattedText];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "#color-sync Failure while decoding facePigmentSet from protobuffer. Protobuffer object is missing slot or collection. Collection won't be included in decoded face pigment set. %{public}@", &v4, 0xCu);
}

@end