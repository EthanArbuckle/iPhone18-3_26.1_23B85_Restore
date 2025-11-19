@interface CNUIRemotePhotoFutures
+ (id)localPhotoForEmailAddresses:(id)a3;
+ (id)photoForContact:(id)a3;
+ (id)photoForContact:(id)a3 userDefaults:(id)a4;
@end

@implementation CNUIRemotePhotoFutures

+ (id)photoForContact:(id)a3
{
  v4 = MEMORY[0x1E6996888];
  v5 = a3;
  v6 = [v4 standardPreferences];
  v7 = [a1 photoForContact:v5 userDefaults:v6];

  return v7;
}

+ (id)photoForContact:(id)a3 userDefaults:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isKeyAvailable:*MEMORY[0x1E695C208]])
  {
    v8 = [v6 emailAddresses];
    v9 = [v8 _cn_map:&__block_literal_global_31];

    if ((*(*MEMORY[0x1E6996530] + 16))())
    {
      v10 = MEMORY[0x1E6996720];
      v11 = [CNContactsUIError errorWithCode:402];
      v12 = [v10 futureWithError:v11];
    }

    else
    {
      v11 = [a1 localPhotoForEmailAddresses:v9];
      if ([v7 userHasOptedInToPreference:@"com.apple.private.contacts.directory-services-images"])
      {
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __55__CNUIRemotePhotoFutures_photoForContact_userDefaults___block_invoke_2;
        v25[3] = &unk_1E76E8EE0;
        v27 = a1;
        v26 = v9;
        v16 = [v11 recover:v25];

        v11 = v16;
      }

      if (([v7 userHasOptedInToPreference:@"com.apple.private.contacts.gravatar-images"] & 1) != 0 || objc_msgSend(v7, "userHasOptedInToPreference:", @"ABUseGravatarImages"))
      {
        v19 = MEMORY[0x1E69E9820];
        v20 = 3221225472;
        v21 = __55__CNUIRemotePhotoFutures_photoForContact_userDefaults___block_invoke_3;
        v22 = &unk_1E76E8EE0;
        v24 = a1;
        v23 = v9;
        v17 = [v11 recover:&v19];

        v11 = v17;
      }

      v12 = [v11 recover:{&__block_literal_global_12_0, v19, v20, v21, v22}];
    }

    v15 = v12;
  }

  else
  {
    v13 = MEMORY[0x1E6996720];
    v14 = [CNContactsUIError errorWithCode:402];
    v15 = [v13 futureWithError:v14];
  }

  return v15;
}

id __55__CNUIRemotePhotoFutures_photoForContact_userDefaults___block_invoke_4()
{
  v0 = MEMORY[0x1E6996720];
  v1 = [CNContactsUIError errorWithCode:402];
  v2 = [v0 futureWithError:v1];

  return v2;
}

+ (id)localPhotoForEmailAddresses:(id)a3
{
  v3 = MEMORY[0x1E6996720];
  v4 = [CNContactsUIError errorWithCode:402];
  v5 = [v3 futureWithError:v4];

  return v5;
}

@end