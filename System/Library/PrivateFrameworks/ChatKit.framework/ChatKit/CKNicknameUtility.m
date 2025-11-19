@interface CKNicknameUtility
+ (id)_catalystSubtitleTextWithUpdates:(id)a3 style:(unint64_t)a4;
+ (id)addContactOptionsMenuItemsWithTarget:(id)a3 update:(id)a4;
+ (id)addContactOptionsMenuWithTarget:(id)a3 update:(id)a4;
+ (id)avatarContactForUpdate:(id)a3 style:(unint64_t)a4;
+ (id)avatarContactsForUpdates:(id)a3 style:(unint64_t)a4;
+ (id)bannerActionButtonStringWithUpdates:(id)a3 style:(unint64_t)a4;
+ (id)bannerSubtitleTextWithUpdates:(id)a3 style:(unint64_t)a4;
+ (id)bannerTitleTextWithUpdates:(id)a3 style:(unint64_t)a4 useNamedTitles:(BOOL)a5;
+ (id)createContactForOutgoingShare;
+ (id)createContactFromNickname:(id)a3;
+ (id)customImageForUpdate:(id)a3 style:(unint64_t)a4;
+ (id)formattedNameWithFirstName:(id)a3 lastName:(id)a4;
+ (id)getContactDisplayName:(id)a3;
+ (id)groupPhotoUpdateSubtitleForUpdate:(id)a3;
+ (id)groupPhotoUpdateTitleForUpdate:(id)a3;
+ (id)updateNameAndPhotoMenuItemsWithTarget:(id)a3 update:(id)a4;
+ (id)updateNameAndPhotoMenuWithTarget:(id)a3 update:(id)a4;
@end

@implementation CKNicknameUtility

+ (id)customImageForUpdate:(id)a3 style:(unint64_t)a4
{
  v5 = [a3 contact];
  if (a4 == 5 || v5)
  {
  }

  else if (a4 != 4)
  {
    v6 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"ContactsIcon"];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)avatarContactForUpdate:(id)a3 style:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 updateType];
  v7 = [v5 contact];
  v8 = 0;
  if (a4 != 2)
  {
    if (a4 != 6)
    {
      if (a4 != 5)
      {
        if ((v6 & 4) == 0)
        {
          goto LABEL_7;
        }

        v11 = [v5 nickname];
        v12 = [v11 avatar];
        v9 = [v12 imageData];

        if (v9)
        {
          v8 = objc_alloc_init(MEMORY[0x1E695CF18]);
          [v8 setImageData:v9];
        }

        else
        {
          v8 = v7;
        }

LABEL_6:

        v7 = v8;
LABEL_7:
        v7 = v7;
        v8 = v7;
        goto LABEL_8;
      }

      v8 = +[CKNicknameUtility createContactForOutgoingShare];
    }

    v9 = v7;
    goto LABEL_6;
  }

LABEL_8:

  return v8;
}

+ (id)avatarContactsForUpdates:(id)a3 style:(unint64_t)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
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

        v12 = [objc_opt_class() avatarContactForUpdate:*(*(&v14 + 1) + 8 * i) style:{a4, v14}];
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

