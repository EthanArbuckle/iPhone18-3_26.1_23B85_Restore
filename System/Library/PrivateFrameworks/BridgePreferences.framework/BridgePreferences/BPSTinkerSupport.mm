@interface BPSTinkerSupport
+ (id)sharedInstance;
- (BOOL)isActiveTinker;
- (BPSTinkerSupport)init;
- (id)cachedProfilePictureForFamilyMember:(id)member;
- (id)cachedTinkerAKDevice;
- (id)cachedTinkerFamilyMemeber;
- (id)familyMemberMatchingAccount:(id)account inCircle:(id)circle;
- (void)fetchFamilyDetails;
- (void)fetchProfilePictures;
- (void)getActiveTinkerFamilyDetailsWithCompletion:(id)completion;
- (void)getActiveTinkerFamilyMemberDetailsWithCompletion:(id)completion;
- (void)getActiveTinkerFamilyMemberWithCompletion:(id)completion;
- (void)resetCachedDeviceValues;
@end

@implementation BPSTinkerSupport

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[BPSTinkerSupport sharedInstance];
  }

  v3 = sharedInstance__instance;

  return v3;
}

uint64_t __34__BPSTinkerSupport_sharedInstance__block_invoke()
{
  sharedInstance__instance = objc_alloc_init(BPSTinkerSupport);

  return MEMORY[0x2821F96F8]();
}

- (BPSTinkerSupport)init
{
  v10.receiver = self;
  v10.super_class = BPSTinkerSupport;
  v2 = [(BPSTinkerSupport *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.AccountRetrieval", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v5 = getNSSManagerClass_softClass;
    v15 = getNSSManagerClass_softClass;
    if (!getNSSManagerClass_softClass)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __getNSSManagerClass_block_invoke;
      v11[3] = &unk_278D232F0;
      v11[4] = &v12;
      __getNSSManagerClass_block_invoke(v11);
      v5 = v13[3];
    }

    v6 = v5;
    _Block_object_dispose(&v12, 8);
    v7 = [[v5 alloc] initWithQueue:v2->_queue];
    nssManager = v2->_nssManager;
    v2->_nssManager = v7;
  }

  return v2;
}

- (id)cachedTinkerFamilyMemeber
{
  if ([(BPSTinkerSupport *)self isActiveTinker])
  {
    v3 = self->_currentTinkerMember;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isActiveTinker
{
  v2 = BPSGetActiveDevice();
  v3 = [v2 valueForProperty:*MEMORY[0x277D2BB28]];

  if (!v2)
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v6 = "No active device found";
      v7 = &v10;
LABEL_8:
      _os_log_impl(&dword_241E74000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }

LABEL_9:

    v4 = 0;
    goto LABEL_10;
  }

  if (!v3)
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v6 = "Device is not tinker, so we will not use it for account matching";
      v7 = &v9;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v4 = 1;
LABEL_10:

  return v4;
}

- (void)fetchFamilyDetails
{
  v3 = objc_alloc_init(MEMORY[0x277D08280]);
  [v3 setCachePolicy:1];
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241E74000, v4, OS_LOG_TYPE_DEFAULT, "fetchFamilyDetails start", buf, 2u);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__BPSTinkerSupport_fetchFamilyDetails__block_invoke;
  v5[3] = &unk_278D23190;
  v5[4] = self;
  [v3 startRequestWithCompletionHandler:v5];
}

void __38__BPSTinkerSupport_fetchFamilyDetails__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 localizedDescription];
    *buf = 138412290;
    v14 = v8;
    _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "fetchFamilyDetails complete, error: %@", buf, 0xCu);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 8);
  *(v9 + 8) = v5;
  v11 = v5;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__BPSTinkerSupport_fetchFamilyDetails__block_invoke_45;
  block[3] = &unk_278D23168;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __38__BPSTinkerSupport_fetchFamilyDetails__block_invoke_45(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"BPSTinkerSupportFamilyCircleUpdatedNotification" object:0];

  v3 = *(a1 + 32);

  return [v3 fetchProfilePictures];
}

