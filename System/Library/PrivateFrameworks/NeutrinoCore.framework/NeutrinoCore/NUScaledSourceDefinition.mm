@interface NUScaledSourceDefinition
- ($0AC6E346AE4835514AAA8AC86D8F4844)fullSize;
- ($0AC6E346AE4835514AAA8AC86D8F4844)scale;
- ($0AC6E346AE4835514AAA8AC86D8F4844)sourceSize;
- (NUScaledSourceDefinition)initWithSourceDefinition:(id)a3 sourceSize:(id)a4 fullSize:(id)a5;
- (id)sourceContainerNodeWithIdentifier:(id)a3 error:(id *)a4;
@end

@implementation NUScaledSourceDefinition

- (id)sourceContainerNodeWithIdentifier:(id)a3 error:(id *)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    v23 = NUAssertLogger_8665();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v42 = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_8665();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        v33 = [v31 callStackSymbols];
        v34 = [v33 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v30;
        v43 = 2114;
        v44 = v34;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUScaledSourceDefinition(NodeProvider) sourceContainerNodeWithIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderSourceNode.m", 475, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "error != NULL");
  }

  v7 = v6;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc(MEMORY[0x1E695F658]);
  v10 = [MEMORY[0x1E695F610] whiteColor];
  v11 = [v9 initWithColor:v10];

  v12 = [(NUScaledSourceDefinition *)self fullSize];
  [(NUScaledSourceDefinition *)self fullSize];
  v14 = [v11 imageByCroppingToRect:{0.0, 0.0, v12, v13}];

  v15 = [[NUCIImageSourceDefinition alloc] initWithCIImage:v14 orientation:1];
  v40 = 0;
  v16 = [(NUCIImageSourceDefinition *)v15 generateSourceNodeWithIdentifier:v7 error:&v40];
  v17 = v40;
  if (v16)
  {
    v18 = [(NUScaledSourceDefinition *)self source];
    v39 = 0;
    v19 = [v18 generateSourceNodeWithIdentifier:v7 error:&v39];
    v20 = v39;

    if (v19)
    {
      [v8 addObject:v16];
      [v8 addObject:v19];
      v21 = [(NUMultipleSourceContainerNode *)[NUScaledSourceContainerNode alloc] initWithSourceNodes:v8 assetIdentifier:v7];
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to generate source node" object:v7 underlyingError:v20];
      *a4 = v21 = 0;
    }
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to generate dummy full size source node" object:v7 underlyingError:v17];
    *a4 = v21 = 0;
    v20 = v17;
  }

  return v21;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)fullSize
{
  objc_copyStruct(v4, &self->_fullSize, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)sourceSize
{
  objc_copyStruct(v4, &self->_sourceSize, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)scale
{
  v3 = objc_alloc_init(NUDefaultSourceDerivation);
  v4 = [(NUDefaultSourceDerivation *)v3 scaleFromOriginalSize:self->_fullSize.width derivativeSize:self->_fullSize.height, self->_sourceSize.width, self->_sourceSize.height];
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (NUScaledSourceDefinition)initWithSourceDefinition:(id)a3 sourceSize:(id)a4 fullSize:(id)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v7 = a4.var1;
  v8 = a4.var0;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = NUScaledSourceDefinition;
  v11 = [(NUSingleSourceDefinition *)&v14 init];
  source = v11->_source;
  v11->_source = v10;

  v11->_sourceSize.width = v8;
  v11->_sourceSize.height = v7;
  v11->_fullSize.width = var0;
  v11->_fullSize.height = var1;
  return v11;
}

@end