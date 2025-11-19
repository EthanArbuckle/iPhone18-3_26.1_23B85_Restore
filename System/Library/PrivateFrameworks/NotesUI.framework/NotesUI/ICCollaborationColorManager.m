@interface ICCollaborationColorManager
+ (UIColor)defaultColor;
+ (id)participantColors;
- (ICCollaborationColorManager)init;
- (id)baseColorValuesForUserID:(id)a3;
- (id)containerScopedUserRecordNameForAccount:(id)a3;
- (id)highlightColorForUserID:(id)a3 note:(id)a4;
- (id)participantAXDisplayNameForUserID:(id)a3 forNote:(id)a4;
@end

@implementation ICCollaborationColorManager

+ (id)participantColors
{
  if (participantColors_onceToken != -1)
  {
    +[ICCollaborationColorManager participantColors];
  }

  v3 = participantColors_participantColors;

  return v3;
}

void __48__ICCollaborationColorManager_participantColors__block_invoke()
{
  v17[15] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E69B7840]) initWithRed:0.643137255 green:0.466666667 blue:0.925490196 alpha:1.0];
  v17[0] = v16;
  v15 = [objc_alloc(MEMORY[0x1E69B7840]) initWithRed:0.984313725 green:0.549019608 blue:0.11372549 alpha:1.0];
  v17[1] = v15;
  v14 = [objc_alloc(MEMORY[0x1E69B7840]) initWithRed:0.650980392 green:0.741176471 blue:0.843137255 alpha:1.0];
  v17[2] = v14;
  v13 = [objc_alloc(MEMORY[0x1E69B7840]) initWithRed:0.360784314 green:0.729411765 blue:0.180392157 alpha:1.0];
  v17[3] = v13;
  v12 = [objc_alloc(MEMORY[0x1E69B7840]) initWithRed:0.925490196 green:0.474509804 blue:0.862745098 alpha:1.0];
  v17[4] = v12;
  v0 = [objc_alloc(MEMORY[0x1E69B7840]) initWithRed:0.290196078 green:0.760784314 blue:0.658823529 alpha:1.0];
  v17[5] = v0;
  v1 = [objc_alloc(MEMORY[0x1E69B7840]) initWithRed:0.576470588 green:0.666666667 blue:0.0 alpha:1.0];
  v17[6] = v1;
  v2 = [objc_alloc(MEMORY[0x1E69B7840]) initWithRed:0.0196078431 green:0.576470588 blue:0.956862745 alpha:1.0];
  v17[7] = v2;
  v3 = [objc_alloc(MEMORY[0x1E69B7840]) initWithRed:0.325490196 green:0.215686275 blue:0.478431373 alpha:1.0];
  v17[8] = v3;
  v4 = [objc_alloc(MEMORY[0x1E69B7840]) initWithRed:0.992156863 green:0.137254902 blue:0.345098039 alpha:1.0];
  v17[9] = v4;
  v5 = [objc_alloc(MEMORY[0x1E69B7840]) initWithRed:1.0 green:0.478431373 blue:0.360784314 alpha:1.0];
  v17[10] = v5;
  v6 = [objc_alloc(MEMORY[0x1E69B7840]) initWithRed:0.945098039 green:0.22745098 blue:0.0745098039 alpha:1.0];
  v17[11] = v6;
  v7 = [objc_alloc(MEMORY[0x1E69B7840]) initWithRed:0.701960784 green:0.156862745 blue:0.317647059 alpha:1.0];
  v17[12] = v7;
  v8 = [objc_alloc(MEMORY[0x1E69B7840]) initWithRed:0.670588235 green:0.352941176 blue:0.301960784 alpha:1.0];
  v17[13] = v8;
  v9 = [objc_alloc(MEMORY[0x1E69B7840]) initWithRed:0.494117647 green:0.611764706 blue:0.850980392 alpha:1.0];
  v17[14] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:15];
  v11 = participantColors_participantColors;
  participantColors_participantColors = v10;
}

