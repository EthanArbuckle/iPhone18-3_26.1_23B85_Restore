@interface NMUMetricsReporter
+ (id)_actionNameFromAlertAction:(unint64_t)action;
+ (id)_actionNameFromMoreActionType:(unint64_t)type;
+ (id)_alertReasonFromDownloadWaitingReason:(unint64_t)reason;
+ (id)_alertReasonFromKeepLocalErrorAlertReason:(unint64_t)reason;
+ (id)_contextNameFromMoreActionContextType:(unint64_t)type;
+ (id)_launcherNameForLaunchURLType:(unint64_t)type;
+ (id)_processName;
+ (id)_stringForRoutePickingResult:(unint64_t)result;
+ (id)_stringFromSuggestionsContextType:(unint64_t)type;
+ (id)_stringFromSuggestionsMediaType:(unint64_t)type;
+ (id)_viewNameForViewType:(unint64_t)type;
+ (void)incrementAutoPlayChangeCountWithEndpointType:(unint64_t)type;
+ (void)incrementBrowsingCountForViewType:(unint64_t)type;
+ (void)incrementBrowsingCountForViewType:(unint64_t)type endpointType:(unint64_t)endpointType;
+ (void)incrementCrownBasedVolumeControlCountWithEndpointType:(unint64_t)type;
+ (void)incrementLaunchCountForLaunchURLType:(unint64_t)type;
+ (void)incrementMediaSuggestionsTappedWithEndpointType:(unint64_t)type contextType:(unint64_t)contextType mediaType:(unint64_t)mediaType;
+ (void)incrementPlaybackRoutePickerPresentationCount;
+ (void)incrementPlaybackShuffleAllCountFromViewType:(unint64_t)type endpointType:(unint64_t)endpointType;
+ (void)incrementPlaybackStartCountFromViewType:(unint64_t)type endpointType:(unint64_t)endpointType;
+ (void)incrementPlaybackStartCountFromViewType:(unint64_t)type index:(int64_t)index endpointType:(unint64_t)endpointType playerBundleID:(id)d;
+ (void)incrementPlaybackStartCountWithPath:(id)path shuffled:(BOOL)shuffled endpointType:(unint64_t)type;
+ (void)incrementRepeatModeChangeCountWithEndpointType:(unint64_t)type;
+ (void)incrementRouteAutoSelectionResult:(unint64_t)result;
+ (void)incrementRouteChangeCountWithEndpointType:(unint64_t)type;
+ (void)incrementRouteSelectCountWithEndpointType:(unint64_t)type;
+ (void)incrementRouteSelectionResult:(unint64_t)result endpointType:(unint64_t)type;
+ (void)incrementShuffleModeChangeCountWithEndpointType:(unint64_t)type;
+ (void)incrementTapCountForDownloadWaitingReason:(unint64_t)reason action:(unint64_t)action;
+ (void)incrementTapCountForKeepLocalErrorAlertReason:(unint64_t)reason action:(unint64_t)action;
+ (void)incrementTapCountForMoreActionType:(unint64_t)type context:(unint64_t)context;
+ (void)incrementTrackListTrackSelectionCountWithEndpointType:(unint64_t)type;
+ (void)updatePinnedAlbumsCount:(int64_t)count;
+ (void)updatePinnedPlaylistsCount:(int64_t)count;
+ (void)updatePinnedRecommendationsCount:(int64_t)count;
+ (void)updateTopLevelContainersCount:(int64_t)count;
- (NMUMetricsReporter)init;
- (void)_sendEvent:(id)event payload:(id)payload;
@end

@implementation NMUMetricsReporter

+ (id)_processName
{
  if (_processName_onceToken != -1)
  {
    +[NMUMetricsReporter _processName];
  }

  v3 = _processName_processName;

  return v3;
}

void __34__NMUMetricsReporter__processName__block_invoke()
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v2 processName];
  v1 = _processName_processName;
  _processName_processName = v0;
}

