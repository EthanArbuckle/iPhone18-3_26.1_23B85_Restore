@interface MBStateInfo
- (MBStateInfo)initWithCoder:(id)a3;
- (MBStateInfo)initWithDictionaryRepresentation:(id)a3;
- (MBStateInfo)initWithState:(int)a3 progress:(float)a4 estimatedTimeRemaining:(unint64_t)a5 isCloud:(BOOL)a6 isBackground:(BOOL)a7 error:(id)a8 errors:(id)a9 backupAttemptCount:(unint64_t)a10;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setError:(id)a3;
@end

@implementation MBStateInfo

- (MBStateInfo)initWithState:(int)a3 progress:(float)a4 estimatedTimeRemaining:(unint64_t)a5 isCloud:(BOOL)a6 isBackground:(BOOL)a7 error:(id)a8 errors:(id)a9 backupAttemptCount:(unint64_t)a10
{
  v18 = a8;
  v19 = a9;
  v29.receiver = self;
  v29.super_class = MBStateInfo;
  v20 = [(MBStateInfo *)&v29 init];
  v21 = v20;
  if (v20)
  {
    v20->_state = a3;
    v20->_progress = a4;
    v20->_estimatedTimeRemaining = a5;
    v20->_isCloud = a6;
    v20->_isBackground = a7;
    objc_storeStrong(&v20->_error, a8);
    v22 = [MEMORY[0x1E695DF00] date];
    date = v21->_date;
    v21->_date = v22;

    if (v19)
    {
      v24 = [v19 mutableCopy];
      errors = v21->_errors;
      v21->_errors = v24;
    }

    else
    {
      v26 = objc_opt_new();
      v27 = v21->_errors;
      v21->_errors = v26;

      if (v18)
      {
        [(NSMutableArray *)v21->_errors addObject:v18];
      }
    }

    v21->_backupAttemptCount = a10;
  }

  return v21;
}

- (MBStateInfo)initWithDictionaryRepresentation:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = MBStateInfo;
  v5 = [(MBStateInfo *)&v37 init];
  if (!v5)
  {
    goto LABEL_26;
  }

  v6 = [v4 objectForKeyedSubscript:@"state"];
  v5->_state = [v6 integerValue];

  v7 = [v4 objectForKeyedSubscript:@"progress"];
  [v7 floatValue];
  v5->_progress = v8;

  v9 = [v4 objectForKeyedSubscript:@"estimatedTimeRemaining"];
  v5->_estimatedTimeRemaining = [v9 integerValue];

  v10 = [v4 objectForKeyedSubscript:@"isCloud"];
  v5->_isCloud = [v10 BOOLValue];

  v11 = [v4 objectForKeyedSubscript:@"isBackground"];
  v5->_isBackground = [v11 BOOLValue];

  v12 = [v4 objectForKeyedSubscript:@"error"];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [MBError errorWithDictionaryRepresentation:v12];
LABEL_7:
      error = v5->_error;
      v5->_error = v13;

      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:0];
      goto LABEL_7;
    }
  }

LABEL_8:
  v15 = objc_opt_new();
  errors = v5->_errors;
  v5->_errors = v15;

  v17 = [v4 objectForKeyedSubscript:@"errors"];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v34;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v34 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [MBError errorWithDictionaryRepresentation:*(*(&v33 + 1) + 8 * i), v33];
            if (v23)
            {
              [(NSMutableArray *)v5->_errors addObject:v23];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v20);
      }
    }
  }

  else if (v5->_error)
  {
    [(NSMutableArray *)v5->_errors addObject:?];
  }

  v24 = [v4 objectForKeyedSubscript:{@"date", v33}];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = [MEMORY[0x1E695DF00] date];
  }

  date = v5->_date;
  v5->_date = v26;

  v28 = [v4 objectForKeyedSubscript:@"restoredSnapshotBackupPolicy"];
  restoredSnapshotBackupPolicy = v5->_restoredSnapshotBackupPolicy;
  v5->_restoredSnapshotBackupPolicy = v28;

  v30 = [v4 objectForKeyedSubscript:@"backupAttemptCount"];
  v5->_backupAttemptCount = [v30 integerValue];

