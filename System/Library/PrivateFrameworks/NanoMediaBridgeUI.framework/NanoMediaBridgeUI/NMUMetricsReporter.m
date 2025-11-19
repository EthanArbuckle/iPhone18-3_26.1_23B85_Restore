@interface NMUMetricsReporter
+ (id)_actionNameFromAlertAction:(unint64_t)a3;
+ (id)_actionNameFromMoreActionType:(unint64_t)a3;
+ (id)_alertReasonFromDownloadWaitingReason:(unint64_t)a3;
+ (id)_alertReasonFromKeepLocalErrorAlertReason:(unint64_t)a3;
+ (id)_contextNameFromMoreActionContextType:(unint64_t)a3;
+ (id)_launcherNameForLaunchURLType:(unint64_t)a3;
+ (id)_processName;
+ (id)_stringForRoutePickingResult:(unint64_t)a3;
+ (id)_stringFromSuggestionsContextType:(unint64_t)a3;
+ (id)_stringFromSuggestionsMediaType:(unint64_t)a3;
+ (id)_viewNameForViewType:(unint64_t)a3;
+ (void)incrementAutoPlayChangeCountWithEndpointType:(unint64_t)a3;
+ (void)incrementBrowsingCountForViewType:(unint64_t)a3;
+ (void)incrementBrowsingCountForViewType:(unint64_t)a3 endpointType:(unint64_t)a4;
+ (void)incrementCrownBasedVolumeControlCountWithEndpointType:(unint64_t)a3;
+ (void)incrementLaunchCountForLaunchURLType:(unint64_t)a3;
+ (void)incrementMediaSuggestionsTappedWithEndpointType:(unint64_t)a3 contextType:(unint64_t)a4 mediaType:(unint64_t)a5;
+ (void)incrementPlaybackRoutePickerPresentationCount;
+ (void)incrementPlaybackShuffleAllCountFromViewType:(unint64_t)a3 endpointType:(unint64_t)a4;
+ (void)incrementPlaybackStartCountFromViewType:(unint64_t)a3 endpointType:(unint64_t)a4;
+ (void)incrementPlaybackStartCountFromViewType:(unint64_t)a3 index:(int64_t)a4 endpointType:(unint64_t)a5 playerBundleID:(id)a6;
+ (void)incrementPlaybackStartCountWithPath:(id)a3 shuffled:(BOOL)a4 endpointType:(unint64_t)a5;
+ (void)incrementRepeatModeChangeCountWithEndpointType:(unint64_t)a3;
+ (void)incrementRouteAutoSelectionResult:(unint64_t)a3;
+ (void)incrementRouteChangeCountWithEndpointType:(unint64_t)a3;
+ (void)incrementRouteSelectCountWithEndpointType:(unint64_t)a3;
+ (void)incrementRouteSelectionResult:(unint64_t)a3 endpointType:(unint64_t)a4;
+ (void)incrementShuffleModeChangeCountWithEndpointType:(unint64_t)a3;
+ (void)incrementTapCountForDownloadWaitingReason:(unint64_t)a3 action:(unint64_t)a4;
+ (void)incrementTapCountForKeepLocalErrorAlertReason:(unint64_t)a3 action:(unint64_t)a4;
+ (void)incrementTapCountForMoreActionType:(unint64_t)a3 context:(unint64_t)a4;
+ (void)incrementTrackListTrackSelectionCountWithEndpointType:(unint64_t)a3;
+ (void)updatePinnedAlbumsCount:(int64_t)a3;
+ (void)updatePinnedPlaylistsCount:(int64_t)a3;
+ (void)updatePinnedRecommendationsCount:(int64_t)a3;
+ (void)updateTopLevelContainersCount:(int64_t)a3;
- (NMUMetricsReporter)init;
- (void)_sendEvent:(id)a3 payload:(id)a4;
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

+ (void)incrementLaunchCountForLaunchURLType:(unint64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 _launcherNameForLaunchURLType:a3];
  v7 = @"launchURLType";
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v6 = [a1 sharedMetricsReporter];
  [v6 _sendEvent:@"LaunchURL" payload:v5];
}

+ (void)updateTopLevelContainersCount:(int64_t)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"nmu_view";
  v7[1] = @"nmu_count";
  v8[0] = @"TopLevelContainers";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v6 = [a1 sharedMetricsReporter];
  [v6 _sendEvent:@"PinningSettings" payload:v5];
}

