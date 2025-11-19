@interface HFMediaSystemBuilder
- (BOOL)shouldAllowAddingAccessory:(id)a3;
- (BOOL)stereoPairVersionMatchesForAccessory:(id)a3;
- (BOOL)swapRoles;
- (HFMediaSystemBuilder)initWithExistingObject:(id)a3 inHome:(id)a4;
- (HFRoomBuilder)room;
- (HMMediaSystemBuilder)homeKitMediaSystemBuilder;
- (NSSet)accessories;
- (NSString)description;
- (NSString)name;
- (NSString)originalName;
- (id)_arbitrateMusicAccount;
- (id)_commitChangesToMediaSystemBuilder;
- (id)_defaultName;
- (id)_firstUnpopulatedRole;
- (id)_rooms;
- (id)_setHomeTheaterSource:(id)a3 toDestination:(id)a4;
- (id)_updateAssistantAccessControl;
- (id)_updateAudioAnalysisSoundNotificationSettings;
- (id)_updatePreferredMediaUser;
- (id)_updateRoom;
- (id)_updateSiriLanguageOptionsManager;
- (id)_updateValueForContextType:(unint64_t)a3;
- (id)accessoryForRole:(id)a3;
- (id)commitItem;
- (id)removeItemFromHome;
- (id)roleForAccessory:(id)a3;
- (void)addAccessory:(id)a3;
- (void)addAccessory:(id)a3 role:(id)a4;
- (void)removeAccessory:(id)a3;
- (void)setName:(id)a3;
- (void)setRoom:(id)a3;
@end

@implementation HFMediaSystemBuilder

- (HFMediaSystemBuilder)initWithExistingObject:(id)a3 inHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = v6;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v9;
    if (v10)
    {
      goto LABEL_8;
    }

    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v12 handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];
  }

  v11 = 0;
LABEL_8:

  v17.receiver = self;
  v17.super_class = HFMediaSystemBuilder;
  v14 = [(HFItemBuilder *)&v17 initWithExistingObject:v11 inHome:v7];

  if (v14)
  {
    v15 = [HFNamingComponents namingComponentFromMediaSystem:v11];
    [(HFMediaSystemBuilder *)v14 setNamingComponent:v15];

    v14->_isCreatingMediaSystem = v11 == 0;
    v14->_showInHomeDashboard = [v11 hf_effectiveShowInHomeDashboard];
    v14->_isFavorite = [v11 hf_effectiveIsFavorite];
  }

  return v14;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [v3 appendSuper];
  v5 = [(HFMediaSystemBuilder *)self mediaSystem];
  v6 = [v5 hf_prettyDescription];
  v7 = [v3 appendObject:v6 withName:@"existingMediaSystem"];

  v8 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
  v9 = [v8 components];
  v10 = [v3 appendObject:v9 withName:@"components"];

  v11 = [MEMORY[0x277CD1C10] leftRole];
  v12 = [(HFMediaSystemBuilder *)self accessoryForRole:v11];
  v13 = [v3 appendObject:v12 withName:@"lefty" skipIfNil:1];

  v14 = [MEMORY[0x277CD1C10] rightRole];
  v15 = [(HFMediaSystemBuilder *)self accessoryForRole:v14];
  v16 = [v3 appendObject:v15 withName:@"righty" skipIfNil:1];

  v17 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
  v18 = [v17 name];
  v19 = [v3 appendObject:v18 withName:@"name"];

  v20 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
  v21 = [v20 hf_prettyDescription];
  v22 = [v3 appendObject:v21 withName:@"room"];

  v23 = [v3 build];

  return v23;
}

- (HMMediaSystemBuilder)homeKitMediaSystemBuilder
{
  homeKitMediaSystemBuilder = self->_homeKitMediaSystemBuilder;
  if (!homeKitMediaSystemBuilder)
  {
    v4 = [(HFMediaSystemBuilder *)self mediaSystem];

    v5 = objc_alloc(MEMORY[0x277CD1BF0]);
    if (v4)
    {
      v6 = [(HFMediaSystemBuilder *)self mediaSystem];
      v7 = [v5 initWithMediaSystem:v6];
    }

    else
    {
      v6 = [(HFItemBuilder *)self home];
      v7 = [v5 initWithHome:v6];
    }

    v8 = self->_homeKitMediaSystemBuilder;
    self->_homeKitMediaSystemBuilder = v7;

    homeKitMediaSystemBuilder = self->_homeKitMediaSystemBuilder;
  }

  return homeKitMediaSystemBuilder;
}

- (void)setName:(id)a3
{
  v4 = a3;
  v5 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
  [v5 setConfiguredName:v4];
}

- (NSString)name
{
  v3 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
  v4 = [v3 configuredName];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(HFMediaSystemBuilder *)self namingComponent];
    v6 = [v7 name];
  }

  return v6;
}

