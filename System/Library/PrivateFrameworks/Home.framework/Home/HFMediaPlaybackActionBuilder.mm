@interface HFMediaPlaybackActionBuilder
- (BOOL)canUpdateWithActionBuilder:(id)builder;
- (BOOL)hasSameTargetAsAction:(id)action;
- (BOOL)isMediaActionValid:(id *)valid;
- (BOOL)updateWithActionBuilder:(id)builder;
- (HFMediaPlaybackActionBuilder)initWithExistingObject:(id)object inHome:(id)home;
- (NSString)localizedDescription;
- (id)commitItem;
- (id)compareToObject:(id)object;
- (id)containedAccessoryRepresentables;
- (id)copyForCreatingNewAction;
- (id)createNewAction;
- (id)description;
- (id)mediaProfileContainersForAccessories:(id)accessories home:(id)home;
- (id)performValidation;
- (id)validationError;
- (void)_ensureConsistency;
- (void)defaultActionIfMediaActionInvalid;
- (void)setMediaProfiles:(id)profiles;
@end

@implementation HFMediaPlaybackActionBuilder

- (HFMediaPlaybackActionBuilder)initWithExistingObject:(id)object inHome:(id)home
{
  homeCopy = home;
  v29.receiver = self;
  v29.super_class = HFMediaPlaybackActionBuilder;
  v8 = [(HFItemBuilder *)&v29 initWithExistingObject:object inHome:homeCopy];
  v9 = v8;
  if (v8)
  {
    action = [(HFActionBuilder *)v8 action];
    mediaProfiles = [action mediaProfiles];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __62__HFMediaPlaybackActionBuilder_initWithExistingObject_inHome___block_invoke;
    v27[3] = &unk_277DF7208;
    v12 = homeCopy;
    v28 = v12;
    v13 = [mediaProfiles na_map:v27];
    action5 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [MEMORY[0x277CBEB98] set];
    }

    v16 = v15;

    v17 = [(HFMediaPlaybackActionBuilder *)v9 mediaProfileContainersForAccessories:v16 home:v12];
    objc_storeStrong(&v9->_accessories, v16);
    objc_storeStrong(&v9->_mediaProfiles, v17);
    action2 = [(HFActionBuilder *)v9 action];
    v9->_targetPlayState = [action2 state];

    action3 = [(HFActionBuilder *)v9 action];
    volume = [action3 volume];
    targetVolume = v9->_targetVolume;
    v9->_targetVolume = volume;

    action4 = [(HFActionBuilder *)v9 action];
    playbackArchive = [action4 playbackArchive];
    if (playbackArchive)
    {
      v24 = [HFPlaybackArchive alloc];
      action5 = [(HFActionBuilder *)v9 action];
      playbackArchive2 = [action5 playbackArchive];
      v25 = [(HFPlaybackArchive *)v24 initWithMediaPlayerPlaybackArchive:playbackArchive2];
    }

    else
    {
      v25 = 0;
    }

    objc_storeStrong(&v9->_playbackArchive, v25);
    if (playbackArchive)
    {
    }
  }

  return v9;
}

id __62__HFMediaPlaybackActionBuilder_initWithExistingObject_inHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessories];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__HFMediaPlaybackActionBuilder_initWithExistingObject_inHome___block_invoke_2;
  v8[3] = &unk_277DF3888;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_firstObjectPassingTest:v8];

  return v6;
}

uint64_t __62__HFMediaPlaybackActionBuilder_initWithExistingObject_inHome___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 mediaProfile];
  v4 = [v3 uniqueIdentifier];
  v5 = [*(a1 + 32) uniqueIdentifier];
  v6 = [v4 hmf_isEqualToUUID:v5];

  return v6;
}

