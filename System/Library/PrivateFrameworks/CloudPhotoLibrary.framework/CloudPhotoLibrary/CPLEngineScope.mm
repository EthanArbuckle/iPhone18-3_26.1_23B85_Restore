@interface CPLEngineScope
+ (id)separatorForStatusKey:(id)a3;
+ (void)formatStatusDictionary:(id)a3 forScopeWithIdentifier:(id)a4 appendString:(id)a5 appendTopLevelStatus:(id)a6 appendLineStatus:(id)a7;
- (BOOL)isEqual:(id)a3;
- (CPLEngineScope)initWithCoder:(id)a3;
- (CPLEngineScope)initWithScopeIdentifier:(id)a3 scopeType:(int64_t)a4;
- (id)copyWithScopeType:(int64_t)a3;
- (id)description;
- (id)statusDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPLEngineScope

- (id)copyWithScopeType:(int64_t)a3
{
  v4 = [[CPLEngineScope alloc] initWithScopeIdentifier:self->_scopeIdentifier scopeType:a3];
  [(CPLEngineScope *)v4 setLocalIndex:self->_localIndex];
  [(CPLEngineScope *)v4 setCloudIndex:self->_cloudIndex];
  [(CPLEngineScope *)v4 setStableIndex:self->_stableIndex];
  [(CPLEngineScope *)v4 setCreationDate:self->_creationDate];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = self->_scopeIdentifier;
      v6 = [(CPLEngineScope *)v4 scopeIdentifier];
      v7 = v6;
      v8 = v5 && v6 && ([v5 isEqual:v6] & 1) != 0 || (v5 | v7) == 0;
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

- (void)encodeWithCoder:(id)a3
{
  scopeIdentifier = self->_scopeIdentifier;
  v5 = a3;
  [v5 encodeObject:scopeIdentifier forKey:@"scopeIdentifier"];
  [v5 encodeInteger:self->_scopeType forKey:@"scopeType"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v5 encodeInteger:self->_localIndex forKey:@"localIndex"];
  [v5 encodeInteger:self->_cloudIndex forKey:@"cloudIndex"];
  [v5 encodeInteger:self->_stableIndex forKey:@"stableIndex"];
}

- (CPLEngineScope)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scopeIdentifier"];
  v6 = -[CPLEngineScope initWithScopeIdentifier:scopeType:](self, "initWithScopeIdentifier:scopeType:", v5, [v4 decodeIntegerForKey:@"scopeType"]);
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v6->_creationDate;
    v6->_creationDate = v7;

    v6->_localIndex = [v4 decodeIntegerForKey:@"localIndex"];
    v6->_cloudIndex = [v4 decodeIntegerForKey:@"cloudIndex"];
    v6->_stableIndex = [v4 decodeIntegerForKey:@"stableIndex"];
  }

  return v6;
}

- (CPLEngineScope)initWithScopeIdentifier:(id)a3 scopeType:(int64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CPLEngineScope;
  v7 = [(CPLEngineScope *)&v13 init];
  if (v7)
  {
    v8 = [v6 copy];
    scopeIdentifier = v7->_scopeIdentifier;
    v7->_scopeIdentifier = v8;

    v7->_scopeType = a4;
    v10 = [MEMORY[0x1E695DF00] date];
    creationDate = v7->_creationDate;
    v7->_creationDate = v10;
  }

  return v7;
}

+ (void)formatStatusDictionary:(id)a3 forScopeWithIdentifier:(id)a4 appendString:(id)a5 appendTopLevelStatus:(id)a6 appendLineStatus:(id)a7
{
  v89 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = (v13 + 16);
  (*(v13 + 2))(v13, v12);
  (*(v13 + 2))(v13, @" (");
  v17 = [v11 objectForKeyedSubscript:@"scope type"];
  v18 = v17;
  v19 = (v14 + 16);
  if (v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = @"invalid";
  }

  (*(v14 + 2))(v14, @"scope type", v20);

  (*v16)(v13, @" "));
  v21 = [v11 objectForKeyedSubscript:@"indexes"];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = &unk_1F57EF890;
  }

  (*v19)(v14, @"indexes", v23);

  (*v16)(v13, @" - creat: ");
  v24 = [v11 objectForKeyedSubscript:@"creation date"];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = @"???";
  }

  (*v19)(v14, @"creation date", v26);

  v27 = [v11 objectForKeyedSubscript:@"flags"];
  if (v27)
  {
    (*(v13 + 2))(v13, @" (");
    (*(v14 + 2))(v14, @"flags", v27);
    (*(v13 + 2))(v13, @""));
  }

  v78 = v27;
  v28 = [v11 objectForKeyedSubscript:@"busyState"];
  v29 = [v28 integerValue];

  if (v29)
  {
    (*(v13 + 2))(v13, @" [");
    v30 = [CPLScopeChange descriptionForBusyState:v29];
    (*(v14 + 2))(v14, @"busyState", v30);

    (*(v13 + 2))(v13, @"]");
  }

  v79 = v14;
  v31 = [v11 objectForKeyedSubscript:@"zone"];
  v32 = v31;
  if (v31 && ([v31 isEqualToString:v12] & 1) == 0)
  {
    (v15)[2](v15, @"zone", v32);
  }

  v77 = v32;
  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = __146__CPLEngineScope_CPLEngineScopeStatusFormatter__formatStatusDictionary_forScopeWithIdentifier_appendString_appendTopLevelStatus_appendLineStatus___block_invoke;
  v84[3] = &unk_1E861C5E8;
  v85 = v11;
  v33 = v15;
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

    v63 = [MEMORY[0x1E696AAA8] currentHandler];
    v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScope.m"];
    v65 = @"missing proposed key";
    v66 = v63;
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

    v63 = [MEMORY[0x1E696AAA8] currentHandler];
    v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScope.m"];
    v65 = @"missing last date";
    v66 = v63;
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

    v63 = [MEMORY[0x1E696AAA8] currentHandler];
    v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineScope.m"];
    v65 = @"missing now";
    v66 = v63;
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
    v74 = v13;
    v75 = v12;
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
    v13 = v74;
    v12 = v75;
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

+ (id)separatorForStatusKey:(id)a3
{
  if ([a3 isEqualToString:@"indexes"])
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