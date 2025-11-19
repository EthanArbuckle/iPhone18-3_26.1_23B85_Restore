@interface MusicKit_SoftLinking_MPMediaLibraryAlbumAppData
- (MusicKit_SoftLinking_MPMediaLibraryAlbumAppData)init;
- (void)setSongPopularity:(double)a3 forAdamID:(int64_t)a4;
@end

@implementation MusicKit_SoftLinking_MPMediaLibraryAlbumAppData

- (MusicKit_SoftLinking_MPMediaLibraryAlbumAppData)init
{
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPMediaLibraryAlbumAppData;
  v2 = [(MusicKit_SoftLinking_MPMediaLibraryAlbumAppData *)&v9 init];
  if (v2)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v3 = getMPMediaLibraryAlbumAppDataClass_softClass;
    v14 = getMPMediaLibraryAlbumAppDataClass_softClass;
    if (!getMPMediaLibraryAlbumAppDataClass_softClass)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __getMPMediaLibraryAlbumAppDataClass_block_invoke;
      v10[3] = &unk_1E84C3838;
      v10[4] = &v11;
      __getMPMediaLibraryAlbumAppDataClass_block_invoke(v10);
      v3 = v12[3];
    }

    v4 = v3;
    _Block_object_dispose(&v11, 8);
    v5 = objc_alloc_init(v3);
    underlyingAlbumAppData = v2->_underlyingAlbumAppData;
    v2->_underlyingAlbumAppData = v5;

    v7 = [(MPMediaLibraryAlbumAppData *)v2->_underlyingAlbumAppData createAppDataDictionary];
  }

  return v2;
}

- (void)setSongPopularity:(double)a3 forAdamID:(int64_t)a4
{
  underlyingAlbumAppData = self->_underlyingAlbumAppData;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(MPMediaLibraryAlbumAppData *)underlyingAlbumAppData setSongPopularity:v6 forAdamID:a4];
}

@end