+ (void)updatePinnedPlaylistsCount:(int64_t)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"nmu_view";
  v7[1] = @"nmu_count";
  v8[0] = @"PinnedPlaylists";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v6 = [a1 sharedMetricsReporter];
  [v6 _sendEvent:@"PinningSettings" payload:v5];
}

+ (void)updatePinnedAlbumsCount:(int64_t)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"nmu_view";
  v7[1] = @"nmu_count";
  v8[0] = @"PinnedAlbums";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v6 = [a1 sharedMetricsReporter];
  [v6 _sendEvent:@"PinningSettings" payload:v5];
}

+ (void)updatePinnedRecommendationsCount:(int64_t)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"nmu_view";
  v7[1] = @"nmu_count";
  v8[0] = @"PinnedRecommendations";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v6 = [a1 sharedMetricsReporter];
  [v6 _sendEvent:@"PinningSettings" payload:v5];
}

+ (void)incrementBrowsingCountForViewType:(unint64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 _viewNameForViewType:a3];
  v7 = @"view";
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v6 = [a1 sharedMetricsReporter];
  [v6 _sendEvent:@"Browsing" payload:v5];
}

+ (void)incrementPlaybackStartCountWithPath:(id)a3 shuffled:(BOOL)a4 endpointType:(unint64_t)a5
{
  v6 = a4;
  v20[4] = *MEMORY[0x277D85DE8];
  v19[0] = @"view";
  v8 = a3;
  v9 = [(__CFString *)v8 componentsSeparatedByString:@"/"];
  v10 = [v9 lastObject];
  v11 = v10;
  v12 = @"unknown";
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = @"unknown";
  }

  if (v8)
  {
    v12 = v8;
  }

  v20[0] = v13;
  v20[1] = v12;
  v19[1] = @"path";
  v19[2] = @"origin";
  v14 = NSStringFromNMUMetricsEndpointType(a5);
  v15 = v14;
  v19[3] = @"action";
  v16 = @"Play";
  if (v6)
  {
    v16 = @"Shuffle";
  }

  v20[2] = v14;
  v20[3] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];

  v18 = [a1 sharedMetricsReporter];
  [v18 _sendEvent:@"Playback" payload:v17];
}

+ (void)incrementPlaybackStartCountFromViewType:(unint64_t)a3 endpointType:(unint64_t)a4
{
  v11[3] = *MEMORY[0x277D85DE8];
  v6 = [a1 _viewNameForViewType:a3];
  v7 = NSStringFromNMUMetricsEndpointType(a4);
  v10[0] = @"view";
  v10[1] = @"origin";
  v11[0] = v6;
  v11[1] = v7;
  v10[2] = @"action";
  v11[2] = @"Play";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v9 = [a1 sharedMetricsReporter];
  [v9 _sendEvent:@"Playback" payload:v8];
}

+ (void)incrementPlaybackStartCountFromViewType:(unint64_t)a3 index:(int64_t)a4 endpointType:(unint64_t)a5 playerBundleID:(id)a6
{
  v17[5] = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = [a1 _viewNameForViewType:a3];
  v12 = NSStringFromNMUMetricsEndpointType(a5);
  v16[0] = @"view";
  v16[1] = @"origin";
  v17[0] = v11;
  v17[1] = v12;
  v17[2] = @"PlayItem";
  v16[2] = @"action";
  v16[3] = @"index";
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v16[4] = @"bundle";
  v17[3] = v13;
  v17[4] = v10;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];

  v15 = [a1 sharedMetricsReporter];
  [v15 _sendEvent:@"Playback" payload:v14];
}

+ (void)incrementPlaybackShuffleAllCountFromViewType:(unint64_t)a3 endpointType:(unint64_t)a4
{
  v11[3] = *MEMORY[0x277D85DE8];
  v6 = [a1 _viewNameForViewType:a3];
  v7 = NSStringFromNMUMetricsEndpointType(a4);
  v10[0] = @"view";
  v10[1] = @"origin";
  v11[0] = v6;
  v11[1] = v7;
  v10[2] = @"action";
  v11[2] = @"Shuffle";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v9 = [a1 sharedMetricsReporter];
  [v9 _sendEvent:@"Playback" payload:v8];
}

