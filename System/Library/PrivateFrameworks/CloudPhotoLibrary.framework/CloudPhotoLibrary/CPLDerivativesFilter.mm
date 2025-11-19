@interface CPLDerivativesFilter
- (BOOL)_isValidDropDerivativeRecipeWithUTI:(id)a3 sourceType:(unint64_t)a4 derivativeTypes:(id)a5 changeType:(unint64_t)a6;
- (BOOL)addServerDropDerivativesRecipe:(id)a3;
- (BOOL)addServerDropDerivativesRecipes:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)mightDropSomeDerivativesForSourceType:(unint64_t)a3 forChangeType:(unint64_t)a4;
- (BOOL)shouldDropDerivativeWithDropDerivativeRecipe:(id)a3;
- (CPLDerivativesFilter)init;
- (CPLDerivativesFilter)initWithCoder:(id)a3;
- (NSArray)plistDescription;
- (id)_descriptionForStoredResponse:(id)a3 recordType:(unint64_t)a4;
- (id)_getTargetDictionaryForChangeType:(unint64_t)a3;
- (id)description;
- (void)_enumerateDropDerivativeRules:(id)a3 ofType:(unint64_t)a4 withBlock:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateDropDerivativeRulesWithBlock:(id)a3;
- (void)reset;
@end

@implementation CPLDerivativesFilter

- (void)enumerateDropDerivativeRulesWithBlock:(id)a3
{
  skipInfoForMasterChange = self->_skipInfoForMasterChange;
  v5 = a3;
  [(CPLDerivativesFilter *)self _enumerateDropDerivativeRules:skipInfoForMasterChange ofType:1 withBlock:v5];
  [(CPLDerivativesFilter *)self _enumerateDropDerivativeRules:self->_skipInfoForAssetChange ofType:2 withBlock:v5];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:&stru_1F57BD298];
  if ([(NSMutableDictionary *)self->_skipInfoForAssetChange count])
  {
    v4 = [(CPLDerivativesFilter *)self _descriptionForStoredResponse:self->_skipInfoForAssetChange recordType:2];
    v5 = [v4 componentsSeparatedByString:@"\n"];
    v6 = [v5 componentsJoinedByString:@"\n\t"];
    [v3 appendFormat:@"\n[DerivativeSkipInfoForAssetChange: \n\t%@]", v6];
  }

  if ([(NSMutableDictionary *)self->_skipInfoForMasterChange count])
  {
    v7 = [(CPLDerivativesFilter *)self _descriptionForStoredResponse:self->_skipInfoForMasterChange recordType:1];
    v8 = [v7 componentsSeparatedByString:@"\n"];
    v9 = [v8 componentsJoinedByString:@"\n\t"];
    [v3 appendFormat:@"\n[DerivativeSkipInfoForMasterChange: \n\t%@]", v9];
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithString:v3];

  return v10;
}

- (NSArray)plistDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__CPLDerivativesFilter_plistDescription__block_invoke;
  v6[3] = &unk_1E861D0A0;
  v4 = v3;
  v7 = v4;
  [(CPLDerivativesFilter *)self enumerateDropDerivativeRulesWithBlock:v6];

  return v4;
}

void __40__CPLDerivativesFilter_plistDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 plistDescription];
  [v2 addObject:v3];
}

- (id)_descriptionForStoredResponse:(id)a3 recordType:(unint64_t)a4
{
  v6 = MEMORY[0x1E695DF70];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__CPLDerivativesFilter__descriptionForStoredResponse_recordType___block_invoke;
  v12[3] = &unk_1E861D0A0;
  v13 = v8;
  v9 = v8;
  [(CPLDerivativesFilter *)self _enumerateDropDerivativeRules:v7 ofType:a4 withBlock:v12];

  v10 = [v9 componentsJoinedByString:@"\n"];

  return v10;
}

- (void)reset
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  skipInfoForAssetChange = self->_skipInfoForAssetChange;
  self->_skipInfoForAssetChange = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  skipInfoForMasterChange = self->_skipInfoForMasterChange;
  self->_skipInfoForMasterChange = v5;

  MEMORY[0x1EEE66BB8](v5, skipInfoForMasterChange);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(NSMutableDictionary *)self->_skipInfoForAssetChange isEqualToDictionary:v5->_skipInfoForAssetChange])
      {
        v6 = [(NSMutableDictionary *)self->_skipInfoForMasterChange isEqualToDictionary:v5->_skipInfoForMasterChange];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)_enumerateDropDerivativeRules:(id)a3 ofType:(unint64_t)a4 withBlock:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__CPLDerivativesFilter__enumerateDropDerivativeRules_ofType_withBlock___block_invoke;
  v9[3] = &unk_1E861D078;
  v10 = v7;
  v11 = a4;
  v8 = v7;
  [a3 enumerateKeysAndObjectsUsingBlock:v9];
}

