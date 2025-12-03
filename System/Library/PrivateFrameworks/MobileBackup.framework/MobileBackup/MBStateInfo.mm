@interface MBStateInfo
- (MBStateInfo)initWithCoder:(id)coder;
- (MBStateInfo)initWithDictionaryRepresentation:(id)representation;
- (MBStateInfo)initWithState:(int)state progress:(float)progress estimatedTimeRemaining:(unint64_t)remaining isCloud:(BOOL)cloud isBackground:(BOOL)background error:(id)error errors:(id)errors backupAttemptCount:(unint64_t)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setError:(id)error;
@end

@implementation MBStateInfo

- (MBStateInfo)initWithState:(int)state progress:(float)progress estimatedTimeRemaining:(unint64_t)remaining isCloud:(BOOL)cloud isBackground:(BOOL)background error:(id)error errors:(id)errors backupAttemptCount:(unint64_t)self0
{
  errorCopy = error;
  errorsCopy = errors;
  v29.receiver = self;
  v29.super_class = MBStateInfo;
  v20 = [(MBStateInfo *)&v29 init];
  v21 = v20;
  if (v20)
  {
    v20->_state = state;
    v20->_progress = progress;
    v20->_estimatedTimeRemaining = remaining;
    v20->_isCloud = cloud;
    v20->_isBackground = background;
    objc_storeStrong(&v20->_error, error);
    date = [MEMORY[0x1E695DF00] date];
    date = v21->_date;
    v21->_date = date;

    if (errorsCopy)
    {
      v24 = [errorsCopy mutableCopy];
      errors = v21->_errors;
      v21->_errors = v24;
    }

    else
    {
      v26 = objc_opt_new();
      v27 = v21->_errors;
      v21->_errors = v26;

      if (errorCopy)
      {
        [(NSMutableArray *)v21->_errors addObject:errorCopy];
      }
    }

    v21->_backupAttemptCount = count;
  }

  return v21;
}

