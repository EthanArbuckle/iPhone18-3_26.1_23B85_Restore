@interface CPLFeatureVersionHistory
- (BOOL)isEqual:(id)a3;
- (CPLFeatureVersionHistory)initWithCoder:(id)a3;
- (CPLFeatureVersionHistory)initWithCurrentFeatureVersion:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)syncAnchorForFeatureVersion:(int64_t)a3;
- (int64_t)featureVersionForSyncAnchor:(id)a3;
- (void)addSyncAnchor:(id)a3 forFeatureVersion:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateHistoryWithBlock:(id)a3;
@end

@implementation CPLFeatureVersionHistory

- (void)enumerateHistoryWithBlock:(id)a3
{
  v4 = a3;
  if ((self->_currentFeatureVersion & 0x8000000000000000) == 0)
  {
    v5 = -1;
    while (1)
    {
      ++v5;
      versionToAnchor = self->_versionToAnchor;
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
      v8 = [(NSMutableDictionary *)versionToAnchor objectForKeyedSubscript:v7];

      if (v8)
      {
        v9 = 0;
        v4[2](v4, v5, v8, &v9);
        if (v9)
        {
          break;
        }
      }

      if (v5 >= self->_currentFeatureVersion)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
}

- (id)description
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@ %ld", objc_opt_class(), self->_currentFeatureVersion];
  v4 = [(NSMutableDictionary *)self->_versionToAnchor allKeys];
  v5 = [v4 sortedArrayUsingSelector:sel_compare_];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 1;
    v9 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 integerValue];
        v13 = [(NSMutableDictionary *)self->_versionToAnchor objectForKeyedSubscript:v11];
        v14 = [(NSMutableDictionary *)self->_anchorToVersion objectForKeyedSubscript:v13];
        v15 = [v14 integerValue];
        v16 = "-";
        if (v15 == v12)
        {
          v16 = ", ";
        }

        if (v8)
        {
          v16 = " anchors: ";
        }

        [v3 appendFormat:@"%s%ld", v16, v12];

        v8 = 0;
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      v8 = 0;
    }

    while (v7);
  }

  [v3 appendString:@">"];
  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (int64_t)featureVersionForSyncAnchor:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_anchorToVersion objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (id)syncAnchorForFeatureVersion:(int64_t)a3
{
  versionToAnchor = self->_versionToAnchor;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)versionToAnchor objectForKeyedSubscript:v4];

  return v5;
}

- (void)addSyncAnchor:(id)a3 forFeatureVersion:(int64_t)a4
{
  v9 = [a3 copy];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)self->_versionToAnchor setObject:v9 forKeyedSubscript:v6];
  v7 = [(NSMutableDictionary *)self->_anchorToVersion objectForKeyedSubscript:v9];
  v8 = v7;
  if (!v7 || [v7 integerValue] > a4)
  {
    [(NSMutableDictionary *)self->_anchorToVersion setObject:v6 forKeyedSubscript:v9];
  }
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
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_currentFeatureVersion == v4->_currentFeatureVersion)
    {
      v5 = self->_versionToAnchor;
      v6 = v4->_versionToAnchor;
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

- (CPLFeatureVersionHistory)initWithCurrentFeatureVersion:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = CPLFeatureVersionHistory;
  v4 = [(CPLFeatureVersionHistory *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_currentFeatureVersion = a3;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    anchorToVersion = v5->_anchorToVersion;
    v5->_anchorToVersion = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    versionToAnchor = v5->_versionToAnchor;
    v5->_versionToAnchor = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CPLFeatureVersionHistory alloc] initWithCurrentFeatureVersion:self->_currentFeatureVersion];
  v5 = [(NSMutableDictionary *)self->_versionToAnchor copy];
  versionToAnchor = v4->_versionToAnchor;
  v4->_versionToAnchor = v5;

  v7 = [(NSMutableDictionary *)self->_anchorToVersion copy];
  anchorToVersion = v4->_anchorToVersion;
  v4->_anchorToVersion = v7;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  currentFeatureVersion = self->_currentFeatureVersion;
  v5 = a3;
  [v5 encodeInteger:currentFeatureVersion forKey:@"current"];
  [v5 encodeObject:self->_versionToAnchor forKey:@"versions"];
}

- (CPLFeatureVersionHistory)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[CPLFeatureVersionHistory initWithCurrentFeatureVersion:](self, "initWithCurrentFeatureVersion:", [v4 decodeIntegerForKey:@"current"]);
  if (v5)
  {
    if (initWithCoder__onceToken_20439 != -1)
    {
      dispatch_once(&initWithCoder__onceToken_20439, &__block_literal_global_20440);
    }

    v6 = [v4 decodeObjectOfClasses:initWithCoder__versionsClasses forKey:@"versions"];
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 1;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __42__CPLFeatureVersionHistory_initWithCoder___block_invoke_2;
        v13[3] = &unk_1E861F6E8;
        v14[1] = &v15;
        v14[0] = v5;
        [v6 enumerateKeysAndObjectsUsingBlock:v13];
        v7 = v14;
      }

      else
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __42__CPLFeatureVersionHistory_initWithCoder___block_invoke_9;
        block[3] = &unk_1E861A940;
        v7 = &v12;
        v12 = v5;
        if (initWithCoder__logOnceToken_20442 != -1)
        {
          dispatch_once(&initWithCoder__logOnceToken_20442, block);
        }

        *(v16 + 24) = 0;
      }

      v8 = *(v16 + 24);
      _Block_object_dispose(&v15, 8);

      if ((v8 & 1) == 0)
      {
        v9 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      _Block_object_dispose(&v15, 8);
    }
  }

  v9 = v5;
LABEL_13:

  return v9;
}

void __42__CPLFeatureVersionHistory_initWithCoder___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [*(a1 + 32) addSyncAnchor:v8 forFeatureVersion:{objc_msgSend(v7, "integerValue")}];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__CPLFeatureVersionHistory_initWithCoder___block_invoke_3;
    block[3] = &unk_1E861B1C8;
    v10 = *(a1 + 32);
    v11 = v7;
    v12 = v8;
    if (initWithCoder__logOnceToken_20442 != -1)
    {
      dispatch_once(&initWithCoder__logOnceToken_20442, block);
    }

    *a4 = 1;
  }
}

void __42__CPLFeatureVersionHistory_initWithCoder___block_invoke_9(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v6 = 138412290;
      v7 = objc_opt_class();
      v4 = v7;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_ERROR, "Failed to deserialize %@ - missing versionToAnchor", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __42__CPLFeatureVersionHistory_initWithCoder___block_invoke_3(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = a1[4];
      v4 = objc_opt_class();
      v5 = a1[5];
      v6 = a1[6];
      v9 = 138412802;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      v7 = v4;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_ERROR, "Failed to deserialize %@ - invalid versionToAnchor dictionary %@: %@", &v9, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __42__CPLFeatureVersionHistory_initWithCoder___block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0}];
  v4 = initWithCoder__versionsClasses;
  initWithCoder__versionsClasses = v3;

  return MEMORY[0x1EEE66BB8](v3, v4);
}

@end