@interface CKEntity
+ (BOOL)string:(id)string hasPrefix:(id)prefix;
+ (id)_copyEntityForAddressString:(id)string onAccount:(id)account;
+ (id)copyEntityForAddressString:(id)string;
+ (id)entityForAddress:(id)address;
- (BOOL)_allowedByScreenTime;
- (BOOL)isBlocked;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMe;
- (BOOL)isMentionable;
- (CKEntity)initWithChat:(id)chat imHandle:(id)handle;
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
- (id)_createNicknameContactForNickname:(id)nickname emailAddresses:(id)addresses phoneNumbers:(id)numbers includeImageData:(BOOL)data;
- (id)_croppedImageFromImageData:(id)data;
- (id)_nicknameContactForNickname:(id)nickname emailAddresses:(id)addresses phoneNumbers:(id)numbers includeImageData:(BOOL)data;
- (id)cnContactWithKeys:(id)keys shouldFetchSuggestedContact:(BOOL)contact;
- (id)description;
- (id)displayNameMatchingInputText:(id)text;
- (id)mentionTokens;
- (id)mentionsHandleID;
- (id)personViewControllerWithDelegate:(id)delegate isUnknown:(BOOL *)unknown;
- (id)personViewControllerWithDelegate:(id)delegate isUnknown:(BOOL *)unknown contactStoreProvider:(id)provider;
- (id)pinnedConversationContactItemIdentifier;
- (unint64_t)hash;
- (void)_invalidateContactStoreCache:(id)cache;
- (void)_invalidatePartialContactStoreCache:(id)cache;
- (void)addToken:(id)token ifAvailableToTokens:(id)tokens;
- (void)setEnlargedContactImage:(BOOL)image;
@end

@implementation CKEntity

