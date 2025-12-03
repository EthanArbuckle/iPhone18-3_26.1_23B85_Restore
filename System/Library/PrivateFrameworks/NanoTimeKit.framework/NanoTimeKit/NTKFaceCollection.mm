@interface NTKFaceCollection
- (BOOL)containsFace:(id)face;
- (NTKFace)selectedFace;
- (NTKFaceCollection)initWithCollectionIdentifier:(id)identifier deviceUUID:(id)d;
- (id)_chooseNewSelectionBecauseSelectedUUIDWillBeRemovedAtIndex:(unint64_t)index;
- (id)faceAtIndex:(unint64_t)index;
- (id)observers;
- (unint64_t)indexOfFace:(id)face;
- (unint64_t)selectedFaceIndex;
- (void)_addFace:(id)face forUUID:(id)d atIndex:(unint64_t)index suppressingCallbackToObserver:(id)observer;
- (void)_notifyAddedFace:(id)face atIndex:(unint64_t)index omitObserver:(id)observer;
- (void)_notifyRemovedFace:(id)face atIndex:(unint64_t)index omitObserver:(id)observer;
- (void)_notifyReorderedFacesOmittingObserver:(id)observer;
- (void)_notifySelectedFaceOmittingObserver:(id)observer;
- (void)_removeFaceForUUID:(id)d suppressingCallbackToObserver:(id)observer;
- (void)_setContentWithFaces:(id)faces order:(id)order selection:(id)selection;
- (void)_setSelectedUUID:(id)d notify:(BOOL)notify suppressingCallbackToObserver:(id)observer;
- (void)_throwIfNotLoaded:(SEL)loaded;
- (void)_updateLogIdentifier;
- (void)_updateOrderedUUIDsFromReference:(id)reference andNotifyReordered:(BOOL)reordered;
- (void)_upgradeFace:(id)face forUUID:(id)d;
- (void)addFace:(id)face atIndex:(unint64_t)index suppressingCallbackToObserver:(id)observer;
- (void)addObserver:(id)observer;
- (void)appendFace:(id)face suppressingCallbackToObserver:(id)observer;
- (void)enumerateFaceNamesUsingBlock:(id)block;
- (void)enumerateFacesUsingBlock:(id)block;
- (void)enumerateFacesWithIndexesUsingBlock:(id)block;
- (void)moveFace:(id)face toIndex:(unint64_t)index suppressingCallbackToObserver:(id)observer;
- (void)removeFace:(id)face suppressingCallbackToObserver:(id)observer;
- (void)removeFaceAtIndex:(unint64_t)index suppressingCallbackToObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)replaceFaceLocallyByCopy:(id)copy suppressingCallbackToObserver:(id)observer;
- (void)setDebugName:(id)name;
- (void)setSelectedFace:(id)face suppressingCallbackToObserver:(id)observer;
- (void)setSelectedFaceIndex:(unint64_t)index suppressingCallbackToObserver:(id)observer;
@end

@implementation NTKFaceCollection

- (NTKFaceCollection)initWithCollectionIdentifier:(id)identifier deviceUUID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v20.receiver = self;
  v20.super_class = NTKFaceCollection;
  v9 = [(NTKFaceCollection *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collectionIdentifier, identifier);
    objc_storeStrong(&v10->_deviceUUID, d);
    [(NTKFaceCollection *)v10 _updateLogIdentifier];
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v10->_observers;
    v10->_observers = weakObjectsHashTable;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    orderedUUIDs = v10->_orderedUUIDs;
    v10->_orderedUUIDs = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    facesByUUID = v10->_facesByUUID;
    v10->_facesByUUID = v15;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    UUIDsByFace = v10->_UUIDsByFace;
    v10->_UUIDsByFace = strongToStrongObjectsMapTable;
  }

  return v10;
}

