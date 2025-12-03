@interface CHSIntentReference
+ (CHSIntentReference)new;
+ (id)_decodeFromOPACK:(id)k error:(id *)error;
+ (id)_encodeToOPACK:(id)k error:(id *)error;
+ (id)_schemaDataFromIntent:(id)intent error:(id *)error;
+ (id)referenceFromIntent:(id)intent error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (CHSIntentReference)init;
- (CHSIntentReference)initWithBSXPCCoder:(id)coder;
- (CHSIntentReference)initWithCoder:(id)coder;
- (CHSIntentReference)initWithIntent:(id)intent;
- (CHSIntentReference)initWithIntent:(id)intent schemaData:(id)data;
- (CHSIntentReference)initWithIntentData:(id)data configData:(id)configData schemaData:(id)schemaData stableHash:(int64_t)hash;
- (INIntent)intent;
- (id)_copyFillingInSchema:(id)schema;
- (id)_copyWithoutSchemaDataIfNecessary;
- (id)_initWithGenericIntent:(id)intent schemaData:(id)data error:(id *)p_isa;
- (id)_initWithIntentInMemoryOnly:(id)only;
- (id)_typedIntent;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSIntentReference

- (unint64_t)hash
{
  v3 = [(NSData *)self->_intentData length];
  v4 = v3 + [(NSData *)self->_partialConfigData length];
  return v4 + [(INIntent *)self->_inMemoryIntent hash]+ 19;
}

- (INIntent)intent
{
  v27 = *MEMORY[0x1E69E9840];
  inMemoryIntent = self->_inMemoryIntent;
  if (inMemoryIntent)
  {
    v3 = inMemoryIntent;
    goto LABEL_23;
  }

  intentData = self->_intentData;
  if (!intentData)
  {
    if (!self->_partialConfigData)
    {
      v3 = 0;
      goto LABEL_23;
    }

    if (!self->_partialSchemaData)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"CHSIntentReference.m" lineNumber:146 description:@"Cannot rehydrate a partialized intent with missing schema data."];

      partialSchemaData = self->_partialSchemaData;
    }

    v23 = 0;
    v8 = OPACKDecodeData();
    partialConfigData = self->_partialConfigData;
    v10 = OPACKDecodeData();
    v22 = 0;
    v11 = [MEMORY[0x1E696E880] makeFromWidgetPlistableRepresentation:v8 error:&v22];
    v12 = v22;
    if (v12)
    {
      v13 = v12;
      v14 = CHSLogChronoServices();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v26 = v13;
        _os_log_impl(&dword_195EB2000, v14, OS_LOG_TYPE_DEFAULT, "Error decoding partialized schema intent: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v21 = 0;
      v14 = [v11 _copyApplyingNewBackingStoreData:v10 error:&v21];
      v13 = v21;
      if (!v13)
      {
        v14 = v14;
        v3 = v14;
        goto LABEL_22;
      }

      v15 = CHSLogChronoServices();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v26 = v13;
        _os_log_impl(&dword_195EB2000, v15, OS_LOG_TYPE_DEFAULT, "Error decoding partialized intent: %{public}@", buf, 0xCu);
      }
    }

    v3 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v24 = 0;
  v3 = [CHSIntentReference _decodeFromOPACK:intentData error:&v24];
  v6 = v24;
  if (v6)
  {
    v7 = CHSLogChronoServices();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v6;
      _os_log_impl(&dword_195EB2000, v7, OS_LOG_TYPE_DEFAULT, "Error decoding intent: %{public}@", buf, 0xCu);
    }
  }

LABEL_23:
  v16 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_typedIntent
{
  intent = [(CHSIntentReference *)self intent];
  if (intent)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = intent;
    }

    else
    {
      v3 = INTypedIntentWithIntent();
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (CHSIntentReference)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CHSIntentReference.m" lineNumber:34 description:@"+[CHSIntentReference new] is unavailable."];

  return 0;
}

- (CHSIntentReference)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CHSIntentReference.m" lineNumber:39 description:@"-[CHSIntentReference init] is unavailable."];

  return 0;
}

