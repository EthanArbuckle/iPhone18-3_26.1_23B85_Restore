@interface _UIFocusMapSnapshot
- (CGRect)snapshotFrameForRegion:(id)a3;
- (NSArray)originalRegions;
- (NSArray)regions;
- (UICoordinateSpace)coordinateSpace;
- (UIFocusSystem)focusSystem;
- (_UIFocusMapSnapshot)init;
- (_UIFocusRegionContainer)regionsContainer;
- (_UIFocusRegionContainer)rootContainer;
- (id)_cachedNextFocusedItemForRegion:(id)a3 withFocusMovementRequest:(id)a4 inMap:(id)a5;
- (id)_initWithSnapshotter:(id)a3 mapArea:(id)a4 searchArea:(id)a5;
- (id)occludingRegionsForRegion:(id)a3;
- (id)originalRegionForRegion:(id)a3;
- (id)regionsForOriginalRegion:(id)a3;
- (void)_capture;
- (void)_trackOccludingRegion:(id)a3 forRegion:(id)a4;
- (void)_trackSubregion:(id)a3 forRegion:(id)a4;
- (void)addRegion:(id)a3;
- (void)addRegions:(id)a3;
- (void)addRegionsInContainer:(id)a3;
- (void)addRegionsInContainers:(id)a3;
- (void)consumeRegionInformationForRegions:(id)a3 fromSnapshot:(id)a4;
- (void)dealloc;
- (void)markContainerAsProvidingDynamicContent;
@end

@implementation _UIFocusMapSnapshot

- (_UIFocusMapSnapshot)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:149 description:@"-init is not a valid initializer for this class."];

  return 0;
}

- (id)_initWithSnapshotter:(id)a3 mapArea:(id)a4 searchArea:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_16:
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"mapArea"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  v29 = [MEMORY[0x277CCA890] currentHandler];
  [v29 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"snapshotter"}];

  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_17:
  v31 = [MEMORY[0x277CCA890] currentHandler];
  [v31 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"searchArea"}];

LABEL_4:
  v12 = [v10 coordinateSpace];
  v13 = [v11 coordinateSpace];

  if (v12 != v13)
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:158 description:@"The focus map snapshot's map area and search area must be expressed in the same coordinate space."];
  }

  v33.receiver = self;
  v33.super_class = _UIFocusMapSnapshot;
  v14 = [(_UIFocusMapSnapshot *)&v33 init];
  if (v14)
  {
    v15 = [v9 focusSystem];
    objc_storeWeak(&v14->_focusSystem, v15);

    v16 = [v9 rootContainer];
    objc_storeWeak(&v14->_rootContainer, v16);

    v17 = [v9 focusedRegion];
    focusedRegion = v14->_focusedRegion;
    v14->_focusedRegion = v17;

    v19 = [v9 regionsContainer];
    objc_storeWeak(&v14->_regionsContainer, v19);

    if ([v9 clipToSnapshotRect])
    {
      v20 = 4;
    }

    else
    {
      v20 = 0;
    }

    *&v14->_flags = *&v14->_flags & 0xFB | v20;
    if ([v9 ignoresRootContainerClippingRect])
    {
      v21 = 8;
    }

    else
    {
      v21 = 0;
    }

    *&v14->_flags = *&v14->_flags & 0xF7 | v21;
    v22 = [v9 searchInfo];
    searchInfo = v14->_searchInfo;
    v14->_searchInfo = v22;

    v24 = [v9 movementInfo];
    movementInfo = v14->_movementInfo;
    v14->_movementInfo = v24;

    objc_storeStrong(&v14->_mapArea, a4);
    objc_storeStrong(&v14->_searchArea, a5);
    v26 = [MEMORY[0x277CCAA50] hashTableWithOptions:514];
    visitedRegionContainers = v14->_visitedRegionContainers;
    v14->_visitedRegionContainers = v26;

    [(_UIFocusMapSnapshot *)v14 _capture];
  }

  return v14;
}