- (unint64_t)indexOfFace:(id)face
{
  v4 = [(NSMapTable *)self->_UUIDsByFace objectForKey:face];
  if (v4)
  {
    v5 = [(NSMutableArray *)self->_orderedUUIDs indexOfObject:v4];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (BOOL)containsFace:(id)face
{
  v3 = [(NSMapTable *)self->_UUIDsByFace objectForKey:face];
  v4 = v3 != 0;

  return v4;
}

- (NTKFace)selectedFace
{
  selectedUUID = [(NTKFaceCollection *)self selectedUUID];
  if (selectedUUID)
  {
    facesByUUID = [(NTKFaceCollection *)self facesByUUID];
    selectedUUID2 = [(NTKFaceCollection *)self selectedUUID];
    v6 = [facesByUUID objectForKey:selectedUUID2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)faceAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_orderedUUIDs count]<= index)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_orderedUUIDs objectAtIndex:index];
    v6 = [(NSMutableDictionary *)self->_facesByUUID objectForKey:v5];
  }

  return v6;
}

- (void)enumerateFacesUsingBlock:(id)block
{
  blockCopy = block;
  orderedUUIDs = [(NTKFaceCollection *)self orderedUUIDs];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__NTKFaceCollection_enumerateFacesUsingBlock___block_invoke;
  v7[3] = &unk_278781D98;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [orderedUUIDs enumerateObjectsUsingBlock:v7];
}

void __46__NTKFaceCollection_enumerateFacesUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a2;
  v9 = [v6 facesByUUID];
  v8 = [v9 objectForKey:v7];

  (*(v5 + 16))(v5, v8, a4);
}

- (void)enumerateFacesWithIndexesUsingBlock:(id)block
{
  blockCopy = block;
  orderedUUIDs = [(NTKFaceCollection *)self orderedUUIDs];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__NTKFaceCollection_enumerateFacesWithIndexesUsingBlock___block_invoke;
  v7[3] = &unk_278781D98;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [orderedUUIDs enumerateObjectsUsingBlock:v7];
}

void __57__NTKFaceCollection_enumerateFacesWithIndexesUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = a2;
  v10 = [v7 facesByUUID];
  v9 = [v10 objectForKey:v8];

  (*(v6 + 16))(v6, v9, a3, a4);
}

- (void)enumerateFaceNamesUsingBlock:(id)block
{
  blockCopy = block;
  facesByUUID = [(NTKFaceCollection *)self facesByUUID];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__NTKFaceCollection_enumerateFaceNamesUsingBlock___block_invoke;
  v7[3] = &unk_278781DC0;
  v8 = blockCopy;
  v6 = blockCopy;
  [facesByUUID enumerateKeysAndObjectsUsingBlock:v7];
}

void __50__NTKFaceCollection_enumerateFaceNamesUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 name];
  (*(v3 + 16))(v3, v4);
}

- (unint64_t)selectedFaceIndex
{
  selectedUUID = [(NTKFaceCollection *)self selectedUUID];
  if (selectedUUID)
  {
    orderedUUIDs = [(NTKFaceCollection *)self orderedUUIDs];
    selectedUUID2 = [(NTKFaceCollection *)self selectedUUID];
    v6 = [orderedUUIDs indexOfObject:selectedUUID2];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (void)setSelectedFaceIndex:(unint64_t)index suppressingCallbackToObserver:(id)observer
{
  v19 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v8 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
    v13 = 138412802;
    v14 = logIdentifier;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = observerCopy;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "%@ set selected face index %@, observer = %@", &v13, 0x20u);
  }

  [(NTKFaceCollection *)self _throwIfNotLoaded:a2];
  if ([(NSMutableArray *)self->_orderedUUIDs count]<= index)
  {
    v11 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [NTKFaceCollection setSelectedFaceIndex:? suppressingCallbackToObserver:?];
    }
  }

  else
  {
    v11 = [(NSMutableArray *)self->_orderedUUIDs objectAtIndex:index];
    v12 = [(NSMutableDictionary *)self->_facesByUUID objectForKey:v11];
    [(NTKFaceCollection *)self setSelectedFace:v12 suppressingCallbackToObserver:observerCopy];
  }
}