- (BOOL)canUpdateWithActionBuilder:(id)builder
{
  builderCopy = builder;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)updateWithActionBuilder:(id)builder
{
  builderCopy = builder;
  if ([(HFMediaPlaybackActionBuilder *)self canUpdateWithActionBuilder:builderCopy])
  {
    v5 = builderCopy;
    accessories = [(HFMediaPlaybackActionBuilder *)self accessories];
    v7 = [accessories mutableCopy];

    accessories2 = [v5 accessories];
    [v7 unionSet:accessories2];

    accessories3 = [(HFMediaPlaybackActionBuilder *)self accessories];
    v10 = [v7 isEqualToSet:accessories3];

    if ((v10 & 1) == 0)
    {
      [(HFMediaPlaybackActionBuilder *)self setAccessories:v7];
    }

    v11 = v10 ^ 1;
    accessories4 = [(HFMediaPlaybackActionBuilder *)self accessories];
    home = [(HFItemBuilder *)self home];
    v14 = [(HFMediaPlaybackActionBuilder *)self mediaProfileContainersForAccessories:accessories4 home:home];

    mediaProfiles = [(HFMediaPlaybackActionBuilder *)self mediaProfiles];
    v16 = mediaProfiles;
    if (mediaProfiles == v14)
    {
    }

    else
    {
      mediaProfiles2 = [(HFMediaPlaybackActionBuilder *)self mediaProfiles];
      v18 = [mediaProfiles2 isEqualToSet:v14];

      if ((v18 & 1) == 0)
      {
        [(HFMediaPlaybackActionBuilder *)self setMediaProfiles:v14];
        v11 = 1;
      }
    }

    targetPlayState = [(HFMediaPlaybackActionBuilder *)self targetPlayState];
    if (targetPlayState != [v5 targetPlayState])
    {
      -[HFMediaPlaybackActionBuilder setTargetPlayState:](self, "setTargetPlayState:", [v5 targetPlayState]);
      v11 = 1;
    }

    playbackArchive = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
    playbackArchive2 = [v5 playbackArchive];

    if (playbackArchive != playbackArchive2)
    {
      playbackArchive3 = [v5 playbackArchive];
      [(HFMediaPlaybackActionBuilder *)self setPlaybackArchive:playbackArchive3];

      v11 = 1;
    }

    targetVolume = [(HFMediaPlaybackActionBuilder *)self targetVolume];
    targetVolume2 = [v5 targetVolume];
    targetVolume3 = targetVolume;
    v26 = targetVolume2;
    v27 = v26;
    if (targetVolume3 == v26)
    {
    }

    else
    {
      if (targetVolume3)
      {
        v28 = [targetVolume3 isEqual:v26];

        if (v28)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      targetVolume3 = [v5 targetVolume];
      [(HFMediaPlaybackActionBuilder *)self setTargetVolume:targetVolume3];
      v11 = 1;
    }

LABEL_21:
    goto LABEL_22;
  }

  v11 = 0;
LABEL_22:

  return v11;
}

- (id)createNewAction
{
  [(HFMediaPlaybackActionBuilder *)self _ensureConsistency];
  v3 = 0;
  if ([(HFMediaPlaybackActionBuilder *)self isMediaActionValid:0])
  {
    accessories = [(HFMediaPlaybackActionBuilder *)self accessories];
    v5 = [accessories na_map:&__block_literal_global_142_0];

    if ([v5 count])
    {
      v6 = objc_alloc(MEMORY[0x277CD1BD0]);
      targetPlayState = [(HFMediaPlaybackActionBuilder *)self targetPlayState];
      targetVolume = [(HFMediaPlaybackActionBuilder *)self targetVolume];
      playbackArchive = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
      mediaPlayerPlaybackArchive = [playbackArchive mediaPlayerPlaybackArchive];
      v3 = [v6 initWithMediaProfiles:v5 playbackState:targetPlayState volume:targetVolume playbackArchive:mediaPlayerPlaybackArchive];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)setMediaProfiles:(id)profiles
{
  if (self->_mediaProfiles != profiles)
  {
    v4 = [profiles na_flatMap:&__block_literal_global_145_0];
    [(HFMediaPlaybackActionBuilder *)self setAccessories:v4];

    accessories = [(HFMediaPlaybackActionBuilder *)self accessories];
    home = [(HFItemBuilder *)self home];
    v6 = [(HFMediaPlaybackActionBuilder *)self mediaProfileContainersForAccessories:accessories home:home];
    mediaProfiles = self->_mediaProfiles;
    self->_mediaProfiles = v6;
  }
}

- (id)mediaProfileContainersForAccessories:(id)accessories home:(id)home
{
  accessoriesCopy = accessories;
  homeCopy = home;
  if (!accessoriesCopy)
  {
    NSLog(&cfstr_AccessoriesSho.isa);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HFMediaPlaybackActionBuilder_mediaProfileContainersForAccessories_home___block_invoke;
  v10[3] = &unk_277DF7278;
  v11 = homeCopy;
  v7 = homeCopy;
  v8 = [accessoriesCopy na_map:v10];

  return v8;
}

void *__74__HFMediaPlaybackActionBuilder_mediaProfileContainersForAccessories_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mediaProfile];
  v4 = [*(a1 + 32) mediaSystems];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HFMediaPlaybackActionBuilder_mediaProfileContainersForAccessories_home___block_invoke_2;
  v10[3] = &unk_277DF7250;
  v11 = v3;
  v5 = v3;
  v6 = [v4 na_firstObjectPassingTest:v10];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

uint64_t __74__HFMediaPlaybackActionBuilder_mediaProfileContainersForAccessories_home___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 accessories];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__HFMediaPlaybackActionBuilder_mediaProfileContainersForAccessories_home___block_invoke_3;
  v6[3] = &unk_277DF3888;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __74__HFMediaPlaybackActionBuilder_mediaProfileContainersForAccessories_home___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 mediaProfile];
  v4 = [v3 hf_mediaRouteIdentifier];
  v5 = [*(a1 + 32) hf_mediaRouteIdentifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (BOOL)hasSameTargetAsAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  v5 = actionCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    mediaProfiles = [(HFMediaPlaybackActionBuilder *)self mediaProfiles];
    mediaProfiles2 = [v7 mediaProfiles];
    v10 = [mediaProfiles intersectsSet:mediaProfiles2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyForCreatingNewAction
{
  v3 = objc_alloc(objc_opt_class());
  home = [(HFItemBuilder *)self home];
  v5 = [v3 initWithHome:home];

  [v5 setTargetPlayState:{-[HFMediaPlaybackActionBuilder targetPlayState](self, "targetPlayState")}];
  targetVolume = [(HFMediaPlaybackActionBuilder *)self targetVolume];
  v7 = [targetVolume copy];
  [v5 setTargetVolume:v7];

  v8 = [HFPlaybackArchive alloc];
  playbackArchive = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
  mediaPlayerPlaybackArchive = [playbackArchive mediaPlayerPlaybackArchive];
  v11 = [mediaPlayerPlaybackArchive copyWithOptions:0];
  v12 = [(HFPlaybackArchive *)v8 initWithMediaPlayerPlaybackArchive:v11];
  [v5 setPlaybackArchive:v12];

  accessories = [(HFMediaPlaybackActionBuilder *)self accessories];
  v14 = [accessories copy];
  [v5 setAccessories:v14];

  accessories2 = [v5 accessories];
  home2 = [v5 home];
  v17 = [v5 mediaProfileContainersForAccessories:accessories2 home:home2];
  [v5 setMediaProfiles:v17];

  return v5;
}

- (NSString)localizedDescription
{
  if ([(HFMediaPlaybackActionBuilder *)self targetPlayState]== 1)
  {
    playbackArchive = [(HFMediaPlaybackActionBuilder *)self playbackArchive];

    v4 = @"HFMediaActionPlay";
    v5 = @"HFMediaActionResume";
    v6 = playbackArchive == 0;
  }

  else
  {
    targetPlayState = [(HFMediaPlaybackActionBuilder *)self targetPlayState];
    v4 = @"HFMediaSelectionCustomVolumeTitle";
    v5 = @"HFMediaActionPause";
    v6 = targetPlayState == 2;
  }

  if (v6)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  v9 = _HFLocalizedStringWithDefaultValue(v8, v8, 1);

  return v9;
}

- (id)description
{
  v3 = NSStringFromHMMediaPlaybackState([(HFMediaPlaybackActionBuilder *)self targetPlayState]);
  lowercaseString = [v3 lowercaseString];

  mediaProfiles = [(HFMediaPlaybackActionBuilder *)self mediaProfiles];
  v6 = [mediaProfiles count];

  if (v6 == 1)
  {
    mediaProfiles2 = [(HFMediaPlaybackActionBuilder *)self mediaProfiles];
    anyObject = [mediaProfiles2 anyObject];
    hf_displayName = [anyObject hf_displayName];
  }

  else
  {
    hf_displayName = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu accessories", v6];
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"<set playback on %@ to %@>", hf_displayName, lowercaseString];

  return v10;
}

- (id)containedAccessoryRepresentables
{
  mediaProfiles = [(HFMediaPlaybackActionBuilder *)self mediaProfiles];
  v3 = [mediaProfiles na_map:&__block_literal_global_171];
  allObjects = [v3 allObjects];

  return allObjects;
}

void *__64__HFMediaPlaybackActionBuilder_containedAccessoryRepresentables__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_28252A588])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)defaultActionIfMediaActionInvalid
{
  if ([(HFMediaPlaybackActionBuilder *)self targetPlayState]== 1)
  {
    playbackArchive = [(HFMediaPlaybackActionBuilder *)self playbackArchive];

    if (playbackArchive)
    {
      playbackArchive2 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
      mediaPlayerPlaybackArchive = [playbackArchive2 mediaPlayerPlaybackArchive];

      if (!mediaPlayerPlaybackArchive)
      {

        [(HFMediaPlaybackActionBuilder *)self setPlaybackArchive:0];
      }
    }
  }
}