- (void)dealloc
{
  subregionToRegionMap = self->_subregionToRegionMap;
  if (subregionToRegionMap)
  {
    CFRelease(subregionToRegionMap);
    self->_subregionToRegionMap = 0;
  }

  regionToOccludingRegionsMap = self->_regionToOccludingRegionsMap;
  if (regionToOccludingRegionsMap)
  {
    CFRelease(regionToOccludingRegionsMap);
    self->_regionToOccludingRegionsMap = 0;
  }

  regionToFocusItemCache = self->_regionToFocusItemCache;
  if (regionToFocusItemCache)
  {
    CFRelease(regionToFocusItemCache);
    self->_regionToFocusItemCache = 0;
  }

  regionFrameCache = self->_regionFrameCache;
  if (regionFrameCache)
  {
    CFRelease(regionFrameCache);
    self->_regionFrameCache = 0;
  }

  v7.receiver = self;
  v7.super_class = _UIFocusMapSnapshot;
  [(_UIFocusMapSnapshot *)&v7 dealloc];
}

- (NSArray)regions
{
  v29 = *MEMORY[0x277D85DE8];
  if (*&self->_flags)
  {
    regions = self->_regions;
    if (!regions)
    {
      mutableUnoccludedRegions = self->_mutableUnoccludedRegions;
      filteredOriginalRegions = self->_filteredOriginalRegions;
      WeakRetained = objc_loadWeakRetained(&self->_regionsContainer);
      v8 = filteredOriginalRegions;
      v9 = self;
      v10 = [_UIFocusRegionEvaluator regionsByEvaluatingOcclusionsForRegions:mutableUnoccludedRegions inSnapshot:v9];
      v11 = v10;
      if (WeakRetained)
      {
        v23 = WeakRetained;
        v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v22 = v11;
        v13 = v11;
        v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v25;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v25 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v24 + 1) + 8 * i);
              v19 = [(_UIFocusMapSnapshot *)v9 originalRegionForRegion:v18, v22];
              if ([(NSHashTable *)v8 containsObject:v19])
              {
                [(NSArray *)v12 addObject:v18];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v15);
        }

        v11 = v22;
        WeakRetained = v23;
      }

      else
      {
        v12 = v10;
      }

      v20 = self->_regions;
      self->_regions = v12;

      regions = self->_regions;
    }

    v2 = regions;
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

- (NSArray)originalRegions
{
  v18 = *MEMORY[0x277D85DE8];
  if (*&self->_flags)
  {
    v4 = [(_UIFocusMapSnapshot *)self regionsContainer];

    if (v4)
    {
      v2 = [(NSHashTable *)self->_filteredOriginalRegions allObjects];
    }

    else
    {
      v5 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = self->_mutableUnoccludedRegions;
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v14;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [(_UIFocusMapSnapshot *)self originalRegionForRegion:*(*(&v13 + 1) + 8 * i), v13];
            [v5 addObject:v11];
          }

          v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v8);
      }

      v2 = [v5 allObjects];
    }
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

- (id)regionsForOriginalRegion:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"originalRegion"}];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(_UIFocusMapSnapshot *)self regions];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(_UIFocusMapSnapshot *)self originalRegionForRegion:v12];

        if (v13 == v5)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = [v6 copy];

  return v14;
}

- (void)_trackSubregion:(id)a3 forRegion:(id)a4
{
  key = a3;
  v7 = a4;
  v8 = key;
  v9 = v7;
  if (key)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:273 description:{@"Invalid parameter not satisfying: %@", @"subregion"}];

    v8 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x277CCA890] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:274 description:{@"Invalid parameter not satisfying: %@", @"originalRegion"}];

  v8 = key;
LABEL_3:
  if (v8 == v9)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:275 description:{@"Invalid parameter not satisfying: %@", @"subregion != originalRegion"}];

    v8 = key;
  }

  CFDictionarySetValue(self->_subregionToRegionMap, v8, v9);
}

- (id)originalRegionForRegion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:282 description:{@"Invalid parameter not satisfying: %@", @"region"}];
  }

  v6 = v5;
  v7 = CFDictionaryGetValue(self->_subregionToRegionMap, v6);
  v8 = v6;
  if (v7)
  {
    v9 = v6;
    do
    {
      v8 = v7;

      v7 = CFDictionaryGetValue(self->_subregionToRegionMap, v8);

      v9 = v8;
    }

    while (v7);
  }

  return v8;
}

- (void)_trackOccludingRegion:(id)a3 forRegion:(id)a4
{
  v9 = a3;
  v6 = [(_UIFocusMapSnapshot *)self originalRegionForRegion:a4];
  v7 = CFDictionaryGetValue(self->_regionToOccludingRegionsMap, v6);
  if (v7)
  {
    v8 = v7;
    [v7 addObject:v9];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v9, 0}];
    CFDictionarySetValue(self->_regionToOccludingRegionsMap, v6, v8);
  }
}

