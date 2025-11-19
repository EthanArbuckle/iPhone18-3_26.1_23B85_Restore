@interface CKEntity
+ (BOOL)string:(id)a3 hasPrefix:(id)a4;
+ (id)_copyEntityForAddressString:(id)a3 onAccount:(id)a4;
+ (id)copyEntityForAddressString:(id)a3;
+ (id)entityForAddress:(id)a3;
- (BOOL)_allowedByScreenTime;
- (BOOL)isBlocked;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMe;
- (BOOL)isMentionable;
- (CKEntity)initWithChat:(id)a3 imHandle:(id)a4;
- (IMHandle)defaultIMHandle;
- (NSString)IDSCanonicalAddress;
- (NSString)abbreviatedDisplayName;
- (NSString)fullName;
- (NSString)name;
- (NSString)namePrefixedWithMaybe;
- (NSString)originalAddress;
- (NSString)propertyType;
- (NSString)rawAddress;
- (NSString)textToneIdentifier;
- (NSString)textVibrationIdentifier;
- (UIImage)locationMapViewContactImage;
- (UIImage)locationShareBalloonContactImage;
- (id)_createNicknameContactForNickname:(id)a3 emailAddresses:(id)a4 phoneNumbers:(id)a5 includeImageData:(BOOL)a6;
- (id)_croppedImageFromImageData:(id)a3;
- (id)_nicknameContactForNickname:(id)a3 emailAddresses:(id)a4 phoneNumbers:(id)a5 includeImageData:(BOOL)a6;
- (id)cnContactWithKeys:(id)a3 shouldFetchSuggestedContact:(BOOL)a4;
- (id)description;
- (id)displayNameMatchingInputText:(id)a3;
- (id)mentionTokens;
- (id)mentionsHandleID;
- (id)personViewControllerWithDelegate:(id)a3 isUnknown:(BOOL *)a4;
- (id)personViewControllerWithDelegate:(id)a3 isUnknown:(BOOL *)a4 contactStoreProvider:(id)a5;
- (id)pinnedConversationContactItemIdentifier;
- (unint64_t)hash;
- (void)_invalidateContactStoreCache:(id)a3;
- (void)_invalidatePartialContactStoreCache:(id)a3;
- (void)addToken:(id)a3 ifAvailableToTokens:(id)a4;
- (void)setEnlargedContactImage:(BOOL)a3;
@end

@implementation CKEntity

- (IMHandle)defaultIMHandle
{
  v3 = [(IMHandle *)self->_handle account];
  v4 = v3;
  if (v3 && (![v3 isActive] || (objc_msgSend(v4, "isOperational") & 1) == 0))
  {
    v5 = self->_chatAccount;
    if (!v5)
    {
      v6 = [MEMORY[0x1E69A5A80] sharedInstance];
      v7 = [(IMHandle *)self->_handle ID];
      v5 = [v6 __ck_bestAccountForAddress:v7];
    }

    v8 = self->_handle;
    v9 = [(IMHandle *)v8 imHandleForOtherAccount:v5];
    handle = self->_handle;
    self->_handle = v9;
  }

  v11 = self->_handle;
  v12 = v11;

  return v11;
}

- (NSString)rawAddress
{
  v2 = [(CKEntity *)self defaultIMHandle];
  v3 = [v2 ID];

  return v3;
}

- (NSString)IDSCanonicalAddress
{
  v3 = [(CKEntity *)self rawAddress];
  v4 = IMStripFormattingFromAddress();

  v5 = [(CKEntity *)self propertyType];
  v6 = *MEMORY[0x1E695C330];

  if (v5 == v6)
  {
    v9 = IDSCopyIDForPhoneNumber();
  }

  else
  {
    v7 = [(CKEntity *)self propertyType];
    v8 = *MEMORY[0x1E695C208];

    if (v7 != v8)
    {
      goto LABEL_6;
    }

    v9 = MEMORY[0x193AF5170](v4);
  }

  v10 = v9;

  v4 = v10;
LABEL_6:

  return v4;
}

