@interface CPLEngineScope
+ (id)separatorForStatusKey:(id)key;
+ (void)formatStatusDictionary:(id)dictionary forScopeWithIdentifier:(id)identifier appendString:(id)string appendTopLevelStatus:(id)status appendLineStatus:(id)lineStatus;
- (BOOL)isEqual:(id)equal;
- (CPLEngineScope)initWithCoder:(id)coder;
- (CPLEngineScope)initWithScopeIdentifier:(id)identifier scopeType:(int64_t)type;
- (id)copyWithScopeType:(int64_t)type;
- (id)description;
- (id)statusDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLEngineScope

- (id)copyWithScopeType:(int64_t)type
{
  v4 = [[CPLEngineScope alloc] initWithScopeIdentifier:self->_scopeIdentifier scopeType:type];
  [(CPLEngineScope *)v4 setLocalIndex:self->_localIndex];
  [(CPLEngineScope *)v4 setCloudIndex:self->_cloudIndex];
  [(CPLEngineScope *)v4 setStableIndex:self->_stableIndex];
  [(CPLEngineScope *)v4 setCreationDate:self->_creationDate];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = self->_scopeIdentifier;
      scopeIdentifier = [(CPLEngineScope *)equalCopy scopeIdentifier];
      v7 = scopeIdentifier;
      v8 = v5 && scopeIdentifier && ([v5 isEqual:scopeIdentifier] & 1) != 0 || (v5 | v7) == 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  scopeIdentifier = self->_scopeIdentifier;
  cloudIndex = self->_cloudIndex;
  v6 = [v3 initWithFormat:@"<%@ %ld/%ld/%ld>", scopeIdentifier, self->_localIndex, cloudIndex, self->_stableIndex];

  return v6;
}

- (id)statusDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = *&self->_localIndex;
  stableIndex = self->_stableIndex;
  v5 = [CPLDateFormatter stringFromDateAgo:self->_creationDate now:0];
  v6 = [v3 initWithFormat:@"%ld/%ld/%ld - creat: %@", v8, stableIndex, v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  scopeIdentifier = self->_scopeIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:scopeIdentifier forKey:@"scopeIdentifier"];
  [coderCopy encodeInteger:self->_scopeType forKey:@"scopeType"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeInteger:self->_localIndex forKey:@"localIndex"];
  [coderCopy encodeInteger:self->_cloudIndex forKey:@"cloudIndex"];
  [coderCopy encodeInteger:self->_stableIndex forKey:@"stableIndex"];
}

- (CPLEngineScope)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scopeIdentifier"];
  v6 = -[CPLEngineScope initWithScopeIdentifier:scopeType:](self, "initWithScopeIdentifier:scopeType:", v5, [coderCopy decodeIntegerForKey:@"scopeType"]);
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v6->_creationDate;
    v6->_creationDate = v7;

    v6->_localIndex = [coderCopy decodeIntegerForKey:@"localIndex"];
    v6->_cloudIndex = [coderCopy decodeIntegerForKey:@"cloudIndex"];
    v6->_stableIndex = [coderCopy decodeIntegerForKey:@"stableIndex"];
  }

  return v6;
}

- (CPLEngineScope)initWithScopeIdentifier:(id)identifier scopeType:(int64_t)type
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = CPLEngineScope;
  v7 = [(CPLEngineScope *)&v13 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    scopeIdentifier = v7->_scopeIdentifier;
    v7->_scopeIdentifier = v8;

    v7->_scopeType = type;
    date = [MEMORY[0x1E695DF00] date];
    creationDate = v7->_creationDate;
    v7->_creationDate = date;
  }

  return v7;
}

