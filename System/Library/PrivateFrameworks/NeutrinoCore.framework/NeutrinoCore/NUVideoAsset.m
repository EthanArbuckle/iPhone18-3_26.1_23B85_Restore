@interface NUVideoAsset
@end

@implementation NUVideoAsset

void __45___NUVideoAsset__loadMediaWithOptions_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = NUAuxiliaryImageTypeFromString(a2);
  [*(a1 + 32) setAuxiliaryImageType:v6];
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 24);
  v31 = 0;
  v9 = [v8 preparedSourceNodeForPipelineState:v7 pipelineSettings:MEMORY[0x1E695E0F8] sourceSettings:MEMORY[0x1E695E0F8] error:&v31];
  v10 = v31;
  if (v9)
  {
    v11 = [*(a1 + 48) tracks];
    v28 = v5;
    v30 = v5;
    v12 = PFFind();

    v13 = [NUChannel channelForAuxiliaryImageType:v6];
    v14 = [_NUMediaGeometry alloc];
    v15 = [v30 size];
    v17 = v16;
    v18 = [*(a1 + 56) orientation];
    v19 = v10;
    if (v12)
    {
      [v12 timeRange];
    }

    else
    {
      memset(v29, 0, sizeof(v29));
    }

    *buf = *(v29 + 8);
    v33 = *(&v29[1] + 1);
    v21 = [(_NUMediaGeometry *)v14 initWithSize:v15 orientation:v17 duration:v18, buf];
    v22 = [v13 format];
    v23 = +[NUChannelImageMediaFormat videoImageFormat:](NUChannelImageMediaFormat, "videoImageFormat:", [v22 imageMediaType]);

    v24 = [[_NUVideoAssetMedia alloc] initWithVideoAsset:*(a1 + 40) track:v12 format:v23 geometry:v21];
    v25 = [[_NURenderMedia alloc] initWithBaseMedia:v24 renderNode:v9];
    v26 = *(a1 + 64);
    v27 = [v13 name];
    [v26 setObject:v25 forKeyedSubscript:v27];

    v10 = v19;
    v5 = v28;
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
      *&buf[4] = v10;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Error preparing auxiliary image source node: %{public}@", buf, 0xCu);
    }
  }
}

@end