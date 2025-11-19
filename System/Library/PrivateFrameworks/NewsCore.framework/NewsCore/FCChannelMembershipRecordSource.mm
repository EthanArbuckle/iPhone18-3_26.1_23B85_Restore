@interface FCChannelMembershipRecordSource
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)a3 base:(id)a4;
@end

@implementation FCChannelMembershipRecordSource

- (id)nonLocalizableKeys
{
  if (qword_1EDB27978 != -1)
  {
    dispatch_once(&qword_1EDB27978, &__block_literal_global_4_12);
  }

  v3 = _MergedGlobals_208;

  return v3;
}

uint64_t __53__FCChannelMembershipRecordSource_nonLocalizableKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"channelTagID", @"canAccessDrafts", @"draftsArticleListID", @"draftsIssueListID", 0}];
  v1 = _MergedGlobals_208;
  _MergedGlobals_208 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)recordFromCKRecord:(id)a3 base:(id)a4
{
  v5 = MEMORY[0x1E69B6DE8];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setBase:v6];

  v9 = [v7 objectForKeyedSubscript:@"channelTagID"];
  [v8 setChannelID:v9];

  v10 = [v7 objectForKeyedSubscript:@"canAccessDrafts"];
  [v8 setCanAccessDrafts:{objc_msgSend(v10, "BOOLValue")}];

  v11 = [v7 objectForKeyedSubscript:@"draftsArticleListID"];
  [v8 setDraftArticleListID:v11];

  v12 = [v7 objectForKeyedSubscript:@"draftsIssueListID"];

  [v8 setDraftIssueListID:v12];

  return v8;
}

@end