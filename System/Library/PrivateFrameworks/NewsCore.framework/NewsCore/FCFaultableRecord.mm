@interface FCFaultableRecord
+ (FCFaultableRecord)faultableRecordWithRecord:(uint64_t)a1;
+ (id)readValueFromKeyValuePair:(id)a3;
- (FCFaultableRecord)init;
- (id)record;
- (id)recordBase;
- (void)writeToKeyValuePair:(id)a3;
- (void)writeValueToDataWriter:(id)a3;
@end

@implementation FCFaultableRecord

- (FCFaultableRecord)init
{
  v3.receiver = self;
  v3.super_class = FCFaultableRecord;
  result = [(FCFaultableRecord *)&v3 init];
  if (result)
  {
    result->_recordLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (id)recordBase
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v2 = (a1 + 24);
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    v5 = *(a1 + 16);
    os_unfair_lock_unlock((a1 + 8));
    if (!v3)
    {
      if (v5)
      {
        [v5 base];
      }

      else
      {
        NTPBReadBaseFromRecordData();
      }
      v3 = ;
      os_unfair_lock_lock_with_options();
      if (*v2)
      {
        v6 = *v2;

        os_unfair_lock_unlock((a1 + 8));
        v3 = v6;
      }

      else
      {
        objc_storeStrong((a1 + 24), v3);
        os_unfair_lock_unlock((a1 + 8));
        if (!v3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"faultable record failed to load base"];
            v13 = 136315906;
            v14 = "[FCFaultableRecord recordBase]";
            v15 = 2080;
            v16 = "FCFaultableRecord.m";
            v17 = 1024;
            v18 = 103;
            v19 = 2114;
            v20 = v12;
            _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: MissingRecordBase) : %s %s:%d %{public}@", &v13, 0x26u);
          }

          v3 = 0;
          goto LABEL_12;
        }
      }
    }

    v7 = [v3 identifier];

    if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"faultable record loaded base without an identifier"];
      v13 = 136315906;
      v14 = "[FCFaultableRecord recordBase]";
      v15 = 2080;
      v16 = "FCFaultableRecord.m";
      v17 = 1024;
      v18 = 104;
      v19 = 2114;
      v20 = v11;
      _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: CorruptRecordBase) : %s %s:%d %{public}@", &v13, 0x26u);
    }

LABEL_12:
    v8 = v3;

    goto LABEL_13;
  }

  v8 = 0;
LABEL_13:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)record
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v2 = *(a1 + 16);
    v3 = *(a1 + 32);
    os_unfair_lock_unlock((a1 + 8));
    if (v2)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3 == 0;
    }

    if (v4)
    {
      goto LABEL_20;
    }

    v5 = [(FCFaultableRecord *)a1 recordBase];
    v6 = [v5 recordType];

    switch(v6)
    {
      case 0:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown type in faultable record"];
          v16 = 136315906;
          v17 = "[FCFaultableRecord record]";
          v18 = 2080;
          v19 = "FCFaultableRecord.m";
          v20 = 1024;
          v21 = 129;
          v22 = 2114;
          v23 = v15;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v16, 0x26u);
        }

        goto LABEL_9;
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
        v7 = objc_opt_class();
        break;
      default:
LABEL_9:
        v7 = 0;
        break;
    }

    v8 = [[v7 alloc] initWithData:v3];
    v9 = v8;
    if (v7)
    {
      if (!v8)
      {
        v10 = FCRecordSourceLog;
        if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v16) = 0;
          v11 = "failed to decode record from faultable record";
LABEL_25:
          _os_log_fault_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_FAULT, v11, &v16, 2u);
        }
      }
    }

    else
    {
      v10 = FCRecordSourceLog;
      if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v16) = 0;
        v11 = "failed to find record class for faultable record";
        goto LABEL_25;
      }
    }

    os_unfair_lock_lock_with_options();
    v12 = *(a1 + 16);
    if (v12)
    {
      v2 = v12;
    }

    else
    {
      v2 = v9;
      v9 = *(a1 + 16);
      *(a1 + 16) = v2;
    }

    os_unfair_lock_unlock((a1 + 8));
LABEL_20:

    goto LABEL_21;
  }

  v2 = 0;
LABEL_21:
  v13 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (FCFaultableRecord)faultableRecordWithRecord:(uint64_t)a1
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_self();
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "record != nil"];
    *buf = 136315906;
    v10 = "+[FCFaultableRecord faultableRecordWithRecord:]";
    v11 = 2080;
    v12 = "FCFaultableRecord.m";
    v13 = 1024;
    v14 = 38;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = objc_alloc_init(FCFaultableRecord);
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_record, a2);
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)readValueFromKeyValuePair:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [a3 recordData];
  v4 = v3;
  objc_opt_self();
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "recordData != nil"];
    *buf = 136315906;
    v11 = "+[FCFaultableRecord faultableRecordWithRecordData:]";
    v12 = 2080;
    v13 = "FCFaultableRecord.m";
    v14 = 1024;
    v15 = 47;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = objc_alloc_init(FCFaultableRecord);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_recordData, v3);
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)writeToKeyValuePair:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-writeValueToDataWriter should have been used instead"];
    v5 = 136315906;
    v6 = "[FCFaultableRecord writeToKeyValuePair:]";
    v7 = 2080;
    v8 = "FCFaultableRecord.m";
    v9 = 1024;
    v10 = 272;
    v11 = 2114;
    v12 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v5, 0x26u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)writeValueToDataWriter:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  recordData = self->_recordData;
  v6 = self->_record;
  v7 = recordData;
  os_unfair_lock_unlock(&self->_recordLock);
  if (v7)
  {
    PBDataWriterWriteDataField();
  }

  else
  {
    PBDataWriterWriteSubmessage();
  }
}

@end