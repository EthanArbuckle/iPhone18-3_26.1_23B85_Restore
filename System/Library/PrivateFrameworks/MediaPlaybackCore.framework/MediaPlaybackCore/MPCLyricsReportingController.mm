@interface MPCLyricsReportingController
- (void)recordLyricsViewEvent:(id)event;
@end

@implementation MPCLyricsReportingController

- (void)recordLyricsViewEvent:(id)event
{
  v77[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  modelSong = [eventCopy modelSong];
  lyrics = [modelSong lyrics];
  hasStoreLyrics = [lyrics hasStoreLyrics];

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
  v8 = os_log_type_enabled(&v7->super, OS_LOG_TYPE_INFO);
  if (hasStoreLyrics)
  {
    v61 = modelSong;
    if (v8)
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      modelSong2 = [eventCopy modelSong];
      identifiers = [modelSong2 identifiers];
      universalStore = [identifiers universalStore];
      subscriptionAdamID = [universalStore subscriptionAdamID];
      modelSong3 = [eventCopy modelSong];
      identifiers2 = [modelSong3 identifiers];
      universalStore2 = [identifiers2 universalStore];
      adamID = [universalStore2 adamID];
      displayType = [eventCopy displayType];
      [eventCopy visibleDuration];
      *&v18 = v18;
      *buf = 138544642;
      v64 = v10;
      v65 = 2048;
      v66 = eventCopy;
      v67 = 2048;
      v68 = subscriptionAdamID;
      v69 = 2048;
      v70 = adamID;
      v71 = 2048;
      v72 = displayType;
      v73 = 2048;
      v74 = *&v18;
      _os_log_impl(&dword_1C5C61000, &v7->super, OS_LOG_TYPE_INFO, "Beginning report for <%{public}@: %p, (subscriptionAdamId=%lld, adamId=%lld) type=%ld, dur=%f>", buf, 0x3Eu);

      modelSong = v61;
    }

    v7 = objc_alloc_init(MPCReportingPlaybackEventSource);
    v19 = [MEMORY[0x1E6970670] genericObjectWithModelObject:modelSong];
    [(MPCReportingPlaybackEventSource *)v7 setItemGenericObject:v19];

    modelPlayEvent = [eventCopy modelPlayEvent];
    [(MPCReportingPlaybackEventSource *)v7 setModelPlayEvent:modelPlayEvent];

    featureName = [eventCopy featureName];
    [(MPCReportingPlaybackEventSource *)v7 setFeatureName:featureName];

    recommendationData = [eventCopy recommendationData];
    [(MPCReportingPlaybackEventSource *)v7 setRecommendationData:recommendationData];

    lyricsID = [eventCopy lyricsID];

    if (lyricsID)
    {
      lyricsID2 = [eventCopy lyricsID];
      [(MPCReportingPlaybackEventSource *)v7 setLyricsID:lyricsID2];
    }

    else
    {
      lyricsID2 = [modelSong lyrics];
      identifiers3 = [lyricsID2 identifiers];
      lyricsID3 = [identifiers3 lyricsID];
      [(MPCReportingPlaybackEventSource *)v7 setLyricsID:lyricsID3];
    }

    v37 = +[MPCReportingPlaybackObserver sharedReportingPlaybackObserver];
    newPlayActivityEvent = [v37 newPlayActivityEvent];

    [newPlayActivityEvent setEventType:2];
    [eventCopy visibleDuration];
    [newPlayActivityEvent setItemEndTime:?];
    [newPlayActivityEvent setLyricsDisplayedCharacterCount:{objc_msgSend(eventCopy, "displayedCharacterCount")}];
    language = [eventCopy language];
    [newPlayActivityEvent setLyricsLanguage:language];

    [newPlayActivityEvent setContinuityCameraUsed:{objc_msgSend(eventCopy, "continuityCameraUsed")}];
    [newPlayActivityEvent setContinuityMicrophoneUsed:{objc_msgSend(eventCopy, "continuityMicrophoneUsed")}];
    [newPlayActivityEvent setDisplayTranslationEnabled:{objc_msgSend(eventCopy, "displayTranslationEnabled")}];
    [newPlayActivityEvent setDisplayTransliterationEnabled:{objc_msgSend(eventCopy, "displayTransliterationEnabled")}];
    [newPlayActivityEvent setSourceType:{2 * (objc_msgSend(eventCopy, "sourceType") == 1)}];
    displayType2 = [eventCopy displayType];
    if (displayType2 < 3)
    {
      v41 = displayType2 + 1;
    }

    else
    {
      v41 = 0;
    }

    [newPlayActivityEvent setDisplayType:v41];
    v42 = +[MPCReportingPlaybackObserver sharedReportingPlaybackObserver];
    v77[0] = newPlayActivityEvent;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:1];
    [v42 recordPlayActivityEvents:v43 forEventSource:v7];

    v44 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      modelSong4 = [eventCopy modelSong];
      identifiers4 = [modelSong4 identifiers];
      universalStore3 = [identifiers4 universalStore];
      subscriptionAdamID2 = [universalStore3 subscriptionAdamID];
      modelSong5 = [eventCopy modelSong];
      identifiers5 = [modelSong5 identifiers];
      universalStore4 = [identifiers5 universalStore];
      adamID2 = [universalStore4 adamID];
      displayType3 = [eventCopy displayType];
      [eventCopy visibleDuration];
      *&v52 = v52;
      *buf = 138544898;
      v64 = v46;
      v65 = 2048;
      v66 = eventCopy;
      v67 = 2048;
      v68 = subscriptionAdamID2;
      v69 = 2048;
      v70 = adamID2;
      v71 = 2048;
      v72 = displayType3;
      v73 = 2048;
      v74 = *&v52;
      v75 = 2048;
      v76 = newPlayActivityEvent;
      _os_log_impl(&dword_1C5C61000, v44, OS_LOG_TYPE_INFO, "Reported <%{public}@: %p, (subscriptionAdamId=%lld, adamId=%lld) type=%ld, dur=%f> with playActivityEvent: %p", buf, 0x48u);

      modelSong = v61;
    }
  }

  else if (v8)
  {
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    modelSong6 = [eventCopy modelSong];
    [modelSong6 identifiers];
    v56 = v62 = modelSong;
    universalStore5 = [v56 universalStore];
    subscriptionAdamID3 = [universalStore5 subscriptionAdamID];
    modelSong7 = [eventCopy modelSong];
    identifiers6 = [modelSong7 identifiers];
    universalStore6 = [identifiers6 universalStore];
    adamID3 = [universalStore6 adamID];
    displayType4 = [eventCopy displayType];
    [eventCopy visibleDuration];
    *&v34 = v34;
    *buf = 138544642;
    v64 = v26;
    v65 = 2048;
    v66 = eventCopy;
    v67 = 2048;
    v68 = subscriptionAdamID3;
    v69 = 2048;
    v70 = adamID3;
    v71 = 2048;
    v72 = displayType4;
    v73 = 2048;
    v74 = *&v34;
    _os_log_impl(&dword_1C5C61000, &v7->super, OS_LOG_TYPE_INFO, "Not reporting non store lyrics event for <%{public}@: %p, (subscriptionAdamId=%lld, adamId=%lld) type=%ld, dur=%f>", buf, 0x3Eu);

    modelSong = v62;
  }
}

@end