+ (void)incrementPlaybackRoutePickerPresentationCount
{
  v2 = [a1 sharedMetricsReporter];
  [v2 _sendEvent:@"Playback" payload:&unk_286C82888];
}

+ (void)incrementCrownBasedVolumeControlCountWithEndpointType:(unint64_t)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = NSStringFromNMUMetricsEndpointType(a3);
  v7[0] = @"action";
  v7[1] = @"origin";
  v8[0] = @"Crown";
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v6 = [a1 sharedMetricsReporter];
  [v6 _sendEvent:@"VolumeControl" payload:v5];
}

+ (void)incrementRouteSelectCountWithEndpointType:(unint64_t)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = NSStringFromNMUMetricsEndpointType(a3);
  v7[0] = @"action";
  v7[1] = @"origin";
  v8[0] = @"RouteSelect";
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v6 = [a1 sharedMetricsReporter];
  [v6 _sendEvent:@"RoutePicking" payload:v5];
}

+ (void)incrementRouteChangeCountWithEndpointType:(unint64_t)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = NSStringFromNMUMetricsEndpointType(a3);
  v7[0] = @"action";
  v7[1] = @"origin";
  v8[0] = @"RouteChange";
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v6 = [a1 sharedMetricsReporter];
  [v6 _sendEvent:@"RoutePicking" payload:v5];
}

+ (void)incrementRouteSelectionResult:(unint64_t)a3 endpointType:(unint64_t)a4
{
  v11[3] = *MEMORY[0x277D85DE8];
  v6 = [a1 _stringForRoutePickingResult:a3];
  v7 = NSStringFromNMUMetricsEndpointType(a4);
  v10[0] = @"action";
  v10[1] = @"result";
  v11[0] = @"Result";
  v11[1] = v6;
  v10[2] = @"origin";
  v11[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v9 = [a1 sharedMetricsReporter];
  [v9 _sendEvent:@"RoutePicking" payload:v8];
}

+ (void)incrementRouteAutoSelectionResult:(unint64_t)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = [a1 _stringForRoutePickingResult:a3];
  v7[0] = @"action";
  v7[1] = @"result";
  v8[0] = @"W1RouteAutoSelect";
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v6 = [a1 sharedMetricsReporter];
  [v6 _sendEvent:@"RoutePicking" payload:v5];
}

+ (void)incrementShuffleModeChangeCountWithEndpointType:(unint64_t)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = NSStringFromNMUMetricsEndpointType(a3);
  v7[0] = @"action";
  v7[1] = @"origin";
  v8[0] = @"ChangeShuffleMode";
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v6 = [a1 sharedMetricsReporter];
  [v6 _sendEvent:@"TrackList" payload:v5];
}

+ (void)incrementRepeatModeChangeCountWithEndpointType:(unint64_t)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = NSStringFromNMUMetricsEndpointType(a3);
  v7[0] = @"action";
  v7[1] = @"origin";
  v8[0] = @"ChangeRepeatMode";
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v6 = [a1 sharedMetricsReporter];
  [v6 _sendEvent:@"TrackList" payload:v5];
}

+ (void)incrementAutoPlayChangeCountWithEndpointType:(unint64_t)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = NSStringFromNMUMetricsEndpointType(a3);
  v7[0] = @"action";
  v7[1] = @"origin";
  v8[0] = @"ChangeQueueEndAction";
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v6 = [a1 sharedMetricsReporter];
  [v6 _sendEvent:@"TrackList" payload:v5];
}

+ (void)incrementTrackListTrackSelectionCountWithEndpointType:(unint64_t)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = NSStringFromNMUMetricsEndpointType(a3);
  v7[0] = @"action";
  v7[1] = @"origin";
  v8[0] = @"SelectTrack";
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v6 = [a1 sharedMetricsReporter];
  [v6 _sendEvent:@"TrackList" payload:v5];
}

+ (void)incrementTapCountForMoreActionType:(unint64_t)a3 context:(unint64_t)a4
{
  v11[2] = *MEMORY[0x277D85DE8];
  v6 = [a1 _actionNameFromMoreActionType:a3];
  v7 = [a1 _contextNameFromMoreActionContextType:a4];
  v10[0] = @"action";
  v10[1] = @"context";
  v11[0] = v6;
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v9 = [a1 sharedMetricsReporter];
  [v9 _sendEvent:@"MoreMenu" payload:v8];
}