- (void)addAccessory:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(HFMediaSystemBuilder *)self shouldAllowAddingAccessory:v5])
  {
    v6 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 hf_prettyDescription];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Request to add an accessory that is not supported in this media system pair. We'll allow this to proceed (because there are no API restriction of what services can go into a pair; we just want to enforce restrictions in our UI). Accessory: %@", &v10, 0xCu);
    }
  }

  v8 = [(HFMediaSystemBuilder *)self _firstUnpopulatedRole];
  [(HFMediaSystemBuilder *)self addAccessory:v5 role:v8];

  if (!self->_firstSetupSourceAccessory && [(HFMediaSystemBuilder *)self isCreatingMediaSystem])
  {
    objc_storeStrong(&self->_firstSetupSourceAccessory, a3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addAccessory:(id)a3 role:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"HFMediaSystemBuilder.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"accessory"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v33 = [MEMORY[0x277CCA890] currentHandler];
  [v33 handleFailureInMethod:a2 object:self file:@"HFMediaSystemBuilder.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"role"}];

LABEL_3:
  if (![(HFMediaSystemBuilder *)self shouldAllowAddingAccessory:v7])
  {
    v10 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 hf_prettyDescription];
      *buf = 138412290;
      v35 = v11;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Request to add an accessory that is not supported in this media system pair. We'll allow this to proceed (because there are no API restriction of what services can go into a pair; we just want to enforce restrictions in our UI). Accessory: %@", buf, 0xCu);
    }
  }

  v12 = [(HFMediaSystemBuilder *)self roleForAccessory:v7];
  v13 = [v12 isEqual:v9];

  if ((v13 & 1) == 0)
  {
    [(HFMediaSystemBuilder *)self removeAccessory:v7];
    v14 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
    v15 = [v14 components];
    v16 = [v15 mutableCopy];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = objc_opt_new();
    }

    v19 = v18;

    v20 = objc_alloc(MEMORY[0x277CD1C00]);
    v21 = [v7 mediaProfile];
    v22 = [v20 initWithMediaProfile:v21 role:v9];

    [v19 addObject:v22];
    v23 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
    [v23 setComponents:v19];

    v24 = [(HFMediaSystemBuilder *)self room];
    v25 = [v24 room];

    if (!v25)
    {
      v26 = [HFRoomBuilder alloc];
      v27 = [v7 room];
      v28 = [v7 home];
      v29 = [(HFRoomBuilder *)v26 initWithExistingObject:v27 inHome:v28];
      [(HFMediaSystemBuilder *)self setRoom:v29];
    }

    v30 = [(HFMediaSystemBuilder *)self mediaSystem];
    if (v30)
    {
    }

    else if ([v7 hf_showInHomeDashboard])
    {
      -[HFMediaSystemBuilder setShowInHomeDashboard:](self, "setShowInHomeDashboard:", [v7 hf_showInHomeDashboard]);
      -[HFMediaSystemBuilder setIsFavorite:](self, "setIsFavorite:", [v7 hf_isFavorite]);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)removeAccessory:(id)a3
{
  v4 = a3;
  v5 = [(HFMediaSystemBuilder *)self accessories];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
    v8 = [v7 components];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __40__HFMediaSystemBuilder_removeAccessory___block_invoke;
    v11[3] = &unk_277DF7F50;
    v12 = v4;
    v9 = [v8 na_filter:v11];
    v10 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
    [v10 setComponents:v9];
  }
}

uint64_t __40__HFMediaSystemBuilder_removeAccessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mediaProfile];
  v4 = [v3 accessory];
  LODWORD(a1) = [v4 isEqual:*(a1 + 32)];

  return a1 ^ 1;
}

- (id)accessoryForRole:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
  v6 = [v5 components];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 role];
        if ([v11 isEqual:v4])
        {
          v12 = [v10 mediaProfile];
          v7 = [v12 accessory];

          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)roleForAccessory:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
  v6 = [v5 components];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 mediaProfile];
        v12 = [v11 accessory];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          v7 = [v10 role];
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSSet)accessories
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
  v4 = [v3 components];
  v5 = [v4 na_map:&__block_literal_global_101];
  v6 = [v2 setWithArray:v5];

  return v6;
}

id __35__HFMediaSystemBuilder_accessories__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mediaProfile];
  v3 = [v2 accessory];

  return v3;
}

- (id)removeItemFromHome
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [(HFMediaSystemBuilder *)self mediaSystem];
  v3 = [v2 home];
  v4 = HFLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v2;
    v23 = 2112;
    v24 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Removing mediasystem '%@' from home '%@'", buf, 0x16u);
  }

  if (v2)
  {
    v5 = MEMORY[0x277D2C900];
    if (v3)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __42__HFMediaSystemBuilder_removeItemFromHome__block_invoke;
      v19[3] = &unk_277DF2C68;
      v6 = v2;
      v20 = v6;
      v7 = [v5 futureWithErrorOnlyHandlerAdapterBlock:v19];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __42__HFMediaSystemBuilder_removeItemFromHome__block_invoke_2;
      v16[3] = &unk_277DFA5C0;
      v17 = v3;
      v8 = v6;
      v18 = v8;
      v9 = [v7 flatMap:v16];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __42__HFMediaSystemBuilder_removeItemFromHome__block_invoke_4;
      v14[3] = &unk_277DF5038;
      v15 = v8;
      v10 = [v9 recover:v14];
    }

    else
    {
      v11 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30 descriptionFormat:@"Home not found for media system: %@", v2];
      v10 = [v5 futureWithError:v11];
    }
  }

  else
  {
    v10 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

void __42__HFMediaSystemBuilder_removeItemFromHome__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 home];
  [v5 removeMediaSystem:*(a1 + 32) completionHandler:v4];
}

