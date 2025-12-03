@interface FCPuzzleTypeSettingsEntry
- (CKRecord)asCKRecord;
- (FCPuzzleTypeSettingsEntry)initWithEntryID:(id)d puzzleTypeID:(id)iD settingsData:(id)data lastSeenPuzzleIDs:(id)ds;
- (id)initWithEntryID:(void *)d dictionaryRepresentation:;
@end

@implementation FCPuzzleTypeSettingsEntry

- (FCPuzzleTypeSettingsEntry)initWithEntryID:(id)d puzzleTypeID:(id)iD settingsData:(id)data lastSeenPuzzleIDs:(id)ds
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  dataCopy = data;
  dsCopy = ds;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    if (iDCopy)
    {
      goto LABEL_6;
    }
  }

  else if (iDCopy)
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
    if (dCopy && iDCopy)
    {
      v16 = [dCopy copy];
      identifier = v15->_identifier;
      v15->_identifier = v16;

      v18 = [iDCopy copy];
      puzzleTypeID = v15->_puzzleTypeID;
      v15->_puzzleTypeID = v18;

      v20 = [dataCopy copy];
      settingsData = v15->_settingsData;
      v15->_settingsData = v20;

      v22 = [dsCopy copy];
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
  identifier = [(FCPuzzleTypeSettingsEntry *)self identifier];
  v5 = [v3 initWithRecordName:identifier zoneID:_MergedGlobals_151];

  v6 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"PuzzleTypeSettings" recordID:v5];
  puzzleTypeID = [(FCPuzzleTypeSettingsEntry *)self puzzleTypeID];
  [v6 setValue:puzzleTypeID forKey:@"puzzleTypeID"];

  settingsData = [(FCPuzzleTypeSettingsEntry *)self settingsData];
  [v6 setValue:settingsData forKey:@"settingsData"];

  lastSeenPuzzleIDs = [(FCPuzzleTypeSettingsEntry *)self lastSeenPuzzleIDs];
  [v6 setValue:lastSeenPuzzleIDs forKey:@"lastSeenPuzzleIDs"];

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

- (id)initWithEntryID:(void *)d dictionaryRepresentation:
{
  selfCopy = self;
  if (self)
  {
    dCopy = d;
    v6 = a2;
    v7 = [dCopy objectForKeyedSubscript:@"puzzleTypeID"];
    v8 = [dCopy objectForKeyedSubscript:@"settingsData"];
    v9 = [dCopy objectForKeyedSubscript:@"lastSeenPuzzleIDs"];

    v10 = [selfCopy initWithEntryID:v6 puzzleTypeID:v7 settingsData:v8 lastSeenPuzzleIDs:v9];
    selfCopy = v10;
  }

  return selfCopy;
}

@end