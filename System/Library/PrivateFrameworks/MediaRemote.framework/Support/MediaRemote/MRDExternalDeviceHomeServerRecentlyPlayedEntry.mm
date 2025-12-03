@interface MRDExternalDeviceHomeServerRecentlyPlayedEntry
- (BOOL)isEqual:(id)equal;
- (MRDExternalDeviceHomeServerRecentlyPlayedEntry)initWithDictionaryRepresentation:(id)representation;
- (NSDate)date;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
- (void)setContentItem:(id)item;
@end

@implementation MRDExternalDeviceHomeServerRecentlyPlayedEntry

- (MRDExternalDeviceHomeServerRecentlyPlayedEntry)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v25.receiver = self;
  v25.super_class = MRDExternalDeviceHomeServerRecentlyPlayedEntry;
  v5 = [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)&v25 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"isPlaying"];
    v5->_isPlaying = [v6 BOOLValue];

    v7 = [representationCopy objectForKeyedSubscript:@"lastPlayingDate"];
    lastPlayingDate = v5->_lastPlayingDate;
    v5->_lastPlayingDate = v7;

    v9 = [representationCopy objectForKeyedSubscript:@"lastNotPlayingDate"];
    lastNotPlayingDate = v5->_lastNotPlayingDate;
    v5->_lastNotPlayingDate = v9;

    v11 = [representationCopy objectForKeyedSubscript:@"currentPlaybackSessionTypes"];
    currentPlaybackSessionTypes = v5->_currentPlaybackSessionTypes;
    v5->_currentPlaybackSessionTypes = v11;

    v13 = [representationCopy objectForKeyedSubscript:@"supportedPlaybackSessionTypes"];
    supportedPlaybackSessionTypes = v5->_supportedPlaybackSessionTypes;
    v5->_supportedPlaybackSessionTypes = v13;

    v15 = [representationCopy objectForKeyedSubscript:@"currentPlaybackSessionIdentifier"];
    currentPlaybackSessionIdentifier = v5->_currentPlaybackSessionIdentifier;
    v5->_currentPlaybackSessionIdentifier = v15;

    v17 = [representationCopy objectForKeyedSubscript:kMRNowPlayingPlayerPathUserInfoKey];
    playerPath = v5->_playerPath;
    v5->_playerPath = v17;

    v19 = [representationCopy objectForKeyedSubscript:kMRPairedDeviceUserInfoKey];
    deviceInfo = v5->_deviceInfo;
    v5->_deviceInfo = v19;

    v21 = [representationCopy objectForKeyedSubscript:kMRMediaRemoteUpdatedContentItemsUserInfoKey];
    firstObject = [v21 firstObject];
    contentItem = v5->_contentItem;
    v5->_contentItem = firstObject;
  }

  return v5;
}

