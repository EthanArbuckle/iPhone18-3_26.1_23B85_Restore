@interface CKNicknameUpdate
- (BOOL)isEqual:(id)a3;
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
  v4 = [(CKNicknameUpdate *)self handle];
  v5 = [v4 ID];
  v6 = [(CKNicknameUpdate *)self updateType];
  v7 = [(CKNicknameUpdate *)self nickname];
  v8 = [(CKNicknameUpdate *)self contact];
  v9 = [v3 stringWithFormat:@"Update for ID %@ is %lu nickname %@ contact %@", v5, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CKNicknameUpdate *)self handle];
    v7 = [v5 handle];
    if ([v6 isEqual:v7])
    {
      v8 = 0;
    }

    else
    {
      v10 = [(CKNicknameUpdate *)self handle];
      if (v10)
      {
        v8 = 1;
      }

      else
      {
        v11 = [v5 handle];
        v8 = v11 != 0;
      }
    }

    v12 = [(CKNicknameUpdate *)self nickname];
    v13 = [v5 nickname];
    v14 = [v12 isEqual:v13];

    v15 = [(CKNicknameUpdate *)self contact];
    v16 = [v15 identifier];
    v17 = [v5 contact];
    v18 = [v17 identifier];
    if ([v16 isEqualToString:v18])
    {
      v19 = 1;
    }

    else
    {
      v26 = v14;
      v20 = v8;
      v21 = [(CKNicknameUpdate *)self contact];
      if (v21)
      {
        v19 = 0;
      }

      else
      {
        v22 = [v5 contact];
        v19 = v22 == 0;
      }

      v8 = v20;
      v14 = v26;
    }

    v23 = [(CKNicknameUpdate *)self updateType];
    v24 = [v5 updateType];
    v9 = !v8 && (v14 & 1) != 0 && v23 == v24 && v19;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)listTitleText
{
  v3 = [(CKNicknameUpdate *)self contact];
  v4 = [v3 givenName];

  v5 = [(CKNicknameUpdate *)self contact];

  if (!v5)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"NEW_CONTACT_INFORMATION" value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_12:
    v8 = [v10 stringWithFormat:v12, v20];

    v16 = [MEMORY[0x1E69DC668] sharedApplication];
    v17 = [v16 userInterfaceLayoutDirection];

    if (v17 == 1)
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

  v6 = [(CKNicknameUpdate *)self updateType];
  v7 = [(CKNicknameUpdate *)self updateType];
  if ((v6 & 2) == 0 || (v7 & 4) == 0)
  {
    if ((v6 & 2) != 0)
    {
      v10 = MEMORY[0x1E696AEC0];
      v14 = CKFrameworkBundle();
      v11 = v14;
      v15 = @"%@_SHARED_A_NEW_NAME";
    }

    else
    {
      if ((v7 & 4) == 0)
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
    v20 = v4;
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
  v4 = [(CKNicknameUpdate *)self contact];
  v5 = [v3 stringFromContact:v4 style:0];

  v6 = [(CKNicknameUpdate *)self contact];

  if (v6)
  {
    if (([(CKNicknameUpdate *)self updateType]& 2) != 0)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = CKFrameworkBundle();
      v10 = [v9 localizedStringForKey:@"NAME_CHANGED_FROM_%@_TO_%@" value:&stru_1F04268F8 table:@"ChatKit"];
      v11 = [(CKNicknameUpdate *)self _updatedName];
      v12 = [v8 stringWithFormat:v10, v5, v11];

      v13 = [MEMORY[0x1E69DC668] sharedApplication];
      v14 = [v13 userInterfaceLayoutDirection];

      if (v14 == 1)
      {
        v15 = @"\u200F";
      }

      else
      {
        v15 = @"\u200E";
      }

      v7 = [(__CFString *)v15 stringByAppendingString:v12];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = [(CKNicknameUpdate *)self _updatedName];
  }

  return v7;
}

- (id)condensedSubtitleText
{
  v3 = [(CKNicknameUpdate *)self updateType];
  v4 = [(CKNicknameUpdate *)self updateType];
  if ((v3 & 2) != 0 && (v4 & 4) != 0)
  {
    v5 = CKFrameworkBundle();
    v6 = v5;
    v7 = @"NEW_CONTACT_INFORMATION";
    v8 = @"ChatKit";
  }

  else
  {
    if ((v3 & 2) != 0)
    {
      v5 = CKFrameworkBundle();
      v6 = v5;
      v7 = @"NEW_CONTACT_NAME";
    }

    else
    {
      if ((v4 & 4) == 0)
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
  v4 = [(CKNicknameUpdate *)self nickname];
  v5 = [v4 firstName];
  [v3 setGivenName:v5];

  v6 = [(CKNicknameUpdate *)self nickname];
  v7 = [v6 lastName];
  [v3 setFamilyName:v7];

  v8 = [(CKNicknameUpdate *)self nickname];
  v9 = [v8 avatar];
  v10 = [v9 imageData];

  if (v10)
  {
    [v3 setImageData:v10];
  }

  return v3;
}

- (id)_updatedName
{
  v2 = MEMORY[0x1E695CD80];
  v3 = [(CKNicknameUpdate *)self contactWithUpdatedInformation];
  v4 = [v2 stringFromContact:v3 style:0];

  return v4;
}

@end