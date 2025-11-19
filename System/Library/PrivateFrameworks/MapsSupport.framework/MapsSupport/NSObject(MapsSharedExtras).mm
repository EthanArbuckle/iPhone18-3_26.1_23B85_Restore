@interface NSObject(MapsSharedExtras)
- (uint64_t)_maps_needsUpdateWithSelector:()MapsSharedExtras;
- (void)_maps_setNeedsUpdate:()MapsSharedExtras withSelector:;
@end

@implementation NSObject(MapsSharedExtras)

- (void)_maps_setNeedsUpdate:()MapsSharedExtras withSelector:
{
  v7 = objc_getAssociatedObject(a1, kMapsNeedsUpdateSelectorsToInvokeKey);
  v8 = v7;
  if (a3)
  {
    if (!v7)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      objc_setAssociatedObject(a1, kMapsNeedsUpdateSelectorsToInvokeKey, v8, 1);
    }

    v9 = NSStringFromSelector(a4);
    [v8 addObject:v9];

    v10 = objc_getAssociatedObject(a1, _maps_setNeedsUpdate_withSelector__hasScheduledInvocationForSelectorsKey);

    if (!v10)
    {
      objc_setAssociatedObject(a1, _maps_setNeedsUpdate_withSelector__hasScheduledInvocationForSelectorsKey, MEMORY[0x277CBEC38], 3);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64__NSObject_MapsSharedExtras___maps_setNeedsUpdate_withSelector___block_invoke;
      block[3] = &unk_279866158;
      block[4] = a1;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
    v11 = NSStringFromSelector(a4);
    [v8 removeObject:v11];
  }
}

- (uint64_t)_maps_needsUpdateWithSelector:()MapsSharedExtras
{
  v4 = objc_getAssociatedObject(a1, kMapsNeedsUpdateSelectorsToInvokeKey);
  v5 = NSStringFromSelector(a3);
  v6 = [v4 containsObject:v5];

  return v6;
}

@end