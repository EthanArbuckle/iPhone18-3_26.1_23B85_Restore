@interface _NUChannelPort
- (BOOL)assign:(id)a3 error:(id *)a4;
- (BOOL)bindData:(id)a3 error:(id *)a4;
- (BOOL)clearExpression:(id *)a3;
- (BOOL)hasConnectedSuperport;
- (BOOL)hasSuperConnections;
- (BOOL)resetData:(id *)a3;
- (NSArray)connectedInputPorts;
- (NSArray)subports;
- (NSString)address;
- (NSString)compactDescription;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)fullName;
- (NUChannelFormat)effectiveFormat;
- (_NUChannelPort)elementSubport;
- (_NUChannelPort)initWithChannel:(id)a3;
- (_NUChannelPort)rootPort;
- (id)_fullName;
- (id)_subportMatching:(id)a3;
- (id)evaluateInputWithContext:(id)a3 error:(id *)a4;
- (id)evaluateOutputWithContext:(id)a3 error:(id *)a4;
- (id)subportForKey:(id)a3;
- (id)subportMatching:(id)a3;
- (unint64_t)inputConnectionCount;
- (unint64_t)outputConnectionCount;
- (void)_addOutputPort:(id)a3;
- (void)_populateAllSubports;
- (void)_removeOutputPort:(id)a3;
- (void)connectToPort:(id)a3;
- (void)deleteAllConnections;
- (void)disconnect;
- (void)disconnectAll;
- (void)specializeWithInputFormat:(id)a3;
- (void)specializeWithOutputFormat:(id)a3;
@end

@implementation _NUChannelPort

- (id)evaluateOutputWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(_NUChannelPort *)self superport];

  if (v7)
  {
    v8 = [(_NUChannelPort *)self channel];
    v9 = [v8 type];

    if (v9 == 5)
    {
      v10 = [(_NUChannelPort *)self fullName];
      v11 = [v6 dataForChannel:v10];

      if (v11)
      {
        v12 = v11;
      }

      else
      {
        *a4 = [NUError missingError:@"Missing element data" object:self];
      }
    }

    else
    {
      v16 = [(_NUChannelPort *)self superport];
      v24 = 0;
      v17 = [v16 evaluateOutputWithContext:v6 error:&v24];
      v18 = v24;

      if (v17)
      {
        v19 = [(_NUChannelPort *)self channel];
        v23 = 0;
        v11 = [v17 subdataForChannel:v19 error:&v23];
        v20 = v23;

        if (v11)
        {
          v21 = v11;
        }

        else
        {
          *a4 = [NUError errorWithCode:1 reason:@"Failed to evaluate subdata" object:self underlyingError:v20];
        }
      }

      else
      {
        [NUError errorWithCode:1 reason:@"Failed to evaluate parent port" object:self underlyingError:v18];
        *a4 = v11 = 0;
        v20 = v18;
      }
    }
  }

  else
  {
    v13 = [(_NUChannelPort *)self pipeline];
    v25 = 0;
    v11 = [v13 evaluatePort:self context:v6 error:&v25];
    v14 = v25;

    if (v11)
    {
      v15 = v11;
    }

    else
    {
      *a4 = [NUError errorWithCode:1 reason:@"Failed to evaluate port" object:self underlyingError:v14];
    }
  }

  return v11;
}

- (id)evaluateInputWithContext:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(_NUChannelPort *)self isConnected])
  {
    v7 = [(_NUChannelPort *)self inputPort];
    v8 = [v7 evaluateOutputWithContext:v6 error:a4];
LABEL_3:
    v9 = v8;

    goto LABEL_26;
  }

  if (![(_NUChannelPort *)self hasConnectedSubport])
  {
    if (![(_NUChannelPort *)self hasExpression])
    {
      if ([(_NUChannelPort *)self hasData])
      {
        [(_NUChannelPort *)self data];
      }

      else
      {
        +[NUChannelData null];
      }
      v9 = ;
      goto LABEL_26;
    }

    v7 = [(_NUChannelPort *)self expression];
    v8 = [v7 evaluateWithContext:v6 error:a4];
    goto LABEL_3;
  }

  v29 = a4;
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSHashTable count](self->_subports, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = self->_subports;
  v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v34;
    obj = v11;
    while (2)
    {
      v16 = 0;
      v17 = v14;
      do
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v33 + 1) + 8 * v16);
        v32 = 0;
        v19 = v6;
        v20 = [v18 evaluateInputWithContext:v6 error:{&v32, v29}];
        v14 = v32;

        if (!v20)
        {
          v23 = [v18 channel];
          *v29 = [NUError errorWithCode:1 reason:@"Failed to evaluate subport" object:v23 underlyingError:v14];

          v9 = 0;
          v24 = obj;
          v6 = v19;
          goto LABEL_25;
        }

        v21 = [v18 channel];
        v22 = [v21 name];
        [v10 setObject:v20 forKeyedSubscript:v22];

        ++v16;
        v17 = v14;
        v6 = v19;
      }

      while (v13 != v16);
      v11 = obj;
      v13 = [(NSHashTable *)obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

  v25 = v14;

  v26 = [(_NUChannelPort *)self effectiveFormat];
  v31 = 0;
  v9 = [NUChannelData aggregateDataWithFormat:v26 components:v10 error:&v31];
  v14 = v31;

  if (v9)
  {
    v24 = v9;
    v9 = v24;
  }

  else
  {
    v27 = [NUError errorWithCode:1 reason:@"Failed to aggregate subport data" object:v10 underlyingError:v14];
    v24 = 0;
    *v29 = v27;
  }

LABEL_25:

LABEL_26:

  return v9;
}

