@interface MusicKit_SoftLinking_MPModelLibraryPlaylistEntryReactionChangeRequest
- (MusicKit_SoftLinking_MPModelLibraryPlaylistEntryReactionChangeRequest)initWithPlaylist:(id)a3 playlistEntry:(id)a4 reactionText:(id)a5;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryPlaylistEntryReactionChangeRequest

- (MusicKit_SoftLinking_MPModelLibraryPlaylistEntryReactionChangeRequest)initWithPlaylist:(id)a3 playlistEntry:(id)a4 reactionText:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v15 = [v8 _underlyingModelObject];
    v16 = [v9 _underlyingModelObject];
    v17 = [v14 initWithPlaylist:v15 playlistEntry:v16 reactionText:v10];
    underlyingPlaylistEntryReactionChangeRequest = v11->_underlyingPlaylistEntryReactionChangeRequest;
    v11->_underlyingPlaylistEntryReactionChangeRequest = v17;
  }

  return v11;
}

@end