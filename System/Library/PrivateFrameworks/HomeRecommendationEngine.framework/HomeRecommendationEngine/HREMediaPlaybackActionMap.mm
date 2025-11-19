@interface HREMediaPlaybackActionMap
+ (id)actionMapWithState:(int64_t)a3 volume:(id)a4 playbackArchive:(id)a5;
+ (id)emptyMap;
+ (id)statelessActionMapWithVolume:(id)a3 playbackArchive:(id)a4;
- (HREMediaPlaybackActionMap)initWithState:(int64_t)a3 volume:(id)a4 playbackArchive:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)flattenedMapEvaluatedForObject:(id)a3;
- (id)mergeWithActionMaps:(id)a3;
- (void)mergeMap:(id)a3 intoMap:(id)a4;
@end

@implementation HREMediaPlaybackActionMap

- (HREMediaPlaybackActionMap)initWithState:(int64_t)a3 volume:(id)a4 playbackArchive:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HREMediaPlaybackActionMap;
  v10 = [(HREActionMap *)&v13 initWithCondition:0 childMaps:0];
  v11 = v10;
  if (v10)
  {
    [(HREMediaPlaybackActionMap *)v10 setTargetPlaybackState:a3];
    [(HREMediaPlaybackActionMap *)v11 setTargetVolume:v8];
    [(HREMediaPlaybackActionMap *)v11 setPlaybackArchive:v9];
  }

  return v11;
}

+ (id)emptyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HREMediaPlaybackActionMap_emptyMap__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

+ (id)actionMapWithState:(int64_t)a3 volume:(id)a4 playbackArchive:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[a1 alloc] initWithState:a3 volume:v9 playbackArchive:v8];

  return v10;
}

+ (id)statelessActionMapWithVolume:(id)a3 playbackArchive:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithState:0 volume:v7 playbackArchive:v6];

  return v8;
}

- (id)mergeWithActionMaps:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 na_filter:&__block_literal_global_15];

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
      v9 = v7;
    }

    else
    {
      NSLog(&cfstr_CannotMergeMap.isa, self, v5);
      v9 = self;
    }

    v4 = v5;
  }

  else
  {
    v9 = self;
  }

  return v9;
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

- (id)flattenedMapEvaluatedForObject:(id)a3
{
  v5.receiver = self;
  v5.super_class = HREMediaPlaybackActionMap;
  v3 = [(HREActionMap *)&v5 flattenedMapEvaluatedForObject:a3];

  return v3;
}

- (void)mergeMap:(id)a3 intoMap:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = [v12 playbackArchive];

  if (v6)
  {
    v7 = [v12 playbackArchive];
    v8 = [v7 copy];
    [v5 setPlaybackArchive:v8];
  }

  if ([v12 targetPlaybackState])
  {
    [v5 setTargetPlaybackState:{objc_msgSend(v12, "targetPlaybackState")}];
  }

  v9 = [v12 targetVolume];

  if (v9)
  {
    v10 = [v12 targetVolume];
    v11 = [v10 copy];
    [v5 setTargetVolume:v11];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = HREMediaPlaybackActionMap;
  v4 = [(HREActionMap *)&v13 copyWithZone:a3];
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
  v8 = [(HREMediaPlaybackActionMap *)self targetVolume];
  v9 = [v8 copy];
  [v7 setTargetVolume:v9];

  v10 = [(HREMediaPlaybackActionMap *)self playbackArchive];
  v11 = [v10 copy];
  [v7 setPlaybackArchive:v11];

  return v5;
}

@end