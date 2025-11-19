@interface NUCompositionSchema
+ (id)deserializeFromDictionary:(id)a3 error:(id *)a4;
+ (id)supportedAttributes;
- (BOOL)deserializeContents:(id)a3 fromDictionary:(id)a4 error:(id *)a5;
- (BOOL)isValid:(id *)a3;
- (BOOL)itemIsResolved:(id)a3;
- (BOOL)resolveItem:(id)a3 resolver:(id)a4 error:(id *)a5;
- (BOOL)serializeContents:(id)a3 intoDictionary:(id)a4 error:(id *)a5;
- (BOOL)serializeIntoDictionary:(id)a3 error:(id *)a4;
- (BOOL)validate:(id)a3 error:(id *)a4;
- (BOOL)validateAttribute:(id)a3 value:(id)a4 error:(id *)a5;
- (BOOL)validateComposition:(id)a3 error:(id *)a4;
- (BOOL)validateContents:(id *)a3;
- (BOOL)validateContents:(id)a3 error:(id *)a4;
- (BOOL)validatePropertyArray:(id)a3 error:(id *)a4;
- (NUCompositionSchema)initWithIdentifier:(id)a3 attributes:(id)a4;
- (NUCompositionSchema)initWithIdentifier:(id)a3 contents:(id)a4 attributes:(id)a5;
- (id)copy:(id)a3;
- (id)copyComposition:(id)a3;
- (id)deserialize:(id)a3 error:(id *)a4;
- (id)deserializeComposition:(id)a3 error:(id *)a4;
- (id)modelForProperty:(id)a3;
- (id)serialize:(id)a3 error:(id *)a4;
- (id)serializeComposition:(id)a3 error:(id *)a4;
@end

@implementation NUCompositionSchema

- (BOOL)resolveItem:(id)a3 resolver:(id)a4 error:(id *)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v44 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v25 = NUAssertLogger_18635();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "[object isKindOfClass:NUComposition.class]"];
      *buf = 138543362;
      v52 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_18635();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        v35 = [v33 callStackSymbols];
        v36 = [v35 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v52 = v32;
        v53 = 2114;
        v54 = v36;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v52 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema resolveItem:resolver:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2391, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "[object isKindOfClass:NUComposition.class]");
  }

  v9 = v8;
  +[NUSchemaRegistry sharedRegistry];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v43 = v49 = 0u;
  obj = self->_contents;
  v10 = [(NSDictionary *)obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v10)
  {
    v11 = v10;
    v41 = a5;
    v12 = *v47;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v46 + 1) + 8 * i);
        v15 = [v9 objectForKeyedSubscript:v14];
        if (v15)
        {
          v16 = v15;
          v17 = self;
          v18 = [(NSDictionary *)self->_contents objectForKeyedSubscript:v14];
          v19 = [v43 schemaWithIdentifier:v18];
          v45 = 0;
          v20 = [v19 resolveItem:v16 resolver:v44 error:&v45];
          v21 = v45;
          v22 = v21;
          if ((v20 & 1) == 0)
          {
            *v41 = [NUError errorWithCode:1 reason:@"Failed to resolve composition contents" object:v16 underlyingError:v21];

            v23 = 0;
            goto LABEL_14;
          }

          self = v17;
        }
      }

      v11 = [(NSDictionary *)obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v23 = 1;
LABEL_14:

  return v23;
}

- (BOOL)itemIsResolved:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = NUAssertLogger_18635();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "[object isKindOfClass:NUComposition.class]"];
      *buf = 138543362;
      v41 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_18635();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        v27 = [v25 callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v41 = v24;
        v42 = 2114;
        v43 = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v41 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema itemIsResolved:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2371, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "[object isKindOfClass:NUComposition.class]");
  }

  v5 = v4;
  v34 = +[NUSchemaRegistry sharedRegistry];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_contents;
  v6 = [(NSDictionary *)obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        if (v11)
        {
          v12 = [(NSDictionary *)self->_contents objectForKeyedSubscript:v10];
          v13 = [v34 schemaWithIdentifier:v12];
          v14 = [v13 itemIsResolved:v11];

          if ((v14 & 1) == 0)
          {

            v15 = 0;
            goto LABEL_13;
          }
        }
      }

      v7 = [(NSDictionary *)obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_13:

  return v15;
}

