@interface NUArraySchema
+ (id)deserializeFromDictionary:(id)dictionary error:(id *)error;
+ (id)deserializePatternFromDictionary:(id)dictionary error:(id *)error;
+ (id)supportedAttributes;
+ (int64_t)deserializeContentTypeFromDictionary:(id)dictionary error:(id *)error;
- (BOOL)isValid:(id *)valid;
- (BOOL)itemIsResolved:(id)resolved;
- (BOOL)resolveItem:(id)item resolver:(id)resolver error:(id *)error;
- (BOOL)serializeIntoDictionary:(id)dictionary error:(id *)error;
- (BOOL)validate:(id)validate error:(id *)error;
- (BOOL)validateArray:(id)array error:(id *)error;
- (BOOL)validateArrayContents:(id)contents error:(id *)error;
- (BOOL)validateArrayOrder:(id)order error:(id *)error;
- (BOOL)validateAttribute:(id)attribute value:(id)value error:(id *)error;
- (BOOL)validateAttributes:(id *)attributes;
- (BOOL)validateContents:(id *)contents;
- (BOOL)validateDefaultArray:(id)array error:(id *)error;
- (NSArray)defaultArray;
- (NUArraySchema)initWithIdentifier:(id)identifier attributes:(id)attributes;
- (NUArraySchema)initWithIdentifier:(id)identifier contentType:(int64_t)type contents:(id)contents pattern:(id)pattern attributes:(id)attributes;
- (id)copy:(id)copy;
- (id)copyArray:(id)array;
- (id)deserialize:(id)deserialize error:(id *)error;
- (id)deserializeArray:(id)array error:(id *)error;
- (id)serialize:(id)serialize error:(id *)error;
- (id)serializeArray:(id)array error:(id *)error;
@end

@implementation NUArraySchema

- (BOOL)resolveItem:(id)item resolver:(id)resolver error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  resolverCopy = resolver;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = NUAssertLogger_18635();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "[object isKindOfClass:NSArray.class]"];
      *buf = 138543362;
      v47 = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_18635();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        callStackSymbols = [v31 callStackSymbols];
        v34 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v30;
        v48 = 2114;
        v49 = v34;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema resolveItem:resolver:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1493, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "[object isKindOfClass:NSArray.class]");
  }

  v9 = +[NUSchemaRegistry sharedRegistry];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = itemCopy;
  v11 = [v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    errorCopy = error;
    v13 = *v42;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v41 + 1) + 8 * i);
        identifier = [v15 identifier];
        v17 = [v9 schemaWithIdentifier:identifier];

        v40 = 0;
        v18 = [v17 resolveItem:v15 resolver:resolverCopy error:&v40];
        v19 = v40;
        v20 = v19;
        if ((v18 & 1) == 0)
        {
          *errorCopy = [NUError errorWithCode:1 reason:@"Failed to resolve array contents" object:v15 underlyingError:v19];

          v21 = 0;
          goto LABEL_12;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v21 = 1;
LABEL_12:

  return v21;
}

- (BOOL)itemIsResolved:(id)resolved
{
  v40 = *MEMORY[0x1E69E9840];
  resolvedCopy = resolved;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = NUAssertLogger_18635();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "[object isKindOfClass:NSArray.class]"];
      *buf = 138543362;
      v37 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_18635();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        callStackSymbols = [v23 callStackSymbols];
        v26 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v22;
        v38 = 2114;
        v39 = v26;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema itemIsResolved:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1479, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "[object isKindOfClass:NSArray.class]");
  }

  v4 = +[NUSchemaRegistry sharedRegistry];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = resolvedCopy;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [v4 schemaWithIdentifier:identifier];

        LODWORD(v10) = [v12 itemIsResolved:v10];
        if (!v10)
        {
          v13 = 0;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_12:

  return v13;
}