id __42__HFMediaSystemBuilder_removeItemFromHome__block_invoke_2(uint64_t a1)
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __42__HFMediaSystemBuilder_removeItemFromHome__block_invoke_3;
  v8 = &unk_277DF3810;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  [v2 dispatchHomeObserverMessage:&v5 sender:0];

  v3 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v3;
}

void __42__HFMediaSystemBuilder_removeItemFromHome__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:*(a1 + 32) didRemoveMediaSystem:*(a1 + 40)];
  }
}

id __42__HFMediaSystemBuilder_removeItemFromHome__block_invoke_4(uint64_t a1, void *a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 name];
  v5 = v4;
  v6 = &stru_2824B1A78;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v13[0] = @"HFErrorHandlerOptionFailedItemName";
  v13[1] = @"HFErrorUserInfoOperationKey";
  v14[0] = v7;
  v14[1] = @"HFOperationRemoveMediaSystem";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v9 = [v3 hf_errorWithAddedUserInfo:v8];

  v10 = [MEMORY[0x277D2C900] futureWithError:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)shouldAllowAddingAccessory:(id)a3
{
  v4 = a3;
  v5 = [v4 hf_isHomePod];
  v6 = [(HFItemBuilder *)self home];
  v7 = [v6 hf_mediaSystemForAccessory:v4];

  return (v7 == 0) & v5;
}

- (BOOL)stereoPairVersionMatchesForAccessory:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![v5 hf_isHomePod])
  {
    goto LABEL_22;
  }

  v6 = [v5 supportedStereoPairVersions];
  if (!v6)
  {
    v18 = HFLogForCategory(0);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_21:

LABEL_22:
      v17 = 0;
      goto LABEL_23;
    }

    v19 = NSStringFromSelector(a2);
    *buf = 138412802;
    v29 = self;
    v30 = 2112;
    v31 = v19;
    v32 = 2112;
    v33 = v5;
    _os_log_error_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_ERROR, "%@:%@ Found no stereo pairing versions in accessory: %@", buf, 0x20u);
LABEL_25:

    goto LABEL_21;
  }

  v7 = v6;
  v8 = [(HFMediaSystemBuilder *)self accessories];
  if ([v8 count])
  {
    v9 = 0;
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [(HFMediaSystemBuilder *)self accessories];
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v23 + 1) + 8 * i) supportedStereoPairVersions];
        if (v9)
        {
          v16 = v9;
        }

        else
        {
          v16 = -1;
        }

        v9 = v15 & v16;
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  if (!v9)
  {
    v18 = HFLogForCategory(0);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v19 = NSStringFromSelector(a2);
    v22 = [(HFMediaSystemBuilder *)self accessories];
    *buf = 138412802;
    v29 = self;
    v30 = 2112;
    v31 = v19;
    v32 = 2112;
    v33 = v22;
    _os_log_error_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_ERROR, "%@:%@ Found no stereo pairing versions in accessories: %@", buf, 0x20u);

    goto LABEL_25;
  }

  v17 = (v9 & v7) != 0;
LABEL_23:

  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)swapRoles
{
  v3 = [MEMORY[0x277CD1C10] leftRole];
  v4 = [(HFMediaSystemBuilder *)self accessoryForRole:v3];

  v5 = [MEMORY[0x277CD1C10] rightRole];
  v6 = [(HFMediaSystemBuilder *)self accessoryForRole:v5];

  if (v4)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (!v7)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __33__HFMediaSystemBuilder_swapRoles__block_invoke;
    v15 = &unk_277DFAB18;
    v16 = v6;
    v17 = v4;
    v9 = __33__HFMediaSystemBuilder_swapRoles__block_invoke(&v12);
    v10 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder:v12];
    [v10 setComponents:v9];
  }

  return v8;
}

id __33__HFMediaSystemBuilder_swapRoles__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = objc_alloc(MEMORY[0x277CD1C00]);
  v4 = [*(a1 + 32) mediaProfile];
  v5 = [MEMORY[0x277CD1C10] leftRole];
  v6 = [v3 initWithMediaProfile:v4 role:v5];
  [v2 addObject:v6];

  v7 = objc_alloc(MEMORY[0x277CD1C00]);
  v8 = [*(a1 + 40) mediaProfile];
  v9 = [MEMORY[0x277CD1C10] rightRole];
  v10 = [v7 initWithMediaProfile:v8 role:v9];
  [v2 addObject:v10];

  return v2;
}

