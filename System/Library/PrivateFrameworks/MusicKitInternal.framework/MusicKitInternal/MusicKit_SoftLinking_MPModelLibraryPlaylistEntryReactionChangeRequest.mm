@interface MusicKit_SoftLinking_MPModelLibraryPlaylistEntryReactionChangeRequest
- (MusicKit_SoftLinking_MPModelLibraryPlaylistEntryReactionChangeRequest)initWithPlaylist:(id)playlist playlistEntry:(id)entry reactionText:(id)text;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryPlaylistEntryReactionChangeRequest

- (MusicKit_SoftLinking_MPModelLibraryPlaylistEntryReactionChangeRequest)initWithPlaylist:(id)playlist playlistEntry:(id)entry reactionText:(id)text
{
  playlistCopy = playlist;
  entryCopy = entry;
  textCopy = text;
  v20.receiver = self;
  v20.super_class = MusicKit_SoftLinking_MPModelLibraryPlaylistEntryReactionChangeRequest;
  v11 = [(MusicKit_SoftLinking_MPModelLibraryPlaylistEntryReactionChangeRequest *)&v20 init];
  if (v11)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v12 = getMPModelLibraryPlaylistEntryReactionChangeRequestClass_softClass;
    v25 = getMPModelLibraryPlaylistEntryReactionChangeRequestClass_softClass;
    if (!getMPModelLibraryPlaylistEntryReactionChangeRequestClass_softClass)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __getMPModelLibraryPlaylistEntryReactionChangeRequestClass_block_invoke;
      v21[3] = &unk_1E84C3838;
      v21[4] = &v22;
      __getMPModelLibraryPlaylistEntryReactionChangeRequestClass_block_invoke(v21);
      v12 = v23[3];
    }

    v13 = v12;
    _Block_object_dispose(&v22, 8);
    v14 = [v12 alloc];
    _underlyingModelObject = [playlistCopy _underlyingModelObject];
    _underlyingModelObject2 = [entryCopy _underlyingModelObject];
    v17 = [v14 initWithPlaylist:_underlyingModelObject playlistEntry:_underlyingModelObject2 reactionText:textCopy];
    underlyingPlaylistEntryReactionChangeRequest = v11->_underlyingPlaylistEntryReactionChangeRequest;
    v11->_underlyingPlaylistEntryReactionChangeRequest = v17;
  }

  return v11;
}

@end