- (BOOL)clearExpression:(id *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v6 = NUAssertLogger_5769();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v23 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_5769();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v23 = v13;
        v24 = 2114;
        v25 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v23 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort clearExpression:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 843, @"Invalid parameter not satisfying: %s", v18, v19, v20, v21, "error != NULL");
  }

  expression = self->_expression;
  if (expression)
  {
    self->_expression = 0;
  }

  else
  {
    *a3 = [NUError invalidError:@"Port has no expression" object:self];
  }

  return expression != 0;
}

- (BOOL)assign:(id)a3 error:(id *)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v13 = NUAssertLogger_5769();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "expression != nil"];
      *buf = 138543362;
      v46 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_5769();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v27;
        v47 = 2114;
        v48 = v31;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort assign:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 827, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "expression != nil");
  }

  if (!a4)
  {
    v20 = NUAssertLogger_5769();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v46 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_5769();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v36;
        v47 = 2114;
        v48 = v40;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort assign:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 828, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "error != NULL");
  }

  v8 = v7;
  v9 = [(_NUChannelPort *)self channel];
  v10 = [v9 format];
  v11 = [v8 isCompatibleWithExpressionType:{objc_msgSend(v10, "expressionType")}];

  if (v11)
  {
    objc_storeStrong(&self->_expression, a3);
  }

  else
  {
    *a4 = [NUError invalidError:@"Incompatible expression" object:v8];
  }

  return v11;
}

- (BOOL)resetData:(id *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v6 = NUAssertLogger_5769();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v23 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_5769();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v23 = v13;
        v24 = 2114;
        v25 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v23 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort resetData:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 815, @"Invalid parameter not satisfying: %s", v18, v19, v20, v21, "error != NULL");
  }

  data = self->_data;
  if (data)
  {
    self->_data = 0;
  }

  else
  {
    *a3 = [NUError invalidError:@"Port has no data" object:self];
  }

  return data != 0;
}

- (BOOL)bindData:(id)a3 error:(id *)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v22 = NUAssertLogger_5769();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "data != nil"];
      *buf = 138543362;
      v57 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_5769();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v57 = v36;
        v58 = 2114;
        v59 = v40;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v57 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort bindData:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 792, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "data != nil");
  }

  if (!a4)
  {
    v29 = NUAssertLogger_5769();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v57 = v30;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_5769();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (v31)
    {
      if (v33)
      {
        v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v46 = MEMORY[0x1E696AF00];
        v47 = v45;
        v48 = [v46 callStackSymbols];
        v49 = [v48 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v57 = v45;
        v58 = 2114;
        v59 = v49;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v57 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort bindData:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 793, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "error != NULL");
  }

  v8 = v7;
  v9 = [(_NUChannelPort *)self channel];
  v10 = [v9 format];
  v11 = [v8 format];
  v12 = [v10 isCompatibleWithChannelFormat:v11];

  if (v12)
  {
    objc_storeStrong(&self->_data, a3);
    v13 = [(_NUChannelPort *)self channel];
    v14 = [v13 format];
    v15 = [v14 isGeneric];

    if (v15)
    {
      v16 = [v8 format];
      [(_NUChannelPort *)self specializeWithInputFormat:v16];
    }
  }

  else
  {
    v54[0] = @"format";
    v17 = [v8 format];
    v54[1] = @"expected";
    v55[0] = v17;
    v18 = [(_NUChannelPort *)self channel];
    v19 = [v18 format];
    v55[1] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
    *a4 = [NUError invalidError:@"Incompatible data" object:v20];
  }

  return v12;
}

- (NSString)compactDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_NUChannelPort *)self pipeline];
  v5 = [v4 alias];
  v6 = [(_NUChannelPort *)self address];
  v7 = [v3 stringWithFormat:@"%@:%@", v5, v6];

  return v7;
}