- (NSString)propertyType
{
  v2 = [(CKEntity *)self defaultIMHandle];
  v3 = [v2 ID];
  IsEmail = IMStringIsEmail();

  v5 = MEMORY[0x1E695C208];
  if (!IsEmail)
  {
    v5 = MEMORY[0x1E695C330];
  }

  v6 = *v5;

  return v6;
}

+ (id)_copyEntityForAddressString:(id)a3 onAccount:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (CKIsRunningInFullCKClient())
  {
    if (v5)
    {
      v7 = [MEMORY[0x1E695DEC8] arrayWithObject:v5];
      v8 = [v6 __ck_handlesFromAddressStrings:v7];
      v9 = [v8 __imFirstObject];

      if (v9)
      {
        v10 = [[CKEntity alloc] initWithIMHandle:v9];

LABEL_8:
        goto LABEL_9;
      }
    }

    else
    {
      v7 = 0;
    }

    v10 = [[CKEntity alloc] initWithIMHandle:0];
    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

+ (id)copyEntityForAddressString:(id)a3
{
  v4 = MEMORY[0x1E69A5A80];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [v6 __ck_bestAccountForAddress:v5];

  v8 = [a1 _copyEntityForAddressString:v5 onAccount:v7];
  return v8;
}

- (CKEntity)initWithChat:(id)a3 imHandle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CKEntity;
  v9 = [(CKEntity *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_handle, a4);
    objc_storeStrong(&v10->_chat, a3);
    v11 = [v7 account];
    chatAccount = v10->_chatAccount;
    v10->_chatAccount = v11;

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v10 selector:sel__invalidateContactStoreCache_ name:*MEMORY[0x1E69A6830] object:0];

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v10 selector:sel__invalidatePartialContactStoreCache_ name:*MEMORY[0x1E69A6870] object:0];
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CKEntity;
  v4 = [(CKEntity *)&v8 description];
  v5 = [(CKEntity *)self defaultIMHandle];
  v6 = [v3 stringWithFormat:@"%@ [Default IM Handle: %@]", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CKEntity *)self defaultIMHandle];
    v6 = [v4 defaultIMHandle];
    v7 = [v5 matchesIMHandle:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(CKEntity *)self defaultIMHandle];
  v3 = [v2 hash];

  return v3;
}