- (id)occludingRegionsForRegion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:308 description:{@"Invalid parameter not satisfying: %@", @"region"}];
  }

  v6 = [(_UIFocusMapSnapshot *)self originalRegionForRegion:v5];
  v7 = CFDictionaryGetValue(self->_regionToOccludingRegionsMap, v6);
  v8 = v7;
  if (v7)
  {
    v9 = [v7 copy];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

- (void)consumeRegionInformationForRegions:(id)a3 fromSnapshot:(id)a4
{
  v16 = a3;
  v7 = a4;
  v8 = [(CFDictionaryRef *)v7 coordinateSpace];
  v9 = [(_UIFocusMapSnapshot *)self coordinateSpace];

  if (v8 != v9)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:318 description:@"Unable to consume regions from a snapshot with a different coordinate system."];
  }

  v10 = [v16 mutableCopy];
  if ([v10 count])
  {
    v11 = 0;
    do
    {
      v12 = [v10 objectAtIndexedSubscript:v11];
      v13 = CFDictionaryGetValue(v7[3], v12);
      if (v13)
      {
        CFDictionarySetValue(self->_subregionToRegionMap, v12, v13);
        [v10 addObject:v13];
      }

      v14 = CFDictionaryGetValue(v7[4], v12);
      if (v14)
      {
        CFDictionarySetValue(self->_regionToOccludingRegionsMap, v12, v14);
      }

      ++v11;
    }

    while (v11 < [v10 count]);
  }
}

- (id)_cachedNextFocusedItemForRegion:(id)a3 withFocusMovementRequest:(id)a4 inMap:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p_%p_%p", v8, v9, v10];
  v12 = CFDictionaryGetValue(self->_regionToFocusItemCache, v11);
  if (!v12)
  {
    v13 = [v8 _nextFocusedItemForFocusMovementRequest:v9 inMap:v10 withSnapshot:self];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [MEMORY[0x277CBEB68] null];
    }

    v12 = v15;

    CFDictionarySetValue(self->_regionToFocusItemCache, v11, v12);
  }

  v16 = [MEMORY[0x277CBEB68] null];
  if (v12 == v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v12;
  }

  v18 = v17;

  return v17;
}

- (CGRect)snapshotFrameForRegion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:357 description:{@"Invalid parameter not satisfying: %@", @"region"}];
  }

  Value = CFDictionaryGetValue(self->_regionFrameCache, v5);
  if (Value)
  {
    v7 = *Value;
    v8 = Value[1];
    v9 = Value[2];
    v10 = Value[3];
  }

  else
  {
    v11 = [(_UIFocusMapSnapshot *)self coordinateSpace];
    [_UIFocusRegionEvaluator frameForRegion:v5 inCoordinateSpace:v11];
    v7 = v12;
    v8 = v13;
    v9 = v14;
    v10 = v15;

    v16 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
    *v16 = v7;
    v16[1] = v8;
    v16[2] = v9;
    v16[3] = v10;
    CFDictionarySetValue(self->_regionFrameCache, v5, v16);
  }

  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)markContainerAsProvidingDynamicContent
{
  uncachableEnvironments = self->_uncachableEnvironments;
  v4 = [(NSMutableArray *)self->_stateStack lastObject];
  v3 = [v4 regionContainer];
  [(NSHashTable *)uncachableEnvironments addObject:v3];
}

- (void)_capture
{
  *&self->_flags &= ~1u;
  regions = self->_regions;
  self->_regions = 0;

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mutableUnoccludedRegions = self->_mutableUnoccludedRegions;
  self->_mutableUnoccludedRegions = v5;

  v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
  filteredOriginalRegions = self->_filteredOriginalRegions;
  self->_filteredOriginalRegions = v7;

  if (*&self->_subregionToRegionMap != 0 || self->_regionToFocusItemCache || self->_regionFrameCache)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:400 description:{@"Invalid parameter not satisfying: %@", @"_subregionToRegionMap == NULL && _regionToOccludingRegionsMap == NULL && _regionToFocusItemCache == NULL && _regionFrameCache == NULL"}];
  }

  v9 = *MEMORY[0x277CBECE8];
  self->_subregionToRegionMap = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, &pointerKeyCallbacks, &pointerValueCallbacks);
  self->_regionToOccludingRegionsMap = CFDictionaryCreateMutable(v9, 0, &pointerKeyCallbacks, &equalValueCallbacks);
  self->_regionToFocusItemCache = CFDictionaryCreateMutable(v9, 0, &equalKeyCallbacks, &pointerValueCallbacks);
  self->_regionFrameCache = CFDictionaryCreateMutable(v9, 0, &pointerKeyCallbacks, &rectValueCallbacks);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  stateStack = self->_stateStack;
  self->_stateStack = v10;

  v12 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
  eligibleEnvironments = self->_eligibleEnvironments;
  self->_eligibleEnvironments = v12;

  v14 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
  ineligibleEnvironments = self->_ineligibleEnvironments;
  self->_ineligibleEnvironments = v14;

  v16 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
  uncachableEnvironments = self->_uncachableEnvironments;
  self->_uncachableEnvironments = v16;

  *&self->_flags &= ~2u;
  WeakRetained = objc_loadWeakRetained(&self->_rootContainer);
  [(_UIFocusMapSnapshot *)self addRegionsInContainer:WeakRetained];

  *&self->_flags |= 1u;
}