- (BOOL)serializeIntoDictionary:(id)a3 error:(id *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    v19 = NUAssertLogger_18635();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v44 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_18635();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v26;
        v45 = 2114;
        v46 = v30;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema serializeIntoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2306, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "error != NULL");
  }

  v35 = a4;
  v36 = v6;
  [v6 setObject:@"Composition" forKeyedSubscript:@"isa"];
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSDictionary count](self->_contents, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = self->_contents;
  v9 = [(NSDictionary *)v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        v14 = [(NSDictionary *)self->_contents objectForKeyedSubscript:v13];
        v15 = [v14 stringRepresentation];
        [v7 setObject:v15 forKeyedSubscript:v13];
      }

      v10 = [(NSDictionary *)v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v10);
  }

  [v36 setObject:v7 forKeyedSubscript:@"contents"];
  v16 = [(NSDictionary *)self->super.super._attributes objectForKeyedSubscript:@"required"];
  [v36 setObject:v16 forKeyedSubscript:@"required"];

  v37.receiver = self;
  v37.super_class = NUCompositionSchema;
  v17 = [(NUSchema *)&v37 serializeIntoDictionary:v36 error:v35];

  return v17;
}

- (BOOL)deserializeContents:(id)a3 fromDictionary:(id)a4 error:(id *)a5
{
  v81 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v20 = NUAssertLogger_18635();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v78 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_18635();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v42 = MEMORY[0x1E696AF00];
        v43 = v41;
        v44 = [v42 callStackSymbols];
        v45 = [v44 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v78 = v41;
        v79 = 2114;
        v80 = v45;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema deserializeContents:fromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2280, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "composition != nil");
  }

  v9 = v8;
  if (!v8)
  {
    v27 = NUAssertLogger_18635();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v78 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_18635();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v51 = MEMORY[0x1E696AF00];
        v52 = v50;
        v53 = [v51 callStackSymbols];
        v54 = [v53 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v78 = v50;
        v79 = 2114;
        v80 = v54;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema deserializeContents:fromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2281, @"Invalid parameter not satisfying: %s", v55, v56, v57, v58, "dictionary != nil");
  }

  if (!a5)
  {
    v34 = NUAssertLogger_18635();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v78 = v35;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v37 = NUAssertLogger_18635();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (v36)
    {
      if (v38)
      {
        v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v60 = MEMORY[0x1E696AF00];
        v61 = v59;
        v62 = [v60 callStackSymbols];
        v63 = [v62 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v78 = v59;
        v79 = 2114;
        v80 = v63;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      v39 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [v39 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v78 = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema deserializeContents:fromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2282, @"Invalid parameter not satisfying: %s", v64, v65, v66, v67, "error != NULL");
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = self->_contents;
  v10 = [(NSDictionary *)obj countByEnumeratingWithState:&v72 objects:v76 count:16];
  if (v10)
  {
    v11 = v10;
    v68 = a5;
    v12 = *v73;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v73 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v72 + 1) + 8 * i);
        v15 = [(NSDictionary *)self->_contents objectForKeyedSubscript:v14];
        v16 = [v9 objectForKeyedSubscript:v14];
        if (v16)
        {
          v71 = 0;
          v17 = [NUSchema deserializeItem:v16 schemaIdentifier:v15 error:&v71];
          v18 = v71;
          if (!v17)
          {
            *v68 = [NUError errorWithCode:1 reason:@"Failed to deserialize content" object:v14 underlyingError:v18];

            goto LABEL_16;
          }

          [v7 setObject:v17 forKeyedSubscript:v14];
        }
      }

      v11 = [(NSDictionary *)obj countByEnumeratingWithState:&v72 objects:v76 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(v17) = 1;
LABEL_16:

  return v17;
}

- (BOOL)serializeContents:(id)a3 intoDictionary:(id)a4 error:(id *)a5
{
  v86 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v75 = v8;
  if (!v8)
  {
    v24 = NUAssertLogger_18635();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "contents != nil"];
      *buf = 138543362;
      v83 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_18635();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v46 = MEMORY[0x1E696AF00];
        v47 = v45;
        v48 = [v46 callStackSymbols];
        v49 = [v48 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v45;
        v84 = 2114;
        v85 = v49;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema serializeContents:intoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2248, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "contents != nil");
  }

  v10 = v9;
  if (!v9)
  {
    v31 = NUAssertLogger_18635();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v83 = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_18635();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (v33)
    {
      if (v35)
      {
        v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        v57 = [v55 callStackSymbols];
        v58 = [v57 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v54;
        v84 = 2114;
        v85 = v58;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      v36 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema serializeContents:intoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2249, @"Invalid parameter not satisfying: %s", v59, v60, v61, v62, "dictionary != nil");
  }

  if (!a5)
  {
    v38 = NUAssertLogger_18635();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v83 = v39;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v41 = NUAssertLogger_18635();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
    if (v40)
    {
      if (v42)
      {
        v63 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v64 = MEMORY[0x1E696AF00];
        v65 = v63;
        v66 = [v64 callStackSymbols];
        v67 = [v66 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v63;
        v84 = 2114;
        v85 = v67;
        _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v42)
    {
      v43 = [MEMORY[0x1E696AF00] callStackSymbols];
      v44 = [v43 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v44;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema serializeContents:intoDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2250, @"Invalid parameter not satisfying: %s", v68, v69, v70, v71, "error != NULL");
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = self->_contents;
  v11 = [(NSDictionary *)obj countByEnumeratingWithState:&v77 objects:v81 count:16];
  if (!v11)
  {
    v22 = 1;
    goto LABEL_21;
  }

  v12 = v11;
  v72 = a5;
  v74 = v10;
  v13 = *v78;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v78 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v77 + 1) + 8 * i);
      v16 = [(NSDictionary *)self->_contents objectForKeyedSubscript:v15];
      v17 = [v75 objectForKeyedSubscript:v15];
      if (v17)
      {
        v76 = 0;
        v18 = [NUSchema serializeItem:v17 schemaIdentifier:v16 error:&v76];
        v19 = v76;
        if (v18)
        {
          [v74 setObject:v18 forKeyedSubscript:v15];

          goto LABEL_13;
        }

        *v72 = [NUError errorWithCode:1 reason:@"Failed to serialize content" object:v15 underlyingError:v19];

LABEL_19:
        v22 = 0;
        goto LABEL_20;
      }

      v20 = [(NUCompositionSchema *)self requiredContents];
      v21 = [v20 containsObject:v15];

      if (v21)
      {
        [NUError missingError:@"Missing required content" object:v15];
        *v72 = v17 = 0;
        goto LABEL_19;
      }

LABEL_13:
    }

    v12 = [(NSDictionary *)obj countByEnumeratingWithState:&v77 objects:v81 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

  v22 = 1;
LABEL_20:
  v10 = v74;
LABEL_21:

  return v22;
}

- (id)deserializeComposition:(id)a3 error:(id *)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v15 = NUAssertLogger_18635();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
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
        v32 = [v30 callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v29;
        v51 = 2114;
        v52 = v33;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema deserializeComposition:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2217, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "dictionary != nil");
  }

  if (!a4)
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
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v38;
        v51 = 2114;
        v52 = v42;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema deserializeComposition:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2218, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "error != NULL");
  }

  v7 = v6;
  v48 = 0;
  v8 = [(NUSchema *)self deserializeIdentifierFromDictionary:v6 error:&v48];
  v9 = v48;
  if (v8)
  {
    v10 = [[NUGenericComposition alloc] initWithCompositionSchema:self];
    [(NUComposition *)v10 setMediaType:[NUSchema deserializeMediaTypeFromDictionary:v7]];
    v47 = 0;
    v11 = [(NUCompositionSchema *)self deserializeContents:v10 fromDictionary:v7 error:&v47];
    v12 = v47;

    if (v11)
    {
      v13 = v10;
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to deserialize contents" object:v7 underlyingError:v12];
      *a4 = v13 = 0;
    }
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to deserialize identifier" object:v7 underlyingError:v9];
    *a4 = v13 = 0;
    v12 = v9;
  }

  return v13;
}

- (id)serializeComposition:(id)a3 error:(id *)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v24 = NUAssertLogger_18635();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v60 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_18635();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v60 = v38;
        v61 = 2114;
        v62 = v42;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v60 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema serializeComposition:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2188, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "composition != nil");
  }

  if (!a4)
  {
    v31 = NUAssertLogger_18635();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v60 = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_18635();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (v33)
    {
      if (v35)
      {
        v47 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v48 = MEMORY[0x1E696AF00];
        v49 = v47;
        v50 = [v48 callStackSymbols];
        v51 = [v50 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v60 = v47;
        v61 = 2114;
        v62 = v51;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      v36 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v60 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema serializeComposition:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2189, @"Invalid parameter not satisfying: %s", v52, v53, v54, v55, "error != NULL");
  }

  v7 = v6;
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSDictionary count](self->_contents, "count") + 1}];
  v9 = [v7 identifier];
  v58 = 0;
  v10 = [(NUSchema *)self serializeIdentifier:v9 intoDictionary:v8 error:&v58];
  v11 = v58;

  if (v10)
  {
    v57 = 0;
    v12 = +[NUSchema serializeMediaType:intoDictionary:error:](NUSchema, "serializeMediaType:intoDictionary:error:", [v7 mediaType], v8, &v57);
    v13 = v57;

    if (v12)
    {
      v14 = [v7 contents];
      v56 = 0;
      v15 = [(NUCompositionSchema *)self serializeContents:v14 intoDictionary:v8 error:&v56];
      v16 = v56;

      if (v15)
      {
        v17 = v8;
      }

      else
      {
        v21 = [v7 contents];
        *a4 = [NUError errorWithCode:1 reason:@"Failed to serialize contents" object:v21 underlyingError:v16];

        v17 = 0;
      }

      v13 = v16;
    }

    else
    {
      v19 = [v7 mediaType];
      if (v19 > 3)
      {
        v20 = @"Invalid";
      }

      else
      {
        v20 = off_1E81098D0[v19];
      }

      v22 = v20;
      *a4 = [NUError errorWithCode:1 reason:@"Failed to serialize mediaType" object:v22 underlyingError:v13];

      v17 = 0;
    }
  }

  else
  {
    v18 = [v7 identifier];
    *a4 = [NUError errorWithCode:1 reason:@"Failed to serialize identifier" object:v18 underlyingError:v11];

    v17 = 0;
    v13 = v11;
  }

  return v17;
}

