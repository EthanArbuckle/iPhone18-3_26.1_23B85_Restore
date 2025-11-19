@interface CNUICoreContactScratchpad
+ (CNUICoreContactScratchpad)emptyScratchpad;
+ (id)editMatchingContact:(id)a3 inEdits:(id)a4;
+ (id)editsByReplacingEdit:(id)a3 withUpdatedEdit:(id)a4 inEdits:(id)a5;
+ (id)scratchpadByAddingUneditedContact:(id)a3 toScratchpad:(id)a4;
+ (id)scratchpadByRemovingModifiedContact:(id)a3 fromScratchpad:(id)a4;
+ (id)scratchpadBySettingModifiedContact:(id)a3 onExistingEditInScratchpad:(id)a4;
- (BOOL)containsContact:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CNUICoreContactScratchpad)init;
- (CNUICoreContactScratchpad)initWithEdits:(id)a3;
- (NSSet)allContacts;
- (NSSet)modifiedContacts;
- (id)description;
- (id)modifiedContactForContact:(id)a3;
- (id)modifiedIfPresentOtherwiseOriginalContactForContact:(id)a3;
- (id)scratchpadByAddingContacts:(id)a3;
- (id)scratchpadByKeepingContacts:(id)a3;
- (id)scratchpadByRemovingContacts:(id)a3;
- (unint64_t)hash;
@end

@implementation CNUICoreContactScratchpad

+ (CNUICoreContactScratchpad)emptyScratchpad
{
  v2 = objc_alloc_init(CNUICoreContactScratchpad);

  return v2;
}

- (CNUICoreContactScratchpad)init
{
  v3 = [MEMORY[0x1E695DFD8] set];
  v4 = [(CNUICoreContactScratchpad *)self initWithEdits:v3];

  return v4;
}

- (CNUICoreContactScratchpad)initWithEdits:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    if (CNGuardOSLog_cn_once_token_0_4 != -1)
    {
      [CNUICoreContactScratchpad initWithEdits:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_4, OS_LOG_TYPE_FAULT))
    {
      [CNUICoreContactScratchpad initWithEdits:];
    }
  }

  v10.receiver = self;
  v10.super_class = CNUICoreContactScratchpad;
  v6 = [(CNUICoreContactScratchpad *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_edits, a3);
    v8 = v7;
  }

  return v7;
}

- (id)scratchpadByAddingContacts:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    if (CNGuardOSLog_cn_once_token_0_4 != -1)
    {
      [CNUICoreContactScratchpad initWithEdits:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_4, OS_LOG_TYPE_FAULT))
    {
      [CNUICoreContactScratchpad scratchpadByAddingContacts:];
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__CNUICoreContactScratchpad_scratchpadByAddingContacts___block_invoke;
  v7[3] = &unk_1E76E8850;
  v7[4] = self;
  v5 = [v4 _cn_reduce:v7 initialValue:self];

  return v5;
}

id __56__CNUICoreContactScratchpad_scratchpadByAddingContacts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 containsContact:v4];
  v7 = objc_opt_class();
  if (v6)
  {
    [v7 scratchpadBySettingModifiedContact:v4 onExistingEditInScratchpad:v5];
  }

  else
  {
    [v7 scratchpadByAddingUneditedContact:v4 toScratchpad:v5];
  }
  v8 = ;

  return v8;
}

- (id)scratchpadByRemovingContacts:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    if (CNGuardOSLog_cn_once_token_0_4 != -1)
    {
      [CNUICoreContactScratchpad initWithEdits:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_4, OS_LOG_TYPE_FAULT))
    {
      [CNUICoreContactScratchpad scratchpadByRemovingContacts:];
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__CNUICoreContactScratchpad_scratchpadByRemovingContacts___block_invoke;
  v7[3] = &unk_1E76E8850;
  v7[4] = self;
  v5 = [v4 _cn_reduce:v7 initialValue:self];

  return v5;
}

id __58__CNUICoreContactScratchpad_scratchpadByRemovingContacts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 containsContact:v6])
  {
    v7 = [objc_opt_class() scratchpadByRemovingModifiedContact:v6 fromScratchpad:v5];
  }

  else
  {
    v7 = *(a1 + 32);
  }

  v8 = v7;

  return v8;
}

- (id)scratchpadByKeepingContacts:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    if (CNGuardOSLog_cn_once_token_0_4 != -1)
    {
      [CNUICoreContactScratchpad initWithEdits:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_4, OS_LOG_TYPE_FAULT))
    {
      [CNUICoreContactScratchpad scratchpadByKeepingContacts:];
    }
  }

  v5 = [v4 _cn_map:&__block_literal_global_12];
  v6 = [(CNUICoreContactScratchpad *)self allContacts];
  v7 = [v6 allObjects];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__CNUICoreContactScratchpad_scratchpadByKeepingContacts___block_invoke;
  v13[3] = &unk_1E76E81C0;
  v14 = v5;
  v8 = v5;
  v9 = [v7 _cn_filter:v13];

  v10 = [(CNUICoreContactScratchpad *)self scratchpadByRemovingContacts:v9];
  v11 = [v10 scratchpadByAddingContacts:v4];

  return v11;
}

