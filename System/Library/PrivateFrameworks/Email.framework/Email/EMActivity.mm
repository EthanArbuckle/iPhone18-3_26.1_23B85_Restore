@interface EMActivity
+ (OS_os_log)log;
- (BOOL)isEqualToActivityWithType:(int64_t)type userInfo:(id)info;
- (EMActivity)initWithActivityType:(int64_t)type userInfo:(id)info;
- (EMActivity)initWithCoder:(id)coder;
- (NSDictionary)userInfo;
- (NSString)description;
- (NSString)localizedDescription;
- (id)_localizedDescriptionForFetchState:(int64_t)state;
- (void)_observeProgress;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)finishWithError:(id)error;
- (void)setCompletedCount:(int64_t)count totalCount:(int64_t)totalCount;
- (void)setUserInfoObject:(id)object forKey:(id)key;
@end

@implementation EMActivity

- (NSDictionary)userInfo
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_userInfo copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_observeProgress
{
  progress = [(EMActivity *)self progress];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__EMActivity__observeProgress__block_invoke;
  v7[3] = &unk_1E826C1C0;
  objc_copyWeak(&v9, &location);
  v8 = progress;
  v4 = progress;
  v5 = [v4 ef_observeKeyPath:@"fractionCompleted" options:1 autoCancelToken:0 usingBlock:v7];
  progressKVOCancellation = self->_progressKVOCancellation;
  self->_progressKVOCancellation = v5;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (NSString)localizedDescription
{
  activityType = self->_activityType;
  if (activityType > 1)
  {
    if (activityType != 2 && activityType != 3)
    {
      goto LABEL_25;
    }

LABEL_11:
    self = _EFLocalizedString();
    goto LABEL_25;
  }

  if (!activityType)
  {
    goto LABEL_11;
  }

  selfCopy = self;
  if (activityType == 1)
  {
    userInfo = [(EMActivity *)self userInfo];
    v5 = [userInfo objectForKeyedSubscript:@"activityFetchState"];
    integerValue = [v5 integerValue];

    userInfo2 = [(EMActivity *)selfCopy userInfo];
    v8 = [userInfo2 objectForKeyedSubscript:@"useIsIndeterminateForFetchState"];
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
    {
      if (integerValue == 2)
      {
        if ([(NSProgress *)selfCopy->_progress isIndeterminate])
        {
          integerValue = 1;
        }

        else
        {
          integerValue = 2;
        }
      }
    }

    else
    {
      totalUnitCount = [(NSProgress *)selfCopy->_progress totalUnitCount];
      if (integerValue != 3 && totalUnitCount < 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = integerValue;
      }

      completedUnitCount = [(NSProgress *)selfCopy->_progress completedUnitCount];
      if (v12 != 3 && completedUnitCount < 1)
      {
        integerValue = 1;
      }

      else
      {
        integerValue = v12;
      }
    }

    self = [(EMActivity *)selfCopy _localizedDescriptionForFetchState:integerValue];
  }

LABEL_25:

  return self;
}

- (void)dealloc
{
  [(EFCancelable *)self->_progressKVOCancellation cancel];
  progressKVOCancellation = self->_progressKVOCancellation;
  self->_progressKVOCancellation = 0;

  v4.receiver = self;
  v4.super_class = EMActivity;
  [(EMActivity *)&v4 dealloc];
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __17__EMActivity_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_1 != -1)
  {
    dispatch_once(&log_onceToken_1, block);
  }

  v2 = log_log_1;

  return v2;
}

void __17__EMActivity_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_1;
  log_log_1 = v1;
}

- (EMActivity)initWithActivityType:(int64_t)type userInfo:(id)info
{
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = EMActivity;
  v7 = [(EMActivity *)&v17 init];
  if (v7)
  {
    v8 = objc_alloc_init(EMActivityObjectID);
    objectID = v7->_objectID;
    v7->_objectID = v8;

    date = [MEMORY[0x1E695DF00] date];
    started = v7->_started;
    v7->_started = date;

    v7->_activityType = type;
    if (infoCopy)
    {
      dictionary = infoCopy;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    userInfo = v7->_userInfo;
    v7->_userInfo = dictionary;

    v14 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:-1];
    progress = v7->_progress;
    v7->_progress = v14;

    [(EMActivity *)v7 _observeProgress];
  }

  return v7;
}

- (EMActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = EMActivity;
  v5 = [(EMActivity *)&v33 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_objectID"];
    objectID = v5->_objectID;
    v5->_objectID = v6;

    v5->_activityType = [coderCopy decodeIntegerForKey:@"EFPropertyKey_activityType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_started"];
    started = v5->_started;
    v5->_started = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_finished"];
    finished = v5->_finished;
    v5->_finished = v10;

    v32 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v30 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v32 setWithObjects:{v31, v30, v12, v13, v14, v15, v16, v17, v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"EFPropertyKey_userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"EFPropertyKey_error"];
    error = v5->_error;
    v5->_error = v25;

    if (!v5->_error)
    {
      v27 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:-1];
      progress = v5->_progress;
      v5->_progress = v27;

      [(EMActivity *)v5 _observeProgress];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectID = [(EMActivity *)self objectID];
  [coderCopy encodeObject:objectID forKey:@"EFPropertyKey_objectID"];

  [coderCopy encodeInteger:-[EMActivity activityType](self forKey:{"activityType"), @"EFPropertyKey_activityType"}];
  started = [(EMActivity *)self started];
  [coderCopy encodeObject:started forKey:@"EFPropertyKey_started"];

  finished = [(EMActivity *)self finished];
  [coderCopy encodeObject:finished forKey:@"EFPropertyKey_finished"];

  userInfo = [(EMActivity *)self userInfo];
  [coderCopy encodeObject:userInfo forKey:@"EFPropertyKey_userInfo"];

  error = [(EMActivity *)self error];
  [coderCopy encodeObject:error forKey:@"EFPropertyKey_error"];
}

void __30__EMActivity__observeProgress__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) fractionCompleted];
  [WeakRetained setFractionCompleted:?];
}