void __71__CPLDerivativesFilter__enumerateDropDerivativeRules_ofType_withBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__CPLDerivativesFilter__enumerateDropDerivativeRules_ofType_withBlock___block_invoke_2;
  v17[3] = &unk_1E861D028;
  v18 = v8;
  v9 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v17];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__CPLDerivativesFilter__enumerateDropDerivativeRules_ofType_withBlock___block_invoke_4;
  v13[3] = &unk_1E861D050;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v5;
  v16 = v10;
  v15 = v11;
  v12 = v5;
  [v9 enumerateKeysAndObjectsUsingBlock:v13];
}

void __71__CPLDerivativesFilter__enumerateDropDerivativeRules_ofType_withBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__CPLDerivativesFilter__enumerateDropDerivativeRules_ofType_withBlock___block_invoke_3;
  v7[3] = &unk_1E861D000;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a3 enumerateObjectsUsingBlock:v7];
}

void __71__CPLDerivativesFilter__enumerateDropDerivativeRules_ofType_withBlock___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = -[CPLDropDerivativesRecipe initWithSourceResourceType:uti:changeType:droppingDerivativeTypes:]([CPLDropDerivativesRecipe alloc], "initWithSourceResourceType:uti:changeType:droppingDerivativeTypes:", [*(a1 + 32) unsignedIntegerValue], v6, *(a1 + 48), v5);

  (*(*(a1 + 40) + 16))();
}

void __71__CPLDerivativesFilter__enumerateDropDerivativeRules_ofType_withBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v8 = v7;

  [v8 addObject:*(a1 + 40)];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v4];
}

- (BOOL)shouldDropDerivativeWithDropDerivativeRecipe:(id)a3
{
  v4 = a3;
  v5 = [v4 uti];
  v6 = [v4 sourceResourceType];
  v7 = [v4 changeType];
  v8 = [v4 derivativeTypes];
  if (-[CPLDerivativesFilter _isValidDropDerivativeRecipeWithUTI:sourceType:derivativeTypes:changeType:](self, "_isValidDropDerivativeRecipeWithUTI:sourceType:derivativeTypes:changeType:", v5, v6, v8, v7) && [v8 count] == 1)
  {
    v9 = [(CPLDerivativesFilter *)self _getTargetDictionaryForChangeType:v7];
    v10 = [v8 firstObject];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    v12 = [v9 objectForKey:v11];
    v13 = [v12 objectForKey:v10];

    v14 = [MEMORY[0x1E69C08F0] typeWithIdentifier:v5];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69__CPLDerivativesFilter_shouldDropDerivativeWithDropDerivativeRecipe___block_invoke;
    v18[3] = &unk_1E861CFD8;
    v15 = v14;
    v19 = v15;
    v20 = &v21;
    [v13 enumerateObjectsUsingBlock:v18];
    v16 = *(v22 + 24);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void __69__CPLDerivativesFilter_shouldDropDerivativeWithDropDerivativeRecipe___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E69C08F0] typeWithIdentifier:a2];
  LODWORD(v6) = [v6 conformsToType:v7];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)mightDropSomeDerivativesForSourceType:(unint64_t)a3 forChangeType:(unint64_t)a4
{
  v5 = [(CPLDerivativesFilter *)self _getTargetDictionaryForChangeType:a4];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKey:v6];
  v8 = v7 != 0;

  return v8;
}

- (BOOL)addServerDropDerivativesRecipe:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 uti];
  v6 = [v4 sourceResourceType];
  v7 = [v4 changeType];
  v8 = [v4 derivativeTypes];
  if ([(CPLDerivativesFilter *)self _isValidDropDerivativeRecipeWithUTI:v5 sourceType:v6 derivativeTypes:v8 changeType:v7])
  {
    v9 = [(CPLDerivativesFilter *)self _getTargetDictionaryForChangeType:v7];
    v10 = v9 != 0;
    if (v9)
    {
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
      v11 = [v9 objectForKeyedSubscript:?];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v15 = v13;

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __55__CPLDerivativesFilter_addServerDropDerivativesRecipe___block_invoke;
      v26[3] = &unk_1E861CFB0;
      v16 = v15;
      v27 = v16;
      v17 = v5;
      v28 = v17;
      v30 = v6;
      v18 = v8;
      v29 = v18;
      v31 = v7;
      [v18 enumerateObjectsUsingBlock:v26];
      [v9 setObject:v16 forKeyedSubscript:v25];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v19 = __CPLDerivativesOSLogDomain();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [CPLResource shortDescriptionForResourceType:v6];
          v21 = _shortDescriptionForArrayOfCPLResourceTypes(v18);
          v22 = [CPLDropDerivativesRecipe shortDescriptionForResourceChangeRecordType:v7];
          *buf = 138413058;
          v33 = v20;
          v34 = 2112;
          v35 = v17;
          v36 = 2112;
          v37 = v21;
          v38 = 2112;
          v39 = v22;
          _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_DEFAULT, "Added server supported derivative upload skip info to derivativesFilter. SourceType: %@, UTI: %@, derivativeTypes: %@, recordChangetype: %@", buf, 0x2Au);
        }

        v10 = v9 != 0;
      }

      v14 = v25;