+ (void)formatStatusDictionary:(id)dictionary forScopeWithIdentifier:(id)identifier appendString:(id)string appendTopLevelStatus:(id)status appendLineStatus:(id)lineStatus
{
  v89 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  stringCopy = string;
  statusCopy = status;
  lineStatusCopy = lineStatus;
  v16 = (stringCopy + 16);
  (*(stringCopy + 2))(stringCopy, identifierCopy);
  (*(stringCopy + 2))(stringCopy, @" (");
  v17 = [dictionaryCopy objectForKeyedSubscript:@"scope type"];
  v18 = v17;
  v19 = (statusCopy + 16);
  if (v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = @"invalid";
  }

  (*(statusCopy + 2))(statusCopy, @"scope type", v20);

  (*v16)(stringCopy, @" "));
  v21 = [dictionaryCopy objectForKeyedSubscript:@"indexes"];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = &unk_1F57EF890;
  }

  (*v19)(statusCopy, @"indexes", v23);

  (*v16)(stringCopy, @" - creat: ");
  v24 = [dictionaryCopy objectForKeyedSubscript:@"creation date"];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = @"???";
  }

  (*v19)(statusCopy, @"creation date", v26);

  v27 = [dictionaryCopy objectForKeyedSubscript:@"flags"];
  if (v27)
  {
    (*(stringCopy + 2))(stringCopy, @" (");
    (*(statusCopy + 2))(statusCopy, @"flags", v27);
    (*(stringCopy + 2))(stringCopy, @""));
  }

  v78 = v27;
  v28 = [dictionaryCopy objectForKeyedSubscript:@"busyState"];
  integerValue = [v28 integerValue];

  if (integerValue)
  {
    (*(stringCopy + 2))(stringCopy, @" [");
    v30 = [CPLScopeChange descriptionForBusyState:integerValue];
    (*(statusCopy + 2))(statusCopy, @"busyState", v30);

    (*(stringCopy + 2))(stringCopy, @"]");
  }

  v79 = statusCopy;
  v31 = [dictionaryCopy objectForKeyedSubscript:@"zone"];
  v32 = v31;
  if (v31 && ([v31 isEqualToString:identifierCopy] & 1) == 0)
  {
    (lineStatusCopy)[2](lineStatusCopy, @"zone", v32);
  }

  v77 = v32;
  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = __146__CPLEngineScope_CPLEngineScopeStatusFormatter__formatStatusDictionary_forScopeWithIdentifier_appendString_appendTopLevelStatus_appendLineStatus___block_invoke;
  v84[3] = &unk_1E861C5E8;
  v85 = dictionaryCopy;
  v33 = lineStatusCopy;
  v34 = v85;
  v35 = v33;
  v86 = v33;
  v36 = MEMORY[0x1E128EBA0](v84);
  (v36)[2](v36, @"disabled date");
  (v36)[2](v36, @"delete date");
  (v36)[2](v36, @"todo");
  (v36)[2](v36, @"init. est. size");
  (v36)[2](v36, @"last supported feature version");
  (v36)[2](v36, @"scope info");
  (v36)[2](v36, @"anch");
  (v36)[2](v36, @"queries");
  (v36)[2](v36, @"transient");
  (v36)[2](v36, @"upload group");
  (v36)[2](v36, @"download group");
  v37 = objc_alloc_init(_CPLEngineScopeDatesStack);
  v38 = [v34 objectForKeyedSubscript:@"initial sync"];
  [(_CPLEngineScopeDatesStack *)v37 prependDate:v38 forKey:@"initial sync"];

  v39 = [v34 objectForKeyedSubscript:@"initial client download"];
  [(_CPLEngineScopeDatesStack *)v37 prependDate:v39 forKey:@"initial client download"];

  v40 = [v34 objectForKeyedSubscript:@"initial mingle"];
  [(_CPLEngineScopeDatesStack *)v37 prependDate:v40 forKey:@"initial mingle"];

  v41 = [v34 objectForKeyedSubscript:@"initial shared metadata download"];
  [(_CPLEngineScopeDatesStack *)v37 prependDate:v41 forKey:@"initial shared metadata download"];

  v42 = [v34 objectForKeyedSubscript:@"initial metadata download"];
  [(_CPLEngineScopeDatesStack *)v37 prependDate:v42 forKey:@"initial metadata download"];

  v43 = [v34 objectForKeyedSubscript:@"initial metadata queries"];
  [(_CPLEngineScopeDatesStack *)v37 prependDate:v43 forKey:@"initial metadata queries"];

  v44 = [v34 objectForKeyedSubscript:@"activation"];
  [(_CPLEngineScopeDatesStack *)v37 prependDate:v44 forKey:@"activation"];

  if (!v37)
  {
    goto LABEL_25;
  }

  if (![(NSMutableArray *)v37->_intermediateStatuses count])
  {
    v50 = v37->_lastDate;
    if (v50)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (!v37->_proposedKey)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v62 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v62, OS_LOG_TYPE_ERROR, "missing proposed key", buf, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScope.m"];
    v65 = @"missing proposed key";
    v66 = currentHandler;
    v67 = v37;
    v68 = v64;
    v69 = 427;
LABEL_53:
    [v66 handleFailureInMethod:sel_finalStatus object:v67 file:v68 lineNumber:v69 description:v65];

    abort();
  }

  if (!v37->_lastDate)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v70 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v70, OS_LOG_TYPE_ERROR, "missing last date", buf, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScope.m"];
    v65 = @"missing last date";
    v66 = currentHandler;
    v67 = v37;
    v68 = v64;
    v69 = 428;
    goto LABEL_53;
  }

  if (!v37->_now)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v71 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v71, OS_LOG_TYPE_ERROR, "missing now", buf, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScope.m"];
    v65 = @"missing now";
    v66 = currentHandler;
    v67 = v37;
    v68 = v64;
    v69 = 429;
    goto LABEL_53;
  }

  v45 = objc_alloc(MEMORY[0x1E696AEC0]);
  v46 = [(NSMutableArray *)v37->_intermediateStatuses componentsJoinedByString:@" "];
  _displayableKey(v37->_proposedKey);
  v48 = v47 = v35;
  v49 = [CPLDateFormatter stringFromDateAgo:v37->_lastDate now:v37->_now];
  v50 = [v45 initWithFormat:@"%@ %@ [%@]", v46, v48, v49];

  v35 = v47;
  if (v50)
  {
LABEL_23:
    v76 = v50;
    (v35)[2](v35, v37->_proposedKey, v50);
    goto LABEL_26;
  }

