@interface _NUChannelPort
- (BOOL)assign:(id)assign error:(id *)error;
- (BOOL)bindData:(id)data error:(id *)error;
- (BOOL)clearExpression:(id *)expression;
- (BOOL)hasConnectedSuperport;
- (BOOL)hasSuperConnections;
- (BOOL)resetData:(id *)data;
- (NSArray)connectedInputPorts;
- (NSArray)subports;
- (NSString)address;
- (NSString)compactDescription;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)fullName;
- (NUChannelFormat)effectiveFormat;
- (_NUChannelPort)elementSubport;
- (_NUChannelPort)initWithChannel:(id)channel;
- (_NUChannelPort)rootPort;
- (id)_fullName;
- (id)_subportMatching:(id)matching;
- (id)evaluateInputWithContext:(id)context error:(id *)error;
- (id)evaluateOutputWithContext:(id)context error:(id *)error;
- (id)subportForKey:(id)key;
- (id)subportMatching:(id)matching;
- (unint64_t)inputConnectionCount;
- (unint64_t)outputConnectionCount;
- (void)_addOutputPort:(id)port;
- (void)_populateAllSubports;
- (void)_removeOutputPort:(id)port;
- (void)connectToPort:(id)port;
- (void)deleteAllConnections;
- (void)disconnect;
- (void)disconnectAll;
- (void)specializeWithInputFormat:(id)format;
- (void)specializeWithOutputFormat:(id)format;
@end

@implementation _NUChannelPort

- (id)evaluateOutputWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  superport = [(_NUChannelPort *)self superport];

  if (superport)
  {
    channel = [(_NUChannelPort *)self channel];
    type = [channel type];

    if (type == 5)
    {
      fullName = [(_NUChannelPort *)self fullName];
      v11 = [contextCopy dataForChannel:fullName];

      if (v11)
      {
        v12 = v11;
      }

      else
      {
        *error = [NUError missingError:@"Missing element data" object:self];
      }
    }

    else
    {
      superport2 = [(_NUChannelPort *)self superport];
      v24 = 0;
      v17 = [superport2 evaluateOutputWithContext:contextCopy error:&v24];
      v18 = v24;

      if (v17)
      {
        channel2 = [(_NUChannelPort *)self channel];
        v23 = 0;
        v11 = [v17 subdataForChannel:channel2 error:&v23];
        v20 = v23;

        if (v11)
        {
          v21 = v11;
        }

        else
        {
          *error = [NUError errorWithCode:1 reason:@"Failed to evaluate subdata" object:self underlyingError:v20];
        }
      }

      else
      {
        [NUError errorWithCode:1 reason:@"Failed to evaluate parent port" object:self underlyingError:v18];
        *error = v11 = 0;
        v20 = v18;
      }
    }
  }

  else
  {
    pipeline = [(_NUChannelPort *)self pipeline];
    v25 = 0;
    v11 = [pipeline evaluatePort:self context:contextCopy error:&v25];
    v14 = v25;

    if (v11)
    {
      v15 = v11;
    }

    else
    {
      *error = [NUError errorWithCode:1 reason:@"Failed to evaluate port" object:self underlyingError:v14];
    }
  }

  return v11;
}

- (id)evaluateInputWithContext:(id)context error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if ([(_NUChannelPort *)self isConnected])
  {
    inputPort = [(_NUChannelPort *)self inputPort];
    v8 = [inputPort evaluateOutputWithContext:contextCopy error:error];
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

    inputPort = [(_NUChannelPort *)self expression];
    v8 = [inputPort evaluateWithContext:contextCopy error:error];
    goto LABEL_3;
  }

  errorCopy = error;
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
        v19 = contextCopy;
        v20 = [v18 evaluateInputWithContext:contextCopy error:{&v32, errorCopy}];
        v14 = v32;

        if (!v20)
        {
          channel = [v18 channel];
          *errorCopy = [NUError errorWithCode:1 reason:@"Failed to evaluate subport" object:channel underlyingError:v14];

          v9 = 0;
          v24 = obj;
          contextCopy = v19;
          goto LABEL_25;
        }

        channel2 = [v18 channel];
        name = [channel2 name];
        [v10 setObject:v20 forKeyedSubscript:name];

        ++v16;
        v17 = v14;
        contextCopy = v19;
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

  effectiveFormat = [(_NUChannelPort *)self effectiveFormat];
  v31 = 0;
  v9 = [NUChannelData aggregateDataWithFormat:effectiveFormat components:v10 error:&v31];
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
    *errorCopy = v27;
  }

