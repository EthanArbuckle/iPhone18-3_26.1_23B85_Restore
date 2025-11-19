@interface NSObject(MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeDetails)
- (id)_musicKit_self_changeDetails;
- (id)musicKit_changeDetails_item;
- (id)musicKit_changeDetails_itemIdentifier;
- (id)musicKit_changeDetails_itemPositionIdentifier;
- (id)musicKit_changeDetails_playlistName;
- (id)musicKit_changeDetails_referenceItem;
- (id)musicKit_changeDetails_referenceItemPositionIdentifier;
- (uint64_t)musicKit_changeDetails_isLastItem;
- (uint64_t)musicKit_changeDetails_type;
@end

@implementation NSObject(MusicKit_SoftLinking_MPModelLibraryPlaylistEditChangeDetails)

- (id)_musicKit_self_changeDetails
{
  getMPModelLibraryPlaylistEditChangeDetailsClass();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)musicKit_changeDetails_type
{
  v1 = [a1 _musicKit_self_changeDetails];
  v2 = [v1 type];

  if ((v2 - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

- (id)musicKit_changeDetails_itemIdentifier
{
  v1 = [a1 _musicKit_self_changeDetails];
  v2 = [v1 itemIdentifier];

  return v2;
}

- (id)musicKit_changeDetails_itemPositionIdentifier
{
  v1 = [a1 _musicKit_self_changeDetails];
  v2 = [v1 itemPositionIdentifier];

  return v2;
}

- (id)musicKit_changeDetails_referenceItemPositionIdentifier
{
  v1 = [a1 _musicKit_self_changeDetails];
  v2 = [v1 referenceItemPositionIdentifier];

  return v2;
}

- (uint64_t)musicKit_changeDetails_isLastItem
{
  v1 = [a1 _musicKit_self_changeDetails];
  v2 = [v1 isLastItem];

  return v2;
}

- (id)musicKit_changeDetails_item
{
  v1 = [a1 _musicKit_self_changeDetails];
  v2 = [v1 item];

  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E6977640]) initWithUnderlyingModelObject:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)musicKit_changeDetails_referenceItem
{
  v1 = [a1 _musicKit_self_changeDetails];
  v2 = [v1 referenceItem];

  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E6977640]) initWithUnderlyingModelObject:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)musicKit_changeDetails_playlistName
{
  v1 = [a1 _musicKit_self_changeDetails];
  v2 = [v1 playlistName];

  return v2;
}

@end