- (UICoordinateSpace)coordinateSpace
{
  v2 = [(_UIFocusMapSnapshot *)self _searchArea];
  v3 = [v2 coordinateSpace];

  return v3;
}

- (void)addRegion:(id)a3
{
  v38 = a3;
  if (!v38)
  {
    v37 = [MEMORY[0x277CCA890] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:432 description:{@"Invalid parameter not satisfying: %@", @"region"}];
  }

  v5 = [(NSMutableArray *)self->_stateStack lastObject];
  v6 = [v5 regionContainerFocusSystem];

  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);
  if (v6 == WeakRetained)
  {
    v8 = [(_UIFocusMapSnapshot *)self mapArea];
    [(_UIFocusMapSnapshot *)self snapshotFrameForRegion:v38];
    x = v41.origin.x;
    y = v41.origin.y;
    width = v41.size.width;
    height = v41.size.height;
    if (fabs(CGRectGetWidth(v41)) < 0.0001)
    {
      goto LABEL_31;
    }

    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    if (fabs(CGRectGetHeight(v42)) < 0.0001)
    {
      goto LABEL_31;
    }

    v13 = v38;
    if ((*&self->_flags & 4) != 0)
    {
      if (![v8 intersectsRegion:v38 inSnapshot:self])
      {
LABEL_31:

        goto LABEL_32;
      }

      if ((*&self->_flags & 4) != 0 && [v38 _shouldCropRegionToSearchArea])
      {
        regions = [v8 intersectionWithRegion:v38 inSnapshot:self];
        v15 = v38;
        if (regions != v38)
        {
          if (regions)
          {
            [(_UIFocusMapSnapshot *)self snapshotFrameForRegion:regions];
            v15 = v38;
            x = v16;
            y = v17;
            width = v18;
            height = v19;
          }

          else
          {
            x = *MEMORY[0x277CBF398];
            y = *(MEMORY[0x277CBF398] + 8);
            width = *(MEMORY[0x277CBF398] + 16);
            height = *(MEMORY[0x277CBF398] + 24);
          }
        }
      }

      else
      {
        regions = v38;
      }
    }

    else
    {
      regions = v38;
    }

    if (regions)
    {
      if (([regions _isUnclippable] & 1) != 0 || (objc_msgSend(v6, "behavior"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "supportsClipToBounds"), v20, !v21) || (-[NSMutableArray lastObject](self->_stateStack, "lastObject"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "clippingRect"), v24 = v23, v26 = v25, v28 = v27, v30 = v29, v22, v43.origin.x = v24, v43.origin.y = v26, v43.size.width = v28, v43.size.height = v30, CGRectIsNull(v43)) || (v44.origin.x = x, v44.origin.y = y, v44.size.width = width, v44.size.height = height, v47.origin.x = v24, v47.origin.y = v26, v47.size.width = v28, v47.size.height = v30, v45 = CGRectIntersection(v44, v47), v31 = v45.origin.x, v32 = v45.origin.y, v33 = v45.size.width, v34 = v45.size.height, v48.origin.x = x, v48.origin.y = y, v48.size.width = width, v48.size.height = height, CGRectEqualToRect(v45, v48)))
      {
        v35 = regions;
        goto LABEL_23;
      }

      v46.origin.x = v31;
      v46.origin.y = v32;
      v46.size.width = v33;
      v46.size.height = v34;
      if (CGRectIsEmpty(v46))
      {
        v38 = 0;
LABEL_26:

        goto LABEL_31;
      }

      v39 = [_UIFocusRegionEvaluator subregionFromRegion:regions withSnapshotFrame:self inSnapshot:v31, v32, v33, v34];

      v35 = v39;
      if (v39)
      {
LABEL_23:
        v38 = v35;
        [(NSMutableArray *)self->_mutableUnoccludedRegions addObject:?];
        if ((*&self->_flags & 2) != 0)
        {
          v36 = [(_UIFocusMapSnapshot *)self originalRegionForRegion:v38];
          [(NSHashTable *)self->_filteredOriginalRegions addObject:v36];
        }

        regions = self->_regions;
        self->_regions = 0;
        goto LABEL_26;
      }
    }

    v38 = 0;
    goto LABEL_31;
  }

