@interface CKNicknameUtility
+ (id)_catalystSubtitleTextWithUpdates:(id)updates style:(unint64_t)style;
+ (id)addContactOptionsMenuItemsWithTarget:(id)target update:(id)update;
+ (id)addContactOptionsMenuWithTarget:(id)target update:(id)update;
+ (id)avatarContactForUpdate:(id)update style:(unint64_t)style;
+ (id)avatarContactsForUpdates:(id)updates style:(unint64_t)style;
+ (id)bannerActionButtonStringWithUpdates:(id)updates style:(unint64_t)style;
+ (id)bannerSubtitleTextWithUpdates:(id)updates style:(unint64_t)style;
+ (id)bannerTitleTextWithUpdates:(id)updates style:(unint64_t)style useNamedTitles:(BOOL)titles;
+ (id)createContactForOutgoingShare;
+ (id)createContactFromNickname:(id)nickname;
+ (id)customImageForUpdate:(id)update style:(unint64_t)style;
+ (id)formattedNameWithFirstName:(id)name lastName:(id)lastName;
+ (id)getContactDisplayName:(id)name;
+ (id)groupPhotoUpdateSubtitleForUpdate:(id)update;
+ (id)groupPhotoUpdateTitleForUpdate:(id)update;
+ (id)updateNameAndPhotoMenuItemsWithTarget:(id)target update:(id)update;
+ (id)updateNameAndPhotoMenuWithTarget:(id)target update:(id)update;
@end

@implementation CKNicknameUtility

+ (id)customImageForUpdate:(id)update style:(unint64_t)style
{
  contact = [update contact];
  if (style == 5 || contact)
  {
  }

  else if (style != 4)
  {
    v6 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"ContactsIcon"];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)avatarContactForUpdate:(id)update style:(unint64_t)style
{
  updateCopy = update;
  updateType = [updateCopy updateType];
  contact = [updateCopy contact];
  v8 = 0;
  if (style != 2)
  {
    if (style != 6)
    {
      if (style != 5)
      {
        if ((updateType & 4) == 0)
        {
          goto LABEL_7;
        }

        nickname = [updateCopy nickname];
        avatar = [nickname avatar];
        imageData = [avatar imageData];

        if (imageData)
        {
          v8 = objc_alloc_init(MEMORY[0x1E695CF18]);
          [v8 setImageData:imageData];
        }

        else
        {
          v8 = contact;
        }

LABEL_6:

        contact = v8;
LABEL_7:
        contact = contact;
        v8 = contact;
        goto LABEL_8;
      }

      v8 = +[CKNicknameUtility createContactForOutgoingShare];
    }

    imageData = contact;
    goto LABEL_6;
  }

LABEL_8:

  return v8;
}

+ (id)avatarContactsForUpdates:(id)updates style:(unint64_t)style
{
  v19 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v6 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = updatesCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [objc_opt_class() avatarContactForUpdate:*(*(&v14 + 1) + 8 * i) style:{style, v14}];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (id)addContactOptionsMenuItemsWithTarget:(id)target update:(id)update
{
  v26[2] = *MEMORY[0x1E69E9840];
  targetCopy = target;
  updateCopy = update;
  objc_initWeak(&location, targetCopy);
  v7 = [CKMenuItemObject alloc];
  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"CREATE_NEW_CONTACT" value:&stru_1F04268F8 table:@"ChatKit"];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __65__CKNicknameUtility_addContactOptionsMenuItemsWithTarget_update___block_invoke;
  v22[3] = &unk_1E72EBB98;
  objc_copyWeak(&v24, &location);
  v10 = updateCopy;
  v23 = v10;
  v11 = [(CKMenuItemObject *)v7 initWithTitle:v9 imageName:@"person.crop.circle" handler:v22];
  v26[0] = v11;
  v12 = [CKMenuItemObject alloc];
  v13 = CKFrameworkBundle();
  v14 = [v13 localizedStringForKey:@"ADD_TO_EXISTING_CONTACT" value:&stru_1F04268F8 table:@"ChatKit"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__CKNicknameUtility_addContactOptionsMenuItemsWithTarget_update___block_invoke_2;
  v19[3] = &unk_1E72EBB98;
  objc_copyWeak(&v21, &location);
  v15 = v10;
  v20 = v15;
  v16 = [(CKMenuItemObject *)v12 initWithTitle:v14 imageName:@"person.crop.circle.badge.plus" handler:v19];
  v26[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v24);

  objc_destroyWeak(&location);

  return v17;
}

void __65__CKNicknameUtility_addContactOptionsMenuItemsWithTarget_update___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateInterfaceSelectedAction:4 forUpdate:*(a1 + 32)];
}

