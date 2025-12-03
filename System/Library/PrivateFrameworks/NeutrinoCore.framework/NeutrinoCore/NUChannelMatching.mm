@interface NUChannelMatching
+ (NUChannelMatching)primary;
+ (id)channel:(id)channel;
+ (id)format:(id)format;
+ (id)image:(int64_t)image;
+ (id)media:(int64_t)media;
+ (id)name:(id)name;
+ (id)type:(int64_t)type;
+ (id)video:(int64_t)video;
- (BOOL)match:(id)match;
- (id)subchannel:(id)subchannel;
@end

@implementation NUChannelMatching

- (id)subchannel:(id)subchannel
{
  v31 = *MEMORY[0x1E69E9840];
  subchannelCopy = subchannel;
  if (!subchannelCopy)
  {
    v10 = NUAssertLogger_4187();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "matching != nil"];
      *buf = 138543362;
      v28 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_4187();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        callStackSymbols = [v18 callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v17;
        v29 = 2114;
        v30 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUChannelMatching subchannel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2637, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "matching != nil");
  }

  v5 = subchannelCopy;
  v6 = [NUChannelSequenceMatching alloc];
  v26[0] = self;
  v26[1] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v8 = [(NUChannelSequenceMatching *)v6 initWithMatchingSequence:v7];

  return v8;
}

+ (NUChannelMatching)primary
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = [[NUChannelNameMatching alloc] initWithName:@"primary"];
  v3 = [[NUChannelNameMatching alloc] initWithName:@"inputImage"];
  v4 = [[NUChannelNameMatching alloc] initWithName:@"outputImage"];
  v5 = [NUChannelAnyMatching alloc];
  v15[0] = v2;
  v15[1] = v3;
  v15[2] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  v7 = [(NUChannelAnyMatching *)v5 initWithPredicates:v6];

  v8 = +[NUChannelImageMediaFormat genericImageFormat];
  v9 = [[NUChannelFormatMatching alloc] initWithChannelFormat:v8];
  v10 = [NUChannelAllMatching alloc];
  v14[0] = v7;
  v14[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v12 = [(NUChannelAnyMatching *)v10 initWithPredicates:v11];

  return v12;
}

+ (id)channel:(id)channel
{
  v36 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  if (!channelCopy)
  {
    v15 = NUAssertLogger_4187();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "channel != nil"];
      *buf = 138543362;
      v33 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_4187();
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
        v33 = v22;
        v34 = 2114;
        v35 = v26;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUChannelMatching channel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2610, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "channel != nil");
  }

  v4 = channelCopy;
  v5 = [NUChannelNameMatching alloc];
  name = [v4 name];
  v7 = [(NUChannelNameMatching *)v5 initWithName:name];

  v8 = [NUChannelFormatMatching alloc];
  format = [v4 format];
  v10 = [(NUChannelFormatMatching *)v8 initWithChannelFormat:format];

  v11 = [NUChannelAllMatching alloc];
  v31[0] = v7;
  v31[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v13 = [(NUChannelAnyMatching *)v11 initWithPredicates:v12];

  return v13;
}

+ (id)video:(int64_t)video
{
  v3 = [NUChannelImageMediaFormat videoImageFormat:video];
  v4 = [[NUChannelFormatMatching alloc] initWithChannelFormat:v3];

  return v4;
}

+ (id)image:(int64_t)image
{
  v3 = [NUChannelImageMediaFormat stillImageFormat:image];
  v4 = [[NUChannelFormatMatching alloc] initWithChannelFormat:v3];

  return v4;
}

+ (id)media:(int64_t)media
{
  v3 = [[NUChannelMediaTypeMatching alloc] initWithMediaType:media];

  return v3;
}

+ (id)format:(id)format
{
  formatCopy = format;
  v4 = [[NUChannelFormatMatching alloc] initWithChannelFormat:formatCopy];

  return v4;
}

+ (id)type:(int64_t)type
{
  v3 = [[NUChannelTypeMatching alloc] initWithChannelType:type];

  return v3;
}

+ (id)name:(id)name
{
  nameCopy = name;
  v4 = [[NUChannelNameMatching alloc] initWithName:nameCopy];

  return v4;
}

- (BOOL)match:(id)match
{
  v33 = *MEMORY[0x1E69E9840];
  matchCopy = match;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
  }

  v4 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = v4;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v5 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_1367);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v11 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      callStackSymbols = [v12 callStackSymbols];
      v15 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v15;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v16 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = MEMORY[0x1E696AF00];
    v19 = specific;
    v20 = v16;
    callStackSymbols2 = [v18 callStackSymbols];
    v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v30 = specific;
    v31 = 2114;
    v32 = v22;
    _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  _NUAssertFailHandler("[NUChannelMatching match:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUChannel.m", 2628, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v25, v26, v27, v28, v24);
}

@end