- (void)fetchProfilePictures
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = self->_cachedFamilyCircle == 0;
  v4 = pbb_bridge_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[BPSTinkerSupport fetchProfilePictures]";
      _os_log_impl(&dword_241E74000, v5, OS_LOG_TYPE_DEFAULT, "%s: can't fetch without family circle", &buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[BPSTinkerSupport fetchProfilePictures]";
      _os_log_impl(&dword_241E74000, v5, OS_LOG_TYPE_DEFAULT, "%s: fetching profile pictures", &buf, 0xCu);
    }

    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v6 = getFAProfilePictureStoreClass_softClass;
    v15 = getFAProfilePictureStoreClass_softClass;
    if (!getFAProfilePictureStoreClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v17 = __getFAProfilePictureStoreClass_block_invoke;
      v18 = &unk_278D232F0;
      v19 = &v12;
      __getFAProfilePictureStoreClass_block_invoke(&buf);
      v6 = v13[3];
    }

    v7 = v6;
    _Block_object_dispose(&v12, 8);
    v8 = [v6 alloc];
    v9 = [v8 initWithFamilyCircle:{self->_cachedFamilyCircle, v12}];
    profilePictureStore = self->_profilePictureStore;
    p_profilePictureStore = &self->_profilePictureStore;
    *p_profilePictureStore = v9;

    [*p_profilePictureStore fetchProfileImagesWithCompletion:&__block_literal_global_50];
  }
}

void __40__BPSTinkerSupport_fetchProfilePictures__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = pbb_bridge_log();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 localizedDescription];
      v9 = 136315394;
      v10 = "[BPSTinkerSupport fetchProfilePictures]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "%s: error %@", &v9, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[BPSTinkerSupport fetchProfilePictures]_block_invoke";
      v11 = 2048;
      v12 = [v4 count];
      _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "%s: fetched %lu profile pictures", &v9, 0x16u);
    }

    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_53);
  }
}

void __40__BPSTinkerSupport_fetchProfilePictures__block_invoke_51()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"BPSTinkerSupportProfilePicturesUpdatedNotification" object:0];
}

- (void)resetCachedDeviceValues
{
  currentTinkerMember = self->_currentTinkerMember;
  self->_currentTinkerMember = 0;

  currentTinkerAKDevice = self->_currentTinkerAKDevice;
  self->_currentTinkerAKDevice = 0;
}

- (id)cachedProfilePictureForFamilyMember:(id)member
{
  memberCopy = member;
  profilePictureStore = self->_profilePictureStore;
  if (profilePictureStore && ([(FAProfilePictureStore *)profilePictureStore profilePictureForFamilyMember:memberCopy pictureDiameter:36.0], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = MEMORY[0x277D755B8];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v10 = [v8 imageWithData:v7 scale:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)cachedTinkerAKDevice
{
  if ([(BPSTinkerSupport *)self isActiveTinker])
  {
    v3 = self->_currentTinkerAKDevice;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)getActiveTinkerFamilyMemberWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__BPSTinkerSupport_getActiveTinkerFamilyMemberWithCompletion___block_invoke;
  v6[3] = &unk_278D231D8;
  v7 = completionCopy;
  v5 = completionCopy;
  [(BPSTinkerSupport *)self getActiveTinkerFamilyMemberDetailsWithCompletion:v6];
}

- (void)getActiveTinkerFamilyMemberDetailsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__BPSTinkerSupport_getActiveTinkerFamilyMemberDetailsWithCompletion___block_invoke;
  v6[3] = &unk_278D23200;
  v7 = completionCopy;
  v5 = completionCopy;
  [(BPSTinkerSupport *)self getActiveTinkerFamilyDetailsWithCompletion:v6];
}

void __69__BPSTinkerSupport_getActiveTinkerFamilyMemberDetailsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a3;
  v9 = [a2 tinkerFamilyMember];
  (*(v6 + 16))(v6, v9, v8, v7);
}

- (void)getActiveTinkerFamilyDetailsWithCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!completionCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil replyBlock"];
  }

  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _Block_copy(completionCopy);
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_241E74000, v5, OS_LOG_TYPE_DEFAULT, "Reply block: %@", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__BPSTinkerSupport_getActiveTinkerFamilyDetailsWithCompletion___block_invoke;
  v9[3] = &unk_278D232C8;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, v9);
}