+ (id)entityForAddress:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = IMStripFormattingFromAddress();
    v5 = [MEMORY[0x1E69A5A80] sharedInstance];
    v6 = [v5 __ck_bestAccountForAddress:v4];

    if (v6)
    {
      v7 = [v6 imHandleWithID:v4];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 ID];

        if (v9)
        {
          v9 = [[CKEntity alloc] initWithIMHandle:v8];
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_allowedByScreenTime
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [(CKEntity *)self chat];

  if (v3)
  {
    v4 = [(CKEntity *)self chat];
    v5 = [v4 allowedByScreenTime];
  }

  else
  {
    v6 = [(CKEntity *)self handle];
    v7 = [v6 ID];

    if (!v7)
    {
      return 1;
    }

    v4 = [MEMORY[0x1E69A5B68] sharedInstance];
    v8 = [(CKEntity *)self handle];
    v9 = [v8 ID];
    v12[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v5 = [v4 allowedToShowConversationWithHandleIDs:v10 sync:1 context:0];
  }

  return v5;
}

- (id)cnContactWithKeys:(id)a3 shouldFetchSuggestedContact:(BOOL)a4
{
  v4 = a4;
  v75[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(IMHandle *)self->_handle cnContactWithKeys:v6];
  handle = self->_handle;
  if (!v7)
  {
    if (([(IMHandle *)handle isBusiness]& 1) != 0 || [(IMHandle *)self->_handle isStewieRoadside])
    {
      v14 = [(IMHandle *)self->_handle brand];
      if (v14)
      {
        v15 = [(CNContact *)self->_cnContact imageData];
        v16 = v15 == 0;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__CKEntity_cnContactWithKeys_shouldFetchSuggestedContact___block_invoke;
    aBlock[3] = &unk_1E72EECF0;
    aBlock[4] = self;
    v27 = _Block_copy(aBlock);
    cnContact = self->_cnContact;
    if (cnContact)
    {
      if (v16)
      {
        v29 = [(CNContact *)self->_cnContact mutableCopy];
        v27[2](v27, v29);
        [(CKEntity *)self setCnContact:v29];
        cnContact = self->_cnContact;
      }

      v30 = cnContact;
LABEL_59:
      v26 = v30;

      goto LABEL_60;
    }

    v30 = objc_alloc_init(MEMORY[0x1E695CF18]);
    v31 = [(IMHandle *)self->_handle ID];
    if ([v31 _appearsToBeEmail])
    {
      v32 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:v31];
      v75[0] = v32;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:1];
      [(CNContact *)v30 setEmailAddresses:v33];
    }

    else
    {
      if (![v31 _appearsToBePhoneNumber])
      {
        goto LABEL_36;
      }

      v34 = MEMORY[0x1E695CEE0];
      v35 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v31];
      v32 = [v34 labeledValueWithLabel:0 value:v35];

      v74 = v32;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
      [(CNContact *)v30 setPhoneNumbers:v33];
    }

LABEL_36:
    if (v16)
    {
      v27[2](v27, v30);
    }

    v36 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v37 = [v36 stewieEnabled];

    if (!v37)
    {
      goto LABEL_50;
    }

    if ([(IMHandle *)self->_handle isStewieEmergency]&& ([(CNContact *)self->_cnContact imageData], v38 = objc_claimAutoreleasedReturnValue(), v39 = v38 == 0, v38, v39))
    {
      v40 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"SOS_50"];
      v53 = UIImagePNGRepresentation(v40);
      [(CNContact *)v30 setImageData:v53];
    }

    else
    {
      if (![(IMHandle *)self->_handle isStewieRoadside])
      {
        goto LABEL_50;
      }

      v40 = [(CNContact *)self->_cnContact imageData];
      if (v40)
      {
        goto LABEL_49;
      }

      v41 = [(IMHandle *)self->_handle brandSquareLogoImageData];
      v42 = v41 == 0;

      if (!v42)
      {
        goto LABEL_50;
      }

      v77.width = 100.0;
      v77.height = 100.0;
      UIGraphicsBeginImageContextWithOptions(v77, 0, 0.0);
      c = UIGraphicsGetCurrentContext();
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      components[0] = xmmword_190DCEF40;
      components[1] = unk_190DCEF50;
      v44 = CGColorCreate(DeviceRGB, components);
      *v71 = xmmword_190DCEF60;
      v72 = unk_190DCEF70;
      v45 = CGColorCreate(DeviceRGB, v71);
      v70[0] = v44;
      v70[1] = v45;
      v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
      *locations = xmmword_190DCEF30;
      v47 = CGGradientCreateWithColors(DeviceRGB, v46, locations);
      v80.size.width = 100.0;
      v80.origin.x = 0.0;
      v80.origin.y = 0.0;
      v80.size.height = 100.0;
      MinY = CGRectGetMinY(v80);
      v81.size.width = 100.0;
      v81.origin.x = 0.0;
      v81.origin.y = 0.0;
      v81.size.height = 100.0;
      v79.y = CGRectGetMaxY(v81);
      v78.x = 0.0;
      v79.x = 0.0;
      v78.y = MinY;
      CGContextDrawLinearGradient(c, v47, v78, v79, 0);
      CGGradientRelease(v47);
      CGColorRelease(v44);
      CGColorRelease(v45);
      CGColorSpaceRelease(DeviceRGB);
      v49 = MEMORY[0x1E69DCAD8];
      v50 = [MEMORY[0x1E69DC888] whiteColor];
      v68[0] = v50;
      v51 = [MEMORY[0x1E69DC888] whiteColor];
      v68[1] = v51;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
      v40 = [v49 configurationWithPaletteColors:v52];

      v53 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"car.front.waves.down.fill" withConfiguration:v40];
      v82.size.width = 100.0;
      v82.origin.x = 0.0;
      v82.origin.y = 0.0;
      v82.size.height = 100.0;
      v83 = CGRectInset(v82, 20.0, 20.0);
      [v53 drawInRect:{v83.origin.x, v83.origin.y, v83.size.width, v83.size.height}];
      v54 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      if (v54)
      {
        v55 = UIImagePNGRepresentation(v54);
        [(CNContact *)v30 setImageData:v55];
      }
    }

