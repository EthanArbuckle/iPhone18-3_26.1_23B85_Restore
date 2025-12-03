@interface _UIFocusMapSearchInfo
- (NSArray)destinationRegions;
- (NSArray)snapshots;
- (_UIFocusMapSearchInfo)init;
- (void)addDestinationRegion:(id)region;
- (void)addSnapshot:(id)snapshot;
@end

@implementation _UIFocusMapSearchInfo

- (_UIFocusMapSearchInfo)init
{
  v8.receiver = self;
  v8.super_class = _UIFocusMapSearchInfo;
  v2 = [(_UIFocusMapSearchInfo *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableSnapshots = v2->_mutableSnapshots;
    v2->_mutableSnapshots = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableDestinationRegions = v2->_mutableDestinationRegions;
    v2->_mutableDestinationRegions = v5;

    v2->_hasOnlyStaticContent = 1;
  }

  return v2;
}

- (NSArray)snapshots
{
  mutableSnapshots = [(_UIFocusMapSearchInfo *)self mutableSnapshots];
  v3 = [mutableSnapshots copy];

  return v3;
}

- (NSArray)destinationRegions
{
  mutableDestinationRegions = [(_UIFocusMapSearchInfo *)self mutableDestinationRegions];
  v3 = [mutableDestinationRegions copy];

  return v3;
}

- (void)addSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (snapshotCopy)
  {
    mutableSnapshots = [(_UIFocusMapSearchInfo *)self mutableSnapshots];
    [mutableSnapshots addObject:snapshotCopy];

    if (self->_hasOnlyStaticContent)
    {
      self->_hasOnlyStaticContent &= [snapshotCopy hasOnlyStaticContent];
    }
  }
}

- (void)addDestinationRegion:(id)region
{
  if (region)
  {
    regionCopy = region;
    mutableDestinationRegions = [(_UIFocusMapSearchInfo *)self mutableDestinationRegions];
    [mutableDestinationRegions addObject:regionCopy];
  }
}

@end