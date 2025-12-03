@interface ML3MutableDatabaseImport
- (void)setLibraryPath:(id)path;
- (void)setPlaylistData:(id)data;
- (void)setSyncAnchor:(id)anchor;
- (void)setSyncLibraryID:(id)d;
- (void)setTrackData:(id)data;
@end

@implementation ML3MutableDatabaseImport

- (void)setSyncLibraryID:(id)d
{
  v4 = [d copy];
  syncLibraryID = self->super._syncLibraryID;
  self->super._syncLibraryID = v4;

  MEMORY[0x2821F96F8](v4, syncLibraryID);
}

- (void)setSyncAnchor:(id)anchor
{
  v4 = [anchor copy];
  syncAnchor = self->super._syncAnchor;
  self->super._syncAnchor = v4;

  MEMORY[0x2821F96F8](v4, syncAnchor);
}

- (void)setPlaylistData:(id)data
{
  v4 = [data copy];
  playlistData = self->super._playlistData;
  self->super._playlistData = v4;

  MEMORY[0x2821F96F8](v4, playlistData);
}

- (void)setTrackData:(id)data
{
  v4 = [data copy];
  trackData = self->super._trackData;
  self->super._trackData = v4;

  MEMORY[0x2821F96F8](v4, trackData);
}

- (void)setLibraryPath:(id)path
{
  v4 = [path copy];
  libraryPath = self->super._libraryPath;
  self->super._libraryPath = v4;

  MEMORY[0x2821F96F8](v4, libraryPath);
}

@end