- (BOOL)isMediaActionValid:(id *)valid
{
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D2C8B8] code:2 userInfo:0];
  targetPlayState = [(HFMediaPlaybackActionBuilder *)self targetPlayState];
  switch(targetPlayState)
  {
    case 2:
      targetVolume = [(HFMediaPlaybackActionBuilder *)self targetVolume];
      v8 = targetVolume == 0;
      goto LABEL_13;
    case 1:
      playbackArchive = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
      if (playbackArchive)
      {
        playbackArchive2 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
        mediaPlayerPlaybackArchive = [playbackArchive2 mediaPlayerPlaybackArchive];
        v8 = mediaPlayerPlaybackArchive != 0;
      }

      else
      {
        v8 = 1;
      }

      playbackArchive3 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];

      if (playbackArchive3 && !v8)
      {
        [MEMORY[0x277CCA9B8] hf_errorWithCode:53 operation:@"HFOperationMediaSelection" options:0];
        v13 = v8 = 0;
        targetVolume = v5;
        v5 = v13;
        goto LABEL_13;
      }

      break;
    case 0:
      targetVolume = [(HFMediaPlaybackActionBuilder *)self targetVolume];
      v8 = targetVolume != 0;
LABEL_13:

      break;
    default:
      v8 = 0;
      break;
  }

  if (valid && !v8)
  {
    v14 = v5;
    *valid = v5;
  }

  mediaProfiles = [(HFMediaPlaybackActionBuilder *)self mediaProfiles];
  if ([mediaProfiles count])
  {
    v16 = v8;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)performValidation
{
  [(HFMediaPlaybackActionBuilder *)self _ensureConsistency];
  v7 = 0;
  v3 = [(HFMediaPlaybackActionBuilder *)self isMediaActionValid:&v7];
  v4 = v7;
  if (v3)
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithError:v4];
  }
  v5 = ;

  return v5;
}

