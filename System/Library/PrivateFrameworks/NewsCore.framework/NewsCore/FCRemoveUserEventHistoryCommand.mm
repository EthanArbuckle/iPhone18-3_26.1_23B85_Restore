@interface FCRemoveUserEventHistoryCommand
- (FCRemoveUserEventHistoryCommand)initWithSessionIDs:(id)a3 recordZoneID:(id)a4;
@end

@implementation FCRemoveUserEventHistoryCommand

- (FCRemoveUserEventHistoryCommand)initWithSessionIDs:(id)a3 recordZoneID:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__FCRemoveUserEventHistoryCommand_initWithSessionIDs_recordZoneID___block_invoke;
  v13[3] = &unk_1E7C38BD8;
  v14 = v6;
  v7 = v6;
  v8 = [a3 fc_arrayByTransformingWithBlock:v13];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = [(FCRemoveRecordsCommand *)self initWithRecordIDs:v10];

  return v11;
}

id __67__FCRemoveUserEventHistoryCommand_initWithSessionIDs_recordZoneID___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695BA70];
  v4 = a2;
  v5 = [[v3 alloc] initWithRecordName:v4 zoneID:*(a1 + 32)];

  return v5;
}

@end