@interface CKRecipientGenerator
+ (id)sharedRecipientGenerator;
- (id)recipientWithAddress:(id)address;
- (id)recipientWithContact:(id)contact;
- (id)recipientWithContactProperty:(id)property;
- (void)getAddressForContact:(id)contact address:(id *)address kind:(unint64_t *)kind;
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

- (id)recipientWithContact:(id)contact
{
  v9 = 0;
  v10 = 5;
  [(CKRecipientGenerator *)self getAddressForContact:contact address:&v9 kind:&v10];
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

- (void)getAddressForContact:(id)contact address:(id *)address kind:(unint64_t *)kind
{
  contactCopy = contact;
  phoneNumbers = [contactCopy phoneNumbers];
  v8 = [phoneNumbers count];

  if (v8)
  {
    phoneNumbers2 = [contactCopy phoneNumbers];
    firstObject = [phoneNumbers2 firstObject];

    value = [firstObject value];
    stringValue = [value stringValue];

    v13 = 1;
LABEL_5:

    goto LABEL_6;
  }

  emailAddresses = [contactCopy emailAddresses];
  stringValue = [emailAddresses count];

  if (stringValue)
  {
    emailAddresses2 = [contactCopy emailAddresses];
    firstObject = [emailAddresses2 firstObject];

    stringValue = [firstObject value];
    v13 = 0;
    goto LABEL_5;
  }

  v13 = 5;
LABEL_6:
  v16 = stringValue;
  *address = stringValue;
  *kind = v13;
}

- (id)recipientWithContactProperty:(id)property
{
  propertyCopy = property;
  v4 = [propertyCopy key];
  v5 = [v4 isEqualToString:*MEMORY[0x1E695C208]];

  if (v5)
  {
    value = [propertyCopy value];
  }

  else
  {
    v7 = [propertyCopy key];
    v8 = [v7 isEqualToString:*MEMORY[0x1E695C330]];

    if (v8)
    {
      value2 = [propertyCopy value];
      value = [value2 stringValue];
    }

    else
    {
      value = 0;
    }
  }

  if ([value length])
  {
    v10 = +[CKRecipientGenerator sharedRecipientGenerator];
    v11 = [v10 recipientWithAddress:value];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)recipientWithAddress:(id)address
{
  v25 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  if (addressCopy)
  {
    mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
    v5 = [mEMORY[0x1E69A7FD0] fetchCNContactForHandleWithID:addressCopy];

    v6 = MEMORY[0x193AF5D40](addressCopy);
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
    mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
    v12 = [mEMORY[0x1E69A5A80] __ck_bestAccountForAddress:v10];

    v13 = [v12 imHandleWithID:v10];
    if (CKIsRunningInFullCKClient() || CKIsRunningUnitTests())
    {
      v14 = [[CKIMComposeRecipient alloc] initWithHandle:v13];
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E6996408]) initWithContact:v5 address:addressCopy kind:v7];
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
        v20 = addressCopy;
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