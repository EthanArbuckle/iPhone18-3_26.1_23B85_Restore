@interface CKRecipientGenerator
+ (id)sharedRecipientGenerator;
- (id)recipientWithAddress:(id)a3;
- (id)recipientWithContact:(id)a3;
- (id)recipientWithContactProperty:(id)a3;
- (void)getAddressForContact:(id)a3 address:(id *)a4 kind:(unint64_t *)a5;
@end

@implementation CKRecipientGenerator

+ (id)sharedRecipientGenerator
{
  if (sharedRecipientGenerator_once != -1)
  {
    +[CKRecipientGenerator sharedRecipientGenerator];
  }

  v3 = sharedRecipientGenerator_sSharedRecipientGenerator;

  return v3;
}

void __48__CKRecipientGenerator_sharedRecipientGenerator__block_invoke()
{
  v0 = objc_alloc_init(CKRecipientGenerator);
  v1 = sharedRecipientGenerator_sSharedRecipientGenerator;
  sharedRecipientGenerator_sSharedRecipientGenerator = v0;

  v2 = sharedRecipientGenerator_sSharedRecipientGenerator;
  v3 = CKPreferredAddressTypes();
  [v2 setSearchABPropertyTypes:v3];
}

- (id)recipientWithContact:(id)a3
{
  v9 = 0;
  v10 = 5;
  [(CKRecipientGenerator *)self getAddressForContact:a3 address:&v9 kind:&v10];
  v3 = v9;
  v4 = +[CKRecipientGenerator sharedRecipientGenerator];
  v5 = [v4 recipientWithAddress:v3];

  if (v10 == 1)
  {
    v6 = MEMORY[0x193AF4FE0](1);
    v7 = v6;
    [v5 setCountryCode:v7];
    if (v6)
    {
      CFRelease(v7);
    }
  }

  return v5;
}

- (void)getAddressForContact:(id)a3 address:(id *)a4 kind:(unint64_t *)a5
{
  v17 = a3;
  v7 = [v17 phoneNumbers];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v17 phoneNumbers];
    v10 = [v9 firstObject];

    v11 = [v10 value];
    v12 = [v11 stringValue];

    v13 = 1;
LABEL_5:

    goto LABEL_6;
  }

  v14 = [v17 emailAddresses];
  v12 = [v14 count];

  if (v12)
  {
    v15 = [v17 emailAddresses];
    v10 = [v15 firstObject];

    v12 = [v10 value];
    v13 = 0;
    goto LABEL_5;
  }

  v13 = 5;
LABEL_6:
  v16 = v12;
  *a4 = v12;
  *a5 = v13;
}

- (id)recipientWithContactProperty:(id)a3
{
  v3 = a3;
  v4 = [v3 key];
  v5 = [v4 isEqualToString:*MEMORY[0x1E695C208]];

  if (v5)
  {
    v6 = [v3 value];
  }

  else
  {
    v7 = [v3 key];
    v8 = [v7 isEqualToString:*MEMORY[0x1E695C330]];

    if (v8)
    {
      v9 = [v3 value];
      v6 = [v9 stringValue];
    }

    else
    {
      v6 = 0;
    }
  }

  if ([v6 length])
  {
    v10 = +[CKRecipientGenerator sharedRecipientGenerator];
    v11 = [v10 recipientWithAddress:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)recipientWithAddress:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E69A7FD0] sharedInstance];
    v5 = [v4 fetchCNContactForHandleWithID:v3];

    v6 = MEMORY[0x193AF5D40](v3);
    if (v6)
    {
      v7 = 1;
    }

    else if (IMStringIsEmail())
    {
      v7 = 0;
    }

    else
    {
      v7 = 2;
    }

    v10 = IMStripFormattingFromAddress();
    v11 = [MEMORY[0x1E69A5A80] sharedInstance];
    v12 = [v11 __ck_bestAccountForAddress:v10];

    v13 = [v12 imHandleWithID:v10];
    if (CKIsRunningInFullCKClient() || CKIsRunningUnitTests())
    {
      v14 = [[CKIMComposeRecipient alloc] initWithHandle:v13];
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E6996408]) initWithContact:v5 address:v3 kind:v7];
    }

    v9 = v14;
    if (v6)
    {
      v15 = MEMORY[0x193AF4FE0](1);
      v16 = v15;
      [(CKIMComposeRecipient *)v9 setCountryCode:v16];
      if (v15)
      {
        CFRelease(v16);
      }
    }

    if ((!v13 || !v5) && IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = 138412802;
        v20 = v3;
        v21 = 2112;
        v22 = v13;
        v23 = 2112;
        v24 = v5;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Address %@ matched to nil handle (%@) or contact (%@)", &v19, 0x20u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v19 = 136315138;
        v20 = "[CKRecipientGenerator recipientWithAddress:]";
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "%s given nil address", &v19, 0xCu);
      }
    }

    v9 = 0;
  }

  return v9;
}

@end