- (id)description
{
  v3 = [NSString alloc];
  if (self->_isPlaying)
  {
    v4 = @"PLAYING";
  }

  else
  {
    v4 = @"NOT PLAYING";
  }

  date = [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)self date];
  v11 = *&self->_currentPlaybackSessionTypes;
  currentPlaybackSessionIdentifier = self->_currentPlaybackSessionIdentifier;
  deviceUID = [(MRDeviceInfo *)self->_deviceInfo deviceUID];
  name = [(MRDeviceInfo *)self->_deviceInfo name];
  v9 = [v3 initWithFormat:@"%@-%@-%@-%@-%@-%@(%@)-%@-%@", v4, date, v11, currentPlaybackSessionIdentifier, deviceUID, name, self->_playerPath, self->_contentItem];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  isPlaying = self->_isPlaying;
  if (isPlaying == [equalCopy isPlaying])
  {
    v6 = self->_isPlaying;
    if (!v6)
    {
      date = [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)self date];
      date2 = [equalCopy date];
      if (![date isEqualToDate:date2])
      {
        v16 = 0;
LABEL_26:

        goto LABEL_27;
      }

      v27 = date2;
      v28 = date;
    }

    deviceUID = [(MRDeviceInfo *)self->_deviceInfo deviceUID];
    deviceInfo = [equalCopy deviceInfo];
    deviceUID2 = [deviceInfo deviceUID];
    if ([deviceUID isEqualToString:deviceUID2])
    {
      name = [(MRDeviceInfo *)self->_deviceInfo name];
      deviceInfo2 = [equalCopy deviceInfo];
      name2 = [deviceInfo2 name];
      if ([name isEqualToString:name2])
      {
        isAirPlayActive = [(MRDeviceInfo *)self->_deviceInfo isAirPlayActive];
        deviceInfo3 = [equalCopy deviceInfo];
        if (isAirPlayActive == [deviceInfo3 isAirPlayActive])
        {
          contentItem = self->_contentItem;
          contentItem = [equalCopy contentItem];
          if (MRContentItemEqualToItem())
          {
            currentPlaybackSessionTypes = self->_currentPlaybackSessionTypes;
            currentPlaybackSessionTypes = [equalCopy currentPlaybackSessionTypes];
            if ([(NSArray *)currentPlaybackSessionTypes isEqualToArray:?])
            {
              supportedPlaybackSessionTypes = self->_supportedPlaybackSessionTypes;
              supportedPlaybackSessionTypes = [equalCopy supportedPlaybackSessionTypes];
              if ([(NSArray *)supportedPlaybackSessionTypes isEqualToArray:?])
              {
                currentPlaybackSessionIdentifier = self->_currentPlaybackSessionIdentifier;
                currentPlaybackSessionIdentifier = [equalCopy currentPlaybackSessionIdentifier];
                v16 = [(NSString *)currentPlaybackSessionIdentifier isEqualToString:currentPlaybackSessionIdentifier];
              }

              else
              {
                v16 = 0;
              }
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {

      v16 = 0;
    }

    date2 = v27;
    date = v28;
    if (!v6)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_27:

  return v16;
}

- (void)setContentItem:(id)item
{
  itemCopy = item;
  v7 = objc_alloc_init(MRPlaybackQueueRequest);
  [v7 setIncludeMetadata:1];
  v5 = MRContentItemCreateFromRequest();

  contentItem = self->_contentItem;
  self->_contentItem = v5;
}

- (NSDate)date
{
  v2 = 24;
  if (self->_isPlaying)
  {
    v2 = 16;
  }

  return *(&self->super.isa + v2);
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithBool:self->_isPlaying];
  [v3 setObject:v4 forKeyedSubscript:@"isPlaying"];

  [v3 setObject:self->_lastPlayingDate forKeyedSubscript:@"lastPlayingDate"];
  [v3 setObject:self->_lastNotPlayingDate forKeyedSubscript:@"lastNotPlayingDate"];
  deviceUID = [(MRDeviceInfo *)self->_deviceInfo deviceUID];
  [v3 setObject:deviceUID forKeyedSubscript:@"deviceUID"];

  [v3 setObject:self->_currentPlaybackSessionTypes forKeyedSubscript:@"currentPlaybackSessionTypes"];
  [v3 setObject:self->_supportedPlaybackSessionTypes forKeyedSubscript:@"supportedPlaybackSessionTypes"];
  [v3 setObject:self->_currentPlaybackSessionIdentifier forKeyedSubscript:@"currentPlaybackSessionIdentifier"];
  [v3 setObject:self->_playerPath forKeyedSubscript:kMRNowPlayingPlayerPathUserInfoKey];
  v6 = [(MRPlayerPath *)self->_playerPath description];
  [v3 setObject:v6 forKeyedSubscript:@"playerPathDescription"];

  [v3 setObject:self->_deviceInfo forKeyedSubscript:kMRPairedDeviceUserInfoKey];
  if (self->_contentItem)
  {
    contentItem = self->_contentItem;
    v7 = [NSArray arrayWithObjects:&contentItem count:1];
    [v3 setObject:v7 forKeyedSubscript:kMRMediaRemoteUpdatedContentItemsUserInfoKey];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:kMRMediaRemoteUpdatedContentItemsUserInfoKey];
  }

  v8 = self->_contentItem;
  v9 = MRContentItemCopyMinimalReadableDescription();
  [v3 setObject:v9 forKeyedSubscript:@"contentItemDescription"];

  return v3;
}

@end