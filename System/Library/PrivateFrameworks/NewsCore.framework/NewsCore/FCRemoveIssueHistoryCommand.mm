@interface FCRemoveIssueHistoryCommand
- (FCRemoveIssueHistoryCommand)initWithIssueHistoryItemIDs:(id)ds;
@end

@implementation FCRemoveIssueHistoryCommand

- (FCRemoveIssueHistoryCommand)initWithIssueHistoryItemIDs:(id)ds
{
  v4 = MEMORY[0x1E695BA90];
  dsCopy = ds;
  v6 = [v4 alloc];
  v7 = [v6 initWithZoneName:@"IssueReadingHistory" ownerName:*MEMORY[0x1E695B728]];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__FCRemoveIssueHistoryCommand_initWithIssueHistoryItemIDs___block_invoke;
  v15[3] = &unk_1E7C38BD8;
  v8 = v7;
  v16 = v8;
  v9 = [dsCopy fc_arrayByTransformingWithBlock:v15];

  if (v9)
  {
    v14.receiver = self;
    v14.super_class = FCRemoveIssueHistoryCommand;
    v10 = [(FCRemoveRecordsCommand *)&v14 initWithRecordIDs:v9];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = FCRemoveIssueHistoryCommand;
    v10 = [(FCRemoveRecordsCommand *)&v13 initWithRecordIDs:MEMORY[0x1E695E0F0]];
  }

  v11 = v10;

  return v11;
}

id __59__FCRemoveIssueHistoryCommand_initWithIssueHistoryItemIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695BA70];
  v4 = a2;
  v5 = [[v3 alloc] initWithRecordName:v4 zoneID:*(a1 + 32)];

  return v5;
}

@end