LABEL_49:
LABEL_50:
    v56 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v57 = [v56 isMergeBusinessSenderIndiaEnabled];

    if (v57 && (([(IMChat *)self->_chat isMergedBusinessThread]& 1) != 0 || [(IMHandle *)self->_handle isIndiaShortCode]))
    {
      [(CNContact *)v30 setContactType:1];
    }

    v58 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v59 = [v58 isTranscriptSharingEnabled];

    if (v59)
    {
      if ([(IMHandle *)self->_handle isStewieTranscriptSharingHandle])
      {
        v60 = [(CNContact *)self->_cnContact imageData];
        v61 = v60 == 0;

        if (v61)
        {
          v62 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"SOS_50"];
          v63 = UIImagePNGRepresentation(v62);
          [(CNContact *)v30 setImageData:v63];
        }
      }
    }

    [(CKEntity *)self setCnContact:v30];

    goto LABEL_59;
  }

  if (([(IMHandle *)handle isContact]& 1) == 0)
  {
    v9 = [MEMORY[0x1E69A5C10] sharedInstance];
    v10 = [v9 nicknameForHandle:self->_handle];

    if (v10)
    {
      v11 = [v7 emailAddresses];
      v12 = [v7 phoneNumbers];
      v13 = [(CKEntity *)self _nicknameContactForNickname:v10 emailAddresses:v11 phoneNumbers:v12 includeImageData:[(CKEntity *)self _allowedByScreenTime]];

      v7 = v13;
    }

    else if (v4 && [(IMHandle *)self->_handle hasSuggestedName])
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "If we have a suggested name, we should return a contact for it", buf, 2u);
        }
      }

      v18 = [MEMORY[0x1E69A5CC0] sharedInstance];
      v19 = [(IMHandle *)self->_handle displayID];
      v20 = [v18 fetchCNContactForSuggestedHandle:v19];

      if (v20)
      {
        v21 = [v20 mutableCopy];

        v7 = v21;
      }
    }

    v22 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v23 = [v22 isMergeBusinessSenderIndiaEnabled];

    if (v23 && (([(IMChat *)self->_chat isMergedBusinessThread]& 1) != 0 || [(IMHandle *)self->_handle isIndiaShortCode]))
    {
      v24 = [v7 mutableCopy];
      [v24 setContactType:1];
      v25 = [v24 copy];

      v7 = v25;
    }
  }

  v26 = v7;
LABEL_60:

  return v26;
}

void __58__CKEntity_cnContactWithKeys_shouldFetchSuggestedContact___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([*(a1 + 32) enlargedContactImage])
  {
    v3 = [*(*(a1 + 32) + 40) brandSquareLogoImageData];

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = [v4[5] brandSquareLogoImageData];
      v3 = [v4 _croppedImageFromImageData:v5];
    }
  }

  else
  {
    v3 = 0;
  }

  [*(a1 + 32) _setBusinessInfoForMutableContact:v6 enlargedImageData:v3];
}

