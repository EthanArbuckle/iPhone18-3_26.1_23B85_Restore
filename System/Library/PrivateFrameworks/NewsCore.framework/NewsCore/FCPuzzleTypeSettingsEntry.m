@interface FCPuzzleTypeSettingsEntry
- (CKRecord)asCKRecord;
- (FCPuzzleTypeSettingsEntry)initWithEntryID:(id)a3 puzzleTypeID:(id)a4 settingsData:(id)a5 lastSeenPuzzleIDs:(id)a6;
- (id)initWithEntryID:(void *)a3 dictionaryRepresentation:;
@end

@implementation FCPuzzleTypeSettingsEntry

- (FCPuzzleTypeSettingsEntry)initWithEntryID:(id)a3 puzzleTypeID:(id)a4 settingsData:(id)a5 lastSeenPuzzleIDs:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"puzzleTypeSettings entry must have an entryID"];
    *buf = 136315906;
    v30 = "[FCPuzzleTypeSettingsEntry initWithEntryID:puzzleTypeID:settingsData:lastSeenPuzzleIDs:]";
    v31 = 2080;
    v32 = "FCPuzzleTypeSettingsEntry.m";
    v33 = 1024;
    v34 = 19;
    v35 = 2114;
    v36 = v26;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v11)
    {
      goto LABEL_6;
    }
  }

  else if (v11)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"puzzleTypeSettings entry must have a puzzleTypeID"];
    *buf = 136315906;
    v30 = "[FCPuzzleTypeSettingsEntry initWithEntryID:puzzleTypeID:settingsData:lastSeenPuzzleIDs:]";
    v31 = 2080;
    v32 = "FCPuzzleTypeSettingsEntry.m";
    v33 = 1024;
    v34 = 20;
    v35 = 2114;
    v36 = v27;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v28.receiver = self;
  v28.super_class = FCPuzzleTypeSettingsEntry;
  v14 = [(FCPuzzleTypeSettingsEntry *)&v28 init];
  v15 = v14;
  if (v14)
  {
    if (v10 && v11)
    {
      v16 = [v10 copy];
      identifier = v15->_identifier;
      v15->_identifier = v16;

      v18 = [v11 copy];
      puzzleTypeID = v15->_puzzleTypeID;
      v15->_puzzleTypeID = v18;

      v20 = [v12 copy];
      settingsData = v15->_settingsData;
      v15->_settingsData = v20;

      v22 = [v13 copy];
      lastSeenPuzzleIDs = v15->_lastSeenPuzzleIDs;
      v15->_lastSeenPuzzleIDs = v22;
    }

    else
    {
      lastSeenPuzzleIDs = v14;
      v15 = 0;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v15;
}

- (CKRecord)asCKRecord
{
  if (qword_1EDB27100 != -1)
  {
    dispatch_once(&qword_1EDB27100, &__block_literal_global_46);
  }

  v3 = objc_alloc(MEMORY[0x1E695BA70]);
  v4 = [(FCPuzzleTypeSettingsEntry *)self identifier];
  v5 = [v3 initWithRecordName:v4 zoneID:_MergedGlobals_151];

  v6 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"PuzzleTypeSettings" recordID:v5];
  v7 = [(FCPuzzleTypeSettingsEntry *)self puzzleTypeID];
  [v6 setValue:v7 forKey:@"puzzleTypeID"];

  v8 = [(FCPuzzleTypeSettingsEntry *)self settingsData];
  [v6 setValue:v8 forKey:@"settingsData"];

  v9 = [(FCPuzzleTypeSettingsEntry *)self lastSeenPuzzleIDs];
  [v6 setValue:v9 forKey:@"lastSeenPuzzleIDs"];

  return v6;
}

uint64_t __39__FCPuzzleTypeSettingsEntry_asCKRecord__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695BA90]);
  v1 = [v0 initWithZoneName:@"UserInfo" ownerName:*MEMORY[0x1E695B728]];
  v2 = _MergedGlobals_151;
  _MergedGlobals_151 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (id)initWithEntryID:(void *)a3 dictionaryRepresentation:
{
  v3 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = [v5 objectForKeyedSubscript:@"puzzleTypeID"];
    v8 = [v5 objectForKeyedSubscript:@"settingsData"];
    v9 = [v5 objectForKeyedSubscript:@"lastSeenPuzzleIDs"];

    v10 = [v3 initWithEntryID:v6 puzzleTypeID:v7 settingsData:v8 lastSeenPuzzleIDs:v9];
    v3 = v10;
  }

  return v3;
}

@end