void __65__CKNicknameUtility_addContactOptionsMenuItemsWithTarget_update___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateInterfaceSelectedAction:5 forUpdate:*(a1 + 32)];
}

+ (id)addContactOptionsMenuWithTarget:(id)target update:(id)update
{
  v23 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  updateCopy = update;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [objc_opt_class() addContactOptionsMenuItemsWithTarget:targetCopy update:updateCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        uiAction = [*(*(&v18 + 1) + 8 * i) uiAction];
        [v7 addObject:uiAction];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = MEMORY[0x1E69DCC60];
  v15 = [v7 copy];
  v16 = [v14 menuWithTitle:&stru_1F04268F8 children:v15];

  return v16;
}

+ (id)updateNameAndPhotoMenuItemsWithTarget:(id)target update:(id)update
{
  v35[3] = *MEMORY[0x1E69E9840];
  targetCopy = target;
  updateCopy = update;
  v23 = targetCopy;
  objc_initWeak(&location, targetCopy);
  v7 = [CKMenuItemObject alloc];
  v8 = CKFrameworkBundle();
  v24 = [v8 localizedStringForKey:@"NAME_AND_PHOTO" value:&stru_1F04268F8 table:@"ChatKit"];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __66__CKNicknameUtility_updateNameAndPhotoMenuItemsWithTarget_update___block_invoke;
  v31[3] = &unk_1E72EBB98;
  objc_copyWeak(&v33, &location);
  v9 = updateCopy;
  v32 = v9;
  v10 = [(CKMenuItemObject *)v7 initWithTitle:v24 imageName:0 handler:v31];
  v35[0] = v10;
  v11 = [CKMenuItemObject alloc];
  v12 = CKFrameworkBundle();
  v13 = [v12 localizedStringForKey:@"NAME_ONLY" value:&stru_1F04268F8 table:@"ChatKit"];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __66__CKNicknameUtility_updateNameAndPhotoMenuItemsWithTarget_update___block_invoke_2;
  v28[3] = &unk_1E72EBB98;
  objc_copyWeak(&v30, &location);
  v14 = v9;
  v29 = v14;
  v15 = [(CKMenuItemObject *)v11 initWithTitle:v13 imageName:0 handler:v28];
  v35[1] = v15;
  v16 = [CKMenuItemObject alloc];
  v17 = CKFrameworkBundle();
  v18 = [v17 localizedStringForKey:@"PHOTO_ONLY" value:&stru_1F04268F8 table:@"ChatKit"];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __66__CKNicknameUtility_updateNameAndPhotoMenuItemsWithTarget_update___block_invoke_3;
  v25[3] = &unk_1E72EBB98;
  objc_copyWeak(&v27, &location);
  v19 = v14;
  v26 = v19;
  v20 = [(CKMenuItemObject *)v16 initWithTitle:v18 imageName:0 handler:v25];
  v35[2] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v30);

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);

  return v21;
}

void __66__CKNicknameUtility_updateNameAndPhotoMenuItemsWithTarget_update___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateInterfaceSelectedAction:3 forUpdate:*(a1 + 32)];
}

void __66__CKNicknameUtility_updateNameAndPhotoMenuItemsWithTarget_update___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateInterfaceSelectedAction:1 forUpdate:*(a1 + 32)];
}

void __66__CKNicknameUtility_updateNameAndPhotoMenuItemsWithTarget_update___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateInterfaceSelectedAction:2 forUpdate:*(a1 + 32)];
}

