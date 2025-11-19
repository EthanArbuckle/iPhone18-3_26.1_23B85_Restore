@interface MRSetNowPlayingInfo
@end

@implementation MRSetNowPlayingInfo

void ___MRSetNowPlayingInfo_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___MRSetNowPlayingInfo_block_invoke_2;
  v7[3] = &unk_1E769AB28;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t ___MRSetNowPlayingInfo_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

uint64_t ___MRSetNowPlayingInfo_block_invoke_46(uint64_t a1, void *a2)
{
  v3 = _MRNowPlayingInfoAnimatedArtworkIdentifierKeyForFormat(a2);
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKey:v3];
    v5 = [*(a1 + 40) objectForKey:v3];
    if (v4 == v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = [v4 isEqualToString:v5] ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id ___MRSetNowPlayingInfo_block_invoke_2_50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = _MRNowPlayingInfoAnimatedArtworkIdentifierKeyForFormat(v3);
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%@", v3, v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end