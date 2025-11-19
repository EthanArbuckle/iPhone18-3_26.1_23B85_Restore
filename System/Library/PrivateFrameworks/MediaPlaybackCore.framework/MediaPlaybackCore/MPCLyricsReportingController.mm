@interface MPCLyricsReportingController
- (void)recordLyricsViewEvent:(id)a3;
@end

@implementation MPCLyricsReportingController

- (void)recordLyricsViewEvent:(id)a3
{
  v77[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 modelSong];
  v5 = [v4 lyrics];
  v6 = [v5 hasStoreLyrics];

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
  v8 = os_log_type_enabled(&v7->super, OS_LOG_TYPE_INFO);
  if (v6)
  {
    v61 = v4;
    if (v8)
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v58 = [v3 modelSong];
      v55 = [v58 identifiers];
      v11 = [v55 universalStore];
      v12 = [v11 subscriptionAdamID];
      v13 = [v3 modelSong];
      v14 = [v13 identifiers];
      v15 = [v14 universalStore];
      v16 = [v15 adamID];
      v17 = [v3 displayType];
      [v3 visibleDuration];
      *&v18 = v18;
      *buf = 138544642;
      v64 = v10;
      v65 = 2048;
      v66 = v3;
      v67 = 2048;
      v68 = v12;
      v69 = 2048;
      v70 = v16;
      v71 = 2048;
      v72 = v17;
      v73 = 2048;
      v74 = *&v18;
      _os_log_impl(&dword_1C5C61000, &v7->super, OS_LOG_TYPE_INFO, "Beginning report for <%{public}@: %p, (subscriptionAdamId=%lld, adamId=%lld) type=%ld, dur=%f>", buf, 0x3Eu);

      v4 = v61;
    }

    v7 = objc_alloc_init(MPCReportingPlaybackEventSource);
    v19 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v4];
    [(MPCReportingPlaybackEventSource *)v7 setItemGenericObject:v19];

    v20 = [v3 modelPlayEvent];
    [(MPCReportingPlaybackEventSource *)v7 setModelPlayEvent:v20];

    v21 = [v3 featureName];
    [(MPCReportingPlaybackEventSource *)v7 setFeatureName:v21];

    v22 = [v3 recommendationData];
    [(MPCReportingPlaybackEventSource *)v7 setRecommendationData:v22];

    v23 = [v3 lyricsID];

    if (v23)
    {
      v24 = [v3 lyricsID];
      [(MPCReportingPlaybackEventSource *)v7 setLyricsID:v24];
    }

    else
    {
      v24 = [v4 lyrics];
      v35 = [v24 identifiers];
      v36 = [v35 lyricsID];
      [(MPCReportingPlaybackEventSource *)v7 setLyricsID:v36];
    }

    v37 = +[MPCReportingPlaybackObserver sharedReportingPlaybackObserver];
    v38 = [v37 newPlayActivityEvent];

    [v38 setEventType:2];
    [v3 visibleDuration];
    [v38 setItemEndTime:?];
    [v38 setLyricsDisplayedCharacterCount:{objc_msgSend(v3, "displayedCharacterCount")}];
    v39 = [v3 language];
    [v38 setLyricsLanguage:v39];

    [v38 setContinuityCameraUsed:{objc_msgSend(v3, "continuityCameraUsed")}];
    [v38 setContinuityMicrophoneUsed:{objc_msgSend(v3, "continuityMicrophoneUsed")}];
    [v38 setDisplayTranslationEnabled:{objc_msgSend(v3, "displayTranslationEnabled")}];
    [v38 setDisplayTransliterationEnabled:{objc_msgSend(v3, "displayTransliterationEnabled")}];
    [v38 setSourceType:{2 * (objc_msgSend(v3, "sourceType") == 1)}];
    v40 = [v3 displayType];
    if (v40 < 3)
    {
      v41 = v40 + 1;
    }

    else
    {
      v41 = 0;
    }

    [v38 setDisplayType:v41];
    v42 = +[MPCReportingPlaybackObserver sharedReportingPlaybackObserver];
    v77[0] = v38;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:1];
    [v42 recordPlayActivityEvents:v43 forEventSource:v7];

    v44 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v60 = [v3 modelSong];
      v57 = [v60 identifiers];
      v54 = [v57 universalStore];
      v53 = [v54 subscriptionAdamID];
      v47 = [v3 modelSong];
      v48 = [v47 identifiers];
      v49 = [v48 universalStore];
      v50 = [v49 adamID];
      v51 = [v3 displayType];
      [v3 visibleDuration];
      *&v52 = v52;
      *buf = 138544898;
      v64 = v46;
      v65 = 2048;
      v66 = v3;
      v67 = 2048;
      v68 = v53;
      v69 = 2048;
      v70 = v50;
      v71 = 2048;
      v72 = v51;
      v73 = 2048;
      v74 = *&v52;
      v75 = 2048;
      v76 = v38;
      _os_log_impl(&dword_1C5C61000, v44, OS_LOG_TYPE_INFO, "Reported <%{public}@: %p, (subscriptionAdamId=%lld, adamId=%lld) type=%ld, dur=%f> with playActivityEvent: %p", buf, 0x48u);

      v4 = v61;
    }
  }

  else if (v8)
  {
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v59 = [v3 modelSong];
    [v59 identifiers];
    v56 = v62 = v4;
    v27 = [v56 universalStore];
    v28 = [v27 subscriptionAdamID];
    v29 = [v3 modelSong];
    v30 = [v29 identifiers];
    v31 = [v30 universalStore];
    v32 = [v31 adamID];
    v33 = [v3 displayType];
    [v3 visibleDuration];
    *&v34 = v34;
    *buf = 138544642;
    v64 = v26;
    v65 = 2048;
    v66 = v3;
    v67 = 2048;
    v68 = v28;
    v69 = 2048;
    v70 = v32;
    v71 = 2048;
    v72 = v33;
    v73 = 2048;
    v74 = *&v34;
    _os_log_impl(&dword_1C5C61000, &v7->super, OS_LOG_TYPE_INFO, "Not reporting non store lyrics event for <%{public}@: %p, (subscriptionAdamId=%lld, adamId=%lld) type=%ld, dur=%f>", buf, 0x3Eu);

    v4 = v62;
  }
}

@end