+ (UIColor)defaultColor
{
  if (defaultColor_onceToken != -1)
  {
    +[ICCollaborationColorManager defaultColor];
  }

  v3 = defaultColor_defaultColor;

  return v3;
}

uint64_t __43__ICCollaborationColorManager_defaultColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.917647059 green:0.733333333 blue:0.0 alpha:1.0];
  defaultColor_defaultColor = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

- (ICCollaborationColorManager)init
{
  v10.receiver = self;
  v10.super_class = ICCollaborationColorManager;
  v2 = [(ICCollaborationColorManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    userIDToColorsDict = v2->_userIDToColorsDict;
    v2->_userIDToColorsDict = v3;

    v5 = [objc_opt_class() participantColors];
    v6 = [v5 count];

    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
    colorUsageCounts = v2->_colorUsageCounts;
    v2->_colorUsageCounts = v7;

    for (; v6; --v6)
    {
      [(NSMutableArray *)v2->_colorUsageCounts addObject:&unk_1F4FC4158];
    }

    v2->_colorUsageCountMinimum = 0;
  }

  return v2;
}

- (id)highlightColorForUserID:(id)a3 note:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:*MEMORY[0x1E695B728]])
  {
    v8 = [v7 account];
    v9 = [(ICCollaborationColorManager *)self containerScopedUserRecordNameForAccount:v8];

    v6 = v9;
  }

  if (!v6 || ([MEMORY[0x1E696AFB0] CR_unknown], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "UUIDString"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v6, "isEqual:", v11), v11, v10, v12))
  {
    v13 = [MEMORY[0x1E69DC888] clearColor];
LABEL_6:
    v14 = v13;
    goto LABEL_7;
  }

  if (([v7 isSharedViaICloud] & 1) == 0)
  {
    v13 = [objc_opt_class() defaultColor];
    goto LABEL_6;
  }

  v16 = [(ICCollaborationColorManager *)self baseColorValuesForUserID:v6];
  v17 = MEMORY[0x1E69DC888];
  [v16 redValue];
  v19 = v18;
  [v16 greenValue];
  v21 = v20;
  [v16 blueValue];
  v23 = v22;
  [v16 alphaValue];
  v14 = [v17 colorWithRed:v19 green:v21 blue:v23 alpha:v24];

LABEL_7:

  return v14;
}

- (id)baseColorValuesForUserID:(id)a3
{
  v4 = a3;
  v5 = [(ICCollaborationColorManager *)self userIDToColorsDict];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(ICCollaborationColorManager *)self userIDToColorsDict];
    v8 = [v7 objectForKeyedSubscript:v4];
  }

  else
  {
    v7 = [objc_opt_class() participantColors];
    v9 = [(ICCollaborationColorManager *)self colorUsageCounts];
    v10 = [v4 hash];
    v11 = v10 % [v7 count];
    [v9 count];
    v12 = 0;
    while (1)
    {
      if (v11 >= [v9 count])
      {
        v11 = 0;
      }

      if (v12 >= [v9 count])
      {
        [(ICCollaborationColorManager *)self setColorUsageCountMinimum:[(ICCollaborationColorManager *)self colorUsageCountMinimum]+ 1];
      }

      v13 = [v9 objectAtIndexedSubscript:v11];
      v14 = [v13 unsignedIntegerValue];

      if (v14 <= [(ICCollaborationColorManager *)self colorUsageCountMinimum])
      {
        break;
      }

      ++v11;
      if (++v12 > [v9 count])
      {
        v8 = 0;
        goto LABEL_12;
      }
    }

    v8 = [v7 objectAtIndexedSubscript:v11];
    v15 = [(ICCollaborationColorManager *)self userIDToColorsDict];
    [v15 setObject:v8 forKey:v4];

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14 + 1];
    [v9 setObject:v16 atIndexedSubscript:v11];

LABEL_12:
  }

  return v8;
}