- (BOOL)isEqualToActivityWithType:(int64_t)type userInfo:(id)info
{
  infoCopy = info;
  if (type == 1 && [(EMActivity *)self activityType]== 1)
  {
    userInfo = [(EMActivity *)self userInfo];
    v8 = [userInfo objectForKeyedSubscript:@"mailboxObjectID"];
    v9 = [infoCopy objectForKeyedSubscript:@"mailboxObjectID"];
    v10 = [v8 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setCompletedCount:(int64_t)count totalCount:(int64_t)totalCount
{
  [(EMActivity *)self willChangeValueForKey:@"localizedDescription"];
  progress = [(EMActivity *)self progress];
  [progress setCompletedUnitCount:count];

  progress2 = [(EMActivity *)self progress];
  [progress2 setTotalUnitCount:totalCount];

  [(EMActivity *)self didChangeValueForKey:@"localizedDescription"];
}

- (void)setUserInfoObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  [(EMActivity *)self willChangeValueForKey:@"userInfo"];
  os_unfair_lock_lock(&self->_lock);
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:self->_userInfo];
  v8 = [objectCopy copy];
  [(NSDictionary *)v7 setObject:v8 forKeyedSubscript:keyCopy];

  userInfo = self->_userInfo;
  self->_userInfo = v7;

  os_unfair_lock_unlock(&self->_lock);
  [(EMActivity *)self didChangeValueForKey:@"userInfo"];
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  [(EMActivity *)self willChangeValueForKey:@"progress"];
  [(EMActivity *)self willChangeValueForKey:@"finished"];
  [(EMActivity *)self willChangeValueForKey:@"error"];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_finished)
  {
    progress = self->_progress;
    self->_progress = 0;

    date = [MEMORY[0x1E695DF00] date];
    finished = self->_finished;
    self->_finished = date;

    objc_storeStrong(&self->_error, error);
  }

  os_unfair_lock_unlock(&self->_lock);
  [(EMActivity *)self setUserInfoObject:&unk_1F461CAC8 forKey:@"activityFetchState"];
  [(EMActivity *)self didChangeValueForKey:@"error"];
  [(EMActivity *)self didChangeValueForKey:@"finished"];
  [(EMActivity *)self didChangeValueForKey:@"progress"];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  activityType = self->_activityType;
  if (activityType > 3)
  {
    v6 = @"EMActivityTypeFetch";
  }

  else
  {
    v6 = off_1E826C1E0[activityType];
  }

  userInfo = [(EMActivity *)self userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"mailboxObjectID"];
  localizedDescription = [(EMActivity *)self localizedDescription];
  v10 = [v3 stringWithFormat:@"<%@: %p> %@: %@ - %@", v4, self, v6, v8, localizedDescription];

  return v10;
}

- (id)_localizedDescriptionForFetchState:(int64_t)state
{
  os_unfair_lock_lock(&self->_lock);
  if (state > 1)
  {
    if (state == 2)
    {
      if ([(NSProgress *)self->_progress completedUnitCount])
      {
        v12 = MEMORY[0x1E696AEC0];
        date = _EFLocalizedString();
        [v12 localizedStringWithFormat:date, -[NSProgress completedUnitCount](self->_progress, "completedUnitCount"), -[NSProgress totalUnitCount](self->_progress, "totalUnitCount")];
      }

      else
      {
        date = _EFLocalizedString();
        [MEMORY[0x1E696AEC0] localizedStringWithFormat:date, -[NSProgress totalUnitCount](self->_progress, "totalUnitCount")];
      }
      v7 = ;
    }

    else
    {
      if (state != 3)
      {
        goto LABEL_16;
      }

      statusUpdateProvider = self->_statusUpdateProvider;
      if (!statusUpdateProvider)
      {
        v9 = objc_alloc_init(EMStatusUpdateProvider);
        v10 = self->_statusUpdateProvider;
        self->_statusUpdateProvider = v9;

        statusUpdateProvider = self->_statusUpdateProvider;
      }

      finished = self->_finished;
      date = [MEMORY[0x1E695DF00] date];
      v7 = [(EMStatusUpdateProvider *)statusUpdateProvider statusUpdateStringWithDate:finished now:date nextTransition:0];
    }
  }

  else if (state)
  {
    if (state != 1)
    {
      goto LABEL_16;
    }

    date = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [date localizedStringForKey:@"CHECKING_FOR_MAIL" value:&stru_1F45FD218 table:@"Main"];
  }

  else
  {
    date = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [date localizedStringForKey:@"ESTABLISHING_CONNECTION" value:&stru_1F45FD218 table:@"Main"];
  }

  v3 = v7;

LABEL_16:
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

@end