uint64_t __57__CNUICoreContactScratchpad_scratchpadByKeepingContacts___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (id)modifiedContactForContact:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CNUICoreContactScratchpad *)self edits];
  v7 = [v5 editMatchingContact:v4 inEdits:v6];

  if (v7 && [v7 originalAndModifiedDiffer])
  {
    v8 = [v7 modified];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)modifiedIfPresentOtherwiseOriginalContactForContact:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CNUICoreContactScratchpad *)self edits];
  v7 = [v5 editMatchingContact:v4 inEdits:v6];

  if (v7)
  {
    v8 = [v7 modified];

    if (v8)
    {
      [v7 modified];
    }

    else
    {
      [v7 original];
    }
    v9 = ;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)containsContact:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CNUICoreContactScratchpad *)self edits];
  v7 = [v5 editMatchingContact:v4 inEdits:v6];

  return v7 != 0;
}

- (NSSet)modifiedContacts
{
  v3 = [(CNUICoreContactScratchpad *)self edits];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__CNUICoreContactScratchpad_modifiedContacts__block_invoke;
  v7[3] = &unk_1E76E8878;
  v7[4] = self;
  v4 = [v3 _cn_map:v7];
  v5 = [v4 _cn_filter:*MEMORY[0x1E6996550]];

  return v5;
}

id __45__CNUICoreContactScratchpad_modifiedContacts__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 original];
  v4 = [v2 modifiedContactForContact:v3];

  return v4;
}

- (NSSet)allContacts
{
  v2 = [(CNUICoreContactScratchpad *)self edits];
  v3 = [v2 _cn_map:&__block_literal_global_23];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = 1;
  if (self != v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v5 = -[CNUICoreContactScratchpad edits](self, "edits"), v6 = -[CNUICoreContactScratchpad edits](v4, "edits"), v5 | v6) && ![v5 isEqual:v6])
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  v3 = [(CNUICoreContactScratchpad *)self edits];
  v4 = [v2 setHash:v3];

  return v4 + 527;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNUICoreContactScratchpad *)self edits];
  v5 = [v3 appendObject:v4 withName:@"edits"];

  v6 = [v3 build];

  return v6;
}

+ (id)scratchpadByAddingUneditedContact:(id)a3 toScratchpad:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CNUICoreContactEdit alloc] initWithContact:v6];

  v8 = [v5 edits];

  v9 = [v8 setByAddingObject:v7];

  v10 = [[CNUICoreContactScratchpad alloc] initWithEdits:v9];

  return v10;
}

+ (id)scratchpadBySettingModifiedContact:(id)a3 onExistingEditInScratchpad:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 edits];
  v9 = [a1 editMatchingContact:v7 inEdits:v8];

  v10 = [v9 editBySettingModifiedContact:v7];

  v11 = objc_opt_class();
  v12 = [v6 edits];

  v13 = [v11 editsByReplacingEdit:v9 withUpdatedEdit:v10 inEdits:v12];

  v14 = [[CNUICoreContactScratchpad alloc] initWithEdits:v13];

  return v14;
}

+ (id)editMatchingContact:(id)a3 inEdits:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__CNUICoreContactScratchpad_editMatchingContact_inEdits___block_invoke;
  v9[3] = &unk_1E76E88C0;
  v10 = v5;
  v6 = v5;
  v7 = [a4 _cn_firstObjectPassingTest:v9];

  return v7;
}

+ (id)editsByReplacingEdit:(id)a3 withUpdatedEdit:(id)a4 inEdits:(id)a5
{
  v7 = a3;
  v8 = a4;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __74__CNUICoreContactScratchpad_editsByReplacingEdit_withUpdatedEdit_inEdits___block_invoke;
  v17 = &unk_1E76E88E8;
  v18 = v7;
  v19 = v8;
  v9 = v8;
  v10 = v7;
  v11 = [a5 _cn_map:&v14];
  v12 = [v11 _cn_filter:{*MEMORY[0x1E6996550], v14, v15, v16, v17}];

  return v12;
}

void *__74__CNUICoreContactScratchpad_editsByReplacingEdit_withUpdatedEdit_inEdits___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 isEqual:v3];
  v6 = v4;
  if (v5)
  {
    v6 = *(a1 + 40);
  }

  v7 = v6;

  return v6;
}

+ (id)scratchpadByRemovingModifiedContact:(id)a3 fromScratchpad:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 edits];
  v9 = [a1 editMatchingContact:v7 inEdits:v8];

  v10 = objc_opt_class();
  v11 = [v6 edits];

  v12 = [v10 editsByReplacingEdit:v9 withUpdatedEdit:0 inEdits:v11];

  v13 = [[CNUICoreContactScratchpad alloc] initWithEdits:v12];

  return v13;
}

@end