+ (id)updateNameAndPhotoMenuWithTarget:(id)target update:(id)update
{
  v25 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  updateCopy = update;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [objc_opt_class() updateNameAndPhotoMenuItemsWithTarget:targetCopy update:updateCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        uiAction = [*(*(&v20 + 1) + 8 * i) uiAction];
        [v7 addObject:uiAction];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v14 = CKFrameworkBundle();
  v15 = [v14 localizedStringForKey:@"UPDATE_PHOTO_AND_NAME_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  v16 = MEMORY[0x1E69DCC60];
  v17 = [v7 copy];
  v18 = [v16 menuWithTitle:v15 children:v17];

  return v18;
}

+ (id)bannerTitleTextWithUpdates:(id)updates style:(unint64_t)style useNamedTitles:(BOOL)titles
{
  titlesCopy = titles;
  updatesCopy = updates;
  firstObject = [updatesCopy firstObject];
  contact = [firstObject contact];
  v10 = contact;
  if (titlesCopy)
  {
    if (contact)
    {
      givenName = [contact givenName];
    }

    else
    {
      handle = [firstObject handle];
      givenName = [handle ID];
    }
  }

  else
  {
    givenName = 0;
  }

  v13 = 0;
  if (style > 3)
  {
    if (style == 4)
    {
      v24 = MEMORY[0x1E696AEC0];
      v25 = CKFrameworkBundle();
      v26 = [v25 localizedStringForKey:@"PEOPLE_SHARED_UPDATED_CONTACT_INFO_FORMAT" value:&stru_1F04268F8 table:@"ChatKit"];
      v18 = [v24 localizedStringWithFormat:v26, objc_msgSend(updatesCopy, "count")];

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection == 1)
      {
        v29 = @"\u200F";
      }

      else
      {
        v29 = @"\u200E";
      }

      v30 = [(__CFString *)v29 stringByAppendingString:v18];
    }

    else
    {
      if (style == 5)
      {
        v17 = CKFrameworkBundle();
        v18 = v17;
        v19 = @"SHARE_YOUR_NAME_AND_PHOTO";
      }

      else
      {
        if (style != 6)
        {
          goto LABEL_34;
        }

        v17 = CKFrameworkBundle();
        v18 = v17;
        v19 = @"ADD_YOUR_NAME_AND_PHOTO";
      }

      v30 = [v17 localizedStringForKey:v19 value:&stru_1F04268F8 table:@"ChatKit"];
    }

    v13 = v30;
    goto LABEL_36;
  }

  switch(style)
  {
    case 1uLL:
      if (!titlesCopy)
      {
        v14 = CKFrameworkBundle();
        v15 = v14;
        v16 = @"THIS_PERSON_SHARED_A_NEW_PHOTO";
        goto LABEL_32;
      }

      v20 = MEMORY[0x1E696AEC0];
      v21 = CKFrameworkBundle();
      v22 = v21;
      v23 = @"%@_SHARED_A_NEW_PHOTO";
LABEL_23:
      v31 = [v21 localizedStringForKey:v23 value:&stru_1F04268F8 table:@"ChatKit"];
      v15 = [v20 stringWithFormat:v31, givenName];

      mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection2 = [mEMORY[0x1E69DC668]2 userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection2 == 1)
      {
        v34 = @"\u200F";
      }

      else
      {
        v34 = @"\u200E";
      }

      v35 = [(__CFString *)v34 stringByAppendingString:v15];
      goto LABEL_33;
    case 2uLL:
      if (!titlesCopy)
      {
        v14 = CKFrameworkBundle();
        v15 = v14;
        v16 = @"THIS_PERSON_SHARED_A_NEW_NAME";
        goto LABEL_32;
      }

      v20 = MEMORY[0x1E696AEC0];
      v21 = CKFrameworkBundle();
      v22 = v21;
      v23 = @"%@_SHARED_A_NEW_NAME";
      goto LABEL_23;
    case 3uLL:
      v14 = CKFrameworkBundle();
      v15 = v14;
      v16 = @"THIS_PERSON_SHARED_A_NEW_PHOTO_AND_NAME";
LABEL_32:
      v35 = [v14 localizedStringForKey:v16 value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_33:
      v13 = v35;

      break;
  }

LABEL_34:
  if (v10)
  {
    goto LABEL_37;
  }

  v18 = CKFrameworkBundle();
  v36 = [v18 localizedStringForKey:@"NEW_CONTACT_INFORMATION" value:&stru_1F04268F8 table:@"ChatKit"];

  v13 = v36;
LABEL_36:

LABEL_37:

  return v13;
}

+ (id)bannerActionButtonStringWithUpdates:(id)updates style:(unint64_t)style
{
  firstObject = [updates firstObject];
  v6 = firstObject;
  switch(style)
  {
    case 6uLL:
      v10 = CKIsRunningInMacCatalyst();
      v7 = CKFrameworkBundle();
      contact = v7;
      if (v10)
      {
        v9 = @"SET_UP_BUTTON";
      }

      else
      {
        v9 = @"SET_UP";
      }

      goto LABEL_17;
    case 5uLL:
      v7 = CKFrameworkBundle();
      contact = v7;
      v9 = @"SHARE_BUTTON_TEXT";
      goto LABEL_17;
    case 4uLL:
      v7 = CKFrameworkBundle();
      contact = v7;
      v9 = @"VIEW_BUTTON_TEXT";
LABEL_17:
      v17 = [v7 localizedStringForKey:v9 value:&stru_1F04268F8 table:@"ChatKit"];
      goto LABEL_18;
  }

  contact = [firstObject contact];
  v11 = CKIsRunningInMacCatalyst();
  v12 = CKFrameworkBundle();
  v13 = v12;
  v14 = @"UPDATE_LIST_TEXT";
  if (!v11)
  {
    v14 = @"UPDATE_BUTTON_TEXT";
  }

  v15 = @"ADD_BUTTON_TEXT";
  if (v11)
  {
    v15 = @"ADD_LIST_TEXT";
  }

  if (contact)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = [v12 localizedStringForKey:v16 value:&stru_1F04268F8 table:@"ChatKit"];

LABEL_18:

  return v17;
}

+ (id)bannerSubtitleTextWithUpdates:(id)updates style:(unint64_t)style
{
  updatesCopy = updates;
  if (CKIsRunningInMacCatalyst())
  {
    v6 = [objc_opt_class() _catalystSubtitleTextWithUpdates:updatesCopy style:style];
    goto LABEL_11;
  }

  if (style - 2 >= 2)
  {
    if (style != 5)
    {
      v6 = 0;
      goto LABEL_11;
    }

    createContactForOutgoingShare = [objc_opt_class() createContactForOutgoingShare];
  }

  else
  {
    v7 = objc_opt_class();
    firstObject = [updatesCopy firstObject];
    nickname = [firstObject nickname];
    createContactForOutgoingShare = [v7 createContactFromNickname:nickname];
  }

  v11 = [MEMORY[0x1E695CD80] stringFromContact:createContactForOutgoingShare style:0];
  v6 = v11;
  if (v11)
  {
    v12 = v11;
  }

LABEL_11:

  return v6;
}

+ (id)_catalystSubtitleTextWithUpdates:(id)updates style:(unint64_t)style
{
  v29 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  if (style - 2 < 2)
  {
    v17 = objc_opt_class();
    firstObject = [updatesCopy firstObject];
    nickname = [firstObject nickname];
    createContactForOutgoingShare = [v17 createContactFromNickname:nickname];
  }

  else
  {
    if (style != 5)
    {
      if (style == 4)
      {
        array = [MEMORY[0x1E695DF70] array];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v8 = updatesCopy;
        v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v25;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v25 != v11)
              {
                objc_enumerationMutation(v8);
              }

              nickname2 = [*(*(&v24 + 1) + 8 * i) nickname];
              v14 = [self createContactFromNickname:nickname2];

              givenName = [v14 givenName];
              [array addObject:givenName];
            }

            v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v10);
        }

        v16 = [array componentsJoinedByString:{@", "}];
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_18;
    }

    createContactForOutgoingShare = [objc_opt_class() createContactForOutgoingShare];
  }

  v21 = [MEMORY[0x1E695CD80] stringFromContact:createContactForOutgoingShare style:0];
  v16 = v21;
  if (v21)
  {
    v22 = v21;
  }