- (BOOL)serializeIntoDictionary:(id)dictionary error:(id *)error
{
  v68 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!error)
  {
    v23 = NUAssertLogger_18635();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v65 = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_18635();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        callStackSymbols = [v31 callStackSymbols];
        v34 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v65 = v30;
        v66 = 2114;
        v67 = v34;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v65 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema serializeIntoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1327, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "error != NULL");
  }

  errorCopy = error;
  v57 = dictionaryCopy;
  [dictionaryCopy setObject:@"Array" forKeyedSubscript:@"isa"];
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSDictionary count](self->_aliasToIdentifier, "count")}];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v8 = self->_aliasToIdentifier;
  v9 = [(NSDictionary *)v8 countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v60;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v60 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v59 + 1) + 8 * i);
        v14 = [(NSDictionary *)self->_aliasToIdentifier objectForKeyedSubscript:v13];
        stringRepresentation = [v14 stringRepresentation];
        [v7 setObject:stringRepresentation forKeyedSubscript:v13];
      }

      v10 = [(NSDictionary *)v8 countByEnumeratingWithState:&v59 objects:v63 count:16];
    }

    while (v10);
  }

  [v57 setObject:v7 forKeyedSubscript:@"contents"];
  pattern = [(NUArraySchema *)self pattern];
  stringRepresentation2 = [pattern stringRepresentation];
  [v57 setObject:stringRepresentation2 forKeyedSubscript:@"pattern"];

  contentType = [(NUArraySchema *)self contentType];
  if (contentType > 2)
  {
    v20 = @"Composition";
    if (contentType != 4)
    {
      v20 = 0;
    }

    if (contentType == 3)
    {
      v19 = @"Source";
    }

    else
    {
      v19 = v20;
    }
  }

  else if (contentType == 1)
  {
    v19 = @"Adjustment";
  }

  else if (contentType == 2)
  {
    v19 = @"Array";
  }

  else
  {
    v19 = 0;
    if (!contentType)
    {
      v39 = NUAssertLogger_18635();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid content type"];
        *buf = 138543362;
        v65 = v40;
        _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v42 = NUAssertLogger_18635();
      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
      if (v41)
      {
        if (v43)
        {
          v46 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v47 = MEMORY[0x1E696AF00];
          v48 = v46;
          callStackSymbols3 = [v47 callStackSymbols];
          v50 = [callStackSymbols3 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v65 = v46;
          v66 = 2114;
          v67 = v50;
          _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v43)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v45 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v65 = v45;
        _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NUArraySchema serializeIntoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1361, @"Invalid content type", v51, v52, v53, v54, v55);
    }
  }

  [v57 setObject:v19 forKeyedSubscript:@"content-type"];
  v58.receiver = self;
  v58.super_class = NUArraySchema;
  v21 = [(NUSchema *)&v58 serializeIntoDictionary:v57 error:errorCopy];

  return v21;
}

- (id)deserializeArray:(id)array error:(id *)error
{
  v66 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v22 = NUAssertLogger_18635();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "array != nil"];
      *buf = 138543362;
      v63 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_18635();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        callStackSymbols = [v37 callStackSymbols];
        v40 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v36;
        v64 = 2114;
        v65 = v40;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema deserializeArray:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1295, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "array != nil");
  }

  if (!error)
  {
    v29 = NUAssertLogger_18635();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v63 = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_18635();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (v31)
    {
      if (v33)
      {
        v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v46 = MEMORY[0x1E696AF00];
        v47 = v45;
        callStackSymbols3 = [v46 callStackSymbols];
        v49 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v45;
        v64 = 2114;
        v65 = v49;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema deserializeArray:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1296, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "error != NULL");
  }

  v7 = arrayCopy;
  selfCopy = self;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v58;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v58 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v57 + 1) + 8 * i);
        v56 = 0;
        v15 = [NUSchema deserializeIdentifiableItem:v14 error:&v56];
        v16 = v56;
        if (!v15)
        {
          *error = [NUError errorWithCode:1 reason:@"Failed to deserialize item" object:v14 underlyingError:v16];

          v17 = 0;
          goto LABEL_15;
        }

        [v8 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v57 objects:v61 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v55 = 0;
  if ([(NUArraySchema *)selfCopy validateArrayOrder:v8 error:&v55])
  {
    v17 = v8;
  }

  else
  {
    v18 = v55;
    v19 = [NUError errorWithCode:2 reason:@"Invalid array order" object:v9 underlyingError:v18];
    v20 = v19;

    v17 = 0;
    *error = v19;
  }

LABEL_15:

  return v17;
}