LABEL_18:

      goto LABEL_19;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLDerivativesOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v33 = v7;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Invalid derivative dropping rule. Record change type not supported: %lu", buf, 0xCu);
      }

      goto LABEL_18;
    }

    v9 = 0;
  }

  else
  {
    if (_CPLSilentLogging)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v9 = __CPLDerivativesOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = v4;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Invalid derivative dropping rule: %@", buf, 0xCu);
    }
  }

  v10 = 0;
LABEL_19:

LABEL_20:
  v23 = *MEMORY[0x1E69E9840];
  return v10;
}

void __55__CPLDerivativesFilter_addServerDropDerivativesRecipe___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v7 = v6;

  v8 = [MEMORY[0x1E69C08F0] typeWithIdentifier:*(a1 + 40)];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __55__CPLDerivativesFilter_addServerDropDerivativesRecipe___block_invoke_2;
  v16 = &unk_1E861CF88;
  v9 = v8;
  v17 = v9;
  v10 = *(a1 + 56);
  v20 = &v23;
  v21 = v10;
  v18 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 64);
  v19 = v11;
  v22 = v12;
  [v7 enumerateObjectsUsingBlock:&v13];
  if ((v24[3] & 1) == 0)
  {
    [v7 addObject:{*(a1 + 40), v13, v14, v15, v16, v17, v18}];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v3];
  }

  _Block_object_dispose(&v23, 8);
}

void __55__CPLDerivativesFilter_addServerDropDerivativesRecipe___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E69C08F0] typeWithIdentifier:a2];
  LODWORD(v6) = [v6 conformsToType:v7];

  if (v6)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a4 = 1;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLDerivativesOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [CPLResource shortDescriptionForResourceType:*(a1 + 64)];
        v10 = *(a1 + 40);
        v11 = _shortDescriptionForArrayOfCPLResourceTypes(*(a1 + 48));
        v12 = [CPLDropDerivativesRecipe shortDescriptionForResourceChangeRecordType:*(a1 + 72)];
        v14 = 138413058;
        v15 = v9;
        v16 = 2112;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Duplicate server rule found in response, sourceType: %@, UTI: %@, derivativeTypes: %@, recordChangetype: %@", &v14, 0x2Au);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)addServerDropDerivativesRecipes:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__CPLDerivativesFilter_addServerDropDerivativesRecipes___block_invoke;
  v6[3] = &unk_1E861CF60;
  v6[4] = self;
  v6[5] = &v7;
  [v4 enumerateObjectsUsingBlock:v6];
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return self;
}

uint64_t __56__CPLDerivativesFilter_addServerDropDerivativesRecipes___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) addServerDropDerivativesRecipe:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_isValidDropDerivativeRecipeWithUTI:(id)a3 sourceType:(unint64_t)a4 derivativeTypes:(id)a5 changeType:(unint64_t)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = [MEMORY[0x1E69C08F0] typeWithIdentifier:v9];
  v12 = v11;
  if (a4 && v11 && [v10 count])
  {

    if (a6)
    {
      v13 = 1;
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v14 = __CPLDerivativesOSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [CPLResource shortDescriptionForResourceType:a4];
      v16 = _shortDescriptionForArrayOfCPLResourceTypes(v10);
      v17 = [CPLDropDerivativesRecipe shortDescriptionForResourceChangeRecordType:a6];
      v20 = 138413058;
      v21 = v15;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Invalid CPLDropDerivativesRecipe, sourceType: %@, UTI: %@, derivativeTypes: %@, recordChangetype: %@", &v20, 0x2Au);
    }
  }

  v13 = 0;
LABEL_12:

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)_getTargetDictionaryForChangeType:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (a3 == 2)
  {
    v4 = 8;
LABEL_5:
    v5 = *(&self->super.isa + v4);
    goto LABEL_11;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLDerivativesOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [CPLDropDerivativesRecipe shortDescriptionForResourceChangeRecordType:a3];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Unknown upload skip record type: %@", &v10, 0xCu);
    }
  }

  v5 = 0;
LABEL_11:
  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  skipInfoForAssetChange = self->_skipInfoForAssetChange;
  v5 = a3;
  [v5 encodeObject:skipInfoForAssetChange forKey:@"dropForAssetChange"];
  [v5 encodeObject:self->_skipInfoForMasterChange forKey:@"dropForMasterChange"];
}

- (CPLDerivativesFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CPLDerivativesFilter;
  v5 = [(CPLDerivativesFilter *)&v21 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"dropForAssetChange"];
    skipInfoForAssetChange = v5->_skipInfoForAssetChange;
    v5->_skipInfoForAssetChange = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v13 setWithObjects:{v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"dropForMasterChange"];
    skipInfoForMasterChange = v5->_skipInfoForMasterChange;
    v5->_skipInfoForMasterChange = v18;
  }

  return v5;
}

- (CPLDerivativesFilter)init
{
  v8.receiver = self;
  v8.super_class = CPLDerivativesFilter;
  v2 = [(CPLDerivativesFilter *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    skipInfoForAssetChange = v2->_skipInfoForAssetChange;
    v2->_skipInfoForAssetChange = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    skipInfoForMasterChange = v2->_skipInfoForMasterChange;
    v2->_skipInfoForMasterChange = v5;
  }

  return v2;
}

@end