- (NSString)address
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = self;
  v5 = [(_NUChannelPort *)v4 superport];

  if (v5)
  {
    do
    {
      v6 = [(_NUChannelPort *)v4 superport];
      v7 = [v6 subports];
      v8 = [v7 indexOfObjectIdenticalTo:v4];

      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
      [v3 insertObject:v9 atIndex:0];

      v10 = [(_NUChannelPort *)v4 superport];

      v11 = [(_NUChannelPort *)v10 superport];

      v4 = v10;
    }

    while (v11);
  }

  else
  {
    v10 = v4;
  }

  v12 = [(_NUChannelPort *)v10 pipeline];
  v13 = [(_NUChannelPort *)v10 channel];
  v14 = [v12 outputPortForChannel:v13];

  v15 = [(_NUChannelPort *)v10 pipeline];
  v16 = v15;
  if (v14 == v10)
  {
    [v15 outputChannels];
  }

  else
  {
    [v15 inputChannels];
  }
  v17 = ;
  v18 = [(_NUChannelPort *)v10 channel];
  v19 = [v17 indexOfObject:v18];

  if (v14 == v10)
  {

    v16 = [(_NUChannelPort *)v10 pipeline];
    v17 = [v16 inputChannels];
    v20 = [v17 count];
  }

  else
  {
    v20 = 0;
  }

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20 + v19];
  [v3 insertObject:v21 atIndex:0];

  v22 = [v3 componentsJoinedByString:@"."];

  return v22;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_NUChannelPort *)self pipeline];
  v6 = [v5 name];
  v7 = [(_NUChannelPort *)self fullName];
  v8 = [(_NUChannelPort *)self effectiveFormat];
  v9 = [(_NUChannelPort *)self data];
  v10 = [v3 stringWithFormat:@"<%@:%p pipeline:'%@' name:'%@' format:'%@' data:%@>", v4, self, v6, v7, v8, v9];

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_NUChannelPort *)self pipeline];
  v5 = [v4 name];
  v6 = [(_NUChannelPort *)self fullName];
  v7 = [v3 stringWithFormat:@"%@:%@", v5, v6];

  return v7;
}

- (id)_fullName
{
  v3 = [(_NUChannelPort *)self superport];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self;
    do
    {
      v6 = [(_NUChannelPort *)v5 channel];
      v7 = [v6 name];
      [v4 insertObject:v7 atIndex:0];

      v8 = [(_NUChannelPort *)v5 superport];

      v5 = v8;
    }

    while (v8);
    v9 = [v4 componentsJoinedByString:@"."];
  }

  else
  {
    v4 = [(_NUChannelPort *)self channel];
    v9 = [v4 name];
  }

  v10 = v9;

  return v10;
}

- (NSString)fullName
{
  fullName = self->_fullName;
  if (!fullName)
  {
    v4 = [(_NUChannelPort *)self _fullName];
    v5 = self->_fullName;
    self->_fullName = v4;

    fullName = self->_fullName;
  }

  return fullName;
}