+ (id)referenceFromIntent:(id)intent error:(id *)error
{
  intentCopy = intent;
  v6 = [[CHSIntentReference alloc] _initWithGenericIntent:intentCopy schemaData:0 error:error];

  return v6;
}

- (id)_initWithIntentInMemoryOnly:(id)only
{
  onlyCopy = only;
  v9.receiver = self;
  v9.super_class = CHSIntentReference;
  v6 = [(CHSIntentReference *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inMemoryIntent, only);
    v7->_stableHash = [onlyCopy _indexingHash];
  }

  return v7;
}

- (CHSIntentReference)initWithIntent:(id)intent
{
  v4 = _genericiseIntent(intent);
  v5 = [(CHSIntentReference *)self _initWithGenericIntent:v4 schemaData:0 error:0];

  return v5;
}

- (CHSIntentReference)initWithIntent:(id)intent schemaData:(id)data
{
  dataCopy = data;
  v7 = _genericiseIntent(intent);
  v8 = [(CHSIntentReference *)self _initWithGenericIntent:v7 schemaData:dataCopy error:0];

  return v8;
}

- (id)_initWithGenericIntent:(id)intent schemaData:(id)data error:(id *)p_isa
{
  v38[1] = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  dataCopy = data;
  _indexingHash = [intentCopy _indexingHash];
  if (dataCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v33 = 0;
      _backingStoreData = [intentCopy _backingStoreData];
      v13 = _backingStoreData;
      if (_backingStoreData)
      {
        v14 = MEMORY[0x19A8C4E60](_backingStoreData, 0, &v33);
        if (!v33)
        {
          self = [(CHSIntentReference *)self initWithIntentData:0 configData:v14 schemaData:dataCopy stableHash:_indexingHash];
          p_isa = &self->super.isa;
          goto LABEL_20;
        }

        v15 = CHSLogChronoServices();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = [MEMORY[0x1E696AD98] numberWithInt:v33];
          [CHSIntentReference _initWithGenericIntent:v16 schemaData:buf error:v15];
        }

        if (!p_isa)
        {
          goto LABEL_20;
        }

        v17 = MEMORY[0x1E696ABC0];
        v37 = *MEMORY[0x1E696A578];
        v18 = MEMORY[0x1E696AEC0];
        v19 = [MEMORY[0x1E696AD98] numberWithInt:v33];
        v20 = [v18 stringWithFormat:@"Could not OPACK encode backing store dictionary: %@", v19];
        v38[0] = v20;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
        *p_isa = [v17 errorWithDomain:@"CHSErrorDomain" code:6 userInfo:v21];
      }

      else
      {
        v22 = CHSLogChronoServices();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          [(CHSIntentReference *)v24 _initWithGenericIntent:intentCopy schemaData:buf error:v22];
        }

        if (!p_isa)
        {
          v14 = 0;
          goto LABEL_20;
        }

        v25 = MEMORY[0x1E696AEC0];
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = objc_claimAutoreleasedReturnValue();

        v29 = MEMORY[0x1E696ABC0];
        v34 = *MEMORY[0x1E696A578];
        v35 = v28;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        *p_isa = [v29 errorWithDomain:@"CHSErrorDomain" code:6 userInfo:v30];

        v14 = 0;
      }

      p_isa = 0;
LABEL_20:

      goto LABEL_21;
    }
  }

  v11 = [CHSIntentReference _encodeToOPACK:intentCopy error:p_isa];
  if (v11)
  {
    self = [(CHSIntentReference *)self initWithIntentData:v11 configData:0 schemaData:0 stableHash:_indexingHash];
    p_isa = &self->super.isa;
  }

  else
  {
    p_isa = 0;
  }

LABEL_21:
  v31 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (CHSIntentReference)initWithIntentData:(id)data configData:(id)configData schemaData:(id)schemaData stableHash:(int64_t)hash
{
  dataCopy = data;
  configDataCopy = configData;
  schemaDataCopy = schemaData;
  v15 = schemaDataCopy;
  if (dataCopy)
  {
    if (configDataCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"CHSIntentReference.m" lineNumber:111 description:@"Can't specify split intent data along with unified intent data"];

      if (!v15)
      {
        goto LABEL_6;
      }
    }

    else if (!schemaDataCopy)
    {
      goto LABEL_6;
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"CHSIntentReference.m" lineNumber:112 description:@"Can't specify split condif data along with unified intent data"];
  }

  else
  {
    if (configDataCopy)
    {
      goto LABEL_6;
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"CHSIntentReference.m" lineNumber:114 description:@"Must specify partial config data if not specifying unified intent data"];
  }

