@interface NSString(LocalizedCollaboration)
+ (id)ck_localizedAddPeopleStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:;
+ (id)ck_localizedCommentedPeopleStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:;
+ (id)ck_localizedCreatedStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:;
+ (id)ck_localizedDeletedStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:;
+ (id)ck_localizedEditStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:;
+ (id)ck_localizedMovedStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:;
+ (id)ck_localizedRemovePeopleStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:;
+ (id)ck_localizedRenamedStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:;
+ (id)ck_localizedUpdateStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:;
+ (id)ck_suggestionCategoryTitleWithNumberOfSenders:()LocalizedCollaboration documentTitle:numberOfFiles:numberOfItems:aggregateContentType:aggregateNoticeType:;
@end

@implementation NSString(LocalizedCollaboration)

+ (id)ck_localizedEditStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:
{
  v7 = a4;
  v8 = v7;
  if (*MEMORY[0x1E6982FE8] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_MADE_EDITS_TO_N_SPREADSHEETS";
  }

  else if (*MEMORY[0x1E6982F60] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_MADE_EDITS_TO_N_PRESENTATIONS";
  }

  else if (*MEMORY[0x1E6983020] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_MADE_EDITS_TO_N_DOCUMENTS";
  }

  else if (*MEMORY[0x1E6983030] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_MADE_EDITS_TO_N_COLLABORATIONS";
  }

  else
  {
    v9 = *MEMORY[0x1E6982DC8];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    if (v9 == v8)
    {
      v13 = @"N_PEOPLE_MADE_EDITS_TO_N_FOLDERS";
    }

    else
    {
      v13 = @"N_PEOPLE_MADE_EDITS_TO_N_COLLABORATIONS";
    }
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
  v15 = [v10 localizedStringWithFormat:v14, a3, a5];

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

  v19 = [(__CFString *)v18 stringByAppendingString:v15];

  return v19;
}

+ (id)ck_localizedUpdateStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:
{
  v7 = a4;
  v8 = v7;
  if (*MEMORY[0x1E6982FE8] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_MADE_UPDATES_TO_N_SPREADSHEETS";
  }

  else if (*MEMORY[0x1E6982F60] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_MADE_UPDATES_TO_N_PRESENTATIONS";
  }

  else if (*MEMORY[0x1E6983020] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_MADE_UPDATES_TO_N_DOCUMENTS";
  }

  else if (*MEMORY[0x1E6983030] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_MADE_UPDATES_TO_N_COLLABORATIONS";
  }

  else
  {
    v9 = *MEMORY[0x1E6982DC8];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    if (v9 == v8)
    {
      v13 = @"N_PEOPLE_MADE_UPDATES_TO_N_FOLDERS";
    }

    else
    {
      v13 = @"N_PEOPLE_MADE_UPDATES_TO_N_COLLABORATIONS";
    }
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
  v15 = [v10 localizedStringWithFormat:v14, a3, a5];

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

  v19 = [(__CFString *)v18 stringByAppendingString:v15];

  return v19;
}

+ (id)ck_localizedCreatedStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:
{
  v7 = a4;
  v8 = v7;
  if (*MEMORY[0x1E6982FE8] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_CREATED_N_SPREADSHEETS";
  }

  else if (*MEMORY[0x1E6982F60] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_CREATED_N_PRESENTATIONS";
  }

  else if (*MEMORY[0x1E6983020] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_CREATED_N_DOCUMENTS";
  }

  else if (*MEMORY[0x1E6983030] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_CREATED_N_COLLABORATIONS";
  }

  else
  {
    v9 = *MEMORY[0x1E6982DC8];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    if (v9 == v8)
    {
      v13 = @"N_PEOPLE_CREATED_N_FOLDERS";
    }

    else
    {
      v13 = @"N_PEOPLE_CREATED_N_COLLABORATIONS";
    }
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
  v15 = [v10 localizedStringWithFormat:v14, a3, a5];

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

  v19 = [(__CFString *)v18 stringByAppendingString:v15];

  return v19;
}

+ (id)ck_localizedDeletedStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:
{
  v7 = a4;
  v8 = v7;
  if (*MEMORY[0x1E6982FE8] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_DELETED_N_SPREADSHEETS";
  }

  else if (*MEMORY[0x1E6982F60] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_DELETED_N_PRESENTATIONS";
  }

  else if (*MEMORY[0x1E6983020] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_DELETED_N_DOCUMENTS";
  }

  else if (*MEMORY[0x1E6983030] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_DELETED_N_COLLABORATIONS";
  }

  else
  {
    v9 = *MEMORY[0x1E6982DC8];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    if (v9 == v8)
    {
      v13 = @"N_PEOPLE_DELETED_N_FOLDERS";
    }

    else
    {
      v13 = @"N_PEOPLE_DELETED_N_COLLABORATIONS";
    }
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
  v15 = [v10 localizedStringWithFormat:v14, a3, a5];

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

  v19 = [(__CFString *)v18 stringByAppendingString:v15];

  return v19;
}

+ (id)ck_localizedRenamedStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:
{
  v7 = a4;
  v8 = v7;
  if (*MEMORY[0x1E6982FE8] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_RENAMED_N_SPREADSHEETS";
  }

  else if (*MEMORY[0x1E6982F60] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_RENAMED_N_PRESENTATIONS";
  }

  else if (*MEMORY[0x1E6983020] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_RENAMED_N_DOCUMENTS";
  }

  else if (*MEMORY[0x1E6983030] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_RENAMED_N_COLLABORATIONS";
  }

  else
  {
    v9 = *MEMORY[0x1E6982DC8];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    if (v9 == v8)
    {
      v13 = @"N_PEOPLE_RENAMED_N_FOLDERS";
    }

    else
    {
      v13 = @"N_PEOPLE_RENAMED_N_COLLABORATIONS";
    }
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
  v15 = [v10 localizedStringWithFormat:v14, a3, a5];

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

  v19 = [(__CFString *)v18 stringByAppendingString:v15];

  return v19;
}

+ (id)ck_localizedMovedStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:
{
  v7 = a4;
  v8 = v7;
  if (*MEMORY[0x1E6982FE8] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_MOVED_N_SPREADSHEETS";
  }

  else if (*MEMORY[0x1E6982F60] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_MOVED_N_PRESENTATIONS";
  }

  else if (*MEMORY[0x1E6983020] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_MOVED_N_DOCUMENTS";
  }

  else if (*MEMORY[0x1E6983030] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_MOVED_N_COLLABORATIONS";
  }

  else
  {
    v9 = *MEMORY[0x1E6982DC8];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    if (v9 == v8)
    {
      v13 = @"N_PEOPLE_MOVED_N_FOLDERS";
    }

    else
    {
      v13 = @"N_PEOPLE_MOVED_N_COLLABORATIONS";
    }
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
  v15 = [v10 localizedStringWithFormat:v14, a3, a5];

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

  v19 = [(__CFString *)v18 stringByAppendingString:v15];

  return v19;
}

+ (id)ck_localizedAddPeopleStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:
{
  v7 = a4;
  v8 = v7;
  if (*MEMORY[0x1E6982FE8] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"ADD_PEOPLE_TO_N_SPREADSHEETS";
  }

  else if (*MEMORY[0x1E6982F60] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"ADD_PEOPLE_TO_N_PRESENTATIONS";
  }

  else if (*MEMORY[0x1E6983020] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"ADD_PEOPLE_TO_N_DOCUMENTS";
  }

  else if (*MEMORY[0x1E6983030] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"ADD_PEOPLE_TO_N_COLLABORATIONS";
  }

  else
  {
    v9 = *MEMORY[0x1E6982DC8];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    if (v9 == v8)
    {
      v13 = @"ADD_PEOPLE_TO_N_FOLDERS";
    }

    else
    {
      v13 = @"ADD_PEOPLE_TO_N_COLLABORATIONS";
    }
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
  v15 = [v10 localizedStringWithFormat:v14, a3, a5];

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

  v19 = [(__CFString *)v18 stringByAppendingString:v15];

  return v19;
}

+ (id)ck_localizedRemovePeopleStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:
{
  v7 = a4;
  v8 = v7;
  if (*MEMORY[0x1E6982FE8] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"REMOVE_N_PEOPLE_FROM_N_SPREADSHEETS";
  }

  else if (*MEMORY[0x1E6982F60] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"REMOVE_N_PEOPLE_FROM_N_PRESENTATIONS";
  }

  else if (*MEMORY[0x1E6983020] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"REMOVE_N_PEOPLE_FROM_N_DOCUMENTS";
  }

  else if (*MEMORY[0x1E6983030] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"REMOVE_N_PEOPLE_FROM_N_COLLABORATIONS";
  }

  else
  {
    v9 = *MEMORY[0x1E6982DC8];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    if (v9 == v8)
    {
      v13 = @"REMOVE_N_PEOPLE_FROM_N_FOLDERS";
    }

    else
    {
      v13 = @"REMOVE_N_PEOPLE_FROM_N_COLLABORATIONS";
    }
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
  v15 = [v10 localizedStringWithFormat:v14, a3, a5];

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

  v19 = [(__CFString *)v18 stringByAppendingString:v15];

  return v19;
}

+ (id)ck_localizedCommentedPeopleStringWithNumberOfPeople:()LocalizedCollaboration UTType:numberOfFiles:
{
  v7 = a4;
  v8 = v7;
  if (*MEMORY[0x1E6982FE8] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_LEFT_COMMENTS_ON_N_SPREADSHEETS";
  }

  else if (*MEMORY[0x1E6982F60] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_LEFT_COMMENTS_ON_N_PRESENTATIONS";
  }

  else if (*MEMORY[0x1E6983020] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_LEFT_COMMENTS_ON_N_DOCUMENTS";
  }

  else if (*MEMORY[0x1E6983030] == v7)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    v13 = @"N_PEOPLE_LEFT_COMMENTS_ON_N_COLLABORATIONS";
  }

  else
  {
    v9 = *MEMORY[0x1E6982DC8];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle();
    v12 = v11;
    if (v9 == v8)
    {
      v13 = @"N_PEOPLE_LEFT_COMMENTS_ON_N_FOLDERS";
    }

    else
    {
      v13 = @"N_PEOPLE_LEFT_COMMENTS_ON_N_COLLABORATIONS";
    }
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
  v15 = [v10 localizedStringWithFormat:v14, a3, a5];

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

  v19 = [(__CFString *)v18 stringByAppendingString:v15];

  return v19;
}

+ (id)ck_suggestionCategoryTitleWithNumberOfSenders:()LocalizedCollaboration documentTitle:numberOfFiles:numberOfItems:aggregateContentType:aggregateNoticeType:
{
  v14 = a4;
  v15 = a7;
  v16 = a5 == 1 && [v14 length] != 0;
  if (a8 > 4)
  {
    if (a8 <= 6)
    {
      if (a8 == 5)
      {
        if (!v16)
        {
          v17 = [self ck_localizedDeletedStringWithNumberOfPeople:a3 UTType:v15 numberOfFiles:a5];
          goto LABEL_47;
        }
      }

      else if (!v16)
      {
        v17 = [self ck_localizedRenamedStringWithNumberOfPeople:a3 UTType:v15 numberOfFiles:a5];
        goto LABEL_47;
      }

      goto LABEL_30;
    }

    switch(a8)
    {
      case 7:
        if (!v16)
        {
          v17 = [self ck_localizedMovedStringWithNumberOfPeople:a3 UTType:v15 numberOfFiles:a5];
          goto LABEL_47;
        }

        goto LABEL_30;
      case 8:
        if (!v16)
        {
          v17 = [self ck_localizedAddPeopleStringWithNumberOfPeople:a3 UTType:v15 numberOfFiles:a5];
          goto LABEL_47;
        }

        v18 = MEMORY[0x1E696AEC0];
        v19 = CKFrameworkBundle();
        v20 = v19;
        v21 = @"ADD_N_PEOPLE_TO_%@";
        break;
      case 9:
        if (!v16)
        {
          v17 = [self ck_localizedRemovePeopleStringWithNumberOfPeople:a3 UTType:v15 numberOfFiles:a5];
          goto LABEL_47;
        }

        v18 = MEMORY[0x1E696AEC0];
        v19 = CKFrameworkBundle();
        v20 = v19;
        v21 = @"REMOVE_N_PEOPLE_FROM_%@";
        break;
      default:
        goto LABEL_40;
    }

LABEL_34:
    v27 = [v19 localizedStringForKey:v21 value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
    v34 = v14;
    goto LABEL_35;
  }

  if (a8 <= 1)
  {
    if (!a8)
    {
      if (v16)
      {
        goto LABEL_30;
      }

      selfCopy2 = self;
      v23 = a3;
      v24 = v15;
      v25 = a5;
LABEL_41:
      v17 = [selfCopy2 ck_localizedUpdateStringWithNumberOfPeople:v23 UTType:v24 numberOfFiles:v25];
      goto LABEL_47;
    }

    if (a8 == 1)
    {
      if (!v16)
      {
        v17 = [self ck_localizedEditStringWithNumberOfPeople:a3 UTType:v15 numberOfFiles:a5];
        goto LABEL_47;
      }

      v18 = MEMORY[0x1E696AEC0];
      v19 = CKFrameworkBundle();
      v20 = v19;
      v21 = @"N_PEOPLE_MADE_EDITS_TO_%@";
      goto LABEL_34;
    }

LABEL_40:
    selfCopy2 = self;
    v23 = a3;
    v24 = v15;
    v25 = a6;
    goto LABEL_41;
  }

  if (a8 == 2)
  {
    if (!v16)
    {
      v17 = [self ck_localizedCommentedPeopleStringWithNumberOfPeople:a3 UTType:v15 numberOfFiles:a5];
      goto LABEL_47;
    }

    v18 = MEMORY[0x1E696AEC0];
    v19 = CKFrameworkBundle();
    v20 = v19;
    v21 = @"N_PEOPLE_LEFT_COMMENTS_ON_%@";
    goto LABEL_34;
  }

  if (a8 == 3)
  {
    v18 = MEMORY[0x1E696AEC0];
    v20 = CKFrameworkBundle();
    v27 = [v20 localizedStringForKey:@"N_PEOPLE_MENTIONED_YOU" value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
LABEL_35:
    [v18 localizedStringWithFormat:v27, a3, v34];
    goto LABEL_36;
  }

  if (v16)
  {
LABEL_30:
    v26 = MEMORY[0x1E696AEC0];
    v20 = CKFrameworkBundle();
    v27 = [v20 localizedStringForKey:@"N_COLLABORATION_UPDATES_TO_%@" value:&stru_1F04268F8 table:@"ChatKitFormats-Collaboration"];
    [v26 localizedStringWithFormat:v27, a6, v14];
    v28 = LABEL_36:;

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v31 = @"\u200F";
    }

    else
    {
      v31 = @"\u200E";
    }

    v32 = [(__CFString *)v31 stringByAppendingString:v28];

    goto LABEL_48;
  }

  v17 = [self ck_localizedCreatedStringWithNumberOfPeople:a3 UTType:v15 numberOfFiles:a5];
LABEL_47:
  v32 = v17;
LABEL_48:

  return v32;
}

@end