@interface MFLoadBlockedContentBannerView
+ (id)log;
- (MFLoadBlockedContentBannerView)initWithFrame:(CGRect)a3 blockedContentTypes:(unint64_t)a4 blockingReason:(int64_t)a5;
- (MFLoadBlockedContentBannerViewDelegate)delegate;
- (id)actionTitle;
- (id)title;
- (void)_titleControlTapped:(id)a3;
- (void)_updateBannerText;
- (void)enablePrivacyProtectionAlertForAccount;
- (void)primaryAction;
- (void)setBlockedContentTypes:(unint64_t)a3;
@end

@implementation MFLoadBlockedContentBannerView

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__MFLoadBlockedContentBannerView_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_4 != -1)
  {
    dispatch_once(&log_onceToken_4, block);
  }

  v2 = log_log_4;

  return v2;
}

void __37__MFLoadBlockedContentBannerView_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_4;
  log_log_4 = v1;
}

- (MFLoadBlockedContentBannerView)initWithFrame:(CGRect)a3 blockedContentTypes:(unint64_t)a4 blockingReason:(int64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v30[1] = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"MFLoadBlockedContentBannerView.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"blockedContentTypes"}];
  }

  v29.receiver = self;
  v29.super_class = MFLoadBlockedContentBannerView;
  v12 = [(MFSuggestionBannerView *)&v29 initWithFrame:x, y, width, height];
  v13 = v12;
  if (v12)
  {
    v12->_blockedContentTypes = a4;
    v12->_blockingReason = a5;
    v14 = objc_opt_new();
    v15 = [(MFLoadBlockedContentBannerView *)v13 title];
    [v14 setTitle:v15];

    [v14 setAccessoryType:0];
    v16 = [(MFLoadBlockedContentBannerView *)v13 actionTitle];
    [v14 setActionTitle:v16];

    [v14 setActionButtonType:0];
    v17 = [MEMORY[0x277D75348] mailInteractiveColor];
    v18 = [MFSuggestionBannerView bannerIconViewForSymbol:*MEMORY[0x277D259C8] tintColor:v17];
    v30[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    [v14 setImageSGViews:v19];

    objc_initWeak(&location, v13);
    v20 = MEMORY[0x277D025D8];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __83__MFLoadBlockedContentBannerView_initWithFrame_blockedContentTypes_blockingReason___block_invoke;
    v26[3] = &unk_2781819F8;
    objc_copyWeak(&v27, &location);
    v21 = [v20 actionWithTitle:&stru_2826D1AD8 handler:v26];
    [v14 setPrimaryAction:v21];

    [(MFSuggestionBannerView *)v13 setBanner:v14];
    [v14 reload];
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v13;
}

void __83__MFLoadBlockedContentBannerView_initWithFrame_blockedContentTypes_blockingReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained primaryAction];
}

- (void)setBlockedContentTypes:(unint64_t)a3
{
  if (self->_blockedContentTypes != a3)
  {
    self->_blockedContentTypes = a3;
    [(MFLoadBlockedContentBannerView *)self _updateBannerText];
  }
}