- (void)setSelectedFace:(id)face suppressingCallbackToObserver:(id)observer
{
  v18 = *MEMORY[0x277D85DE8];
  faceCopy = face;
  observerCopy = observer;
  v9 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v12 = 138412802;
    v13 = logIdentifier;
    v14 = 2112;
    v15 = faceCopy;
    v16 = 2112;
    v17 = observerCopy;
    _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "%@ set selected face %@, observer = %@", &v12, 0x20u);
  }

  [(NTKFaceCollection *)self _throwIfNotLoaded:a2];
  v11 = [(NSMapTable *)self->_UUIDsByFace objectForKey:faceCopy];
  if (v11)
  {
    [(NTKFaceCollection *)self _setSelectedUUID:v11 notify:1 suppressingCallbackToObserver:observerCopy];
    [(NTKFaceCollection *)self _didSelectFaceUUID:v11 suppressingCallback:1];
  }
}

- (void)appendFace:(id)face suppressingCallbackToObserver:(id)observer
{
  v17 = *MEMORY[0x277D85DE8];
  faceCopy = face;
  observerCopy = observer;
  v9 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v11 = 138412802;
    v12 = logIdentifier;
    v13 = 2112;
    v14 = faceCopy;
    v15 = 2112;
    v16 = observerCopy;
    _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "%@ append face %@, observer = %@", &v11, 0x20u);
  }

  [(NTKFaceCollection *)self _throwIfNotLoaded:a2];
  [(NTKFaceCollection *)self addFace:faceCopy atIndex:[(NTKFaceCollection *)self numberOfFaces] suppressingCallbackToObserver:observerCopy];
}

- (void)addFace:(id)face atIndex:(unint64_t)index suppressingCallbackToObserver:(id)observer
{
  v23 = *MEMORY[0x277D85DE8];
  faceCopy = face;
  observerCopy = observer;
  v11 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
    v15 = 138413058;
    v16 = logIdentifier;
    v17 = 2112;
    v18 = faceCopy;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = observerCopy;
    _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "%@ add face %@, at index %@, observer = %@", &v15, 0x2Au);
  }

  [(NTKFaceCollection *)self _throwIfNotLoaded:a2];
  uUID = [MEMORY[0x277CCAD78] UUID];
  [(NTKFaceCollection *)self _addFace:faceCopy forUUID:uUID atIndex:index suppressingCallbackToObserver:observerCopy];
}

- (void)moveFace:(id)face toIndex:(unint64_t)index suppressingCallbackToObserver:(id)observer
{
  v23 = *MEMORY[0x277D85DE8];
  faceCopy = face;
  observerCopy = observer;
  v11 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
    v15 = 138413058;
    v16 = logIdentifier;
    v17 = 2112;
    v18 = faceCopy;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = observerCopy;
    _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "%@ move face %@, to index %@, observer = %@", &v15, 0x2Au);
  }

  [(NTKFaceCollection *)self _throwIfNotLoaded:a2];
  v14 = [(NSMapTable *)self->_UUIDsByFace objectForKey:faceCopy];
  if (v14)
  {
    [(NSMutableArray *)self->_orderedUUIDs removeObject:v14];
    [(NSMutableArray *)self->_orderedUUIDs insertObject:v14 atIndex:index];
    [(NTKFaceCollection *)self _didMoveFace:faceCopy withUUID:v14 toIndex:index];
    [(NTKFaceCollection *)self _notifyReorderedFacesOmittingObserver:observerCopy];
  }
}

- (void)removeFaceAtIndex:(unint64_t)index suppressingCallbackToObserver:(id)observer
{
  v21 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v8 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
    v15 = 138412802;
    v16 = logIdentifier;
    v17 = 2112;
    indexCopy = v10;
    v19 = 2112;
    v20 = observerCopy;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "%@ remove face at index %@, observer = %@", &v15, 0x20u);
  }

  [(NTKFaceCollection *)self _throwIfNotLoaded:a2];
  v11 = [(NTKFaceCollection *)self faceAtIndex:index];
  if (v11)
  {
    [(NTKFaceCollection *)self removeFace:v11 suppressingCallbackToObserver:observerCopy];
  }

  else
  {
    v12 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_logIdentifier;
      v14 = [(NSMutableArray *)self->_orderedUUIDs count];
      v15 = 138543874;
      v16 = v13;
      v17 = 2048;
      indexCopy = index;
      v19 = 2048;
      v20 = v14;
      _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to remove face because there is no face at index %lu. count: %lu", &v15, 0x20u);
    }
  }
}