LABEL_25:

LABEL_26:

  return v9;
}

- (BOOL)clearExpression:(id *)expression
{
  v26 = *MEMORY[0x1E69E9840];
  if (!expression)
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
        callStackSymbols = [v14 callStackSymbols];
        v17 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v23 = v13;
        v24 = 2114;
        v25 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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
    *expression = [NUError invalidError:@"Port has no expression" object:self];
  }

  return expression != 0;
}

- (BOOL)assign:(id)assign error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  assignCopy = assign;
  if (!assignCopy)
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
        callStackSymbols = [v28 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v27;
        v47 = 2114;
        v48 = v31;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort assign:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 827, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "expression != nil");
  }

  if (!error)
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
        callStackSymbols3 = [v37 callStackSymbols];
        v40 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v36;
        v47 = 2114;
        v48 = v40;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort assign:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 828, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "error != NULL");
  }

  v8 = assignCopy;
  channel = [(_NUChannelPort *)self channel];
  format = [channel format];
  v11 = [v8 isCompatibleWithExpressionType:{objc_msgSend(format, "expressionType")}];

  if (v11)
  {
    objc_storeStrong(&self->_expression, assign);
  }

  else
  {
    *error = [NUError invalidError:@"Incompatible expression" object:v8];
  }

  return v11;
}

- (BOOL)resetData:(id *)data
{
  v26 = *MEMORY[0x1E69E9840];
  if (!data)
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
        callStackSymbols = [v14 callStackSymbols];
        v17 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v23 = v13;
        v24 = 2114;
        v25 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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
    *data = [NUError invalidError:@"Port has no data" object:self];
  }

  return data != 0;
}

- (BOOL)bindData:(id)data error:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy)
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
        callStackSymbols = [v37 callStackSymbols];
        v40 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v57 = v36;
        v58 = 2114;
        v59 = v40;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v57 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort bindData:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 792, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "data != nil");
  }

  if (!error)
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
        callStackSymbols3 = [v46 callStackSymbols];
        v49 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v57 = v45;
        v58 = 2114;
        v59 = v49;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v57 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort bindData:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 793, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "error != NULL");
  }

  v8 = dataCopy;
  channel = [(_NUChannelPort *)self channel];
  format = [channel format];
  format2 = [v8 format];
  v12 = [format isCompatibleWithChannelFormat:format2];

  if (v12)
  {
    objc_storeStrong(&self->_data, data);
    channel2 = [(_NUChannelPort *)self channel];
    format3 = [channel2 format];
    isGeneric = [format3 isGeneric];

    if (isGeneric)
    {
      format4 = [v8 format];
      [(_NUChannelPort *)self specializeWithInputFormat:format4];
    }
  }

  else
  {
    v54[0] = @"format";
    format5 = [v8 format];
    v54[1] = @"expected";
    v55[0] = format5;
    channel3 = [(_NUChannelPort *)self channel];
    format6 = [channel3 format];
    v55[1] = format6;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
    *error = [NUError invalidError:@"Incompatible data" object:v20];
  }

  return v12;
}

- (NSString)compactDescription
{
  v3 = MEMORY[0x1E696AEC0];
  pipeline = [(_NUChannelPort *)self pipeline];
  alias = [pipeline alias];
  address = [(_NUChannelPort *)self address];
  v7 = [v3 stringWithFormat:@"%@:%@", alias, address];

  return v7;
}