- (id)serializeArray:(id)array error:(id *)error
{
  v66 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v21 = NUAssertLogger_18635();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "array != nil"];
      *buf = 138543362;
      v63 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_18635();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols = [v36 callStackSymbols];
        v39 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v35;
        v64 = 2114;
        v65 = v39;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema serializeArray:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1264, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "array != nil");
  }

  if (!error)
  {
    v28 = NUAssertLogger_18635();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v63 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_18635();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        callStackSymbols3 = [v45 callStackSymbols];
        v48 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v44;
        v64 = 2114;
        v65 = v48;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema serializeArray:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1265, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "error != NULL");
  }

  v7 = arrayCopy;
  v60 = 0;
  v8 = [(NUArraySchema *)self validateArrayOrder:arrayCopy error:&v60];
  v9 = v60;
  if (v8)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v54 = v7;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v12)
    {
      v13 = v12;
      errorCopy = error;
      v14 = *v57;
      while (2)
      {
        v15 = 0;
        v16 = v9;
        do
        {
          if (*v57 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v56 + 1) + 8 * v15);
          v55 = 0;
          v18 = [NUSchema serializeIdentifiableItem:v17 error:&v55];
          v9 = v55;

          if (!v18)
          {
            *errorCopy = [NUError errorWithCode:1 reason:@"Failed to serialize item" object:v17 underlyingError:v9];

            v19 = 0;
            goto LABEL_15;
          }

          [v10 addObject:v18];

          ++v15;
          v16 = v9;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v56 objects:v61 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v19 = v10;
LABEL_15:

    v7 = v54;
  }

  else
  {
    [NUError errorWithCode:2 reason:@"Invalid array order" object:v7 underlyingError:v9];
    *error = v19 = 0;
  }

  return v19;
}

- (id)deserialize:(id)deserialize error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  deserializeCopy = deserialize;
  if (!deserializeCopy)
  {
    v10 = NUAssertLogger_18635();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v43 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_18635();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v24;
        v44 = 2114;
        v45 = v28;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema deserialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1250, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "object != nil");
  }

  if (!error)
  {
    v17 = NUAssertLogger_18635();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v43 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_18635();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v21)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        callStackSymbols3 = [v34 callStackSymbols];
        v37 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v33;
        v44 = 2114;
        v45 = v37;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema deserialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1251, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "error != NULL");
  }

  v7 = deserializeCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(NUArraySchema *)self deserializeArray:v7 error:error];
  }

  else
  {
    [NUError mismatchError:@"Not an array" object:v7];
    *error = v8 = 0;
  }

  return v8;
}

- (id)serialize:(id)serialize error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  serializeCopy = serialize;
  if (!serializeCopy)
  {
    v10 = NUAssertLogger_18635();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v43 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_18635();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v24;
        v44 = 2114;
        v45 = v28;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema serialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1236, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "object != nil");
  }

  if (!error)
  {
    v17 = NUAssertLogger_18635();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v43 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_18635();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v21)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        callStackSymbols3 = [v34 callStackSymbols];
        v37 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v33;
        v44 = 2114;
        v45 = v37;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema serialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1237, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "error != NULL");
  }

  v7 = serializeCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(NUArraySchema *)self serializeArray:v7 error:error];
  }

  else
  {
    [NUError mismatchError:@"Not an array" object:v7];
    *error = v8 = 0;
  }

  return v8;
}

- (id)copyArray:(id)array
{
  v43 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v18 = NUAssertLogger_18635();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "array != nil"];
      *buf = 138543362;
      v40 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_18635();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v40 = v25;
        v41 = 2114;
        v42 = v29;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema copyArray:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1208, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "array != nil");
  }

  v4 = arrayCopy;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
LABEL_4:
    v10 = 0;
    while (1)
    {
      if (*v35 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v34 + 1) + 8 * v10);
      if (([v11 conformsToProtocol:&unk_1F3F866A8] & 1) == 0)
      {
        break;
      }

      v12 = [NUSchema copyIdentifiableItem:v11];
      if (!v12)
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_557);
        }

        v15 = _NULogger;
        if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        *buf = 138412290;
        v40 = v11;
        v16 = "failure in [NUArraySchema copyArray]. could not copy sub object: %@";
LABEL_22:
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
LABEL_19:

        v14 = 0;
        goto LABEL_20;
      }

      v13 = v12;
      [v5 addObject:v12];

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v8)
        {
          goto LABEL_4;
        }

        goto LABEL_11;
      }
    }

    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_557);
    }

    v15 = _NULogger;
    if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 138412290;
    v40 = v11;
    v16 = "failure in [NUArraySchema copyArray]. object does not conform to NUIdentifiable: %@";
    goto LABEL_22;
  }

LABEL_11:

  v14 = v5;
LABEL_20:

  return v14;
}

