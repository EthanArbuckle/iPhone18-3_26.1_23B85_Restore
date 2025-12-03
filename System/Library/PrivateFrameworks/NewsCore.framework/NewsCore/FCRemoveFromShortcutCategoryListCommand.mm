@interface FCRemoveFromShortcutCategoryListCommand
- (FCRemoveFromShortcutCategoryListCommand)initWithShortcutCategories:(id)categories;
@end

@implementation FCRemoveFromShortcutCategoryListCommand

- (FCRemoveFromShortcutCategoryListCommand)initWithShortcutCategories:(id)categories
{
  v4 = MEMORY[0x1E695BA90];
  categoriesCopy = categories;
  v6 = [v4 alloc];
  v7 = [v6 initWithZoneName:@"ShortcutCategories" ownerName:*MEMORY[0x1E695B728]];
  v8 = [categoriesCopy fc_arrayByTransformingWithBlock:&__block_literal_global_36];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__FCRemoveFromShortcutCategoryListCommand_initWithShortcutCategories___block_invoke_2;
  v15[3] = &unk_1E7C38BD8;
  v16 = v7;
  v9 = v7;
  v10 = [v8 fc_arrayByTransformingWithBlock:v15];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  v13 = [(FCRemoveRecordsCommand *)self initWithRecordIDs:v12];

  return v13;
}

id __70__FCRemoveFromShortcutCategoryListCommand_initWithShortcutCategories___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695BA70];
  v4 = a2;
  v5 = [[v3 alloc] initWithRecordName:v4 zoneID:*(a1 + 32)];

  return v5;
}

@end