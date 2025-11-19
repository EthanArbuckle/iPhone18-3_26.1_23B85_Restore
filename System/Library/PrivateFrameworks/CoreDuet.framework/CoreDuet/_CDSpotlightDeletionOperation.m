@interface _CDSpotlightDeletionOperation
+ (id)deletionForEventsWithDomainIdentifiers:(id)a3 bundleId:(id)a4 completion:(id)a5;
+ (id)deletionForEventsWithItemIdentifiers:(id)a3 bundleId:(id)a4 completion:(id)a5;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (NSString)description;
- (_CDSpotlightDeletionOperation)initWithCoder:(id)a3;
- (_CDSpotlightDeletionOperation)initWithDeletionType:(id)a3 bundleId:(id)a4 itemIdentifiers:(id)a5 domainIdentifiers:(id)a6 completion:(id)a7;
- (id)serialize;
- (void)encodeWithCoder:(id)a3;
- (void)serialize;
@end

@implementation _CDSpotlightDeletionOperation

+ (id)deletionForEventsWithItemIdentifiers:(id)a3 bundleId:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 alloc];
  v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v10];

  v13 = objc_opt_new();
  v14 = [v11 initWithDeletionType:@"identifiers" bundleId:v9 itemIdentifiers:v12 domainIdentifiers:v13 completion:v8];

  return v14;
}

+ (id)deletionForEventsWithDomainIdentifiers:(id)a3 bundleId:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 alloc];
  v12 = objc_opt_new();
  v13 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v10];

  v14 = [v11 initWithDeletionType:@"domainIdentifiers" bundleId:v9 itemIdentifiers:v12 domainIdentifiers:v13 completion:v8];

  return v14;
}

- (_CDSpotlightDeletionOperation)initWithDeletionType:(id)a3 bundleId:(id)a4 itemIdentifiers:(id)a5 domainIdentifiers:(id)a6 completion:(id)a7
{
  v22 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = _CDSpotlightDeletionOperation;
  v17 = [(_CDSpotlightDeletionOperation *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_deletionType, a3);
    objc_storeStrong(&v18->_bundleId, a4);
    objc_storeStrong(&v18->_itemIdentifiers, a5);
    objc_storeStrong(&v18->_domainIdentifiers, a6);
    v19 = [v16 copy];
    completion = v18->_completion;
    v18->_completion = v19;
  }

  return v18;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self)
  {
    v6 = self->_bundleId;
    v7 = self->_itemIdentifiers;
    domainIdentifiers = self->_domainIdentifiers;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    domainIdentifiers = 0;
  }

  v9 = [v3 initWithFormat:@"%@ - bundleId: %@, itemIdentifiers: %@, domainIdentifiers: %@", v5, v6, v7, domainIdentifiers];

  return v9;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v8 = 0;
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:a1 fromData:a3 error:&v8];
    v5 = v8;
    if (v5)
    {
      v6 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [_CDSpotlightDeletionOperation eventWithData:v5 dataVersion:v6];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)serialize
{
  v6 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v6];
  v3 = v6;
  if (v3)
  {
    v4 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(_CDSpotlightDeletionOperation *)v3 serialize];
    }
  }

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  deletionType = self->_deletionType;
  v5 = a3;
  [v5 encodeObject:deletionType forKey:@"deletionType"];
  [v5 encodeObject:self->_bundleId forKey:@"bundleId"];
  [v5 encodeObject:self->_itemIdentifiers forKey:@"itemIdentifiers"];
  [v5 encodeObject:self->_domainIdentifiers forKey:@"domainIdentifiers"];
}

- (_CDSpotlightDeletionOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69C5D78] robustDecodeObjectOfClass:objc_opt_class() forKey:@"deletionType" withCoder:v4 expectNonNull:1 errorDomain:@"_CDSpotlightDeletionErrorDomain" errorCode:-1 logHandle:0];
  if (v5)
  {
    v6 = [MEMORY[0x1E69C5D78] robustDecodeObjectOfClass:objc_opt_class() forKey:@"bundleId" withCoder:v4 expectNonNull:1 errorDomain:@"_CDSpotlightDeletionErrorDomain" errorCode:-1 logHandle:0];
    if (v6)
    {
      v7 = MEMORY[0x1E69C5D78];
      v8 = objc_autoreleasePoolPush();
      v9 = objc_alloc(MEMORY[0x1E695DFD8]);
      v10 = objc_opt_class();
      v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
      objc_autoreleasePoolPop(v8);
      v12 = [v7 robustDecodeObjectOfClasses:v11 forKey:@"itemIdentifiers" withCoder:v4 expectNonNull:1 errorDomain:@"_CDSpotlightDeletionErrorDomain" errorCode:-1 logHandle:0];

      if (v12)
      {
        v13 = MEMORY[0x1E69C5D78];
        v14 = objc_autoreleasePoolPush();
        v15 = objc_alloc(MEMORY[0x1E695DFD8]);
        v16 = objc_opt_class();
        v17 = [v15 initWithObjects:{v16, objc_opt_class(), 0}];
        objc_autoreleasePoolPop(v14);
        v18 = [v13 robustDecodeObjectOfClasses:v17 forKey:@"domainIdentifiers" withCoder:v4 expectNonNull:1 errorDomain:@"_CDSpotlightDeletionErrorDomain" errorCode:-1 logHandle:0];

        if (v18)
        {
          self = [(_CDSpotlightDeletionOperation *)self initWithDeletionType:v5 bundleId:v6 itemIdentifiers:v12 domainIdentifiers:v18 completion:0];
          v19 = self;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (void)eventWithData:(uint64_t)a1 dataVersion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "_CDSpotlightDeletionOperation unarchive error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)serialize
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "_CDSpotlightDeletionOperation archive error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end