- (NMUMetricsReporter)init
{
  v8.receiver = self;
  v8.super_class = NMUMetricsReporter;
  v2 = [(NMUMetricsReporter *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("com.apple.NanoMediaUI.metrics", v4);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

+ (void)incrementLaunchCountForLaunchURLType:(unint64_t)type
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [self _launcherNameForLaunchURLType:type];
  v7 = @"launchURLType";
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"LaunchURL" payload:v5];
}

+ (void)updateTopLevelContainersCount:(int64_t)count
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"nmu_view";
  v7[1] = @"nmu_count";
  v8[0] = @"TopLevelContainers";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"PinningSettings" payload:v5];
}

+ (void)updatePinnedPlaylistsCount:(int64_t)count
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"nmu_view";
  v7[1] = @"nmu_count";
  v8[0] = @"PinnedPlaylists";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"PinningSettings" payload:v5];
}

+ (void)updatePinnedAlbumsCount:(int64_t)count
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"nmu_view";
  v7[1] = @"nmu_count";
  v8[0] = @"PinnedAlbums";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"PinningSettings" payload:v5];
}

+ (void)updatePinnedRecommendationsCount:(int64_t)count
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"nmu_view";
  v7[1] = @"nmu_count";
  v8[0] = @"PinnedRecommendations";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"PinningSettings" payload:v5];
}

+ (void)incrementBrowsingCountForViewType:(unint64_t)type
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [self _viewNameForViewType:type];
  v7 = @"view";
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"Browsing" payload:v5];
}

+ (void)incrementPlaybackStartCountWithPath:(id)path shuffled:(BOOL)shuffled endpointType:(unint64_t)type
{
  shuffledCopy = shuffled;
  v20[4] = *MEMORY[0x277D85DE8];
  v19[0] = @"view";
  pathCopy = path;
  v9 = [(__CFString *)pathCopy componentsSeparatedByString:@"/"];
  lastObject = [v9 lastObject];
  v11 = lastObject;
  v12 = @"unknown";
  if (lastObject)
  {
    v13 = lastObject;
  }

  else
  {
    v13 = @"unknown";
  }

  if (pathCopy)
  {
    v12 = pathCopy;
  }

  v20[0] = v13;
  v20[1] = v12;
  v19[1] = @"path";
  v19[2] = @"origin";
  v14 = NSStringFromNMUMetricsEndpointType(type);
  v15 = v14;
  v19[3] = @"action";
  v16 = @"Play";
  if (shuffledCopy)
  {
    v16 = @"Shuffle";
  }

  v20[2] = v14;
  v20[3] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];

  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"Playback" payload:v17];
}

+ (void)incrementPlaybackStartCountFromViewType:(unint64_t)type endpointType:(unint64_t)endpointType
{
  v11[3] = *MEMORY[0x277D85DE8];
  v6 = [self _viewNameForViewType:type];
  v7 = NSStringFromNMUMetricsEndpointType(endpointType);
  v10[0] = @"view";
  v10[1] = @"origin";
  v11[0] = v6;
  v11[1] = v7;
  v10[2] = @"action";
  v11[2] = @"Play";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"Playback" payload:v8];
}

+ (void)incrementPlaybackStartCountFromViewType:(unint64_t)type index:(int64_t)index endpointType:(unint64_t)endpointType playerBundleID:(id)d
{
  v17[5] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v11 = [self _viewNameForViewType:type];
  v12 = NSStringFromNMUMetricsEndpointType(endpointType);
  v16[0] = @"view";
  v16[1] = @"origin";
  v17[0] = v11;
  v17[1] = v12;
  v17[2] = @"PlayItem";
  v16[2] = @"action";
  v16[3] = @"index";
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  v16[4] = @"bundle";
  v17[3] = v13;
  v17[4] = dCopy;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];

  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"Playback" payload:v14];
}

+ (void)incrementPlaybackShuffleAllCountFromViewType:(unint64_t)type endpointType:(unint64_t)endpointType
{
  v11[3] = *MEMORY[0x277D85DE8];
  v6 = [self _viewNameForViewType:type];
  v7 = NSStringFromNMUMetricsEndpointType(endpointType);
  v10[0] = @"view";
  v10[1] = @"origin";
  v11[0] = v6;
  v11[1] = v7;
  v10[2] = @"action";
  v11[2] = @"Shuffle";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"Playback" payload:v8];
}

+ (void)incrementPlaybackRoutePickerPresentationCount
{
  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"Playback" payload:&unk_286C82888];
}