- (id)deserialize:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v27 = [v25 callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v24;
        v44 = 2114;
        v45 = v28;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema deserialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2174, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "object != nil");
  }

  if (!a4)
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
        v36 = [v34 callStackSymbols];
        v37 = [v36 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v33;
        v44 = 2114;
        v45 = v37;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema deserialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2175, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "error != NULL");
  }

  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(NUCompositionSchema *)self deserializeComposition:v7 error:a4];
  }

  else
  {
    [NUError mismatchError:@"Not a composition" object:v7];
    *a4 = v8 = 0;
  }

  return v8;
}

- (id)serialize:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v27 = [v25 callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v24;
        v44 = 2114;
        v45 = v28;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema serialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2160, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "object != nil");
  }

  if (!a4)
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
        v36 = [v34 callStackSymbols];
        v37 = [v36 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v33;
        v44 = 2114;
        v45 = v37;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema serialize:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2161, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "error != NULL");
  }

  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(NUCompositionSchema *)self serializeComposition:v7 error:a4];
  }

  else
  {
    [NUError mismatchError:@"Not a composition" object:v7];
    *a4 = v8 = 0;
  }

  return v8;
}

- (id)modelForProperty:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v12 = NUAssertLogger_18635();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v29 = v13;
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
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v19;
        v30 = 2114;
        v31 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema modelForProperty:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2146, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "name != nil");
  }

  v5 = v4;
  v6 = [(NSDictionary *)self->_contents objectForKeyedSubscript:v4];
  if (v6)
  {
    v7 = +[NUSchemaRegistry sharedRegistry];
    v8 = [v7 schemaWithIdentifier:v6];
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_557);
    }

    v9 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      contents = self->_contents;
      *buf = 138412546;
      v29 = v5;
      v30 = 2112;
      v31 = contents;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "failure in [NUCompositionSchema modelForProperty]. name %@ does not exist in _contents: %@", buf, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

