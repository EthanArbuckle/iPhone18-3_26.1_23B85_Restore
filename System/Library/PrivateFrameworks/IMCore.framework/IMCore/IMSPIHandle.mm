@interface IMSPIHandle
- (BOOL)isBusiness;
- (BOOL)isEqual:(id)equal;
- (IMSPIHandle)initWithAddress:(id)address countryCode:(id)code isMe:(BOOL)me;
- (NSString)businessName;
- (NSString)cnContactID;
- (NSString)displayName;
- (id)description;
- (id)handle;
- (unint64_t)hash;
@end

@implementation IMSPIHandle

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_address(self, a2, v2);
  v8 = objc_msgSend_businessName(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v4, v9, @"IMSPIHandle: %p [Address: %@  Business Name: %@]", self, v5, v8);

  return v10;
}

- (NSString)businessName
{
  v3 = objc_msgSend_address(self, a2, v2);
  if (MEMORY[0x1AC56C3A0]())
  {
    v5 = objc_msgSend_placeholderNameForBrandURI_(MEMORY[0x1E69A7F28], v4, v3);
    v6 = dispatch_semaphore_create(0);
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_1A8259CB0;
    v32 = sub_1A825AF84;
    v33 = 0;
    v9 = objc_msgSend_sharedInstance(IMHandleRegistrar, v7, v8);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1A83CFD48;
    v25[3] = &unk_1E7811E08;
    v27 = &v28;
    v10 = v6;
    v26 = v10;
    v12 = objc_msgSend_businessNameForUID_updateHandler_(v9, v11, v3, v25);

    v15 = objc_msgSend_length(v12, v13, v14);
    v16 = v12;
    if (!v15)
    {
      v17 = dispatch_time(0, 3000000000);
      if (dispatch_semaphore_wait(v10, v17) && IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *v24 = 0;
          _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Business name lookup timed out", v24, 2u);
        }
      }

      if (!objc_msgSend_length(v29[5], v18, v19))
      {
        goto LABEL_11;
      }

      v16 = v29[5];
    }

    v21 = v16;

    v5 = v21;
LABEL_11:
    v22 = v5;

    _Block_object_dispose(&v28, 8);
    goto LABEL_13;
  }

  v22 = 0;
LABEL_13:

  return v22;
}

- (IMSPIHandle)initWithAddress:(id)address countryCode:(id)code isMe:(BOOL)me
{
  addressCopy = address;
  codeCopy = code;
  v14.receiver = self;
  v14.super_class = IMSPIHandle;
  v11 = [(IMSPIHandle *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_address, address);
    objc_storeStrong(&v12->_countryCode, code);
    v12->_isMe = me;
  }

  return v12;
}

- (BOOL)isBusiness
{
  v3 = objc_msgSend_address(self, a2, v2);
  v4 = MEMORY[0x1AC56C3A0]();

  return v4;
}

- (id)handle
{
  if (!self->_haveFetchedIMHandle)
  {
    v4 = objc_msgSend_iMessageService(IMServiceImpl, a2, v2);
    v5 = IMPreferredAccountForService(v4);

    if (v5)
    {
      address = self->_address;
      v7 = IMStripFormattingFromAddress();
      v9 = objc_msgSend_existingIMHandleWithID_(v5, v8, v7);
      imHandle = self->_imHandle;
      self->_imHandle = v9;

      self->_haveFetchedIMHandle = 1;
    }
  }

  v11 = self->_imHandle;

  return v11;
}

- (NSString)displayName
{
  v4 = objc_msgSend_businessName(self, a2, v2);
  if (!objc_msgSend_length(v4, v5, v6))
  {
    v8 = objc_msgSend_displayNameForChat_(self->_imHandle, v7, 0);

    v4 = v8;
  }

  return v4;
}

- (NSString)cnContactID
{
  v3 = objc_msgSend_handle(self, a2, v2);
  v5 = v3;
  if (v3)
  {
    v6 = objc_msgSend_cnContactWithKeys_(v3, v4, MEMORY[0x1E695E0F0]);
    v9 = objc_msgSend_identifier(v6, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      address = self->_address;
      v9 = objc_msgSend_address(v5, v7, v8);
      LODWORD(address) = objc_msgSend_isEqualToString_(address, v10, v9);

      if (address)
      {
        isMe = self->_isMe;
        v14 = isMe != (objc_msgSend_isMe(v5, v11, v12) ^ 1);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_address, a2, v2);
  v6 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v5, self->_isMe);
  v9 = objc_msgSend_hash(v6, v7, v8);

  return v9 ^ v4;
}

@end