- (id)copy:(id)copy
{
  v29 = *MEMORY[0x1E69E9840];
  copyCopy = copy;
  if (!copyCopy)
  {
    v9 = NUAssertLogger_18635();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v26 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_18635();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        callStackSymbols = [v17 callStackSymbols];
        v20 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v16;
        v27 = 2114;
        v28 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema copy:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1195, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "object != nil");
  }

  v5 = copyCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NUArraySchema *)self copyArray:v5];
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_557);
    }

    v7 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "failure in [NUArraySchema copy]. object is not of type NSArray: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (NSArray)defaultArray
{
  v18 = *MEMORY[0x1E69E9840];
  shortestMatch = [(NSDictionary *)self->super.super._attributes objectForKeyedSubscript:@"default"];
  if (!shortestMatch)
  {
    pattern = [(NUArraySchema *)self pattern];
    shortestMatch = [pattern shortestMatch];
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(shortestMatch, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = shortestMatch;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSDictionary *)self->_aliasToIdentifier objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i), v13];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)validateArrayContents:(id)contents error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  contentsCopy = contents;
  v7 = [contentsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(contentsCopy);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        contentType = [(NUArraySchema *)self contentType];
        v18 = 0;
        v13 = [NUSchema validateIdentifiable:v11 type:contentType error:&v18];
        v14 = v18;
        v15 = v14;
        if (!v13)
        {
          *error = [NUError errorWithCode:2 reason:@"Not a valid item" object:v11 underlyingError:v14];

          v16 = 0;
          goto LABEL_11;
        }
      }

      v8 = [contentsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_11:

  return v16;
}

- (BOOL)validateArrayOrder:(id)order error:(id *)error
{
  v68 = *MEMORY[0x1E69E9840];
  orderCopy = order;
  if (!orderCopy)
  {
    v25 = NUAssertLogger_18635();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "array != nil"];
      *buf = 138543362;
      v65 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_18635();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        callStackSymbols = [v40 callStackSymbols];
        v43 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v65 = v39;
        v66 = 2114;
        v67 = v43;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v65 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema validateArrayOrder:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1119, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "array != nil");
  }

  if (!error)
  {
    v32 = NUAssertLogger_18635();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v65 = v33;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v35 = NUAssertLogger_18635();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (v34)
    {
      if (v36)
      {
        v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v49 = MEMORY[0x1E696AF00];
        v50 = v48;
        callStackSymbols3 = [v49 callStackSymbols];
        v52 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v65 = v48;
        v66 = 2114;
        v67 = v52;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v65 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema validateArrayOrder:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1120, @"Invalid parameter not satisfying: %s", v53, v54, v55, v56, "error != NULL");
  }

  v7 = orderCopy;
  errorCopy = error;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(orderCopy, "count")}];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v60;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v60 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v59 + 1) + 8 * v13);
      v58 = 0;
      v15 = [NUSchema validateIdentifiable:v14 error:&v58];
      v16 = v58;
      if (!v15)
      {
        break;
      }

      v17 = v14;
      identifierToAlias = self->_identifierToAlias;
      identifier = [v17 identifier];
      v20 = [(NSDictionary *)identifierToAlias objectForKeyedSubscript:identifier];

      if (!v20)
      {
        *errorCopy = [NUError unknownError:@"Unknown item identifier (no mapping for the given identifier)" object:v17];

        goto LABEL_16;
      }

      [v8 addObject:v20];

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v59 objects:v63 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    *errorCopy = [NUError errorWithCode:2 reason:@"Not a valid item" object:v14 underlyingError:v16];
LABEL_16:

    v23 = 0;
    goto LABEL_18;
  }

LABEL_12:

  pattern = [(NUArraySchema *)self pattern];
  v22 = [pattern match:v8];

  if (v22)
  {
    v23 = 1;
  }

  else
  {
    [NUError mismatchError:@"Pattern does not match" object:v8];
    *errorCopy = v23 = 0;
  }

LABEL_18:

  return v23;
}

