@interface CKIMComposeRecipient
- (BOOL)isEqual:(id)a3;
- (CKIMComposeRecipient)initWithCoder:(id)a3;
- (CKIMComposeRecipient)initWithHandle:(id)a3;
- (id)displayString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKIMComposeRecipient

- (CKIMComposeRecipient)initWithHandle:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v19.receiver = self;
  v19.super_class = CKIMComposeRecipient;
  v6 = [(CKIMComposeRecipient *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handle, a3);
    v8 = [v5 ID];
    v9 = [v8 length] == 0;

    if (v9 && IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = v5;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Handle passed to CKIMComposeRecipient was nil or has no address: %@", buf, 0xCu);
      }
    }

    v11 = [MEMORY[0x1E69A7FD0] sharedInstance];
    v12 = [v5 ID];
    v13 = [v11 fetchCNContactForHandleWithID:v12];

    v14 = [v5 ID];
    if ([v14 _appearsToBePhoneNumber])
    {
      v15 = 1;
    }

    else if ([v14 _appearsToBeEmail])
    {
      v15 = 0;
    }

    else
    {
      v15 = 2;
    }

    v16 = [(IMHandle *)v7->_handle ID];
    v18.receiver = v7;
    v18.super_class = CKIMComposeRecipient;
    v7 = [(CKIMComposeRecipient *)&v18 initWithContact:v13 address:v16 kind:v15];
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CKIMComposeRecipient;
  v4 = a3;
  [(CKIMComposeRecipient *)&v6 encodeWithCoder:v4];
  v5 = [(CKIMComposeRecipient *)self handle:v6.receiver];
  [v4 encodeObject:v5 forKey:@"handle"];
}

- (CKIMComposeRecipient)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKIMComposeRecipient;
  v5 = [(CKIMComposeRecipient *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v6;
  }

  return v5;
}

- (id)displayString
{
  if ([(CKIMComposeRecipient *)self useAbbreviatedDisplayName])
  {
    v3 = [(IMHandle *)self->_handle _displayNameWithAbbreviation];
  }

  else
  {
    v4 = CKIsRunningInMacCatalyst();
    handle = self->_handle;
    if (v4)
    {
      [(IMHandle *)handle name];
    }

    else
    {
      [(IMHandle *)handle fullName];
    }
    v3 = ;
  }

  v6 = v3;
  if (!v3)
  {
    v7 = CKFrameworkBundle();
    v6 = [v7 localizedStringForKey:@"NO_NAME" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CKIMComposeRecipient *)self handle];
    v7 = [v5 handle];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(CKIMComposeRecipient *)self handle];
  v3 = [v2 hash];

  return v3;
}

@end