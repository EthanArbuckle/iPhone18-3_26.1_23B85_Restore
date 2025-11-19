@interface MRNowPlayingInfoDictionaryKeyToProtobufKeyMapping
@end

@implementation MRNowPlayingInfoDictionaryKeyToProtobufKeyMapping

void ___MRNowPlayingInfoDictionaryKeyToProtobufKeyMapping_block_invoke()
{
  v22[18] = *MEMORY[0x1E69E9840];
  v21[0] = @"kMRMediaRemoteNowPlayingInfoAlbum";
  v20 = NSStringFromSelector(sel_album);
  v22[0] = v20;
  v21[1] = @"kMRMediaRemoteNowPlayingInfoArtist";
  v19 = NSStringFromSelector(sel_artist);
  v22[1] = v19;
  v21[2] = @"kMRMediaRemoteNowPlayingInfoDuration";
  v18 = NSStringFromSelector(sel_duration);
  v22[2] = v18;
  v21[3] = @"kMRMediaRemoteNowPlayingInfoElapsedTime";
  v17 = NSStringFromSelector(sel_elapsedTime);
  v22[3] = v17;
  v21[4] = @"kMRMediaRemoteNowPlayingInfoIsExplicitTrack";
  v16 = NSStringFromSelector(sel_isExplicitTrack);
  v22[4] = v16;
  v21[5] = @"kMRMediaRemoteNowPlayingInfoPlaybackRate";
  v15 = NSStringFromSelector(sel_playbackRate);
  v22[5] = v15;
  v21[6] = @"kMRMediaRemoteNowPlayingInfoRepeatMode";
  v14 = NSStringFromSelector(sel_repeatMode);
  v22[6] = v14;
  v21[7] = @"kMRMediaRemoteNowPlayingInfoShuffleMode";
  v13 = NSStringFromSelector(sel_shuffleMode);
  v22[7] = v13;
  v21[8] = @"kMRMediaRemoteNowPlayingInfoTimestamp";
  v0 = NSStringFromSelector(sel_timestamp);
  v22[8] = v0;
  v21[9] = @"kMRMediaRemoteNowPlayingInfoTitle";
  v1 = NSStringFromSelector(sel_title);
  v22[9] = v1;
  v21[10] = @"kMRMediaRemoteNowPlayingInfoUniqueIdentifier";
  v2 = NSStringFromSelector(sel_uniqueIdentifier);
  v22[10] = v2;
  v21[11] = @"kMRMediaRemoteNowPlayingInfoIsMusicApp";
  v3 = NSStringFromSelector(sel_isMusicApp);
  v22[11] = v3;
  v21[12] = @"kMRMediaRemoteNowPlayingInfoIsAlwaysLive";
  v4 = NSStringFromSelector(sel_isAlwaysLive);
  v22[12] = v4;
  v21[13] = @"kMRMediaRemoteNowPlayingInfoIsInTransition";
  v5 = NSStringFromSelector(sel_isInTransition);
  v22[13] = v5;
  v21[14] = @"kMRMediaRemoteNowPlayingInfoRadioStationName";
  v6 = NSStringFromSelector(sel_radioStationName);
  v22[14] = v6;
  v21[15] = @"kMRMediaRemoteNowPlayingInfoRadioStationHash";
  v7 = NSStringFromSelector(sel_radioStationHash);
  v22[15] = v7;
  v21[16] = @"kMRMediaRemoteNowPlayingInfoRadioStationIdentifier";
  v8 = NSStringFromSelector(sel_radioStationIdentifier);
  v22[16] = v8;
  v21[17] = @"kMRMediaRemoteNowPlayingInfoIsAdvertisement";
  v9 = NSStringFromSelector(sel_isAdvertisement);
  v22[17] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:18];
  v11 = _MRNowPlayingInfoDictionaryKeyToProtobufKeyMapping___mapping;
  _MRNowPlayingInfoDictionaryKeyToProtobufKeyMapping___mapping = v10;

  v12 = *MEMORY[0x1E69E9840];
}

@end