- (void)specializeWithInputFormat:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v24 = NUAssertLogger_5769();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputFormat != nil"];
      *buf = 138543362;
      v51 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_5769();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        v34 = [v32 callStackSymbols];
        v35 = [v34 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v31;
        v52 = 2114;
        v53 = v35;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort specializeWithInputFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 708, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "inputFormat != nil");
  }

  v5 = v4;
  v6 = [(_NUChannelPort *)self channel];
  v7 = [v6 format];
  v8 = [v5 canSpecializeFormat:v7];

  if (v8)
  {
    v9 = [(_NUChannelPort *)self channel];
    v10 = [v9 format];
    v11 = [v10 specializedWithFormat:v5];

    v12 = [(_NUChannelPort *)self specializedInputFormat];
    LOBYTE(v10) = [v12 isEqualToChannelFormat:v11];

    if ((v10 & 1) == 0)
    {
      [(_NUChannelPort *)self setSpecializedInputFormat:v11];
      if ([(_NUChannelPort *)self hasConnections])
      {
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v13 = self->_outputPorts;
        v14 = [(NSHashTable *)v13 countByEnumeratingWithState:&v44 objects:v49 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v45;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v45 != v16)
              {
                objc_enumerationMutation(v13);
              }

              [*(*(&v44 + 1) + 8 * i) specializeWithInputFormat:v11];
            }

            v15 = [(NSHashTable *)v13 countByEnumeratingWithState:&v44 objects:v49 count:16];
          }

          while (v15);
        }
      }

      else if ([(_NUChannelPort *)self hasSubConnections])
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v13 = self->_subports;
        v18 = [(NSHashTable *)v13 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v41;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v41 != v20)
              {
                objc_enumerationMutation(v13);
              }

              [*(*(&v40 + 1) + 8 * j) specializeWithInputFormat:v11];
            }

            v19 = [(NSHashTable *)v13 countByEnumeratingWithState:&v40 objects:v48 count:16];
          }

          while (v19);
        }
      }

      else
      {
        v22 = [(_NUChannelPort *)self superport];

        if (!v22)
        {
          v23 = [(_NUChannelPort *)self pipeline];
          [v23 propagateSpecializedInputFormat:v11 fromPort:self];

          goto LABEL_25;
        }

        v13 = [(_NUChannelPort *)self superport];
        [(NSHashTable *)v13 specializeWithInputFormat:v11];
      }
    }

LABEL_25:
  }
}

- (void)specializeWithOutputFormat:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v32 = NUAssertLogger_5769();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "outputFormat != nil"];
      *buf = 138543362;
      v59 = v33;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v35 = NUAssertLogger_5769();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v36)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        v42 = [v40 callStackSymbols];
        v43 = [v42 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v59 = v39;
        v60 = 2114;
        v61 = v43;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      v37 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [v37 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v59 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort specializeWithOutputFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 671, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "outputFormat != nil");
  }

  v5 = v4;
  v6 = [(_NUChannelPort *)self channel];
  v7 = [v6 format];
  v8 = [v5 canSpecializeFormat:v7];

  if (v8)
  {
    v9 = [(_NUChannelPort *)self channel];
    v10 = [v9 format];
    v11 = [v10 specializedWithFormat:v5];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v12 = self->_outputPorts;
    v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v53;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v53 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v52 + 1) + 8 * i);
          v18 = [v17 specializedOutputFormat];
          v19 = v18;
          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v21 = [v17 channel];
            v20 = [v21 format];
          }

          if ([v20 canSpecializeFormat:v11])
          {
            v22 = [v11 specializedWithFormat:v20];

            v11 = v22;
          }
        }

        v14 = [(NSHashTable *)v12 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v14);
    }

    v23 = [(_NUChannelPort *)self specializedOutputFormat];
    v24 = [v23 isEqualToChannelFormat:v11];

    if ((v24 & 1) == 0)
    {
      [(_NUChannelPort *)self setSpecializedOutputFormat:v11];
      v25 = [(_NUChannelPort *)self effectiveFormat];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v26 = self->_outputPorts;
      v27 = [(NSHashTable *)v26 countByEnumeratingWithState:&v48 objects:v56 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v49;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v49 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [*(*(&v48 + 1) + 8 * j) specializeWithInputFormat:v25];
          }

          v28 = [(NSHashTable *)v26 countByEnumeratingWithState:&v48 objects:v56 count:16];
        }

        while (v28);
      }

      if ([(_NUChannelPort *)self isConnected])
      {
        v31 = [(_NUChannelPort *)self inputPort];
        [v31 specializeWithOutputFormat:v11];
      }

      else
      {
        v31 = [(_NUChannelPort *)self pipeline];
        [v31 propagateSpecializedOutputFormat:v11 fromPort:self];
      }
    }
  }
}

- (NUChannelFormat)effectiveFormat
{
  v3 = [(_NUChannelPort *)self specializedInputFormat];

  if (v3)
  {
    v4 = [(_NUChannelPort *)self specializedInputFormat];
LABEL_5:
    v6 = v4;
    goto LABEL_6;
  }

  v5 = [(_NUChannelPort *)self specializedOutputFormat];

  if (v5)
  {
    v4 = [(_NUChannelPort *)self specializedOutputFormat];
    goto LABEL_5;
  }

  v8 = [(_NUChannelPort *)self channel];
  v6 = [v8 format];

LABEL_6:

  return v6;
}

