@interface FCCKZoneSchema
+ (id)defaultZoneWithStaticRecordNames:(int)names shouldUseSecureContainer:;
+ (id)zoneWithName:(char)name options:(void *)options staticRecordNames:;
+ (id)zoneWithName:(uint64_t)name;
- (BOOL)isEqual:(id)equal;
- (FCCKZoneSchema)init;
- (id)initWithZoneName:(char)name options:(void *)options staticRecordNames:;
- (unint64_t)hash;
@end

@implementation FCCKZoneSchema

+ (id)zoneWithName:(uint64_t)name
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  if ([v2 isEqualToString:*MEMORY[0x1E695B800]] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"use defaultZoneWithRecords: for the default zone"];
    v7 = 136315906;
    v8 = "+[FCCKZoneSchema zoneWithName:]";
    v9 = 2080;
    v10 = "FCCKZoneSchema.m";
    v11 = 1024;
    v12 = 16;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v7, 0x26u);
  }

  v3 = [[FCCKZoneSchema alloc] initWithZoneName:v2 options:0 staticRecordNames:0];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)initWithZoneName:(char)name options:(void *)options staticRecordNames:
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a2;
  optionsCopy = options;
  if (self)
  {
    v18.receiver = self;
    v18.super_class = FCCKZoneSchema;
    self = objc_msgSendSuper2(&v18, sel_init);
    if (self)
    {
      if ((name & 6) == 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"zone-wide PCS is required for the secure container"];
        *buf = 136315906;
        v20 = "[FCCKZoneSchema initWithZoneName:options:staticRecordNames:]";
        v21 = 2080;
        v22 = "FCCKZoneSchema.m";
        v23 = 1024;
        v24 = 53;
        v25 = 2114;
        v26 = v17;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      objc_storeStrong(self + 2, a2);
      v10 = objc_alloc(MEMORY[0x1E695BA90]);
      v11 = [v10 initWithZoneName:v8 ownerName:*MEMORY[0x1E695B728]];
      v12 = self[3];
      self[3] = v11;

      v13 = [MEMORY[0x1E695DFD8] setWithArray:optionsCopy];
      v14 = self[4];
      self[4] = v13;

      *(self + 8) = name & 1;
      *(self + 9) = (name & 2) != 0;
      *(self + 10) = (name & 4) != 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return self;
}

+ (id)zoneWithName:(char)name options:(void *)options staticRecordNames:
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a2;
  optionsCopy = options;
  objc_opt_self();
  if ([v6 isEqualToString:*MEMORY[0x1E695B800]] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"use defaultZoneWithRecords: for the default zone"];
    v12 = 136315906;
    v13 = "+[FCCKZoneSchema zoneWithName:options:staticRecordNames:]";
    v14 = 2080;
    v15 = "FCCKZoneSchema.m";
    v16 = 1024;
    v17 = 27;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
  }

  v8 = [[FCCKZoneSchema alloc] initWithZoneName:v6 options:name staticRecordNames:optionsCopy];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)defaultZoneWithStaticRecordNames:(int)names shouldUseSecureContainer:
{
  v4 = a2;
  objc_opt_self();
  v5 = [FCCKZoneSchema alloc];
  if (names)
  {
    v6 = 6;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(FCCKZoneSchema *)&v5->super.isa initWithZoneName:v6 options:v4 staticRecordNames:?];

  return v7;
}

- (FCCKZoneSchema)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCCKZoneSchema init]";
    v10 = 2080;
    v11 = "FCCKZoneSchema.m";
    v12 = 1024;
    v13 = 44;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCCKZoneSchema init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = v6;
    v8 = v7;
    if (self)
    {
      zoneName = self->_zoneName;
    }

    else
    {
      zoneName = 0;
    }

    v10 = *(v7 + 2);
    v11 = zoneName;
    if ([(NSString *)v11 isEqualToString:v10])
    {
      if (self)
      {
        if (self->_shouldEncryptRecordNames == v8[8] && self->_shouldUseZoneWidePCS == v8[9])
        {
          shouldUseSecureContainer = self->_shouldUseSecureContainer;
LABEL_14:
          v13 = shouldUseSecureContainer ^ v8[10] ^ 1;
LABEL_19:

          goto LABEL_20;
        }
      }

      else if ((v8[8] & 1) == 0)
      {
        shouldUseSecureContainer = 0;
        v13 = 0;
        if (v8[9])
        {
          goto LABEL_19;
        }

        goto LABEL_14;
      }
    }

    v13 = 0;
    goto LABEL_19;
  }

  v13 = 0;
LABEL_20:

  return v13 & 1;
}

- (unint64_t)hash
{
  selfCopy = self;
  if (self)
  {
    self = self->_zoneName;
  }

  v3 = [(FCCKZoneSchema *)self hash];
  if (selfCopy)
  {
    shouldEncryptRecordNames = selfCopy->_shouldEncryptRecordNames;
  }

  else
  {
    shouldEncryptRecordNames = 0;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:shouldEncryptRecordNames];
  v6 = [v5 hash];
  if (selfCopy)
  {
    shouldUseZoneWidePCS = selfCopy->_shouldUseZoneWidePCS;
  }

  else
  {
    shouldUseZoneWidePCS = 0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:shouldUseZoneWidePCS];
  v9 = [v8 hash];
  if (selfCopy)
  {
    shouldUseSecureContainer = selfCopy->_shouldUseSecureContainer;
  }

  else
  {
    shouldUseSecureContainer = 0;
  }

  v11 = v6 ^ v3;
  v12 = [MEMORY[0x1E696AD98] numberWithBool:shouldUseSecureContainer];
  v13 = v9 ^ [v12 hash];

  return v11 ^ v13;
}

@end