- (id)commitItem
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = [(HFItemBuilder *)self home];
  v5 = [v4 hf_currentUserIsAdministrator];

  if (v5)
  {
    v6 = [(HFMediaSystemBuilder *)self mediaSystem];
    v7 = HFOperationEditMediaSystem;
    if (!v6)
    {
      v7 = HFOperationAddMediaSystem;
    }

    v8 = *v7;

    v23 = [(HFMediaSystemBuilder *)self _updateRoom];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __34__HFMediaSystemBuilder_commitItem__block_invoke;
    v34[3] = &unk_277DF2CE0;
    v34[4] = self;
    v22 = [v23 flatMap:v34];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __34__HFMediaSystemBuilder_commitItem__block_invoke_2;
    v33[3] = &unk_277DF4748;
    v33[4] = self;
    v33[5] = a2;
    v9 = [v22 flatMap:v33];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __34__HFMediaSystemBuilder_commitItem__block_invoke_58;
    v32[3] = &unk_277DF4748;
    v32[4] = self;
    v32[5] = a2;
    v10 = [v9 flatMap:v32];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __34__HFMediaSystemBuilder_commitItem__block_invoke_60;
    v31[3] = &unk_277DF4748;
    v31[4] = self;
    v31[5] = a2;
    v11 = [v10 flatMap:v31];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __34__HFMediaSystemBuilder_commitItem__block_invoke_61;
    v30[3] = &unk_277DF4748;
    v30[4] = self;
    v30[5] = a2;
    v12 = [v11 flatMap:v30];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __34__HFMediaSystemBuilder_commitItem__block_invoke_62;
    v29[3] = &unk_277DF4748;
    v29[4] = self;
    v29[5] = a2;
    v13 = [v12 flatMap:v29];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __34__HFMediaSystemBuilder_commitItem__block_invoke_67;
    v28[3] = &unk_277DF4748;
    v28[4] = self;
    v28[5] = a2;
    v14 = [v13 flatMap:v28];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __34__HFMediaSystemBuilder_commitItem__block_invoke_68;
    v27[3] = &unk_277DF4748;
    v27[4] = self;
    v27[5] = a2;
    v15 = [v14 flatMap:v27];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __34__HFMediaSystemBuilder_commitItem__block_invoke_69;
    v24[3] = &unk_277DFAB40;
    v25 = v8;
    v26 = a2;
    v24[4] = self;
    v16 = v8;
    v17 = [v15 recover:v24];
  }

  else
  {
    v18 = HFLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      *buf = 138412546;
      v36 = self;
      v37 = 2112;
      v38 = v21;
      _os_log_error_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_ERROR, "%@:%@ : Can't commit, user is NOT admin", buf, 0x16u);
    }

    v17 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

id __34__HFMediaSystemBuilder_commitItem__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_debug_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEBUG, "%@:%@ : account arbitrator future succeeded... on to next", &v8, 0x16u);
  }

  v3 = [*(a1 + 32) _commitChangesToMediaSystemBuilder];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

id __34__HFMediaSystemBuilder_commitItem__block_invoke_58(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = NSStringFromSelector(*(a1 + 40));
    *buf = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_debug_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEBUG, "%@:%@ : commit changes future succeeded... on to next", buf, 0x16u);
  }

  v3 = [*(a1 + 32) _updateValueForContextType:2];
  v4 = [*(a1 + 32) _updateValueForContextType:{3, v3}];
  v11[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  v6 = [MEMORY[0x277D2C900] combineAllFutures:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id __34__HFMediaSystemBuilder_commitItem__block_invoke_60(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_debug_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEBUG, "%@:%@ : update favorite future succeeded... on to next", &v8, 0x16u);
  }

  v3 = [*(a1 + 32) _updateAssistantAccessControl];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

id __34__HFMediaSystemBuilder_commitItem__block_invoke_61(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_debug_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEBUG, "%@:%@ : update assistant access control succeeded... on to next", &v8, 0x16u);
  }

  v3 = [*(a1 + 32) _updatePreferredMediaUser];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

id __34__HFMediaSystemBuilder_commitItem__block_invoke_62(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessories];
  v3 = [v2 na_all:&__block_literal_global_66_1];

  v4 = HFLogForCategory(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = NSStringFromSelector(*(a1 + 40));
      v13 = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ : update audio analysis notification settings... on to next", &v13, 0x16u);
    }

    v8 = [*(a1 + 32) _updateAudioAnalysisSoundNotificationSettings];
  }

  else
  {
    if (v5)
    {
      v9 = *(a1 + 32);
      v10 = NSStringFromSelector(*(a1 + 40));
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ : audio analysis not supported. Skipping step... on to next", &v13, 0x16u);
    }

    v8 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

id __34__HFMediaSystemBuilder_commitItem__block_invoke_67(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_debug_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEBUG, "%@:%@ : update preferred media user succeeded... on to next", &v8, 0x16u);
  }

  v3 = [*(a1 + 32) _updateSiriLanguageOptionsManager];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