- (id)validationError
{
  [(HFMediaPlaybackActionBuilder *)self _ensureConsistency];
  v8 = 0;
  v3 = [(HFMediaPlaybackActionBuilder *)self isMediaActionValid:&v8];
  v4 = v8;
  v5 = v4;
  v6 = 0;
  if (!v3)
  {
    v6 = v4;
  }

  return v6;
}

- (void)_ensureConsistency
{
  if ([(HFMediaPlaybackActionBuilder *)self targetPlayState]== 1)
  {
    playbackArchive = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
    isRepeatEnabled = [playbackArchive isRepeatEnabled];
    if (isRepeatEnabled)
    {
      playbackArchive2 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
      isRepeatSupported = [playbackArchive2 isRepeatSupported];
    }

    else
    {
      isRepeatSupported = 0;
    }

    playbackArchive3 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
    [playbackArchive3 setRepeatEnabled:isRepeatSupported];

    if (isRepeatEnabled)
    {
    }

    playbackArchive4 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
    isShuffleEnabled = [playbackArchive4 isShuffleEnabled];
    if (isShuffleEnabled)
    {
      playbackArchive2 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
      isShuffleSupported = [playbackArchive2 isShuffleSupported];
    }

    else
    {
      isShuffleSupported = 0;
    }

    playbackArchive5 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
    [playbackArchive5 setShuffleEnabled:isShuffleSupported];

    if (isShuffleEnabled)
    {
    }
  }

  else
  {
    [(HFMediaPlaybackActionBuilder *)self setPlaybackArchive:0];
  }

  if ([(HFMediaPlaybackActionBuilder *)self targetPlayState]== 2)
  {

    [(HFMediaPlaybackActionBuilder *)self setTargetVolume:0];
  }
}