- (id)containerScopedUserRecordNameForAccount:(id)a3
{
  v3 = a3;
  if (containerScopedUserRecordNameForAccount__onceToken != -1)
  {
    [ICCollaborationColorManager containerScopedUserRecordNameForAccount:];
  }

  v4 = [v3 identifier];
  if ([v4 length])
  {
    os_unfair_lock_lock(&containerScopedUserRecordNameForAccount__accountIDToRecordNameLock);
    v5 = [containerScopedUserRecordNameForAccount__accountIDToRecordName objectForKeyedSubscript:v4];
    os_unfair_lock_unlock(&containerScopedUserRecordNameForAccount__accountIDToRecordNameLock);
    if (v5)
    {
      v5 = v5;
      v6 = v5;
    }

    else
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = __Block_byref_object_copy__65;
      v23 = __Block_byref_object_dispose__65;
      v24 = 0;
      v7 = dispatch_semaphore_create(0);
      v8 = [MEMORY[0x1E69B76F0] sharedContext];
      v9 = [v8 containerForAccountID:v4];

      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __71__ICCollaborationColorManager_containerScopedUserRecordNameForAccount___block_invoke_22;
      v16 = &unk_1E846DBE8;
      v18 = &v19;
      v10 = v7;
      v17 = v10;
      [v9 fetchUserRecordIDWithCompletionHandler:&v13];
      v11 = dispatch_time(0, 120000000000);
      dispatch_semaphore_wait(v10, v11);
      os_unfair_lock_lock(&containerScopedUserRecordNameForAccount__accountIDToRecordNameLock);
      [containerScopedUserRecordNameForAccount__accountIDToRecordName setObject:v20[5] forKeyedSubscript:{v4, v13, v14, v15, v16}];
      os_unfair_lock_unlock(&containerScopedUserRecordNameForAccount__accountIDToRecordNameLock);
      v6 = v20[5];

      _Block_object_dispose(&v19, 8);
    }
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICCollaborationColorManager containerScopedUserRecordNameForAccount:v5];
    }

    v6 = 0;
  }

  return v6;
}

uint64_t __71__ICCollaborationColorManager_containerScopedUserRecordNameForAccount___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  containerScopedUserRecordNameForAccount__accountIDToRecordName = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void __71__ICCollaborationColorManager_containerScopedUserRecordNameForAccount___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __71__ICCollaborationColorManager_containerScopedUserRecordNameForAccount___block_invoke_22_cold_1(v5, v6);
    }
  }

  else
  {
    v7 = [a2 recordName];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)participantAXDisplayNameForUserID:(id)a3 forNote:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([v6 isEqualToString:*MEMORY[0x1E695B728]] & 1) != 0 || (objc_msgSend(v7, "account"), v8 = objc_claimAutoreleasedReturnValue(), -[ICCollaborationColorManager containerScopedUserRecordNameForAccount:](self, "containerScopedUserRecordNameForAccount:", v8), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v6, "isEqualToString:", v9), v9, v8, v10))
  {
    v11 = __ICLocalizedFrameworkString_impl(@"Me", @"Me", 0, 1);
  }

  else
  {
    v12 = [v7 serverShare];
    v13 = [v12 participants];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = v13;
    v11 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v25 = v7;
      v15 = *v27;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v14);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          v18 = [v17 userIdentity];
          v19 = [v18 userRecordID];
          v20 = [v19 recordName];
          v21 = [v20 isEqualToString:v6];

          if (v21)
          {
            v22 = [v17 userIdentity];
            v23 = [v22 nameComponents];
            v11 = [v23 ic_localizedNameWithDefaultFormattingStyle];

            goto LABEL_14;
          }
        }

        v11 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_14:
      v7 = v25;
    }
  }

  return v11;
}

void __71__ICCollaborationColorManager_containerScopedUserRecordNameForAccount___block_invoke_22_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Error fetching container scoped user recordID: %@", &v2, 0xCu);
}

@end