void __63__BPSTinkerSupport_getActiveTinkerFamilyDetailsWithCompletion___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[BPSTinkerSupport getActiveTinkerFamilyDetailsWithCompletion:]_block_invoke";
    _os_log_impl(&dword_241E74000, v2, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  v4 = a1 + 32;
  v3 = *(a1 + 32);
  v5 = *(v3 + 40);
  *(v3 + 40) = 0;

  v6 = *(*(a1 + 32) + 64);
  *(*v4 + 64) = 0;

  v7 = *(*(a1 + 32) + 48);
  *(*v4 + 48) = 0;

  v8 = *(*(a1 + 32) + 56);
  *(*v4 + 56) = 0;

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__BPSTinkerSupport_getActiveTinkerFamilyDetailsWithCompletion___block_invoke_62;
  aBlock[3] = &unk_278D23228;
  aBlock[4] = *(a1 + 32);
  v45 = *(a1 + 40);
  v9 = _Block_copy(aBlock);
  if ([*(a1 + 32) isActiveTinker])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy_;
    v49 = __Block_byref_object_dispose_;
    v50 = 0;
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x3032000000;
    v42[3] = __Block_byref_object_copy_;
    v42[4] = __Block_byref_object_dispose_;
    v43 = 0;
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x3032000000;
    v40[3] = __Block_byref_object_copy_;
    v40[4] = __Block_byref_object_dispose_;
    v41 = 0;
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x3032000000;
    v38[3] = __Block_byref_object_copy_;
    v38[4] = __Block_byref_object_dispose_;
    v39 = 0;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x3032000000;
    v36[3] = __Block_byref_object_copy_;
    v36[4] = __Block_byref_object_dispose_;
    v37 = 0;
    v10 = dispatch_group_create();
    dispatch_group_enter(v10);
    v11 = pbb_bridge_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&dword_241E74000, v11, OS_LOG_TYPE_DEFAULT, "fetching accounts", v35, 2u);
    }

    v12 = *(*(a1 + 32) + 24);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __63__BPSTinkerSupport_getActiveTinkerFamilyDetailsWithCompletion___block_invoke_63;
    v30[3] = &unk_278D23250;
    p_buf = &buf;
    v33 = v36;
    v34 = v40;
    v13 = v10;
    v31 = v13;
    [v12 getAccountsInfo:v30];
    dispatch_group_enter(v13);
    v14 = objc_alloc_init(MEMORY[0x277D08280]);
    [v14 setCachePolicy:2];
    v15 = pbb_bridge_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&dword_241E74000, v15, OS_LOG_TYPE_DEFAULT, "FAFetchFamilyCircleRequest start", v35, 2u);
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __63__BPSTinkerSupport_getActiveTinkerFamilyDetailsWithCompletion___block_invoke_65;
    v26[3] = &unk_278D23278;
    v28 = v42;
    v29 = v38;
    v16 = v13;
    v27 = v16;
    [v14 startRequestWithCompletionHandler:v26];
    v17 = *(*(a1 + 32) + 32);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __63__BPSTinkerSupport_getActiveTinkerFamilyDetailsWithCompletion___block_invoke_66;
    v19[3] = &unk_278D232A0;
    v21 = &buf;
    v22 = v42;
    v18 = v9;
    v19[4] = *(a1 + 32);
    v20 = v18;
    v23 = v36;
    v24 = v40;
    v25 = v38;
    dispatch_group_notify(v16, v17, v19);

    _Block_object_dispose(v36, 8);
    _Block_object_dispose(v38, 8);

    _Block_object_dispose(v40, 8);
    _Block_object_dispose(v42, 8);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    (*(v9 + 2))(v9, 0, 0, 0);
  }
}

