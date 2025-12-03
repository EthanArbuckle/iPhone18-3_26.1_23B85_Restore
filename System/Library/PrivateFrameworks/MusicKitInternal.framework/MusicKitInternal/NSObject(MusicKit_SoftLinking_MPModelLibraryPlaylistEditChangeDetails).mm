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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (uint64_t)musicKit_changeDetails_type
{
  _musicKit_self_changeDetails = [self _musicKit_self_changeDetails];
  type = [_musicKit_self_changeDetails type];

  if ((type - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

- (id)musicKit_changeDetails_itemIdentifier
{
  _musicKit_self_changeDetails = [self _musicKit_self_changeDetails];
  itemIdentifier = [_musicKit_self_changeDetails itemIdentifier];

  return itemIdentifier;
}

- (id)musicKit_changeDetails_itemPositionIdentifier
{
  _musicKit_self_changeDetails = [self _musicKit_self_changeDetails];
  itemPositionIdentifier = [_musicKit_self_changeDetails itemPositionIdentifier];

  return itemPositionIdentifier;
}

- (id)musicKit_changeDetails_referenceItemPositionIdentifier
{
  _musicKit_self_changeDetails = [self _musicKit_self_changeDetails];
  referenceItemPositionIdentifier = [_musicKit_self_changeDetails referenceItemPositionIdentifier];

  return referenceItemPositionIdentifier;
}

- (uint64_t)musicKit_changeDetails_isLastItem
{
  _musicKit_self_changeDetails = [self _musicKit_self_changeDetails];
  isLastItem = [_musicKit_self_changeDetails isLastItem];

  return isLastItem;
}

- (id)musicKit_changeDetails_item
{
  _musicKit_self_changeDetails = [self _musicKit_self_changeDetails];
  item = [_musicKit_self_changeDetails item];

  if (item)
  {
    v3 = [objc_alloc(MEMORY[0x1E6977640]) initWithUnderlyingModelObject:item];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)musicKit_changeDetails_referenceItem
{
  _musicKit_self_changeDetails = [self _musicKit_self_changeDetails];
  referenceItem = [_musicKit_self_changeDetails referenceItem];

  if (referenceItem)
  {
    v3 = [objc_alloc(MEMORY[0x1E6977640]) initWithUnderlyingModelObject:referenceItem];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)musicKit_changeDetails_playlistName
{
  _musicKit_self_changeDetails = [self _musicKit_self_changeDetails];
  playlistName = [_musicKit_self_changeDetails playlistName];

  return playlistName;
}

@end