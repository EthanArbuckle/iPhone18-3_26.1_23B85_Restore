@interface NSDiffableDataSourceSnapshot(MailUI)
+ (id)log;
- (id)mui_validItemIDFromExistingItemID:()MailUI updateReason:;
- (id)mui_validItemIDsFromExistingItemIDs:()MailUI section:updateReason:;
- (id)mui_validItemIDsFromExistingItemIDs:()MailUI updateReason:;
- (id)mui_validItemIDsFromIndexPaths:()MailUI;
- (id)mui_validSectionIdentifiers;
- (void)mui_insertSection:()MailUI usingOrderedIdentifiers:;
@end

@implementation NSDiffableDataSourceSnapshot(MailUI)

- (id)mui_validSectionIdentifiers
{
  v2 = [a1 sectionIdentifiers];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__NSDiffableDataSourceSnapshot_MailUI__mui_validSectionIdentifiers__block_invoke;
  v5[3] = &unk_27818B300;
  v5[4] = a1;
  v3 = [v2 ef_filter:v5];

  return v3;
}

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NSDiffableDataSourceSnapshot_MailUI__log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_21 != -1)
  {
    dispatch_once(&log_onceToken_21, block);
  }

  v1 = log_log_21;

  return v1;
}

- (id)mui_validItemIDFromExistingItemID:()MailUI updateReason:
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6 && [a1 indexOfItemIdentifier:v6] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x277CFB890] log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_214A5E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ : Failed to find existing itemID in snapshot: %{public}@", &v11, 0x16u);
    }

    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

- (id)mui_validItemIDsFromExistingItemIDs:()MailUI updateReason:
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__NSDiffableDataSourceSnapshot_MailUI__mui_validItemIDsFromExistingItemIDs_updateReason___block_invoke;
  v10[3] = &unk_27818B288;
  v10[4] = a1;
  v11 = v6;
  v7 = v6;
  v8 = [a3 ef_compactMap:v10];

  return v8;
}

- (id)mui_validItemIDsFromExistingItemIDs:()MailUI section:updateReason:
{
  v8 = a5;
  v9 = MEMORY[0x277CBEB98];
  v10 = a3;
  v11 = [a1 itemIdentifiersInSectionWithIdentifier:a4];
  v12 = [v9 setWithArray:v11];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __97__NSDiffableDataSourceSnapshot_MailUI__mui_validItemIDsFromExistingItemIDs_section_updateReason___block_invoke;
  v17[3] = &unk_27818B2B0;
  v18 = v12;
  v19 = v8;
  v13 = v8;
  v14 = v12;
  v15 = [v10 ef_filter:v17];

  return v15;
}

- (id)mui_validItemIDsFromIndexPaths:()MailUI
{
  v4 = a3;
  v5 = [a1 sectionIdentifiers];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__NSDiffableDataSourceSnapshot_MailUI__mui_validItemIDsFromIndexPaths___block_invoke;
  v9[3] = &unk_27818B2D8;
  v10 = v5;
  v11 = a1;
  v6 = v5;
  v7 = [v4 ef_compactMap:v9];

  return v7;
}

- (void)mui_insertSection:()MailUI usingOrderedIdentifiers:
{
  v26[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [a1 sectionIdentifiers];
  if ([v9 containsObject:v7])
  {
    v10 = v8;
  }

  else
  {
    v26[0] = v7;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    [a1 appendSectionsWithIdentifiers:v11];

    v12 = [v9 arrayByAddingObject:v7];

    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __82__NSDiffableDataSourceSnapshot_MailUI__mui_insertSection_usingOrderedIdentifiers___block_invoke;
    v24 = &unk_27818B300;
    v9 = v12;
    v25 = v9;
    v10 = [v8 ef_filter:&v21];

    v13 = [v9 differenceFromArray:v10 withOptions:4];
    v14 = [v13 insertions];
    v15 = [v14 firstObject];

    if (v15)
    {
      v16 = [v15 associatedIndex];
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = v16;
        v18 = [v15 index];
        if (v18 <= v17)
        {
          v19 = [MEMORY[0x277CCA890] currentHandler];
          [v19 handleFailureInMethod:a2 object:a1 file:@"NSDiffableDataSourceSnapshot+MailUI.m" lineNumber:112 description:{@"Unexpected insertion difference identifiers: %@ ordered: %@ insertion %@", v9, v10, v15, v21, v22, v23, v24}];
        }

        else
        {
          v19 = [v9 objectAtIndexedSubscript:v18];
          v20 = [v9 objectAtIndexedSubscript:v17];
          [a1 moveSectionWithIdentifier:v19 beforeSectionWithIdentifier:v20];
        }
      }
    }
  }
}

@end