- (id)commitItem
{
  performValidation = [(HFMediaPlaybackActionBuilder *)self performValidation];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HFMediaPlaybackActionBuilder_commitItem__block_invoke;
  v7[3] = &unk_277DF2CE0;
  v7[4] = self;
  v4 = [performValidation flatMap:v7];
  v5 = [v4 recover:&__block_literal_global_292];

  return v5;
}

id __42__HFMediaPlaybackActionBuilder_commitItem__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessories];
  v3 = [v2 na_map:&__block_literal_global_290];

  v4 = [*(a1 + 32) action];

  if (v4)
  {
    v5 = [*(a1 + 32) action];
    v6 = [v5 mutableCopy];

    [v6 setState:{objc_msgSend(*(a1 + 32), "targetPlayState")}];
    v7 = [*(a1 + 32) targetVolume];
    [v6 setVolume:v7];

    v8 = [*(a1 + 32) playbackArchive];
    v9 = [v8 mediaPlayerPlaybackArchive];
    [v6 setPlaybackArchive:v9];

    [v6 setMediaProfiles:v3];
    v10 = MEMORY[0x277D2C900];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __42__HFMediaPlaybackActionBuilder_commitItem__block_invoke_3;
    v24[3] = &unk_277DF4150;
    v24[4] = *(a1 + 32);
    v25 = v6;
    v11 = v6;
    v12 = [v10 futureWithErrorOnlyHandlerAdapterBlock:v24];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __42__HFMediaPlaybackActionBuilder_commitItem__block_invoke_4;
    v23[3] = &unk_277DF2CE0;
    v23[4] = *(a1 + 32);
    v13 = [v12 flatMap:v23];
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277CD1BD0]);
    v15 = [*(a1 + 32) targetPlayState];
    v16 = [*(a1 + 32) targetVolume];
    v17 = [*(a1 + 32) playbackArchive];
    v18 = [v17 mediaPlayerPlaybackArchive];
    v19 = [v14 initWithMediaProfiles:v3 playbackState:v15 volume:v16 playbackArchive:v18];
    [*(a1 + 32) setAction:v19];

    v20 = MEMORY[0x277D2C900];
    v21 = [*(a1 + 32) action];
    v13 = [v20 futureWithResult:v21];
  }

  return v13;
}

void __42__HFMediaPlaybackActionBuilder_commitItem__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 action];
  [v5 updateWithAction:*(a1 + 40) completionHandler:v4];
}

id __42__HFMediaPlaybackActionBuilder_commitItem__block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  v2 = [*(a1 + 32) action];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

- (id)compareToObject:(id)object
{
  objectCopy = object;
  v25.receiver = self;
  v25.super_class = HFMediaPlaybackActionBuilder;
  v5 = [(HFActionBuilder *)&v25 compareToObject:objectCopy];
  if (([v5 containsCriticalDifference] & 1) == 0)
  {
    mediaProfiles = [(HFMediaPlaybackActionBuilder *)self mediaProfiles];
    mediaProfiles2 = [objectCopy mediaProfiles];
    v8 = [mediaProfiles isEqualToSet:mediaProfiles2];

    if ((v8 & 1) == 0)
    {
      v9 = [HFPropertyDifference alloc];
      mediaProfiles3 = [(HFMediaPlaybackActionBuilder *)self mediaProfiles];
      v11 = [mediaProfiles3 copy];
      mediaProfiles4 = [objectCopy mediaProfiles];
      v13 = [mediaProfiles4 copy];
      v14 = [(HFPropertyDifference *)v9 initWithObjectA:v11 toObjectB:v13 key:@"mediaProfiles" priority:3];
      [v5 add:v14];
    }

    playbackArchive = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
    playbackArchive2 = [objectCopy playbackArchive];
    v17 = [HFPropertyDifference compareObjectA:playbackArchive toObjectB:playbackArchive2 key:@"playbackArchive" priority:1];
    [v5 add:v17];

    v18 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HFMediaPlaybackActionBuilder targetPlayState](self, "targetPlayState")}];
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(objectCopy, "targetPlayState")}];
    v20 = [HFPropertyDifference compareObjectA:v18 toObjectB:v19 key:@"targetPlayState" priority:3];
    [v5 add:v20];

    targetVolume = [(HFMediaPlaybackActionBuilder *)self targetVolume];
    targetVolume2 = [objectCopy targetVolume];
    v23 = [HFPropertyDifference compareObjectA:targetVolume toObjectB:targetVolume2 key:@"targetVolume" priority:3];
    [v5 add:v23];
  }

  return v5;
}

@end