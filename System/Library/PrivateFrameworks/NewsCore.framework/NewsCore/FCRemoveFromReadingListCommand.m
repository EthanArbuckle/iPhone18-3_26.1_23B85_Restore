@interface FCRemoveFromReadingListCommand
- (FCRemoveFromReadingListCommand)initWithEntryID:(id)a3;
- (FCRemoveFromReadingListCommand)initWithEntryIDs:(id)a3;
@end

@implementation FCRemoveFromReadingListCommand

- (FCRemoveFromReadingListCommand)initWithEntryID:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695BA90];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithZoneName:@"ReadingList" ownerName:*MEMORY[0x1E695B728]];
  v8 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v5 zoneID:v7];

  if (v8)
  {
    v13[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = [(FCRemoveRecordsCommand *)self initWithRecordIDs:v9];
  }

  else
  {
    v10 = [(FCRemoveRecordsCommand *)self initWithRecordIDs:MEMORY[0x1E695E0F0]];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (FCRemoveFromReadingListCommand)initWithEntryIDs:(id)a3
{
  v4 = MEMORY[0x1E695BA90];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithZoneName:@"ReadingList" ownerName:*MEMORY[0x1E695B728]];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__FCRemoveFromReadingListCommand_initWithEntryIDs___block_invoke;
  v13[3] = &unk_1E7C38BD8;
  v14 = v7;
  v8 = v7;
  v9 = [v5 fc_arrayByTransformingWithBlock:v13];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = [(FCRemoveRecordsCommand *)self initWithRecordIDs:v10];

  return v11;
}

id __51__FCRemoveFromReadingListCommand_initWithEntryIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695BA70];
  v4 = a2;
  v5 = [[v3 alloc] initWithRecordName:v4 zoneID:*(a1 + 32)];

  return v5;
}

@end