LABEL_18:

  return v16;
}

+ (id)getContactDisplayName:(id)name
{
  nameCopy = name;
  givenName = [nameCopy givenName];
  givenName2 = [nameCopy givenName];
  v6 = [givenName2 isEqualToString:&stru_1F04268F8];

  if ((v6 & 1) == 0)
  {
    givenName3 = [nameCopy givenName];
LABEL_7:
    stringValue = givenName3;
    goto LABEL_11;
  }

  familyName = [nameCopy familyName];
  v8 = [familyName isEqualToString:&stru_1F04268F8];

  if ((v8 & 1) == 0)
  {
    givenName3 = [nameCopy familyName];
    goto LABEL_7;
  }

  phoneNumbers = [nameCopy phoneNumbers];
  v10 = [phoneNumbers count];

  if (v10)
  {
    phoneNumbers2 = [nameCopy phoneNumbers];
    firstObject = [phoneNumbers2 firstObject];

    value = [firstObject value];
    stringValue = [value stringValue];
  }

  else
  {
    emailAddresses = [nameCopy emailAddresses];
    v17 = [emailAddresses count];

    if (!v17)
    {
      goto LABEL_12;
    }

    emailAddresses2 = [nameCopy emailAddresses];
    firstObject = [emailAddresses2 firstObject];

    stringValue = [firstObject value];
  }

  givenName = firstObject;
LABEL_11:

  givenName = stringValue;
LABEL_12:

  return givenName;
}

