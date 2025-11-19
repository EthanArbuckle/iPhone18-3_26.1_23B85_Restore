@interface AVPlayer(RE)
- (double)videoTrackNaturalSize;
- (id)addEndpoint:()RE;
- (void)removeEndpoint:()RE;
@end

@implementation AVPlayer(RE)

- (id)addEndpoint:()RE
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "endpoint", "[AVPlayer(RE) addEndpoint:]", 85);
    _os_crash();
    __break(1u);
  }

  CFAllocatorGetDefault();
  v6 = FigVideoTargetCreateWithVideoReceiverEndpointID();
  v7 = v6;
  if (v6)
  {
    v8 = *re::assetTypesLogObjects(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v11 = v7;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Failed to create video target from endpoint (error: %d)", buf, 8u);
    }
  }

  else
  {
    [a1 addVideoTarget:0];
  }

  return 0;
}

- (void)removeEndpoint:()RE
{
  v4 = a3;
  if (v4)
  {
    [a1 removeVideoTarget:v4];
  }
}

- (double)videoTrackNaturalSize
{
  v1 = [a1 currentItem];
  v2 = [v1 asset];
  v3 = [v2 tracksWithMediaType:*MEMORY[0x1E6987608]];

  v4 = 0.0;
  if (v3 && [v3 count])
  {
    v5 = [v3 objectAtIndexedSubscript:0];
    [v5 naturalSize];
    v4 = v6;
  }

  return v4;
}

@end