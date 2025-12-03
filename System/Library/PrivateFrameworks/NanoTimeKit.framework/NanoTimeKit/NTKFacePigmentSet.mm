@interface NTKFacePigmentSet
+ (id)facePigmentSetFromProtoBuffer:(id)buffer sharedCollections:(id)collections;
- (BOOL)isEqual:(id)equal;
- (NSArray)defaultGalleryColors;
- (id)collectionForSlot:(id)slot;
- (id)pigmentSet;
- (id)pigmentsFromMostRecentAddableCollectionForSlot:(id)slot;
- (id)pigmentsFromMostRecentAddableCollectionsForSlot:(id)slot;
- (id)protoBuffer;
- (int64_t)numberOfItemsForAllSlots;
@end

@implementation NTKFacePigmentSet

- (id)pigmentSet
{
  allValues = [(NSDictionary *)self->_collectionBySlots allValues];
  firstObject = [allValues firstObject];

  return firstObject;
}

- (id)collectionForSlot:(id)slot
{
  slotCopy = slot;
  if (!slotCopy || ([(NSDictionary *)self->_collectionBySlots objectForKeyedSubscript:slotCopy], (pigmentSet = objc_claimAutoreleasedReturnValue()) == 0))
  {
    pigmentSet = [(NTKFacePigmentSet *)self pigmentSet];
  }

  return pigmentSet;
}

- (NSArray)defaultGalleryColors
{
  pigmentSet = [(NTKFacePigmentSet *)self pigmentSet];
  defaultGalleryColors = [pigmentSet defaultGalleryColors];

  return defaultGalleryColors;
}

- (int64_t)numberOfItemsForAllSlots
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  collectionBySlots = [(NTKFacePigmentSet *)self collectionBySlots];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__NTKFacePigmentSet_numberOfItemsForAllSlots__block_invoke;
  v5[3] = &unk_278781A20;
  v5[4] = &v6;
  [collectionBySlots enumerateKeysAndObjectsUsingBlock:v5];

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

- (id)pigmentsFromMostRecentAddableCollectionForSlot:(id)slot
{
  v3 = [(NTKFacePigmentSet *)self collectionForSlot:0];
  pigmentsFromMostRecentAddableCollection = [v3 pigmentsFromMostRecentAddableCollection];

  return pigmentsFromMostRecentAddableCollection;
}

- (id)pigmentsFromMostRecentAddableCollectionsForSlot:(id)slot
{
  v3 = [(NTKFacePigmentSet *)self collectionForSlot:0];
  pigmentsFromMostRecentAddableCollections = [v3 pigmentsFromMostRecentAddableCollections];

  return pigmentsFromMostRecentAddableCollections;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    domain = [v5 domain];
    domain2 = [(NTKFacePigmentSet *)self domain];
    v8 = NTKEqualObjects(domain, domain2);

    if (v8 && (v9 = [v5 numberOfSlots], v9 == -[NTKFacePigmentSet numberOfSlots](self, "numberOfSlots")) && (objc_msgSend(v5, "collectionBySlots"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), -[NTKFacePigmentSet collectionBySlots](self, "collectionBySlots"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v10, v11 == v13))
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 1;
      collectionBySlots = [v5 collectionBySlots];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __29__NTKFacePigmentSet_isEqual___block_invoke;
      v17[3] = &unk_278781A48;
      v17[4] = self;
      v17[5] = &v18;
      [collectionBySlots enumerateKeysAndObjectsUsingBlock:v17];

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

+ (id)facePigmentSetFromProtoBuffer:(id)buffer sharedCollections:(id)collections
{
  collectionsCopy = collections;
  if (buffer)
  {
    bufferCopy = buffer;
    v8 = objc_alloc_init(self);
    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(bufferCopy, "collectionBySlotsCount")}];
    collectionBySlots = [bufferCopy collectionBySlots];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __69__NTKFacePigmentSet_facePigmentSetFromProtoBuffer_sharedCollections___block_invoke;
    v20 = &unk_278781A70;
    v21 = collectionsCopy;
    v11 = v9;
    v22 = v11;
    [collectionBySlots enumerateObjectsUsingBlock:&v17];

    v12 = v8[2];
    v8[2] = v11;
    v13 = v11;

    domain = [bufferCopy domain];

    v15 = v8[1];
    v8[1] = domain;
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