id __34__HFMediaSystemBuilder_commitItem__block_invoke_68(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = NSStringFromSelector(*(a1 + 40));
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_debug_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEBUG, "%@:%@ : update siri language options manager succeeded... on to next", &v10, 0x16u);
  }

  v3 = MEMORY[0x277D2C900];
  v4 = [*(a1 + 32) mediaSystem];
  v5 = [v3 futureWithResult:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id __34__HFMediaSystemBuilder_commitItem__block_invoke_69(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    v13 = NSStringFromSelector(*(a1 + 48));
    v14 = 138412802;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    v18 = 2112;
    v19 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "%@:%@ : One of the commit futures failed with error %@", &v14, 0x20u);
  }

  v5 = MEMORY[0x277D2C900];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) name];
  v8 = [v3 hf_errorWithOperationType:v6 failedItemName:v7];
  v9 = [v5 futureWithError:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_commitChangesToMediaSystemBuilder
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = [(HFMediaSystemBuilder *)self mediaSystem];
  v5 = v4 == 0;

  if (v4)
  {
    v6 = [(HFMediaSystemBuilder *)self mediaSystem];
    v7 = [v6 components];
    v8 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
    v9 = [v8 components];
    v10 = [v7 isEqual:v9] ^ 1;

    v11 = [(HFMediaSystemBuilder *)self mediaSystem];
    v12 = [v11 configuredName];
    v13 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
    v14 = [v13 configuredName];
    v15 = v12;
    v16 = v14;
    if (v15 == v16)
    {
      v17 = 0;
    }

    else if (v15)
    {
      v17 = [v15 isEqual:v16] ^ 1;
    }

    else
    {
      v17 = 1;
    }

    v18 = v17 | v10;
  }

  else
  {
    v17 = 0;
    v10 = 0;
    v18 = 1;
  }

  v19 = HFLogForCategory(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v4 == 0;
    v21 = NSStringFromSelector(a2);
    *buf = 138413314;
    v35 = self;
    v36 = 2112;
    v37 = v21;
    v38 = 1024;
    v39 = v20;
    v40 = 1024;
    v41 = v10;
    v42 = 1024;
    v43 = v17;
    _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "%@:%@ : Creating New Media System: %{BOOL}d / Existing Media System: updating components %{BOOL}d/ updating name %{BOOL}d", buf, 0x28u);
  }

  if (v18)
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke;
    v33[3] = &unk_277DF29A0;
    v33[4] = self;
    v22 = [MEMORY[0x277D2C900] futureWithBlock:v33];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_3;
    v31[3] = &unk_277DFAB90;
    v31[4] = self;
    v31[5] = a2;
    v32 = v5;
    v23 = [v22 addFailureBlock:v31];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_80;
    v27[3] = &unk_277DFABE0;
    v27[4] = self;
    v27[5] = a2;
    v28 = v10;
    v29 = v17;
    v30 = v5;
    v24 = [v23 addSuccessBlock:v27];
  }

  else
  {
    v24 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

void __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) homeKitMediaSystemBuilder];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_2;
  v7[3] = &unk_277DFAB68;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 commitWithCompletionHandler:v7];
}

void __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (a2)
  {
    [*(a1 + 32) finishWithError:a2];
  }

  else
  {
    [*(a1 + 40) setMediaSystem:v5];
    v6 = [objc_alloc(MEMORY[0x277CD1BF0]) initWithMediaSystem:v7];
    [*(a1 + 40) setHomeKitMediaSystemBuilder:v6];

    [*(a1 + 32) finishWithResult:v7];
  }
}

void __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 40));
    v11 = 138412802;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ : Commit Future FAILED with error %@", &v11, 0x20u);
  }

  v7 = +[HFErrorHandler sharedHandler];
  v8 = v7;
  if (*(a1 + 48))
  {
    v9 = @"HFMediaSystemBuilder.createMediaSystem";
  }

  else
  {
    v9 = @"HFMediaSystemBuilder.updateMediaSystem";
  }

  [v7 logError:v3 operationDescription:v9];

  v10 = *MEMORY[0x277D85DE8];
}

void __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_80(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = NSStringFromSelector(*(a1 + 40));
    *buf = 138412802;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ : Commit Future SUCCEED: %@", buf, 0x20u);
  }

  if (*(a1 + 48) == 1)
  {
    v10 = +[HFHomeKitDispatcher sharedDispatcher];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_81;
    v16[3] = &unk_277DFABB8;
    v16[4] = *(a1 + 32);
    [v10 dispatchMediaObjectObserverMessage:v16 sender:0];
  }

  if (*(a1 + 49) == 1)
  {
    v11 = +[HFHomeKitDispatcher sharedDispatcher];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_2_85;
    v15[3] = &unk_277DFABB8;
    v15[4] = *(a1 + 32);
    [v11 dispatchMediaObjectObserverMessage:v15 sender:0];
  }

  if (*(a1 + 50) == 1)
  {
    v12 = +[HFHomeKitDispatcher sharedDispatcher];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_3_88;
    v14[3] = &unk_277DF2CB8;
    v14[4] = *(a1 + 32);
    [v12 dispatchHomeObserverMessage:v14 sender:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_81(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) mediaSystem];
    v4 = [*(a1 + 32) mediaSystem];
    v5 = [v4 components];
    [v6 mediaSystem:v3 didUpdateComponents:v5];
  }
}

