@interface MRDExternalDeviceHomeServerRecentlyPlayedEntry
- (BOOL)isEqual:(id)a3;
- (MRDExternalDeviceHomeServerRecentlyPlayedEntry)initWithDictionaryRepresentation:(id)a3;
- (NSDate)date;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
- (void)setContentItem:(id)a3;
@end

@implementation MRDExternalDeviceHomeServerRecentlyPlayedEntry

- (MRDExternalDeviceHomeServerRecentlyPlayedEntry)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = MRDExternalDeviceHomeServerRecentlyPlayedEntry;
  v5 = [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isPlaying"];
    v5->_isPlaying = [v6 BOOLValue];

    v7 = [v4 objectForKeyedSubscript:@"lastPlayingDate"];
    lastPlayingDate = v5->_lastPlayingDate;
    v5->_lastPlayingDate = v7;

    v9 = [v4 objectForKeyedSubscript:@"lastNotPlayingDate"];
    lastNotPlayingDate = v5->_lastNotPlayingDate;
    v5->_lastNotPlayingDate = v9;

    v11 = [v4 objectForKeyedSubscript:@"currentPlaybackSessionTypes"];
    currentPlaybackSessionTypes = v5->_currentPlaybackSessionTypes;
    v5->_currentPlaybackSessionTypes = v11;

    v13 = [v4 objectForKeyedSubscript:@"supportedPlaybackSessionTypes"];
    supportedPlaybackSessionTypes = v5->_supportedPlaybackSessionTypes;
    v5->_supportedPlaybackSessionTypes = v13;

    v15 = [v4 objectForKeyedSubscript:@"currentPlaybackSessionIdentifier"];
    currentPlaybackSessionIdentifier = v5->_currentPlaybackSessionIdentifier;
    v5->_currentPlaybackSessionIdentifier = v15;

    v17 = [v4 objectForKeyedSubscript:kMRNowPlayingPlayerPathUserInfoKey];
    playerPath = v5->_playerPath;
    v5->_playerPath = v17;

    v19 = [v4 objectForKeyedSubscript:kMRPairedDeviceUserInfoKey];
    deviceInfo = v5->_deviceInfo;
    v5->_deviceInfo = v19;

    v21 = [v4 objectForKeyedSubscript:kMRMediaRemoteUpdatedContentItemsUserInfoKey];
    v22 = [v21 firstObject];
    contentItem = v5->_contentItem;
    v5->_contentItem = v22;
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

  v5 = [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)self date];
  v11 = *&self->_currentPlaybackSessionTypes;
  currentPlaybackSessionIdentifier = self->_currentPlaybackSessionIdentifier;
  v7 = [(MRDeviceInfo *)self->_deviceInfo deviceUID];
  v8 = [(MRDeviceInfo *)self->_deviceInfo name];
  v9 = [v3 initWithFormat:@"%@-%@-%@-%@-%@-%@(%@)-%@-%@", v4, v5, v11, currentPlaybackSessionIdentifier, v7, v8, self->_playerPath, self->_contentItem];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  isPlaying = self->_isPlaying;
  if (isPlaying == [v4 isPlaying])
  {
    v6 = self->_isPlaying;
    if (!v6)
    {
      v7 = [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)self date];
      v8 = [v4 date];
      if (![v7 isEqualToDate:v8])
      {
        v16 = 0;
LABEL_26:

        goto LABEL_27;
      }

      v27 = v8;
      v28 = v7;
    }

    v9 = [(MRDeviceInfo *)self->_deviceInfo deviceUID];
    v10 = [v4 deviceInfo];
    v11 = [v10 deviceUID];
    if ([v9 isEqualToString:v11])
    {
      v12 = [(MRDeviceInfo *)self->_deviceInfo name];
      v13 = [v4 deviceInfo];
      v14 = [v13 name];
      if ([v12 isEqualToString:v14])
      {
        v15 = [(MRDeviceInfo *)self->_deviceInfo isAirPlayActive];
        v26 = [v4 deviceInfo];
        if (v15 == [v26 isAirPlayActive])
        {
          contentItem = self->_contentItem;
          v25 = [v4 contentItem];
          if (MRContentItemEqualToItem())
          {
            currentPlaybackSessionTypes = self->_currentPlaybackSessionTypes;
            v24 = [v4 currentPlaybackSessionTypes];
            if ([(NSArray *)currentPlaybackSessionTypes isEqualToArray:?])
            {
              supportedPlaybackSessionTypes = self->_supportedPlaybackSessionTypes;
              v23 = [v4 supportedPlaybackSessionTypes];
              if ([(NSArray *)supportedPlaybackSessionTypes isEqualToArray:?])
              {
                currentPlaybackSessionIdentifier = self->_currentPlaybackSessionIdentifier;
                v21 = [v4 currentPlaybackSessionIdentifier];
                v16 = [(NSString *)currentPlaybackSessionIdentifier isEqualToString:v21];
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

    v8 = v27;
    v7 = v28;
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

- (void)setContentItem:(id)a3
{
  v4 = a3;
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
  v5 = [(MRDeviceInfo *)self->_deviceInfo deviceUID];
  [v3 setObject:v5 forKeyedSubscript:@"deviceUID"];

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