@interface GDGraphSong
- (GDGraphSong)initWithEntityIdentifierField:(id)a3 nameField:(id)a4 artistNameField:(id)a5 albumNameField:(id)a6 genreField:(id)a7 durationField:(id)a8 identifiersField:(id)a9 songAdamIdField:(id)a10 albumAdamIdField:(id)a11 artistAdamIdField:(id)a12 allNameField:(id)a13 allArtistNameField:(id)a14 allAlbumNameField:(id)a15 allGenreField:(id)a16 allDurationField:(id)a17 allSongAdamIdField:(id)a18 allAlbumAdamIdField:(id)a19 allArtistAdamIdField:(id)a20;
@end

@implementation GDGraphSong

- (GDGraphSong)initWithEntityIdentifierField:(id)a3 nameField:(id)a4 artistNameField:(id)a5 albumNameField:(id)a6 genreField:(id)a7 durationField:(id)a8 identifiersField:(id)a9 songAdamIdField:(id)a10 albumAdamIdField:(id)a11 artistAdamIdField:(id)a12 allNameField:(id)a13 allArtistNameField:(id)a14 allAlbumNameField:(id)a15 allGenreField:(id)a16 allDurationField:(id)a17 allSongAdamIdField:(id)a18 allAlbumAdamIdField:(id)a19 allArtistAdamIdField:(id)a20
{
  v49 = a3;
  v35 = a4;
  v48 = a4;
  v36 = a5;
  v47 = a5;
  v46 = a6;
  v45 = a7;
  v44 = a8;
  v43 = a9;
  v42 = a10;
  v41 = a11;
  v40 = a12;
  v25 = a13;
  v26 = a14;
  v27 = a15;
  v28 = a16;
  v29 = a17;
  v39 = a18;
  v38 = a19;
  v30 = a20;
  v50.receiver = self;
  v50.super_class = GDGraphSong;
  v31 = [(GDGraphSong *)&v50 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_entityIdentifier, a3);
    objc_storeStrong(&v32->_name, v35);
    objc_storeStrong(&v32->_artistName, v36);
    objc_storeStrong(&v32->_albumName, a6);
    objc_storeStrong(&v32->_genre, a7);
    objc_storeStrong(&v32->_duration, a8);
    objc_storeStrong(&v32->_identifiers, a9);
    objc_storeStrong(&v32->_songAdamId, a10);
    objc_storeStrong(&v32->_albumAdamId, a11);
    objc_storeStrong(&v32->_artistAdamId, a12);
    objc_storeStrong(&v32->_allName, a13);
    objc_storeStrong(&v32->_allArtistName, a14);
    objc_storeStrong(&v32->_allAlbumName, a15);
    objc_storeStrong(&v32->_allGenre, a16);
    objc_storeStrong(&v32->_allDuration, a17);
    objc_storeStrong(&v32->_allSongAdamId, a18);
    objc_storeStrong(&v32->_allAlbumAdamId, a19);
    objc_storeStrong(&v32->_allArtistAdamId, a20);
  }

  return v32;
}

@end