@interface NSObject(MusicKit_SoftLinking_MPCPlayerInsertAfterLastSectionCommand)
- (id)_musicKit_self_insertAfterLastSectionCommand;
- (id)musicKit_insertWithPlaybackIntent:()MusicKit_SoftLinking_MPCPlayerInsertAfterLastSectionCommand;
- (id)musicKit_sectionMetadataObject;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerInsertAfterLastSectionCommand)

- (id)_musicKit_self_insertAfterLastSectionCommand
{
  if ([self conformsToProtocol:&unk_1F50DD758])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)musicKit_sectionMetadataObject
{
  _musicKit_self_insertAfterLastSectionCommand = [self _musicKit_self_insertAfterLastSectionCommand];
  section = [_musicKit_self_insertAfterLastSectionCommand section];
  metadataObject = [section metadataObject];

  return metadataObject;
}

- (id)musicKit_insertWithPlaybackIntent:()MusicKit_SoftLinking_MPCPlayerInsertAfterLastSectionCommand
{
  v4 = a3;
  _musicKit_self_insertAfterLastSectionCommand = [self _musicKit_self_insertAfterLastSectionCommand];
  _underlyingPlaybackIntent = [v4 _underlyingPlaybackIntent];

  v7 = [_musicKit_self_insertAfterLastSectionCommand insertWithPlaybackIntent:_underlyingPlaybackIntent];

  return v7;
}

@end