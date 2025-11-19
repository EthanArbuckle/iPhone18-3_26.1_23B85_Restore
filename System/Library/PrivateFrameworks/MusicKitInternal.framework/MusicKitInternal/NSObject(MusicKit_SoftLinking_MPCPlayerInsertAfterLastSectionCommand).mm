@interface NSObject(MusicKit_SoftLinking_MPCPlayerInsertAfterLastSectionCommand)
- (id)_musicKit_self_insertAfterLastSectionCommand;
- (id)musicKit_insertWithPlaybackIntent:()MusicKit_SoftLinking_MPCPlayerInsertAfterLastSectionCommand;
- (id)musicKit_sectionMetadataObject;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerInsertAfterLastSectionCommand)

- (id)_musicKit_self_insertAfterLastSectionCommand
{
  if ([a1 conformsToProtocol:&unk_1F50DD758])
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)musicKit_sectionMetadataObject
{
  v1 = [a1 _musicKit_self_insertAfterLastSectionCommand];
  v2 = [v1 section];
  v3 = [v2 metadataObject];

  return v3;
}

- (id)musicKit_insertWithPlaybackIntent:()MusicKit_SoftLinking_MPCPlayerInsertAfterLastSectionCommand
{
  v4 = a3;
  v5 = [a1 _musicKit_self_insertAfterLastSectionCommand];
  v6 = [v4 _underlyingPlaybackIntent];

  v7 = [v5 insertWithPlaybackIntent:v6];

  return v7;
}

@end