- (id)_nicknameContactForNickname:(id)a3 emailAddresses:(id)a4 phoneNumbers:(id)a5 includeImageData:(BOOL)a6
{
  v6 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  p_cachedCNContactForNickname = &self->_cachedCNContactForNickname;
  if (!self->_cachedCNContactForNickname)
  {
    goto LABEL_17;
  }

  cachedNicknameForCNContact = self->_cachedNicknameForCNContact;
  if (!cachedNicknameForCNContact)
  {
    goto LABEL_17;
  }

  v29 = [(IMNickname *)cachedNicknameForCNContact isUpdateFromNickname:v11 withOptions:8];
  v16 = [(CNMutableContact *)*p_cachedCNContactForNickname emailAddresses];
  v17 = v12;
  v18 = v16;
  v19 = v18;
  if (v18 == v17)
  {
    v20 = 0;
  }

  else
  {
    v20 = 1;
    if (v17 && v18)
    {
      v20 = [v17 isEqualToArray:v18] ^ 1;
    }
  }

  v28 = v20;

  v21 = [(CNMutableContact *)*p_cachedCNContactForNickname phoneNumbers];
  v22 = v13;
  v23 = v21;
  v24 = v23;
  if (v23 == v22)
  {
    v25 = 0;
  }

  else
  {
    v25 = 1;
    if (v22 && v23)
    {
      v25 = [v22 isEqualToArray:v23] ^ 1;
    }
  }

  if (((v29 | v28) & 1) == 0 && (v25 & 1) == 0 && self->_cachedCNContactForNicknameIncludesImageData == v6)
  {
    v26 = *p_cachedCNContactForNickname;
  }

  else
  {
LABEL_17:
    v26 = [(CKEntity *)self _createNicknameContactForNickname:v11 emailAddresses:v12 phoneNumbers:v13 includeImageData:v6];
    objc_storeStrong(&self->_cachedCNContactForNickname, v26);
    objc_storeStrong(&self->_cachedNicknameForCNContact, a3);
    self->_cachedCNContactForNicknameIncludesImageData = v6;
  }

  return v26;
}

- (id)_createNicknameContactForNickname:(id)a3 emailAddresses:(id)a4 phoneNumbers:(id)a5 includeImageData:(BOOL)a6
{
  v6 = a6;
  v21 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v6)
  {
    v12 = [v9 avatar];
    v13 = [v12 imageData];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v9 firstName];
  v15 = [v9 lastName];
  v16 = objc_alloc_init(MEMORY[0x1E695CF18]);
  [v16 setImageData:v13];
  [v16 setGivenName:v14];
  [v16 setFamilyName:v15];
  [v16 setEmailAddresses:v10];
  [v16 setPhoneNumbers:v11];
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v16;
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Created nickname contact: %@", &v19, 0xCu);
    }
  }

  return v16;
}

- (BOOL)isBlocked
{
  v3 = [MEMORY[0x1E69A7F20] sharedBlockList];
  v4 = [(CKEntity *)self rawAddress];
  v5 = [v3 addressIsBlocked:v4];

  return v5;
}

- (BOOL)isMe
{
  v2 = [(CKEntity *)self defaultIMHandle];
  v3 = [v2 isLoginIMHandle];

  return v3;
}

- (void)setEnlargedContactImage:(BOOL)a3
{
  self->_enlargedContactImage = a3;
  cnContact = self->_cnContact;
  self->_cnContact = 0;
}

- (NSString)abbreviatedDisplayName
{
  v2 = [(CKEntity *)self defaultIMHandle];
  v3 = [v2 _displayNameWithAbbreviation];

  return v3;
}

- (void)_invalidateContactStoreCache:(id)a3
{
  cnContact = self->_cnContact;
  self->_cnContact = 0;
}

