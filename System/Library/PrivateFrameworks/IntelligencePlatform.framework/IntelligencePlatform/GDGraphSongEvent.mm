@interface GDGraphSongEvent
- (GDGraphSongEvent)initWithEntityIdentifierField:(id)field dateField:(id)dateField playbackStateField:(id)stateField songField:(id)songField allDateField:(id)allDateField allPlaybackStateField:(id)playbackStateField allSongField:(id)allSongField;
@end

@implementation GDGraphSongEvent

- (GDGraphSongEvent)initWithEntityIdentifierField:(id)field dateField:(id)dateField playbackStateField:(id)stateField songField:(id)songField allDateField:(id)allDateField allPlaybackStateField:(id)playbackStateField allSongField:(id)allSongField
{
  fieldCopy = field;
  dateFieldCopy = dateField;
  stateFieldCopy = stateField;
  songFieldCopy = songField;
  allDateFieldCopy = allDateField;
  playbackStateFieldCopy = playbackStateField;
  allSongFieldCopy = allSongField;
  v26.receiver = self;
  v26.super_class = GDGraphSongEvent;
  v18 = [(GDGraphSongEvent *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_entityIdentifier, field);
    objc_storeStrong(&v19->_date, dateField);
    objc_storeStrong(&v19->_playbackState, stateField);
    objc_storeStrong(&v19->_song, songField);
    objc_storeStrong(&v19->_allDate, allDateField);
    objc_storeStrong(&v19->_allPlaybackState, playbackStateField);
    objc_storeStrong(&v19->_allSong, allSongField);
  }

  return v19;
}

@end