@interface GDGraphSongEvent
- (GDGraphSongEvent)initWithEntityIdentifierField:(id)a3 dateField:(id)a4 playbackStateField:(id)a5 songField:(id)a6 allDateField:(id)a7 allPlaybackStateField:(id)a8 allSongField:(id)a9;
@end

@implementation GDGraphSongEvent

- (GDGraphSongEvent)initWithEntityIdentifierField:(id)a3 dateField:(id)a4 playbackStateField:(id)a5 songField:(id)a6 allDateField:(id)a7 allPlaybackStateField:(id)a8 allSongField:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = GDGraphSongEvent;
  v18 = [(GDGraphSongEvent *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_entityIdentifier, a3);
    objc_storeStrong(&v19->_date, a4);
    objc_storeStrong(&v19->_playbackState, a5);
    objc_storeStrong(&v19->_song, a6);
    objc_storeStrong(&v19->_allDate, a7);
    objc_storeStrong(&v19->_allPlaybackState, a8);
    objc_storeStrong(&v19->_allSong, a9);
  }

  return v19;
}

@end