void __63__BPSTinkerSupport_getActiveTinkerFamilyDetailsWithCompletion___block_invoke_62(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a2;
  v10 = pbb_bridge_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_241E74000, v10, OS_LOG_TYPE_DEFAULT, "Updating current tinker family details", v23, 2u);
  }

  v11 = [v9 tinkerFamilyMember];
  v12 = *(a1 + 32);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *(a1 + 32);
  v15 = *(v14 + 64);
  *(v14 + 64) = v7;
  v16 = v7;

  v17 = [v9 pairingParentFamilyMember];
  v18 = *(a1 + 32);
  v19 = *(v18 + 48);
  *(v18 + 48) = v17;

  v20 = [v9 organizerParentFamilyMember];
  v21 = *(a1 + 32);
  v22 = *(v21 + 56);
  *(v21 + 56) = v20;

  (*(*(a1 + 40) + 16))();
}

void __63__BPSTinkerSupport_getActiveTinkerFamilyDetailsWithCompletion___block_invoke_63(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v41 = a2;
  v42 = a3;
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v42;
    _os_log_impl(&dword_241E74000, v4, OS_LOG_TYPE_DEFAULT, "fetching accounts complete. error %@", &buf, 0xCu);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v5 = v42;
  if (!v42)
  {
    v40 = objc_opt_new();
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v6 = getkNSSAccountsKeySymbolLoc_ptr;
    v51 = getkNSSAccountsKeySymbolLoc_ptr;
    if (!getkNSSAccountsKeySymbolLoc_ptr)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v54 = __getkNSSAccountsKeySymbolLoc_block_invoke;
      v55 = &unk_278D232F0;
      v56 = &v48;
      v7 = NanoSystemSettingsLibrary();
      v8 = dlsym(v7, "kNSSAccountsKey");
      *(v56[1] + 24) = v8;
      getkNSSAccountsKeySymbolLoc_ptr = *(v56[1] + 24);
      v6 = v49[3];
    }

    _Block_object_dispose(&v48, 8);
    if (!v6)
    {
      goto LABEL_28;
    }

    v9 = [v41 objectForKeyedSubscript:*v6];
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v10 = getkNSSAKDeviceKeySymbolLoc_ptr;
    v51 = getkNSSAKDeviceKeySymbolLoc_ptr;
    if (!getkNSSAKDeviceKeySymbolLoc_ptr)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v54 = __getkNSSAKDeviceKeySymbolLoc_block_invoke;
      v55 = &unk_278D232F0;
      v56 = &v48;
      v11 = NanoSystemSettingsLibrary();
      v12 = dlsym(v11, "kNSSAKDeviceKey");
      *(v56[1] + 24) = v12;
      getkNSSAKDeviceKeySymbolLoc_ptr = *(v56[1] + 24);
      v10 = v49[3];
    }

    _Block_object_dispose(&v48, 8);
    if (!v10)
    {
LABEL_28:
      __63__BPSTinkerSupport_getActiveTinkerFamilyDetailsWithCompletion___block_invoke_63_cold_1();
LABEL_29:
      __break(1u);
    }

    v13 = *v10;
    v14 = [v41 objectForKeyedSubscript:v13];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    [*(*(*(a1 + 48) + 8) + 40) setLinkType:2];
    v17 = pbb_bridge_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(*(*(a1 + 48) + 8) + 40);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v18;
      _os_log_impl(&dword_241E74000, v17, OS_LOG_TYPE_DEFAULT, "watch AKDevice :%@", &buf, 0xCu);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v19 = v9;
    v20 = [v19 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v20)
    {
      v21 = *v45;
      v22 = *MEMORY[0x277CB8BA0];
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v45 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v44 + 1) + 8 * i);
          v48 = 0;
          v49 = &v48;
          v50 = 0x2020000000;
          v25 = getkNSSAccountTypeKeySymbolLoc_ptr;
          v51 = getkNSSAccountTypeKeySymbolLoc_ptr;
          if (!getkNSSAccountTypeKeySymbolLoc_ptr)
          {
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v54 = __getkNSSAccountTypeKeySymbolLoc_block_invoke;
            v55 = &unk_278D232F0;
            v56 = &v48;
            v26 = NanoSystemSettingsLibrary();
            v27 = dlsym(v26, "kNSSAccountTypeKey");
            *(v56[1] + 24) = v27;
            getkNSSAccountTypeKeySymbolLoc_ptr = *(v56[1] + 24);
            v25 = v49[3];
          }

          _Block_object_dispose(&v48, 8);
          if (!v25)
          {
            __63__BPSTinkerSupport_getActiveTinkerFamilyDetailsWithCompletion___block_invoke_63_cold_1();
            goto LABEL_29;
          }

          v28 = [v24 objectForKeyedSubscript:*v25];
          if ([v28 isEqualToString:v22])
          {
            v29 = getkNSSAccountDSIDKey();
            v30 = [v24 objectForKeyedSubscript:v29];
            v31 = getkNSSAccountDSIDKey();
            [v40 setObject:v30 forKeyedSubscript:v31];

            v32 = getkNSSAccountAltDSIDKey();
            v33 = [v24 objectForKeyedSubscript:v32];
            v34 = getkNSSAccountAltDSIDKey();
            [v40 setObject:v33 forKeyedSubscript:v34];

            v35 = getkNSSAccountUsernameKey();
            v36 = [v24 objectForKeyedSubscript:v35];
            v37 = getkNSSAccountUsernameKey();
            [v40 setObject:v36 forKeyedSubscript:v37];

            goto LABEL_25;
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v20);
    }