- (void)removeFace:(id)face suppressingCallbackToObserver:(id)observer
{
  v18 = *MEMORY[0x277D85DE8];
  faceCopy = face;
  observerCopy = observer;
  v9 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v12 = 138412802;
    v13 = logIdentifier;
    v14 = 2112;
    v15 = faceCopy;
    v16 = 2112;
    v17 = observerCopy;
    _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "%@ remove face %@, observer = %@", &v12, 0x20u);
  }

  [(NTKFaceCollection *)self _throwIfNotLoaded:a2];
  v11 = [(NSMapTable *)self->_UUIDsByFace objectForKey:faceCopy];
  if (v11)
  {
    [(NTKFaceCollection *)self _removeFaceForUUID:v11 suppressingCallbackToObserver:observerCopy];
    [(NTKFaceCollection *)self _didRemoveFace:faceCopy withUUID:v11];
  }
}

- (void)_setContentWithFaces:(id)faces order:(id)order selection:(id)selection
{
  v28 = *MEMORY[0x277D85DE8];
  facesCopy = faces;
  orderCopy = order;
  selectionCopy = selection;
  v11 = [facesCopy mutableCopy];
  facesByUUID = self->_facesByUUID;
  self->_facesByUUID = v11;

  v13 = [orderCopy mutableCopy];
  orderedUUIDs = self->_orderedUUIDs;
  self->_orderedUUIDs = v13;

  objc_storeStrong(&self->_selectedUUID, selection);
  [(NSMapTable *)self->_UUIDsByFace removeAllObjects];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = facesCopy;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * i);
        UUIDsByFace = self->_UUIDsByFace;
        v22 = [v15 objectForKey:{v20, v23}];
        [(NSMapTable *)UUIDsByFace setObject:v20 forKey:v22];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }
}