- (MBStateInfo)initWithDictionaryRepresentation:(id)representation
{
  v39 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v37.receiver = self;
  v37.super_class = MBStateInfo;
  v5 = [(MBStateInfo *)&v37 init];
  if (!v5)
  {
    goto LABEL_26;
  }

  v6 = [representationCopy objectForKeyedSubscript:@"state"];
  v5->_state = [v6 integerValue];

  v7 = [representationCopy objectForKeyedSubscript:@"progress"];
  [v7 floatValue];
  v5->_progress = v8;

  v9 = [representationCopy objectForKeyedSubscript:@"estimatedTimeRemaining"];
  v5->_estimatedTimeRemaining = [v9 integerValue];

  v10 = [representationCopy objectForKeyedSubscript:@"isCloud"];
  v5->_isCloud = [v10 BOOLValue];

  v11 = [representationCopy objectForKeyedSubscript:@"isBackground"];
  v5->_isBackground = [v11 BOOLValue];

  v12 = [representationCopy objectForKeyedSubscript:@"error"];
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

  v17 = [representationCopy objectForKeyedSubscript:@"errors"];
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

  v24 = [representationCopy objectForKeyedSubscript:{@"date", v33}];
  v25 = v24;
  if (v24)
  {
    date = v24;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  date = v5->_date;
  v5->_date = date;

  v28 = [representationCopy objectForKeyedSubscript:@"restoredSnapshotBackupPolicy"];
  restoredSnapshotBackupPolicy = v5->_restoredSnapshotBackupPolicy;
  v5->_restoredSnapshotBackupPolicy = v28;

  v30 = [representationCopy objectForKeyedSubscript:@"backupAttemptCount"];
  v5->_backupAttemptCount = [v30 integerValue];

LABEL_26:
  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MBStateInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = MBStateInfo;
  v5 = [(MBStateInfo *)&v23 init];
  if (v5)
  {
    v5->_state = [coderCopy decodeIntegerForKey:@"state"];
    [coderCopy decodeFloatForKey:@"progress"];
    v5->_progress = v6;
    v5->_estimatedTimeRemaining = [coderCopy decodeIntegerForKey:@"estimatedTimeRemaining"];
    v5->_isCloud = [coderCopy decodeBoolForKey:@"isCloud"];
    v5->_isBackground = [coderCopy decodeBoolForKey:@"isBackground"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v9 setWithObjects:{v10, v11, v12, v13, v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"errors"];
    errors = v5->_errors;
    v5->_errors = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"restoredSnapshotBackupPolicy"];
    restoredSnapshotBackupPolicy = v5->_restoredSnapshotBackupPolicy;
    v5->_restoredSnapshotBackupPolicy = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [coderCopy encodeInteger:selfCopy->_state forKey:@"state"];
  *&v5 = selfCopy->_progress;
  [coderCopy encodeFloat:@"progress" forKey:v5];
  [coderCopy encodeInteger:selfCopy->_estimatedTimeRemaining forKey:@"estimatedTimeRemaining"];
  [coderCopy encodeBool:selfCopy->_isCloud forKey:@"isCloud"];
  [coderCopy encodeBool:selfCopy->_isBackground forKey:@"isBackground"];
  [coderCopy encodeObject:selfCopy->_error forKey:@"error"];
  [coderCopy encodeObject:selfCopy->_errors forKey:@"errors"];
  [coderCopy encodeObject:selfCopy->_date forKey:@"date"];
  [coderCopy encodeObject:selfCopy->_restoredSnapshotBackupPolicy forKey:@"restoredSnapshotBackupPolicy"];
  objc_sync_exit(selfCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = [MBStateInfo alloc];
  *&v5 = selfCopy->_progress;
  v6 = [(MBStateInfo *)v4 initWithState:selfCopy->_state progress:selfCopy->_estimatedTimeRemaining estimatedTimeRemaining:selfCopy->_isCloud isCloud:selfCopy->_isBackground isBackground:selfCopy->_error error:selfCopy->_errors errors:v5 backupAttemptCount:selfCopy->_backupAttemptCount];
  objc_storeStrong(v6 + 6, selfCopy->_date);
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)setError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_error != errorCopy)
  {
    v5 = [MBError isError:errorCopy withCode:0]? 0 : errorCopy;
    error = selfCopy->_error;
    selfCopy->_error = v5;

    if (errorCopy)
    {
      [(NSMutableArray *)selfCopy->_errors addObject:errorCopy];
      if ([(NSMutableArray *)selfCopy->_errors count]>= 0xB)
      {
        [(NSMutableArray *)selfCopy->_errors removeObjectAtIndex:0];
      }
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:selfCopy->_state];
  [dictionary setValue:v4 forKey:@"state"];

  *&v5 = selfCopy->_progress;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [dictionary setValue:v6 forKey:@"progress"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:selfCopy->_estimatedTimeRemaining];
  [dictionary setValue:v7 forKey:@"estimatedTimeRemaining"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_isCloud];
  [dictionary setValue:v8 forKey:@"isCloud"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_isBackground];
  [dictionary setValue:v9 forKey:@"isBackground"];

  if (selfCopy->_error)
  {
    v10 = [MBError dictionaryRepresentationForError:?];
    [dictionary setValue:v10 forKey:@"error"];
  }

  if (selfCopy->_errors)
  {
    array = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = selfCopy->_errors;
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
          [array addObject:v16];
        }

        v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    [dictionary setValue:array forKey:@"errors"];
  }

  [dictionary setValue:selfCopy->_date forKey:{@"date", v21}];
  restoredSnapshotBackupPolicy = selfCopy->_restoredSnapshotBackupPolicy;
  if (restoredSnapshotBackupPolicy)
  {
    [dictionary setValue:restoredSnapshotBackupPolicy forKey:@"restoredSnapshotBackupPolicy"];
  }

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:selfCopy->_backupAttemptCount];
  [dictionary setValue:v18 forKey:@"backupAttemptCount"];

  objc_sync_exit(selfCopy);
  v19 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  Name = class_getName(v4);
  date = selfCopy->_date;
  v7 = [v3 stringWithFormat:@"<%s: %p state=%d, progress=%.3f, timeRemaining=%lu, isCloud=%d, isBackground=%d, date=%@, error=%@>", Name, selfCopy, selfCopy->_state, selfCopy->_progress, selfCopy->_estimatedTimeRemaining, selfCopy->_isCloud, selfCopy->_isBackground, date, selfCopy->_error];;
  objc_sync_exit(selfCopy);

  return v7;
}

@end