- (id)copyComposition:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v28 = NUAssertLogger_18635();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v51 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_18635();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v32)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v35;
        v52 = 2114;
        v53 = v39;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema copyComposition:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2106, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "composition != nil");
  }

  v5 = v4;
  v6 = [v4 identifier];
  v7 = [(NUSchema *)self identifier];
  v8 = [v6 isEqualToIdentifier:v7];

  if (v8)
  {
    v9 = [[NUGenericComposition alloc] initWithCompositionSchema:self];
    -[NUComposition setMediaType:](v9, "setMediaType:", [v5 mediaType]);
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = self->_contents;
    v10 = [(NSDictionary *)obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v46;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v46 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v45 + 1) + 8 * i);
          v15 = [v5 valueForKey:v14];
          if (v15)
          {
            v16 = v5;
            v17 = self;
            v18 = [(NSDictionary *)self->_contents objectForKeyedSubscript:v14];
            v19 = [NUSchema copyItem:v15 schemaIdentifier:v18];
            if (!v19)
            {
              if (_NULogOnceToken != -1)
              {
                dispatch_once(&_NULogOnceToken, &__block_literal_global_557);
              }

              v5 = v16;
              v23 = _NULogger;
              if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v51 = v18;
                v52 = 2112;
                v53 = v15;
                _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "failure in [NUCompositionSchema copyComposition]. cannot copy item with identifier %@. item: %@", buf, 0x16u);
              }

              v21 = 0;
              goto LABEL_25;
            }

            v20 = v19;

            self = v17;
            v5 = v16;
          }

          else
          {
            v20 = 0;
          }

          [(NUGenericComposition *)v9 setValue:v20 forKey:v14];
        }

        v11 = [(NSDictionary *)obj countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v21 = v9;
LABEL_25:
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_557);
    }

    v22 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      v25 = v22;
      v26 = [v5 identifier];
      v27 = [(NUSchema *)self identifier];
      *buf = 138412546;
      v51 = v26;
      v52 = 2112;
      v53 = v27;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "failure in [NUCompositionSchema copyComposition]. composition.identifier %@ is not equal to self.identifier %@", buf, 0x16u);
    }

    v21 = 0;
  }

  return v21;
}