- (BOOL)validateArray:(id)array error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v15 = NUAssertLogger_18635();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "array != nil"];
      *buf = 138543362;
      v50 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_18635();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        callStackSymbols = [v30 callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v29;
        v51 = 2114;
        v52 = v33;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema validateArray:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1098, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "array != nil");
  }

  if (!error)
  {
    v22 = NUAssertLogger_18635();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v50 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_18635();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (v24)
    {
      if (v26)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        callStackSymbols3 = [v39 callStackSymbols];
        v42 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v38;
        v51 = 2114;
        v52 = v42;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema validateArray:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1099, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "error != NULL");
  }

  v7 = arrayCopy;
  v48 = 0;
  v8 = [(NUArraySchema *)self validateArrayOrder:arrayCopy error:&v48];
  v9 = v48;
  if (!v8)
  {
    v13 = [NUError errorWithCode:2 reason:@"Invalid array order" object:v7 underlyingError:v9];
    v11 = v9;
LABEL_8:
    v12 = 0;
    *error = v13;
    goto LABEL_9;
  }

  v47 = 0;
  v10 = [(NUArraySchema *)self validateArrayContents:v7 error:&v47];
  v11 = v47;

  if (!v10)
  {
    v13 = [NUError errorWithCode:2 reason:@"Invalid array contents" object:v7 underlyingError:v11];
    goto LABEL_8;
  }

  v12 = 1;
LABEL_9:

  return v12;
}

- (BOOL)validate:(id)validate error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  validateCopy = validate;
  if (!validateCopy)
  {
    v10 = NUAssertLogger_18635();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v43 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_18635();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v24;
        v44 = 2114;
        v45 = v28;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema validate:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1084, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "object != nil");
  }

  if (!error)
  {
    v17 = NUAssertLogger_18635();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v43 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_18635();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v21)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        callStackSymbols3 = [v34 callStackSymbols];
        v37 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v33;
        v44 = 2114;
        v45 = v37;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema validate:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1085, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "error != NULL");
  }

  v7 = validateCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(NUArraySchema *)self validateArray:v7 error:error];
  }

  else
  {
    [NUError mismatchError:@"Not an array" object:v7];
    *error = v8 = 0;
  }

  return v8;
}

- (BOOL)validateContents:(id *)contents
{
  v64 = *MEMORY[0x1E69E9840];
  if (!contents)
  {
    v29 = NUAssertLogger_18635();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v61 = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_18635();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        callStackSymbols = [v37 callStackSymbols];
        v40 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v61 = v36;
        v62 = 2114;
        v63 = v40;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v61 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema validateContents:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1038, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "error != NULL");
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v5 = self->_aliasToIdentifier;
  v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v54;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v54 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSDictionary *)self->_aliasToIdentifier objectForKeyedSubscript:*(*(&v53 + 1) + 8 * i)];
        v11 = [NUSchema validateSchemaIdentifier:v10 type:[(NUArraySchema *)self contentType] error:contents];

        if (!v11)
        {
LABEL_30:
          v27 = 0;
          goto LABEL_31;
        }
      }

      v7 = [(NSDictionary *)v5 countByEnumeratingWithState:&v53 objects:v59 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  pattern = [(NUArraySchema *)self pattern];
  tokens = [pattern tokens];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v5 = tokens;
  v14 = [(NSDictionary *)v5 countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v50;
    while (2)
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v50 != v16)
        {
          objc_enumerationMutation(v5);
        }

        v18 = *(*(&v49 + 1) + 8 * j);
        v19 = [(NSDictionary *)self->_aliasToIdentifier objectForKeyedSubscript:v18];

        if (!v19)
        {
          *contents = [NUError unknownError:@"Unknown alias" object:v18];

          goto LABEL_30;
        }
      }

      v15 = [(NSDictionary *)v5 countByEnumeratingWithState:&v49 objects:v58 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v20 = self->_aliasToIdentifier;
  v21 = [(NSDictionary *)v20 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v46;
    while (2)
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v46 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v45 + 1) + 8 * k);
        if (([(NSDictionary *)v5 containsObject:v25]& 1) == 0)
        {
          *contents = [NUError missingError:@"Alias not in pattern" object:v25];

          goto LABEL_30;
        }
      }

      v22 = [(NSDictionary *)v20 countByEnumeratingWithState:&v45 objects:v57 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v26 = [(NSDictionary *)self->_aliasToIdentifier count];
  if (v26 == [(NSDictionary *)self->_identifierToAlias count])
  {
    v27 = 1;
  }

  else
  {
    [NUError invalidError:@"Duplicate identifiers" object:self->_aliasToIdentifier];
    *contents = v27 = 0;
  }

LABEL_31:

  return v27;
}

