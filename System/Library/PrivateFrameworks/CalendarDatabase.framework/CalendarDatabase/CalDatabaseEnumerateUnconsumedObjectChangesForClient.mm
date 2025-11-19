@interface CalDatabaseEnumerateUnconsumedObjectChangesForClient
@end

@implementation CalDatabaseEnumerateUnconsumedObjectChangesForClient

void ___CalDatabaseEnumerateUnconsumedObjectChangesForClient_block_invoke(uint64_t a1, uint64_t a2, int a3, int a4, void *a5, int a6)
{
  v10 = a5;
  v11 = 40;
  if (a4)
  {
    v11 = 32;
  }

  v12 = *(a1 + v11);
  if (a3 != 6)
  {
    v14 = (a1 + 72);
    v15 = *(a1 + 72);
    if (a3 == 26 && v15)
    {
      goto LABEL_19;
    }

    if (v15)
    {
      goto LABEL_9;
    }

LABEL_11:
    v17 = MEMORY[0x1E12C7520](v10);
    goto LABEL_12;
  }

  v13 = *(a1 + 48);

  v14 = (a1 + 72);
  if (!*(a1 + 72))
  {
    v12 = v13;
    goto LABEL_11;
  }

  v12 = v13;
LABEL_9:
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = ___CalDatabaseEnumerateUnconsumedObjectChangesForClient_block_invoke_2;
  v21[3] = &unk_1E8694A90;
  v22 = v10;
  v16 = *v14;
  v23 = a6;
  v24 = v16;
  v17 = MEMORY[0x1E12C7520](v21);

LABEL_12:
  RecordStore = _CalDatabaseGetRecordStore(*(a1 + 64));
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithBindBlockAndProperties();

LABEL_19:
}

uint64_t ___CalDatabaseEnumerateUnconsumedObjectChangesForClient_block_invoke_2(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 32) + 16))();
  v4 = *(a2 + 8);
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);

  return sqlite3_bind_int(v4, v5, v6);
}

@end