- (_NUChannelPort)rootPort
{
  v2 = self;
  v3 = [(_NUChannelPort *)v2 superport];

  if (v3)
  {
    do
    {
      v4 = [(_NUChannelPort *)v2 superport];

      v5 = [(_NUChannelPort *)v4 superport];

      v2 = v4;
    }

    while (v5);
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

- (NSArray)subports
{
  v2 = [(NSHashTable *)self->_subports allObjects];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_231_6020];

  return v3;
}

- (id)subportForKey:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_5769();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "key != nil"];
      *buf = 138543362;
      v26 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_5769();
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

    _NUAssertFailHandler("[_NUChannelPort subportForKey:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 633, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "key != nil");
  }

  v5 = v4;
  v6 = [NUChannelMatching name:v4];
  v7 = [(_NUChannelPort *)self subportMatching:v6];

  return v7;
}

- (id)_subportMatching:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (!self->_subports)
    {
      [(_NUChannelPort *)self _populateAllSubports];
    }

    v9 = v4;
    v5 = PFFind();
    v6 = [v9 subsequentMatching];
    v7 = [v5 _subportMatching:v6];
  }

  else
  {
    v7 = self;
  }

  return v7;
}

- (_NUChannelPort)elementSubport
{
  if (!self->_subports)
  {
    [(_NUChannelPort *)self _populateAllSubports];
  }

  v3 = PFFind();
  if (!v3)
  {
    v4 = [(_NUChannelPort *)self channel];
    v5 = [v4 elementSubchannel];

    if (v5)
    {
      v3 = [[_NUChannelPort alloc] initWithChannel:v5];
      [(_NUChannelPort *)v3 setSuperport:self];
      v6 = [(_NUChannelPort *)self pipeline];
      [(_NUChannelPort *)v3 setPipeline:v6];

      [(NSHashTable *)self->_subports addObject:v3];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)_populateAllSubports
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:512 capacity:2];
  subports = self->_subports;
  self->_subports = v3;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NUChannel *)self->_channel subchannels];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [[_NUChannelPort alloc] initWithChannel:*(*(&v12 + 1) + 8 * v9)];
        [(_NUChannelPort *)v10 setSuperport:self];
        v11 = [(_NUChannelPort *)self pipeline];
        [(_NUChannelPort *)v10 setPipeline:v11];

        [(NSHashTable *)self->_subports addObject:v10];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)subportMatching:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v8 = NUAssertLogger_5769();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "matching != nil"];
      *buf = 138543362;
      v25 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_5769();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort subportMatching:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 570, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "matching != nil");
  }

  v5 = v4;
  v6 = [(_NUChannelPort *)self _subportMatching:v4];

  return v6;
}

- (void)_removeOutputPort:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v5 = NUAssertLogger_5769();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "port != nil"];
      *buf = 138543362;
      v39 = v6;
      _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v8 = NUAssertLogger_5769();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v9)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v39 = v19;
        v40 = 2114;
        v41 = v23;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = v11;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort _removeOutputPort:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 564, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "port != nil");
  }

  v37 = v4;
  if (![(NSHashTable *)self->_outputPorts containsObject:v4])
  {
    v12 = NUAssertLogger_5769();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not a connected port: %@", v37];
      *buf = 138543362;
      v39 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_5769();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      if (v16)
      {
        v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        v31 = [v29 callStackSymbols];
        v32 = [v31 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v39 = v28;
        v40 = 2114;
        v41 = v32;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort _removeOutputPort:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 565, @"Not a connected port: %@", v33, v34, v35, v36, v37);
  }

  [(NSHashTable *)self->_outputPorts removeObject:v37];
}

- (void)_addOutputPort:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_5769();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "port != nil"];
      *buf = 138543362;
      v43 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_5769();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        v26 = [v24 callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v23;
        v44 = 2114;
        v45 = v27;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort _addOutputPort:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 554, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "port != nil");
  }

  v5 = v4;
  outputPorts = self->_outputPorts;
  v41 = v5;
  if (!outputPorts)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:2];
    v8 = self->_outputPorts;
    self->_outputPorts = v7;

    v5 = v41;
    outputPorts = self->_outputPorts;
  }

  if ([(NSHashTable *)outputPorts containsObject:v5])
  {
    v16 = NUAssertLogger_5769();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Port is already connected: %@", v41];
      *buf = 138543362;
      v43 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_5769();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      if (v20)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        v35 = [v33 callStackSymbols];
        v36 = [v35 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v32;
        v44 = 2114;
        v45 = v36;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort _addOutputPort:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 559, @"Port is already connected: %@", v37, v38, v39, v40, v41);
  }

  [(NSHashTable *)self->_outputPorts addObject:v41];
}

