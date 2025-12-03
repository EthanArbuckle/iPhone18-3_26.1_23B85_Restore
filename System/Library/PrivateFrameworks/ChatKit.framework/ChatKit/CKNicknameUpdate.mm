@interface CKNicknameUpdate
- (BOOL)isEqual:(id)equal;
- (id)_updatedName;
- (id)condensedSubtitleText;
- (id)contactWithUpdatedInformation;
- (id)description;
- (id)listSubtitleText;
- (id)listTitleText;
@end

@implementation CKNicknameUpdate

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  handle = [(CKNicknameUpdate *)self handle];
  v5 = [handle ID];
  updateType = [(CKNicknameUpdate *)self updateType];
  nickname = [(CKNicknameUpdate *)self nickname];
  contact = [(CKNicknameUpdate *)self contact];
  v9 = [v3 stringWithFormat:@"Update for ID %@ is %lu nickname %@ contact %@", v5, updateType, nickname, contact];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    handle = [(CKNicknameUpdate *)self handle];
    handle2 = [v5 handle];
    if ([handle isEqual:handle2])
    {
      v8 = 0;
    }

    else
    {
      handle3 = [(CKNicknameUpdate *)self handle];
      if (handle3)
      {
        v8 = 1;
      }

      else
      {
        handle4 = [v5 handle];
        v8 = handle4 != 0;
      }
    }

    nickname = [(CKNicknameUpdate *)self nickname];
    nickname2 = [v5 nickname];
    v14 = [nickname isEqual:nickname2];

    contact = [(CKNicknameUpdate *)self contact];
    identifier = [contact identifier];
    contact2 = [v5 contact];
    identifier2 = [contact2 identifier];
    if ([identifier isEqualToString:identifier2])
    {
      v19 = 1;
    }

    else
    {
      v26 = v14;
      v20 = v8;
      contact3 = [(CKNicknameUpdate *)self contact];
      if (contact3)
      {
        v19 = 0;
      }

      else
      {
        contact4 = [v5 contact];
        v19 = contact4 == 0;
      }

      v8 = v20;
      v14 = v26;
    }

    updateType = [(CKNicknameUpdate *)self updateType];
    updateType2 = [v5 updateType];
    v9 = !v8 && (v14 & 1) != 0 && updateType == updateType2 && v19;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)listTitleText
{
  contact = [(CKNicknameUpdate *)self contact];
  givenName = [contact givenName];

  contact2 = [(CKNicknameUpdate *)self contact];

  if (!contact2)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"NEW_CONTACT_INFORMATION" value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_12:
    v8 = [v10 stringWithFormat:v12, v20];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v18 = @"\u200F";
    }

    else
    {
      v18 = @"\u200E";
    }

    v9 = [(__CFString *)v18 stringByAppendingString:v8];
    goto LABEL_16;
  }

  updateType = [(CKNicknameUpdate *)self updateType];
  updateType2 = [(CKNicknameUpdate *)self updateType];
  if ((updateType & 2) == 0 || (updateType2 & 4) == 0)
  {
    if ((updateType & 2) != 0)
    {
      v10 = MEMORY[0x1E696AEC0];
      v14 = CKFrameworkBundle();
      v11 = v14;
      v15 = @"%@_SHARED_A_NEW_NAME";
    }

    else
    {
      if ((updateType2 & 4) == 0)
      {
        v13 = 0;
        goto LABEL_17;
      }

      v10 = MEMORY[0x1E696AEC0];
      v14 = CKFrameworkBundle();
      v11 = v14;
      v15 = @"%@_SHARED_A_NEW_PHOTO";
    }

    v12 = [v14 localizedStringForKey:v15 value:&stru_1F04268F8 table:@"ChatKit"];
    v20 = givenName;
    goto LABEL_12;
  }

  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"THIS_PERSON_SHARED_A_NEW_PHOTO_AND_NAME" value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_16:
  v13 = v9;

LABEL_17:

  return v13;
}

- (id)listSubtitleText
{
  v3 = MEMORY[0x1E695CD80];
  contact = [(CKNicknameUpdate *)self contact];
  v5 = [v3 stringFromContact:contact style:0];

  contact2 = [(CKNicknameUpdate *)self contact];

  if (contact2)
  {
    if (([(CKNicknameUpdate *)self updateType]& 2) != 0)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = CKFrameworkBundle();
      v10 = [v9 localizedStringForKey:@"NAME_CHANGED_FROM_%@_TO_%@" value:&stru_1F04268F8 table:@"ChatKit"];
      _updatedName = [(CKNicknameUpdate *)self _updatedName];
      v12 = [v8 stringWithFormat:v10, v5, _updatedName];

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection == 1)
      {
        v15 = @"\u200F";
      }

      else
      {
        v15 = @"\u200E";
      }

      _updatedName2 = [(__CFString *)v15 stringByAppendingString:v12];
    }

    else
    {
      _updatedName2 = 0;
    }
  }

  else
  {
    _updatedName2 = [(CKNicknameUpdate *)self _updatedName];
  }

  return _updatedName2;
}

- (id)condensedSubtitleText
{
  updateType = [(CKNicknameUpdate *)self updateType];
  updateType2 = [(CKNicknameUpdate *)self updateType];
  if ((updateType & 2) != 0 && (updateType2 & 4) != 0)
  {
    v5 = CKFrameworkBundle();
    v6 = v5;
    v7 = @"NEW_CONTACT_INFORMATION";
    v8 = @"ChatKit";
  }

  else
  {
    if ((updateType & 2) != 0)
    {
      v5 = CKFrameworkBundle();
      v6 = v5;
      v7 = @"NEW_CONTACT_NAME";
    }

    else
    {
      if ((updateType2 & 4) == 0)
      {
        v9 = 0;
        goto LABEL_11;
      }

      v5 = CKFrameworkBundle();
      v6 = v5;
      v7 = @"NEW_CONTACT_PHOTO";
    }

    v8 = @"ChatKitPepper";
  }

  v9 = [v5 localizedStringForKey:v7 value:&stru_1F04268F8 table:v8];

LABEL_11:

  return v9;
}

- (id)contactWithUpdatedInformation
{
  v3 = objc_alloc_init(MEMORY[0x1E695CF18]);
  nickname = [(CKNicknameUpdate *)self nickname];
  firstName = [nickname firstName];
  [v3 setGivenName:firstName];

  nickname2 = [(CKNicknameUpdate *)self nickname];
  lastName = [nickname2 lastName];
  [v3 setFamilyName:lastName];

  nickname3 = [(CKNicknameUpdate *)self nickname];
  avatar = [nickname3 avatar];
  imageData = [avatar imageData];

  if (imageData)
  {
    [v3 setImageData:imageData];
  }

  return v3;
}

- (id)_updatedName
{
  v2 = MEMORY[0x1E695CD80];
  contactWithUpdatedInformation = [(CKNicknameUpdate *)self contactWithUpdatedInformation];
  v4 = [v2 stringFromContact:contactWithUpdatedInformation style:0];

  return v4;
}

@end