void __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_2_85(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) mediaSystem];
    v4 = [*(a1 + 32) mediaSystem];
    v5 = [v4 configuredName];
    [v6 mediaSystem:v3 didUpdateName:v5];
  }
}

void __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_3_88(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    v4 = [*(a1 + 32) mediaSystem];
    [v5 home:v3 didAddMediaSystem:v4];
  }
}

- (id)_arbitrateMusicAccount
{
  v2 = [(HFMediaSystemBuilder *)self accountArbitrator];
  v3 = v2;
  if (v2)
  {
    [v2 pendingArbitrationExecutionFuture];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }
  v4 = ;

  return v4;
}

- (id)_setHomeTheaterSource:(id)a3 toDestination:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 hf_backingAccessory];
  v7 = [v6 audioDestinationController];

  v8 = HFLogForCategory(0x29uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v25 = "[HFMediaSystemBuilder _setHomeTheaterSource:toDestination:]";
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "(%s) setting Apple TV (%@) Home Theater destination to %@", buf, 0x20u);
  }

  v9 = MEMORY[0x277D2C900];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__HFMediaSystemBuilder__setHomeTheaterSource_toDestination___block_invoke;
  v21[3] = &unk_277DF4150;
  v10 = v7;
  v22 = v10;
  v11 = v5;
  v23 = v11;
  v12 = [v9 futureWithErrorOnlyHandlerAdapterBlock:v21];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__HFMediaSystemBuilder__setHomeTheaterSource_toDestination___block_invoke_2;
  v18[3] = &unk_277DF50B0;
  v19 = v10;
  v20 = v11;
  v13 = v11;
  v14 = v10;
  v15 = [v12 addCompletionBlock:v18];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __60__HFMediaSystemBuilder__setHomeTheaterSource_toDestination___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x29uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = 136315906;
    v10 = "[HFMediaSystemBuilder _setHomeTheaterSource:toDestination:]_block_invoke_2";
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "(%s) After setting Apple TV (%@) Home Theater destination, it is %@ (w/ error %@)", &v9, 0x2Au);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_updateValueForContextType:(unint64_t)a3
{
  v5 = 0;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        goto LABEL_10;
      }

      v6 = [(HFMediaSystemBuilder *)self showInHomeDashboard];
      goto LABEL_9;
    }

LABEL_8:
    v6 = [(HFMediaSystemBuilder *)self isFavorite];
LABEL_9:
    v5 = v6;
    goto LABEL_10;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  if (a3 == 1)
  {
    NSLog(&cfstr_IncludeInStatu_0.isa, a2);
LABEL_13:
    v10 = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_15;
  }

LABEL_10:
  v7 = [(HFMediaSystemBuilder *)self mediaSystem];
  if (v5 == [v7 hf_isOnForContextType:a3])
  {
    v8 = [(HFMediaSystemBuilder *)self mediaSystem];
    v9 = [v8 hf_hasSetForContextType:a3];

    if (v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v11 = [(HFMediaSystemBuilder *)self mediaSystem];
  v12 = [v11 hf_updateValue:v5 forContextType:a3];

  v13 = [v12 addFailureBlock:&__block_literal_global_97];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__HFMediaSystemBuilder__updateValueForContextType___block_invoke_2;
  v15[3] = &unk_277DF2CE0;
  v15[4] = self;
  v10 = [v12 flatMap:v15];

LABEL_15:

  return v10;
}

void __51__HFMediaSystemBuilder__updateValueForContextType___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFMediaSystemBuilder.updateApplicationDataForContextType"];
}

id __51__HFMediaSystemBuilder__updateValueForContextType___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [*(a1 + 32) accessories];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = +[HFHomeKitDispatcher sharedDispatcher];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __51__HFMediaSystemBuilder__updateValueForContextType___block_invoke_3;
        v14[3] = &unk_277DF27B8;
        v14[4] = v8;
        [v9 dispatchAccessoryObserverMessage:v14 sender:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v10 = [MEMORY[0x277D2C900] futureWithResult:v13];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __51__HFMediaSystemBuilder__updateValueForContextType___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 accessoryDidUpdateApplicationData:*(a1 + 32)];
  }
}