- (BOOL)hasSuperConnections
{
  v2 = [(_NUChannelPort *)self superport];
  v3 = v2;
  if (v2)
  {
    if ([v2 hasConnections])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 hasSuperConnections];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasConnectedSuperport
{
  v2 = [(_NUChannelPort *)self superport];
  v3 = v2;
  if (v2)
  {
    if ([v2 isConnected])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 hasConnectedSuperport];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)connectedInputPorts
{
  v2 = [(NSHashTable *)self->_outputPorts allObjects];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (void)deleteAllConnections
{
  v15 = *MEMORY[0x1E69E9840];
  for (i = self->_outputPorts; [(NSHashTable *)i count]; i = self->_outputPorts)
  {
    v4 = [(NSHashTable *)self->_outputPorts anyObject];
    [v4 disconnect];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_subports;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) deleteAllConnections];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)disconnectAll
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(_NUChannelPort *)self isConnected])
  {
    [(_NUChannelPort *)self disconnect];
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_subports;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) disconnectAll];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)disconnect
{
  v24 = *MEMORY[0x1E69E9840];
  inputPort = self->_inputPort;
  if (!inputPort)
  {
    v5 = NUAssertLogger_5769();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not connected"];
      *v21 = 138543362;
      *&v21[4] = v6;
      _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v21, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v8 = NUAssertLogger_5769();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v9)
      {
        v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v13 = MEMORY[0x1E696AF00];
        v14 = v12;
        v15 = [v13 callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        *v21 = 138543618;
        *&v21[4] = v12;
        v22 = 2114;
        v23 = v16;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v21, 0x16u);
      }
    }

    else if (v9)
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
      *v21 = 138543362;
      *&v21[4] = v11;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v21, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort disconnect]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 483, @"Not connected", v17, v18, v19, v20, *v21);
  }

  [(_NUChannelPort *)inputPort _removeOutputPort:self];
  v4 = self->_inputPort;
  self->_inputPort = 0;
}

- (void)connectToPort:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v46 = a3;
  if (!v46)
  {
    v13 = NUAssertLogger_5769();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "port != nil"];
      *buf = 138543362;
      v48 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_5769();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = v27;
        v49 = 2114;
        v50 = v31;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort connectToPort:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 467, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "port != nil");
  }

  if (self->_inputPort)
  {
    v20 = NUAssertLogger_5769();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Already connected"];
      *buf = 138543362;
      v48 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_5769();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = v36;
        v49 = 2114;
        v50 = v40;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort connectToPort:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 468, @"Already connected", v41, v42, v43, v44, v45);
  }

  objc_storeStrong(&self->_inputPort, a3);
  [(_NUChannelPort *)self->_inputPort _addOutputPort:self];
  v5 = [v46 channel];
  v6 = [v5 format];
  v7 = [v6 isGeneric];

  if (v7)
  {
    v8 = [(_NUChannelPort *)self effectiveFormat];
    [v46 specializeWithOutputFormat:v8];
  }

  v9 = [(_NUChannelPort *)self channel];
  v10 = [v9 format];
  v11 = [v10 isGeneric];

  if (v11)
  {
    v12 = [v46 effectiveFormat];
    [(_NUChannelPort *)self specializeWithInputFormat:v12];
  }
}

- (unint64_t)outputConnectionCount
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(NSHashTable *)self->_outputPorts count];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_subports;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v3 += [*(*(&v10 + 1) + 8 * v8++) outputConnectionCount];
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (unint64_t)inputConnectionCount
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(_NUChannelPort *)self isConnected];
  if ([(_NUChannelPort *)self hasConnectedSubport])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->_subports;
    v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v3 += [*(*(&v10 + 1) + 8 * v8++) inputConnectionCount];
        }

        while (v6 != v8);
        v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  return v3;
}

- (_NUChannelPort)initWithChannel:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_5769();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "channel != nil"];
      *buf = 138543362;
      v27 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_5769();
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
        v27 = v16;
        v28 = 2114;
        v29 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort initWithChannel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 438, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "channel != nil");
  }

  v5 = v4;
  v25.receiver = self;
  v25.super_class = _NUChannelPort;
  v6 = [(_NUChannelPort *)&v25 init];
  channel = v6->_channel;
  v6->_channel = v5;

  return v6;
}

@end