- (NSString)address
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
  superport = [(_NUChannelPort *)selfCopy superport];

  if (superport)
  {
    do
    {
      superport2 = [(_NUChannelPort *)selfCopy superport];
      subports = [superport2 subports];
      v8 = [subports indexOfObjectIdenticalTo:selfCopy];

      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
      [v3 insertObject:v9 atIndex:0];

      superport3 = [(_NUChannelPort *)selfCopy superport];

      v10Superport = [(_NUChannelPort *)superport3 superport];

      selfCopy = superport3;
    }

    while (v10Superport);
  }

  else
  {
    superport3 = selfCopy;
  }

  pipeline = [(_NUChannelPort *)superport3 pipeline];
  channel = [(_NUChannelPort *)superport3 channel];
  v14 = [pipeline outputPortForChannel:channel];

  pipeline2 = [(_NUChannelPort *)superport3 pipeline];
  pipeline3 = pipeline2;
  if (v14 == superport3)
  {
    [pipeline2 outputChannels];
  }

  else
  {
    [pipeline2 inputChannels];
  }
  inputChannels = ;
  channel2 = [(_NUChannelPort *)superport3 channel];
  v19 = [inputChannels indexOfObject:channel2];

  if (v14 == superport3)
  {

    pipeline3 = [(_NUChannelPort *)superport3 pipeline];
    inputChannels = [pipeline3 inputChannels];
    v20 = [inputChannels count];
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
  pipeline = [(_NUChannelPort *)self pipeline];
  name = [pipeline name];
  fullName = [(_NUChannelPort *)self fullName];
  effectiveFormat = [(_NUChannelPort *)self effectiveFormat];
  data = [(_NUChannelPort *)self data];
  v10 = [v3 stringWithFormat:@"<%@:%p pipeline:'%@' name:'%@' format:'%@' data:%@>", v4, self, name, fullName, effectiveFormat, data];

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  pipeline = [(_NUChannelPort *)self pipeline];
  name = [pipeline name];
  fullName = [(_NUChannelPort *)self fullName];
  v7 = [v3 stringWithFormat:@"%@:%@", name, fullName];

  return v7;
}

- (id)_fullName
{
  superport = [(_NUChannelPort *)self superport];

  if (superport)
  {
    channel2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    selfCopy = self;
    do
    {
      channel = [(_NUChannelPort *)selfCopy channel];
      name = [channel name];
      [channel2 insertObject:name atIndex:0];

      superport2 = [(_NUChannelPort *)selfCopy superport];

      selfCopy = superport2;
    }

    while (superport2);
    name2 = [channel2 componentsJoinedByString:@"."];
  }

  else
  {
    channel2 = [(_NUChannelPort *)self channel];
    name2 = [channel2 name];
  }

  v10 = name2;

  return v10;
}

- (NSString)fullName
{
  fullName = self->_fullName;
  if (!fullName)
  {
    _fullName = [(_NUChannelPort *)self _fullName];
    v5 = self->_fullName;
    self->_fullName = _fullName;

    fullName = self->_fullName;
  }

  return fullName;
}