- (id)_updateRoom
{
  v25 = *MEMORY[0x277D85DE8];
  if (![(HFMediaSystemBuilder *)self hasSetRoom])
  {
    v3 = [HFRoomBuilder alloc];
    v4 = [(HFMediaSystemBuilder *)self mediaSystem];
    v5 = [v4 hf_parentRoom];
    v6 = [(HFMediaSystemBuilder *)self mediaSystem];
    v7 = [v6 hf_home];
    v8 = [(HFRoomBuilder *)v3 initWithExistingObject:v5 inHome:v7];
    [(HFMediaSystemBuilder *)self setRoomBuilder:v8];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(HFMediaSystemBuilder *)self accessories];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [(HFMediaSystemBuilder *)self room];
        [v15 addAccessory:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v16 = [(HFMediaSystemBuilder *)self room];
  v17 = [v16 commitItem];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_updateAssistantAccessControl
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [(HFMediaSystemBuilder *)self isCreatingMediaSystem];
  v4 = [MEMORY[0x277D2C900] futureWithNoResult];
  if (v3)
  {
    v5 = [(HFItemBuilder *)self home];
    v6 = [v5 currentUser];
    v7 = [(HFItemBuilder *)self home];
    v8 = [v6 assistantAccessControlForHome:v7];
    v9 = [v8 mutableCopy];

    v10 = [v9 accessories];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [v9 accessories];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __53__HFMediaSystemBuilder__updateAssistantAccessControl__block_invoke;
      v33[3] = &unk_277DF3888;
      v33[4] = self;
      v13 = [v12 na_filter:v33];

      v14 = [v9 accessories];
      v15 = [v14 count];
      v16 = [v13 count];

      v17 = [(HFMediaSystemBuilder *)self accessories];
      v18 = [v17 count];

      if (v15 == v16 || v15 - v16 != v18)
      {
        v19 = HFLogForCategory(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [(HFMediaSystemBuilder *)self mediaSystem];
          *buf = 138412290;
          v35 = v20;
          _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "Mismatch between Personal Requests options for the media system %@", buf, 0xCu);
        }

        [v9 setAccessories:v13];
        v21 = MEMORY[0x277D2C900];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __53__HFMediaSystemBuilder__updateAssistantAccessControl__block_invoke_104;
        v30[3] = &unk_277DF4150;
        v22 = v9;
        v31 = v22;
        v32 = self;
        v23 = [v21 futureWithErrorOnlyHandlerAdapterBlock:v30];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __53__HFMediaSystemBuilder__updateAssistantAccessControl__block_invoke_105;
        v28[3] = &unk_277DF7060;
        v28[4] = self;
        v29 = v22;
        v24 = [v23 addSuccessBlock:v28];
        v25 = [v24 addFailureBlock:&__block_literal_global_110_0];

        v4 = v25;
      }

      v4 = v4;
    }

    else
    {
      v4 = v4;
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __53__HFMediaSystemBuilder__updateAssistantAccessControl__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 accessories];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1u;
}

void __53__HFMediaSystemBuilder__updateAssistantAccessControl__block_invoke_104(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) mediaSystem];
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Updating Personal Requests %@ for media system %@", &v12, 0x16u);
  }

  v7 = [*(a1 + 40) home];
  v8 = [v7 currentUser];
  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) home];
  [v8 updateAssistantAccessControl:v9 forHome:v10 completionHandler:v3];

  v11 = *MEMORY[0x277D85DE8];
}

void __53__HFMediaSystemBuilder__updateAssistantAccessControl__block_invoke_105(uint64_t a1)
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__HFMediaSystemBuilder__updateAssistantAccessControl__block_invoke_2;
  v4[3] = &unk_277DF80C8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 dispatchUserObserverMessage:v4 sender:0];
}

void __53__HFMediaSystemBuilder__updateAssistantAccessControl__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    v4 = [v3 currentUser];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) home];
    [v7 user:v4 didUpdateAssistantAccessControl:v5 forHome:v6];
  }
}

void __53__HFMediaSystemBuilder__updateAssistantAccessControl__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFMediaSystemBuilder.updateAssistantAccessControl"];
}

- (id)_updateSiriLanguageOptionsManager
{
  if ([(HFMediaSystemBuilder *)self isCreatingMediaSystem])
  {
    v3 = [(HFMediaSystemBuilder *)self mediaSystem];
    v4 = [v3 hf_siriLanguageOptionsManager];
  }

  v5 = MEMORY[0x277D2C900];

  return [v5 futureWithNoResult];
}

- (id)_updatePreferredMediaUser
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(HFMediaSystemBuilder *)self isCreatingMediaSystem])
  {
    v3 = objc_opt_new();
    v4 = [(HFMediaSystemBuilder *)self preferredMediaUser];
    v5 = v4 != 0;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [(HFMediaSystemBuilder *)self accessories];
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if ([v11 supportsPreferredMediaUser])
          {
            v16[0] = MEMORY[0x277D85DD0];
            v16[1] = 3221225472;
            v16[2] = __49__HFMediaSystemBuilder__updatePreferredMediaUser__block_invoke;
            v16[3] = &unk_277DFAC08;
            v16[5] = self;
            v16[6] = v5;
            v16[4] = v11;
            v12 = [MEMORY[0x277D2C900] futureWithBlock:v16];
            [v3 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v13 = [MEMORY[0x277D2C900] combineAllFutures:v3];
  }

  else
  {
    v13 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __49__HFMediaSystemBuilder__updatePreferredMediaUser__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) preferredMediaUser];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__HFMediaSystemBuilder__updatePreferredMediaUser__block_invoke_2;
  v8[3] = &unk_277DF2748;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v7 = v3;
  [v5 updatePreferredMediaUserSelectionType:v4 user:v6 completionHandler:v8];
}

