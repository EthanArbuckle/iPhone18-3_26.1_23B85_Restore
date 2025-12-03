@interface HREMediaPlaybackActionMap
+ (id)actionMapWithState:(int64_t)state volume:(id)volume playbackArchive:(id)archive;
+ (id)emptyMap;
+ (id)statelessActionMapWithVolume:(id)volume playbackArchive:(id)archive;
- (HREMediaPlaybackActionMap)initWithState:(int64_t)state volume:(id)volume playbackArchive:(id)archive;
- (id)copyWithZone:(_NSZone *)zone;
- (id)flattenedMapEvaluatedForObject:(id)object;
- (id)mergeWithActionMaps:(id)maps;
- (void)mergeMap:(id)map intoMap:(id)intoMap;
@end

@implementation HREMediaPlaybackActionMap

- (HREMediaPlaybackActionMap)initWithState:(int64_t)state volume:(id)volume playbackArchive:(id)archive
{
  volumeCopy = volume;
  archiveCopy = archive;
  v13.receiver = self;
  v13.super_class = HREMediaPlaybackActionMap;
  v10 = [(HREActionMap *)&v13 initWithCondition:0 childMaps:0];
  v11 = v10;
  if (v10)
  {
    [(HREMediaPlaybackActionMap *)v10 setTargetPlaybackState:state];
    [(HREMediaPlaybackActionMap *)v11 setTargetVolume:volumeCopy];
    [(HREMediaPlaybackActionMap *)v11 setPlaybackArchive:archiveCopy];
  }

  return v11;
}

+ (id)emptyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HREMediaPlaybackActionMap_emptyMap__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_27F5F9930 != -1)
  {
    dispatch_once(&qword_27F5F9930, block);
  }

  v2 = _MergedGlobals_1;

  return v2;
}

uint64_t __37__HREMediaPlaybackActionMap_emptyMap__block_invoke(uint64_t a1)
{
  _MergedGlobals_1 = [*(a1 + 32) statelessActionMapWithVolume:0 playbackArchive:0];

  return MEMORY[0x2821F96F8]();
}

+ (id)actionMapWithState:(int64_t)state volume:(id)volume playbackArchive:(id)archive
{
  archiveCopy = archive;
  volumeCopy = volume;
  v10 = [[self alloc] initWithState:state volume:volumeCopy playbackArchive:archiveCopy];

  return v10;
}

+ (id)statelessActionMapWithVolume:(id)volume playbackArchive:(id)archive
{
  archiveCopy = archive;
  volumeCopy = volume;
  v8 = [[self alloc] initWithState:0 volume:volumeCopy playbackArchive:archiveCopy];

  return v8;
}

- (id)mergeWithActionMaps:(id)maps
{
  mapsCopy = maps;
  if ([mapsCopy count])
  {
    v5 = [mapsCopy na_filter:&__block_literal_global_15];

    if ([v5 na_all:&__block_literal_global_3_10])
    {
      v6 = [HREMediaPlaybackActionMap statelessActionMapWithVolume:0 playbackArchive:0];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __49__HREMediaPlaybackActionMap_mergeWithActionMaps___block_invoke_3;
      v11[3] = &unk_279777650;
      v11[4] = self;
      v7 = v6;
      v12 = v7;
      [v5 na_each:v11];
      [(HREMediaPlaybackActionMap *)self mergeMap:self intoMap:v7];
      v8 = v12;
      selfCopy2 = v7;
    }

    else
    {
      NSLog(&cfstr_CannotMergeMap.isa, self, v5);
      selfCopy2 = self;
    }

    mapsCopy = v5;
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

uint64_t __49__HREMediaPlaybackActionMap_mergeWithActionMaps___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HREActionMap emptyMap];
  v4 = [v2 isEqual:v3];

  return v4 ^ 1u;
}

uint64_t __49__HREMediaPlaybackActionMap_mergeWithActionMaps___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)flattenedMapEvaluatedForObject:(id)object
{
  v5.receiver = self;
  v5.super_class = HREMediaPlaybackActionMap;
  v3 = [(HREActionMap *)&v5 flattenedMapEvaluatedForObject:object];

  return v3;
}

- (void)mergeMap:(id)map intoMap:(id)intoMap
{
  mapCopy = map;
  intoMapCopy = intoMap;
  playbackArchive = [mapCopy playbackArchive];

  if (playbackArchive)
  {
    playbackArchive2 = [mapCopy playbackArchive];
    v8 = [playbackArchive2 copy];
    [intoMapCopy setPlaybackArchive:v8];
  }

  if ([mapCopy targetPlaybackState])
  {
    [intoMapCopy setTargetPlaybackState:{objc_msgSend(mapCopy, "targetPlaybackState")}];
  }

  targetVolume = [mapCopy targetVolume];

  if (targetVolume)
  {
    targetVolume2 = [mapCopy targetVolume];
    v11 = [targetVolume2 copy];
    [intoMapCopy setTargetVolume:v11];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = HREMediaPlaybackActionMap;
  v4 = [(HREActionMap *)&v13 copyWithZone:zone];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v7 setTargetPlaybackState:{-[HREMediaPlaybackActionMap targetPlaybackState](self, "targetPlaybackState")}];
  targetVolume = [(HREMediaPlaybackActionMap *)self targetVolume];
  v9 = [targetVolume copy];
  [v7 setTargetVolume:v9];

  playbackArchive = [(HREMediaPlaybackActionMap *)self playbackArchive];
  v11 = [playbackArchive copy];
  [v7 setPlaybackArchive:v11];

  return v5;
}

@end