- (IMHandle)defaultIMHandle
{
  account = [(IMHandle *)self->_handle account];
  v4 = account;
  if (account && (![account isActive] || (objc_msgSend(v4, "isOperational") & 1) == 0))
  {
    v5 = self->_chatAccount;
    if (!v5)
    {
      mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
      v7 = [(IMHandle *)self->_handle ID];
      v5 = [mEMORY[0x1E69A5A80] __ck_bestAccountForAddress:v7];
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
  defaultIMHandle = [(CKEntity *)self defaultIMHandle];
  v3 = [defaultIMHandle ID];

  return v3;
}

- (NSString)IDSCanonicalAddress
{
  rawAddress = [(CKEntity *)self rawAddress];
  v4 = IMStripFormattingFromAddress();

  propertyType = [(CKEntity *)self propertyType];
  v6 = *MEMORY[0x1E695C330];

  if (propertyType == v6)
  {
    v9 = IDSCopyIDForPhoneNumber();
  }

  else
  {
    propertyType2 = [(CKEntity *)self propertyType];
    v8 = *MEMORY[0x1E695C208];

    if (propertyType2 != v8)
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
  defaultIMHandle = [(CKEntity *)self defaultIMHandle];
  v3 = [defaultIMHandle ID];
  IsEmail = IMStringIsEmail();

  v5 = MEMORY[0x1E695C208];
  if (!IsEmail)
  {
    v5 = MEMORY[0x1E695C330];
  }

  v6 = *v5;

  return v6;
}

+ (id)_copyEntityForAddressString:(id)string onAccount:(id)account
{
  stringCopy = string;
  accountCopy = account;
  if (CKIsRunningInFullCKClient())
  {
    if (stringCopy)
    {
      v7 = [MEMORY[0x1E695DEC8] arrayWithObject:stringCopy];
      v8 = [accountCopy __ck_handlesFromAddressStrings:v7];
      __imFirstObject = [v8 __imFirstObject];

      if (__imFirstObject)
      {
        v10 = [[CKEntity alloc] initWithIMHandle:__imFirstObject];

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

+ (id)copyEntityForAddressString:(id)string
{
  v4 = MEMORY[0x1E69A5A80];
  stringCopy = string;
  sharedInstance = [v4 sharedInstance];
  v7 = [sharedInstance __ck_bestAccountForAddress:stringCopy];

  v8 = [self _copyEntityForAddressString:stringCopy onAccount:v7];
  return v8;
}

- (CKEntity)initWithChat:(id)chat imHandle:(id)handle
{
  chatCopy = chat;
  handleCopy = handle;
  v16.receiver = self;
  v16.super_class = CKEntity;
  v9 = [(CKEntity *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_handle, handle);
    objc_storeStrong(&v10->_chat, chat);
    account = [chatCopy account];
    chatAccount = v10->_chatAccount;
    v10->_chatAccount = account;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__invalidateContactStoreCache_ name:*MEMORY[0x1E69A6830] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v10 selector:sel__invalidatePartialContactStoreCache_ name:*MEMORY[0x1E69A6870] object:0];
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CKEntity;
  v4 = [(CKEntity *)&v8 description];
  defaultIMHandle = [(CKEntity *)self defaultIMHandle];
  v6 = [v3 stringWithFormat:@"%@ [Default IM Handle: %@]", v4, defaultIMHandle];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    defaultIMHandle = [(CKEntity *)self defaultIMHandle];
    defaultIMHandle2 = [equalCopy defaultIMHandle];
    v7 = [defaultIMHandle matchesIMHandle:defaultIMHandle2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  defaultIMHandle = [(CKEntity *)self defaultIMHandle];
  v3 = [defaultIMHandle hash];

  return v3;
}

+ (id)entityForAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length])
  {
    v4 = IMStripFormattingFromAddress();
    mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
    v6 = [mEMORY[0x1E69A5A80] __ck_bestAccountForAddress:v4];

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
  chat = [(CKEntity *)self chat];

  if (chat)
  {
    chat2 = [(CKEntity *)self chat];
    allowedByScreenTime = [chat2 allowedByScreenTime];
  }

  else
  {
    handle = [(CKEntity *)self handle];
    v7 = [handle ID];

    if (!v7)
    {
      return 1;
    }

    chat2 = [MEMORY[0x1E69A5B68] sharedInstance];
    handle2 = [(CKEntity *)self handle];
    v9 = [handle2 ID];
    v12[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    allowedByScreenTime = [chat2 allowedToShowConversationWithHandleIDs:v10 sync:1 context:0];
  }

  return allowedByScreenTime;
}

- (id)cnContactWithKeys:(id)keys shouldFetchSuggestedContact:(BOOL)contact
{
  contactCopy = contact;
  v75[1] = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v7 = [(IMHandle *)self->_handle cnContactWithKeys:keysCopy];
  handle = self->_handle;
  if (!v7)
  {
    if (([(IMHandle *)handle isBusiness]& 1) != 0 || [(IMHandle *)self->_handle isStewieRoadside])
    {
      brand = [(IMHandle *)self->_handle brand];
      if (brand)
      {
        imageData = [(CNContact *)self->_cnContact imageData];
        v16 = imageData == 0;
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

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    stewieEnabled = [mEMORY[0x1E69A8070] stewieEnabled];

    if (!stewieEnabled)
    {
      goto LABEL_50;
    }

    if ([(IMHandle *)self->_handle isStewieEmergency]&& ([(CNContact *)self->_cnContact imageData], v38 = objc_claimAutoreleasedReturnValue(), v39 = v38 == 0, v38, v39))
    {
      imageData2 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"SOS_50"];
      v53 = UIImagePNGRepresentation(imageData2);
      [(CNContact *)v30 setImageData:v53];
    }

    else
    {
      if (![(IMHandle *)self->_handle isStewieRoadside])
      {
        goto LABEL_50;
      }

      imageData2 = [(CNContact *)self->_cnContact imageData];
      if (imageData2)
      {
        goto LABEL_49;
      }

      brandSquareLogoImageData = [(IMHandle *)self->_handle brandSquareLogoImageData];
      v42 = brandSquareLogoImageData == 0;

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
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      v68[0] = whiteColor;
      whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
      v68[1] = whiteColor2;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
      imageData2 = [v49 configurationWithPaletteColors:v52];

      v53 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"car.front.waves.down.fill" withConfiguration:imageData2];
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
    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isMergeBusinessSenderIndiaEnabled = [mEMORY[0x1E69A8070]2 isMergeBusinessSenderIndiaEnabled];

    if (isMergeBusinessSenderIndiaEnabled && (([(IMChat *)self->_chat isMergedBusinessThread]& 1) != 0 || [(IMHandle *)self->_handle isIndiaShortCode]))
    {
      [(CNContact *)v30 setContactType:1];
    }

    mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isTranscriptSharingEnabled = [mEMORY[0x1E69A8070]3 isTranscriptSharingEnabled];

    if (isTranscriptSharingEnabled)
    {
      if ([(IMHandle *)self->_handle isStewieTranscriptSharingHandle])
      {
        imageData3 = [(CNContact *)self->_cnContact imageData];
        v61 = imageData3 == 0;

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
    mEMORY[0x1E69A5C10] = [MEMORY[0x1E69A5C10] sharedInstance];
    v10 = [mEMORY[0x1E69A5C10] nicknameForHandle:self->_handle];

    if (v10)
    {
      emailAddresses = [v7 emailAddresses];
      phoneNumbers = [v7 phoneNumbers];
      v13 = [(CKEntity *)self _nicknameContactForNickname:v10 emailAddresses:emailAddresses phoneNumbers:phoneNumbers includeImageData:[(CKEntity *)self _allowedByScreenTime]];

      v7 = v13;
    }

    else if (contactCopy && [(IMHandle *)self->_handle hasSuggestedName])
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

      mEMORY[0x1E69A5CC0] = [MEMORY[0x1E69A5CC0] sharedInstance];
      displayID = [(IMHandle *)self->_handle displayID];
      v20 = [mEMORY[0x1E69A5CC0] fetchCNContactForSuggestedHandle:displayID];

      if (v20)
      {
        v21 = [v20 mutableCopy];

        v7 = v21;
      }
    }

    mEMORY[0x1E69A8070]4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isMergeBusinessSenderIndiaEnabled2 = [mEMORY[0x1E69A8070]4 isMergeBusinessSenderIndiaEnabled];

    if (isMergeBusinessSenderIndiaEnabled2 && (([(IMChat *)self->_chat isMergedBusinessThread]& 1) != 0 || [(IMHandle *)self->_handle isIndiaShortCode]))
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

- (id)_nicknameContactForNickname:(id)nickname emailAddresses:(id)addresses phoneNumbers:(id)numbers includeImageData:(BOOL)data
{
  dataCopy = data;
  nicknameCopy = nickname;
  addressesCopy = addresses;
  numbersCopy = numbers;
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

  v29 = [(IMNickname *)cachedNicknameForCNContact isUpdateFromNickname:nicknameCopy withOptions:8];
  emailAddresses = [(CNMutableContact *)*p_cachedCNContactForNickname emailAddresses];
  v17 = addressesCopy;
  v18 = emailAddresses;
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

  phoneNumbers = [(CNMutableContact *)*p_cachedCNContactForNickname phoneNumbers];
  v22 = numbersCopy;
  v23 = phoneNumbers;
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

  if (((v29 | v28) & 1) == 0 && (v25 & 1) == 0 && self->_cachedCNContactForNicknameIncludesImageData == dataCopy)
  {
    v26 = *p_cachedCNContactForNickname;
  }

  else
  {
LABEL_17:
    v26 = [(CKEntity *)self _createNicknameContactForNickname:nicknameCopy emailAddresses:addressesCopy phoneNumbers:numbersCopy includeImageData:dataCopy];
    objc_storeStrong(&self->_cachedCNContactForNickname, v26);
    objc_storeStrong(&self->_cachedNicknameForCNContact, nickname);
    self->_cachedCNContactForNicknameIncludesImageData = dataCopy;
  }

  return v26;
}

- (id)_createNicknameContactForNickname:(id)nickname emailAddresses:(id)addresses phoneNumbers:(id)numbers includeImageData:(BOOL)data
{
  dataCopy = data;
  v21 = *MEMORY[0x1E69E9840];
  nicknameCopy = nickname;
  addressesCopy = addresses;
  numbersCopy = numbers;
  if (dataCopy)
  {
    avatar = [nicknameCopy avatar];
    imageData = [avatar imageData];
  }

  else
  {
    imageData = 0;
  }

  firstName = [nicknameCopy firstName];
  lastName = [nicknameCopy lastName];
  v16 = objc_alloc_init(MEMORY[0x1E695CF18]);
  [v16 setImageData:imageData];
  [v16 setGivenName:firstName];
  [v16 setFamilyName:lastName];
  [v16 setEmailAddresses:addressesCopy];
  [v16 setPhoneNumbers:numbersCopy];
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
  mEMORY[0x1E69A7F20] = [MEMORY[0x1E69A7F20] sharedBlockList];
  rawAddress = [(CKEntity *)self rawAddress];
  v5 = [mEMORY[0x1E69A7F20] addressIsBlocked:rawAddress];

  return v5;
}

- (BOOL)isMe
{
  defaultIMHandle = [(CKEntity *)self defaultIMHandle];
  isLoginIMHandle = [defaultIMHandle isLoginIMHandle];

  return isLoginIMHandle;
}

- (void)setEnlargedContactImage:(BOOL)image
{
  self->_enlargedContactImage = image;
  cnContact = self->_cnContact;
  self->_cnContact = 0;
}

- (NSString)abbreviatedDisplayName
{
  defaultIMHandle = [(CKEntity *)self defaultIMHandle];
  _displayNameWithAbbreviation = [defaultIMHandle _displayNameWithAbbreviation];

  return _displayNameWithAbbreviation;
}

- (void)_invalidateContactStoreCache:(id)cache
{
  cnContact = self->_cnContact;
  self->_cnContact = 0;
}

- (void)_invalidatePartialContactStoreCache:(id)cache
{
  v20 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  userInfo = [cacheCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69A6868]];
  if ([v6 length])
  {
    v7 = self->_handle;
    defaultIMHandle = [(CKEntity *)self defaultIMHandle];
    v9 = [(IMHandle *)defaultIMHandle ID];
    if ([v9 length] && objc_msgSend(v9, "isEqualToString:", v6))
    {
      v10 = IMHandleLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412546;
        v17 = v6;
        v18 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_DEFAULT, "Received partial change notification for UID %@. Invalidating contact for IMHandle: %@", &v16, 0x16u);
      }

      if (![(IMHandle *)self->_handle isBusiness])
      {
        goto LABEL_10;
      }

      if (v7 != defaultIMHandle)
      {
        cnContact = self->_cnContact;
        self->_cnContact = 0;
      }

      object = [cacheCopy object];
      v13 = object == defaultIMHandle;

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
  defaultIMHandle = [(CKEntity *)self defaultIMHandle];
  originalID = [defaultIMHandle originalID];

  if (![originalID length])
  {
    rawAddress = [(CKEntity *)self rawAddress];

    originalID = rawAddress;
  }

  return originalID;
}

- (NSString)fullName
{
  defaultIMHandle = [(CKEntity *)self defaultIMHandle];
  fullName = [defaultIMHandle fullName];

  if (!fullName)
  {
    v4 = CKFrameworkBundle();
    fullName = [v4 localizedStringForKey:@"Unknown" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  return fullName;
}

- (NSString)name
{
  defaultIMHandle = [(CKEntity *)self defaultIMHandle];
  name = [defaultIMHandle name];

  if (!name)
  {
    v4 = CKFrameworkBundle();
    name = [v4 localizedStringForKey:@"Unknown" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  return name;
}

- (NSString)namePrefixedWithMaybe
{
  defaultIMHandle = [(CKEntity *)self defaultIMHandle];
  namePrefixedWithMaybe = [defaultIMHandle namePrefixedWithMaybe];

  return namePrefixedWithMaybe;
}

- (NSString)textToneIdentifier
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = *MEMORY[0x1E695C3F8];
  v3 = v9[0];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v5 = [(CKEntity *)self cnContactWithKeys:v4];
  v6 = [v5 valueForKey:v3];

  sound = [v6 sound];

  return sound;
}

- (NSString)textVibrationIdentifier
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = *MEMORY[0x1E695C3F8];
  v3 = v9[0];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v5 = [(CKEntity *)self cnContactWithKeys:v4];
  v6 = [v5 valueForKey:v3];

  vibration = [v6 vibration];

  return vibration;
}

- (UIImage)locationMapViewContactImage
{
  defaultIMHandle = [(CKEntity *)self defaultIMHandle];

  if (defaultIMHandle)
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

    rawAddress = [(CKEntity *)self rawAddress];
    v7 = [CKAddressBook locationSharingContactImageOfDiameter:rawAddress forID:1 useCustomFont:v6];
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
  rawAddress = [(CKEntity *)self rawAddress];
  v7 = [CKAddressBook locationSharingContactImageOfDiameter:rawAddress forID:0 useCustomFont:v5];

  return v7;
}

- (id)_croppedImageFromImageData:(id)data
{
  v3 = [MEMORY[0x1E69DCAB8] imageWithData:data];
  [v3 size];
  v5 = v4 * 0.17;
  [v3 size];
  v7 = v6 * 0.14;
  [v3 size];
  v9 = v8 + v5 * -2.0;
  [v3 size];
  v11 = v10 + v5 * -2.0;
  cGImage = [v3 CGImage];
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  v13 = CGImageCreateWithImageInRect(cGImage, v18);
  v14 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v13];
  CGImageRelease(v13);
  v15 = UIImagePNGRepresentation(v14);

  return v15;
}

- (BOOL)isMentionable
{
  defaultIMHandle = [(CKEntity *)self defaultIMHandle];
  isContact = [defaultIMHandle isContact];

  return isContact;
}

- (id)mentionTokens
{
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:9];
  abbreviatedDisplayName = [(CKEntity *)self abbreviatedDisplayName];
  mentionsSafeText = [abbreviatedDisplayName mentionsSafeText];
  [(CKEntity *)self addToken:mentionsSafeText ifAvailableToTokens:v3];

  name = [(CKEntity *)self name];
  mentionsSafeText2 = [name mentionsSafeText];
  [(CKEntity *)self addToken:mentionsSafeText2 ifAvailableToTokens:v3];

  fullName = [(CKEntity *)self fullName];
  mentionsSafeText3 = [fullName mentionsSafeText];
  [(CKEntity *)self addToken:mentionsSafeText3 ifAvailableToTokens:v3];

  defaultIMHandle = [(CKEntity *)self defaultIMHandle];
  nickname = [defaultIMHandle nickname];
  mentionsSafeText4 = [nickname mentionsSafeText];
  [(CKEntity *)self addToken:mentionsSafeText4 ifAvailableToTokens:v3];

  defaultIMHandle2 = [(CKEntity *)self defaultIMHandle];
  firstName = [defaultIMHandle2 firstName];
  mentionsSafeText5 = [firstName mentionsSafeText];
  [(CKEntity *)self addToken:mentionsSafeText5 ifAvailableToTokens:v3];

  defaultIMHandle3 = [(CKEntity *)self defaultIMHandle];
  lastName = [defaultIMHandle3 lastName];
  mentionsSafeText6 = [lastName mentionsSafeText];
  [(CKEntity *)self addToken:mentionsSafeText6 ifAvailableToTokens:v3];

  defaultIMHandle4 = [(CKEntity *)self defaultIMHandle];
  phoneticFirstName = [defaultIMHandle4 phoneticFirstName];
  mentionsSafeText7 = [phoneticFirstName mentionsSafeText];
  [(CKEntity *)self addToken:mentionsSafeText7 ifAvailableToTokens:v3];

  defaultIMHandle5 = [(CKEntity *)self defaultIMHandle];
  phoneticLastName = [defaultIMHandle5 phoneticLastName];
  mentionsSafeText8 = [phoneticLastName mentionsSafeText];
  [(CKEntity *)self addToken:mentionsSafeText8 ifAvailableToTokens:v3];

  defaultIMHandle6 = [(CKEntity *)self defaultIMHandle];
  phoneticFullName = [defaultIMHandle6 phoneticFullName];
  mentionsSafeText9 = [phoneticFullName mentionsSafeText];
  [(CKEntity *)self addToken:mentionsSafeText9 ifAvailableToTokens:v3];

  v28 = [v3 copy];

  return v28;
}

- (void)addToken:(id)token ifAvailableToTokens:(id)tokens
{
  tokenCopy = token;
  tokensCopy = tokens;
  if ([tokenCopy length])
  {
    [tokensCopy addObject:tokenCopy];
  }
}

- (id)mentionsHandleID
{
  defaultIMHandle = [(CKEntity *)self defaultIMHandle];
  v3 = [defaultIMHandle ID];

  return v3;
}

- (id)displayNameMatchingInputText:(id)text
{
  textCopy = text;
  mentionsSafeText = [textCopy mentionsSafeText];
  abbreviatedDisplayName = [(CKEntity *)self abbreviatedDisplayName];
  mentionsSafeText2 = [abbreviatedDisplayName mentionsSafeText];
  v8 = [mentionsSafeText2 isEqualToIgnoringCase:mentionsSafeText];

  if (v8)
  {
    abbreviatedDisplayName2 = [(CKEntity *)self abbreviatedDisplayName];
LABEL_7:
    v16 = abbreviatedDisplayName2;
    goto LABEL_8;
  }

  name = [(CKEntity *)self name];
  mentionsSafeText3 = [name mentionsSafeText];
  v12 = [mentionsSafeText3 isEqualToIgnoringCase:mentionsSafeText];

  if (v12)
  {
    abbreviatedDisplayName2 = [(CKEntity *)self name];
    goto LABEL_7;
  }

  fullName = [(CKEntity *)self fullName];
  mentionsSafeText4 = [fullName mentionsSafeText];
  v15 = [mentionsSafeText4 isEqualToIgnoringCase:mentionsSafeText];

  if (v15)
  {
    abbreviatedDisplayName2 = [(CKEntity *)self fullName];
    goto LABEL_7;
  }

  defaultIMHandle = [(CKEntity *)self defaultIMHandle];
  nickname = [defaultIMHandle nickname];
  mentionsSafeText5 = [nickname mentionsSafeText];
  v21 = [mentionsSafeText5 isEqualToIgnoringCase:mentionsSafeText];

  defaultIMHandle2 = [(CKEntity *)self defaultIMHandle];
  defaultIMHandle7 = defaultIMHandle2;
  if (v21)
  {
    nickname2 = [defaultIMHandle2 nickname];
  }

  else
  {
    firstName = [defaultIMHandle2 firstName];
    mentionsSafeText6 = [firstName mentionsSafeText];
    v27 = [mentionsSafeText6 isEqualToIgnoringCase:mentionsSafeText];

    defaultIMHandle3 = [(CKEntity *)self defaultIMHandle];
    defaultIMHandle7 = defaultIMHandle3;
    if (v27)
    {
      nickname2 = [defaultIMHandle3 firstName];
    }

    else
    {
      lastName = [defaultIMHandle3 lastName];
      mentionsSafeText7 = [lastName mentionsSafeText];
      v31 = [mentionsSafeText7 isEqualToIgnoringCase:mentionsSafeText];

      defaultIMHandle4 = [(CKEntity *)self defaultIMHandle];
      defaultIMHandle7 = defaultIMHandle4;
      if (v31)
      {
        nickname2 = [defaultIMHandle4 lastName];
      }

      else
      {
        phoneticFirstName = [defaultIMHandle4 phoneticFirstName];
        mentionsSafeText8 = [phoneticFirstName mentionsSafeText];
        v35 = [mentionsSafeText8 isEqualToIgnoringCase:mentionsSafeText];

        defaultIMHandle5 = [(CKEntity *)self defaultIMHandle];
        defaultIMHandle7 = defaultIMHandle5;
        if (v35)
        {
          nickname2 = [defaultIMHandle5 phoneticFirstName];
        }

        else
        {
          phoneticLastName = [defaultIMHandle5 phoneticLastName];
          mentionsSafeText9 = [phoneticLastName mentionsSafeText];
          v39 = [mentionsSafeText9 isEqualToIgnoringCase:mentionsSafeText];

          defaultIMHandle6 = [(CKEntity *)self defaultIMHandle];
          defaultIMHandle7 = defaultIMHandle6;
          if (v39)
          {
            nickname2 = [defaultIMHandle6 phoneticLastName];
          }

          else
          {
            phoneticFullName = [defaultIMHandle6 phoneticFullName];
            mentionsSafeText10 = [phoneticFullName mentionsSafeText];
            v43 = [mentionsSafeText10 isEqualToIgnoringCase:mentionsSafeText];

            if (!v43)
            {
              abbreviatedDisplayName2 = textCopy;
              goto LABEL_7;
            }

            defaultIMHandle7 = [(CKEntity *)self defaultIMHandle];
            nickname2 = [defaultIMHandle7 phoneticFullName];
          }
        }
      }
    }
  }

  v16 = nickname2;

LABEL_8:

  return v16;
}

+ (BOOL)string:(id)string hasPrefix:(id)prefix
{
  v5 = MEMORY[0x1E696AE18];
  stringCopy = string;
  prefix = [v5 predicateWithFormat:@"SELF beginswith[cld] %@", prefix];
  LOBYTE(v5) = [prefix evaluateWithObject:stringCopy];

  return v5;
}

- (id)personViewControllerWithDelegate:(id)delegate isUnknown:(BOOL *)unknown
{
  delegateCopy = delegate;
  v7 = +[_CKEntityContactStoreProvider sharedInstance];
  v8 = [(CKEntity *)self personViewControllerWithDelegate:delegateCopy isUnknown:unknown contactStoreProvider:v7];

  return v8;
}

- (id)personViewControllerWithDelegate:(id)delegate isUnknown:(BOOL *)unknown contactStoreProvider:(id)provider
{
  v16[1] = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  defaultIMHandle = [(CKEntity *)self defaultIMHandle];
  descriptorForRequiredKeys = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
  v16[0] = descriptorForRequiredKeys;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v11 = [defaultIMHandle cnContactWithKeys:v10];

  if ([MEMORY[0x1E69A7FD0] isCNContactAKnownContact:v11])
  {
    *unknown = 0;
    v12 = [MEMORY[0x1E695D148] viewControllerForContact:v11];
    [v12 setDisplayMode:2];
    [v12 setAllowsActions:1];
    [v12 setAllowsEditing:1];
    [v12 setShouldShowLinkedContacts:1];
    [v12 setActions:{objc_msgSend(v12, "actions") | 0x80}];
    propertyType = [(CKEntity *)self propertyType];
    [v12 highlightPropertyWithKey:propertyType identifier:0];
  }

  else
  {
    *unknown = 1;
    v12 = [MEMORY[0x1E695D148] viewControllerForUnknownContact:v11];
    [v12 setDisplayMode:2];
    propertyType2 = [(CKEntity *)self propertyType];
    [v12 setPrimaryPropertyKey:propertyType2];

    [v12 setAllowsActions:1];
    [v12 setActions:{objc_msgSend(v12, "actions") | 0x80}];
  }

  [v12 setDelegate:delegateCopy];

  return v12;
}

- (id)pinnedConversationContactItemIdentifier
{
  rawAddress = [(CKEntity *)self rawAddress];
  if (![rawAddress length])
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CKEntity(CKPinnedConversationContactItemProvider) *)v4 pinnedConversationContactItemIdentifier];
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self];

    rawAddress = v5;
  }

  return rawAddress;
}

@end