@interface MUIContactStoreProvider
+ (OS_os_log)log;
- (BOOL)contactExistsForEmailAddress:(id)a3;
- (MUIContactStoreProvider)initWithContactStore:(id)a3;
- (id)_contactForEmailAddress:(id)a3;
- (id)contactResultForContext:(id)a3;
@end

@implementation MUIContactStoreProvider

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__MUIContactStoreProvider_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_10 != -1)
  {
    dispatch_once(&log_onceToken_10, block);
  }

  v2 = log_log_10;

  return v2;
}

void __30__MUIContactStoreProvider_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log_10;
  log_log_10 = v2;
}

- (MUIContactStoreProvider)initWithContactStore:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = MUIContactStoreProvider;
  v6 = [(MUIContactStoreProvider *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
    v8 = objc_alloc(MEMORY[0x277CBDBD0]);
    v9 = [MEMORY[0x277CBDBD8] defaultSettings];
    v10 = [v8 initWithSettings:v9];
    renderer = v7->_renderer;
    v7->_renderer = v10;
  }

  return v7;
}

- (BOOL)contactExistsForEmailAddress:(id)a3
{
  v4 = a3;
  v5 = [(MUIContactStoreProvider *)self contactStore];
  v6 = [v5 contactExistsForEmailAddress:v4];

  return v6;
}

- (id)contactResultForContext:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 emailAddress];
  v6 = [v5 emailAddressValue];

  if (v6)
  {
    v7 = [(MUIContactStoreProvider *)self _contactForEmailAddress:v6];
  }

  else
  {
    v8 = +[MUIContactStoreProvider log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = 0;
      _os_log_impl(&dword_214A5E000, v8, OS_LOG_TYPE_DEFAULT, "No valid emailAddressValue for emailAddress %{public}@. Returning an empty contact", buf, 0xCu);
    }

    v7 = objc_opt_new();
  }

  v9 = v7;
  v10 = MEMORY[0x277CBDBE0];
  [v4 scale];
  v12 = [v10 scopeWithPointSize:objc_msgSend(v4 scale:"isRTL") rightToLeft:0 style:{45.0, 45.0, v11}];
  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__MUIContactStoreProvider_contactResultForContext___block_invoke;
  aBlock[3] = &unk_27818A5D8;
  objc_copyWeak(&v23, buf);
  v13 = v9;
  v21 = v13;
  v14 = v12;
  v22 = v14;
  v15 = _Block_copy(aBlock);
  v16 = [MUIAvatarImageGeneratorResult alloc];
  v17 = [v4 emailAddress];
  v18 = [(MUIAvatarImageGeneratorResult *)v16 initWithContact:v13 address:v17 imageProvider:v15 style:0];

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);

  return v18;
}

id __51__MUIContactStoreProvider_contactResultForContext___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained renderer];
  v7[0] = *(a1 + 32);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [v3 avatarImageForContacts:v4 scope:*(a1 + 40)];

  return v5;
}

- (id)_contactForEmailAddress:(id)a3
{
  v3 = MEMORY[0x277CBDA58];
  v4 = a3;
  v5 = [v4 displayName];
  v6 = [v5 ec_personNameComponents];
  v7 = [v4 simpleAddress];

  v8 = [v3 em_contactWithPersonNameComponents:v6 emailAddress:v7 emailAddressLabel:0 allowInvalidEmailAddress:1];

  return v8;
}

@end