- (void)specializeWithInputFormat:(id)format
{
  v54 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  if (!formatCopy)
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
        callStackSymbols = [v32 callStackSymbols];
        v35 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v31;
        v52 = 2114;
        v53 = v35;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort specializeWithInputFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 708, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "inputFormat != nil");
  }

  v5 = formatCopy;
  channel = [(_NUChannelPort *)self channel];
  format = [channel format];
  v8 = [v5 canSpecializeFormat:format];

  if (v8)
  {
    channel2 = [(_NUChannelPort *)self channel];
    format2 = [channel2 format];
    v11 = [format2 specializedWithFormat:v5];

    specializedInputFormat = [(_NUChannelPort *)self specializedInputFormat];
    LOBYTE(format2) = [specializedInputFormat isEqualToChannelFormat:v11];

    if ((format2 & 1) == 0)
    {
      [(_NUChannelPort *)self setSpecializedInputFormat:v11];
      if ([(_NUChannelPort *)self hasConnections])
      {
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        superport2 = self->_outputPorts;
        v14 = [(NSHashTable *)superport2 countByEnumeratingWithState:&v44 objects:v49 count:16];
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
                objc_enumerationMutation(superport2);
              }

              [*(*(&v44 + 1) + 8 * i) specializeWithInputFormat:v11];
            }

            v15 = [(NSHashTable *)superport2 countByEnumeratingWithState:&v44 objects:v49 count:16];
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
        superport2 = self->_subports;
        v18 = [(NSHashTable *)superport2 countByEnumeratingWithState:&v40 objects:v48 count:16];
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
                objc_enumerationMutation(superport2);
              }

              [*(*(&v40 + 1) + 8 * j) specializeWithInputFormat:v11];
            }

            v19 = [(NSHashTable *)superport2 countByEnumeratingWithState:&v40 objects:v48 count:16];
          }

          while (v19);
        }
      }

      else
      {
        superport = [(_NUChannelPort *)self superport];

        if (!superport)
        {
          pipeline = [(_NUChannelPort *)self pipeline];
          [pipeline propagateSpecializedInputFormat:v11 fromPort:self];

          goto LABEL_25;
        }

        superport2 = [(_NUChannelPort *)self superport];
        [(NSHashTable *)superport2 specializeWithInputFormat:v11];
      }
    }

LABEL_25:
  }
}

- (void)specializeWithOutputFormat:(id)format
{
  v62 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  if (!formatCopy)
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
        callStackSymbols = [v40 callStackSymbols];
        v43 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v59 = v39;
        v60 = 2114;
        v61 = v43;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v59 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort specializeWithOutputFormat:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 671, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "outputFormat != nil");
  }

  v5 = formatCopy;
  channel = [(_NUChannelPort *)self channel];
  format = [channel format];
  v8 = [v5 canSpecializeFormat:format];

  if (v8)
  {
    channel2 = [(_NUChannelPort *)self channel];
    format2 = [channel2 format];
    v11 = [format2 specializedWithFormat:v5];

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
          specializedOutputFormat = [v17 specializedOutputFormat];
          v19 = specializedOutputFormat;
          if (specializedOutputFormat)
          {
            format3 = specializedOutputFormat;
          }

          else
          {
            channel3 = [v17 channel];
            format3 = [channel3 format];
          }

          if ([format3 canSpecializeFormat:v11])
          {
            v22 = [v11 specializedWithFormat:format3];

            v11 = v22;
          }
        }

        v14 = [(NSHashTable *)v12 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v14);
    }

    specializedOutputFormat2 = [(_NUChannelPort *)self specializedOutputFormat];
    v24 = [specializedOutputFormat2 isEqualToChannelFormat:v11];

    if ((v24 & 1) == 0)
    {
      [(_NUChannelPort *)self setSpecializedOutputFormat:v11];
      effectiveFormat = [(_NUChannelPort *)self effectiveFormat];
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

            [*(*(&v48 + 1) + 8 * j) specializeWithInputFormat:effectiveFormat];
          }

          v28 = [(NSHashTable *)v26 countByEnumeratingWithState:&v48 objects:v56 count:16];
        }

        while (v28);
      }

      if ([(_NUChannelPort *)self isConnected])
      {
        inputPort = [(_NUChannelPort *)self inputPort];
        [inputPort specializeWithOutputFormat:v11];
      }

      else
      {
        inputPort = [(_NUChannelPort *)self pipeline];
        [inputPort propagateSpecializedOutputFormat:v11 fromPort:self];
      }
    }
  }
}

