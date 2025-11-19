@interface HFMediaPlaybackActionBuilder
- (BOOL)canUpdateWithActionBuilder:(id)a3;
- (BOOL)hasSameTargetAsAction:(id)a3;
- (BOOL)isMediaActionValid:(id *)a3;
- (BOOL)updateWithActionBuilder:(id)a3;
- (HFMediaPlaybackActionBuilder)initWithExistingObject:(id)a3 inHome:(id)a4;
- (NSString)localizedDescription;
- (id)commitItem;
- (id)compareToObject:(id)a3;
- (id)containedAccessoryRepresentables;
- (id)copyForCreatingNewAction;
- (id)createNewAction;
- (id)description;
- (id)mediaProfileContainersForAccessories:(id)a3 home:(id)a4;
- (id)performValidation;
- (id)validationError;
- (void)_ensureConsistency;
- (void)defaultActionIfMediaActionInvalid;
- (void)setMediaProfiles:(id)a3;
@end

@implementation HFMediaPlaybackActionBuilder

- (HFMediaPlaybackActionBuilder)initWithExistingObject:(id)a3 inHome:(id)a4
{
  v7 = a4;
  v29.receiver = self;
  v29.super_class = HFMediaPlaybackActionBuilder;
  v8 = [(HFItemBuilder *)&v29 initWithExistingObject:a3 inHome:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [(HFActionBuilder *)v8 action];
    v11 = [v10 mediaProfiles];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __62__HFMediaPlaybackActionBuilder_initWithExistingObject_inHome___block_invoke;
    v27[3] = &unk_277DF7208;
    v12 = v7;
    v28 = v12;
    v13 = [v11 na_map:v27];
    v14 = v13;
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
    v18 = [(HFActionBuilder *)v9 action];
    v9->_targetPlayState = [v18 state];

    v19 = [(HFActionBuilder *)v9 action];
    v20 = [v19 volume];
    targetVolume = v9->_targetVolume;
    v9->_targetVolume = v20;

    v22 = [(HFActionBuilder *)v9 action];
    v23 = [v22 playbackArchive];
    if (v23)
    {
      v24 = [HFPlaybackArchive alloc];
      v14 = [(HFActionBuilder *)v9 action];
      v4 = [v14 playbackArchive];
      v25 = [(HFPlaybackArchive *)v24 initWithMediaPlayerPlaybackArchive:v4];
    }

    else
    {
      v25 = 0;
    }

    objc_storeStrong(&v9->_playbackArchive, v25);
    if (v23)
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

- (BOOL)canUpdateWithActionBuilder:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)updateWithActionBuilder:(id)a3
{
  v4 = a3;
  if ([(HFMediaPlaybackActionBuilder *)self canUpdateWithActionBuilder:v4])
  {
    v5 = v4;
    v6 = [(HFMediaPlaybackActionBuilder *)self accessories];
    v7 = [v6 mutableCopy];

    v8 = [v5 accessories];
    [v7 unionSet:v8];

    v9 = [(HFMediaPlaybackActionBuilder *)self accessories];
    v10 = [v7 isEqualToSet:v9];

    if ((v10 & 1) == 0)
    {
      [(HFMediaPlaybackActionBuilder *)self setAccessories:v7];
    }

    v11 = v10 ^ 1;
    v12 = [(HFMediaPlaybackActionBuilder *)self accessories];
    v13 = [(HFItemBuilder *)self home];
    v14 = [(HFMediaPlaybackActionBuilder *)self mediaProfileContainersForAccessories:v12 home:v13];

    v15 = [(HFMediaPlaybackActionBuilder *)self mediaProfiles];
    v16 = v15;
    if (v15 == v14)
    {
    }

    else
    {
      v17 = [(HFMediaPlaybackActionBuilder *)self mediaProfiles];
      v18 = [v17 isEqualToSet:v14];

      if ((v18 & 1) == 0)
      {
        [(HFMediaPlaybackActionBuilder *)self setMediaProfiles:v14];
        v11 = 1;
      }
    }

    v19 = [(HFMediaPlaybackActionBuilder *)self targetPlayState];
    if (v19 != [v5 targetPlayState])
    {
      -[HFMediaPlaybackActionBuilder setTargetPlayState:](self, "setTargetPlayState:", [v5 targetPlayState]);
      v11 = 1;
    }

    v20 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
    v21 = [v5 playbackArchive];

    if (v20 != v21)
    {
      v22 = [v5 playbackArchive];
      [(HFMediaPlaybackActionBuilder *)self setPlaybackArchive:v22];

      v11 = 1;
    }

    v23 = [(HFMediaPlaybackActionBuilder *)self targetVolume];
    v24 = [v5 targetVolume];
    v25 = v23;
    v26 = v24;
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      if (v25)
      {
        v28 = [v25 isEqual:v26];

        if (v28)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      v25 = [v5 targetVolume];
      [(HFMediaPlaybackActionBuilder *)self setTargetVolume:v25];
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
    v4 = [(HFMediaPlaybackActionBuilder *)self accessories];
    v5 = [v4 na_map:&__block_literal_global_142_0];

    if ([v5 count])
    {
      v6 = objc_alloc(MEMORY[0x277CD1BD0]);
      v7 = [(HFMediaPlaybackActionBuilder *)self targetPlayState];
      v8 = [(HFMediaPlaybackActionBuilder *)self targetVolume];
      v9 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
      v10 = [v9 mediaPlayerPlaybackArchive];
      v3 = [v6 initWithMediaProfiles:v5 playbackState:v7 volume:v8 playbackArchive:v10];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)setMediaProfiles:(id)a3
{
  if (self->_mediaProfiles != a3)
  {
    v4 = [a3 na_flatMap:&__block_literal_global_145_0];
    [(HFMediaPlaybackActionBuilder *)self setAccessories:v4];

    v8 = [(HFMediaPlaybackActionBuilder *)self accessories];
    v5 = [(HFItemBuilder *)self home];
    v6 = [(HFMediaPlaybackActionBuilder *)self mediaProfileContainersForAccessories:v8 home:v5];
    mediaProfiles = self->_mediaProfiles;
    self->_mediaProfiles = v6;
  }
}

- (id)mediaProfileContainersForAccessories:(id)a3 home:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    NSLog(&cfstr_AccessoriesSho.isa);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HFMediaPlaybackActionBuilder_mediaProfileContainersForAccessories_home___block_invoke;
  v10[3] = &unk_277DF7278;
  v11 = v6;
  v7 = v6;
  v8 = [v5 na_map:v10];

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

- (BOOL)hasSameTargetAsAction:(id)a3
{
  v4 = a3;
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

  if (v7)
  {
    v8 = [(HFMediaPlaybackActionBuilder *)self mediaProfiles];
    v9 = [v7 mediaProfiles];
    v10 = [v8 intersectsSet:v9];
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
  v4 = [(HFItemBuilder *)self home];
  v5 = [v3 initWithHome:v4];

  [v5 setTargetPlayState:{-[HFMediaPlaybackActionBuilder targetPlayState](self, "targetPlayState")}];
  v6 = [(HFMediaPlaybackActionBuilder *)self targetVolume];
  v7 = [v6 copy];
  [v5 setTargetVolume:v7];

  v8 = [HFPlaybackArchive alloc];
  v9 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
  v10 = [v9 mediaPlayerPlaybackArchive];
  v11 = [v10 copyWithOptions:0];
  v12 = [(HFPlaybackArchive *)v8 initWithMediaPlayerPlaybackArchive:v11];
  [v5 setPlaybackArchive:v12];

  v13 = [(HFMediaPlaybackActionBuilder *)self accessories];
  v14 = [v13 copy];
  [v5 setAccessories:v14];

  v15 = [v5 accessories];
  v16 = [v5 home];
  v17 = [v5 mediaProfileContainersForAccessories:v15 home:v16];
  [v5 setMediaProfiles:v17];

  return v5;
}

- (NSString)localizedDescription
{
  if ([(HFMediaPlaybackActionBuilder *)self targetPlayState]== 1)
  {
    v3 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];

    v4 = @"HFMediaActionPlay";
    v5 = @"HFMediaActionResume";
    v6 = v3 == 0;
  }

  else
  {
    v7 = [(HFMediaPlaybackActionBuilder *)self targetPlayState];
    v4 = @"HFMediaSelectionCustomVolumeTitle";
    v5 = @"HFMediaActionPause";
    v6 = v7 == 2;
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
  v4 = [v3 lowercaseString];

  v5 = [(HFMediaPlaybackActionBuilder *)self mediaProfiles];
  v6 = [v5 count];

  if (v6 == 1)
  {
    v7 = [(HFMediaPlaybackActionBuilder *)self mediaProfiles];
    v8 = [v7 anyObject];
    v9 = [v8 hf_displayName];
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu accessories", v6];
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"<set playback on %@ to %@>", v9, v4];

  return v10;
}

- (id)containedAccessoryRepresentables
{
  v2 = [(HFMediaPlaybackActionBuilder *)self mediaProfiles];
  v3 = [v2 na_map:&__block_literal_global_171];
  v4 = [v3 allObjects];

  return v4;
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
    v3 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];

    if (v3)
    {
      v4 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
      v5 = [v4 mediaPlayerPlaybackArchive];

      if (!v5)
      {

        [(HFMediaPlaybackActionBuilder *)self setPlaybackArchive:0];
      }
    }
  }
}

- (BOOL)isMediaActionValid:(id *)a3
{
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D2C8B8] code:2 userInfo:0];
  v6 = [(HFMediaPlaybackActionBuilder *)self targetPlayState];
  switch(v6)
  {
    case 2:
      v7 = [(HFMediaPlaybackActionBuilder *)self targetVolume];
      v8 = v7 == 0;
      goto LABEL_13;
    case 1:
      v9 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
      if (v9)
      {
        v10 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
        v11 = [v10 mediaPlayerPlaybackArchive];
        v8 = v11 != 0;
      }

      else
      {
        v8 = 1;
      }

      v12 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];

      if (v12 && !v8)
      {
        [MEMORY[0x277CCA9B8] hf_errorWithCode:53 operation:@"HFOperationMediaSelection" options:0];
        v13 = v8 = 0;
        v7 = v5;
        v5 = v13;
        goto LABEL_13;
      }

      break;
    case 0:
      v7 = [(HFMediaPlaybackActionBuilder *)self targetVolume];
      v8 = v7 != 0;
LABEL_13:

      break;
    default:
      v8 = 0;
      break;
  }

  if (a3 && !v8)
  {
    v14 = v5;
    *a3 = v5;
  }

  v15 = [(HFMediaPlaybackActionBuilder *)self mediaProfiles];
  if ([v15 count])
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
    v4 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
    v5 = [v4 isRepeatEnabled];
    if (v5)
    {
      v2 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
      v6 = [v2 isRepeatSupported];
    }

    else
    {
      v6 = 0;
    }

    v7 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
    [v7 setRepeatEnabled:v6];

    if (v5)
    {
    }

    v8 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
    v9 = [v8 isShuffleEnabled];
    if (v9)
    {
      v2 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
      v10 = [v2 isShuffleSupported];
    }

    else
    {
      v10 = 0;
    }

    v11 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
    [v11 setShuffleEnabled:v10];

    if (v9)
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
  v3 = [(HFMediaPlaybackActionBuilder *)self performValidation];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HFMediaPlaybackActionBuilder_commitItem__block_invoke;
  v7[3] = &unk_277DF2CE0;
  v7[4] = self;
  v4 = [v3 flatMap:v7];
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

- (id)compareToObject:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = HFMediaPlaybackActionBuilder;
  v5 = [(HFActionBuilder *)&v25 compareToObject:v4];
  if (([v5 containsCriticalDifference] & 1) == 0)
  {
    v6 = [(HFMediaPlaybackActionBuilder *)self mediaProfiles];
    v7 = [v4 mediaProfiles];
    v8 = [v6 isEqualToSet:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [HFPropertyDifference alloc];
      v10 = [(HFMediaPlaybackActionBuilder *)self mediaProfiles];
      v11 = [v10 copy];
      v12 = [v4 mediaProfiles];
      v13 = [v12 copy];
      v14 = [(HFPropertyDifference *)v9 initWithObjectA:v11 toObjectB:v13 key:@"mediaProfiles" priority:3];
      [v5 add:v14];
    }

    v15 = [(HFMediaPlaybackActionBuilder *)self playbackArchive];
    v16 = [v4 playbackArchive];
    v17 = [HFPropertyDifference compareObjectA:v15 toObjectB:v16 key:@"playbackArchive" priority:1];
    [v5 add:v17];

    v18 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HFMediaPlaybackActionBuilder targetPlayState](self, "targetPlayState")}];
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "targetPlayState")}];
    v20 = [HFPropertyDifference compareObjectA:v18 toObjectB:v19 key:@"targetPlayState" priority:3];
    [v5 add:v20];

    v21 = [(HFMediaPlaybackActionBuilder *)self targetVolume];
    v22 = [v4 targetVolume];
    v23 = [HFPropertyDifference compareObjectA:v21 toObjectB:v22 key:@"targetVolume" priority:3];
    [v5 add:v23];
  }

  return v5;
}

@end