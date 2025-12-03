@interface GDGraphSong
- (GDGraphSong)initWithEntityIdentifierField:(id)field nameField:(id)nameField artistNameField:(id)artistNameField albumNameField:(id)albumNameField genreField:(id)genreField durationField:(id)durationField identifiersField:(id)identifiersField songAdamIdField:(id)self0 albumAdamIdField:(id)self1 artistAdamIdField:(id)self2 allNameField:(id)self3 allArtistNameField:(id)self4 allAlbumNameField:(id)self5 allGenreField:(id)self6 allDurationField:(id)self7 allSongAdamIdField:(id)self8 allAlbumAdamIdField:(id)self9 allArtistAdamIdField:(id)allArtistAdamIdField;
@end

@implementation GDGraphSong

- (GDGraphSong)initWithEntityIdentifierField:(id)field nameField:(id)nameField artistNameField:(id)artistNameField albumNameField:(id)albumNameField genreField:(id)genreField durationField:(id)durationField identifiersField:(id)identifiersField songAdamIdField:(id)self0 albumAdamIdField:(id)self1 artistAdamIdField:(id)self2 allNameField:(id)self3 allArtistNameField:(id)self4 allAlbumNameField:(id)self5 allGenreField:(id)self6 allDurationField:(id)self7 allSongAdamIdField:(id)self8 allAlbumAdamIdField:(id)self9 allArtistAdamIdField:(id)allArtistAdamIdField
{
  fieldCopy = field;
  nameFieldCopy = nameField;
  nameFieldCopy2 = nameField;
  artistNameFieldCopy = artistNameField;
  artistNameFieldCopy2 = artistNameField;
  albumNameFieldCopy = albumNameField;
  genreFieldCopy = genreField;
  durationFieldCopy = durationField;
  identifiersFieldCopy = identifiersField;
  idFieldCopy = idField;
  adamIdFieldCopy = adamIdField;
  artistAdamIdFieldCopy = artistAdamIdField;
  allNameFieldCopy = allNameField;
  allArtistNameFieldCopy = allArtistNameField;
  allAlbumNameFieldCopy = allAlbumNameField;
  allGenreFieldCopy = allGenreField;
  allDurationFieldCopy = allDurationField;
  songAdamIdFieldCopy = songAdamIdField;
  albumAdamIdFieldCopy = albumAdamIdField;
  allArtistAdamIdFieldCopy = allArtistAdamIdField;
  v50.receiver = self;
  v50.super_class = GDGraphSong;
  v31 = [(GDGraphSong *)&v50 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_entityIdentifier, field);
    objc_storeStrong(&v32->_name, nameFieldCopy);
    objc_storeStrong(&v32->_artistName, artistNameFieldCopy);
    objc_storeStrong(&v32->_albumName, albumNameField);
    objc_storeStrong(&v32->_genre, genreField);
    objc_storeStrong(&v32->_duration, durationField);
    objc_storeStrong(&v32->_identifiers, identifiersField);
    objc_storeStrong(&v32->_songAdamId, idField);
    objc_storeStrong(&v32->_albumAdamId, adamIdField);
    objc_storeStrong(&v32->_artistAdamId, artistAdamIdField);
    objc_storeStrong(&v32->_allName, allNameField);
    objc_storeStrong(&v32->_allArtistName, allArtistNameField);
    objc_storeStrong(&v32->_allAlbumName, allAlbumNameField);
    objc_storeStrong(&v32->_allGenre, allGenreField);
    objc_storeStrong(&v32->_allDuration, allDurationField);
    objc_storeStrong(&v32->_allSongAdamId, songAdamIdField);
    objc_storeStrong(&v32->_allAlbumAdamId, albumAdamIdField);
    objc_storeStrong(&v32->_allArtistAdamId, allArtistAdamIdField);
  }

  return v32;
}

@end