- (void)_invalidatePartialContactStoreCache:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69A6868]];
  if ([v6 length])
  {
    v7 = self->_handle;
    v8 = [(CKEntity *)self defaultIMHandle];
    v9 = [(IMHandle *)v8 ID];
    if ([v9 length] && objc_msgSend(v9, "isEqualToString:", v6))
    {
      v10 = IMHandleLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412546;
        v17 = v6;
        v18 = 2112;
        v19 = self;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_DEFAULT, "Received partial change notification for UID %@. Invalidating contact for IMHandle: %@", &v16, 0x16u);
      }

      if (![(IMHandle *)self->_handle isBusiness])
      {
        goto LABEL_10;
      }

      if (v7 != v8)
      {
        cnContact = self->_cnContact;
        self->_cnContact = 0;
      }

      v12 = [v4 object];
      v13 = v12 == v8;

      if (v13)
      {
LABEL_10:
        v14 = self->_cnContact;
        self->_cnContact = 0;
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Received a partial change notification without a UID. Ignoring.", &v16, 2u);
    }
  }
}

- (NSString)originalAddress
{
  v3 = [(CKEntity *)self defaultIMHandle];
  v4 = [v3 originalID];

  if (![v4 length])
  {
    v5 = [(CKEntity *)self rawAddress];

    v4 = v5;
  }

  return v4;
}