- (BOOL)validateDefaultArray:(id)array error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v12 = NUAssertLogger_18635();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v45 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_18635();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v26;
        v46 = 2114;
        v47 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema validateDefaultArray:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1018, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "object != nil");
  }

  if (!error)
  {
    v19 = NUAssertLogger_18635();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v45 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_18635();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols3 = [v36 callStackSymbols];
        v39 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v35;
        v46 = 2114;
        v47 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema validateDefaultArray:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1019, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v7 = arrayCopy;
  if ([NUModel validateStringArray:arrayCopy error:error])
  {
    pattern = [(NUArraySchema *)self pattern];
    v9 = [pattern match:v7];

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      [NUError invalidError:@"Invalid default array" object:v7];
      *error = v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)validateAttribute:(id)attribute value:(id)value error:(id *)error
{
  attributeCopy = attribute;
  valueCopy = value;
  if ([attributeCopy isEqualToString:@"default"])
  {
    v10 = [(NUArraySchema *)self validateDefaultArray:valueCopy error:error];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NUArraySchema;
    v10 = [(NUModel *)&v13 validateAttribute:attributeCopy value:valueCopy error:error];
  }

  v11 = v10;

  return v11;
}

- (BOOL)validateAttributes:(id *)attributes
{
  v31 = *MEMORY[0x1E69E9840];
  if (!attributes)
  {
    v9 = NUAssertLogger_18635();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v28 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_18635();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        callStackSymbols = [v17 callStackSymbols];
        v20 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v16;
        v29 = 2114;
        v30 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema validateAttributes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 987, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "error != NULL");
  }

  v26.receiver = self;
  v26.super_class = NUArraySchema;
  LODWORD(v5) = [(NUModel *)&v26 validateAttributes:?];
  if (v5)
  {
    pattern = [(NUArraySchema *)self pattern];
    if ([pattern isFixedOrder])
    {

LABEL_6:
      LOBYTE(v5) = 1;
      return v5;
    }

    v7 = [(NSDictionary *)self->super.super._attributes objectForKeyedSubscript:@"default"];

    if (v7)
    {
      goto LABEL_6;
    }

    v8 = [NUError missingError:@"Missing default array" object:self->super.super._attributes];
    v5 = v8;
    LOBYTE(v5) = 0;
    *attributes = v8;
  }

  return v5;
}

- (BOOL)isValid:(id *)valid
{
  v34 = *MEMORY[0x1E69E9840];
  if (!valid)
  {
    v12 = NUAssertLogger_18635();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v31 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_18635();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v19;
        v32 = 2114;
        v33 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema isValid:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 961, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "error != NULL");
  }

  v29 = 0;
  v5 = [(NUArraySchema *)self validateAttributes:&v29];
  v6 = v29;
  if (!v5)
  {
    v10 = [NUError errorWithCode:2 reason:@"Invalid attributes" object:self underlyingError:v6];
    v8 = v6;
LABEL_7:
    v9 = 0;
    *valid = v10;
    goto LABEL_8;
  }

  v28 = 0;
  v7 = [(NUArraySchema *)self validateContents:&v28];
  v8 = v28;

  if (!v7)
  {
    v10 = [NUError errorWithCode:2 reason:@"Invalid contents" object:self underlyingError:v8];
    goto LABEL_7;
  }

  v9 = 1;
LABEL_8:

  return v9;
}