- (NUChannelFormat)effectiveFormat
{
  specializedInputFormat = [(_NUChannelPort *)self specializedInputFormat];

  if (specializedInputFormat)
  {
    specializedInputFormat2 = [(_NUChannelPort *)self specializedInputFormat];
LABEL_5:
    format = specializedInputFormat2;
    goto LABEL_6;
  }

  specializedOutputFormat = [(_NUChannelPort *)self specializedOutputFormat];

  if (specializedOutputFormat)
  {
    specializedInputFormat2 = [(_NUChannelPort *)self specializedOutputFormat];
    goto LABEL_5;
  }

  channel = [(_NUChannelPort *)self channel];
  format = [channel format];

LABEL_6:

  return format;
}

- (_NUChannelPort)rootPort
{
  selfCopy = self;
  superport = [(_NUChannelPort *)selfCopy superport];

  if (superport)
  {
    do
    {
      superport2 = [(_NUChannelPort *)selfCopy superport];

      v4Superport = [(_NUChannelPort *)superport2 superport];

      selfCopy = superport2;
    }

    while (v4Superport);
  }

  else
  {
    superport2 = selfCopy;
  }

  return superport2;
}

- (NSArray)subports
{
  allObjects = [(NSHashTable *)self->_subports allObjects];
  v3 = [allObjects sortedArrayUsingComparator:&__block_literal_global_231_6020];

  return v3;
}

- (id)subportForKey:(id)key
{
  v29 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (!keyCopy)
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

    _NUAssertFailHandler("[_NUChannelPort subportForKey:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 633, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "key != nil");
  }

  v5 = keyCopy;
  v6 = [NUChannelMatching name:keyCopy];
  v7 = [(_NUChannelPort *)self subportMatching:v6];

  return v7;
}

- (id)_subportMatching:(id)matching
{
  matchingCopy = matching;
  if (matchingCopy)
  {
    if (!self->_subports)
    {
      [(_NUChannelPort *)self _populateAllSubports];
    }

    v9 = matchingCopy;
    v5 = PFFind();
    subsequentMatching = [v9 subsequentMatching];
    selfCopy = [v5 _subportMatching:subsequentMatching];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
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
    channel = [(_NUChannelPort *)self channel];
    elementSubchannel = [channel elementSubchannel];

    if (elementSubchannel)
    {
      v3 = [[_NUChannelPort alloc] initWithChannel:elementSubchannel];
      [(_NUChannelPort *)v3 setSuperport:self];
      pipeline = [(_NUChannelPort *)self pipeline];
      [(_NUChannelPort *)v3 setPipeline:pipeline];

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
  subchannels = [(NUChannel *)self->_channel subchannels];
  v6 = [subchannels countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(subchannels);
        }

        v10 = [[_NUChannelPort alloc] initWithChannel:*(*(&v12 + 1) + 8 * v9)];
        [(_NUChannelPort *)v10 setSuperport:self];
        pipeline = [(_NUChannelPort *)self pipeline];
        [(_NUChannelPort *)v10 setPipeline:pipeline];

        [(NSHashTable *)self->_subports addObject:v10];
        ++v9;
      }

      while (v7 != v9);
      v7 = [subchannels countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)subportMatching:(id)matching
{
  v28 = *MEMORY[0x1E69E9840];
  matchingCopy = matching;
  if (!matchingCopy)
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
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort subportMatching:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 570, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "matching != nil");
  }

  v5 = matchingCopy;
  v6 = [(_NUChannelPort *)self _subportMatching:matchingCopy];

  return v6;
}

- (void)_removeOutputPort:(id)port
{
  v42 = *MEMORY[0x1E69E9840];
  portCopy = port;
  if (!portCopy)
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
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v39 = v19;
        v40 = 2114;
        v41 = v23;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v9)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = v11;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort _removeOutputPort:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 564, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "port != nil");
  }

  v37 = portCopy;
  if (![(NSHashTable *)self->_outputPorts containsObject:portCopy])
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
        callStackSymbols3 = [v29 callStackSymbols];
        v32 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v39 = v28;
        v40 = 2114;
        v41 = v32;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort _removeOutputPort:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 565, @"Not a connected port: %@", v33, v34, v35, v36, v37);
  }

  [(NSHashTable *)self->_outputPorts removeObject:v37];
}

