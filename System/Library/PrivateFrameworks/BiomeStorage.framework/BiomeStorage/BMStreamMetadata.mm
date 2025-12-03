@interface BMStreamMetadata
- (BMStreamMetadata)initWithCoder:(id)coder;
- (BMStreamMetadata)initWithStreamId:(id)id eventType:(Class)type account:(id)account remoteStreamName:(id)name pruningPolicy:(id)policy;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMStreamMetadata

- (BMStreamMetadata)initWithStreamId:(id)id eventType:(Class)type account:(id)account remoteStreamName:(id)name pruningPolicy:(id)policy
{
  idCopy = id;
  accountCopy = account;
  nameCopy = name;
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = BMStreamMetadata;
  v16 = [(BMStreamMetadata *)&v22 init];
  if (v16)
  {
    v17 = [idCopy copy];
    streamId = v16->_streamId;
    v16->_streamId = v17;

    objc_storeStrong(&v16->_eventDataClass, type);
    objc_storeStrong(&v16->_account, account);
    v19 = [nameCopy copy];
    remoteStreamName = v16->_remoteStreamName;
    v16->_remoteStreamName = v19;

    objc_storeStrong(&v16->_pruningPolicy, policy);
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_streamId hash];
  v4 = [(objc_class *)self->_eventDataClass hash]^ v3;
  v5 = [(BMAccount *)self->_account hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_remoteStreamName hash];
  return v6 ^ [(BMPruningPolicy *)self->_pruningPolicy hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      streamId = self->_streamId;
      if ((streamId == v5->_streamId || [(NSString *)streamId isEqual:?]) && (eventDataClass = self->_eventDataClass, eventDataClass == [(BMStreamMetadata *)v5 eventDataClass]) && ((account = self->_account, account == v5->_account) || [(BMAccount *)account isEqual:?]) && ((remoteStreamName = self->_remoteStreamName, remoteStreamName == v5->_remoteStreamName) || [(NSString *)remoteStreamName isEqual:?]))
      {
        pruningPolicy = self->_pruningPolicy;
        pruningPolicy = [(BMStreamMetadata *)v5 pruningPolicy];
        if (pruningPolicy == pruningPolicy)
        {
          v8 = 1;
        }

        else
        {
          v14 = self->_pruningPolicy;
          pruningPolicy2 = [(BMStreamMetadata *)v5 pruningPolicy];
          v8 = [(BMPruningPolicy *)v14 isEqual:pruningPolicy2];
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode key %@", keyCopy, *MEMORY[0x1E696A578]];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 errorWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  v16[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [coderCopy encodeObject:self->_streamId forKey:@"streamId"];
  v5 = NSStringFromClass(self->_eventDataClass);
  if (!v5)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMStreamMetadata encodeWithCoder:v6];
    }
  }

  [coderCopy encodeObject:v5 forKey:@"eventType"];
  pruningPolicy = self->_pruningPolicy;
  if (pruningPolicy)
  {
    v15[0] = @"pruneOnAccess";
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPruningPolicy pruneOnAccess](pruningPolicy, "pruneOnAccess")}];
    v16[0] = v8;
    v15[1] = @"maxAge";
    v9 = MEMORY[0x1E696AD98];
    [(BMPruningPolicy *)self->_pruningPolicy maxAge];
    v10 = [v9 numberWithDouble:?];
    v16[1] = v10;
    v15[2] = @"maxStreamSize";
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BMPruningPolicy maxStreamSize](self->_pruningPolicy, "maxStreamSize")}];
    v16[2] = v11;
    v15[3] = @"filterByAgeOnRead";
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPruningPolicy filterByAgeOnRead](self->_pruningPolicy, "filterByAgeOnRead")}];
    v16[3] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];

    [coderCopy encodeObject:v13 forKey:@"pruningPolicy"];
  }

  [coderCopy encodeObject:self->_account forKey:@"account"];
  [coderCopy encodeObject:self->_remoteStreamName forKey:@"remoteName"];

  v14 = *MEMORY[0x1E69E9840];
}