LABEL_6:
  v21.receiver = self;
  v21.super_class = CHSIntentReference;
  v17 = [(CHSIntentReference *)&v21 init];
  v18 = v17;
  if (v17)
  {
    v17->_stableHash = hash;
    objc_storeStrong(&v17->_intentData, data);
    objc_storeStrong(&v18->_partialConfigData, configData);
    objc_storeStrong(&v18->_partialSchemaData, schemaData);
  }

  return v18;
}

- (id)_copyFillingInSchema:(id)schema
{
  schemaCopy = schema;
  v5 = schemaCopy;
  if (self->_partialConfigData)
  {
    if (self->_partialSchemaData == schemaCopy)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = [[CHSIntentReference alloc] initWithIntentData:0 configData:self->_partialConfigData schemaData:schemaCopy stableHash:self->_stableHash];
    }

    v9 = selfCopy;
  }

  else
  {
    v7 = [CHSIntentReference alloc];
    intent = [(CHSIntentReference *)self intent];
    v9 = [(CHSIntentReference *)v7 initWithIntent:intent schemaData:v5];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (self->_stableHash == v5->_stableHash && (v6 = [(NSData *)self->_intentData length], v6 == [(NSData *)v5->_intentData length]) && (v7 = [(NSData *)self->_partialConfigData length], v7 == [(NSData *)v5->_partialConfigData length]))
      {
        inMemoryIntent = self->_inMemoryIntent;
        v9 = v5->_inMemoryIntent;
        v10 = BSEqualObjects();
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)_copyWithoutSchemaDataIfNecessary
{
  if (self->_partialSchemaData)
  {
    v3 = [CHSIntentReference alloc];
    intentData = self->_intentData;
    partialConfigData = self->_partialConfigData;
    stableHash = self->_stableHash;

    return [(CHSIntentReference *)v3 initWithIntentData:intentData configData:partialConfigData schemaData:0 stableHash:stableHash];
  }

  else
  {

    return self;
  }
}

+ (id)_schemaDataFromIntent:(id)intent error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  if (!intentCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = 0;
LABEL_4:
    v6 = v6;
    v7 = 0;
    v8 = v6;
    goto LABEL_5;
  }

  v22 = 0;
  v11 = [intentCopy _copyWithoutBackingStoreData:&v22];
  v12 = v22;
  v21 = v12;
  v13 = [v11 widgetPlistableRepresentation:&v21];
  v7 = v21;

  v6 = 0;
  if (!v7 && v13)
  {
    *buf = 0;
    v6 = MEMORY[0x19A8C4E60](v13, 0, buf);
    if (*buf)
    {
      v14 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v15 = MEMORY[0x1E696AEC0];
      v16 = [MEMORY[0x1E696AD98] numberWithInt:?];
      v17 = [v15 stringWithFormat:@"Unable to encode intent schema: %@", v16];
      v26[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v7 = [v14 errorWithDomain:@"CHSErrorDomain" code:6 userInfo:v18];
    }

    else
    {
      v7 = 0;
    }
  }

  if (!v7)
  {
    goto LABEL_4;
  }

  v19 = CHSLogChronoServices();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = v7;
    _os_log_impl(&dword_195EB2000, v19, OS_LOG_TYPE_DEFAULT, "Error extracting schema from intent: %{public}@", buf, 0xCu);
  }

  if (error)
  {
    v20 = v7;
    v8 = 0;
    *error = v7;
  }

  else
  {
    v8 = 0;
  }

LABEL_5:

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__CHSIntentReference_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E7453000;
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:0 block:v6];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self->_inMemoryIntent)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CHSIntentReference.m" lineNumber:318 description:@"Cannot encode an in-memory representation of an intent."];
  }

  v5 = _unifiedIntentDataIfPossible(self);
  if (v5)
  {
    partialConfigData = 0;
  }

  else
  {
    partialConfigData = self->_partialConfigData;
  }

  v7 = partialConfigData;
  [coderCopy encodeInt64:self->_stableHash forKey:@"stableHash"];
  if (v5)
  {
    [coderCopy encodeObject:v5 forKey:@"idata"];
  }

  if (v7)
  {
    [coderCopy encodeObject:v7 forKey:@"pcdata"];
  }
}