- (void)_addOutputPort:(id)port
{
  v46 = *MEMORY[0x1E69E9840];
  portCopy = port;
  if (!portCopy)
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
        callStackSymbols = [v24 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v23;
        v44 = 2114;
        v45 = v27;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort _addOutputPort:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 554, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "port != nil");
  }

  v5 = portCopy;
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
        callStackSymbols3 = [v33 callStackSymbols];
        v36 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v32;
        v44 = 2114;
        v45 = v36;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols4 componentsJoinedByString:@"\n"];
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
  superport = [(_NUChannelPort *)self superport];
  v3 = superport;
  if (superport)
  {
    if ([superport hasConnections])
    {
      hasSuperConnections = 1;
    }

    else
    {
      hasSuperConnections = [v3 hasSuperConnections];
    }
  }

  else
  {
    hasSuperConnections = 0;
  }

  return hasSuperConnections;
}

- (BOOL)hasConnectedSuperport
{
  superport = [(_NUChannelPort *)self superport];
  v3 = superport;
  if (superport)
  {
    if ([superport isConnected])
    {
      hasConnectedSuperport = 1;
    }

    else
    {
      hasConnectedSuperport = [v3 hasConnectedSuperport];
    }
  }

  else
  {
    hasConnectedSuperport = 0;
  }

  return hasConnectedSuperport;
}

- (NSArray)connectedInputPorts
{
  allObjects = [(NSHashTable *)self->_outputPorts allObjects];
  v3 = allObjects;
  if (allObjects)
  {
    v4 = allObjects;
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
    anyObject = [(NSHashTable *)self->_outputPorts anyObject];
    [anyObject disconnect];
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
        callStackSymbols = [v13 callStackSymbols];
        v16 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v21 = 138543618;
        *&v21[4] = v12;
        v22 = 2114;
        v23 = v16;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v21, 0x16u);
      }
    }

    else if (v9)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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

- (void)connectToPort:(id)port
{
  v51 = *MEMORY[0x1E69E9840];
  portCopy = port;
  if (!portCopy)
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

    _NUAssertFailHandler("[_NUChannelPort connectToPort:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 468, @"Already connected", v41, v42, v43, v44, v45);
  }

  objc_storeStrong(&self->_inputPort, port);
  [(_NUChannelPort *)self->_inputPort _addOutputPort:self];
  channel = [portCopy channel];
  format = [channel format];
  isGeneric = [format isGeneric];

  if (isGeneric)
  {
    effectiveFormat = [(_NUChannelPort *)self effectiveFormat];
    [portCopy specializeWithOutputFormat:effectiveFormat];
  }

  channel2 = [(_NUChannelPort *)self channel];
  format2 = [channel2 format];
  isGeneric2 = [format2 isGeneric];

  if (isGeneric2)
  {
    effectiveFormat2 = [portCopy effectiveFormat];
    [(_NUChannelPort *)self specializeWithInputFormat:effectiveFormat2];
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
  isConnected = [(_NUChannelPort *)self isConnected];
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

          isConnected += [*(*(&v10 + 1) + 8 * v8++) inputConnectionCount];
        }

        while (v6 != v8);
        v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  return isConnected;
}

- (_NUChannelPort)initWithChannel:(id)channel
{
  v30 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  if (!channelCopy)
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
        callStackSymbols = [v17 callStackSymbols];
        v20 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v16;
        v28 = 2114;
        v29 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUChannelPort initWithChannel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 438, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "channel != nil");
  }

  v5 = channelCopy;
  v25.receiver = self;
  v25.super_class = _NUChannelPort;
  v6 = [(_NUChannelPort *)&v25 init];
  channel = v6->_channel;
  v6->_channel = v5;

  return v6;
}

@end