- (void)_updateBannerText
{
  blockingReason = self->_blockingReason;
  switch(blockingReason)
  {
    case 1:
      v8 = [MEMORY[0x277CCA8D8] mainBundle];
      v15 = [v8 localizedStringForKey:@"REMOTE_IMAGES_BLOCKED_ENCRYPTION" value:&stru_2826D1AD8 table:@"Main"];

      v5 = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = [v5 localizedStringForKey:@"LOAD_REMOTE_IMAGES_ENCRYPTION" value:&stru_2826D1AD8 table:@"Main"];
      break;
    case 3:
      v7 = [MEMORY[0x277CCA8D8] mainBundle];
      v15 = [v7 localizedStringForKey:@"MESSAGE_HAS_MULTIPLE_SIGNERS" value:&stru_2826D1AD8 table:@"Main"];

      v5 = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = [v5 localizedStringForKey:@"LOAD_MESSAGE" value:&stru_2826D1AD8 table:@"Main"];
      break;
    case 2:
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v15 = [v4 localizedStringForKey:@"UNABLE_TO_VERIFY_MESSAGE_CONTENT" value:&stru_2826D1AD8 table:@"Main"];

      v5 = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = [v5 localizedStringForKey:@"LOAD_MESSAGE" value:&stru_2826D1AD8 table:@"Main"];
      break;
    default:
      if ((self->_blockedContentTypes & 2) != 0)
      {
        v10 = [MEMORY[0x277CCA8D8] mainBundle];
        v15 = [v10 localizedStringForKey:@"REMOTE_CONTENT_BLOCKED_TRUST_EVALUATION" value:&stru_2826D1AD8 table:@"Main"];

        v5 = [MEMORY[0x277CCA8D8] mainBundle];
        v6 = [v5 localizedStringForKey:@"LOAD_REMOTE_CONTENT_TRUST_EVALUATION" value:&stru_2826D1AD8 table:@"Main"];
      }

      else
      {
        if (blockingReason == 5)
        {
          v9 = [MEMORY[0x277CCA8D8] mainBundle];
          v15 = [v9 localizedStringForKey:@"REMOTE_IMAGES_BLOCKED_LDM" value:&stru_2826D1AD8 table:@"Main"];

          v5 = [MEMORY[0x277CCA8D8] mainBundle];
          [v5 localizedStringForKey:@"DISPLAY_REMOTE_IMAGES_LDM" value:&stru_2826D1AD8 table:@"Main"];
        }

        else
        {
          v11 = [MEMORY[0x277CCA8D8] mainBundle];
          v15 = [v11 localizedStringForKey:@"REMOTE_IMAGES_BLOCKED_OTHER" value:&stru_2826D1AD8 table:@"Main"];

          v5 = [MEMORY[0x277CCA8D8] mainBundle];
          [v5 localizedStringForKey:@"LOAD_REMOTE_IMAGES_OTHER" value:&stru_2826D1AD8 table:@"Main"];
        }
        v6 = ;
      }

      break;
  }

  v12 = v6;

  v13 = [(MFSuggestionBannerView *)self banner];
  [v13 setTitle:v15];

  v14 = [(MFSuggestionBannerView *)self banner];
  [v14 setActionTitle:v12];
}

- (void)primaryAction
{
  v3 = [(MFLoadBlockedContentBannerView *)self delegate];
  [v3 loadBlockedContentBannerDidTriggerLoad:self];

  [(MFLoadBlockedContentBannerView *)self enablePrivacyProtectionAlertForAccount];
}

- (void)enablePrivacyProtectionAlertForAccount
{
  v3 = [MEMORY[0x277CBEBD0] em_userDefaults];
  if ([v3 shouldPresentRemoteContentAlert])
  {
    v4 = MEMORY[0x277D75110];
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"ENABLE_MAIL_PRIVACY_PROTECTION" value:&stru_2826D1AD8 table:@"Main"];
    v7 = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = [v7 localizedStringForKey:@"ENABLE_MAIL_PRIVACY_PROTECTION_DESCRIPTION" value:&stru_2826D1AD8 table:@"Main"];
    v9 = [v4 alertControllerWithTitle:v6 message:v8 preferredStyle:1];

    v10 = MEMORY[0x277D750F8];
    v11 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [v11 localizedStringForKey:@"NOT_NOW" value:&stru_2826D1AD8 table:@"Main"];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __72__MFLoadBlockedContentBannerView_enablePrivacyProtectionAlertForAccount__block_invoke;
    v25[3] = &unk_278181AD8;
    v13 = v3;
    v26 = v13;
    v14 = [v10 actionWithTitle:v12 style:1 handler:v25];
    [v9 addAction:v14];

    v15 = MEMORY[0x277D750F8];
    v16 = [MEMORY[0x277CCA8D8] mainBundle];
    v17 = [v16 localizedStringForKey:@"TURN_ON" value:&stru_2826D1AD8 table:@"Main"];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __72__MFLoadBlockedContentBannerView_enablePrivacyProtectionAlertForAccount__block_invoke_84;
    v23 = &unk_278181AD8;
    v24 = v13;
    v18 = [v15 actionWithTitle:v17 style:0 handler:&v20];
    [v9 addAction:{v18, v20, v21, v22, v23}];

    v19 = [(MFLoadBlockedContentBannerView *)self delegate];
    [v19 presentViewController:v9];
  }
}