+ (id)addContactOptionsMenuItemsWithTarget:(id)a3 update:(id)a4
{
  v26[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  objc_initWeak(&location, v5);
  v7 = [CKMenuItemObject alloc];
  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"CREATE_NEW_CONTACT" value:&stru_1F04268F8 table:@"ChatKit"];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __65__CKNicknameUtility_addContactOptionsMenuItemsWithTarget_update___block_invoke;
  v22[3] = &unk_1E72EBB98;
  objc_copyWeak(&v24, &location);
  v10 = v6;
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

+ (id)addContactOptionsMenuWithTarget:(id)a3 update:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [objc_opt_class() addContactOptionsMenuItemsWithTarget:v5 update:v6];
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

        v13 = [*(*(&v18 + 1) + 8 * i) uiAction];
        [v7 addObject:v13];
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

+ (id)updateNameAndPhotoMenuItemsWithTarget:(id)a3 update:(id)a4
{
  v35[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v23 = v5;
  objc_initWeak(&location, v5);
  v7 = [CKMenuItemObject alloc];
  v8 = CKFrameworkBundle();
  v24 = [v8 localizedStringForKey:@"NAME_AND_PHOTO" value:&stru_1F04268F8 table:@"ChatKit"];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __66__CKNicknameUtility_updateNameAndPhotoMenuItemsWithTarget_update___block_invoke;
  v31[3] = &unk_1E72EBB98;
  objc_copyWeak(&v33, &location);
  v9 = v6;
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

+ (id)updateNameAndPhotoMenuWithTarget:(id)a3 update:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [objc_opt_class() updateNameAndPhotoMenuItemsWithTarget:v5 update:v6];
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

        v13 = [*(*(&v20 + 1) + 8 * i) uiAction];
        [v7 addObject:v13];
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

+ (id)bannerTitleTextWithUpdates:(id)a3 style:(unint64_t)a4 useNamedTitles:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [v7 firstObject];
  v9 = [v8 contact];
  v10 = v9;
  if (v5)
  {
    if (v9)
    {
      v11 = [v9 givenName];
    }

    else
    {
      v12 = [v8 handle];
      v11 = [v12 ID];
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = 0;
  if (a4 > 3)
  {
    if (a4 == 4)
    {
      v24 = MEMORY[0x1E696AEC0];
      v25 = CKFrameworkBundle();
      v26 = [v25 localizedStringForKey:@"PEOPLE_SHARED_UPDATED_CONTACT_INFO_FORMAT" value:&stru_1F04268F8 table:@"ChatKit"];
      v18 = [v24 localizedStringWithFormat:v26, objc_msgSend(v7, "count")];

      v27 = [MEMORY[0x1E69DC668] sharedApplication];
      v28 = [v27 userInterfaceLayoutDirection];

      if (v28 == 1)
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
      if (a4 == 5)
      {
        v17 = CKFrameworkBundle();
        v18 = v17;
        v19 = @"SHARE_YOUR_NAME_AND_PHOTO";
      }

      else
      {
        if (a4 != 6)
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

  switch(a4)
  {
    case 1uLL:
      if (!v5)
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
      v15 = [v20 stringWithFormat:v31, v11];

      v32 = [MEMORY[0x1E69DC668] sharedApplication];
      v33 = [v32 userInterfaceLayoutDirection];

      if (v33 == 1)
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
      if (!v5)
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

+ (id)bannerActionButtonStringWithUpdates:(id)a3 style:(unint64_t)a4
{
  v5 = [a3 firstObject];
  v6 = v5;
  switch(a4)
  {
    case 6uLL:
      v10 = CKIsRunningInMacCatalyst();
      v7 = CKFrameworkBundle();
      v8 = v7;
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
      v8 = v7;
      v9 = @"SHARE_BUTTON_TEXT";
      goto LABEL_17;
    case 4uLL:
      v7 = CKFrameworkBundle();
      v8 = v7;
      v9 = @"VIEW_BUTTON_TEXT";
LABEL_17:
      v17 = [v7 localizedStringForKey:v9 value:&stru_1F04268F8 table:@"ChatKit"];
      goto LABEL_18;
  }

  v8 = [v5 contact];
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

  if (v8)
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

+ (id)bannerSubtitleTextWithUpdates:(id)a3 style:(unint64_t)a4
{
  v5 = a3;
  if (CKIsRunningInMacCatalyst())
  {
    v6 = [objc_opt_class() _catalystSubtitleTextWithUpdates:v5 style:a4];
    goto LABEL_11;
  }

  if (a4 - 2 >= 2)
  {
    if (a4 != 5)
    {
      v6 = 0;
      goto LABEL_11;
    }

    v10 = [objc_opt_class() createContactForOutgoingShare];
  }

  else
  {
    v7 = objc_opt_class();
    v8 = [v5 firstObject];
    v9 = [v8 nickname];
    v10 = [v7 createContactFromNickname:v9];
  }

  v11 = [MEMORY[0x1E695CD80] stringFromContact:v10 style:0];
  v6 = v11;
  if (v11)
  {
    v12 = v11;
  }

LABEL_11:

  return v6;
}

+ (id)_catalystSubtitleTextWithUpdates:(id)a3 style:(unint64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 - 2 < 2)
  {
    v17 = objc_opt_class();
    v18 = [v6 firstObject];
    v19 = [v18 nickname];
    v20 = [v17 createContactFromNickname:v19];
  }

  else
  {
    if (a4 != 5)
    {
      if (a4 == 4)
      {
        v7 = [MEMORY[0x1E695DF70] array];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v8 = v6;
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

              v13 = [*(*(&v24 + 1) + 8 * i) nickname];
              v14 = [a1 createContactFromNickname:v13];

              v15 = [v14 givenName];
              [v7 addObject:v15];
            }

            v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v10);
        }

        v16 = [v7 componentsJoinedByString:{@", "}];
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_18;
    }

    v20 = [objc_opt_class() createContactForOutgoingShare];
  }

  v21 = [MEMORY[0x1E695CD80] stringFromContact:v20 style:0];
  v16 = v21;
  if (v21)
  {
    v22 = v21;
  }

LABEL_18:

  return v16;
}

+ (id)getContactDisplayName:(id)a3
{
  v3 = a3;
  v4 = [v3 givenName];
  v5 = [v3 givenName];
  v6 = [v5 isEqualToString:&stru_1F04268F8];

  if ((v6 & 1) == 0)
  {
    v15 = [v3 givenName];
LABEL_7:
    v14 = v15;
    goto LABEL_11;
  }

  v7 = [v3 familyName];
  v8 = [v7 isEqualToString:&stru_1F04268F8];

  if ((v8 & 1) == 0)
  {
    v15 = [v3 familyName];
    goto LABEL_7;
  }

  v9 = [v3 phoneNumbers];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [v3 phoneNumbers];
    v12 = [v11 firstObject];

    v13 = [v12 value];
    v14 = [v13 stringValue];
  }

  else
  {
    v16 = [v3 emailAddresses];
    v17 = [v16 count];

    if (!v17)
    {
      goto LABEL_12;
    }

    v18 = [v3 emailAddresses];
    v12 = [v18 firstObject];

    v14 = [v12 value];
  }

  v4 = v12;
LABEL_11:

  v4 = v14;
LABEL_12:

  return v4;
}

+ (id)createContactFromNickname:(id)a3
{
  v3 = MEMORY[0x1E695CF18];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 firstName];
  [v5 setGivenName:v6];

  v7 = [v4 lastName];
  [v5 setFamilyName:v7];

  v8 = [v4 avatar];

  v9 = [v8 imageData];

  if (v9)
  {
    [v5 setImageData:v9];
  }

  return v5;
}

+ (id)createContactForOutgoingShare
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A5C10] sharedInstance];
  v3 = [v2 personalNickname];

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = [objc_opt_class() createContactFromNickname:v3];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Using nickname %@ for outgoing share banner with contact: %@", &v11, 0x16u);
    }
  }

  if (!v4)
  {
LABEL_7:
    v6 = [MEMORY[0x1E69A7FD0] sharedInstance];
    v7 = [MEMORY[0x1E69A7FD0] keysForNicknameHandling];
    v4 = [v6 fetchMeContactWithKeys:v7];

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

+ (id)groupPhotoUpdateTitleForUpdate:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69A7FD0] sharedInstance];
  v5 = [v3 handleID];
  v6 = [v4 fetchCNContactForHandleWithID:v5];

  v7 = MEMORY[0x1E696AEC0];
  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"GROUP_PHOTO_BANNER_UPDATE_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  if (v6)
  {
    [CKNicknameUtility getContactDisplayName:v6];
  }

  else
  {
    [v3 handleID];
  }
  v10 = ;
  v11 = [v7 stringWithFormat:v9, v10];

  v12 = [MEMORY[0x1E69DC668] sharedApplication];
  v13 = [v12 userInterfaceLayoutDirection];

  if (v13 == 1)
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

+ (id)groupPhotoUpdateSubtitleForUpdate:(id)a3
{
  v3 = [a3 groupUpdateType] - 1;
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

+ (id)formattedNameWithFirstName:(id)a3 lastName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  [v8 setGivenName:v6];

  [v8 setFamilyName:v5];
  v9 = [v7 stringFromPersonNameComponents:v8];

  return v9;
}

@end