@interface ML3MigrationMisgroupedAlbum
- (ML3MigrationMisgroupedAlbum)initWithAlbumPID:(int64_t)a3 albumArtistPID:(int64_t)a4;
@end

@implementation ML3MigrationMisgroupedAlbum

- (ML3MigrationMisgroupedAlbum)initWithAlbumPID:(int64_t)a3 albumArtistPID:(int64_t)a4
{
  v11.receiver = self;
  v11.super_class = ML3MigrationMisgroupedAlbum;
  v6 = [(ML3MigrationMisgroupedAlbum *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_albumPID = a3;
    v6->_albumArtistPID = a4;
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    misgroupedTracks = v7->_misgroupedTracks;
    v7->_misgroupedTracks = v8;
  }

  return v7;
}

@end