+ (void)incrementCrownBasedVolumeControlCountWithEndpointType:(unint64_t)type
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = NSStringFromNMUMetricsEndpointType(type);
  v7[0] = @"action";
  v7[1] = @"origin";
  v8[0] = @"Crown";
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"VolumeControl" payload:v5];
}

+ (void)incrementRouteSelectCountWithEndpointType:(unint64_t)type
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = NSStringFromNMUMetricsEndpointType(type);
  v7[0] = @"action";
  v7[1] = @"origin";
  v8[0] = @"RouteSelect";
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"RoutePicking" payload:v5];
}

+ (void)incrementRouteChangeCountWithEndpointType:(unint64_t)type
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = NSStringFromNMUMetricsEndpointType(type);
  v7[0] = @"action";
  v7[1] = @"origin";
  v8[0] = @"RouteChange";
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"RoutePicking" payload:v5];
}

+ (void)incrementRouteSelectionResult:(unint64_t)result endpointType:(unint64_t)type
{
  v11[3] = *MEMORY[0x277D85DE8];
  v6 = [self _stringForRoutePickingResult:result];
  v7 = NSStringFromNMUMetricsEndpointType(type);
  v10[0] = @"action";
  v10[1] = @"result";
  v11[0] = @"Result";
  v11[1] = v6;
  v10[2] = @"origin";
  v11[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"RoutePicking" payload:v8];
}

+ (void)incrementRouteAutoSelectionResult:(unint64_t)result
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = [self _stringForRoutePickingResult:result];
  v7[0] = @"action";
  v7[1] = @"result";
  v8[0] = @"W1RouteAutoSelect";
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"RoutePicking" payload:v5];
}

+ (void)incrementShuffleModeChangeCountWithEndpointType:(unint64_t)type
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = NSStringFromNMUMetricsEndpointType(type);
  v7[0] = @"action";
  v7[1] = @"origin";
  v8[0] = @"ChangeShuffleMode";
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"TrackList" payload:v5];
}

+ (void)incrementRepeatModeChangeCountWithEndpointType:(unint64_t)type
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = NSStringFromNMUMetricsEndpointType(type);
  v7[0] = @"action";
  v7[1] = @"origin";
  v8[0] = @"ChangeRepeatMode";
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"TrackList" payload:v5];
}

+ (void)incrementAutoPlayChangeCountWithEndpointType:(unint64_t)type
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = NSStringFromNMUMetricsEndpointType(type);
  v7[0] = @"action";
  v7[1] = @"origin";
  v8[0] = @"ChangeQueueEndAction";
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"TrackList" payload:v5];
}

+ (void)incrementTrackListTrackSelectionCountWithEndpointType:(unint64_t)type
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = NSStringFromNMUMetricsEndpointType(type);
  v7[0] = @"action";
  v7[1] = @"origin";
  v8[0] = @"SelectTrack";
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"TrackList" payload:v5];
}

+ (void)incrementTapCountForMoreActionType:(unint64_t)type context:(unint64_t)context
{
  v11[2] = *MEMORY[0x277D85DE8];
  v6 = [self _actionNameFromMoreActionType:type];
  v7 = [self _contextNameFromMoreActionContextType:context];
  v10[0] = @"action";
  v10[1] = @"context";
  v11[0] = v6;
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"MoreMenu" payload:v8];
}

+ (void)incrementMediaSuggestionsTappedWithEndpointType:(unint64_t)type contextType:(unint64_t)contextType mediaType:(unint64_t)mediaType
{
  v14[4] = *MEMORY[0x277D85DE8];
  v8 = NSStringFromNMUMetricsEndpointType(type);
  v9 = [self _stringFromSuggestionsContextType:contextType];
  v10 = [self _stringFromSuggestionsMediaType:mediaType];
  v13[0] = @"view";
  v13[1] = @"endpoint";
  v14[0] = @"MediaSuggestions_SuggestionTapped";
  v14[1] = v8;
  v13[2] = @"context";
  v13[3] = @"media_type";
  v14[2] = v9;
  v14[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"SuggestionTapped" payload:v11];
}

