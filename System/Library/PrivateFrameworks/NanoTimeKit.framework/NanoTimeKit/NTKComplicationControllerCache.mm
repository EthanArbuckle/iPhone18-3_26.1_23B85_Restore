@interface NTKComplicationControllerCache
+ (id)sharedCache;
- (NTKComplicationControllerCache)init;
- (id)controllerForComplication:(id)complication variant:(id)variant device:(id)device create:(id)create;
- (void)_cleanupRemovedFaces;
- (void)_purge;
- (void)_registerFace:(id)face;
- (void)_unregisterFace:(id)face;
- (void)_updateControllersForFace:(id)face;
- (void)dealloc;
- (void)faceCollectionDidLoad:(id)load;
- (void)faceCollectionDidReset:(id)reset;
- (void)setLibraryCollection:(id)collection;
@end

@implementation NTKComplicationControllerCache

+ (id)sharedCache
{
  if (sharedCache_onceToken_1 != -1)
  {
    +[NTKComplicationControllerCache sharedCache];
  }

  v3 = sharedCache___cache;

  return v3;
}

void __45__NTKComplicationControllerCache_sharedCache__block_invoke()
{
  v0 = objc_alloc_init(NTKComplicationControllerCache);
  v1 = sharedCache___cache;
  sharedCache___cache = v0;
}

- (NTKComplicationControllerCache)init
{
  v9.receiver = self;
  v9.super_class = NTKComplicationControllerCache;
  v2 = [(NTKComplicationControllerCache *)&v9 init];
  if (v2)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    controllers = v2->_controllers;
    v2->_controllers = strongToWeakObjectsMapTable;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    faceToControllers = v2->_faceToControllers;
    v2->_faceToControllers = strongToStrongObjectsMapTable;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__purge name:*MEMORY[0x277CBB648] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBB648] object:0];

  v4.receiver = self;
  v4.super_class = NTKComplicationControllerCache;
  [(NTKComplicationControllerCache *)&v4 dealloc];
}

- (id)controllerForComplication:(id)complication variant:(id)variant device:(id)device create:(id)create
{
  createCopy = create;
  v11 = [_NTKComplicationCacheKey keyWithVariant:variant complication:complication forDevice:device];
  v12 = [(NSMapTable *)self->_controllers objectForKey:v11];
  if (!v12)
  {
    v12 = createCopy[2](createCopy);
    [(NSMapTable *)self->_controllers setObject:v12 forKey:v11];
  }

  return v12;
}

- (void)setLibraryCollection:(id)collection
{
  collectionCopy = collection;
  libraryCollection = self->_libraryCollection;
  if (libraryCollection != collectionCopy)
  {
    [(NTKFaceCollection *)libraryCollection removeObserver:self];
    v7 = self->_libraryCollection;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__NTKComplicationControllerCache_setLibraryCollection___block_invoke;
    v9[3] = &unk_278780380;
    v9[4] = self;
    [(NTKFaceCollection *)v7 enumerateFacesUsingBlock:v9];
    objc_storeStrong(&self->_libraryCollection, collection);
    [(NTKFaceCollection *)collectionCopy addObserver:self];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__NTKComplicationControllerCache_setLibraryCollection___block_invoke_2;
    v8[3] = &unk_278780380;
    v8[4] = self;
    [(NTKFaceCollection *)collectionCopy enumerateFacesUsingBlock:v8];
  }
}

- (void)faceCollectionDidLoad:(id)load
{
  loadCopy = load;
  [(NTKComplicationControllerCache *)self _cleanupRemovedFaces];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__NTKComplicationControllerCache_faceCollectionDidLoad___block_invoke;
  v5[3] = &unk_278780380;
  v5[4] = self;
  [loadCopy enumerateFacesUsingBlock:v5];
}

- (void)faceCollectionDidReset:(id)reset
{
  resetCopy = reset;
  [(NTKComplicationControllerCache *)self _cleanupRemovedFaces];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__NTKComplicationControllerCache_faceCollectionDidReset___block_invoke;
  v5[3] = &unk_278780380;
  v5[4] = self;
  [resetCopy enumerateFacesUsingBlock:v5];
}

- (void)_registerFace:(id)face
{
  faceCopy = face;
  [faceCopy addObserver:self];
  [(NTKComplicationControllerCache *)self _updateControllersForFace:faceCopy];
}

- (void)_unregisterFace:(id)face
{
  faceCopy = face;
  [faceCopy removeObserver:self];
  [(NTKComplicationControllerCache *)self _removeControllersForFace:faceCopy];
}

- (void)_updateControllersForFace:(id)face
{
  faceCopy = face;
  v5 = objc_opt_new();
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __60__NTKComplicationControllerCache__updateControllersForFace___block_invoke;
  v13 = &unk_27877F498;
  v14 = faceCopy;
  v15 = v5;
  v6 = v5;
  v7 = faceCopy;
  [v7 enumerateComplicationSlotsWithBlock:&v10];
  faceToControllers = self->_faceToControllers;
  v9 = [v6 copy];
  [(NSMapTable *)faceToControllers setObject:v9 forKey:v7];
}

void __60__NTKComplicationControllerCache__updateControllersForFace___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 complicationForSlot:v4];
  v5 = [*(a1 + 32) complicationVariantForComplication:v8 withSlot:v4];

  v6 = [*(a1 + 32) device];
  v7 = [NTKComplicationController controllerForComplication:v8 variant:v5 device:v6];

  [*(a1 + 40) addObject:v7];
}

- (void)_purge
{
  [(NSMapTable *)self->_controllers removeAllObjects];
  faceToControllers = self->_faceToControllers;

  [(NSMapTable *)faceToControllers removeAllObjects];
}

- (void)_cleanupRemovedFaces
{
  keyEnumerator = [(NSMapTable *)self->_faceToControllers keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__NTKComplicationControllerCache__cleanupRemovedFaces__block_invoke;
  v5[3] = &unk_278786370;
  v5[4] = self;
  [allObjects enumerateObjectsUsingBlock:v5];
}

void __54__NTKComplicationControllerCache__cleanupRemovedFaces__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(*(a1 + 32) + 24) containsFace:?] & 1) == 0)
  {
    [*(a1 + 32) _unregisterFace:v3];
  }
}

@end