@interface MRNowPlayingInfoSerialization
@end

@implementation MRNowPlayingInfoSerialization

uint64_t ___MRNowPlayingInfoSerialization_block_invoke()
{
  v0 = objc_opt_new();
  v1 = _MRNowPlayingInfoSerialization___serialization;
  _MRNowPlayingInfoSerialization___serialization = v0;

  v2 = _MRNowPlayingInfoSerialization___serialization;
  v3 = _MRNowPlayingInfoDictionaryKeyToProtobufKeyMapping();
  [v2 setDictionaryKeyToProtobufKeyMapping:v3];

  [_MRNowPlayingInfoSerialization___serialization setProtobufClass:objc_opt_class()];
  [_MRNowPlayingInfoSerialization___serialization setDictionaryValueToProtobufValueTransformer:&__block_literal_global_233];
  v4 = _MRNowPlayingInfoSerialization___serialization;

  return [v4 setProtobufValueToDictionaryValueTransformer:&__block_literal_global_235];
}

id ___MRNowPlayingInfoSerialization_block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"kMRMediaRemoteNowPlayingInfoStartTime"] || objc_msgSend(v5, "isEqualToString:", @"kMRMediaRemoteNowPlayingInfoTimestamp"))
  {
    v7 = MEMORY[0x1E696AD98];
    [v6 timeIntervalSinceReferenceDate];
    v8 = [v7 numberWithDouble:?];
LABEL_4:
    v9 = v8;

    v6 = v9;
    goto LABEL_5;
  }

  if ([v5 isEqualToString:@"kMRMediaRemoteNowPlayingInfoRepeatMode"] || objc_msgSend(v5, "isEqualToString:", @"kMRMediaRemoteNowPlayingInfoShuffleMode"))
  {
    v11 = [v6 unsignedIntValue];
    if (v11 - 1 >= 3)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    v8 = [MEMORY[0x1E696AD98] numberWithInt:v12];
    goto LABEL_4;
  }

LABEL_5:

  return v6;
}

id ___MRNowPlayingInfoSerialization_block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = NSStringFromSelector(sel_timestamp);
  v8 = [v5 isEqualToString:v7];

  if (v8)
  {
    v9 = MEMORY[0x1E695DF00];
    [v6 doubleValue];
    v10 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
LABEL_9:
    v17 = v10;

    v6 = v17;
    goto LABEL_10;
  }

  v11 = NSStringFromSelector(sel_repeatMode);
  v12 = [v5 isEqualToString:v11];

  if (v12 || (NSStringFromSelector(sel_shuffleMode), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v5 isEqualToString:v13], v13, v14))
  {
    v15 = [v6 unsignedIntValue];
    if (v15 - 1 >= 3)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithInt:v16];
    goto LABEL_9;
  }

LABEL_10:

  return v6;
}

@end