- (void)_updateOrderedUUIDsFromReference:(id)reference andNotifyReordered:(BOOL)reordered
{
  reorderedCopy = reordered;
  v22 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  v7 = [(NSMutableArray *)self->_orderedUUIDs copy];
  if (referenceCopy)
  {
    v16 = reorderedCopy;
    v8 = [(NSMutableArray *)self->_orderedUUIDs mutableCopy];
    [v8 removeObjectsInArray:referenceCopy];
    [(NSMutableArray *)self->_orderedUUIDs removeAllObjects];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = referenceCopy;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          v15 = [(NSMutableDictionary *)self->_facesByUUID objectForKey:v14];

          if (v15)
          {
            [(NSMutableArray *)self->_orderedUUIDs addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [(NSMutableArray *)self->_orderedUUIDs addObjectsFromArray:v8];
    reorderedCopy = v16;
  }

  if (reorderedCopy && ([v7 isEqualToArray:self->_orderedUUIDs] & 1) == 0)
  {
    [(NTKFaceCollection *)self _notifyReorderedFacesOmittingObserver:0];
  }
}

- (void)_upgradeFace:(id)face forUUID:(id)d
{
  facesByUUID = self->_facesByUUID;
  dCopy = d;
  faceCopy = face;
  v9 = [(NSMutableDictionary *)facesByUUID objectForKey:dCopy];
  [(NSMapTable *)self->_UUIDsByFace removeObjectForKey:v9];
  [(NSMutableDictionary *)self->_facesByUUID setObject:faceCopy forKey:dCopy];
  [(NSMapTable *)self->_UUIDsByFace setObject:dCopy forKey:faceCopy];
}

- (void)_removeFaceForUUID:(id)d suppressingCallbackToObserver:(id)observer
{
  dCopy = d;
  observerCopy = observer;
  orderedUUIDs = [(NTKFaceCollection *)self orderedUUIDs];
  v8 = [orderedUUIDs indexOfObject:dCopy];

  selectedUUID = [(NTKFaceCollection *)self selectedUUID];
  v10 = [dCopy isEqual:selectedUUID];

  if (v10)
  {
    v11 = [(NTKFaceCollection *)self _chooseNewSelectionBecauseSelectedUUIDWillBeRemovedAtIndex:v8];
    selectedUUID = self->_selectedUUID;
    self->_selectedUUID = v11;
  }

  facesByUUID = [(NTKFaceCollection *)self facesByUUID];
  v14 = [facesByUUID objectForKey:dCopy];

  [v14 removeObserver:self];
  [(NSMutableDictionary *)self->_facesByUUID removeObjectForKey:dCopy];
  [(NSMapTable *)self->_UUIDsByFace removeObjectForKey:v14];
  [(NSMutableArray *)self->_orderedUUIDs removeObject:dCopy];
  [(NTKFaceCollection *)self _notifyRemovedFace:v14 atIndex:v8 omitObserver:observerCopy];
  if (v10)
  {
    [(NTKFaceCollection *)self _notifySelectedFaceOmittingObserver:observerCopy];
  }
}

- (void)_addFace:(id)face forUUID:(id)d atIndex:(unint64_t)index suppressingCallbackToObserver:(id)observer
{
  faceCopy = face;
  dCopy = d;
  observerCopy = observer;
  [faceCopy addObserver:self];
  if (faceCopy)
  {
    [(NSMutableArray *)self->_orderedUUIDs insertObject:dCopy atIndex:index];
    [(NSMutableDictionary *)self->_facesByUUID setObject:faceCopy forKey:dCopy];
    [(NSMapTable *)self->_UUIDsByFace setObject:dCopy forKey:faceCopy];
    [(NTKFaceCollection *)self _notifyAddedFace:faceCopy atIndex:index omitObserver:observerCopy];
    [(NTKFaceCollection *)self _didAddFace:faceCopy withUUID:dCopy atIndex:index];
  }

  else
  {
    v13 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [NTKFaceCollection _addFace:dCopy forUUID:? atIndex:? suppressingCallbackToObserver:?];
    }
  }
}

- (void)_setSelectedUUID:(id)d notify:(BOOL)notify suppressingCallbackToObserver:(id)observer
{
  dCopy = d;
  observerCopy = observer;
  if ((NTKEqualObjects(dCopy, self->_selectedUUID) & 1) == 0)
  {
    objc_storeStrong(&self->_selectedUUID, d);
    selectedUUID = [(NTKFaceCollection *)self selectedUUID];

    if (selectedUUID)
    {
      [(NTKFaceCollection *)self _notifySelectedFaceOmittingObserver:observerCopy];
    }
  }
}

- (id)_chooseNewSelectionBecauseSelectedUUIDWillBeRemovedAtIndex:(unint64_t)index
{
  v4 = [(NSMutableArray *)self->_orderedUUIDs mutableCopy];
  [v4 removeObjectAtIndex:index];
  if ([v4 count] <= index)
  {
    [v4 lastObject];
  }

  else
  {
    [v4 objectAtIndex:index];
  }
  v5 = ;

  return v5;
}

- (void)replaceFaceLocallyByCopy:(id)copy suppressingCallbackToObserver:(id)observer
{
  v19 = *MEMORY[0x277D85DE8];
  copyCopy = copy;
  observerCopy = observer;
  v8 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v13 = 138412802;
    v14 = logIdentifier;
    v15 = 2112;
    v16 = copyCopy;
    v17 = 2112;
    v18 = observerCopy;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "%@ replace face locally by copy %@, observer = %@", &v13, 0x20u);
  }

  v10 = [(NSMapTable *)self->_UUIDsByFace objectForKey:copyCopy];
  if (v10)
  {
    v11 = [(NSMutableArray *)self->_orderedUUIDs indexOfObject:v10];
    v12 = [copyCopy copy];
    [(NTKFaceCollection *)self _removeFaceForUUID:v10 suppressingCallbackToObserver:observerCopy];
    [(NTKFaceCollection *)self _addFace:v12 forUUID:v10 atIndex:v11 suppressingCallbackToObserver:observerCopy];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers addObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers removeObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)_notifyAddedFace:(id)face atIndex:(unint64_t)index omitObserver:(id)observer
{
  v21 = *MEMORY[0x277D85DE8];
  faceCopy = face;
  observerCopy = observer;
  if ([(NTKFaceCollection *)self hasLoaded])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    observers = [(NTKFaceCollection *)self observers];
    v11 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(observers);
          }

          v15 = *(*(&v16 + 1) + 8 * v14);
          if (v15 != observerCopy && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v15 faceCollection:self didAddFace:faceCopy atIndex:index];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }
}

