@interface HFHomeBuilder
- (HFHomeBuilder)initWithExistingObject:(id)object inHome:(id)home;
- (id)commitItem;
- (id)createHome;
- (id)performValidation;
- (id)updateName;
- (id)updateUserNotes;
- (void)setHome:(id)home;
@end

@implementation HFHomeBuilder

- (HFHomeBuilder)initWithExistingObject:(id)object inHome:(id)home
{
  homeCopy = home;
  v17.receiver = self;
  v17.super_class = HFHomeBuilder;
  v7 = [(HFItemBuilder *)&v17 initWithExistingObject:object inHome:homeCopy];
  if (v7)
  {
    name = [homeCopy name];
    name = v7->_name;
    v7->_name = name;

    hf_notesApplicationData = [homeCopy hf_notesApplicationData];
    userNotes = v7->_userNotes;
    v7->_userNotes = hf_notesApplicationData;

    if (+[HFExecutionEnvironment isHomeApp])
    {
      v12 = +[HFWallpaperManager sharedInstance];
      wallpaperSourceRegistered = [v12 wallpaperSourceRegistered];

      if (wallpaperSourceRegistered)
      {
        v14 = [[HFWallpaperEditCollectionBuilder alloc] initWithHomeKitObject:homeCopy];
        wallpaperBuilder = v7->_wallpaperBuilder;
        v7->_wallpaperBuilder = v14;
      }
    }
  }

  return v7;
}

- (void)setHome:(id)home
{
  homeCopy = home;
  home = [(HFItemBuilder *)self home];

  if (home != homeCopy)
  {
    v12.receiver = self;
    v12.super_class = HFHomeBuilder;
    [(HFItemBuilder *)&v12 setHome:homeCopy];
    homeKitRepresentationClass = [objc_opt_class() homeKitRepresentationClass];
    v7 = homeCopy;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v7;
      if (v8)
      {
        goto LABEL_9;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v11 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", homeKitRepresentationClass, objc_opt_class()}];
    }

    v9 = 0;
LABEL_9:

    [(HFItemBuilder *)self setHomeKitRepresentation:v9];
  }
}

- (id)commitItem
{
  home = [(HFItemBuilder *)self home];
  v4 = home == 0;

  performValidation = [(HFHomeBuilder *)self performValidation];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __27__HFHomeBuilder_commitItem__block_invoke;
  v17[3] = &unk_277DFD660;
  v18 = v4;
  v17[4] = self;
  v6 = [performValidation flatMap:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __27__HFHomeBuilder_commitItem__block_invoke_2;
  v16[3] = &unk_277DF2CE0;
  v16[4] = self;
  v7 = [v6 flatMap:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __27__HFHomeBuilder_commitItem__block_invoke_3;
  v15[3] = &unk_277DF2CE0;
  v15[4] = self;
  v8 = [v7 flatMap:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __27__HFHomeBuilder_commitItem__block_invoke_4;
  v14[3] = &unk_277DF2CE0;
  v14[4] = self;
  v9 = [v8 flatMap:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __27__HFHomeBuilder_commitItem__block_invoke_5;
  v12[3] = &unk_277DFD688;
  v13 = v4;
  v12[4] = self;
  v10 = [v9 recover:v12];

  return v10;
}

id __27__HFHomeBuilder_commitItem__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    [v2 createHome];
  }

  else
  {
    [v2 updateName];
  }
  v3 = ;

  return v3;
}

id __27__HFHomeBuilder_commitItem__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) wallpaperBuilder];
  if (v2)
  {
    v3 = [*(a1 + 32) wallpaperBuilder];
    v4 = [v3 commitWallpaper];
  }

  else
  {
    v4 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v4;
}

id __27__HFHomeBuilder_commitItem__block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  v2 = [*(a1 + 32) home];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

id __27__HFHomeBuilder_commitItem__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40) != 1)
  {
    v10 = MEMORY[0x277D2C900];
    v11 = HFOperationEditHome;
    goto LABEL_6;
  }

  if ([v3 code] != 2040)
  {
    v10 = MEMORY[0x277D2C900];
    v11 = HFOperationAddHome;
LABEL_6:
    v12 = *v11;
    v5 = [*(a1 + 32) name];
    v13 = [v5 length];
    if (v13)
    {
      v6 = [*(a1 + 32) name];
    }

    else
    {
      v6 = 0;
    }

    v14 = [v4 hf_errorWithOperationType:v12 failedItemName:v6];
    v9 = [v10 futureWithError:v14];

    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = objc_opt_new();
  v6 = _HFLocalizedStringWithDefaultValue(@"HFErrorButtonTitleGoToSettings", @"HFErrorButtonTitleGoToSettings", 1);
  [v5 na_safeSetObject:v6 forKey:@"HFErrorHandlerOptionRetryButtonText"];
  [v5 na_safeSetObject:&__block_literal_global_138 forKey:@"HFErrorUserInfoRetryBlockKey"];
  v7 = MEMORY[0x277D2C900];
  v8 = [v4 hf_errorWithOperationType:@"HFOperationAddHome" options:v5];
  v9 = [v7 futureWithError:v8];

LABEL_10:
LABEL_11:

  return v9;
}