uint64_t __72__MFLoadBlockedContentBannerView_enablePrivacyProtectionAlertForAccount__block_invoke(uint64_t a1)
{
  v2 = +[MFLoadBlockedContentBannerView log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2149C9000, v2, OS_LOG_TYPE_DEFAULT, "Mail Privacy Protection Alert with returnCode dismiss", v4, 2u);
  }

  return [*(a1 + 32) setObject:0 forKey:*MEMORY[0x277D06CB8]];
}

uint64_t __72__MFLoadBlockedContentBannerView_enablePrivacyProtectionAlertForAccount__block_invoke_84(uint64_t a1)
{
  v2 = +[MFLoadBlockedContentBannerView log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2149C9000, v2, OS_LOG_TYPE_DEFAULT, "Turning on Mail Privacy Protection Alert", v4, 2u);
  }

  [*(a1 + 32) setObject:0 forKey:*MEMORY[0x277D06CB8]];
  return [*(a1 + 32) enableMailTrackingProtection:1];
}

- (void)_titleControlTapped:(id)a3
{
  v4 = [(MFLoadBlockedContentBannerView *)self delegate];
  [v4 loadBlockedContentBannerDidTriggerLoad:self];
}

- (id)title
{
  blockingReason = self->_blockingReason;
  switch(blockingReason)
  {
    case 1:
      v3 = [MEMORY[0x277CCA8D8] mainBundle];
      v4 = [v3 localizedStringForKey:@"REMOTE_IMAGES_BLOCKED_ENCRYPTION" value:&stru_2826D1AD8 table:@"Main"];
      break;
    case 3:
      v3 = [MEMORY[0x277CCA8D8] mainBundle];
      v4 = [v3 localizedStringForKey:@"MESSAGE_HAS_MULTIPLE_SIGNERS" value:&stru_2826D1AD8 table:@"Main"];
      break;
    case 2:
      v3 = [MEMORY[0x277CCA8D8] mainBundle];
      v4 = [v3 localizedStringForKey:@"UNABLE_TO_VERIFY_MESSAGE_CONTENT" value:&stru_2826D1AD8 table:@"Main"];
      break;
    default:
      if ((self->_blockedContentTypes & 2) != 0)
      {
        v3 = [MEMORY[0x277CCA8D8] mainBundle];
        v4 = [v3 localizedStringForKey:@"REMOTE_CONTENT_BLOCKED_TRUST_EVALUATION" value:&stru_2826D1AD8 table:@"Main"];
      }

      else
      {
        v5 = [MEMORY[0x277CCA8D8] mainBundle];
        v3 = v5;
        if (blockingReason == 5)
        {
          [v5 localizedStringForKey:@"REMOTE_IMAGES_BLOCKED_LDM" value:&stru_2826D1AD8 table:@"Main"];
        }

        else
        {
          [v5 localizedStringForKey:@"REMOTE_IMAGES_BLOCKED_OTHER" value:&stru_2826D1AD8 table:@"Main"];
        }
        v4 = ;
      }

      break;
  }

  v6 = v4;

  return v6;
}

- (id)actionTitle
{
  blockingReason = self->_blockingReason;
  if (blockingReason == 1)
  {
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [v3 localizedStringForKey:@"LOAD_REMOTE_IMAGES_ENCRYPTION" value:&stru_2826D1AD8 table:@"Main"];
  }

  else if (blockingReason == 3 || blockingReason == 2)
  {
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [v3 localizedStringForKey:@"LOAD_MESSAGE" value:&stru_2826D1AD8 table:@"Main"];
  }

  else if ((self->_blockedContentTypes & 2) != 0)
  {
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [v3 localizedStringForKey:@"LOAD_REMOTE_CONTENT_TRUST_EVALUATION" value:&stru_2826D1AD8 table:@"Main"];
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v3 = v5;
    if (blockingReason == 5)
    {
      [v5 localizedStringForKey:@"DISPLAY_REMOTE_IMAGES_LDM" value:&stru_2826D1AD8 table:@"Main"];
    }

    else
    {
      [v5 localizedStringForKey:@"LOAD_REMOTE_IMAGES_OTHER" value:&stru_2826D1AD8 table:@"Main"];
    }
    v4 = ;
  }

  v6 = v4;

  return v6;
}

- (MFLoadBlockedContentBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end