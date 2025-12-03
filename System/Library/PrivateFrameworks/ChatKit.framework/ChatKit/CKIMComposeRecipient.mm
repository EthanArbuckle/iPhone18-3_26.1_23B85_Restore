@interface CKIMComposeRecipient
- (BOOL)isEqual:(id)equal;
- (CKIMComposeRecipient)initWithCoder:(id)coder;
- (CKIMComposeRecipient)initWithHandle:(id)handle;
- (id)displayString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKIMComposeRecipient

- (CKIMComposeRecipient)initWithHandle:(id)handle
{
  v22 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v19.receiver = self;
  v19.super_class = CKIMComposeRecipient;
  v6 = [(CKIMComposeRecipient *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handle, handle);
    v8 = [handleCopy ID];
    v9 = [v8 length] == 0;

    if (v9 && IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = handleCopy;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Handle passed to CKIMComposeRecipient was nil or has no address: %@", buf, 0xCu);
      }
    }

    mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
    v12 = [handleCopy ID];
    v13 = [mEMORY[0x1E69A7FD0] fetchCNContactForHandleWithID:v12];

    v14 = [handleCopy ID];
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

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CKIMComposeRecipient;
  coderCopy = coder;
  [(CKIMComposeRecipient *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CKIMComposeRecipient *)self handle:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"handle"];
}

- (CKIMComposeRecipient)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CKIMComposeRecipient;
  v5 = [(CKIMComposeRecipient *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v6;
  }

  return v5;
}

- (id)displayString
{
  if ([(CKIMComposeRecipient *)self useAbbreviatedDisplayName])
  {
    _displayNameWithAbbreviation = [(IMHandle *)self->_handle _displayNameWithAbbreviation];
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
    _displayNameWithAbbreviation = ;
  }

  v6 = _displayNameWithAbbreviation;
  if (!_displayNameWithAbbreviation)
  {
    v7 = CKFrameworkBundle();
    v6 = [v7 localizedStringForKey:@"NO_NAME" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    handle = [(CKIMComposeRecipient *)self handle];
    handle2 = [v5 handle];

    v8 = [handle isEqual:handle2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  handle = [(CKIMComposeRecipient *)self handle];
  v3 = [handle hash];

  return v3;
}

@end