+ (id)createContactFromNickname:(id)nickname
{
  v3 = MEMORY[0x1E695CF18];
  nicknameCopy = nickname;
  v5 = objc_alloc_init(v3);
  firstName = [nicknameCopy firstName];
  [v5 setGivenName:firstName];

  lastName = [nicknameCopy lastName];
  [v5 setFamilyName:lastName];

  avatar = [nicknameCopy avatar];

  imageData = [avatar imageData];

  if (imageData)
  {
    [v5 setImageData:imageData];
  }

  return v5;
}

+ (id)createContactForOutgoingShare
{
  v15 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A5C10] = [MEMORY[0x1E69A5C10] sharedInstance];
  personalNickname = [mEMORY[0x1E69A5C10] personalNickname];

  if (!personalNickname)
  {
    goto LABEL_7;
  }

  v4 = [objc_opt_class() createContactFromNickname:personalNickname];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = personalNickname;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Using nickname %@ for outgoing share banner with contact: %@", &v11, 0x16u);
    }
  }

  if (!v4)
  {
LABEL_7:
    mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
    keysForNicknameHandling = [MEMORY[0x1E69A7FD0] keysForNicknameHandling];
    v4 = [mEMORY[0x1E69A7FD0] fetchMeContactWithKeys:keysForNicknameHandling];

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v4;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Using me contact for outgoing share banner: %@", &v11, 0xCu);
      }
    }

    if (!v4)
    {
      v4 = +[CKMeCardSharingNameProvider nameContactForPrimaryAccount];
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v11 = 138412290;
          v12 = v4;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Using primary account contact for outgoing share banner: %@", &v11, 0xCu);
        }
      }
    }
  }

  return v4;
}

+ (id)groupPhotoUpdateTitleForUpdate:(id)update
{
  updateCopy = update;
  mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
  handleID = [updateCopy handleID];
  v6 = [mEMORY[0x1E69A7FD0] fetchCNContactForHandleWithID:handleID];

  v7 = MEMORY[0x1E696AEC0];
  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"GROUP_PHOTO_BANNER_UPDATE_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  if (v6)
  {
    [CKNicknameUtility getContactDisplayName:v6];
  }

  else
  {
    [updateCopy handleID];
  }
  v10 = ;
  v11 = [v7 stringWithFormat:v9, v10];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v14 = @"\u200F";
  }

  else
  {
    v14 = @"\u200E";
  }

  v15 = [(__CFString *)v14 stringByAppendingString:v11];

  return v15;
}

+ (id)groupPhotoUpdateSubtitleForUpdate:(id)update
{
  v3 = [update groupUpdateType] - 1;
  if (v3 > 7)
  {
    v6 = 0;
  }

  else
  {
    v4 = off_1E72EFD98[v3];
    v5 = CKFrameworkBundle();
    v6 = [v5 localizedStringForKey:v4 value:&stru_1F04268F8 table:@"ChatKit"];
  }

  return v6;
}

+ (id)formattedNameWithFirstName:(id)name lastName:(id)lastName
{
  lastNameCopy = lastName;
  nameCopy = name;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  [v8 setGivenName:nameCopy];

  [v8 setFamilyName:lastNameCopy];
  v9 = [v7 stringFromPersonNameComponents:v8];

  return v9;
}

@end