- (CHSIntentReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = [coderCopy decodeInt64ForKey:@"stableHash"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idata"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pcdata"];
  if (selfCopy)
  {
    self = [(CHSIntentReference *)self initWithIntentData:v6 configData:v7 schemaData:0 stableHash:selfCopy];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  if (self->_inMemoryIntent)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CHSIntentReference.m" lineNumber:349 description:@"Cannot encode an in-memory representation of an intent."];
  }

  v5 = _unifiedIntentDataIfPossible(self);
  if (v5)
  {
    partialConfigData = 0;
  }

  else
  {
    partialConfigData = self->_partialConfigData;
  }

  v7 = partialConfigData;
  [coderCopy encodeInt64:self->_stableHash forKey:@"stableHash"];
  if (v5)
  {
    [coderCopy encodeObject:v5 forKey:@"idata"];
  }

  if (v7)
  {
    [coderCopy encodeObject:v7 forKey:@"pcdata"];
  }
}

- (CHSIntentReference)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = [coderCopy decodeInt64ForKey:@"stableHash"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idata"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pcdata"];
  if (selfCopy)
  {
    self = [(CHSIntentReference *)self initWithIntentData:v6 configData:v7 schemaData:0 stableHash:selfCopy];
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)_encodeToOPACK:(id)k error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  kCopy = k;
  v23 = 0;
  v6 = [kCopy widgetPlistableRepresentation:&v23];
  v7 = v23;
  v8 = [v6 mutableCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isAppIntent"];
  }

  if (v8)
  {
    v22 = 0;
    v9 = MEMORY[0x19A8C4E60](v8, 0, &v22);
    v10 = v9;
    if (!v22)
    {
      v10 = v9;
      v18 = v10;
      goto LABEL_13;
    }

    v11 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [MEMORY[0x1E696AD98] numberWithInt:?];
    v14 = [v12 stringWithFormat:@"Could not OPACK encode intent: %@", v13];
    v25[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v16 = [v11 errorWithDomain:@"CHSErrorDomain" code:6 userInfo:v15];

    v17 = CHSLogChronoServices();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CHSIntentReference _encodeToOPACK:v16 error:v17];
    }

    v7 = v16;
  }

  else
  {
    v10 = 0;
  }

  v18 = 0;
  if (error && v7)
  {
    v19 = v7;
    v18 = 0;
    *error = v7;
  }

LABEL_13:

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)_decodeFromOPACK:(id)k error:(id *)error
{
  v16 = 0;
  v5 = OPACKDecodeData();
  v6 = [v5 objectForKeyedSubscript:@"isAppIntent"];
  bOOLValue = [v6 BOOLValue];

  if (v5)
  {
    v8 = 0x1E696E730;
    if (!bOOLValue)
    {
      v8 = 0x1E696E880;
    }

    v9 = *v8;
    v15 = 0;
    v10 = [objc_opt_class() makeFromWidgetPlistableRepresentation:v5 error:&v15];
    v11 = v15;
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CHSErrorDomain" code:6 userInfo:0];
    v11 = v12;
    v10 = 0;
    if (error && v12)
    {
      v13 = v12;
      v10 = 0;
      *error = v11;
    }
  }

  return v10;
}

- (void)_initWithGenericIntent:(void *)a1 schemaData:(uint8_t *)buf error:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_195EB2000, log, OS_LOG_TYPE_ERROR, "Error encoding intent backing store data: %{public}@", buf, 0xCu);
}

- (void)_initWithGenericIntent:(uint8_t *)buf schemaData:(os_log_t)log error:.cold.2(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543619;
  *(buf + 4) = a1;
  *(buf + 6) = 2113;
  *(buf + 14) = a2;
}

+ (void)_encodeToOPACK:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_195EB2000, a2, OS_LOG_TYPE_ERROR, "Error encoding intent: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end