LABEL_32:
}

- (void)addRegions:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:483 description:{@"Invalid parameter not satisfying: %@", @"regions"}];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(_UIFocusMapSnapshot *)self addRegion:*(*(&v12 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)addRegionsInContainer:(id)a3
{
  v169 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v119 = [MEMORY[0x277CCA890] currentHandler];
    [v119 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:491 description:{@"Invalid parameter not satisfying: %@", @"container"}];
  }

  v6 = [(NSHashTable *)self->_visitedRegionContainers count];
  v7 = v5;
  v8 = v7;
  if ([v7 _ui_isUIFocusRegionContainerProxy])
  {
    v8 = [v7 owningEnvironment];
  }

  [(NSHashTable *)self->_visitedRegionContainers addObject:v8];
  if (v6 == [(NSHashTable *)self->_visitedRegionContainers count])
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [v7 debugDescription];
    v11 = [v9 stringWithFormat:@"Ignoring attempt to add focus items in already-visited container. This can potentially cause infinite recursion.\nContainer: %@", v10];

    if (dyld_program_sdk_at_least())
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_UIFocusMapSnapshot addRegionsInContainer:]"];
      [v12 handleFailureInFunction:v13 file:@"_UIFocusMapSnapshot.m" lineNumber:504 description:{@"%@", v11}];
    }

    else
    {
      v26 = logger();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);

      if (v27)
      {
        v28 = logger();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v11;
          _os_log_error_impl(&dword_24B885000, v28, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
        }
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __45___UIFocusMapSnapshot_addRegionsInContainer___block_invoke;
        block[3] = &unk_279014BD8;
        v11 = v11;
        v141 = v11;
        if (addRegionsInContainer__once != -1)
        {
          dispatch_once(&addRegionsInContainer__once, block);
        }
      }
    }

    goto LABEL_83;
  }

  eligibleEnvironments = self->_eligibleEnvironments;
  ineligibleEnvironments = self->_ineligibleEnvironments;
  stateStack = self->_stateStack;
  v139 = v7;
  v17 = eligibleEnvironments;
  v18 = ineligibleEnvironments;
  v19 = stateStack;
  if (v5)
  {
    if (v17)
    {
      goto LABEL_10;
    }

LABEL_85:
    v122 = [MEMORY[0x277CCA890] currentHandler];
    v123 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UIFocusSystem *__UIFocusMapRecurseSearchForFocusSystemInEligibleContainer(__strong id<_UIFocusRegionContainer>, NSHashTable<id<UIFocusEnvironment>> *__strong, NSHashTable<id<UIFocusEnvironment>> *__strong, NSArray<_UIFocusRegionSearchContextState *> *__strong)"}];
    [v122 handleFailureInFunction:v123 file:@"_UIFocusMapSnapshot.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"eligibleEnvironments"}];

    if (v18)
    {
      goto LABEL_11;
    }

    goto LABEL_86;
  }

  v120 = [MEMORY[0x277CCA890] currentHandler];
  v121 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UIFocusSystem *__UIFocusMapRecurseSearchForFocusSystemInEligibleContainer(__strong id<_UIFocusRegionContainer>, NSHashTable<id<UIFocusEnvironment>> *__strong, NSHashTable<id<UIFocusEnvironment>> *__strong, NSArray<_UIFocusRegionSearchContextState *> *__strong)"}];
  [v120 handleFailureInFunction:v121 file:@"_UIFocusMapSnapshot.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"container"}];

  if (!v17)
  {
    goto LABEL_85;
  }

LABEL_10:
  if (v18)
  {
    goto LABEL_11;
  }

LABEL_86:
  v124 = [MEMORY[0x277CCA890] currentHandler];
  v125 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UIFocusSystem *__UIFocusMapRecurseSearchForFocusSystemInEligibleContainer(__strong id<_UIFocusRegionContainer>, NSHashTable<id<UIFocusEnvironment>> *__strong, NSHashTable<id<UIFocusEnvironment>> *__strong, NSArray<_UIFocusRegionSearchContextState *> *__strong)"}];
  [v124 handleFailureInFunction:v125 file:@"_UIFocusMapSnapshot.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"ineligibleEnvironments"}];

LABEL_11:
  v154 = 0;
  v155 = &v154;
  v156 = 0x2020000000;
  IsEligibleForFocusOcclusion = _UIFocusEnvironmentIsEligibleForFocusOcclusion(v139, 0);
  if (*(v155 + 24))
  {
    v20 = v17;
  }

  else
  {
    v20 = v18;
  }

  [(NSHashTable *)v20 addObject:v139];
  if (*(v155 + 24) == 1)
  {
    v21 = [(NSMutableArray *)v19 lastObject];
    v22 = [v21 regionContainer];

    v134 = v7;
    v137 = v19;
    if ([v22 _ui_isUIFocusRegionContainerProxy])
    {
      v23 = [v22 owningEnvironment];

      v24 = a2;
      v25 = v8;
      v22 = v23;
    }

    else
    {
      v24 = a2;
      v25 = v8;
    }

    v148 = 0;
    v149 = &v148;
    v150 = 0x3032000000;
    v151 = __Block_byref_object_copy__4;
    v152 = __Block_byref_object_dispose__4;
    v153 = 0;
    v144 = 0;
    v145 = &v144;
    v146 = 0x2020000000;
    v147 = 0;
    v142[0] = 0;
    v142[1] = v142;
    v142[2] = 0x2020000000;
    v143 = 1;
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v159 = ____UIFocusMapRecurseSearchForFocusSystemInEligibleContainer_block_invoke;
    v160 = &unk_279014C00;
    v165 = &v148;
    v29 = v139;
    v161 = v29;
    v30 = v22;
    v162 = v30;
    v166 = &v144;
    v167 = v142;
    v163 = v17;
    v164 = v18;
    v168 = &v154;
    _UIFocusEnvironmentEnumerateAncestorEnvironments(v29, &buf);
    v8 = v25;
    a2 = v24;
    v7 = v134;
    v19 = v137;
    if (*(v155 + 24) == 1)
    {
      if (*(v145 + 24) == 1)
      {
        v31 = [(NSMutableArray *)v137 lastObject];
        v11 = [v31 regionContainerFocusSystem];
      }

      else
      {
        v11 = [UIFocusSystem focusSystemForEnvironment:v149[5]];
      }
    }

    else
    {
      v11 = 0;
    }

    _Block_object_dispose(v142, 8);
    _Block_object_dispose(&v144, 8);
    _Block_object_dispose(&v148, 8);
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v154, 8);

  if (!v11)
  {
    goto LABEL_83;
  }

  v138 = [(_UIFocusMapSnapshot *)self regionsContainer];
  v136 = [v139 isEqual:v138];
  if (v136 && (*&self->_flags & 2) == 0)
  {
    *&self->_flags |= 2u;
  }

  WeakRetained = objc_loadWeakRetained(&self->_rootContainer);
  if (([v139 isEqual:WeakRetained] & 1) == 0)
  {

    goto LABEL_40;
  }

  v33 = (*&self->_flags & 8) == 0;

  if (v33)
  {
LABEL_40:
    v38 = objc_loadWeakRetained(&self->_focusSystem);
    v39 = self->_stateStack;
    v40 = [(_UIFocusMapSnapshot *)self coordinateSpace];
    v135 = v38;
    v41 = v39;
    v42 = v139;
    v43 = v40;
    v44 = objc_opt_respondsToSelector();
    v34 = *MEMORY[0x277CBF398];
    v35 = *(MEMORY[0x277CBF398] + 8);
    v36 = *(MEMORY[0x277CBF398] + 16);
    v37 = *(MEMORY[0x277CBF398] + 24);
    height = v37;
    width = v36;
    y = v35;
    x = *MEMORY[0x277CBF398];
    if (v44)
    {
      [v42 _clippingRectInCoordinateSpace:v43];
      x = v49;
      y = v50;
      width = v51;
      height = v52;
    }

    v170.origin.x = x;
    v170.origin.y = y;
    v170.size.width = width;
    v170.size.height = height;
    if (!CGRectIsNull(v170) || [(NSMutableArray *)v41 count])
    {
      v53 = [v42 focusItemContainer];
      IsScrollableContainer = _UIFocusItemContainerIsScrollableContainer(v53);
      buf = *MEMORY[0x277CBF348];
      if (IsScrollableContainer && [v135 _isScrollingScrollableContainer:v53 targetContentOffset:&buf])
      {
        v129 = v53;
        [v129 contentOffset];
        v56 = v55;
        v58 = v57;
        [v129 visibleSize];
        v60 = v59;
        v62 = v61;
        v63 = [v129 coordinateSpace];
        [v63 convertRect:v43 toCoordinateSpace:{v56, v58, v60, v62}];
        v132 = v65;
        v133 = v64;
        v130 = v67;
        v131 = v66;

        v171.origin.x = x;
        v171.origin.y = y;
        v171.size.width = width;
        v171.size.height = height;
        if (CGRectIsNull(v171))
        {
          x = v133;
          y = v132;
          width = v131;
          height = v130;
        }

        if ([(NSMutableArray *)v41 count])
        {
          v68 = [(NSMutableArray *)v41 lastObject];
          [v68 clippingRect];
          v70 = v69;
          v72 = v71;
          v74 = v73;
          v76 = v75;

          v172.origin.x = v70;
          v172.origin.y = v72;
          v172.size.width = v74;
          v172.size.height = v76;
          if (!CGRectIsNull(v172))
          {
            v173.origin.x = x;
            v173.origin.y = y;
            v173.size.width = width;
            v173.size.height = height;
            v192.origin.x = v70;
            v192.origin.y = v72;
            v192.size.width = v74;
            v192.size.height = v76;
            v174 = CGRectIntersection(v173, v192);
            x = v174.origin.x;
            y = v174.origin.y;
            width = v174.size.width;
            height = v174.size.height;
          }
        }

        v175.origin.x = x;
        v175.origin.y = y;
        v175.size.width = width;
        v175.size.height = height;
        MinY = CGRectGetMinY(v175);
        v176.origin.y = v132;
        v176.origin.x = v133;
        v176.size.height = v130;
        v176.size.width = v131;
        v127 = CGRectGetMinY(v176);
        v177.origin.x = x;
        v177.origin.y = y;
        v177.size.width = width;
        v177.size.height = height;
        MinX = CGRectGetMinX(v177);
        v178.origin.y = v132;
        v178.origin.x = v133;
        v178.size.height = v130;
        v178.size.width = v131;
        v77 = CGRectGetMinX(v178);
        v179.origin.y = v132;
        v179.origin.x = v133;
        v179.size.height = v130;
        v179.size.width = v131;
        MaxY = CGRectGetMaxY(v179);
        v180.origin.x = x;
        v180.origin.y = y;
        v180.size.width = width;
        v180.size.height = height;
        v79 = CGRectGetMaxY(v180);
        v181.origin.y = v132;
        v181.origin.x = v133;
        v181.size.height = v130;
        v181.size.width = v131;
        MaxX = CGRectGetMaxX(v181);
        v182.origin.x = x;
        v182.origin.y = y;
        v182.size.width = width;
        v182.size.height = height;
        v81 = MaxX - CGRectGetMaxX(v182);
        if (MinY - v127 >= 0.0)
        {
          v82 = MinY - v127;
        }

        else
        {
          v82 = 0.0;
        }

        if (MinX - v77 >= 0.0)
        {
          v83 = MinX - v77;
        }

        else
        {
          v83 = 0.0;
        }

        if (MaxY - v79 >= 0.0)
        {
          v84 = MaxY - v79;
        }

        else
        {
          v84 = 0.0;
        }

        if (v81 >= 0.0)
        {
          v85 = v81;
        }

        else
        {
          v85 = 0.0;
        }

        v87 = *(&buf + 1);
        v86 = *&buf;
        [v129 visibleSize];
        v89 = v88;
        v91 = v90;
        v92 = [v129 coordinateSpace];
        [v92 convertRect:v43 toCoordinateSpace:{v86, v87, v89, v91}];
        v94 = v93;
        v96 = v95;
        v98 = v97;
        v100 = v99;

        v183.origin.y = v132;
        v183.origin.x = v133;
        v183.size.height = v130;
        v183.size.width = v131;
        v193.origin.x = v94;
        v193.origin.y = v96;
        v193.size.width = v98;
        v193.size.height = v100;
        v184 = CGRectUnion(v183, v193);
        v34 = v83 + v184.origin.x;
        v35 = v82 + v184.origin.y;
        v36 = v184.size.width - (v83 + v85);
        v37 = v184.size.height - (v82 + v84);
        v184.origin.x = v83 + v184.origin.x;
        v184.origin.y = v82 + v184.origin.y;
        v184.size.width = v36;
        v184.size.height = v37;
        if (CGRectIsNull(v184))
        {
          v34 = *MEMORY[0x277CBF3A0];
          v35 = *(MEMORY[0x277CBF3A0] + 8);
          v36 = *(MEMORY[0x277CBF3A0] + 16);
          v37 = *(MEMORY[0x277CBF3A0] + 24);
        }
      }

      else
      {
        v185.origin.x = x;
        v185.origin.y = y;
        v185.size.width = width;
        v185.size.height = height;
        if (CGRectIsNull(v185))
        {
          v101 = [(NSMutableArray *)v41 lastObject];
          [v101 clippingRect];
          v34 = v102;
          v35 = v103;
          v36 = v104;
          v37 = v105;
        }

        else
        {
          if ([(NSMutableArray *)v41 count])
          {
            v106 = [(NSMutableArray *)v41 lastObject];
            [v106 clippingRect];
            v108 = v107;
            v110 = v109;
            v112 = v111;
            v114 = v113;

            v186.origin.x = v108;
            v186.origin.y = v110;
            v186.size.width = v112;
            v186.size.height = v114;
            if (!CGRectIsNull(v186))
            {
              v187.origin.x = x;
              v187.origin.y = y;
              v187.size.width = width;
              v187.size.height = height;
              v194.origin.x = v108;
              v194.origin.y = v110;
              v194.size.width = v112;
              v194.size.height = v114;
              v188 = CGRectIntersection(v187, v194);
              x = v188.origin.x;
              y = v188.origin.y;
              width = v188.size.width;
              height = v188.size.height;
            }
          }

          v34 = x;
          v35 = y;
          v36 = width;
          v37 = height;
          v189.origin.x = x;
          v189.origin.y = y;
          v189.size.width = width;
          v189.size.height = height;
          if (CGRectIsNull(v189))
          {
            v34 = *MEMORY[0x277CBF3A0];
            v35 = *(MEMORY[0x277CBF3A0] + 8);
            v36 = *(MEMORY[0x277CBF3A0] + 16);
            v37 = *(MEMORY[0x277CBF3A0] + 24);
          }
        }
      }
    }

    goto LABEL_75;
  }

  v34 = *MEMORY[0x277CBF398];
  v35 = *(MEMORY[0x277CBF398] + 8);
  v36 = *(MEMORY[0x277CBF398] + 16);
  v37 = *(MEMORY[0x277CBF398] + 24);
LABEL_75:
  v190.origin.x = v34;
  v190.origin.y = v35;
  v190.size.width = v36;
  v190.size.height = v37;
  if (CGRectIsNull(v190))
  {
    if ([(NSMutableArray *)self->_stateStack count])
    {
      v115 = [(NSMutableArray *)self->_stateStack lastObject];
      [v115 clippingRect];
      IsNull = CGRectIsNull(v191);

      if (!IsNull)
      {
        v117 = [MEMORY[0x277CCA890] currentHandler];
        [v117 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:535 description:{@"Encountered a NULL clipping rect, which is invalid when previous containers are clipping."}];
      }
    }
  }

  v118 = [_UIFocusRegionSearchContextState stateWithRegionContainer:v139 focusSystem:v11 clippingRect:v34, v35, v36, v37];
  [(NSMutableArray *)self->_stateStack addObject:v118];
  [v139 _searchForFocusRegionsInContext:self];
  [(NSMutableArray *)self->_stateStack removeLastObject];
  if (v136 && (*&self->_flags & 2) != 0)
  {
    *&self->_flags &= ~2u;
  }

LABEL_83:
}

- (void)addRegionsInContainers:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIFocusMapSnapshot.m" lineNumber:552 description:{@"Invalid parameter not satisfying: %@", @"containers"}];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(_UIFocusMapSnapshot *)self addRegionsInContainer:*(*(&v12 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (UIFocusSystem)focusSystem
{
  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);

  return WeakRetained;
}

- (_UIFocusRegionContainer)rootContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_rootContainer);

  return WeakRetained;
}

- (_UIFocusRegionContainer)regionsContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_regionsContainer);

  return WeakRetained;
}

@end