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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)musicKit_playerResponseItem_underlyingModelObject
{
  _musicKit_self_responseItem = [self _musicKit_self_responseItem];
  metadataObject = [_musicKit_self_responseItem metadataObject];

  return metadataObject;
}

- (id)musicKit_playerResponseItem_contentItemIdentifier
{
  _musicKit_self_responseItem = [self _musicKit_self_responseItem];
  contentItemIdentifier = [_musicKit_self_responseItem contentItemIdentifier];

  return contentItemIdentifier;
}

- (void)_durationSnapshot
{
  _musicKit_self_responseItem = [self _musicKit_self_responseItem];
  if (_musicKit_self_responseItem)
  {
    v4 = _musicKit_self_responseItem;
    [_musicKit_self_responseItem duration];
    _musicKit_self_responseItem = v4;
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
  [self _durationSnapshot];
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
  _musicKit_self_responseItem = [self _musicKit_self_responseItem];
  isPlaceholder = [_musicKit_self_responseItem isPlaceholder];

  return isPlaceholder;
}

- (id)musicKit_playerResponseItem_nowPlayingAudioFormat
{
  _musicKit_self_responseItem = [self _musicKit_self_responseItem];
  nowPlayingAudioFormat = [_musicKit_self_responseItem nowPlayingAudioFormat];

  return nowPlayingAudioFormat;
}

- (id)musicKit_playerResponseItem_seekCommand
{
  _musicKit_self_responseItem = [self _musicKit_self_responseItem];
  seekCommand = [_musicKit_self_responseItem seekCommand];

  return seekCommand;
}

- (id)musicKit_playerResponseItem_removeCommandRequest
{
  _musicKit_self_responseItem = [self _musicKit_self_responseItem];
  remove = [_musicKit_self_responseItem remove];

  return remove;
}

@end