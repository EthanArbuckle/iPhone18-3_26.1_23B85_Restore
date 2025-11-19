@interface NSObject(MusicKit_SoftLinking_MPCPlayerResponseItem)
- (double)musicKit_playerResponseItem_elapsedTime;
- (id)_musicKit_self_responseItem;
- (id)musicKit_playerResponseItem_contentItemIdentifier;
- (id)musicKit_playerResponseItem_nowPlayingAudioFormat;
- (id)musicKit_playerResponseItem_removeCommandRequest;
- (id)musicKit_playerResponseItem_seekCommand;
- (id)musicKit_playerResponseItem_underlyingModelObject;
- (uint64_t)musicKit_playerResponseItem_isPlaceholder;
- (void)_durationSnapshot;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerResponseItem)

- (id)_musicKit_self_responseItem
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getMPCPlayerResponseItemClass_softClass;
  v10 = getMPCPlayerResponseItemClass_softClass;
  if (!getMPCPlayerResponseItemClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getMPCPlayerResponseItemClass_block_invoke;
    v6[3] = &unk_1E84C3838;
    v6[4] = &v7;
    __getMPCPlayerResponseItemClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  if (objc_opt_isKindOfClass())
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)musicKit_playerResponseItem_underlyingModelObject
{
  v1 = [a1 _musicKit_self_responseItem];
  v2 = [v1 metadataObject];

  return v2;
}

- (id)musicKit_playerResponseItem_contentItemIdentifier
{
  v1 = [a1 _musicKit_self_responseItem];
  v2 = [v1 contentItemIdentifier];

  return v2;
}

- (void)_durationSnapshot
{
  v3 = [a1 _musicKit_self_responseItem];
  if (v3)
  {
    v4 = v3;
    [v3 duration];
    v3 = v4;
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }
}

- (double)musicKit_playerResponseItem_elapsedTime
{
  [a1 _durationSnapshot];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v2 = v6 + (v1 - v4) * v7;
  if (v2 >= v5)
  {
    v2 = v5;
  }

  return fmax(v2, 0.0);
}

- (uint64_t)musicKit_playerResponseItem_isPlaceholder
{
  v1 = [a1 _musicKit_self_responseItem];
  v2 = [v1 isPlaceholder];

  return v2;
}

- (id)musicKit_playerResponseItem_nowPlayingAudioFormat
{
  v1 = [a1 _musicKit_self_responseItem];
  v2 = [v1 nowPlayingAudioFormat];

  return v2;
}

- (id)musicKit_playerResponseItem_seekCommand
{
  v1 = [a1 _musicKit_self_responseItem];
  v2 = [v1 seekCommand];

  return v2;
}

- (id)musicKit_playerResponseItem_removeCommandRequest
{
  v1 = [a1 _musicKit_self_responseItem];
  v2 = [v1 remove];

  return v2;
}

@end