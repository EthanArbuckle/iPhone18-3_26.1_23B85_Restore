@interface MUIAvatarViewController
+ (OS_os_log)log;
- (MUIAvatarViewController)initWithContacts:(id)a3;
- (UIView)view;
- (id)displayPersonForContext:(id)a3 avatarGenerationBlock:(id)a4;
- (id)displayPersonForContext:(id)a3 avatarGenerator:(id)a4;
- (void)updateContacts:(id)a3;
- (void)updateWithResult:(id)a3;
@end

@implementation MUIAvatarViewController

- (UIView)view
{
  view = self->_view;
  v4 = [(MUIAvatarViewController *)self avatarViewController];
  v5 = [v4 view];

  if (view != v5)
  {
    v6 = [(MUIAvatarViewController *)self avatarViewController];
    v7 = [v6 view];
    v8 = self->_view;
    self->_view = v7;

    [(UIView *)self->_view setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v9 = self->_view;

  return v9;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__MUIAvatarViewController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_7 != -1)
  {
    dispatch_once(&log_onceToken_7, block);
  }

  v2 = log_log_7;

  return v2;
}

void __30__MUIAvatarViewController_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log_7;
  log_log_7 = v2;
}

- (MUIAvatarViewController)initWithContacts:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MUIAvatarViewController;
  v5 = [(MUIAvatarViewController *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBDBF0] avatarViewController];
    [(MUIAvatarViewController *)v5 setAvatarViewController:v6];

    v7 = [(MUIAvatarViewController *)v5 avatarViewController];
    [v7 setThreeDTouchEnabled:0];

    if ([v4 count])
    {
      [(MUIAvatarViewController *)v5 updateContacts:v4];
    }
  }

  return v5;
}

- (void)updateContacts:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v6 = v4;
  v5 = [(MUIAvatarViewController *)self avatarViewController];
  [v5 setContacts:v6];

  [(MUIAvatarViewController *)self setContext:0];
}

- (void)updateWithResult:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[MUIAvatarViewController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 contact];
    v9 = [v8 contactType];
    v10 = [(MUIAvatarViewController *)self context];
    v11 = [v10 ef_publicDescription];
    *buf = 138544386;
    v23 = v7;
    v24 = 2048;
    v25 = self;
    v26 = 2048;
    v27 = v9;
    v28 = 2114;
    v29 = v5;
    v30 = 2114;
    v31 = v11;
    _os_log_impl(&dword_214A5E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - [%p] CNContact type %ld result %{public}@ context %{public}@", buf, 0x34u);
  }

  v12 = [v5 contact];
  if (v12)
  {
    v13 = [v5 contact];
    v21 = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  [(MUIAvatarViewController *)self updateContacts:v14];
  v15 = [(MUIAvatarViewController *)self view];
  v16 = [v15 traitCollection];
  v17 = [v5 needsBorderFor:{objc_msgSend(v16, "userInterfaceStyle")}];

  v18 = [(MUIAvatarViewController *)self view];
  v19 = [(MUIAvatarViewController *)self view];
  [v19 frame];
  [MUIAvatarImageGenerator roundAvatarView:v18 withBorder:v17 size:v20];
}

- (id)displayPersonForContext:(id)a3 avatarGenerator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__MUIAvatarViewController_displayPersonForContext_avatarGenerator___block_invoke;
    v12[3] = &unk_27818A218;
    v13 = v7;
    v14 = v6;
    v9 = [(MUIAvatarViewController *)self displayPersonForContext:v14 avatarGenerationBlock:v12];
  }

  else
  {
    v10 = +[MUIAvatarViewController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(MUIAvatarViewController *)v6 displayPersonForContext:v8 avatarGenerator:v10];
    }

    v9 = objc_alloc_init(MEMORY[0x277D07170]);
  }

  return v9;
}

- (id)displayPersonForContext:(id)a3 avatarGenerationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || !v7)
  {
    v12 = +[MUIAvatarViewController log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(MUIAvatarViewController *)v6 displayPersonForContext:v8 avatarGenerationBlock:v12];
    }

    v11 = objc_alloc_init(MEMORY[0x277D07170]);
    goto LABEL_8;
  }

  v9 = [(MUIAvatarViewController *)self context];
  v10 = [v6 isEqual:v9];

  if (v10)
  {
    v11 = [(MUIAvatarViewController *)self token];
LABEL_8:
    v13 = v11;
    goto LABEL_10;
  }

  [(MUIAvatarViewController *)self setContext:v6];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__MUIAvatarViewController_displayPersonForContext_avatarGenerationBlock___block_invoke;
  v15[3] = &unk_27818A240;
  objc_copyWeak(&v17, &location);
  v16 = v6;
  v13 = (v8)[2](v8, v15);
  [(MUIAvatarViewController *)self setToken:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
LABEL_10:

  return v13;
}

void __73__MUIAvatarViewController_displayPersonForContext_avatarGenerationBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__MUIAvatarViewController_displayPersonForContext_avatarGenerationBlock___block_invoke_2;
  v8[3] = &unk_278189490;
  v9 = *(a1 + 32);
  v10 = WeakRetained;
  v11 = v3;
  v5 = MEMORY[0x277D071B8];
  v6 = v3;
  v7 = [v5 mainThreadScheduler];
  [v7 performSyncBlock:v8];
}

uint64_t __73__MUIAvatarViewController_displayPersonForContext_avatarGenerationBlock___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = +[MUIAvatarViewController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) emailAddress];
    v4 = [v3 emailAddressValue];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 ef_publicDescription];
    }

    else
    {
      v7 = MEMORY[0x277D07198];
      v8 = [v3 stringValue];
      v6 = [v7 fullyOrPartiallyRedactedStringForString:v8];
    }

    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_214A5E000, v2, OS_LOG_TYPE_DEFAULT, "Updating avatar for %{public}@", &v10, 0xCu);
  }

  return [*(a1 + 40) updateWithResult:*(a1 + 48)];
}

- (void)displayPersonForContext:(os_log_t)log avatarGenerator:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_fault_impl(&dword_214A5E000, log, OS_LOG_TYPE_FAULT, "Unable to generate avatar image for missing context %p avatarGenerator %p", &v3, 0x16u);
}

- (void)displayPersonForContext:(NSObject *)a3 avatarGenerationBlock:.cold.1(uint64_t a1, void *aBlock, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = _Block_copy(aBlock);
  v6 = 134218240;
  v7 = a1;
  v8 = 2048;
  v9 = v5;
  _os_log_fault_impl(&dword_214A5E000, a3, OS_LOG_TYPE_FAULT, "Unable to generate avatar image for missing context %p avatarGenerationBlock %p", &v6, 0x16u);
}

@end