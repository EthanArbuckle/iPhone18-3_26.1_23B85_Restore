@interface NSDiffableDataSourceSnapshot
@end

@implementation NSDiffableDataSourceSnapshot

void __43__NSDiffableDataSourceSnapshot_MailUI__log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log_21;
  log_log_21 = v2;
}

uint64_t __97__NSDiffableDataSourceSnapshot_MailUI__mui_validItemIDsFromExistingItemIDs_section_updateReason___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) containsObject:v3];
  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x277CFB890] log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v3;
      _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ : Failed to find existing itemID in snapshot: %{public}@", &v8, 0x16u);
    }
  }

  return v4;
}

id __71__NSDiffableDataSourceSnapshot_MailUI__mui_validItemIDsFromIndexPaths___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 section];
  if (v4 >= [*(a1 + 32) count])
  {
    v8 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(v3, "section")}];
    v6 = [*(a1 + 40) itemIdentifiersInSectionWithIdentifier:v5];
    v7 = [v3 item];
    if (v7 >= [v6 count])
    {
      v8 = 0;
    }

    else
    {
      v8 = [v6 objectAtIndexedSubscript:{objc_msgSend(v3, "item")}];
    }
  }

  return v8;
}

@end