- (NSString)fullName
{
  v2 = [(CKEntity *)self defaultIMHandle];
  v3 = [v2 fullName];

  if (!v3)
  {
    v4 = CKFrameworkBundle();
    v3 = [v4 localizedStringForKey:@"Unknown" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  return v3;
}

- (NSString)name
{
  v2 = [(CKEntity *)self defaultIMHandle];
  v3 = [v2 name];

  if (!v3)
  {
    v4 = CKFrameworkBundle();
    v3 = [v4 localizedStringForKey:@"Unknown" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  return v3;
}

- (NSString)namePrefixedWithMaybe
{
  v2 = [(CKEntity *)self defaultIMHandle];
  v3 = [v2 namePrefixedWithMaybe];

  return v3;
}

- (NSString)textToneIdentifier
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = *MEMORY[0x1E695C3F8];
  v3 = v9[0];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v5 = [(CKEntity *)self cnContactWithKeys:v4];
  v6 = [v5 valueForKey:v3];

  v7 = [v6 sound];

  return v7;
}

- (NSString)textVibrationIdentifier
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = *MEMORY[0x1E695C3F8];
  v3 = v9[0];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v5 = [(CKEntity *)self cnContactWithKeys:v4];
  v6 = [v5 valueForKey:v3];

  v7 = [v6 vibration];

  return v7;
}

- (UIImage)locationMapViewContactImage
{
  v3 = [(CKEntity *)self defaultIMHandle];

  if (v3)
  {
    v4 = MEMORY[0x193AF5EC0](@"FMFMapViewController", @"FMFUI");
    if (v4)
    {
      [v4 annotationImageSize];
      v6 = v5;
    }

    else
    {
      v6 = 0.0;
    }

    v8 = [(CKEntity *)self rawAddress];
    v7 = [CKAddressBook locationSharingContactImageOfDiameter:v8 forID:1 useCustomFont:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (UIImage)locationShareBalloonContactImage
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 locationShareBalloonContactImageDiameter];
  v5 = v4;
  v6 = [(CKEntity *)self rawAddress];
  v7 = [CKAddressBook locationSharingContactImageOfDiameter:v6 forID:0 useCustomFont:v5];

  return v7;
}

- (id)_croppedImageFromImageData:(id)a3
{
  v3 = [MEMORY[0x1E69DCAB8] imageWithData:a3];
  [v3 size];
  v5 = v4 * 0.17;
  [v3 size];
  v7 = v6 * 0.14;
  [v3 size];
  v9 = v8 + v5 * -2.0;
  [v3 size];
  v11 = v10 + v5 * -2.0;
  v12 = [v3 CGImage];
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  v13 = CGImageCreateWithImageInRect(v12, v18);
  v14 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v13];
  CGImageRelease(v13);
  v15 = UIImagePNGRepresentation(v14);

  return v15;
}

- (BOOL)isMentionable
{
  v2 = [(CKEntity *)self defaultIMHandle];
  v3 = [v2 isContact];

  return v3;
}

- (id)mentionTokens
{
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:9];
  v4 = [(CKEntity *)self abbreviatedDisplayName];
  v5 = [v4 mentionsSafeText];
  [(CKEntity *)self addToken:v5 ifAvailableToTokens:v3];

  v6 = [(CKEntity *)self name];
  v7 = [v6 mentionsSafeText];
  [(CKEntity *)self addToken:v7 ifAvailableToTokens:v3];

  v8 = [(CKEntity *)self fullName];
  v9 = [v8 mentionsSafeText];
  [(CKEntity *)self addToken:v9 ifAvailableToTokens:v3];

  v10 = [(CKEntity *)self defaultIMHandle];
  v11 = [v10 nickname];
  v12 = [v11 mentionsSafeText];
  [(CKEntity *)self addToken:v12 ifAvailableToTokens:v3];

  v13 = [(CKEntity *)self defaultIMHandle];
  v14 = [v13 firstName];
  v15 = [v14 mentionsSafeText];
  [(CKEntity *)self addToken:v15 ifAvailableToTokens:v3];

  v16 = [(CKEntity *)self defaultIMHandle];
  v17 = [v16 lastName];
  v18 = [v17 mentionsSafeText];
  [(CKEntity *)self addToken:v18 ifAvailableToTokens:v3];

  v19 = [(CKEntity *)self defaultIMHandle];
  v20 = [v19 phoneticFirstName];
  v21 = [v20 mentionsSafeText];
  [(CKEntity *)self addToken:v21 ifAvailableToTokens:v3];

  v22 = [(CKEntity *)self defaultIMHandle];
  v23 = [v22 phoneticLastName];
  v24 = [v23 mentionsSafeText];
  [(CKEntity *)self addToken:v24 ifAvailableToTokens:v3];

  v25 = [(CKEntity *)self defaultIMHandle];
  v26 = [v25 phoneticFullName];
  v27 = [v26 mentionsSafeText];
  [(CKEntity *)self addToken:v27 ifAvailableToTokens:v3];

  v28 = [v3 copy];

  return v28;
}

- (void)addToken:(id)a3 ifAvailableToTokens:(id)a4
{
  v6 = a3;
  v5 = a4;
  if ([v6 length])
  {
    [v5 addObject:v6];
  }
}

- (id)mentionsHandleID
{
  v2 = [(CKEntity *)self defaultIMHandle];
  v3 = [v2 ID];

  return v3;
}

- (id)displayNameMatchingInputText:(id)a3
{
  v4 = a3;
  v5 = [v4 mentionsSafeText];
  v6 = [(CKEntity *)self abbreviatedDisplayName];
  v7 = [v6 mentionsSafeText];
  v8 = [v7 isEqualToIgnoringCase:v5];

  if (v8)
  {
    v9 = [(CKEntity *)self abbreviatedDisplayName];
LABEL_7:
    v16 = v9;
    goto LABEL_8;
  }

  v10 = [(CKEntity *)self name];
  v11 = [v10 mentionsSafeText];
  v12 = [v11 isEqualToIgnoringCase:v5];

  if (v12)
  {
    v9 = [(CKEntity *)self name];
    goto LABEL_7;
  }

  v13 = [(CKEntity *)self fullName];
  v14 = [v13 mentionsSafeText];
  v15 = [v14 isEqualToIgnoringCase:v5];

  if (v15)
  {
    v9 = [(CKEntity *)self fullName];
    goto LABEL_7;
  }

  v18 = [(CKEntity *)self defaultIMHandle];
  v19 = [v18 nickname];
  v20 = [v19 mentionsSafeText];
  v21 = [v20 isEqualToIgnoringCase:v5];

  v22 = [(CKEntity *)self defaultIMHandle];
  v23 = v22;
  if (v21)
  {
    v24 = [v22 nickname];
  }

  else
  {
    v25 = [v22 firstName];
    v26 = [v25 mentionsSafeText];
    v27 = [v26 isEqualToIgnoringCase:v5];

    v28 = [(CKEntity *)self defaultIMHandle];
    v23 = v28;
    if (v27)
    {
      v24 = [v28 firstName];
    }

    else
    {
      v29 = [v28 lastName];
      v30 = [v29 mentionsSafeText];
      v31 = [v30 isEqualToIgnoringCase:v5];

      v32 = [(CKEntity *)self defaultIMHandle];
      v23 = v32;
      if (v31)
      {
        v24 = [v32 lastName];
      }

      else
      {
        v33 = [v32 phoneticFirstName];
        v34 = [v33 mentionsSafeText];
        v35 = [v34 isEqualToIgnoringCase:v5];

        v36 = [(CKEntity *)self defaultIMHandle];
        v23 = v36;
        if (v35)
        {
          v24 = [v36 phoneticFirstName];
        }

        else
        {
          v37 = [v36 phoneticLastName];
          v38 = [v37 mentionsSafeText];
          v39 = [v38 isEqualToIgnoringCase:v5];

          v40 = [(CKEntity *)self defaultIMHandle];
          v23 = v40;
          if (v39)
          {
            v24 = [v40 phoneticLastName];
          }

          else
          {
            v41 = [v40 phoneticFullName];
            v42 = [v41 mentionsSafeText];
            v43 = [v42 isEqualToIgnoringCase:v5];

            if (!v43)
            {
              v9 = v4;
              goto LABEL_7;
            }

            v23 = [(CKEntity *)self defaultIMHandle];
            v24 = [v23 phoneticFullName];
          }
        }
      }
    }
  }

  v16 = v24;

LABEL_8:

  return v16;
}

+ (BOOL)string:(id)a3 hasPrefix:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a3;
  v7 = [v5 predicateWithFormat:@"SELF beginswith[cld] %@", a4];
  LOBYTE(v5) = [v7 evaluateWithObject:v6];

  return v5;
}

