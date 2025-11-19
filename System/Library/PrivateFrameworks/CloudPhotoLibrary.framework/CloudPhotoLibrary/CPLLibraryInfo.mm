@interface CPLLibraryInfo
+ (id)cplAdditionalSecureClassesForProperty:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CPLAccountFlags)accountFlags;
- (CPLLibraryInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)prettyDescriptionWithAnchorDesciptionBlock:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPLLibraryInfo

+ (id)cplAdditionalSecureClassesForProperty:(id)a3
{
  v4 = a3;
  if (cplAdditionalSecureClassesForProperty__onceToken_157 != -1)
  {
    dispatch_once(&cplAdditionalSecureClassesForProperty__onceToken_157, &__block_literal_global_159);
  }

  v5 = [cplAdditionalSecureClassesForProperty__additionalClasses_156 objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___CPLLibraryInfo;
    v7 = objc_msgSendSuper2(&v10, sel_cplAdditionalSecureClassesForProperty_, v4);
  }

  v8 = v7;

  return v8;
}

void __69__CPLLibraryInfo_CPLNSCoding__cplAdditionalSecureClassesForProperty___block_invoke()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"assetCounts";
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = cplAdditionalSecureClassesForProperty__additionalClasses_156;
  cplAdditionalSecureClassesForProperty__additionalClasses_156 = v3;

  v5 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSDictionary *)self->_assetCounts hash];
  v4 = [(CPLFeatureVersionHistory *)self->_featureVersionHistory hash]^ v3;
  v5 = [(NSData *)self->_accountFlagsData hash];
  v6 = v4 ^ v5 ^ [(CPLMomentShare *)self->_momentShare hash];
  return v6 ^ [(NSNumber *)self->_featureCompatibleVersion hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_22;
  }

  v5 = self->_assetCounts;
  v6 = v5;
  assetCounts = v4->_assetCounts;
  if (v5 && assetCounts)
  {
    v8 = [v5 isEqual:?];

    if ((v8 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v10 = v5 | assetCounts;

    if (v10)
    {
      goto LABEL_22;
    }
  }

  v11 = self->_featureVersionHistory;
  v12 = v11;
  featureVersionHistory = v4->_featureVersionHistory;
  if (v11 && featureVersionHistory)
  {
    v14 = [v11 isEqual:?];

    if (!v14)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v15 = v11 | featureVersionHistory;

    if (v15)
    {
      goto LABEL_22;
    }
  }

  v16 = self->_accountFlagsData;
  v17 = v16;
  accountFlagsData = v4->_accountFlagsData;
  if (v16 && accountFlagsData)
  {
    v19 = [v16 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v20 = v16 | accountFlagsData;

  if (v20)
  {
LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

LABEL_19:
  v21 = self->_momentShare;
  v22 = v21;
  momentShare = v4->_momentShare;
  if (v21 && momentShare)
  {
    v24 = [v21 isEqual:?];

    if (!v24)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v26 = v21 | momentShare;

    if (v26)
    {
      goto LABEL_22;
    }
  }

  v27 = self->_featureCompatibleVersion;
  v28 = v4->_featureCompatibleVersion;
  v29 = v28;
  v9 = v27 && v28 && ([v27 isEqual:v28] & 1) != 0 || (v27 | v29) == 0;

LABEL_23:
  return v9;
}

- (CPLAccountFlags)accountFlags
{
  if (self->_accountFlagsData)
  {
    v3 = [[CPLAccountFlags alloc] initWithData:self->_accountFlagsData];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)prettyDescriptionWithAnchorDesciptionBlock:(id)a3
{
  v4 = a3;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__14285;
  v46 = __Block_byref_object_dispose__14286;
  v47 = 0;
  v5 = &__block_literal_global_24_14287;
  if (v4)
  {
    v5 = v4;
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__14285;
  v40 = __Block_byref_object_dispose__14286;
  v41 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = -1;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = -1;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __61__CPLLibraryInfo_prettyDescriptionWithAnchorDesciptionBlock___block_invoke_2;
  v26[3] = &unk_1E861DE88;
  v28 = &v42;
  v29 = v35;
  v6 = v5;
  v27 = v6;
  v30 = &v36;
  v7 = MEMORY[0x1E128EBA0](v26);
  featureVersionHistory = self->_featureVersionHistory;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __61__CPLLibraryInfo_prettyDescriptionWithAnchorDesciptionBlock___block_invoke_3;
  v21[3] = &unk_1E861DEB0;
  v23 = &v31;
  v24 = &v36;
  v25 = v35;
  v9 = v7;
  v22 = v9;
  [(CPLFeatureVersionHistory *)featureVersionHistory enumerateHistoryWithBlock:v21];
  if (v37[5])
  {
    (*(v9 + 2))(v9, v32[3]);
  }

  if (!v43[5])
  {
    v10 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"History: None"];
    v11 = v43[5];
    v43[5] = v10;
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = [(CPLLibraryInfo *)self accountFlags];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"none";
  }

  v16 = [(CPLLibraryInfo *)self assetCounts];
  featureCompatibleVersion = self->_featureCompatibleVersion;
  v18 = [(CPLFeatureVersionHistory *)self->_featureVersionHistory currentFeatureVersion];
  v19 = [v12 stringWithFormat:@"Account flags: %@\nAsset counts:\n%@\nFeature compatible version: %@\n\nCurrent feature version: %ld\n%@", v15, v16, featureCompatibleVersion, v18, v43[5]];

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(v35, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);

  return v19;
}

void __61__CPLLibraryInfo_prettyDescriptionWithAnchorDesciptionBlock___block_invoke_2(void *a1, uint64_t a2)
{
  v4 = *(*(a1[5] + 8) + 40);
  v5 = *(*(a1[6] + 8) + 24);
  if (v4)
  {
    v6 = a1[4];
    v7 = *(*(a1[7] + 8) + 40);
    v8 = (*(a1[4] + 16))();
    v17 = v8;
    if (v5 == a2)
    {
      [v4 appendFormat:@"\n  %ld: %@", a2, v8, v16];
    }

    else
    {
      [v4 appendFormat:@"\n  %ld-%ld: %@", v5, a2, v8];
    }
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E696AD60]);
    v10 = *(*(a1[6] + 8) + 24);
    v11 = *(*(a1[7] + 8) + 40);
    v12 = (*(a1[4] + 16))();
    v17 = v12;
    if (v5 == a2)
    {
      v13 = [v9 initWithFormat:@"History:\n  %ld: %@", v10, v12, v16];
    }

    else
    {
      v13 = [v9 initWithFormat:@"History:\n  %ld-%ld: %@", v10, a2, v12];
    }

    v14 = *(a1[5] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

void __61__CPLLibraryInfo_prettyDescriptionWithAnchorDesciptionBlock___block_invoke_3(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  *(*(a1[5] + 8) + 24) = a2;
  v7 = *(a1[6] + 8);
  v10 = *(v7 + 40);
  v8 = (v7 + 40);
  v9 = v10;
  v11 = v6;
  if (v10)
  {
    if ([v9 isEqual:v6])
    {
      goto LABEL_5;
    }

    (*(a1[4] + 16))();
    v8 = (*(a1[6] + 8) + 40);
  }

  objc_storeStrong(v8, a3);
  *(*(a1[7] + 8) + 24) = a2;
LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CPLLibraryInfo);
  [(CPLLibraryInfo *)v4 setAssetCounts:self->_assetCounts];
  v5 = [(CPLFeatureVersionHistory *)self->_featureVersionHistory copy];
  [(CPLLibraryInfo *)v4 setFeatureVersionHistory:v5];

  [(CPLLibraryInfo *)v4 setAccountFlagsData:self->_accountFlagsData];
  v6 = [(CPLMomentShare *)self->_momentShare copy];
  [(CPLLibraryInfo *)v4 setMomentShare:v6];

  v7 = [(NSNumber *)self->_featureCompatibleVersion copy];
  [(CPLLibraryInfo *)v4 setFeatureCompatibleVersion:v7];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  assetCounts = self->_assetCounts;
  v5 = a3;
  [v5 encodeObject:assetCounts forKey:@"counts"];
  [v5 encodeObject:self->_featureVersionHistory forKey:@"history"];
  [v5 encodeObject:self->_accountFlagsData forKey:@"flags"];
  [v5 encodeObject:self->_momentShare forKey:@"momentShare"];
  [v5 encodeObject:self->_featureCompatibleVersion forKey:@"featureCompatibleVersion"];
}

- (CPLLibraryInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = CPLLibraryInfo;
  v5 = [(CPLLibraryInfo *)&v30 init];
  if (v5)
  {
    if (initWithCoder__onceToken_14332 != -1)
    {
      dispatch_once(&initWithCoder__onceToken_14332, &__block_literal_global_14333);
    }

    v6 = [v4 decodeObjectOfClasses:initWithCoder__countsClasses forKey:@"counts"];
    assetCounts = v5->_assetCounts;
    v5->_assetCounts = v6;

    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 1;
    v8 = v5->_assetCounts;
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __32__CPLLibraryInfo_initWithCoder___block_invoke_2;
    v23 = &unk_1E861DE40;
    v25 = &v26;
    v9 = v5;
    v24 = v9;
    [(NSDictionary *)v8 enumerateKeysAndObjectsUsingBlock:&v20];
    if ((v27[3] & 1) == 0)
    {

      _Block_object_dispose(&v26, 8);
      v18 = 0;
      goto LABEL_8;
    }

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:{@"history", v20, v21, v22, v23}];
    featureVersionHistory = v9->_featureVersionHistory;
    v9->_featureVersionHistory = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flags"];
    accountFlagsData = v9->_accountFlagsData;
    v9->_accountFlagsData = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"momentShare"];
    momentShare = v9->_momentShare;
    v9->_momentShare = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"featureCompatibleVersion"];
    featureCompatibleVersion = v9->_featureCompatibleVersion;
    v9->_featureCompatibleVersion = v16;

    _Block_object_dispose(&v26, 8);
  }

  v18 = v5;
LABEL_8:

  return v18;
}

void __32__CPLLibraryInfo_initWithCoder___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__CPLLibraryInfo_initWithCoder___block_invoke_3;
    block[3] = &unk_1E861B1C8;
    v10 = *(a1 + 32);
    v11 = v7;
    v12 = v8;
    if (initWithCoder__logOnceToken != -1)
    {
      dispatch_once(&initWithCoder__logOnceToken, block);
    }

    *a4 = 1;
  }
}

void __32__CPLLibraryInfo_initWithCoder___block_invoke_3(void *a1)
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
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_ERROR, "Failed to deserialize %@ - invalid assetCounts dictionary %@: %@", &v9, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __32__CPLLibraryInfo_initWithCoder___block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0}];
  v4 = initWithCoder__countsClasses;
  initWithCoder__countsClasses = v3;

  return MEMORY[0x1EEE66BB8](v3, v4);
}

@end