- (BMStreamMetadata)initWithCoder:(id)coder
{
  v40 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"streamId"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventType"];
  if (![(BMStreamMetadata *)self checkAndReportDecodingFailureIfNeededForid:v6 key:@"eventType" coder:coderCopy errorDomain:@"com.apple.biome.BMStreamMetadata" errorCode:-1])
  {
    v8 = NSClassFromString(v6);
    if (!v8)
    {
      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(BMStreamMetadata *)v6 initWithCoder:v15];
      }

      selfCopy = 0;
      goto LABEL_26;
    }

    v9 = v8;
    if (objc_opt_respondsToSelector())
    {
      allowedClasses = [coderCopy allowedClasses];
      v11 = [allowedClasses containsObject:v9];

      if (v11)
      {
        goto LABEL_19;
      }

      v12 = __biome_log_for_category();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v39 = 16;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __34__BMStreamMetadata_initWithCoder___block_invoke_39;
      v36[3] = &unk_1E8338B28;
      v36[4] = buf;
      if (initWithCoder__onceToken_38 != -1)
      {
        dispatch_once(&initWithCoder__onceToken_38, v36);
      }

      v13 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (os_log_type_enabled(v12, v13))
      {
        v14 = objc_opt_class();
        *buf = 138412546;
        *&buf[4] = v6;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        _os_log_impl(&dword_1C928A000, v12, v13, "Event class '%@' missing from %@ allowedClasses", buf, 0x16u);
      }
    }

    else
    {
      v12 = __biome_log_for_category();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v39 = 16;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __34__BMStreamMetadata_initWithCoder___block_invoke;
      block[3] = &unk_1E8338B28;
      block[4] = buf;
      if (initWithCoder__onceToken_0 != -1)
      {
        dispatch_once(&initWithCoder__onceToken_0, block);
      }

      v16 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (os_log_type_enabled(v12, v16))
      {
        *buf = 138412290;
        *&buf[4] = v6;
        _os_log_impl(&dword_1C928A000, v12, v16, "Class %@ doesn't conform to BMStoreData", buf, 0xCu);
      }

      v9 = 0;
    }

LABEL_19:
    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v15 = [v17 setWithObjects:{v18, v19, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v15 forKey:@"pruningPolicy"];
    if (v20)
    {
      if ([(BMStreamMetadata *)self checkAndReportDecodingFailureIfNeededForid:v20 key:@"pruningPolicy" coder:coderCopy errorDomain:@"com.apple.biome.BMStreamMetadata" errorCode:-1])
      {
        selfCopy = 0;
LABEL_25:

LABEL_26:
        goto LABEL_27;
      }

      v33 = [BMPruningPolicy alloc];
      v34 = [v20 objectForKeyedSubscript:@"pruneOnAccess"];
      v32 = [v34 unsignedIntegerValue] != 0;
      [v20 objectForKeyedSubscript:@"filterByAgeOnRead"];
      v22 = v35 = v5;
      bOOLValue = [v22 BOOLValue];
      v24 = [v20 objectForKeyedSubscript:@"maxAge"];
      [v24 doubleValue];
      v26 = v25;
      v27 = [v20 objectForKeyedSubscript:@"maxStreamSize"];
      v21 = -[BMPruningPolicy initPruneOnAccess:filterByAgeOnRead:maxAge:maxStreamSize:](v33, "initPruneOnAccess:filterByAgeOnRead:maxAge:maxStreamSize:", v32, bOOLValue, [v27 unsignedIntValue], v26);

      v5 = v35;
    }

    else
    {
      v21 = 0;
    }

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteName"];
    self = [(BMStreamMetadata *)self initWithStreamId:v5 eventType:v9 account:v28 remoteStreamName:v29 pruningPolicy:v21];

    selfCopy = self;
    goto LABEL_25;
  }

  selfCopy = 0;
LABEL_27:

  v30 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C928A000, a2, OS_LOG_TYPE_ERROR, "Can't get class from class string - %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end