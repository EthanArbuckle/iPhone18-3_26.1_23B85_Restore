@interface NUImageAsset
@end

@implementation NUImageAsset

void __45___NUImageAsset__loadMediaWithOptions_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setAuxiliaryImageType:a2];
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 24);
  v23 = 0;
  v6 = [v5 preparedSourceNodeForPipelineState:v4 pipelineSettings:MEMORY[0x1E695E0F8] sourceSettings:MEMORY[0x1E695E0F8] error:&v23];
  v7 = v23;
  if (v6)
  {
    v22 = 0;
    v8 = [v6 outputImageGeometry:&v22];
    v9 = v22;

    if (v8)
    {
      v10 = [NUChannel channelForAuxiliaryImageType:a2];
      v11 = [v10 format];
      v12 = +[NUChannelImageMediaFormat stillImageFormat:](NUChannelImageMediaFormat, "stillImageFormat:", [v11 imageMediaType]);

      v13 = [_NUImageAssetMedia alloc];
      v14 = *(a1 + 40);
      v15 = [v8 mediaGeometry];
      v16 = [(_NUImageAssetMedia *)v13 initWithImageAsset:v14 auxImageType:a2 format:v12 geometry:v15];

      v17 = [[_NURenderMedia alloc] initWithBaseMedia:v16 renderNode:v6];
      v18 = *(a1 + 48);
      v19 = [v10 name];
      [v18 setObject:v17 forKeyedSubscript:v19];
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_417_10867);
      }

      v21 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v25 = v9;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Error evaluating auxiliary image geometry: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_417_10867);
    }

    v20 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v7;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Error preparing auxiliary image source node: %{public}@", buf, 0xCu);
    }

    v9 = v7;
  }
}

@end