- (id)copy:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v16;
        v27 = 2114;
        v28 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema copy:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2093, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "object != nil");
  }

  v5 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NUCompositionSchema *)self copyComposition:v5];
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
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "failure in [NUCompositionSchema copy]. object is not a NUComposition: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)validateContents:(id)a3 error:(id *)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v56 = a3;
  if (!v56)
  {
    v21 = NUAssertLogger_18635();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "contents != nil"];
      *buf = 138543362;
      v64 = v22;
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
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v35;
        v65 = 2114;
        v66 = v39;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema validateContents:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2050, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "contents != nil");
  }

  if (!a4)
  {
    v28 = NUAssertLogger_18635();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v64 = v29;
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
        v47 = [v45 callStackSymbols];
        v48 = [v47 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v44;
        v65 = 2114;
        v66 = v48;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema validateContents:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2051, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "error != NULL");
  }

  v53 = a4;
  v5 = [v56 mutableCopy];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = self->_contents;
  v6 = [(NSDictionary *)obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v59;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v59 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v58 + 1) + 8 * v9);
      v11 = [v56 objectForKeyedSubscript:v10];
      if (v11)
      {
        v12 = [(NSDictionary *)self->_contents objectForKeyedSubscript:v10];
        v13 = +[NUSchemaRegistry sharedRegistry];
        v14 = [v13 schemaWithIdentifier:v12];

        v57 = 0;
        v15 = [v14 validate:v11 error:&v57];
        v16 = v57;
        if ((v15 & 1) == 0)
        {
          *v53 = [NUError errorWithCode:2 reason:@"Invalid property" object:v10 underlyingError:v16];

LABEL_18:
          v19 = 0;
          goto LABEL_19;
        }
      }

      else
      {
        v17 = [(NUCompositionSchema *)self requiredContents];
        v18 = [v17 containsObject:v10];

        if (v18)
        {
          [NUError missingError:@"Missing required property" object:v10];
          *v53 = v11 = 0;
          goto LABEL_18;
        }
      }

      [v5 removeObjectForKey:v10];

      if (v7 == ++v9)
      {
        v7 = [(NSDictionary *)obj countByEnumeratingWithState:&v58 objects:v62 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  if ([v5 count])
  {
    [NUError invalidError:@"Extra contents" object:v5];
    *v53 = v19 = 0;
  }

  else
  {
    v19 = 1;
  }

LABEL_19:

  return v19;
}

- (BOOL)validateComposition:(id)a3 error:(id *)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v18 = NUAssertLogger_18635();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v53 = v19;
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
        v35 = [v33 callStackSymbols];
        v36 = [v35 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v32;
        v54 = 2114;
        v55 = v36;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema validateComposition:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2029, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "composition != nil");
  }

  if (!a4)
  {
    v25 = NUAssertLogger_18635();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v53 = v26;
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
        v44 = [v42 callStackSymbols];
        v45 = [v44 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v53 = v41;
        v54 = 2114;
        v55 = v45;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v53 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema validateComposition:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2030, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "error != NULL");
  }

  v7 = v6;
  v8 = [v6 identifier];
  v51 = 0;
  v9 = [(NUSchema *)self validateIdentifier:v8 error:&v51];
  v10 = v51;

  if (!v9)
  {
    v15 = [v7 debugDescription];
    v16 = [NUError errorWithCode:2 reason:@"Invalid composition identifier" object:v15];
    v13 = v10;
LABEL_8:
    *a4 = v16;

    v14 = 0;
    goto LABEL_9;
  }

  v11 = [v7 contents];
  v50 = 0;
  v12 = [(NUCompositionSchema *)self validateContents:v11 error:&v50];
  v13 = v50;

  if (!v12)
  {
    v15 = [v7 debugDescription];
    v16 = [NUError errorWithCode:2 reason:@"Invalid composition contents" object:v15 underlyingError:v13];
    goto LABEL_8;
  }

  v14 = 1;
