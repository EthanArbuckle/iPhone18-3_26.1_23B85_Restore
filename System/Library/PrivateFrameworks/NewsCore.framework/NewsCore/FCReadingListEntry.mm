@interface FCReadingListEntry
- (id)asCKRecord;
- (id)initWithEntryID:(void *)a3 articleID:(void *)a4 dateAdded:(void *)a5 origin:;
- (id)initWithEntryID:(void *)a3 dictionaryRepresentation:;
@end

@implementation FCReadingListEntry

- (id)initWithEntryID:(void *)a3 dictionaryRepresentation:
{
  v3 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = [v5 objectForKeyedSubscript:@"articleID"];
    v8 = [v5 objectForKeyedSubscript:@"dateAdded"];
    v9 = [v5 objectForKeyedSubscript:@"origin"];

    v10 = [v9 unsignedIntegerValue];
    if ((v10 - 1) >= 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    v12 = [(FCReadingListEntry *)v3 initWithEntryID:v6 articleID:v7 dateAdded:v8 origin:v11];
    v3 = v12;
  }

  return v3;
}

- (id)initWithEntryID:(void *)a3 articleID:(void *)a4 dateAdded:(void *)a5 origin:
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"reading list entry must have an identifier"];
    *buf = 136315906;
    v23 = "[FCReadingListEntry initWithEntryID:articleID:dateAdded:origin:]";
    v24 = 2080;
    v25 = "FCReadingListEntry.m";
    v26 = 1024;
    v27 = 18;
    v28 = 2114;
    v29 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (!v10)
    {
LABEL_5:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"reading list entry must have an article ID"];
        *buf = 136315906;
        v23 = "[FCReadingListEntry initWithEntryID:articleID:dateAdded:origin:]";
        v24 = 2080;
        v25 = "FCReadingListEntry.m";
        v26 = 1024;
        v27 = 19;
        v28 = 2114;
        v29 = v20;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }
  }

  else if (!v10)
  {
    goto LABEL_5;
  }

  v21.receiver = a1;
  v21.super_class = FCReadingListEntry;
  v12 = objc_msgSendSuper2(&v21, sel_init);
  a1 = v12;
  if (v12)
  {
    if (v9 && v10)
    {
      v13 = [v9 copy];
      v14 = a1[1];
      a1[1] = v13;

      v15 = [v10 copy];
      v16 = a1[2];
      a1[2] = v15;

      objc_storeStrong(a1 + 3, a4);
      a1[4] = a5;
    }

    else
    {

      a1 = 0;
    }
  }

LABEL_12:

  v17 = *MEMORY[0x1E69E9840];
  return a1;
}

- (id)asCKRecord
{
  if (a1)
  {
    if (qword_1EDB27800 != -1)
    {
      dispatch_once(&qword_1EDB27800, &__block_literal_global_145);
    }

    v2 = objc_alloc(MEMORY[0x1E695BA70]);
    v3 = [v2 initWithRecordName:a1[1] zoneID:_MergedGlobals_192];
    v4 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"ReadingListEntry" recordID:v3];
    [v4 setObject:a1[2] forKeyedSubscript:@"articleID"];
    [v4 setObject:a1[3] forKeyedSubscript:@"dateAdded"];
    if ((a1[4] - 1) >= 3)
    {
      v5 = 0;
    }

    else
    {
      v5 = a1[4];
    }

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
    [v4 setObject:v6 forKeyedSubscript:@"origin"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __32__FCReadingListEntry_asCKRecord__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695BA90]);
  v1 = [v0 initWithZoneName:@"ReadingList" ownerName:*MEMORY[0x1E695B728]];
  v2 = _MergedGlobals_192;
  _MergedGlobals_192 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end