void __27__HFHomeBuilder_commitItem__block_invoke_6()
{
  v2 = +[HFOpenURLRouter sharedInstance];
  v0 = [MEMORY[0x277CBEBC0] hf_openiCloudPreferencesURL];
  v1 = [v2 openURL:v0];
}

- (id)performValidation
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D2C900];
  v4 = [(HFItemBuilder *)self lazy_verifyPropertyIsSet:@"name"];
  v11[0] = v4;
  name = [(HFHomeBuilder *)self name];
  v6 = [(HFItemBuilder *)self lazy_verifyNameIsNotEmpty:name];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v3 chainFutures:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)createHome
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v3 homeManager];

  v5 = MEMORY[0x277D2C900];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __27__HFHomeBuilder_createHome__block_invoke;
  v13[3] = &unk_277DF61F0;
  v6 = homeManager;
  v14 = v6;
  selfCopy = self;
  v7 = [v5 futureWithCompletionHandlerAdapterBlock:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __27__HFHomeBuilder_createHome__block_invoke_2;
  v11[3] = &unk_277DFD6D8;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = [v7 flatMap:v11];

  return v9;
}

void __27__HFHomeBuilder_createHome__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 name];
  [v2 addHomeWithName:v5 completionHandler:v4];
}

id __27__HFHomeBuilder_createHome__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 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:1];
  v5 = [v3 hf_setHomeHasMigratedServicesToAccessories:1];
  [*(a1 + 32) setHome:v3];
  v6 = [*(a1 + 32) wallpaperBuilder];
  [v6 setHkObject:v3];

  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __27__HFHomeBuilder_createHome__block_invoke_3;
  v14 = &unk_277DFD6B0;
  v15 = *(a1 + 40);
  v16 = v3;
  v8 = v3;
  [v7 dispatchHomeManagerObserverMessage:&v11 sender:0];

  v9 = [MEMORY[0x277D2C900] futureWithResult:{v8, v11, v12, v13, v14}];

  return v9;
}

- (id)updateName
{
  home = [(HFItemBuilder *)self home];
  name = [home name];
  name2 = [(HFHomeBuilder *)self name];
  v6 = [name isEqualToString:name2];

  if (v6)
  {
    v7 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __27__HFHomeBuilder_updateName__block_invoke;
    v12[3] = &unk_277DF2C68;
    v12[4] = self;
    v8 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v12];
    v9 = [v8 addFailureBlock:&__block_literal_global_24_6];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __27__HFHomeBuilder_updateName__block_invoke_3;
    v11[3] = &unk_277DF2CE0;
    v11[4] = self;
    v7 = [v8 flatMap:v11];
  }

  return v7;
}

void __27__HFHomeBuilder_updateName__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 home];
  v5 = [*(a1 + 32) name];
  [v6 updateName:v5 completionHandler:v4];
}

void __27__HFHomeBuilder_updateName__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFHomeBuilder.updateName"];
}

id __27__HFHomeBuilder_updateName__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__HFHomeBuilder_updateName__block_invoke_4;
  v7[3] = &unk_277DF2CB8;
  v7[4] = *(a1 + 32);
  [v4 dispatchHomeObserverMessage:v7 sender:0];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v5;
}

void __27__HFHomeBuilder_updateName__block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    [v4 homeDidUpdateName:v3];
  }
}

- (id)updateUserNotes
{
  home = [(HFItemBuilder *)self home];
  hf_notesApplicationData = [home hf_notesApplicationData];

  userNotes = [(HFHomeBuilder *)self userNotes];
  if (userNotes | hf_notesApplicationData && (v6 = userNotes, -[HFHomeBuilder userNotes](self, "userNotes"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqualToString:hf_notesApplicationData], v7, v6, !v8))
  {
    home2 = [(HFItemBuilder *)self home];
    userNotes2 = [(HFHomeBuilder *)self userNotes];
    v9 = [home2 hf_setNotesApplicationData:userNotes2];
  }

  else
  {
    v9 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
  }

  return v9;
}

@end