LABEL_9:

  return v14;
}

- (BOOL)validate:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v27 = [v25 callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v24;
        v44 = 2114;
        v45 = v28;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema validate:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2015, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "object != nil");
  }

  if (!a4)
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
        v36 = [v34 callStackSymbols];
        v37 = [v36 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v33;
        v44 = 2114;
        v45 = v37;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema validate:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2016, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "error != NULL");
  }

  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(NUCompositionSchema *)self validateComposition:v7 error:a4];
  }

  else
  {
    [NUError mismatchError:@"Not a composition" object:v7];
    *a4 = v8 = 0;
  }

  return v8;
}

- (BOOL)validateContents:(id *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_contents;
  v5 = [(NSDictionary *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v5)
  {
    v15 = 1;
    goto LABEL_15;
  }

  v6 = v5;
  v17 = a3;
  v7 = *v22;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v22 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v21 + 1) + 8 * i);
      v20 = 0;
      v10 = [(NUModel *)NUSchema validatePropertyName:v9 error:&v20, v17];
      v11 = v20;
      if (!v10)
      {
        *v17 = [NUError errorWithCode:2 reason:@"Invalid property name" object:v9 underlyingError:v11];
LABEL_14:

        v15 = 0;
        goto LABEL_15;
      }

      v12 = [(NSDictionary *)self->_contents objectForKeyedSubscript:v9];
      v19 = 0;
      v13 = [NUSchema validateSchemaIdentifier:v12 type:0 error:&v19];
      v14 = v19;

      if (!v13)
      {
        *v17 = [NUError errorWithCode:2 reason:@"Invalid schema identifier" object:v12 underlyingError:v14];

        v11 = v14;
        goto LABEL_14;
      }
    }

    v6 = [(NSDictionary *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    v15 = 1;
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_15:

  return v15;
}

- (BOOL)validatePropertyArray:(id)a3 error:(id *)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v17 = NUAssertLogger_18635();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "object != nil"];
      *buf = 138543362;
      v55 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_18635();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        v34 = [v32 callStackSymbols];
        v35 = [v34 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v55 = v31;
        v56 = 2114;
        v57 = v35;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v55 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema validatePropertyArray:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1968, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "object != nil");
  }

  if (!a4)
  {
    v24 = NUAssertLogger_18635();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v55 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_18635();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        v43 = [v41 callStackSymbols];
        v44 = [v43 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v55 = v40;
        v56 = 2114;
        v57 = v44;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v55 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema validatePropertyArray:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1969, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "error != NULL");
  }

  v7 = v6;
  if ([(NUModel *)NUSchema validateStringArray:v6 error:a4])
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v50;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v50 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v49 + 1) + 8 * i);
          v14 = [(NSDictionary *)self->_contents objectForKey:v13];

          if (!v14)
          {
            [NUError unknownError:@"Unknown required property" object:v13];
            *a4 = v15 = 0;
            goto LABEL_15;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v49 objects:v53 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v15 = 1;
LABEL_15:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)validateAttribute:(id)a3 value:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 isEqualToString:@"required"])
  {
    v10 = [(NUCompositionSchema *)self validatePropertyArray:v9 error:a5];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NUCompositionSchema;
    v10 = [(NUModel *)&v13 validateAttribute:v8 value:v9 error:a5];
  }

  v11 = v10;

  return v11;
}

