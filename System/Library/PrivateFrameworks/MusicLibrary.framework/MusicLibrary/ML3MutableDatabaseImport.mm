@interface ML3MutableDatabaseImport
- (void)setLibraryPath:(id)a3;
- (void)setPlaylistData:(id)a3;
- (void)setSyncAnchor:(id)a3;
- (void)setSyncLibraryID:(id)a3;
- (void)setTrackData:(id)a3;
@end

@implementation ML3MutableDatabaseImport

- (void)setSyncLibraryID:(id)a3
{
  v4 = [a3 copy];
  syncLibraryID = self->super._syncLibraryID;
  self->super._syncLibraryID = v4;

  MEMORY[0x2821F96F8](v4, syncLibraryID);
}

- (void)setSyncAnchor:(id)a3
{
  v4 = [a3 copy];
  syncAnchor = self->super._syncAnchor;
  self->super._syncAnchor = v4;

  MEMORY[0x2821F96F8](v4, syncAnchor);
}

- (void)setPlaylistData:(id)a3
{
  v4 = [a3 copy];
  playlistData = self->super._playlistData;
  self->super._playlistData = v4;

  MEMORY[0x2821F96F8](v4, playlistData);
}

- (void)setTrackData:(id)a3
{
  v4 = [a3 copy];
  trackData = self->super._trackData;
  self->super._trackData = v4;

  MEMORY[0x2821F96F8](v4, trackData);
}

- (void)setLibraryPath:(id)a3
{
  v4 = [a3 copy];
  libraryPath = self->super._libraryPath;
  self->super._libraryPath = v4;

  MEMORY[0x2821F96F8](v4, libraryPath);
}

@end