- (NUArraySchema)initWithIdentifier:(id)identifier contentType:(int64_t)type contents:(id)contents pattern:(id)pattern attributes:(id)attributes
{
  v92 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  contentsCopy = contents;
  patternCopy = pattern;
  attributesCopy = attributes;
  if (!contentsCopy)
  {
    v32 = NUAssertLogger_18635();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "contents != nil"];
      *buf = 138543362;
      v89 = v33;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v35 = NUAssertLogger_18635();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v36)
      {
        v53 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v54 = MEMORY[0x1E696AF00];
        v55 = v53;
        callStackSymbols = [v54 callStackSymbols];
        v57 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v89 = v53;
        v90 = 2114;
        v91 = v57;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v89 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema initWithIdentifier:contentType:contents:pattern:attributes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 936, @"Invalid parameter not satisfying: %s", v58, v59, v60, v61, "contents != nil");
  }

  if (!patternCopy)
  {
    v39 = NUAssertLogger_18635();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pattern != nil"];
      *buf = 138543362;
      v89 = v40;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v42 = NUAssertLogger_18635();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    if (v41)
    {
      if (v43)
      {
        v62 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v63 = MEMORY[0x1E696AF00];
        v64 = v62;
        callStackSymbols3 = [v63 callStackSymbols];
        v66 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v89 = v62;
        v90 = 2114;
        v91 = v66;
        _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v43)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v45 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v89 = v45;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema initWithIdentifier:contentType:contents:pattern:attributes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 937, @"Invalid parameter not satisfying: %s", v67, v68, v69, v70, "pattern != nil");
  }

  if (!type)
  {
    v46 = NUAssertLogger_18635();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "contentType != NUSchemaTypeUnknown"];
      *buf = 138543362;
      v89 = v47;
      _os_log_error_impl(&dword_1C0184000, v46, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v49 = NUAssertLogger_18635();
    v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
    if (v48)
    {
      if (v50)
      {
        v71 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v72 = MEMORY[0x1E696AF00];
        v73 = v71;
        callStackSymbols5 = [v72 callStackSymbols];
        v75 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v89 = v71;
        v90 = 2114;
        v91 = v75;
        _os_log_error_impl(&dword_1C0184000, v49, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v50)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v52 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v89 = v52;
      _os_log_error_impl(&dword_1C0184000, v49, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUArraySchema initWithIdentifier:contentType:contents:pattern:attributes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 938, @"Invalid parameter not satisfying: %s", v76, v77, v78, v79, "contentType != NUSchemaTypeUnknown");
  }

  v16 = attributesCopy;
  typeCopy = type;
  v81 = identifierCopy;
  v86.receiver = self;
  v86.super_class = NUArraySchema;
  v17 = [(NUSchema *)&v86 initWithIdentifier:identifierCopy attributes:attributesCopy];
  v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(contentsCopy, "count")}];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v19 = contentsCopy;
  v20 = [v19 countByEnumeratingWithState:&v82 objects:v87 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v83;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v83 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v82 + 1) + 8 * i);
        v25 = [v19 objectForKeyedSubscript:v24];
        [v18 setObject:v24 forKeyedSubscript:v25];
      }

      v21 = [v19 countByEnumeratingWithState:&v82 objects:v87 count:16];
    }

    while (v21);
  }

  v26 = [v19 copy];
  aliasToIdentifier = v17->_aliasToIdentifier;
  v17->_aliasToIdentifier = v26;

  v28 = [v18 copy];
  identifierToAlias = v17->_identifierToAlias;
  v17->_identifierToAlias = v28;

  v17->_contentType = typeCopy;
  pattern = v17->_pattern;
  v17->_pattern = patternCopy;

  return v17;
}

- (NUArraySchema)initWithIdentifier:(id)identifier attributes:(id)attributes
{
  v38 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  attributesCopy = attributes;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_18606);
  }

  v8 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = v8;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    v14 = [v9 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v12, v13];
    *buf = 138543362;
    v35 = v14;
    _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v15 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v15 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_18606);
      }

      goto LABEL_8;
    }

    if (v15 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_18606);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v16 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v17 = MEMORY[0x1E696AF00];
      v18 = v16;
      callStackSymbols = [v17 callStackSymbols];
      v20 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v20;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v21 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = MEMORY[0x1E696AF00];
    v24 = specific;
    v25 = v21;
    callStackSymbols2 = [v23 callStackSymbols];
    v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v35 = specific;
    v36 = 2114;
    v37 = v27;
    _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUArraySchema initWithIdentifier:attributes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 931, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

+ (id)deserializePatternFromDictionary:(id)dictionary error:(id *)error
{
  v51 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    v13 = NUAssertLogger_18635();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v48 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_18635();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        callStackSymbols = [v28 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = v27;
        v49 = 2114;
        v50 = v31;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUArraySchema deserializePatternFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1451, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "dictionary != nil");
  }

  if (!error)
  {
    v20 = NUAssertLogger_18635();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v48 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_18635();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        callStackSymbols3 = [v37 callStackSymbols];
        v40 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = v36;
        v49 = 2114;
        v50 = v40;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUArraySchema deserializePatternFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1452, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "error != NULL");
  }

  v6 = dictionaryCopy;
  v46 = 0;
  v7 = [(NUModel *)NUSchema deserializeStringFromDictionary:dictionaryCopy key:@"pattern" error:&v46];
  v8 = v46;
  if (v7)
  {
    v45 = 0;
    v9 = [NUPattern patternWithString:v7 error:&v45];
    v10 = v45;

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      *error = [NUError errorWithCode:2 reason:@"Failed to parse pattern" object:v7 underlyingError:v10];
    }
  }

  else
  {
    [NUError errorWithCode:2 reason:@"Invalid pattern" object:v6 underlyingError:v8];
    *error = v9 = 0;
    v10 = v8;
  }

  return v9;
}