- (BOOL)isValid:(id *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a3)
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
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v19;
        v32 = 2114;
        v33 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema isValid:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1930, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "error != NULL");
  }

  v29 = 0;
  v5 = [(NUModel *)self validateAttributes:&v29];
  v6 = v29;
  if (!v5)
  {
    v10 = [NUError errorWithCode:2 reason:@"Invalid attributes" object:self underlyingError:v6];
    v8 = v6;
LABEL_7:
    v9 = 0;
    *a3 = v10;
    goto LABEL_8;
  }

  v28 = 0;
  v7 = [(NUCompositionSchema *)self validateContents:&v28];
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

- (NUCompositionSchema)initWithIdentifier:(id)a3 contents:(id)a4 attributes:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v19 = NUAssertLogger_18635();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "contents != nil"];
      *buf = 138543362;
      v37 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_18635();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v26;
        v38 = 2114;
        v39 = v30;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUCompositionSchema initWithIdentifier:contents:attributes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1911, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "contents != nil");
  }

  v11 = v10;
  v35.receiver = self;
  v35.super_class = NUCompositionSchema;
  v12 = [(NUSchema *)&v35 initWithIdentifier:v8 attributes:v10];
  v13 = [v9 copy];
  contents = v12->_contents;
  v12->_contents = v13;

  v15 = [(NSDictionary *)v12->super.super._attributes objectForKeyedSubscript:@"required"];
  v16 = [MEMORY[0x1E695DFD8] setWithArray:v15];
  requiredContents = v12->_requiredContents;
  v12->_requiredContents = v16;

  return v12;
}

- (NUCompositionSchema)initWithIdentifier:(id)a3 attributes:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
      v19 = [v17 callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
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
    v26 = [v23 callStackSymbols];
    v27 = [v26 componentsJoinedByString:@"\n"];
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
  _NUAssertFailHandler("[NUCompositionSchema initWithIdentifier:attributes:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 1906, @"Initializer not available: [%@ %@], use designated initializer instead.", v30, v31, v32, v33, v29);
}

+ (id)deserializeFromDictionary:(id)a3 error:(id *)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v18 = NUAssertLogger_18635();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v54 = v19;
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
        v35 = [v33 callStackSymbols];
        v36 = [v35 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v54 = v32;
        v55 = 2114;
        v56 = v36;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v54 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUCompositionSchema deserializeFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2328, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "dictionary != nil");
  }

  if (!a4)
  {
    v25 = NUAssertLogger_18635();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v54 = v26;
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
        v44 = [v42 callStackSymbols];
        v45 = [v44 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v54 = v41;
        v55 = 2114;
        v56 = v45;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v54 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUCompositionSchema deserializeFromDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchema.m", 2329, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "error != NULL");
  }

  v7 = v6;
  v52 = 0;
  v8 = [a1 deserializeIdentifierFromDictionary:v6 error:&v52];
  v9 = v52;
  if (!v8)
  {
    [NUError errorWithCode:1 reason:@"Failed to deserialize composition identifier" object:v7 underlyingError:v9];
    *a4 = v16 = 0;
    goto LABEL_15;
  }

  v51 = 0;
  v10 = [a1 deserializeContentsFromDictionary:v7 error:&v51];
  v11 = v51;

  if (v10)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = [v7 objectForKeyedSubscript:@"required"];

    if (v13)
    {
      v50 = 0;
      v14 = [a1 deserializeArrayFromDictionary:v7 key:@"required" error:&v50];
      v15 = v50;

      if (!v14)
      {
        [NUError errorWithCode:1 reason:@"Failed to deserialize required contents" object:v7 underlyingError:v15];
        *a4 = v16 = 0;
        goto LABEL_13;
      }

      [v12 setObject:v14 forKeyedSubscript:@"required"];
    }

    else
    {
      v15 = v11;
    }

    v16 = [[a1 alloc] initWithIdentifier:v8 contents:v10 attributes:v12];
LABEL_13:

    v11 = v15;
    goto LABEL_14;
  }

  [NUError errorWithCode:1 reason:@"Failed to deserialize composition contents" object:v7 underlyingError:v11];
  *a4 = v16 = 0;
LABEL_14:

  v9 = v11;
LABEL_15:

  return v16;
}

+ (id)supportedAttributes
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___NUCompositionSchema;
  v2 = objc_msgSendSuper2(&v6, sel_supportedAttributes);
  v7[0] = @"required";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  return v4;
}

@end