LABEL_25:

    v38 = *(*(a1 + 56) + 8);
    v39 = *(v38 + 40);
    *(v38 + 40) = v40;

    v5 = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __63__BPSTinkerSupport_getActiveTinkerFamilyDetailsWithCompletion___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 localizedDescription];
    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "FAFetchFamilyCircleRequest complete, error: %@", &v15, 0xCu);
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v5;
  v14 = v5;

  dispatch_group_leave(*(a1 + 32));
}

void __63__BPSTinkerSupport_getActiveTinkerFamilyDetailsWithCompletion___block_invoke_66(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 48) + 8) + 40) || *(*(*(a1 + 56) + 8) + 40))
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v3 = [*(a1 + 32) familyMemberMatchingAccount:*(*(*(a1 + 72) + 8) + 40) inCircle:*(*(*(a1 + 80) + 8) + 40)];
    v4 = objc_opt_new();
    [v4 setTinkerFamilyMember:v3];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [*(*(*(a1 + 80) + 8) + 40) members];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          if ([v10 isMe] && objc_msgSend(v10, "isParent"))
          {
            [v4 setPairingParentFamilyMember:v10];
          }

          if ([v10 isOrganizer])
          {
            [v4 setOrganizerParentFamilyMember:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (id)familyMemberMatchingAccount:(id)account inCircle:(id)circle
{
  v34 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [circle members];
  v27 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v27)
  {
    v28 = *v30;
    while (2)
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        altDSID = [v7 altDSID];
        v9 = getkNSSAccountAltDSIDKey();
        v10 = [accountCopy objectForKeyedSubscript:v9];
        v11 = [altDSID isEqualToString:v10];

        if (v11)
        {
          goto LABEL_15;
        }

        dsid = [v7 dsid];
        stringValue = [dsid stringValue];
        if (stringValue)
        {
          v14 = stringValue;
          dsid2 = [v7 dsid];
          stringValue2 = [dsid2 stringValue];
          v17 = getkNSSAccountDSIDKey();
          v18 = [accountCopy objectForKeyedSubscript:v17];
          v19 = [stringValue2 isEqualToString:v18];

          if (v19)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }

        appleID = [v7 appleID];
        v21 = getkNSSAccountUsernameKey();
        v22 = [accountCopy objectForKeyedSubscript:v21];
        v23 = [appleID isEqualToString:v22];

        if (v23)
        {
LABEL_15:
          v24 = v7;
          goto LABEL_17;
        }
      }

      v24 = 0;
      v27 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v24 = 0;
  }

LABEL_17:

  return v24;
}

uint64_t __63__BPSTinkerSupport_getActiveTinkerFamilyDetailsWithCompletion___block_invoke_63_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return __getNSSManagerClass_block_invoke_cold_1(v0);
}

@end