- (void)_notifyRemovedFace:(id)face atIndex:(unint64_t)index omitObserver:(id)observer
{
  v21 = *MEMORY[0x277D85DE8];
  faceCopy = face;
  observerCopy = observer;
  if ([(NTKFaceCollection *)self hasLoaded])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    observers = [(NTKFaceCollection *)self observers];
    v11 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(observers);
          }

          v15 = *(*(&v16 + 1) + 8 * v14);
          if (v15 != observerCopy && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v15 faceCollection:self didRemoveFace:faceCopy atIndex:index];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }
}

- (void)_notifySelectedFaceOmittingObserver:(id)observer
{
  v19 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if ([(NTKFaceCollection *)self hasLoaded])
  {
    selectedFace = [(NTKFaceCollection *)self selectedFace];
    selectedFaceIndex = [(NTKFaceCollection *)self selectedFaceIndex];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    observers = [(NTKFaceCollection *)self observers];
    v8 = [observers copy];

    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * v12);
          if (v13 != observerCopy && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v13 faceCollection:self didSelectFace:selectedFace atIndex:selectedFaceIndex];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)_notifyReorderedFacesOmittingObserver:(id)observer
{
  v17 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if ([(NTKFaceCollection *)self hasLoaded])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    observers = [(NTKFaceCollection *)self observers];
    v6 = [observers copy];

    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (v11 != observerCopy && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v11 faceCollectionDidReorderFaces:self];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (id)observers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSHashTable *)selfCopy->_observers copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_throwIfNotLoaded:(SEL)loaded
{
  if (![(NTKFaceCollection *)self hasLoaded])
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE658];
    collectionIdentifier = [(NTKFaceCollection *)self collectionIdentifier];
    v7 = NSStringFromSelector(loaded);
    [v5 raise:v6 format:{@"Attempt to modify face collection (%@) before it has loaded (sel = %@)", collectionIdentifier, v7}];
  }
}

- (void)setDebugName:(id)name
{
  objc_storeStrong(&self->_debugName, name);

  [(NTKFaceCollection *)self _updateLogIdentifier];
}

- (void)_updateLogIdentifier
{
  debugName = self->_debugName;
  deviceUUID = self->_deviceUUID;
  if (debugName)
  {
    if (deviceUUID)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"<%@(%@), %@>", self->_collectionIdentifier, debugName, deviceUUID];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"<%@(%@)>", self->_collectionIdentifier, debugName, v8];
    }
  }

  else if (deviceUUID)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"<%@, %@>", self->_collectionIdentifier, deviceUUID, v8];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"<%@>", self->_collectionIdentifier, v7, v8];
  }
  v5 = ;
  logIdentifier = self->_logIdentifier;
  self->_logIdentifier = v5;
}

- (void)_addFace:(void *)a1 forUUID:atIndex:suppressingCallbackToObserver:.cold.1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_10(&dword_22D9C5000, v2, v3, "Attempted to add a nil NTKFace with uuid %@ at index %lu", v4, v5, v6, v7, 2u);
}

@end