@interface MUIContactStoreProvider
+ (OS_os_log)log;
- (BOOL)contactExistsForEmailAddress:(id)address;
- (MUIContactStoreProvider)initWithContactStore:(id)store;
- (id)_contactForEmailAddress:(id)address;
- (id)contactResultForContext:(id)context;
@end

@implementation MUIContactStoreProvider

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__MUIContactStoreProvider_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (MUIContactStoreProvider)initWithContactStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = MUIContactStoreProvider;
  v6 = [(MUIContactStoreProvider *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
    v8 = objc_alloc(MEMORY[0x277CBDBD0]);
    defaultSettings = [MEMORY[0x277CBDBD8] defaultSettings];
    v10 = [v8 initWithSettings:defaultSettings];
    renderer = v7->_renderer;
    v7->_renderer = v10;
  }

  return v7;
}

- (BOOL)contactExistsForEmailAddress:(id)address
{
  addressCopy = address;
  contactStore = [(MUIContactStoreProvider *)self contactStore];
  v6 = [contactStore contactExistsForEmailAddress:addressCopy];

  return v6;
}

- (id)contactResultForContext:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  emailAddress = [contextCopy emailAddress];
  emailAddressValue = [emailAddress emailAddressValue];

  if (emailAddressValue)
  {
    v7 = [(MUIContactStoreProvider *)self _contactForEmailAddress:emailAddressValue];
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
  [contextCopy scale];
  v12 = [v10 scopeWithPointSize:objc_msgSend(contextCopy scale:"isRTL") rightToLeft:0 style:{45.0, 45.0, v11}];
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
  emailAddress2 = [contextCopy emailAddress];
  v18 = [(MUIAvatarImageGeneratorResult *)v16 initWithContact:v13 address:emailAddress2 imageProvider:v15 style:0];

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

- (id)_contactForEmailAddress:(id)address
{
  v3 = MEMORY[0x277CBDA58];
  addressCopy = address;
  displayName = [addressCopy displayName];
  ec_personNameComponents = [displayName ec_personNameComponents];
  simpleAddress = [addressCopy simpleAddress];

  v8 = [v3 em_contactWithPersonNameComponents:ec_personNameComponents emailAddress:simpleAddress emailAddressLabel:0 allowInvalidEmailAddress:1];

  return v8;
}

@end