+ (void)incrementMediaSuggestionsTappedWithEndpointType:(unint64_t)a3 contextType:(unint64_t)a4 mediaType:(unint64_t)a5
{
  v14[4] = *MEMORY[0x277D85DE8];
  v8 = NSStringFromNMUMetricsEndpointType(a3);
  v9 = [a1 _stringFromSuggestionsContextType:a4];
  v10 = [a1 _stringFromSuggestionsMediaType:a5];
  v13[0] = @"view";
  v13[1] = @"endpoint";
  v14[0] = @"MediaSuggestions_SuggestionTapped";
  v14[1] = v8;
  v13[2] = @"context";
  v13[3] = @"media_type";
  v14[2] = v9;
  v14[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
  v12 = [a1 sharedMetricsReporter];
  [v12 _sendEvent:@"SuggestionTapped" payload:v11];
}

+ (void)incrementBrowsingCountForViewType:(unint64_t)a3 endpointType:(unint64_t)a4
{
  v11[2] = *MEMORY[0x277D85DE8];
  v6 = [a1 _viewNameForViewType:a3];
  v7 = NSStringFromNMUMetricsEndpointType(a4);
  v10[0] = @"view";
  v10[1] = @"origin";
  v11[0] = v6;
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v9 = [a1 sharedMetricsReporter];
  [v9 _sendEvent:@"Browsing" payload:v8];
}

+ (void)incrementTapCountForKeepLocalErrorAlertReason:(unint64_t)a3 action:(unint64_t)a4
{
  v11[2] = *MEMORY[0x277D85DE8];
  v6 = [a1 _alertReasonFromKeepLocalErrorAlertReason:a3];
  v7 = [a1 _actionNameFromAlertAction:a4];
  v10[0] = @"action";
  v10[1] = @"reason";
  v11[0] = v7;
  v11[1] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v9 = [a1 sharedMetricsReporter];
  [v9 _sendEvent:@"KeepLocalErrorAlert" payload:v8];
}

+ (void)incrementTapCountForDownloadWaitingReason:(unint64_t)a3 action:(unint64_t)a4
{
  v11[2] = *MEMORY[0x277D85DE8];
  v6 = [a1 _alertReasonFromDownloadWaitingReason:a3];
  v7 = [a1 _actionNameFromAlertAction:a4];
  v10[0] = @"action";
  v10[1] = @"reason";
  v11[0] = v7;
  v11[1] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v9 = [a1 sharedMetricsReporter];
  [v9 _sendEvent:@"DownloadWaitingAlert" payload:v8];
}

- (void)_sendEvent:(id)a3 payload:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__NMUMetricsReporter__sendEvent_payload___block_invoke;
  v11[3] = &unk_27993BF58;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

+ (id)_launcherNameForLaunchURLType:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_27993BFA8[a3];
  }
}

+ (id)_viewNameForViewType:(unint64_t)a3
{
  if (a3 > 0x2A)
  {
    return @"Unknown";
  }

  else
  {
    return off_27993BFC8[a3];
  }
}

+ (id)_actionNameFromMoreActionType:(unint64_t)a3
{
  if (a3 > 0x14)
  {
    return @"Unknown";
  }

  else
  {
    return off_27993C120[a3];
  }
}

+ (id)_actionNameFromAlertAction:(unint64_t)a3
{
  if (a3 > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_27993C1C8[a3];
  }
}

+ (id)_alertReasonFromKeepLocalErrorAlertReason:(unint64_t)a3
{
  if (a3 > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_27993C200[a3];
  }
}

+ (id)_alertReasonFromDownloadWaitingReason:(unint64_t)a3
{
  if (a3 > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_27993C240[a3];
  }
}

+ (id)_stringForRoutePickingResult:(unint64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_27993C298[a3];
  }
}

+ (id)_contextNameFromMoreActionContextType:(unint64_t)a3
{
  if (a3 > 6)
  {
    return 0;
  }

  else
  {
    return off_27993C2B0[a3];
  }
}

+ (id)_stringFromSuggestionsContextType:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"Unspecified";
  }

  else
  {
    return off_27993C2E8[a3 - 1];
  }
}

+ (id)_stringFromSuggestionsMediaType:(unint64_t)a3
{
  v3 = @"Unspecified";
  if (a3 == 1)
  {
    v3 = @"Music";
  }

  if (a3 == 2)
  {
    return @"Podcast";
  }

  else
  {
    return v3;
  }
}

@end