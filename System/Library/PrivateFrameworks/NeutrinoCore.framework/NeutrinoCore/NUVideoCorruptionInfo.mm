@interface NUVideoCorruptionInfo
- (NUVideoCorruptionInfo)initWithType:(unint64_t)a3;
- (NUVideoCorruptionInfo)initWithType:(unint64_t)a3 corruptedRanges:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation NUVideoCorruptionInfo

- (id)description
{
  v3 = [(NUVideoCorruptionInfo *)self type];
  if (v3 <= 2)
  {
    v5 = @"Unknown";
    v6 = @"CorruptedMainVideoTrack";
    v7 = @"DuplicatePTSInMainVideo";
    if (v3 != 2)
    {
      v7 = 0;
    }

    if (v3 != 1)
    {
      v6 = v7;
    }

    v8 = v3 == 0;
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 == 3)
      {
        v15 = MEMORY[0x1E696AEC0];
        v16 = [(NUVideoCorruptionInfo *)self trackMediaCharateristic];
        v4 = [v15 stringWithFormat:@"MissingAuxiliaryTrack (%@)", v16];
      }

      else
      {
        v4 = @"MalformedDeltaTrack";
      }

      goto LABEL_16;
    }

    v5 = @"MissingStyleMetadataTrack";
    v6 = @"MalformedStyleMetadataTrack";
    if (v3 != 6)
    {
      v6 = 0;
    }

    v8 = v3 == 5;
  }

  if (v8)
  {
    v4 = v5;
  }

  else
  {
    v4 = v6;
  }

LABEL_16:
  v9 = [(NUVideoCorruptionInfo *)self corruptedRanges];
  v10 = PFMap();

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Issue: %@", v4];
  if (v10)
  {
    v12 = [v10 componentsJoinedByString:{@", "}];
    v13 = [v11 stringByAppendingFormat:@" time: %@", v12];

    v11 = v13;
  }

  return v11;
}

id __36__NUVideoCorruptionInfo_description__block_invoke(int a1, CFDictionaryRef dictionaryRepresentation)
{
  memset(&v7, 0, sizeof(v7));
  CMTimeRangeMakeFromDictionary(&v7, dictionaryRepresentation);
  time = v7.start;
  v2 = CMTimeCopyDescription(0, &time);
  time = v7.duration;
  v3 = CMTimeCopyDescription(0, &time);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@x%@]", v2, v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(NUVideoCorruptionInfo);
  v6 = [(NSArray *)self->_corruptedRanges copyWithZone:a3];
  corruptedRanges = v5->_corruptedRanges;
  v5->_corruptedRanges = v6;

  v5->_type = self->_type;
  return v5;
}

- (NUVideoCorruptionInfo)initWithType:(unint64_t)a3 corruptedRanges:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (!v6)
  {
    v12 = NUAssertLogger_15131();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "ranges != nil"];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_15131();
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

    _NUAssertFailHandler("[NUVideoCorruptionInfo initWithType:corruptedRanges:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUVideoUtilities.m", 79, @"Invalid parameter not satisfying: %s", v24, v25, v26, v27, "ranges != nil");
  }

  v7 = v6;
  v8 = [(NUVideoCorruptionInfo *)self initWithType:a3];
  v9 = [v7 copy];
  corruptedRanges = v8->_corruptedRanges;
  v8->_corruptedRanges = v9;

  return v8;
}

- (NUVideoCorruptionInfo)initWithType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = NUVideoCorruptionInfo;
  result = [(NUVideoCorruptionInfo *)&v5 init];
  result->_type = a3;
  return result;
}

@end