LABEL_25:
  v76 = 0;
LABEL_26:
  v51 = [v34 objectForKeyedSubscript:@"storages"];
  if (v51)
  {
    v72 = v34;
    v73 = v37;
    v74 = stringCopy;
    v75 = identifierCopy;
    v52 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v53 = +[CPLEngineStore storageNames];
    v54 = [v53 countByEnumeratingWithState:&v80 objects:v88 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v81;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v81 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = *(*(&v80 + 1) + 8 * i);
          v59 = [v51 objectForKeyedSubscript:v58];
          v60 = v59;
          if (v59)
          {
            [v52 appendFormat:@"\n%@: %@", v58, v59];
          }
        }

        v55 = [v53 countByEnumeratingWithState:&v80 objects:v88 count:16];
      }

      while (v55);
    }

    (v35)[2](v35, @"storages", v52);
    stringCopy = v74;
    identifierCopy = v75;
    v34 = v72;
    v37 = v73;
  }

  v61 = *MEMORY[0x1E69E9840];
}

void __146__CPLEngineScope_CPLEngineScopeStatusFormatter__formatStatusDictionary_forScopeWithIdentifier_appendString_appendTopLevelStatus_appendLineStatus___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }
}

+ (id)separatorForStatusKey:(id)key
{
  if ([key isEqualToString:@"indexes"])
  {
    v3 = @"/";
  }

  else
  {
    v3 = @", ";
  }

  return v3;
}

@end