LABEL_26:
  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MBStateInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = MBStateInfo;
  v5 = [(MBStateInfo *)&v23 init];
  if (v5)
  {
    v5->_state = [v4 decodeIntegerForKey:@"state"];
    [v4 decodeFloatForKey:@"progress"];
    v5->_progress = v6;
    v5->_estimatedTimeRemaining = [v4 decodeIntegerForKey:@"estimatedTimeRemaining"];
    v5->_isCloud = [v4 decodeBoolForKey:@"isCloud"];
    v5->_isBackground = [v4 decodeBoolForKey:@"isBackground"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v9 setWithObjects:{v10, v11, v12, v13, v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"errors"];
    errors = v5->_errors;
    v5->_errors = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"restoredSnapshotBackupPolicy"];
    restoredSnapshotBackupPolicy = v5->_restoredSnapshotBackupPolicy;
    v5->_restoredSnapshotBackupPolicy = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [v6 encodeInteger:v4->_state forKey:@"state"];
  *&v5 = v4->_progress;
  [v6 encodeFloat:@"progress" forKey:v5];
  [v6 encodeInteger:v4->_estimatedTimeRemaining forKey:@"estimatedTimeRemaining"];
  [v6 encodeBool:v4->_isCloud forKey:@"isCloud"];
  [v6 encodeBool:v4->_isBackground forKey:@"isBackground"];
  [v6 encodeObject:v4->_error forKey:@"error"];
  [v6 encodeObject:v4->_errors forKey:@"errors"];
  [v6 encodeObject:v4->_date forKey:@"date"];
  [v6 encodeObject:v4->_restoredSnapshotBackupPolicy forKey:@"restoredSnapshotBackupPolicy"];
  objc_sync_exit(v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = [MBStateInfo alloc];
  *&v5 = v3->_progress;
  v6 = [(MBStateInfo *)v4 initWithState:v3->_state progress:v3->_estimatedTimeRemaining estimatedTimeRemaining:v3->_isCloud isCloud:v3->_isBackground isBackground:v3->_error error:v3->_errors errors:v5 backupAttemptCount:v3->_backupAttemptCount];
  objc_storeStrong(v6 + 6, v3->_date);
  objc_sync_exit(v3);

  return v6;
}

- (void)setError:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_error != v7)
  {
    v5 = [MBError isError:v7 withCode:0]? 0 : v7;
    error = v4->_error;
    v4->_error = v5;

    if (v7)
    {
      [(NSMutableArray *)v4->_errors addObject:v7];
      if ([(NSMutableArray *)v4->_errors count]>= 0xB)
      {
        [(NSMutableArray *)v4->_errors removeObjectAtIndex:0];
      }
    }
  }

  objc_sync_exit(v4);
}

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:v2->_state];
  [v3 setValue:v4 forKey:@"state"];

  *&v5 = v2->_progress;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [v3 setValue:v6 forKey:@"progress"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v2->_estimatedTimeRemaining];
  [v3 setValue:v7 forKey:@"estimatedTimeRemaining"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v2->_isCloud];
  [v3 setValue:v8 forKey:@"isCloud"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:v2->_isBackground];
  [v3 setValue:v9 forKey:@"isBackground"];

  if (v2->_error)
  {
    v10 = [MBError dictionaryRepresentationForError:?];
    [v3 setValue:v10 forKey:@"error"];
  }

  if (v2->_errors)
  {
    v11 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = v2->_errors;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = [MBError dictionaryRepresentationForError:*(*(&v21 + 1) + 8 * i), v21];
          [v11 addObject:v16];
        }

        v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    [v3 setValue:v11 forKey:@"errors"];
  }

  [v3 setValue:v2->_date forKey:{@"date", v21}];
  restoredSnapshotBackupPolicy = v2->_restoredSnapshotBackupPolicy;
  if (restoredSnapshotBackupPolicy)
  {
    [v3 setValue:restoredSnapshotBackupPolicy forKey:@"restoredSnapshotBackupPolicy"];
  }

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2->_backupAttemptCount];
  [v3 setValue:v18 forKey:@"backupAttemptCount"];

  objc_sync_exit(v2);
  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  date = v2->_date;
  v7 = [v3 stringWithFormat:@"<%s: %p state=%d, progress=%.3f, timeRemaining=%lu, isCloud=%d, isBackground=%d, date=%@, error=%@>", Name, v2, v2->_state, v2->_progress, v2->_estimatedTimeRemaining, v2->_isCloud, v2->_isBackground, date, v2->_error];;
  objc_sync_exit(v2);

  return v7;
}

@end