+ (int64_t)deserializeContentTypeFromDictionary:(id)dictionary error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    v12 = NUAssertLogger_18635();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v46 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_18635();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v26;
        v47 = 2114;
        v48 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUArraySchema deserializeContentTypeFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1415, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "dictionary != nil");
  }

  if (!error)
  {
    v19 = NUAssertLogger_18635();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v46 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_18635();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols3 = [v36 callStackSymbols];
        v39 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v35;
        v47 = 2114;
        v48 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUArraySchema deserializeContentTypeFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1416, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v6 = dictionaryCopy;
  v44 = 0;
  v7 = [(NUModel *)NUSchema deserializeStringFromDictionary:dictionaryCopy key:@"content-type" error:&v44];
  v8 = v44;
  if (!v7)
  {
    v10 = [NUError errorWithCode:2 reason:@"Invalid content type" object:v6 underlyingError:v8];
LABEL_7:
    v9 = 0;
    *error = v10;
    goto LABEL_14;
  }

  if (([v7 isEqualToString:@"Adjustment"] & 1) == 0)
  {
    if ([v7 isEqualToString:@"Source"])
    {
      v9 = 3;
      goto LABEL_14;
    }

    if ([v7 isEqualToString:@"Array"])
    {
      v9 = 2;
      goto LABEL_14;
    }

    if ([v7 isEqualToString:@"Composition"])
    {
      v9 = 4;
      goto LABEL_14;
    }

    v10 = [NUError unknownError:@"Unknown content type" object:v7];
    goto LABEL_7;
  }

  v9 = 1;
LABEL_14:

  return v9;
}

+ (id)deserializeFromDictionary:(id)dictionary error:(id *)error
{
  v58 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    v18 = NUAssertLogger_18635();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v55 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_18635();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        callStackSymbols = [v33 callStackSymbols];
        v36 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v55 = v32;
        v56 = 2114;
        v57 = v36;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v55 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUArraySchema deserializeFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1371, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "dictionary != nil");
  }

  if (!error)
  {
    v25 = NUAssertLogger_18635();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v55 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_18635();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v29)
      {
        v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v42 = MEMORY[0x1E696AF00];
        v43 = v41;
        callStackSymbols3 = [v42 callStackSymbols];
        v45 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v55 = v41;
        v56 = 2114;
        v57 = v45;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v55 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUArraySchema deserializeFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1372, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "error != NULL");
  }

  v7 = dictionaryCopy;
  v53 = 0;
  v8 = [self deserializeIdentifierFromDictionary:dictionaryCopy error:&v53];
  v9 = v53;
  if (v8)
  {
    v52 = 0;
    v10 = [self deserializeContentTypeFromDictionary:v7 error:&v52];
    v11 = v52;

    if (v10)
    {
      v51 = 0;
      v12 = [self deserializeContentsFromDictionary:v7 error:&v51];
      v13 = v51;

      if (v12)
      {
        v50 = 0;
        v14 = [self deserializePatternFromDictionary:v7 error:&v50];
        v9 = v50;

        if (v14)
        {
          v15 = [self alloc];
          v16 = [v15 initWithIdentifier:v8 contentType:v10 contents:v12 pattern:v14 attributes:MEMORY[0x1E695E0F8]];
        }

        else
        {
          [NUError errorWithCode:1 reason:@"Failed to deserialize array pattern" object:v7 underlyingError:v9];
          *error = v16 = 0;
        }
      }

      else
      {
        [NUError errorWithCode:1 reason:@"Failed to deserialize array contents" object:v7 underlyingError:v13];
        *error = v16 = 0;
        v9 = v13;
      }
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to deserialize content type" object:v7 underlyingError:v11];
      *error = v16 = 0;
      v9 = v11;
    }
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to deserialize array identifier" object:v7 underlyingError:v9];
    *error = v16 = 0;
  }

  return v16;
}

+ (id)supportedAttributes
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___NUArraySchema;
  v2 = objc_msgSendSuper2(&v6, sel_supportedAttributes);
  v7[0] = @"default";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  return v4;
}

@end