void __49__HFMediaSystemBuilder__updatePreferredMediaUser__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x39uLL);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Failed to update primary user for accessory %@ with error %@", &v9, 0x16u);
    }

    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated primary user setting for accessory %@", &v9, 0xCu);
    }

    [*(a1 + 40) finishWithNoResult];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_updateAudioAnalysisSoundNotificationSettings
{
  v37 = *MEMORY[0x277D85DE8];
  if (![(HFMediaSystemBuilder *)self isCreatingMediaSystem])
  {
    v9 = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_29;
  }

  v3 = [MEMORY[0x277CD1C10] leftRole];
  v4 = [(HFMediaSystemBuilder *)self accessoryForRole:v3];

  v5 = [MEMORY[0x277CD1C10] rightRole];
  v6 = [(HFMediaSystemBuilder *)self accessoryForRole:v5];

  if (v4)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = HFLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v34[0]) = 0;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Unable to find accessories in media system", v34, 2u);
    }

    v9 = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_28;
  }

  v10 = v4;
  if ([v10 conformsToProtocol:&unk_282560CB0])
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = v6;
  if ([v14 conformsToProtocol:&unk_282560CB0])
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = [v13 hf_userNotificationSettings];
  v18 = [v17 mutableCopy];

  v19 = [v16 hf_userNotificationSettings];
  v20 = [v19 mutableCopy];

  v21 = [v18 areNotificationsEnabled];
  v22 = [v20 areNotificationsEnabled];
  v23 = HFLogForCategory(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v34[0] = 67109376;
    v34[1] = v21;
    v35 = 1024;
    v36 = v22;
    _os_log_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_DEFAULT, "Is left notification settings enabled? %{BOOL}d Is right notification settings enabled? %{BOOL}d", v34, 0xEu);
  }

  if (v21)
  {
    v24 = [v18 notificationCondition];
    v25 = [HFConditionCollection conditionCollectionForPredicate:v24];

    v26 = [v25 predicate];
    [v20 setNotificationCondition:v26];

    [v20 setNotificationsEnabled:1];
    v27 = v16;
    v28 = v20;
  }

  else
  {
    if (!v22)
    {
      v31 = HFLogForCategory(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34[0]) = 0;
        _os_log_impl(&dword_20D9BF000, v31, OS_LOG_TYPE_DEFAULT, "Neither accessory has notification settings enabled. No action needed.", v34, 2u);
      }

      v9 = [MEMORY[0x277D2C900] futureWithNoResult];
      goto LABEL_27;
    }

    v29 = [v20 notificationCondition];
    v25 = [HFConditionCollection conditionCollectionForPredicate:v29];

    v30 = [v25 predicate];
    [v18 setNotificationCondition:v30];

    [v18 setNotificationsEnabled:1];
    v27 = v13;
    v28 = v18;
  }

  v9 = [v27 hf_updateUserNotificationSettings:v28];

LABEL_27:
LABEL_28:

LABEL_29:
  v32 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_rooms
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA940] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(HFMediaSystemBuilder *)self accessories];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) room];
        [v3 na_safeAddObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSString)originalName
{
  v3 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
  v4 = [v3 configuredName];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(HFMediaSystemBuilder *)self _defaultName];
  }

  v7 = v6;

  return v7;
}

- (id)_defaultName
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(HFMediaSystemBuilder *)self accessories];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 hf_isHomePod])
        {
          v10 = [HFNamingComponents namingComponentFromAccessory:v8];
          v9 = [v10 defaultName];

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v3 = [(HFMediaSystemBuilder *)self mediaSystem];
  v9 = [v3 name];
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HFRoomBuilder)room
{
  roomBuilder = self->_roomBuilder;
  if (!roomBuilder)
  {
    v4 = [HFRoomBuilder alloc];
    v5 = [(HFItemBuilder *)self home];
    v6 = [(HFItemBuilder *)v4 initWithHome:v5];
    v7 = self->_roomBuilder;
    self->_roomBuilder = v6;

    roomBuilder = self->_roomBuilder;
  }

  return roomBuilder;
}

- (void)setRoom:(id)a3
{
  v4 = a3;
  [(HFMediaSystemBuilder *)self setHasSetRoom:1];
  roomBuilder = self->_roomBuilder;
  self->_roomBuilder = v4;
}

- (id)_firstUnpopulatedRole
{
  v24[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB70];
  v3 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
  v4 = [v3 components];
  v5 = [v4 na_map:&__block_literal_global_173];
  v6 = [v2 orderedSetWithArray:v5];

  v7 = MEMORY[0x277CBEB70];
  v8 = [MEMORY[0x277CD1C10] leftRole];
  v24[0] = v8;
  v9 = [MEMORY[0x277CD1C10] rightRole];
  v24[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v11 = [v7 orderedSetWithArray:v10];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = *v20;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if (![v6 containsObject:{v16, v19}])
        {
          v13 = v16;
          goto LABEL_11;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

@end