+ (void)incrementBrowsingCountForViewType:(unint64_t)type endpointType:(unint64_t)endpointType
{
  v11[2] = *MEMORY[0x277D85DE8];
  v6 = [self _viewNameForViewType:type];
  v7 = NSStringFromNMUMetricsEndpointType(endpointType);
  v10[0] = @"view";
  v10[1] = @"origin";
  v11[0] = v6;
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"Browsing" payload:v8];
}

+ (void)incrementTapCountForKeepLocalErrorAlertReason:(unint64_t)reason action:(unint64_t)action
{
  v11[2] = *MEMORY[0x277D85DE8];
  v6 = [self _alertReasonFromKeepLocalErrorAlertReason:reason];
  v7 = [self _actionNameFromAlertAction:action];
  v10[0] = @"action";
  v10[1] = @"reason";
  v11[0] = v7;
  v11[1] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"KeepLocalErrorAlert" payload:v8];
}

+ (void)incrementTapCountForDownloadWaitingReason:(unint64_t)reason action:(unint64_t)action
{
  v11[2] = *MEMORY[0x277D85DE8];
  v6 = [self _alertReasonFromDownloadWaitingReason:reason];
  v7 = [self _actionNameFromAlertAction:action];
  v10[0] = @"action";
  v10[1] = @"reason";
  v11[0] = v7;
  v11[1] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  sharedMetricsReporter = [self sharedMetricsReporter];
  [sharedMetricsReporter _sendEvent:@"DownloadWaitingAlert" payload:v8];
}

- (void)_sendEvent:(id)event payload:(id)payload
{
  eventCopy = event;
  payloadCopy = payload;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__NMUMetricsReporter__sendEvent_payload___block_invoke;
  v11[3] = &unk_27993BF58;
  v12 = eventCopy;
  v13 = payloadCopy;
  v9 = payloadCopy;
  v10 = eventCopy;
  dispatch_async(queue, v11);
}

void __41__NMUMetricsReporter__sendEvent_payload___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.NanoMediaUI", *(a1 + 32)];
  v3 = *(a1 + 40);
  AnalyticsSendEventLazy();
}

id __41__NMUMetricsReporter__sendEvent_payload___block_invoke_2(uint64_t a1)
{
  v1 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:*(a1 + 32)];
  v2 = +[NMUMetricsReporter _processName];
  [v1 setObject:v2 forKey:@"processName"];

  return v1;
}

+ (id)_launcherNameForLaunchURLType:(unint64_t)type
{
  if (type > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_27993BFA8[type];
  }
}

+ (id)_viewNameForViewType:(unint64_t)type
{
  if (type > 0x2A)
  {
    return @"Unknown";
  }

  else
  {
    return off_27993BFC8[type];
  }
}

+ (id)_actionNameFromMoreActionType:(unint64_t)type
{
  if (type > 0x14)
  {
    return @"Unknown";
  }

  else
  {
    return off_27993C120[type];
  }
}

+ (id)_actionNameFromAlertAction:(unint64_t)action
{
  if (action > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_27993C1C8[action];
  }
}

+ (id)_alertReasonFromKeepLocalErrorAlertReason:(unint64_t)reason
{
  if (reason > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_27993C200[reason];
  }
}

+ (id)_alertReasonFromDownloadWaitingReason:(unint64_t)reason
{
  if (reason > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_27993C240[reason];
  }
}

+ (id)_stringForRoutePickingResult:(unint64_t)result
{
  if (result > 2)
  {
    return 0;
  }

  else
  {
    return off_27993C298[result];
  }
}

+ (id)_contextNameFromMoreActionContextType:(unint64_t)type
{
  if (type > 6)
  {
    return 0;
  }

  else
  {
    return off_27993C2B0[type];
  }
}

+ (id)_stringFromSuggestionsContextType:(unint64_t)type
{
  if (type - 1 > 2)
  {
    return @"Unspecified";
  }

  else
  {
    return off_27993C2E8[type - 1];
  }
}

+ (id)_stringFromSuggestionsMediaType:(unint64_t)type
{
  v3 = @"Unspecified";
  if (type == 1)
  {
    v3 = @"Music";
  }

  if (type == 2)
  {
    return @"Podcast";
  }

  else
  {
    return v3;
  }
}

@end