- (id)personViewControllerWithDelegate:(id)a3 isUnknown:(BOOL *)a4
{
  v6 = a3;
  v7 = +[_CKEntityContactStoreProvider sharedInstance];
  v8 = [(CKEntity *)self personViewControllerWithDelegate:v6 isUnknown:a4 contactStoreProvider:v7];

  return v8;
}

- (id)personViewControllerWithDelegate:(id)a3 isUnknown:(BOOL *)a4 contactStoreProvider:(id)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(CKEntity *)self defaultIMHandle];
  v9 = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
  v16[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v11 = [v8 cnContactWithKeys:v10];

  if ([MEMORY[0x1E69A7FD0] isCNContactAKnownContact:v11])
  {
    *a4 = 0;
    v12 = [MEMORY[0x1E695D148] viewControllerForContact:v11];
    [v12 setDisplayMode:2];
    [v12 setAllowsActions:1];
    [v12 setAllowsEditing:1];
    [v12 setShouldShowLinkedContacts:1];
    [v12 setActions:{objc_msgSend(v12, "actions") | 0x80}];
    v13 = [(CKEntity *)self propertyType];
    [v12 highlightPropertyWithKey:v13 identifier:0];
  }

  else
  {
    *a4 = 1;
    v12 = [MEMORY[0x1E695D148] viewControllerForUnknownContact:v11];
    [v12 setDisplayMode:2];
    v14 = [(CKEntity *)self propertyType];
    [v12 setPrimaryPropertyKey:v14];

    [v12 setAllowsActions:1];
    [v12 setActions:{objc_msgSend(v12, "actions") | 0x80}];
  }

  [v12 setDelegate:v7];

  return v12;
}

- (id)pinnedConversationContactItemIdentifier
{
  v3 = [(CKEntity *)self rawAddress];
  if (![v3 length])
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CKEntity(CKPinnedConversationContactItemProvider) *)v4 pinnedConversationContactItemIdentifier];
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self];

    v3 = v5;
  }

  return v3;
}

@end