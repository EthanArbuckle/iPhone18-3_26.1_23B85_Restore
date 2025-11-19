@interface BMSiriMusicInferenceTrainingDependentSignals
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriMusicInferenceTrainingDependentSignals)initWithIsClientForegroundActiveBundle:(id)a3 compoundActiveBundleScore:(id)a4 compoundMediaTypeBundleScore:(id)a5 entitySearchBundleRecencyS:(id)a6 entitySearchBundleScore:(id)a7 isForegroundBundle:(id)a8 isNowPlayingBundle:(id)a9 nowPlayingBundleCount:(id)a10 nowPlayingBundleRecencyS:(id)a11 nowPlayingBundleScore:(id)a12 isNowPlayingLastBundle:(id)a13 nowPlayingUsage1Day:(id)a14 nowPlayingUsage7Days:(id)a15 nowPlayingUsage14Days:(id)a16 isRawLastNowPlayingCoreDuet:(id)a17 isRawMediaCategoryAudiobookSignal:(id)a18 isRawMediaCategoryMusicSignal:(id)a19 isRawMediaCategoryPodcastSignal:(id)a20 isRawMediaCategoryRadioSignal:(id)a21 isRawMediaCategoryVideoSignal:(id)a22 rawMediaTypeUsageSignalBook:(id)a23 rawMediaTypeUsageSignalMusic:(id)a24 rawMediaTypeUsageSignalPodcast:(id)a25 rawMediaTypeUsageSignalVideo:(id)a26 rawNowPlayingCountCoreDuet10Min:(id)a27 rawNowPlayingCountCoreDuet1Day:(id)a28 rawNowPlayingCountCoreDuet1Hr:(id)a29 rawNowPlayingCountCoreDuet28Day:(id)a30 rawNowPlayingCountCoreDuet2Min:(id)a31 rawNowPlayingCountCoreDuet6Hr:(id)a32 rawNowPlayingCountCoreDuet7Day:(id)a33 rawNowPlayingRecencyCD:(id)a34 rawEntitySearchRecency:(id)a35 usageScoreBooks:(id)a36 usageScoreMusic:(id)a37 usageScorePodcasts:(id)a38 isAppFirstParty:(id)a39 isRequestedApp:(id)a40 isNowPlayingBundlePSE1:(id)a41 isNowPlayingBundlePSE2:(id)a42 vq21Score:(id)a43 isSupportedFlag:(id)a44 isUnicornFlag:(id)a45 isSupportedUnicornMatchFlag:(id)a46 isDisambiguationSelectedApp:(id)a47 isModelPredictedApp:(id)a48 usageScoreRadio:(id)a49 usageScoreMusicWithoutRadio:(id)a50 rawMediaTypeUsageSignalRadio:(id)a51 rawMediaTypeUsageSignalMusicWithoutRadio:(id)a52;
- (BMSiriMusicInferenceTrainingDependentSignals)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriMusicInferenceTrainingDependentSignals

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v80 = 0;
    goto LABEL_255;
  }

  v5 = v4;
  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsClientForegroundActiveBundle](self, "hasIsClientForegroundActiveBundle") || [v5 hasIsClientForegroundActiveBundle])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsClientForegroundActiveBundle])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsClientForegroundActiveBundle])
    {
      goto LABEL_252;
    }

    v6 = [(BMSiriMusicInferenceTrainingDependentSignals *)self isClientForegroundActiveBundle];
    if (v6 != [v5 isClientForegroundActiveBundle])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasCompoundActiveBundleScore](self, "hasCompoundActiveBundleScore") || [v5 hasCompoundActiveBundleScore])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasCompoundActiveBundleScore])
    {
      goto LABEL_252;
    }

    if (![v5 hasCompoundActiveBundleScore])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self compoundActiveBundleScore];
    v8 = v7;
    [v5 compoundActiveBundleScore];
    if (v8 != v9)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasCompoundMediaTypeBundleScore](self, "hasCompoundMediaTypeBundleScore") || [v5 hasCompoundMediaTypeBundleScore])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasCompoundMediaTypeBundleScore])
    {
      goto LABEL_252;
    }

    if (![v5 hasCompoundMediaTypeBundleScore])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self compoundMediaTypeBundleScore];
    v11 = v10;
    [v5 compoundMediaTypeBundleScore];
    if (v11 != v12)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasEntitySearchBundleRecencyS](self, "hasEntitySearchBundleRecencyS") || [v5 hasEntitySearchBundleRecencyS])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasEntitySearchBundleRecencyS])
    {
      goto LABEL_252;
    }

    if (![v5 hasEntitySearchBundleRecencyS])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self entitySearchBundleRecencyS];
    v14 = v13;
    [v5 entitySearchBundleRecencyS];
    if (v14 != v15)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasEntitySearchBundleScore](self, "hasEntitySearchBundleScore") || [v5 hasEntitySearchBundleScore])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasEntitySearchBundleScore])
    {
      goto LABEL_252;
    }

    if (![v5 hasEntitySearchBundleScore])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self entitySearchBundleScore];
    v17 = v16;
    [v5 entitySearchBundleScore];
    if (v17 != v18)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsForegroundBundle](self, "hasIsForegroundBundle") || [v5 hasIsForegroundBundle])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsForegroundBundle])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsForegroundBundle])
    {
      goto LABEL_252;
    }

    v19 = [(BMSiriMusicInferenceTrainingDependentSignals *)self isForegroundBundle];
    if (v19 != [v5 isForegroundBundle])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsNowPlayingBundle](self, "hasIsNowPlayingBundle") || [v5 hasIsNowPlayingBundle])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsNowPlayingBundle])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsNowPlayingBundle])
    {
      goto LABEL_252;
    }

    v20 = [(BMSiriMusicInferenceTrainingDependentSignals *)self isNowPlayingBundle];
    if (v20 != [v5 isNowPlayingBundle])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasNowPlayingBundleCount](self, "hasNowPlayingBundleCount") || [v5 hasNowPlayingBundleCount])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingBundleCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasNowPlayingBundleCount])
    {
      goto LABEL_252;
    }

    v21 = [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleCount];
    if (v21 != [v5 nowPlayingBundleCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasNowPlayingBundleRecencyS](self, "hasNowPlayingBundleRecencyS") || [v5 hasNowPlayingBundleRecencyS])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingBundleRecencyS])
    {
      goto LABEL_252;
    }

    if (![v5 hasNowPlayingBundleRecencyS])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleRecencyS];
    v23 = v22;
    [v5 nowPlayingBundleRecencyS];
    if (v23 != v24)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasNowPlayingBundleScore](self, "hasNowPlayingBundleScore") || [v5 hasNowPlayingBundleScore])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingBundleScore])
    {
      goto LABEL_252;
    }

    if (![v5 hasNowPlayingBundleScore])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleScore];
    v26 = v25;
    [v5 nowPlayingBundleScore];
    if (v26 != v27)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsNowPlayingLastBundle](self, "hasIsNowPlayingLastBundle") || [v5 hasIsNowPlayingLastBundle])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsNowPlayingLastBundle])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsNowPlayingLastBundle])
    {
      goto LABEL_252;
    }

    v28 = [(BMSiriMusicInferenceTrainingDependentSignals *)self isNowPlayingLastBundle];
    if (v28 != [v5 isNowPlayingLastBundle])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasNowPlayingUsage1Day](self, "hasNowPlayingUsage1Day") || [v5 hasNowPlayingUsage1Day])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingUsage1Day])
    {
      goto LABEL_252;
    }

    if (![v5 hasNowPlayingUsage1Day])
    {
      goto LABEL_252;
    }

    v29 = [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingUsage1Day];
    if (v29 != [v5 nowPlayingUsage1Day])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasNowPlayingUsage7Days](self, "hasNowPlayingUsage7Days") || [v5 hasNowPlayingUsage7Days])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingUsage7Days])
    {
      goto LABEL_252;
    }

    if (![v5 hasNowPlayingUsage7Days])
    {
      goto LABEL_252;
    }

    v30 = [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingUsage7Days];
    if (v30 != [v5 nowPlayingUsage7Days])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasNowPlayingUsage14Days](self, "hasNowPlayingUsage14Days") || [v5 hasNowPlayingUsage14Days])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingUsage14Days])
    {
      goto LABEL_252;
    }

    if (![v5 hasNowPlayingUsage14Days])
    {
      goto LABEL_252;
    }

    v31 = [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingUsage14Days];
    if (v31 != [v5 nowPlayingUsage14Days])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsRawLastNowPlayingCoreDuet](self, "hasIsRawLastNowPlayingCoreDuet") || [v5 hasIsRawLastNowPlayingCoreDuet])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawLastNowPlayingCoreDuet])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsRawLastNowPlayingCoreDuet])
    {
      goto LABEL_252;
    }

    v32 = [(BMSiriMusicInferenceTrainingDependentSignals *)self isRawLastNowPlayingCoreDuet];
    if (v32 != [v5 isRawLastNowPlayingCoreDuet])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsRawMediaCategoryAudiobookSignal](self, "hasIsRawMediaCategoryAudiobookSignal") || [v5 hasIsRawMediaCategoryAudiobookSignal])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawMediaCategoryAudiobookSignal])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsRawMediaCategoryAudiobookSignal])
    {
      goto LABEL_252;
    }

    v33 = [(BMSiriMusicInferenceTrainingDependentSignals *)self isRawMediaCategoryAudiobookSignal];
    if (v33 != [v5 isRawMediaCategoryAudiobookSignal])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsRawMediaCategoryMusicSignal](self, "hasIsRawMediaCategoryMusicSignal") || [v5 hasIsRawMediaCategoryMusicSignal])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawMediaCategoryMusicSignal])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsRawMediaCategoryMusicSignal])
    {
      goto LABEL_252;
    }

    v34 = [(BMSiriMusicInferenceTrainingDependentSignals *)self isRawMediaCategoryMusicSignal];
    if (v34 != [v5 isRawMediaCategoryMusicSignal])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsRawMediaCategoryPodcastSignal](self, "hasIsRawMediaCategoryPodcastSignal") || [v5 hasIsRawMediaCategoryPodcastSignal])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawMediaCategoryPodcastSignal])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsRawMediaCategoryPodcastSignal])
    {
      goto LABEL_252;
    }

    v35 = [(BMSiriMusicInferenceTrainingDependentSignals *)self isRawMediaCategoryPodcastSignal];
    if (v35 != [v5 isRawMediaCategoryPodcastSignal])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsRawMediaCategoryRadioSignal](self, "hasIsRawMediaCategoryRadioSignal") || [v5 hasIsRawMediaCategoryRadioSignal])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawMediaCategoryRadioSignal])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsRawMediaCategoryRadioSignal])
    {
      goto LABEL_252;
    }

    v36 = [(BMSiriMusicInferenceTrainingDependentSignals *)self isRawMediaCategoryRadioSignal];
    if (v36 != [v5 isRawMediaCategoryRadioSignal])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsRawMediaCategoryVideoSignal](self, "hasIsRawMediaCategoryVideoSignal") || [v5 hasIsRawMediaCategoryVideoSignal])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawMediaCategoryVideoSignal])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsRawMediaCategoryVideoSignal])
    {
      goto LABEL_252;
    }

    v37 = [(BMSiriMusicInferenceTrainingDependentSignals *)self isRawMediaCategoryVideoSignal];
    if (v37 != [v5 isRawMediaCategoryVideoSignal])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawMediaTypeUsageSignalBook](self, "hasRawMediaTypeUsageSignalBook") || [v5 hasRawMediaTypeUsageSignalBook])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalBook])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawMediaTypeUsageSignalBook])
    {
      goto LABEL_252;
    }

    v38 = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawMediaTypeUsageSignalBook];
    if (v38 != [v5 rawMediaTypeUsageSignalBook])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawMediaTypeUsageSignalMusic](self, "hasRawMediaTypeUsageSignalMusic") || [v5 hasRawMediaTypeUsageSignalMusic])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalMusic])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawMediaTypeUsageSignalMusic])
    {
      goto LABEL_252;
    }

    v39 = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawMediaTypeUsageSignalMusic];
    if (v39 != [v5 rawMediaTypeUsageSignalMusic])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawMediaTypeUsageSignalPodcast](self, "hasRawMediaTypeUsageSignalPodcast") || [v5 hasRawMediaTypeUsageSignalPodcast])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalPodcast])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawMediaTypeUsageSignalPodcast])
    {
      goto LABEL_252;
    }

    v40 = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawMediaTypeUsageSignalPodcast];
    if (v40 != [v5 rawMediaTypeUsageSignalPodcast])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawMediaTypeUsageSignalVideo](self, "hasRawMediaTypeUsageSignalVideo") || [v5 hasRawMediaTypeUsageSignalVideo])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalVideo])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawMediaTypeUsageSignalVideo])
    {
      goto LABEL_252;
    }

    v41 = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawMediaTypeUsageSignalVideo];
    if (v41 != [v5 rawMediaTypeUsageSignalVideo])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawNowPlayingCountCoreDuet10Min](self, "hasRawNowPlayingCountCoreDuet10Min") || [v5 hasRawNowPlayingCountCoreDuet10Min])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet10Min])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawNowPlayingCountCoreDuet10Min])
    {
      goto LABEL_252;
    }

    v42 = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawNowPlayingCountCoreDuet10Min];
    if (v42 != [v5 rawNowPlayingCountCoreDuet10Min])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawNowPlayingCountCoreDuet1Day](self, "hasRawNowPlayingCountCoreDuet1Day") || [v5 hasRawNowPlayingCountCoreDuet1Day])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet1Day])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawNowPlayingCountCoreDuet1Day])
    {
      goto LABEL_252;
    }

    v43 = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawNowPlayingCountCoreDuet1Day];
    if (v43 != [v5 rawNowPlayingCountCoreDuet1Day])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawNowPlayingCountCoreDuet1Hr](self, "hasRawNowPlayingCountCoreDuet1Hr") || [v5 hasRawNowPlayingCountCoreDuet1Hr])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet1Hr])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawNowPlayingCountCoreDuet1Hr])
    {
      goto LABEL_252;
    }

    v44 = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawNowPlayingCountCoreDuet1Hr];
    if (v44 != [v5 rawNowPlayingCountCoreDuet1Hr])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawNowPlayingCountCoreDuet28Day](self, "hasRawNowPlayingCountCoreDuet28Day") || [v5 hasRawNowPlayingCountCoreDuet28Day])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet28Day])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawNowPlayingCountCoreDuet28Day])
    {
      goto LABEL_252;
    }

    v45 = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawNowPlayingCountCoreDuet28Day];
    if (v45 != [v5 rawNowPlayingCountCoreDuet28Day])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawNowPlayingCountCoreDuet2Min](self, "hasRawNowPlayingCountCoreDuet2Min") || [v5 hasRawNowPlayingCountCoreDuet2Min])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet2Min])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawNowPlayingCountCoreDuet2Min])
    {
      goto LABEL_252;
    }

    v46 = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawNowPlayingCountCoreDuet2Min];
    if (v46 != [v5 rawNowPlayingCountCoreDuet2Min])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawNowPlayingCountCoreDuet6Hr](self, "hasRawNowPlayingCountCoreDuet6Hr") || [v5 hasRawNowPlayingCountCoreDuet6Hr])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet6Hr])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawNowPlayingCountCoreDuet6Hr])
    {
      goto LABEL_252;
    }

    v47 = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawNowPlayingCountCoreDuet6Hr];
    if (v47 != [v5 rawNowPlayingCountCoreDuet6Hr])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawNowPlayingCountCoreDuet7Day](self, "hasRawNowPlayingCountCoreDuet7Day") || [v5 hasRawNowPlayingCountCoreDuet7Day])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet7Day])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawNowPlayingCountCoreDuet7Day])
    {
      goto LABEL_252;
    }

    v48 = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawNowPlayingCountCoreDuet7Day];
    if (v48 != [v5 rawNowPlayingCountCoreDuet7Day])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawNowPlayingRecencyCD](self, "hasRawNowPlayingRecencyCD") || [v5 hasRawNowPlayingRecencyCD])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingRecencyCD])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawNowPlayingRecencyCD])
    {
      goto LABEL_252;
    }

    v49 = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawNowPlayingRecencyCD];
    if (v49 != [v5 rawNowPlayingRecencyCD])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawEntitySearchRecency](self, "hasRawEntitySearchRecency") || [v5 hasRawEntitySearchRecency])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawEntitySearchRecency])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawEntitySearchRecency])
    {
      goto LABEL_252;
    }

    v50 = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawEntitySearchRecency];
    if (v50 != [v5 rawEntitySearchRecency])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasUsageScoreBooks](self, "hasUsageScoreBooks") || [v5 hasUsageScoreBooks])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasUsageScoreBooks])
    {
      goto LABEL_252;
    }

    if (![v5 hasUsageScoreBooks])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreBooks];
    v52 = v51;
    [v5 usageScoreBooks];
    if (v52 != v53)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasUsageScoreMusic](self, "hasUsageScoreMusic") || [v5 hasUsageScoreMusic])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasUsageScoreMusic])
    {
      goto LABEL_252;
    }

    if (![v5 hasUsageScoreMusic])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreMusic];
    v55 = v54;
    [v5 usageScoreMusic];
    if (v55 != v56)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasUsageScorePodcasts](self, "hasUsageScorePodcasts") || [v5 hasUsageScorePodcasts])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasUsageScorePodcasts])
    {
      goto LABEL_252;
    }

    if (![v5 hasUsageScorePodcasts])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScorePodcasts];
    v58 = v57;
    [v5 usageScorePodcasts];
    if (v58 != v59)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsAppFirstParty](self, "hasIsAppFirstParty") || [v5 hasIsAppFirstParty])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsAppFirstParty])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsAppFirstParty])
    {
      goto LABEL_252;
    }

    v60 = [(BMSiriMusicInferenceTrainingDependentSignals *)self isAppFirstParty];
    if (v60 != [v5 isAppFirstParty])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsRequestedApp](self, "hasIsRequestedApp") || [v5 hasIsRequestedApp])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRequestedApp])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsRequestedApp])
    {
      goto LABEL_252;
    }

    v61 = [(BMSiriMusicInferenceTrainingDependentSignals *)self isRequestedApp];
    if (v61 != [v5 isRequestedApp])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsNowPlayingBundlePSE1](self, "hasIsNowPlayingBundlePSE1") || [v5 hasIsNowPlayingBundlePSE1])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsNowPlayingBundlePSE1])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsNowPlayingBundlePSE1])
    {
      goto LABEL_252;
    }

    v62 = [(BMSiriMusicInferenceTrainingDependentSignals *)self isNowPlayingBundlePSE1];
    if (v62 != [v5 isNowPlayingBundlePSE1])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsNowPlayingBundlePSE2](self, "hasIsNowPlayingBundlePSE2") || [v5 hasIsNowPlayingBundlePSE2])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsNowPlayingBundlePSE2])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsNowPlayingBundlePSE2])
    {
      goto LABEL_252;
    }

    v63 = [(BMSiriMusicInferenceTrainingDependentSignals *)self isNowPlayingBundlePSE2];
    if (v63 != [v5 isNowPlayingBundlePSE2])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasVq21Score](self, "hasVq21Score") || [v5 hasVq21Score])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasVq21Score])
    {
      goto LABEL_252;
    }

    if (![v5 hasVq21Score])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self vq21Score];
    v65 = v64;
    [v5 vq21Score];
    if (v65 != v66)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsSupportedFlag](self, "hasIsSupportedFlag") || [v5 hasIsSupportedFlag])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsSupportedFlag])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsSupportedFlag])
    {
      goto LABEL_252;
    }

    v67 = [(BMSiriMusicInferenceTrainingDependentSignals *)self isSupportedFlag];
    if (v67 != [v5 isSupportedFlag])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsUnicornFlag](self, "hasIsUnicornFlag") || [v5 hasIsUnicornFlag])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsUnicornFlag])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsUnicornFlag])
    {
      goto LABEL_252;
    }

    v68 = [(BMSiriMusicInferenceTrainingDependentSignals *)self isUnicornFlag];
    if (v68 != [v5 isUnicornFlag])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsSupportedUnicornMatchFlag](self, "hasIsSupportedUnicornMatchFlag") || [v5 hasIsSupportedUnicornMatchFlag])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsSupportedUnicornMatchFlag])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsSupportedUnicornMatchFlag])
    {
      goto LABEL_252;
    }

    v69 = [(BMSiriMusicInferenceTrainingDependentSignals *)self isSupportedUnicornMatchFlag];
    if (v69 != [v5 isSupportedUnicornMatchFlag])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsDisambiguationSelectedApp](self, "hasIsDisambiguationSelectedApp") || [v5 hasIsDisambiguationSelectedApp])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsDisambiguationSelectedApp])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsDisambiguationSelectedApp])
    {
      goto LABEL_252;
    }

    v70 = [(BMSiriMusicInferenceTrainingDependentSignals *)self isDisambiguationSelectedApp];
    if (v70 != [v5 isDisambiguationSelectedApp])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsModelPredictedApp](self, "hasIsModelPredictedApp") || [v5 hasIsModelPredictedApp])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsModelPredictedApp])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsModelPredictedApp])
    {
      goto LABEL_252;
    }

    v71 = [(BMSiriMusicInferenceTrainingDependentSignals *)self isModelPredictedApp];
    if (v71 != [v5 isModelPredictedApp])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasUsageScoreRadio](self, "hasUsageScoreRadio") || [v5 hasUsageScoreRadio])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasUsageScoreRadio])
    {
      goto LABEL_252;
    }

    if (![v5 hasUsageScoreRadio])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreRadio];
    v73 = v72;
    [v5 usageScoreRadio];
    if (v73 != v74)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasUsageScoreMusicWithoutRadio](self, "hasUsageScoreMusicWithoutRadio") || [v5 hasUsageScoreMusicWithoutRadio])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasUsageScoreMusicWithoutRadio])
    {
      goto LABEL_252;
    }

    if (![v5 hasUsageScoreMusicWithoutRadio])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreMusicWithoutRadio];
    v76 = v75;
    [v5 usageScoreMusicWithoutRadio];
    if (v76 != v77)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawMediaTypeUsageSignalRadio](self, "hasRawMediaTypeUsageSignalRadio") || [v5 hasRawMediaTypeUsageSignalRadio])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalRadio])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawMediaTypeUsageSignalRadio])
    {
      goto LABEL_252;
    }

    v78 = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawMediaTypeUsageSignalRadio];
    if (v78 != [v5 rawMediaTypeUsageSignalRadio])
    {
      goto LABEL_252;
    }
  }

  if (!-[BMSiriMusicInferenceTrainingDependentSignals hasRawMediaTypeUsageSignalMusicWithoutRadio](self, "hasRawMediaTypeUsageSignalMusicWithoutRadio") && ![v5 hasRawMediaTypeUsageSignalMusicWithoutRadio])
  {
    v80 = 1;
    goto LABEL_253;
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawMediaTypeUsageSignalMusicWithoutRadio](self, "hasRawMediaTypeUsageSignalMusicWithoutRadio") && [v5 hasRawMediaTypeUsageSignalMusicWithoutRadio])
  {
    v79 = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawMediaTypeUsageSignalMusicWithoutRadio];
    v80 = v79 == [v5 rawMediaTypeUsageSignalMusicWithoutRadio];
  }

  else
  {
LABEL_252:
    v80 = 0;
  }

LABEL_253:

LABEL_255:
  return v80;
}

- (id)jsonDictionary
{
  v188[50] = *MEMORY[0x1E69E9840];
  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsClientForegroundActiveBundle])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isClientForegroundActiveBundle](self, "isClientForegroundActiveBundle")}];
  }

  else
  {
    v3 = 0;
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasCompoundActiveBundleScore]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self compoundActiveBundleScore], fabs(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self compoundActiveBundleScore];
    v5 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self compoundActiveBundleScore];
    v6 = [v5 numberWithDouble:?];
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasCompoundMediaTypeBundleScore]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self compoundMediaTypeBundleScore], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self compoundMediaTypeBundleScore];
    v8 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self compoundMediaTypeBundleScore];
    v9 = [v8 numberWithDouble:?];
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasEntitySearchBundleRecencyS]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self entitySearchBundleRecencyS], fabs(v10) == INFINITY))
  {
    v12 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self entitySearchBundleRecencyS];
    v11 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self entitySearchBundleRecencyS];
    v12 = [v11 numberWithDouble:?];
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasEntitySearchBundleScore]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self entitySearchBundleScore], fabs(v13) == INFINITY))
  {
    v15 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self entitySearchBundleScore];
    v14 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self entitySearchBundleScore];
    v15 = [v14 numberWithDouble:?];
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsForegroundBundle])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isForegroundBundle](self, "isForegroundBundle")}];
  }

  else
  {
    v16 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsNowPlayingBundle])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isNowPlayingBundle](self, "isNowPlayingBundle")}];
  }

  else
  {
    v17 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingBundleCount])
  {
    v186 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals nowPlayingBundleCount](self, "nowPlayingBundleCount")}];
  }

  else
  {
    v186 = 0;
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingBundleRecencyS]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleRecencyS], fabs(v18) == INFINITY))
  {
    v185 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleRecencyS];
    v19 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleRecencyS];
    v185 = [v19 numberWithDouble:?];
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingBundleScore]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleScore], fabs(v20) == INFINITY))
  {
    v184 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleScore];
    v21 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleScore];
    v184 = [v21 numberWithDouble:?];
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsNowPlayingLastBundle])
  {
    v183 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isNowPlayingLastBundle](self, "isNowPlayingLastBundle")}];
  }

  else
  {
    v183 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingUsage1Day])
  {
    v182 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals nowPlayingUsage1Day](self, "nowPlayingUsage1Day")}];
  }

  else
  {
    v182 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingUsage7Days])
  {
    v181 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals nowPlayingUsage7Days](self, "nowPlayingUsage7Days")}];
  }

  else
  {
    v181 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingUsage14Days])
  {
    v180 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals nowPlayingUsage14Days](self, "nowPlayingUsage14Days")}];
  }

  else
  {
    v180 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawLastNowPlayingCoreDuet])
  {
    v179 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawLastNowPlayingCoreDuet](self, "isRawLastNowPlayingCoreDuet")}];
  }

  else
  {
    v179 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawMediaCategoryAudiobookSignal])
  {
    v178 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawMediaCategoryAudiobookSignal](self, "isRawMediaCategoryAudiobookSignal")}];
  }

  else
  {
    v178 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawMediaCategoryMusicSignal])
  {
    v177 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawMediaCategoryMusicSignal](self, "isRawMediaCategoryMusicSignal")}];
  }

  else
  {
    v177 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawMediaCategoryPodcastSignal])
  {
    v176 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawMediaCategoryPodcastSignal](self, "isRawMediaCategoryPodcastSignal")}];
  }

  else
  {
    v176 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawMediaCategoryRadioSignal])
  {
    v175 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawMediaCategoryRadioSignal](self, "isRawMediaCategoryRadioSignal")}];
  }

  else
  {
    v175 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawMediaCategoryVideoSignal])
  {
    v174 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawMediaCategoryVideoSignal](self, "isRawMediaCategoryVideoSignal")}];
  }

  else
  {
    v174 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalBook])
  {
    v173 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalBook](self, "rawMediaTypeUsageSignalBook")}];
  }

  else
  {
    v173 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalMusic])
  {
    v172 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalMusic](self, "rawMediaTypeUsageSignalMusic")}];
  }

  else
  {
    v172 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalPodcast])
  {
    v171 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalPodcast](self, "rawMediaTypeUsageSignalPodcast")}];
  }

  else
  {
    v171 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalVideo])
  {
    v170 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalVideo](self, "rawMediaTypeUsageSignalVideo")}];
  }

  else
  {
    v170 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet10Min])
  {
    v169 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet10Min](self, "rawNowPlayingCountCoreDuet10Min")}];
  }

  else
  {
    v169 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet1Day])
  {
    v168 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet1Day](self, "rawNowPlayingCountCoreDuet1Day")}];
  }

  else
  {
    v168 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet1Hr])
  {
    v167 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet1Hr](self, "rawNowPlayingCountCoreDuet1Hr")}];
  }

  else
  {
    v167 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet28Day])
  {
    v166 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet28Day](self, "rawNowPlayingCountCoreDuet28Day")}];
  }

  else
  {
    v166 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet2Min])
  {
    v165 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet2Min](self, "rawNowPlayingCountCoreDuet2Min")}];
  }

  else
  {
    v165 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet6Hr])
  {
    v164 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet6Hr](self, "rawNowPlayingCountCoreDuet6Hr")}];
  }

  else
  {
    v164 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet7Day])
  {
    v163 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet7Day](self, "rawNowPlayingCountCoreDuet7Day")}];
  }

  else
  {
    v163 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingRecencyCD])
  {
    v162 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingRecencyCD](self, "rawNowPlayingRecencyCD")}];
  }

  else
  {
    v162 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawEntitySearchRecency])
  {
    v161 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawEntitySearchRecency](self, "rawEntitySearchRecency")}];
  }

  else
  {
    v161 = 0;
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasUsageScoreBooks]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreBooks], fabs(v22) == INFINITY))
  {
    v160 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreBooks];
    v23 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreBooks];
    v160 = [v23 numberWithDouble:?];
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasUsageScoreMusic]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreMusic], fabs(v24) == INFINITY))
  {
    v159 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreMusic];
    v25 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreMusic];
    v159 = [v25 numberWithDouble:?];
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasUsageScorePodcasts]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self usageScorePodcasts], fabs(v26) == INFINITY))
  {
    v158 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScorePodcasts];
    v27 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScorePodcasts];
    v158 = [v27 numberWithDouble:?];
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsAppFirstParty])
  {
    v157 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isAppFirstParty](self, "isAppFirstParty")}];
  }

  else
  {
    v157 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRequestedApp])
  {
    v156 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRequestedApp](self, "isRequestedApp")}];
  }

  else
  {
    v156 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsNowPlayingBundlePSE1])
  {
    v155 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isNowPlayingBundlePSE1](self, "isNowPlayingBundlePSE1")}];
  }

  else
  {
    v155 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsNowPlayingBundlePSE2])
  {
    v154 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isNowPlayingBundlePSE2](self, "isNowPlayingBundlePSE2")}];
  }

  else
  {
    v154 = 0;
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasVq21Score]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self vq21Score], fabs(v28) == INFINITY))
  {
    v153 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self vq21Score];
    v29 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self vq21Score];
    v153 = [v29 numberWithDouble:?];
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsSupportedFlag])
  {
    v152 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isSupportedFlag](self, "isSupportedFlag")}];
  }

  else
  {
    v152 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsUnicornFlag])
  {
    v151 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isUnicornFlag](self, "isUnicornFlag")}];
  }

  else
  {
    v151 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsSupportedUnicornMatchFlag])
  {
    v150 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isSupportedUnicornMatchFlag](self, "isSupportedUnicornMatchFlag")}];
  }

  else
  {
    v150 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsDisambiguationSelectedApp])
  {
    v149 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isDisambiguationSelectedApp](self, "isDisambiguationSelectedApp")}];
  }

  else
  {
    v149 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsModelPredictedApp])
  {
    v148 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isModelPredictedApp](self, "isModelPredictedApp")}];
  }

  else
  {
    v148 = 0;
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasUsageScoreRadio]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreRadio], fabs(v30) == INFINITY))
  {
    v147 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreRadio];
    v31 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreRadio];
    v147 = [v31 numberWithDouble:?];
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasUsageScoreMusicWithoutRadio]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreMusicWithoutRadio], fabs(v32) == INFINITY))
  {
    v146 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreMusicWithoutRadio];
    v33 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreMusicWithoutRadio];
    v146 = [v33 numberWithDouble:?];
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalRadio])
  {
    v145 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalRadio](self, "rawMediaTypeUsageSignalRadio")}];
  }

  else
  {
    v145 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalMusicWithoutRadio])
  {
    v144 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalMusicWithoutRadio](self, "rawMediaTypeUsageSignalMusicWithoutRadio")}];
  }

  else
  {
    v144 = 0;
  }

  v187[0] = @"isClientForegroundActiveBundle";
  v34 = v3;
  if (!v3)
  {
    v34 = [MEMORY[0x1E695DFB0] null];
  }

  v136 = v34;
  v188[0] = v34;
  v187[1] = @"compoundActiveBundleScore";
  v35 = v6;
  if (!v6)
  {
    v35 = [MEMORY[0x1E695DFB0] null];
  }

  v135 = v35;
  v188[1] = v35;
  v187[2] = @"compoundMediaTypeBundleScore";
  v36 = v9;
  if (!v9)
  {
    v36 = [MEMORY[0x1E695DFB0] null];
  }

  v134 = v36;
  v188[2] = v36;
  v187[3] = @"entitySearchBundleRecencyS";
  v37 = v12;
  if (!v12)
  {
    v37 = [MEMORY[0x1E695DFB0] null];
  }

  v133 = v37;
  v188[3] = v37;
  v187[4] = @"entitySearchBundleScore";
  v38 = v15;
  if (!v15)
  {
    v38 = [MEMORY[0x1E695DFB0] null];
  }

  v132 = v38;
  v188[4] = v38;
  v187[5] = @"isForegroundBundle";
  v39 = v16;
  if (!v16)
  {
    v39 = [MEMORY[0x1E695DFB0] null];
  }

  v131 = v39;
  v188[5] = v39;
  v187[6] = @"isNowPlayingBundle";
  v40 = v17;
  if (!v17)
  {
    v40 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v17;
  v130 = v40;
  v188[6] = v40;
  v187[7] = @"nowPlayingBundleCount";
  v42 = v186;
  if (!v186)
  {
    v42 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v16;
  v188[7] = v42;
  v187[8] = @"nowPlayingBundleRecencyS";
  v44 = v185;
  if (!v185)
  {
    v44 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v12;
  v188[8] = v44;
  v187[9] = @"nowPlayingBundleScore";
  v46 = v184;
  if (!v184)
  {
    v46 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = v15;
  v139 = v46;
  v188[9] = v46;
  v187[10] = @"isNowPlayingLastBundle";
  v48 = v183;
  if (!v183)
  {
    v48 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = v6;
  v138 = v48;
  v188[10] = v48;
  v187[11] = @"nowPlayingUsage1Day";
  v50 = v182;
  if (!v182)
  {
    v50 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = v50;
  v188[11] = v50;
  v187[12] = @"nowPlayingUsage7Days";
  v52 = v181;
  if (!v181)
  {
    v52 = [MEMORY[0x1E695DFB0] null];
  }

  v127 = v52;
  v188[12] = v52;
  v187[13] = @"nowPlayingUsage14Days";
  v53 = v180;
  if (!v180)
  {
    v53 = [MEMORY[0x1E695DFB0] null];
  }

  v126 = v53;
  v188[13] = v53;
  v187[14] = @"isRawLastNowPlayingCoreDuet";
  v54 = v179;
  if (!v179)
  {
    v54 = [MEMORY[0x1E695DFB0] null];
  }

  v125 = v54;
  v188[14] = v54;
  v187[15] = @"isRawMediaCategoryAudiobookSignal";
  v55 = v178;
  if (!v178)
  {
    v55 = [MEMORY[0x1E695DFB0] null];
  }

  v124 = v55;
  v188[15] = v55;
  v187[16] = @"isRawMediaCategoryMusicSignal";
  v56 = v177;
  if (!v177)
  {
    v56 = [MEMORY[0x1E695DFB0] null];
  }

  v123 = v56;
  v188[16] = v56;
  v187[17] = @"isRawMediaCategoryPodcastSignal";
  v57 = v176;
  if (!v176)
  {
    v57 = [MEMORY[0x1E695DFB0] null];
  }

  v122 = v57;
  v188[17] = v57;
  v187[18] = @"isRawMediaCategoryRadioSignal";
  v58 = v175;
  if (!v175)
  {
    v58 = [MEMORY[0x1E695DFB0] null];
  }

  v121 = v58;
  v188[18] = v58;
  v187[19] = @"isRawMediaCategoryVideoSignal";
  v59 = v174;
  if (!v174)
  {
    v59 = [MEMORY[0x1E695DFB0] null];
  }

  v120 = v59;
  v188[19] = v59;
  v187[20] = @"rawMediaTypeUsageSignalBook";
  v60 = v173;
  if (!v173)
  {
    v60 = [MEMORY[0x1E695DFB0] null];
  }

  v119 = v60;
  v188[20] = v60;
  v187[21] = @"rawMediaTypeUsageSignalMusic";
  v61 = v172;
  if (!v172)
  {
    v61 = [MEMORY[0x1E695DFB0] null];
  }

  v118 = v61;
  v188[21] = v61;
  v187[22] = @"rawMediaTypeUsageSignalPodcast";
  v62 = v171;
  if (!v171)
  {
    v62 = [MEMORY[0x1E695DFB0] null];
  }

  v117 = v62;
  v188[22] = v62;
  v187[23] = @"rawMediaTypeUsageSignalVideo";
  v63 = v170;
  if (!v170)
  {
    v63 = [MEMORY[0x1E695DFB0] null];
  }

  v116 = v63;
  v188[23] = v63;
  v187[24] = @"rawNowPlayingCountCoreDuet10Min";
  v64 = v169;
  if (!v169)
  {
    v64 = [MEMORY[0x1E695DFB0] null];
  }

  v115 = v64;
  v188[24] = v64;
  v187[25] = @"rawNowPlayingCountCoreDuet1Day";
  v65 = v168;
  if (!v168)
  {
    v65 = [MEMORY[0x1E695DFB0] null];
  }

  v114 = v65;
  v188[25] = v65;
  v187[26] = @"rawNowPlayingCountCoreDuet1Hr";
  v66 = v167;
  if (!v167)
  {
    v66 = [MEMORY[0x1E695DFB0] null];
  }

  v113 = v66;
  v188[26] = v66;
  v187[27] = @"rawNowPlayingCountCoreDuet28Day";
  v67 = v166;
  if (!v166)
  {
    v67 = [MEMORY[0x1E695DFB0] null];
  }

  v112 = v67;
  v188[27] = v67;
  v187[28] = @"rawNowPlayingCountCoreDuet2Min";
  v68 = v165;
  if (!v165)
  {
    v68 = [MEMORY[0x1E695DFB0] null];
  }

  v111 = v68;
  v188[28] = v68;
  v187[29] = @"rawNowPlayingCountCoreDuet6Hr";
  v69 = v164;
  if (!v164)
  {
    v69 = [MEMORY[0x1E695DFB0] null];
  }

  v110 = v69;
  v188[29] = v69;
  v187[30] = @"rawNowPlayingCountCoreDuet7Day";
  v70 = v163;
  if (!v163)
  {
    v70 = [MEMORY[0x1E695DFB0] null];
  }

  v109 = v70;
  v188[30] = v70;
  v187[31] = @"rawNowPlayingRecencyCD";
  v71 = v162;
  if (!v162)
  {
    v71 = [MEMORY[0x1E695DFB0] null];
  }

  v108 = v71;
  v188[31] = v71;
  v187[32] = @"rawEntitySearchRecency";
  v72 = v161;
  if (!v161)
  {
    v72 = [MEMORY[0x1E695DFB0] null];
  }

  v107 = v72;
  v188[32] = v72;
  v187[33] = @"usageScoreBooks";
  v73 = v160;
  if (!v160)
  {
    v73 = [MEMORY[0x1E695DFB0] null];
  }

  v106 = v73;
  v188[33] = v73;
  v187[34] = @"usageScoreMusic";
  v74 = v159;
  if (!v159)
  {
    v74 = [MEMORY[0x1E695DFB0] null];
  }

  v105 = v74;
  v188[34] = v74;
  v187[35] = @"usageScorePodcasts";
  v75 = v158;
  if (!v158)
  {
    v75 = [MEMORY[0x1E695DFB0] null];
  }

  v104 = v75;
  v188[35] = v75;
  v187[36] = @"isAppFirstParty";
  v76 = v157;
  if (!v157)
  {
    v76 = [MEMORY[0x1E695DFB0] null];
  }

  v103 = v76;
  v188[36] = v76;
  v187[37] = @"isRequestedApp";
  v77 = v156;
  if (!v156)
  {
    v77 = [MEMORY[0x1E695DFB0] null];
  }

  v102 = v77;
  v188[37] = v77;
  v187[38] = @"isNowPlayingBundlePSE1";
  v78 = v155;
  if (!v155)
  {
    v78 = [MEMORY[0x1E695DFB0] null];
  }

  v101 = v78;
  v188[38] = v78;
  v187[39] = @"isNowPlayingBundlePSE2";
  v79 = v154;
  if (!v154)
  {
    v79 = [MEMORY[0x1E695DFB0] null];
  }

  v141 = v9;
  v100 = v79;
  v188[39] = v79;
  v187[40] = @"vq21Score";
  v80 = v153;
  if (!v153)
  {
    v80 = [MEMORY[0x1E695DFB0] null];
  }

  v143 = v3;
  v99 = v80;
  v188[40] = v80;
  v187[41] = @"isSupportedFlag";
  v81 = v152;
  if (!v152)
  {
    v81 = [MEMORY[0x1E695DFB0] null];
  }

  v142 = v49;
  v98 = v81;
  v188[41] = v81;
  v187[42] = @"isUnicornFlag";
  v82 = v151;
  if (!v151)
  {
    v82 = [MEMORY[0x1E695DFB0] null];
  }

  v140 = v45;
  v97 = v82;
  v188[42] = v82;
  v187[43] = @"isSupportedUnicornMatchFlag";
  v83 = v150;
  v84 = v47;
  if (!v150)
  {
    v83 = [MEMORY[0x1E695DFB0] null];
  }

  v128 = v44;
  v95 = v83;
  v188[43] = v83;
  v187[44] = @"isDisambiguationSelectedApp";
  v85 = v149;
  if (!v149)
  {
    v85 = [MEMORY[0x1E695DFB0] null];
  }

  v188[44] = v85;
  v187[45] = @"isModelPredictedApp";
  v86 = v148;
  if (!v148)
  {
    v86 = [MEMORY[0x1E695DFB0] null];
  }

  v129 = v42;
  v87 = v43;
  v188[45] = v86;
  v187[46] = @"usageScoreRadio";
  v88 = v147;
  if (!v147)
  {
    v88 = [MEMORY[0x1E695DFB0] null];
  }

  v188[46] = v88;
  v187[47] = @"usageScoreMusicWithoutRadio";
  v89 = v146;
  if (!v146)
  {
    v89 = [MEMORY[0x1E695DFB0] null];
  }

  v188[47] = v89;
  v187[48] = @"rawMediaTypeUsageSignalRadio";
  v90 = v145;
  if (!v145)
  {
    v90 = [MEMORY[0x1E695DFB0] null];
  }

  v188[48] = v90;
  v187[49] = @"rawMediaTypeUsageSignalMusicWithoutRadio";
  v91 = v144;
  if (!v144)
  {
    v91 = [MEMORY[0x1E695DFB0] null];
  }

  v188[49] = v91;
  v137 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v188 forKeys:v187 count:{50, v95}];
  if (!v144)
  {
  }

  v92 = v51;
  if (!v145)
  {

    v92 = v51;
  }

  if (!v146)
  {

    v92 = v51;
  }

  if (!v147)
  {

    v92 = v51;
  }

  if (!v148)
  {

    v92 = v51;
  }

  if (!v149)
  {

    v92 = v51;
  }

  if (!v150)
  {

    v92 = v51;
  }

  if (!v151)
  {

    v92 = v51;
  }

  if (!v152)
  {

    v92 = v51;
  }

  if (!v153)
  {

    v92 = v51;
  }

  if (!v154)
  {

    v92 = v51;
  }

  if (!v155)
  {

    v92 = v51;
  }

  if (!v156)
  {

    v92 = v51;
  }

  if (!v157)
  {

    v92 = v51;
  }

  if (!v158)
  {

    v92 = v51;
  }

  if (!v159)
  {

    v92 = v51;
  }

  if (!v160)
  {

    v92 = v51;
  }

  if (!v161)
  {

    v92 = v51;
  }

  if (!v162)
  {

    v92 = v51;
  }

  if (!v163)
  {

    v92 = v51;
  }

  if (!v164)
  {

    v92 = v51;
  }

  if (!v165)
  {

    v92 = v51;
  }

  if (!v166)
  {

    v92 = v51;
  }

  if (!v167)
  {

    v92 = v51;
  }

  if (!v168)
  {

    v92 = v51;
  }

  if (!v169)
  {

    v92 = v51;
  }

  if (!v170)
  {

    v92 = v51;
  }

  if (!v171)
  {

    v92 = v51;
  }

  if (!v172)
  {

    v92 = v51;
  }

  if (!v173)
  {

    v92 = v51;
  }

  if (!v174)
  {

    v92 = v51;
  }

  if (!v175)
  {

    v92 = v51;
  }

  if (!v176)
  {

    v92 = v51;
  }

  if (!v177)
  {

    v92 = v51;
  }

  if (!v178)
  {

    v92 = v51;
  }

  if (!v179)
  {

    v92 = v51;
  }

  if (!v180)
  {

    v92 = v51;
  }

  if (!v181)
  {

    v92 = v51;
  }

  if (!v182)
  {
  }

  if (!v183)
  {
  }

  if (!v184)
  {
  }

  if (!v185)
  {
  }

  if (v186)
  {
    if (v41)
    {
      goto LABEL_349;
    }
  }

  else
  {

    if (v41)
    {
LABEL_349:
      if (v87)
      {
        goto LABEL_350;
      }

      goto LABEL_360;
    }
  }

  if (v87)
  {
LABEL_350:
    if (v84)
    {
      goto LABEL_351;
    }

    goto LABEL_361;
  }

LABEL_360:

  if (v84)
  {
LABEL_351:
    if (v140)
    {
      goto LABEL_352;
    }

    goto LABEL_362;
  }

LABEL_361:

  if (v140)
  {
LABEL_352:
    if (v141)
    {
      goto LABEL_353;
    }

    goto LABEL_363;
  }

LABEL_362:

  if (v141)
  {
LABEL_353:
    if (v142)
    {
      goto LABEL_354;
    }

LABEL_364:

    if (v143)
    {
      goto LABEL_355;
    }

    goto LABEL_365;
  }

LABEL_363:

  if (!v142)
  {
    goto LABEL_364;
  }

LABEL_354:
  if (v143)
  {
    goto LABEL_355;
  }

LABEL_365:

LABEL_355:
  v93 = *MEMORY[0x1E69E9840];

  return v137;
}

- (BMSiriMusicInferenceTrainingDependentSignals)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v649[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"isClientForegroundActiveBundle"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"compoundActiveBundleScore"];
    v548 = v9;
    v549 = v8;
    if (!v9 || (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
LABEL_7:
      v12 = [v6 objectForKeyedSubscript:@"compoundMediaTypeBundleScore"];
      v547 = a4;
      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v544 = v11;
        v13 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v544 = v11;
        v13 = v12;
LABEL_10:
        v14 = [v6 objectForKeyedSubscript:@"entitySearchBundleRecencyS"];
        v539 = v13;
        if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v538 = v14;
          v545 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v538 = v14;
          v545 = v14;
LABEL_13:
          v15 = [v6 objectForKeyedSubscript:@"entitySearchBundleScore"];
          v542 = v15;
          if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v540 = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v540 = v16;
LABEL_16:
            v17 = [v6 objectForKeyedSubscript:@"isForegroundBundle"];
            v535 = self;
            v536 = v17;
            if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v532 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v532 = v18;
LABEL_19:
              v19 = [v6 objectForKeyedSubscript:@"isNowPlayingBundle"];
              v534 = v19;
              if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v533 = 0;
                goto LABEL_22;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v533 = v20;
LABEL_22:
                v21 = [v6 objectForKeyedSubscript:@"nowPlayingBundleCount"];
                v531 = v21;
                if (!v21 || (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v23 = 0;
                  goto LABEL_25;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v23 = v22;
LABEL_25:
                  v24 = [v6 objectForKeyedSubscript:@"nowPlayingBundleRecencyS"];
                  v530 = v24;
                  if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v26 = 0;
                    goto LABEL_28;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v26 = v25;
LABEL_28:
                    v27 = [v6 objectForKeyedSubscript:@"nowPlayingBundleScore"];
                    v525 = v27;
                    if (!v27 || (v28 = v27, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v29 = 0;
                      goto LABEL_31;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v29 = v28;
LABEL_31:
                      v30 = [v6 objectForKeyedSubscript:@"isNowPlayingLastBundle"];
                      v522 = v30;
                      if (!v30 || (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v32 = 0;
LABEL_34:
                        v33 = [v6 objectForKeyedSubscript:@"nowPlayingUsage1Day"];
                        v519 = v26;
                        v518 = v29;
                        v520 = v33;
                        if (!v33)
                        {
                          goto LABEL_77;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v33 = 0;
                          goto LABEL_77;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v33 = v33;
LABEL_77:
                          v63 = [v6 objectForKeyedSubscript:@"nowPlayingUsage7Days"];
                          v514 = v33;
                          if (!v63 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v64 = 0;
                            goto LABEL_80;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v64 = v63;
LABEL_80:
                            v65 = [v6 objectForKeyedSubscript:@"nowPlayingUsage14Days"];
                            v516 = v32;
                            if (!v65 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v512 = 0;
                              goto LABEL_83;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v512 = v65;
LABEL_83:
                              v66 = [v6 objectForKeyedSubscript:@"isRawLastNowPlayingCoreDuet"];
                              v502 = v66;
                              if (!v66 || (v67 = v66, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v68 = v64;
                                v509 = 0;
                                goto LABEL_86;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v107 = v67;
                                v68 = v64;
                                v509 = v107;
LABEL_86:
                                v69 = [v6 objectForKeyedSubscript:@"isRawMediaCategoryAudiobookSignal"];
                                v505 = v69;
                                if (!v69 || (v70 = v69, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v503 = 0;
LABEL_89:
                                  v71 = [v6 objectForKeyedSubscript:@"isRawMediaCategoryMusicSignal"];
                                  v500 = v71;
                                  if (v71 && (v72 = v71, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                  {
                                    objc_opt_class();
                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                    {
                                      if (!v547)
                                      {
                                        v498 = 0;
                                        v40 = 0;
                                        v47 = v538;
LABEL_459:
                                        v64 = v68;
                                        v67 = v502;
                                        goto LABEL_460;
                                      }

                                      v499 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v497 = *MEMORY[0x1E698F240];
                                      v616 = *MEMORY[0x1E696A578];
                                      v133 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isRawMediaCategoryMusicSignal"];
                                      v617 = v133;
                                      v134 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v617 forKeys:&v616 count:1];
                                      v135 = v497;
                                      v496 = v134;
                                      v136 = [v499 initWithDomain:v135 code:2 userInfo:?];
                                      v498 = 0;
                                      v40 = 0;
                                      *v547 = v136;
                                      goto LABEL_274;
                                    }

                                    v498 = v72;
                                  }

                                  else
                                  {
                                    v498 = 0;
                                  }

                                  v73 = [v6 objectForKeyedSubscript:@"isRawMediaCategoryPodcastSignal"];
                                  v493 = v63;
                                  v496 = v73;
                                  if (!v73 || (v74 = v73, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v75 = 0;
                                    goto LABEL_95;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v75 = v74;
LABEL_95:
                                    v76 = [v6 objectForKeyedSubscript:@"isRawMediaCategoryRadioSignal"];
                                    v494 = v76;
                                    if (!v76 || (v77 = v76, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v491 = 0;
                                      goto LABEL_98;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v491 = v77;
LABEL_98:
                                      v78 = [v6 objectForKeyedSubscript:@"isRawMediaCategoryVideoSignal"];
                                      v489 = v78;
                                      if (!v78 || (v79 = v78, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v487 = 0;
                                        goto LABEL_101;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v487 = v79;
LABEL_101:
                                        v80 = [v6 objectForKeyedSubscript:@"rawMediaTypeUsageSignalBook"];
                                        v81 = v68;
                                        v483 = v80;
                                        if (!v80 || (v82 = v80, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v485 = 0;
                                          goto LABEL_104;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v485 = v82;
LABEL_104:
                                          v83 = [v6 objectForKeyedSubscript:@"rawMediaTypeUsageSignalMusic"];
                                          v481 = v83;
                                          if (!v83 || (v84 = v83, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v472 = 0;
                                            goto LABEL_107;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v472 = v84;
LABEL_107:
                                            v85 = [v6 objectForKeyedSubscript:@"rawMediaTypeUsageSignalPodcast"];
                                            v474 = v65;
                                            v477 = v85;
                                            if (!v85 || (v86 = v85, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v87 = v81;
                                              v88 = v75;
                                              v475 = 0;
LABEL_110:
                                              v89 = [v6 objectForKeyedSubscript:@"rawMediaTypeUsageSignalVideo"];
                                              v470 = v89;
                                              if (v89 && (v90 = v89, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                              {
                                                objc_opt_class();
                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                {
                                                  if (!v547)
                                                  {
                                                    v468 = 0;
                                                    v40 = 0;
                                                    v47 = v538;
                                                    v75 = v88;
                                                    v81 = v87;
                                                    v65 = v474;
LABEL_451:
                                                    v194 = v472;
                                                    goto LABEL_452;
                                                  }

                                                  v469 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v467 = *MEMORY[0x1E698F240];
                                                  v602 = *MEMORY[0x1E696A578];
                                                  v75 = v88;
                                                  v209 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                  v360 = objc_opt_class();
                                                  v210 = v209;
                                                  v81 = v87;
                                                  v65 = v474;
                                                  v464 = [v210 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v360, @"rawMediaTypeUsageSignalVideo"];
                                                  v603 = v464;
                                                  v211 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v603 forKeys:&v602 count:1];
                                                  v212 = v467;
                                                  v466 = v211;
                                                  v213 = [v469 initWithDomain:v212 code:2 userInfo:?];
                                                  v468 = 0;
                                                  v40 = 0;
                                                  *v547 = v213;
                                                  v47 = v538;
                                                  goto LABEL_450;
                                                }

                                                v468 = v90;
                                              }

                                              else
                                              {
                                                v468 = 0;
                                              }

                                              v91 = [v6 objectForKeyedSubscript:@"rawNowPlayingCountCoreDuet10Min"];
                                              v466 = v91;
                                              if (!v91 || (v92 = v91, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v464 = 0;
LABEL_116:
                                                v93 = [v6 objectForKeyedSubscript:@"rawNowPlayingCountCoreDuet1Day"];
                                                v75 = v88;
                                                v462 = v93;
                                                if (!v93)
                                                {
                                                  v460 = 0;
                                                  v81 = v87;
                                                  goto LABEL_186;
                                                }

                                                v94 = v93;
                                                objc_opt_class();
                                                v81 = v87;
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v460 = 0;
LABEL_186:
                                                  v65 = v474;
                                                  goto LABEL_187;
                                                }

                                                objc_opt_class();
                                                v65 = v474;
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v460 = v94;
LABEL_187:
                                                  v150 = [v6 objectForKeyedSubscript:@"rawNowPlayingCountCoreDuet1Hr"];
                                                  v458 = v150;
                                                  if (!v150 || (v151 = v150, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v456 = 0;
                                                    goto LABEL_190;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v456 = v151;
LABEL_190:
                                                    v152 = [v6 objectForKeyedSubscript:@"rawNowPlayingCountCoreDuet28Day"];
                                                    v454 = v152;
                                                    if (!v152 || (v153 = v152, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v448 = 0;
LABEL_193:
                                                      v154 = [v6 objectForKeyedSubscript:@"rawNowPlayingCountCoreDuet2Min"];
                                                      v452 = v154;
                                                      if (v154 && (v155 = v154, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                      {
                                                        objc_opt_class();
                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                        {
                                                          if (!v547)
                                                          {
                                                            v450 = 0;
                                                            v40 = 0;
                                                            v47 = v538;
LABEL_445:
                                                            v228 = v448;
                                                            goto LABEL_446;
                                                          }

                                                          v451 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v447 = *MEMORY[0x1E698F240];
                                                          v592 = *MEMORY[0x1E696A578];
                                                          v237 = v81;
                                                          v238 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                          v365 = objc_opt_class();
                                                          v239 = v238;
                                                          v81 = v237;
                                                          v240 = [v239 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v365, @"rawNowPlayingCountCoreDuet2Min"];
                                                          v593 = v240;
                                                          v241 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v593 forKeys:&v592 count:1];
                                                          v242 = v447;
                                                          v446 = v241;
                                                          v243 = [v451 initWithDomain:v242 code:2 userInfo:?];
                                                          v450 = 0;
                                                          v40 = 0;
                                                          *v547 = v243;
                                                          goto LABEL_342;
                                                        }

                                                        v450 = v155;
                                                      }

                                                      else
                                                      {
                                                        v450 = 0;
                                                      }

                                                      v156 = [v6 objectForKeyedSubscript:@"rawNowPlayingCountCoreDuet6Hr"];
                                                      v446 = v156;
                                                      if (!v156 || (v157 = v156, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v440 = 0;
LABEL_199:
                                                        v158 = [v6 objectForKeyedSubscript:@"rawNowPlayingCountCoreDuet7Day"];
                                                        v444 = v158;
                                                        if (v158 && (v159 = v158, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                        {
                                                          objc_opt_class();
                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                          {
                                                            if (!v547)
                                                            {
                                                              v442 = 0;
                                                              v40 = 0;
                                                              v47 = v538;
LABEL_442:
                                                              v240 = v440;
                                                              goto LABEL_443;
                                                            }

                                                            v443 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v437 = *MEMORY[0x1E698F240];
                                                            v588 = *MEMORY[0x1E696A578];
                                                            v249 = v81;
                                                            v250 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                            v367 = objc_opt_class();
                                                            v251 = v250;
                                                            v81 = v249;
                                                            v438 = [v251 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v367, @"rawNowPlayingCountCoreDuet7Day"];
                                                            v589 = v438;
                                                            v252 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v589 forKeys:&v588 count:1];
                                                            v253 = [v443 initWithDomain:v437 code:2 userInfo:v252];
                                                            v442 = 0;
                                                            v40 = 0;
                                                            *v547 = v253;
                                                            v47 = v538;
                                                            goto LABEL_441;
                                                          }

                                                          v442 = v159;
                                                        }

                                                        else
                                                        {
                                                          v442 = 0;
                                                        }

                                                        v160 = [v6 objectForKeyedSubscript:@"rawNowPlayingRecencyCD"];
                                                        v436 = v160;
                                                        if (!v160 || (v161 = v160, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                        {
                                                          v438 = 0;
                                                          goto LABEL_205;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v438 = v161;
LABEL_205:
                                                          v162 = [v6 objectForKeyedSubscript:@"rawEntitySearchRecency"];
                                                          v434 = v162;
                                                          if (!v162 || (v163 = v162, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                          {
                                                            v432 = 0;
                                                            goto LABEL_208;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v432 = v163;
LABEL_208:
                                                            v164 = [v6 objectForKeyedSubscript:@"usageScoreBooks"];
                                                            v428 = v164;
                                                            if (!v164 || (v165 = v164, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                            {
                                                              v430 = 0;
LABEL_211:
                                                              v166 = [v6 objectForKeyedSubscript:@"usageScoreMusic"];
                                                              v424 = v166;
                                                              if (v166 && (v167 = v166, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                              {
                                                                objc_opt_class();
                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                {
                                                                  if (!v547)
                                                                  {
                                                                    v426 = 0;
                                                                    v40 = 0;
                                                                    v47 = v538;
                                                                    v252 = v436;
LABEL_437:
                                                                    v271 = v424;
                                                                    goto LABEL_438;
                                                                  }

                                                                  v427 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v421 = *MEMORY[0x1E698F240];
                                                                  v580 = *MEMORY[0x1E696A578];
                                                                  v272 = v81;
                                                                  v273 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                  v371 = objc_opt_class();
                                                                  v274 = v273;
                                                                  v81 = v272;
                                                                  v422 = [v274 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v371, @"usageScoreMusic"];
                                                                  v581 = v422;
                                                                  v275 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v581 forKeys:&v580 count:1];
                                                                  v276 = [v427 initWithDomain:v421 code:2 userInfo:v275];
                                                                  v426 = 0;
                                                                  v40 = 0;
                                                                  *v547 = v276;
                                                                  v277 = v275;
                                                                  v47 = v538;
                                                                  v252 = v436;
LABEL_436:

                                                                  goto LABEL_437;
                                                                }

                                                                v426 = v167;
                                                              }

                                                              else
                                                              {
                                                                v426 = 0;
                                                              }

                                                              v168 = [v6 objectForKeyedSubscript:@"usageScorePodcasts"];
                                                              v420 = v168;
                                                              if (v168 && (v169 = v168, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                              {
                                                                objc_opt_class();
                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                {
                                                                  if (!v547)
                                                                  {
                                                                    v422 = 0;
                                                                    v40 = 0;
                                                                    v47 = v538;
                                                                    v252 = v436;
LABEL_435:
                                                                    v277 = v420;
                                                                    goto LABEL_436;
                                                                  }

                                                                  v423 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v417 = *MEMORY[0x1E698F240];
                                                                  v578 = *MEMORY[0x1E696A578];
                                                                  v278 = v81;
                                                                  v279 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                  v372 = objc_opt_class();
                                                                  v280 = v279;
                                                                  v81 = v278;
                                                                  v418 = [v280 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v372, @"usageScorePodcasts"];
                                                                  v579 = v418;
                                                                  v281 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v579 forKeys:&v578 count:1];
                                                                  v282 = [v423 initWithDomain:v417 code:2 userInfo:v281];
                                                                  v422 = 0;
                                                                  v40 = 0;
                                                                  *v547 = v282;
                                                                  v283 = v281;
                                                                  v47 = v538;
                                                                  v252 = v436;
LABEL_434:

                                                                  goto LABEL_435;
                                                                }

                                                                v422 = v169;
                                                              }

                                                              else
                                                              {
                                                                v422 = 0;
                                                              }

                                                              v170 = [v6 objectForKeyedSubscript:@"isAppFirstParty"];
                                                              v416 = v170;
                                                              if (v170 && (v171 = v170, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                              {
                                                                objc_opt_class();
                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                {
                                                                  if (!v547)
                                                                  {
                                                                    v418 = 0;
                                                                    v40 = 0;
                                                                    v47 = v538;
                                                                    v252 = v436;
LABEL_433:
                                                                    v283 = v416;
                                                                    goto LABEL_434;
                                                                  }

                                                                  v419 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v412 = *MEMORY[0x1E698F240];
                                                                  v576 = *MEMORY[0x1E696A578];
                                                                  v284 = v81;
                                                                  v285 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                  v373 = objc_opt_class();
                                                                  v286 = v285;
                                                                  v81 = v284;
                                                                  v287 = v23;
                                                                  v414 = [v286 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v373, @"isAppFirstParty"];
                                                                  v577 = v414;
                                                                  v288 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v577 forKeys:&v576 count:1];
                                                                  v289 = [v419 initWithDomain:v412 code:2 userInfo:v288];
                                                                  v418 = 0;
                                                                  v40 = 0;
                                                                  *v547 = v289;
                                                                  v47 = v538;
                                                                  v252 = v436;
                                                                  goto LABEL_432;
                                                                }

                                                                v418 = v171;
                                                              }

                                                              else
                                                              {
                                                                v418 = 0;
                                                              }

                                                              v172 = [v6 objectForKeyedSubscript:@"isRequestedApp"];
                                                              v410 = v172;
                                                              if (!v172 || (v173 = v172, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                              {
                                                                v414 = 0;
                                                                goto LABEL_223;
                                                              }

                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v414 = v173;
LABEL_223:
                                                                v174 = [v6 objectForKeyedSubscript:@"isNowPlayingBundlePSE1"];
                                                                v408 = v174;
                                                                if (!v174 || (v175 = v174, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                {
                                                                  v411 = 0;
                                                                  goto LABEL_226;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v411 = v175;
LABEL_226:
                                                                  v176 = [v6 objectForKeyedSubscript:@"isNowPlayingBundlePSE2"];
                                                                  v404 = v176;
                                                                  if (!v176 || (v177 = v176, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                  {
                                                                    v406 = 0;
                                                                    goto LABEL_229;
                                                                  }

                                                                  objc_opt_class();
                                                                  if (objc_opt_isKindOfClass())
                                                                  {
                                                                    v406 = v177;
LABEL_229:
                                                                    v178 = [v6 objectForKeyedSubscript:@"vq21Score"];
                                                                    v400 = v178;
                                                                    if (!v178 || (v179 = v178, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                    {
                                                                      v402 = 0;
                                                                      goto LABEL_232;
                                                                    }

                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v402 = v179;
LABEL_232:
                                                                      v180 = [v6 objectForKeyedSubscript:@"isSupportedFlag"];
                                                                      v396 = v81;
                                                                      v397 = v180;
                                                                      if (!v180 || (v181 = v180, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                      {
                                                                        v399 = 0;
LABEL_235:
                                                                        v182 = [v6 objectForKeyedSubscript:@"isUnicornFlag"];
                                                                        v480 = v12;
                                                                        v395 = v182;
                                                                        if (v182 && (v183 = v182, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                        {
                                                                          objc_opt_class();
                                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                          {
                                                                            v392 = v75;
                                                                            v287 = v23;
                                                                            if (!v547)
                                                                            {
                                                                              v528 = 0;
                                                                              v40 = 0;
                                                                              v47 = v538;
                                                                              v288 = v410;
LABEL_426:
                                                                              v316 = v395;
                                                                              goto LABEL_427;
                                                                            }

                                                                            v317 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v318 = *MEMORY[0x1E698F240];
                                                                            v564 = *MEMORY[0x1E696A578];
                                                                            v524 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isUnicornFlag"];
                                                                            v565 = v524;
                                                                            v319 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v565 forKeys:&v564 count:1];
                                                                            v528 = 0;
                                                                            v40 = 0;
                                                                            *v547 = [v317 initWithDomain:v318 code:2 userInfo:v319];
                                                                            v320 = v535;
                                                                            v47 = v538;
                                                                            v190 = v392;
                                                                            v288 = v410;
                                                                            goto LABEL_425;
                                                                          }

                                                                          v528 = v183;
                                                                        }

                                                                        else
                                                                        {
                                                                          v528 = 0;
                                                                        }

                                                                        v389 = [v6 objectForKeyedSubscript:@"isSupportedUnicornMatchFlag"];
                                                                        if (!v389 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                        {
                                                                          v524 = 0;
LABEL_241:
                                                                          v388 = [v6 objectForKeyedSubscript:@"isDisambiguationSelectedApp"];
                                                                          if (v388 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                          {
                                                                            objc_opt_class();
                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                            {
                                                                              v394 = v75;
                                                                              v287 = v23;
                                                                              v330 = v535;
                                                                              if (!v547)
                                                                              {
                                                                                v390 = 0;
                                                                                v40 = 0;
                                                                                v320 = v535;
                                                                                v47 = v538;
                                                                                v190 = v75;
                                                                                v288 = v410;
                                                                                v319 = v389;
                                                                                goto LABEL_424;
                                                                              }

                                                                              v331 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v332 = *MEMORY[0x1E698F240];
                                                                              v560 = *MEMORY[0x1E696A578];
                                                                              v387 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isDisambiguationSelectedApp"];
                                                                              v561 = v387;
                                                                              v386 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v561 forKeys:&v560 count:1];
                                                                              v390 = 0;
                                                                              v40 = 0;
                                                                              *v547 = [v331 initWithDomain:v332 code:2 userInfo:?];
                                                                              goto LABEL_479;
                                                                            }

                                                                            v390 = v388;
                                                                          }

                                                                          else
                                                                          {
                                                                            v390 = 0;
                                                                          }

                                                                          v184 = [v6 objectForKeyedSubscript:@"isModelPredictedApp"];
                                                                          v386 = v184;
                                                                          if (!v184 || (v185 = v184, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                          {
                                                                            v387 = 0;
                                                                            goto LABEL_247;
                                                                          }

                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            v387 = v185;
LABEL_247:
                                                                            v384 = [v6 objectForKeyedSubscript:@"usageScoreRadio"];
                                                                            if (!v384 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                            {
                                                                              v385 = 0;
                                                                              goto LABEL_250;
                                                                            }

                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              v385 = v384;
LABEL_250:
                                                                              v382 = [v6 objectForKeyedSubscript:@"usageScoreMusicWithoutRadio"];
                                                                              if (!v382 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                              {
                                                                                v383 = 0;
                                                                                goto LABEL_253;
                                                                              }

                                                                              v378 = v23;
                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v383 = v382;
LABEL_253:
                                                                                v186 = [v6 objectForKeyedSubscript:@"rawMediaTypeUsageSignalRadio"];
                                                                                v379 = v186;
                                                                                if (!v186 || (v187 = v186, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                {
                                                                                  v381 = 0;
LABEL_256:
                                                                                  v188 = v438;
                                                                                  v189 = [v6 objectForKeyedSubscript:@"rawMediaTypeUsageSignalMusicWithoutRadio"];
                                                                                  v380 = v189;
                                                                                  if (!v189)
                                                                                  {
                                                                                    v190 = v75;
                                                                                    goto LABEL_390;
                                                                                  }

                                                                                  objc_opt_class();
                                                                                  if (objc_opt_isKindOfClass())
                                                                                  {
                                                                                    v190 = v75;
                                                                                    v189 = 0;
LABEL_390:
                                                                                    v47 = v538;
                                                                                    v323 = v464;
                                                                                    v324 = v460;
                                                                                    v325 = v456;
                                                                                    v326 = v450;
                                                                                    v327 = v472;
                                                                                    v328 = v442;
LABEL_391:
                                                                                    v329 = v189;
                                                                                    v442 = v328;
                                                                                    v450 = v326;
                                                                                    v456 = v325;
                                                                                    v460 = v324;
                                                                                    v464 = v323;
                                                                                    v472 = v327;
                                                                                    v40 = [(BMSiriMusicInferenceTrainingDependentSignals *)v535 initWithIsClientForegroundActiveBundle:v549 compoundActiveBundleScore:v544 compoundMediaTypeBundleScore:v539 entitySearchBundleRecencyS:v545 entitySearchBundleScore:v540 isForegroundBundle:v532 isNowPlayingBundle:v533 nowPlayingBundleCount:v23 nowPlayingBundleRecencyS:v519 nowPlayingBundleScore:v518 isNowPlayingLastBundle:v516 nowPlayingUsage1Day:v514 nowPlayingUsage7Days:v396 nowPlayingUsage14Days:v512 isRawLastNowPlayingCoreDuet:v509 isRawMediaCategoryAudiobookSignal:v503 isRawMediaCategoryMusicSignal:v498 isRawMediaCategoryPodcastSignal:v190 isRawMediaCategoryRadioSignal:v491 isRawMediaCategoryVideoSignal:v487 rawMediaTypeUsageSignalBook:v485 rawMediaTypeUsageSignalMusic:v327 rawMediaTypeUsageSignalPodcast:v475 rawMediaTypeUsageSignalVideo:v468 rawNowPlayingCountCoreDuet10Min:v323 rawNowPlayingCountCoreDuet1Day:v324 rawNowPlayingCountCoreDuet1Hr:v325 rawNowPlayingCountCoreDuet28Day:v448 rawNowPlayingCountCoreDuet2Min:v326 rawNowPlayingCountCoreDuet6Hr:v440 rawNowPlayingCountCoreDuet7Day:v328 rawNowPlayingRecencyCD:v188 rawEntitySearchRecency:v432 usageScoreBooks:v430 usageScoreMusic:v426 usageScorePodcasts:v422 isAppFirstParty:v418 isRequestedApp:v414 isNowPlayingBundlePSE1:v411 isNowPlayingBundlePSE2:v406 vq21Score:v402 isSupportedFlag:v399 isUnicornFlag:v528 isSupportedUnicornMatchFlag:v524 isDisambiguationSelectedApp:v390 isModelPredictedApp:v387 usageScoreRadio:v385 usageScoreMusicWithoutRadio:v383 rawMediaTypeUsageSignalRadio:v381 rawMediaTypeUsageSignalMusicWithoutRadio:v189];
                                                                                    v320 = v40;
LABEL_418:
                                                                                    v319 = v389;

LABEL_419:
LABEL_420:

LABEL_421:
                                                                                    v287 = v23;

LABEL_422:
                                                                                    goto LABEL_423;
                                                                                  }

                                                                                  v394 = v75;
                                                                                  v378 = v23;
                                                                                  v333 = v535;
                                                                                  objc_opt_class();
                                                                                  if (objc_opt_isKindOfClass())
                                                                                  {
                                                                                    v189 = v380;
                                                                                    v47 = v538;
                                                                                    v190 = v75;
                                                                                    v327 = v472;
                                                                                    v323 = v464;
                                                                                    v324 = v460;
                                                                                    v325 = v456;
                                                                                    v326 = v450;
                                                                                    v328 = v442;
                                                                                    v188 = v438;
                                                                                    goto LABEL_391;
                                                                                  }

                                                                                  if (v547)
                                                                                  {
                                                                                    v344 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                    v345 = *MEMORY[0x1E698F240];
                                                                                    v550 = *MEMORY[0x1E696A578];
                                                                                    v346 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"rawMediaTypeUsageSignalMusicWithoutRadio"];
                                                                                    v551 = v346;
                                                                                    v347 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v551 forKeys:&v550 count:1];
                                                                                    *v547 = [v344 initWithDomain:v345 code:2 userInfo:v347];
                                                                                  }

                                                                                  v329 = 0;
                                                                                  v40 = 0;
LABEL_417:
                                                                                  v320 = v333;
                                                                                  v47 = v538;
                                                                                  v23 = v378;
                                                                                  v190 = v394;
                                                                                  goto LABEL_418;
                                                                                }

                                                                                v378 = v23;
                                                                                objc_opt_class();
                                                                                if (objc_opt_isKindOfClass())
                                                                                {
                                                                                  v381 = v187;
                                                                                  goto LABEL_256;
                                                                                }

                                                                                v394 = v75;
                                                                                v333 = v535;
                                                                                if (v547)
                                                                                {
                                                                                  v342 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                  v343 = *MEMORY[0x1E698F240];
                                                                                  v552 = *MEMORY[0x1E696A578];
                                                                                  v329 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"rawMediaTypeUsageSignalRadio"];
                                                                                  v553 = v329;
                                                                                  v380 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v553 forKeys:&v552 count:1];
                                                                                  v381 = 0;
                                                                                  v40 = 0;
                                                                                  *v547 = [v342 initWithDomain:v343 code:2 userInfo:?];
                                                                                  goto LABEL_417;
                                                                                }

                                                                                v381 = 0;
                                                                                v40 = 0;
LABEL_485:
                                                                                v320 = v333;
                                                                                v47 = v538;
                                                                                v23 = v378;
                                                                                v190 = v394;
                                                                                v319 = v389;
                                                                                goto LABEL_419;
                                                                              }

                                                                              v394 = v75;
                                                                              v333 = v535;
                                                                              if (v547)
                                                                              {
                                                                                v339 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v340 = *MEMORY[0x1E698F240];
                                                                                v554 = *MEMORY[0x1E696A578];
                                                                                v381 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"usageScoreMusicWithoutRadio"];
                                                                                v555 = v381;
                                                                                v379 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v555 forKeys:&v554 count:1];
                                                                                v341 = [v339 initWithDomain:v340 code:2 userInfo:?];
                                                                                v383 = 0;
                                                                                v40 = 0;
                                                                                *v547 = v341;
                                                                                goto LABEL_485;
                                                                              }

                                                                              v383 = 0;
                                                                              v40 = 0;
                                                                              v320 = v535;
                                                                              v47 = v538;
LABEL_483:
                                                                              v190 = v394;
                                                                              v319 = v389;
                                                                              goto LABEL_420;
                                                                            }

                                                                            v394 = v75;
                                                                            if (v547)
                                                                            {
                                                                              v336 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v337 = *MEMORY[0x1E698F240];
                                                                              v556 = *MEMORY[0x1E696A578];
                                                                              v383 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"usageScoreRadio"];
                                                                              v557 = v383;
                                                                              v382 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v557 forKeys:&v556 count:1];
                                                                              v338 = [v336 initWithDomain:v337 code:2 userInfo:?];
                                                                              v385 = 0;
                                                                              v40 = 0;
                                                                              *v547 = v338;
                                                                              v320 = v535;
                                                                              v47 = v538;
                                                                              goto LABEL_483;
                                                                            }

                                                                            v385 = 0;
                                                                            v40 = 0;
                                                                            v320 = v535;
                                                                            v47 = v538;
LABEL_481:
                                                                            v190 = v394;
                                                                            v319 = v389;
                                                                            goto LABEL_421;
                                                                          }

                                                                          v394 = v75;
                                                                          v287 = v23;
                                                                          v330 = v535;
                                                                          if (v547)
                                                                          {
                                                                            v334 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v335 = *MEMORY[0x1E698F240];
                                                                            v558 = *MEMORY[0x1E696A578];
                                                                            v385 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isModelPredictedApp"];
                                                                            v559 = v385;
                                                                            v384 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v559 forKeys:&v558 count:1];
                                                                            v387 = 0;
                                                                            v40 = 0;
                                                                            *v547 = [v334 initWithDomain:v335 code:2 userInfo:?];
                                                                            v320 = v535;
                                                                            v47 = v538;
                                                                            v23 = v287;
                                                                            goto LABEL_481;
                                                                          }

                                                                          v387 = 0;
                                                                          v40 = 0;
LABEL_479:
                                                                          v320 = v330;
                                                                          v47 = v538;
                                                                          v190 = v394;
                                                                          v319 = v389;
                                                                          goto LABEL_422;
                                                                        }

                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          v524 = v389;
                                                                          goto LABEL_241;
                                                                        }

                                                                        v393 = v75;
                                                                        v287 = v23;
                                                                        if (v547)
                                                                        {
                                                                          v321 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v322 = *MEMORY[0x1E698F240];
                                                                          v562 = *MEMORY[0x1E696A578];
                                                                          v319 = v389;
                                                                          v390 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isSupportedUnicornMatchFlag"];
                                                                          v563 = v390;
                                                                          v388 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v563 forKeys:&v562 count:1];
                                                                          v524 = 0;
                                                                          v40 = 0;
                                                                          *v547 = [v321 initWithDomain:v322 code:2 userInfo:?];
                                                                          v320 = v535;
                                                                          v47 = v538;
                                                                          v190 = v393;
LABEL_423:
                                                                          v288 = v410;
LABEL_424:

                                                                          goto LABEL_425;
                                                                        }

                                                                        v524 = 0;
                                                                        v40 = 0;
                                                                        v320 = v535;
                                                                        v47 = v538;
                                                                        v190 = v75;
                                                                        v288 = v410;
                                                                        v319 = v389;
LABEL_425:
                                                                        v535 = v320;

                                                                        v12 = v480;
                                                                        v75 = v190;
                                                                        v81 = v396;
                                                                        goto LABEL_426;
                                                                      }

                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        v399 = v181;
                                                                        goto LABEL_235;
                                                                      }

                                                                      v391 = v75;
                                                                      v287 = v23;
                                                                      if (v547)
                                                                      {
                                                                        v314 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v315 = *MEMORY[0x1E698F240];
                                                                        v566 = *MEMORY[0x1E696A578];
                                                                        v528 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isSupportedFlag"];
                                                                        v567 = v528;
                                                                        v316 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v567 forKeys:&v566 count:1];
                                                                        v399 = 0;
                                                                        v40 = 0;
                                                                        *v547 = [v314 initWithDomain:v315 code:2 userInfo:v316];
                                                                        v47 = v538;
                                                                        v75 = v391;
                                                                        v288 = v410;
LABEL_427:

                                                                        v252 = v436;
                                                                        goto LABEL_428;
                                                                      }

                                                                      v399 = 0;
                                                                      v40 = 0;
                                                                      v47 = v538;
LABEL_407:
                                                                      v252 = v436;
                                                                      v288 = v410;
LABEL_428:

                                                                      goto LABEL_429;
                                                                    }

                                                                    v287 = v23;
                                                                    if (v547)
                                                                    {
                                                                      v403 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                      v398 = *MEMORY[0x1E698F240];
                                                                      v568 = *MEMORY[0x1E696A578];
                                                                      v308 = v81;
                                                                      v309 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                      v377 = objc_opt_class();
                                                                      v310 = v309;
                                                                      v81 = v308;
                                                                      v399 = [v310 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v377, @"vq21Score"];
                                                                      v569 = v399;
                                                                      v311 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v569 forKeys:&v568 count:1];
                                                                      v312 = v398;
                                                                      v397 = v311;
                                                                      v313 = [v403 initWithDomain:v312 code:2 userInfo:?];
                                                                      v402 = 0;
                                                                      v40 = 0;
                                                                      *v547 = v313;
                                                                      v47 = v538;
                                                                      goto LABEL_407;
                                                                    }

                                                                    v402 = 0;
                                                                    v40 = 0;
LABEL_403:
                                                                    v47 = v538;
                                                                    v252 = v436;
                                                                    v288 = v410;
LABEL_429:

                                                                    goto LABEL_430;
                                                                  }

                                                                  v287 = v23;
                                                                  if (v547)
                                                                  {
                                                                    v407 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v401 = *MEMORY[0x1E698F240];
                                                                    v570 = *MEMORY[0x1E696A578];
                                                                    v302 = v81;
                                                                    v303 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                    v376 = objc_opt_class();
                                                                    v304 = v303;
                                                                    v81 = v302;
                                                                    v402 = [v304 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v376, @"isNowPlayingBundlePSE2"];
                                                                    v571 = v402;
                                                                    v305 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v571 forKeys:&v570 count:1];
                                                                    v306 = v401;
                                                                    v400 = v305;
                                                                    v307 = [v407 initWithDomain:v306 code:2 userInfo:?];
                                                                    v406 = 0;
                                                                    v40 = 0;
                                                                    *v547 = v307;
                                                                    goto LABEL_403;
                                                                  }

                                                                  v406 = 0;
                                                                  v40 = 0;
LABEL_397:
                                                                  v47 = v538;
                                                                  v252 = v436;
                                                                  v288 = v410;
LABEL_430:

                                                                  goto LABEL_431;
                                                                }

                                                                v287 = v23;
                                                                if (v547)
                                                                {
                                                                  v413 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v405 = *MEMORY[0x1E698F240];
                                                                  v572 = *MEMORY[0x1E696A578];
                                                                  v296 = v81;
                                                                  v297 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                  v375 = objc_opt_class();
                                                                  v298 = v297;
                                                                  v81 = v296;
                                                                  v406 = [v298 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v375, @"isNowPlayingBundlePSE1"];
                                                                  v573 = v406;
                                                                  v299 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v573 forKeys:&v572 count:1];
                                                                  v300 = v405;
                                                                  v404 = v299;
                                                                  v301 = [v413 initWithDomain:v300 code:2 userInfo:?];
                                                                  v411 = 0;
                                                                  v40 = 0;
                                                                  *v547 = v301;
                                                                  goto LABEL_397;
                                                                }

                                                                v411 = 0;
                                                                v40 = 0;
                                                                v47 = v538;
                                                                v252 = v436;
                                                                v288 = v410;
LABEL_431:

                                                                goto LABEL_432;
                                                              }

                                                              v287 = v23;
                                                              if (v547)
                                                              {
                                                                v415 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v409 = *MEMORY[0x1E698F240];
                                                                v574 = *MEMORY[0x1E696A578];
                                                                v290 = v81;
                                                                v291 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                v288 = v410;
                                                                v374 = objc_opt_class();
                                                                v292 = v291;
                                                                v81 = v290;
                                                                v411 = [v292 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v374, @"isRequestedApp"];
                                                                v575 = v411;
                                                                v293 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v575 forKeys:&v574 count:1];
                                                                v294 = v409;
                                                                v408 = v293;
                                                                v295 = [v415 initWithDomain:v294 code:2 userInfo:?];
                                                                v414 = 0;
                                                                v40 = 0;
                                                                *v547 = v295;
                                                                v47 = v538;
                                                                v252 = v436;
                                                                goto LABEL_431;
                                                              }

                                                              v414 = 0;
                                                              v40 = 0;
                                                              v47 = v538;
                                                              v252 = v436;
                                                              v288 = v410;
LABEL_432:

                                                              v23 = v287;
                                                              v65 = v474;
                                                              goto LABEL_433;
                                                            }

                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v430 = v165;
                                                              goto LABEL_211;
                                                            }

                                                            if (v547)
                                                            {
                                                              v431 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v425 = *MEMORY[0x1E698F240];
                                                              v582 = *MEMORY[0x1E696A578];
                                                              v266 = v81;
                                                              v267 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                              v370 = objc_opt_class();
                                                              v268 = v267;
                                                              v81 = v266;
                                                              v426 = [v268 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v370, @"usageScoreBooks"];
                                                              v583 = v426;
                                                              v269 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v583 forKeys:&v582 count:1];
                                                              v270 = [v431 initWithDomain:v425 code:2 userInfo:v269];
                                                              v430 = 0;
                                                              v40 = 0;
                                                              *v547 = v270;
                                                              v271 = v269;
                                                              v47 = v538;
                                                              v252 = v436;
LABEL_438:

                                                              goto LABEL_439;
                                                            }

                                                            v430 = 0;
                                                            v40 = 0;
LABEL_363:
                                                            v47 = v538;
                                                            v252 = v436;
LABEL_439:

                                                            goto LABEL_440;
                                                          }

                                                          if (v547)
                                                          {
                                                            v433 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v429 = *MEMORY[0x1E698F240];
                                                            v584 = *MEMORY[0x1E696A578];
                                                            v260 = v81;
                                                            v261 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                            v369 = objc_opt_class();
                                                            v262 = v261;
                                                            v81 = v260;
                                                            v430 = [v262 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v369, @"rawEntitySearchRecency"];
                                                            v585 = v430;
                                                            v263 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v585 forKeys:&v584 count:1];
                                                            v264 = v429;
                                                            v428 = v263;
                                                            v265 = [v433 initWithDomain:v264 code:2 userInfo:?];
                                                            v432 = 0;
                                                            v40 = 0;
                                                            *v547 = v265;
                                                            goto LABEL_363;
                                                          }

                                                          v432 = 0;
                                                          v40 = 0;
                                                          v47 = v538;
                                                          v252 = v436;
LABEL_440:

                                                          goto LABEL_441;
                                                        }

                                                        if (v547)
                                                        {
                                                          v439 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v435 = *MEMORY[0x1E698F240];
                                                          v586 = *MEMORY[0x1E696A578];
                                                          v254 = v81;
                                                          v255 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                          v368 = objc_opt_class();
                                                          v256 = v255;
                                                          v81 = v254;
                                                          v252 = v436;
                                                          v432 = [v256 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v368, @"rawNowPlayingRecencyCD"];
                                                          v587 = v432;
                                                          v257 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v587 forKeys:&v586 count:1];
                                                          v258 = v435;
                                                          v434 = v257;
                                                          v259 = [v439 initWithDomain:v258 code:2 userInfo:?];
                                                          v438 = 0;
                                                          v40 = 0;
                                                          *v547 = v259;
                                                          v47 = v538;
                                                          goto LABEL_440;
                                                        }

                                                        v438 = 0;
                                                        v40 = 0;
                                                        v47 = v538;
                                                        v252 = v436;
LABEL_441:

                                                        goto LABEL_442;
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v440 = v157;
                                                        goto LABEL_199;
                                                      }

                                                      if (v547)
                                                      {
                                                        v445 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v441 = *MEMORY[0x1E698F240];
                                                        v590 = *MEMORY[0x1E696A578];
                                                        v244 = v81;
                                                        v245 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                        v366 = objc_opt_class();
                                                        v246 = v245;
                                                        v81 = v244;
                                                        v442 = [v246 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v366, @"rawNowPlayingCountCoreDuet6Hr"];
                                                        v591 = v442;
                                                        v247 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v591 forKeys:&v590 count:1];
                                                        v248 = v445;
                                                        v444 = v247;
                                                        v240 = 0;
                                                        v40 = 0;
                                                        *v547 = [v248 initWithDomain:v441 code:2 userInfo:?];
                                                        v47 = v538;
LABEL_443:

                                                        goto LABEL_444;
                                                      }

                                                      v240 = 0;
                                                      v40 = 0;
LABEL_342:
                                                      v47 = v538;
LABEL_444:

                                                      goto LABEL_445;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v448 = v153;
                                                      goto LABEL_193;
                                                    }

                                                    if (v547)
                                                    {
                                                      v453 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v449 = *MEMORY[0x1E698F240];
                                                      v594 = *MEMORY[0x1E696A578];
                                                      v232 = v81;
                                                      v233 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                      v364 = objc_opt_class();
                                                      v234 = v233;
                                                      v81 = v232;
                                                      v450 = [v234 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v364, @"rawNowPlayingCountCoreDuet28Day"];
                                                      v595 = v450;
                                                      v235 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v595 forKeys:&v594 count:1];
                                                      v236 = v453;
                                                      v452 = v235;
                                                      v228 = 0;
                                                      v40 = 0;
                                                      *v547 = [v236 initWithDomain:v449 code:2 userInfo:?];
                                                      v47 = v538;
LABEL_446:

                                                      goto LABEL_447;
                                                    }

                                                    v228 = 0;
                                                    v40 = 0;
LABEL_331:
                                                    v47 = v538;
LABEL_447:

                                                    goto LABEL_448;
                                                  }

                                                  if (v547)
                                                  {
                                                    v457 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v455 = *MEMORY[0x1E698F240];
                                                    v596 = *MEMORY[0x1E696A578];
                                                    v225 = v81;
                                                    v226 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                    v363 = objc_opt_class();
                                                    v227 = v226;
                                                    v81 = v225;
                                                    v228 = [v227 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v363, @"rawNowPlayingCountCoreDuet1Hr"];
                                                    v597 = v228;
                                                    v229 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v597 forKeys:&v596 count:1];
                                                    v230 = v455;
                                                    v454 = v229;
                                                    v231 = [v457 initWithDomain:v230 code:2 userInfo:?];
                                                    v456 = 0;
                                                    v40 = 0;
                                                    *v547 = v231;
                                                    goto LABEL_331;
                                                  }

                                                  v456 = 0;
                                                  v40 = 0;
LABEL_325:
                                                  v47 = v538;
LABEL_448:

                                                  goto LABEL_449;
                                                }

                                                if (v547)
                                                {
                                                  v461 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v459 = *MEMORY[0x1E698F240];
                                                  v598 = *MEMORY[0x1E696A578];
                                                  v219 = v81;
                                                  v220 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                  v362 = objc_opt_class();
                                                  v221 = v220;
                                                  v81 = v219;
                                                  v456 = [v221 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v362, @"rawNowPlayingCountCoreDuet1Day"];
                                                  v599 = v456;
                                                  v222 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v599 forKeys:&v598 count:1];
                                                  v223 = v459;
                                                  v458 = v222;
                                                  v224 = [v461 initWithDomain:v223 code:2 userInfo:?];
                                                  v460 = 0;
                                                  v40 = 0;
                                                  *v547 = v224;
                                                  goto LABEL_325;
                                                }

                                                v460 = 0;
                                                v40 = 0;
LABEL_319:
                                                v47 = v538;
LABEL_449:

                                                goto LABEL_450;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v464 = v92;
                                                goto LABEL_116;
                                              }

                                              if (v547)
                                              {
                                                v465 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v463 = *MEMORY[0x1E698F240];
                                                v600 = *MEMORY[0x1E696A578];
                                                v75 = v88;
                                                v214 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                v361 = objc_opt_class();
                                                v215 = v214;
                                                v81 = v87;
                                                v65 = v474;
                                                v460 = [v215 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v361, @"rawNowPlayingCountCoreDuet10Min"];
                                                v601 = v460;
                                                v216 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v601 forKeys:&v600 count:1];
                                                v217 = v463;
                                                v462 = v216;
                                                v218 = [v465 initWithDomain:v217 code:2 userInfo:?];
                                                v464 = 0;
                                                v40 = 0;
                                                *v547 = v218;
                                                goto LABEL_319;
                                              }

                                              v464 = 0;
                                              v40 = 0;
                                              v47 = v538;
                                              v75 = v88;
                                              v81 = v87;
                                              v65 = v474;
LABEL_450:

                                              goto LABEL_451;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v87 = v81;
                                              v88 = v75;
                                              v475 = v86;
                                              goto LABEL_110;
                                            }

                                            if (v547)
                                            {
                                              v476 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v471 = *MEMORY[0x1E698F240];
                                              v604 = *MEMORY[0x1E696A578];
                                              v203 = v81;
                                              v204 = objc_alloc(MEMORY[0x1E696AEC0]);
                                              v359 = objc_opt_class();
                                              v205 = v204;
                                              v81 = v203;
                                              v194 = v472;
                                              v468 = [v205 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v359, @"rawMediaTypeUsageSignalPodcast"];
                                              v605 = v468;
                                              v206 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v605 forKeys:&v604 count:1];
                                              v207 = v471;
                                              v470 = v206;
                                              v208 = [v476 initWithDomain:v207 code:2 userInfo:?];
                                              v475 = 0;
                                              v40 = 0;
                                              *v547 = v208;
                                              v47 = v538;
LABEL_452:

                                              goto LABEL_453;
                                            }

                                            v475 = 0;
                                            v40 = 0;
                                            v47 = v538;
                                            v194 = v472;
LABEL_453:

                                            goto LABEL_454;
                                          }

                                          if (v547)
                                          {
                                            v478 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v473 = *MEMORY[0x1E698F240];
                                            v606 = *MEMORY[0x1E696A578];
                                            v198 = v81;
                                            v199 = objc_alloc(MEMORY[0x1E696AEC0]);
                                            v358 = objc_opt_class();
                                            v200 = v199;
                                            v81 = v198;
                                            v475 = [v200 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v358, @"rawMediaTypeUsageSignalMusic"];
                                            v607 = v475;
                                            v201 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v607 forKeys:&v606 count:1];
                                            v202 = v478;
                                            v477 = v201;
                                            v194 = 0;
                                            v40 = 0;
                                            *v547 = [v202 initWithDomain:v473 code:2 userInfo:?];
                                            v47 = v538;
                                            goto LABEL_453;
                                          }

                                          v194 = 0;
                                          v40 = 0;
LABEL_298:
                                          v47 = v538;
LABEL_454:

                                          goto LABEL_455;
                                        }

                                        if (v547)
                                        {
                                          v486 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v482 = *MEMORY[0x1E698F240];
                                          v608 = *MEMORY[0x1E696A578];
                                          v529 = v6;
                                          v191 = v81;
                                          v192 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v357 = objc_opt_class();
                                          v193 = v192;
                                          v81 = v191;
                                          v6 = v529;
                                          v194 = [v193 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v357, @"rawMediaTypeUsageSignalBook"];
                                          v609 = v194;
                                          v195 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v609 forKeys:&v608 count:1];
                                          v196 = v482;
                                          v481 = v195;
                                          v197 = [v486 initWithDomain:v196 code:2 userInfo:?];
                                          v485 = 0;
                                          v40 = 0;
                                          *v547 = v197;
                                          goto LABEL_298;
                                        }

                                        v485 = 0;
                                        v40 = 0;
LABEL_292:
                                        v47 = v538;
LABEL_455:
                                        v68 = v81;

                                        goto LABEL_456;
                                      }

                                      if (v547)
                                      {
                                        v488 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v484 = *MEMORY[0x1E698F240];
                                        v610 = *MEMORY[0x1E696A578];
                                        v145 = objc_alloc(MEMORY[0x1E696AEC0]);
                                        v356 = objc_opt_class();
                                        v146 = v145;
                                        v81 = v68;
                                        v485 = [v146 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v356, @"isRawMediaCategoryVideoSignal"];
                                        v611 = v485;
                                        v147 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v611 forKeys:&v610 count:1];
                                        v148 = v484;
                                        v483 = v147;
                                        v149 = [v488 initWithDomain:v148 code:2 userInfo:?];
                                        v487 = 0;
                                        v40 = 0;
                                        *v547 = v149;
                                        goto LABEL_292;
                                      }

                                      v487 = 0;
                                      v40 = 0;
LABEL_286:
                                      v47 = v538;
LABEL_456:
                                      v133 = v75;

                                      goto LABEL_457;
                                    }

                                    if (v547)
                                    {
                                      v492 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v490 = *MEMORY[0x1E698F240];
                                      v612 = *MEMORY[0x1E696A578];
                                      v479 = v12;
                                      v140 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v355 = objc_opt_class();
                                      v141 = v140;
                                      v12 = v479;
                                      v487 = [v141 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v355, @"isRawMediaCategoryRadioSignal"];
                                      v613 = v487;
                                      v142 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v613 forKeys:&v612 count:1];
                                      v143 = v490;
                                      v489 = v142;
                                      v144 = [v492 initWithDomain:v143 code:2 userInfo:?];
                                      v491 = 0;
                                      v40 = 0;
                                      *v547 = v144;
                                      goto LABEL_286;
                                    }

                                    v133 = v75;
                                    v491 = 0;
                                    v40 = 0;
LABEL_280:
                                    v47 = v538;
LABEL_457:

                                    v63 = v493;
                                    goto LABEL_458;
                                  }

                                  if (v547)
                                  {
                                    v137 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v495 = *MEMORY[0x1E698F240];
                                    v614 = *MEMORY[0x1E696A578];
                                    v491 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isRawMediaCategoryPodcastSignal"];
                                    v615 = v491;
                                    v138 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v615 forKeys:&v614 count:1];
                                    v139 = v495;
                                    v494 = v138;
                                    v133 = 0;
                                    v40 = 0;
                                    *v547 = [v137 initWithDomain:v139 code:2 userInfo:?];
                                    goto LABEL_280;
                                  }

                                  v133 = 0;
                                  v40 = 0;
LABEL_274:
                                  v47 = v538;
LABEL_458:

                                  goto LABEL_459;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v503 = v70;
                                  goto LABEL_89;
                                }

                                if (v547)
                                {
                                  v504 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v501 = *MEMORY[0x1E698F240];
                                  v618 = *MEMORY[0x1E696A578];
                                  v128 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v354 = objc_opt_class();
                                  v129 = v128;
                                  v64 = v68;
                                  v67 = v502;
                                  v498 = [v129 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v354, @"isRawMediaCategoryAudiobookSignal"];
                                  v619 = v498;
                                  v130 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v619 forKeys:&v618 count:1];
                                  v131 = v501;
                                  v500 = v130;
                                  v132 = [v504 initWithDomain:v131 code:2 userInfo:?];
                                  v503 = 0;
                                  v40 = 0;
                                  *v547 = v132;
                                  v47 = v538;
LABEL_460:

                                  goto LABEL_461;
                                }

                                v503 = 0;
                                v40 = 0;
                                v47 = v538;
                                v64 = v68;
                                v67 = v502;
LABEL_461:

                                goto LABEL_462;
                              }

                              if (v547)
                              {
                                v511 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v508 = *MEMORY[0x1E698F240];
                                v620 = *MEMORY[0x1E696A578];
                                v121 = v67;
                                v122 = v64;
                                v123 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v353 = objc_opt_class();
                                v124 = v123;
                                v64 = v122;
                                v67 = v121;
                                v503 = [v124 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v353, @"isRawLastNowPlayingCoreDuet"];
                                v621 = v503;
                                v125 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v621 forKeys:&v620 count:1];
                                v126 = v508;
                                v505 = v125;
                                v127 = [v511 initWithDomain:v126 code:2 userInfo:?];
                                v509 = 0;
                                v40 = 0;
                                *v547 = v127;
                                v47 = v538;
                                goto LABEL_461;
                              }

                              v509 = 0;
                              v40 = 0;
LABEL_184:
                              v47 = v538;
LABEL_462:

                              v32 = v516;
                              goto LABEL_463;
                            }

                            if (v547)
                            {
                              v513 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v507 = *MEMORY[0x1E698F240];
                              v622 = *MEMORY[0x1E696A578];
                              v117 = v64;
                              v118 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v352 = objc_opt_class();
                              v119 = v118;
                              v64 = v117;
                              v509 = [v119 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v352, @"nowPlayingUsage14Days"];
                              v623 = v509;
                              v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v623 forKeys:&v622 count:1];
                              v120 = [v513 initWithDomain:v507 code:2 userInfo:v67];
                              v512 = 0;
                              v40 = 0;
                              *v547 = v120;
                              goto LABEL_184;
                            }

                            v512 = 0;
                            v40 = 0;
LABEL_178:
                            v47 = v538;
LABEL_463:

                            v33 = v514;
                            goto LABEL_464;
                          }

                          if (v547)
                          {
                            v510 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v506 = *MEMORY[0x1E698F240];
                            v624 = *MEMORY[0x1E696A578];
                            v512 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nowPlayingUsage7Days"];
                            v625 = v512;
                            v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v625 forKeys:&v624 count:1];
                            v64 = 0;
                            v40 = 0;
                            *v547 = [v510 initWithDomain:v506 code:2 userInfo:v65];
                            goto LABEL_178;
                          }

                          v64 = 0;
                          v40 = 0;
LABEL_172:
                          v47 = v538;
LABEL_464:

                          v26 = v519;
                          v29 = v518;
                          goto LABEL_465;
                        }

                        if (v547)
                        {
                          v114 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v515 = *MEMORY[0x1E698F240];
                          v626 = *MEMORY[0x1E696A578];
                          v115 = v23;
                          v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nowPlayingUsage1Day"];
                          v627 = v64;
                          v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v627 forKeys:&v626 count:1];
                          v40 = 0;
                          *v547 = [v114 initWithDomain:v515 code:2 userInfo:v116];
                          v63 = v116;
                          v23 = v115;
                          v33 = 0;
                          goto LABEL_172;
                        }

                        v33 = 0;
                        v40 = 0;
                        v47 = v538;
LABEL_465:

                        goto LABEL_466;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v32 = v31;
                        goto LABEL_34;
                      }

                      if (v547)
                      {
                        v521 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v517 = *MEMORY[0x1E698F240];
                        v628 = *MEMORY[0x1E696A578];
                        v527 = v6;
                        v108 = v26;
                        v109 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v351 = objc_opt_class();
                        v110 = v109;
                        v26 = v108;
                        v6 = v527;
                        v111 = [v110 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v351, @"isNowPlayingLastBundle"];
                        v629 = v111;
                        v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v629 forKeys:&v628 count:1];
                        v113 = v521;
                        v520 = v112;
                        v32 = 0;
                        v40 = 0;
                        *v547 = [v113 initWithDomain:v517 code:2 userInfo:?];
                        v33 = v111;
                        v47 = v538;
                        goto LABEL_465;
                      }

                      v40 = 0;
                      v47 = v538;
                      v32 = 0;
LABEL_466:

                      v13 = v539;
                      goto LABEL_467;
                    }

                    if (a4)
                    {
                      v101 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v523 = *MEMORY[0x1E698F240];
                      v630 = *MEMORY[0x1E696A578];
                      v526 = v6;
                      v102 = v26;
                      v103 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v350 = objc_opt_class();
                      v104 = v103;
                      v26 = v102;
                      v6 = v526;
                      v32 = [v104 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v350, @"nowPlayingBundleScore"];
                      v631 = v32;
                      v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v631 forKeys:&v630 count:1];
                      v106 = v523;
                      v522 = v105;
                      v29 = 0;
                      v40 = 0;
                      *v547 = [v101 initWithDomain:v106 code:2 userInfo:?];
                      v47 = v538;
                      goto LABEL_466;
                    }

                    v40 = 0;
                    v47 = v538;
                    v29 = 0;
LABEL_467:

                    v51 = v532;
                    goto LABEL_468;
                  }

                  if (a4)
                  {
                    v97 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v98 = *MEMORY[0x1E698F240];
                    v632 = *MEMORY[0x1E696A578];
                    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nowPlayingBundleRecencyS"];
                    v633 = v29;
                    v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v633 forKeys:&v632 count:1];
                    v100 = v98;
                    v13 = v539;
                    v525 = v99;
                    v26 = 0;
                    v40 = 0;
                    *v547 = [v97 initWithDomain:v100 code:2 userInfo:?];
                    v47 = v538;
                    goto LABEL_467;
                  }

                  v26 = 0;
                  v40 = 0;
                  v47 = v538;
                  v51 = v532;
LABEL_468:

                  goto LABEL_469;
                }

                v23 = a4;
                if (a4)
                {
                  v95 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v96 = *MEMORY[0x1E698F240];
                  v634 = *MEMORY[0x1E696A578];
                  v51 = v532;
                  v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nowPlayingBundleCount"];
                  v635 = v26;
                  v530 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v635 forKeys:&v634 count:1];
                  v40 = 0;
                  *v547 = [v95 initWithDomain:v96 code:2 userInfo:?];
                  v23 = 0;
                  v47 = v538;
                  goto LABEL_468;
                }

                v40 = 0;
                v47 = v538;
                v51 = v532;
LABEL_469:

                goto LABEL_470;
              }

              if (a4)
              {
                v58 = objc_alloc(MEMORY[0x1E696ABC0]);
                v59 = *MEMORY[0x1E698F240];
                v636 = *MEMORY[0x1E696A578];
                v51 = v532;
                v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isNowPlayingBundle"];
                v637 = v60;
                v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v637 forKeys:&v636 count:1];
                v62 = v59;
                v13 = v539;
                v531 = v61;
                v533 = 0;
                v40 = 0;
                *v547 = [v58 initWithDomain:v62 code:2 userInfo:?];
                v23 = v60;
                v47 = v538;
                goto LABEL_469;
              }

              v533 = 0;
              v40 = 0;
              v47 = v538;
              v51 = v532;
LABEL_470:

              self = v535;
              goto LABEL_471;
            }

            if (a4)
            {
              v55 = objc_alloc(MEMORY[0x1E696ABC0]);
              v56 = *MEMORY[0x1E698F240];
              v638 = *MEMORY[0x1E696A578];
              v533 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isForegroundBundle"];
              v639 = v533;
              v534 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v639 forKeys:&v638 count:1];
              v57 = [v55 initWithDomain:v56 code:2 userInfo:?];
              v51 = 0;
              v40 = 0;
              *a4 = v57;
              v47 = v538;
              goto LABEL_470;
            }

            v51 = 0;
            v40 = 0;
            v47 = v538;
LABEL_471:

            v11 = v544;
            goto LABEL_472;
          }

          if (a4)
          {
            v541 = objc_alloc(MEMORY[0x1E696ABC0]);
            v537 = *MEMORY[0x1E698F240];
            v640 = *MEMORY[0x1E696A578];
            v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"entitySearchBundleScore"];
            v641 = v51;
            v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v641 forKeys:&v640 count:1];
            v53 = v537;
            v536 = v52;
            v54 = [v541 initWithDomain:v53 code:2 userInfo:?];
            v540 = 0;
            v40 = 0;
            *a4 = v54;
            v47 = v538;
            goto LABEL_471;
          }

          v540 = 0;
          v40 = 0;
          v47 = v538;
          v11 = v544;
LABEL_472:

          goto LABEL_473;
        }

        v47 = v14;
        if (a4)
        {
          v546 = objc_alloc(MEMORY[0x1E696ABC0]);
          v543 = *MEMORY[0x1E698F240];
          v642 = *MEMORY[0x1E696A578];
          v11 = v544;
          v540 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"entitySearchBundleRecencyS"];
          v643 = v540;
          v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v643 forKeys:&v642 count:1];
          v49 = v543;
          v542 = v48;
          v50 = [v546 initWithDomain:v49 code:2 userInfo:?];
          v545 = 0;
          v40 = 0;
          *a4 = v50;
          goto LABEL_472;
        }

        v545 = 0;
        v40 = 0;
        v11 = v544;
LABEL_473:

        goto LABEL_474;
      }

      if (a4)
      {
        v45 = objc_alloc(MEMORY[0x1E696ABC0]);
        v46 = *MEMORY[0x1E698F240];
        v644 = *MEMORY[0x1E696A578];
        v545 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"compoundMediaTypeBundleScore"];
        v645 = v545;
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v645 forKeys:&v644 count:1];
        v13 = 0;
        v40 = 0;
        *v547 = [v45 initWithDomain:v46 code:2 userInfo:v47];
        goto LABEL_473;
      }

      v13 = 0;
      v40 = 0;
LABEL_474:

      v8 = v549;
      v10 = v548;
      goto LABEL_475;
    }

    if (a4)
    {
      v41 = objc_alloc(MEMORY[0x1E696ABC0]);
      v42 = self;
      v43 = a4;
      v44 = *MEMORY[0x1E698F240];
      v646 = *MEMORY[0x1E696A578];
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"compoundActiveBundleScore"];
      v647 = v13;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v647 forKeys:&v646 count:1];
      v11 = 0;
      v40 = 0;
      *v43 = [v41 initWithDomain:v44 code:2 userInfo:v12];
      self = v42;
      goto LABEL_474;
    }

    v11 = 0;
    v40 = 0;
LABEL_475:

    goto LABEL_476;
  }

  if (a4)
  {
    v34 = objc_alloc(MEMORY[0x1E696ABC0]);
    v35 = self;
    v36 = a4;
    v37 = *MEMORY[0x1E698F240];
    v648 = *MEMORY[0x1E696A578];
    v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isClientForegroundActiveBundle"];
    v649[0] = v38;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v649 forKeys:&v648 count:1];
    v39 = v34;
    v11 = v38;
    v8 = 0;
    v40 = 0;
    *v36 = [v39 initWithDomain:v37 code:2 userInfo:v10];
    self = v35;
    goto LABEL_475;
  }

  v8 = 0;
  v40 = 0;
LABEL_476:

  v348 = *MEMORY[0x1E69E9840];
  return v40;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriMusicInferenceTrainingDependentSignals *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v54 = a3;
  if (self->_hasIsClientForegroundActiveBundle)
  {
    isClientForegroundActiveBundle = self->_isClientForegroundActiveBundle;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCompoundActiveBundleScore)
  {
    compoundActiveBundleScore = self->_compoundActiveBundleScore;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasCompoundMediaTypeBundleScore)
  {
    compoundMediaTypeBundleScore = self->_compoundMediaTypeBundleScore;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasEntitySearchBundleRecencyS)
  {
    entitySearchBundleRecencyS = self->_entitySearchBundleRecencyS;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasEntitySearchBundleScore)
  {
    entitySearchBundleScore = self->_entitySearchBundleScore;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasIsForegroundBundle)
  {
    isForegroundBundle = self->_isForegroundBundle;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsNowPlayingBundle)
  {
    isNowPlayingBundle = self->_isNowPlayingBundle;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasNowPlayingBundleCount)
  {
    nowPlayingBundleCount = self->_nowPlayingBundleCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNowPlayingBundleRecencyS)
  {
    nowPlayingBundleRecencyS = self->_nowPlayingBundleRecencyS;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasNowPlayingBundleScore)
  {
    nowPlayingBundleScore = self->_nowPlayingBundleScore;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasIsNowPlayingLastBundle)
  {
    isNowPlayingLastBundle = self->_isNowPlayingLastBundle;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasNowPlayingUsage1Day)
  {
    nowPlayingUsage1Day = self->_nowPlayingUsage1Day;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNowPlayingUsage7Days)
  {
    nowPlayingUsage7Days = self->_nowPlayingUsage7Days;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNowPlayingUsage14Days)
  {
    nowPlayingUsage14Days = self->_nowPlayingUsage14Days;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasIsRawLastNowPlayingCoreDuet)
  {
    isRawLastNowPlayingCoreDuet = self->_isRawLastNowPlayingCoreDuet;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRawMediaCategoryAudiobookSignal)
  {
    isRawMediaCategoryAudiobookSignal = self->_isRawMediaCategoryAudiobookSignal;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRawMediaCategoryMusicSignal)
  {
    isRawMediaCategoryMusicSignal = self->_isRawMediaCategoryMusicSignal;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRawMediaCategoryPodcastSignal)
  {
    isRawMediaCategoryPodcastSignal = self->_isRawMediaCategoryPodcastSignal;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRawMediaCategoryRadioSignal)
  {
    isRawMediaCategoryRadioSignal = self->_isRawMediaCategoryRadioSignal;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRawMediaCategoryVideoSignal)
  {
    isRawMediaCategoryVideoSignal = self->_isRawMediaCategoryVideoSignal;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRawMediaTypeUsageSignalBook)
  {
    rawMediaTypeUsageSignalBook = self->_rawMediaTypeUsageSignalBook;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawMediaTypeUsageSignalMusic)
  {
    rawMediaTypeUsageSignalMusic = self->_rawMediaTypeUsageSignalMusic;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawMediaTypeUsageSignalPodcast)
  {
    rawMediaTypeUsageSignalPodcast = self->_rawMediaTypeUsageSignalPodcast;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawMediaTypeUsageSignalVideo)
  {
    rawMediaTypeUsageSignalVideo = self->_rawMediaTypeUsageSignalVideo;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawNowPlayingCountCoreDuet10Min)
  {
    rawNowPlayingCountCoreDuet10Min = self->_rawNowPlayingCountCoreDuet10Min;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawNowPlayingCountCoreDuet1Day)
  {
    rawNowPlayingCountCoreDuet1Day = self->_rawNowPlayingCountCoreDuet1Day;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawNowPlayingCountCoreDuet1Hr)
  {
    rawNowPlayingCountCoreDuet1Hr = self->_rawNowPlayingCountCoreDuet1Hr;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawNowPlayingCountCoreDuet28Day)
  {
    rawNowPlayingCountCoreDuet28Day = self->_rawNowPlayingCountCoreDuet28Day;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawNowPlayingCountCoreDuet2Min)
  {
    rawNowPlayingCountCoreDuet2Min = self->_rawNowPlayingCountCoreDuet2Min;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawNowPlayingCountCoreDuet6Hr)
  {
    rawNowPlayingCountCoreDuet6Hr = self->_rawNowPlayingCountCoreDuet6Hr;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawNowPlayingCountCoreDuet7Day)
  {
    rawNowPlayingCountCoreDuet7Day = self->_rawNowPlayingCountCoreDuet7Day;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawNowPlayingRecencyCD)
  {
    rawNowPlayingRecencyCD = self->_rawNowPlayingRecencyCD;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawEntitySearchRecency)
  {
    rawEntitySearchRecency = self->_rawEntitySearchRecency;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasUsageScoreBooks)
  {
    usageScoreBooks = self->_usageScoreBooks;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasUsageScoreMusic)
  {
    usageScoreMusic = self->_usageScoreMusic;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasUsageScorePodcasts)
  {
    usageScorePodcasts = self->_usageScorePodcasts;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasIsAppFirstParty)
  {
    isAppFirstParty = self->_isAppFirstParty;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRequestedApp)
  {
    isRequestedApp = self->_isRequestedApp;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsNowPlayingBundlePSE1)
  {
    isNowPlayingBundlePSE1 = self->_isNowPlayingBundlePSE1;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsNowPlayingBundlePSE2)
  {
    isNowPlayingBundlePSE2 = self->_isNowPlayingBundlePSE2;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasVq21Score)
  {
    vq21Score = self->_vq21Score;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasIsSupportedFlag)
  {
    isSupportedFlag = self->_isSupportedFlag;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsUnicornFlag)
  {
    isUnicornFlag = self->_isUnicornFlag;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsSupportedUnicornMatchFlag)
  {
    isSupportedUnicornMatchFlag = self->_isSupportedUnicornMatchFlag;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsDisambiguationSelectedApp)
  {
    isDisambiguationSelectedApp = self->_isDisambiguationSelectedApp;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsModelPredictedApp)
  {
    isModelPredictedApp = self->_isModelPredictedApp;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasUsageScoreRadio)
  {
    usageScoreRadio = self->_usageScoreRadio;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasUsageScoreMusicWithoutRadio)
  {
    usageScoreMusicWithoutRadio = self->_usageScoreMusicWithoutRadio;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRawMediaTypeUsageSignalRadio)
  {
    rawMediaTypeUsageSignalRadio = self->_rawMediaTypeUsageSignalRadio;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawMediaTypeUsageSignalMusicWithoutRadio)
  {
    rawMediaTypeUsageSignalMusicWithoutRadio = self->_rawMediaTypeUsageSignalMusicWithoutRadio;
    PBDataWriterWriteInt32Field();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BMSiriMusicInferenceTrainingDependentSignals;
  v5 = [(BMEventBase *)&v9 init];
  v6 = v5;
  if (v5 && !BMSiriMusicInferenceTrainingDependentSignalsReadFrom(v5, v4))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (NSString)description
{
  v30 = objc_alloc(MEMORY[0x1E696AEC0]);
  v64 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isClientForegroundActiveBundle](self, "isClientForegroundActiveBundle")}];
  v3 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self compoundActiveBundleScore];
  v67 = [v3 numberWithDouble:?];
  v4 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self compoundMediaTypeBundleScore];
  v66 = [v4 numberWithDouble:?];
  v5 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self entitySearchBundleRecencyS];
  v65 = [v5 numberWithDouble:?];
  v6 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self entitySearchBundleScore];
  v61 = [v6 numberWithDouble:?];
  v63 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isForegroundBundle](self, "isForegroundBundle")}];
  v62 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isNowPlayingBundle](self, "isNowPlayingBundle")}];
  v60 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals nowPlayingBundleCount](self, "nowPlayingBundleCount")}];
  v7 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleRecencyS];
  v57 = [v7 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleScore];
  v59 = [v8 numberWithDouble:?];
  v56 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isNowPlayingLastBundle](self, "isNowPlayingLastBundle")}];
  v58 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals nowPlayingUsage1Day](self, "nowPlayingUsage1Day")}];
  v53 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals nowPlayingUsage7Days](self, "nowPlayingUsage7Days")}];
  v55 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals nowPlayingUsage14Days](self, "nowPlayingUsage14Days")}];
  v52 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawLastNowPlayingCoreDuet](self, "isRawLastNowPlayingCoreDuet")}];
  v50 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawMediaCategoryAudiobookSignal](self, "isRawMediaCategoryAudiobookSignal")}];
  v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawMediaCategoryMusicSignal](self, "isRawMediaCategoryMusicSignal")}];
  v51 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawMediaCategoryPodcastSignal](self, "isRawMediaCategoryPodcastSignal")}];
  v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawMediaCategoryRadioSignal](self, "isRawMediaCategoryRadioSignal")}];
  v49 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawMediaCategoryVideoSignal](self, "isRawMediaCategoryVideoSignal")}];
  v46 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalBook](self, "rawMediaTypeUsageSignalBook")}];
  v44 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalMusic](self, "rawMediaTypeUsageSignalMusic")}];
  v48 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalPodcast](self, "rawMediaTypeUsageSignalPodcast")}];
  v43 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalVideo](self, "rawMediaTypeUsageSignalVideo")}];
  v45 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet10Min](self, "rawNowPlayingCountCoreDuet10Min")}];
  v42 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet1Day](self, "rawNowPlayingCountCoreDuet1Day")}];
  v40 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet1Hr](self, "rawNowPlayingCountCoreDuet1Hr")}];
  v41 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet28Day](self, "rawNowPlayingCountCoreDuet28Day")}];
  v38 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet2Min](self, "rawNowPlayingCountCoreDuet2Min")}];
  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet6Hr](self, "rawNowPlayingCountCoreDuet6Hr")}];
  v39 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet7Day](self, "rawNowPlayingCountCoreDuet7Day")}];
  v28 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingRecencyCD](self, "rawNowPlayingRecencyCD")}];
  v37 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawEntitySearchRecency](self, "rawEntitySearchRecency")}];
  v9 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreBooks];
  v36 = [v9 numberWithDouble:?];
  v10 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreMusic];
  v35 = [v10 numberWithDouble:?];
  v11 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScorePodcasts];
  v27 = [v11 numberWithDouble:?];
  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isAppFirstParty](self, "isAppFirstParty")}];
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRequestedApp](self, "isRequestedApp")}];
  v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isNowPlayingBundlePSE1](self, "isNowPlayingBundlePSE1")}];
  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isNowPlayingBundlePSE2](self, "isNowPlayingBundlePSE2")}];
  v12 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self vq21Score];
  v24 = [v12 numberWithDouble:?];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isSupportedFlag](self, "isSupportedFlag")}];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isUnicornFlag](self, "isUnicornFlag")}];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isSupportedUnicornMatchFlag](self, "isSupportedUnicornMatchFlag")}];
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isDisambiguationSelectedApp](self, "isDisambiguationSelectedApp")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isModelPredictedApp](self, "isModelPredictedApp")}];
  v14 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreRadio];
  v15 = [v14 numberWithDouble:?];
  v16 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreMusicWithoutRadio];
  v17 = [v16 numberWithDouble:?];
  v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalRadio](self, "rawMediaTypeUsageSignalRadio")}];
  v19 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalMusicWithoutRadio](self, "rawMediaTypeUsageSignalMusicWithoutRadio")}];
  v31 = [v30 initWithFormat:@"BMSiriMusicInferenceTrainingDependentSignals with isClientForegroundActiveBundle: %@, compoundActiveBundleScore: %@, compoundMediaTypeBundleScore: %@, entitySearchBundleRecencyS: %@, entitySearchBundleScore: %@, isForegroundBundle: %@, isNowPlayingBundle: %@, nowPlayingBundleCount: %@, nowPlayingBundleRecencyS: %@, nowPlayingBundleScore: %@, isNowPlayingLastBundle: %@, nowPlayingUsage1Day: %@, nowPlayingUsage7Days: %@, nowPlayingUsage14Days: %@, isRawLastNowPlayingCoreDuet: %@, isRawMediaCategoryAudiobookSignal: %@, isRawMediaCategoryMusicSignal: %@, isRawMediaCategoryPodcastSignal: %@, isRawMediaCategoryRadioSignal: %@, isRawMediaCategoryVideoSignal: %@, rawMediaTypeUsageSignalBook: %@, rawMediaTypeUsageSignalMusic: %@, rawMediaTypeUsageSignalPodcast: %@, rawMediaTypeUsageSignalVideo: %@, rawNowPlayingCountCoreDuet10Min: %@, rawNowPlayingCountCoreDuet1Day: %@, rawNowPlayingCountCoreDuet1Hr: %@, rawNowPlayingCountCoreDuet28Day: %@, rawNowPlayingCountCoreDuet2Min: %@, rawNowPlayingCountCoreDuet6Hr: %@, rawNowPlayingCountCoreDuet7Day: %@, rawNowPlayingRecencyCD: %@, rawEntitySearchRecency: %@, usageScoreBooks: %@, usageScoreMusic: %@, usageScorePodcasts: %@, isAppFirstParty: %@, isRequestedApp: %@, isNowPlayingBundlePSE1: %@, isNowPlayingBundlePSE2: %@, vq21Score: %@, isSupportedFlag: %@, isUnicornFlag: %@, isSupportedUnicornMatchFlag: %@, isDisambiguationSelectedApp: %@, isModelPredictedApp: %@, usageScoreRadio: %@, usageScoreMusicWithoutRadio: %@, rawMediaTypeUsageSignalRadio: %@, rawMediaTypeUsageSignalMusicWithoutRadio: %@", v64, v67, v66, v65, v61, v63, v62, v60, v57, v59, v56, v58, v53, v55, v52, v50, v54, v51, v47, v49, v46, v44, v48, v43, v45, v42, v40, v41, v38, v29, v39, v28, v37, v36, v35, v27, v34, v26, v33, v32, v24, v23, v25, v22, v21, v13, v15, v17, v18, v19];

  return v31;
}

- (BMSiriMusicInferenceTrainingDependentSignals)initWithIsClientForegroundActiveBundle:(id)a3 compoundActiveBundleScore:(id)a4 compoundMediaTypeBundleScore:(id)a5 entitySearchBundleRecencyS:(id)a6 entitySearchBundleScore:(id)a7 isForegroundBundle:(id)a8 isNowPlayingBundle:(id)a9 nowPlayingBundleCount:(id)a10 nowPlayingBundleRecencyS:(id)a11 nowPlayingBundleScore:(id)a12 isNowPlayingLastBundle:(id)a13 nowPlayingUsage1Day:(id)a14 nowPlayingUsage7Days:(id)a15 nowPlayingUsage14Days:(id)a16 isRawLastNowPlayingCoreDuet:(id)a17 isRawMediaCategoryAudiobookSignal:(id)a18 isRawMediaCategoryMusicSignal:(id)a19 isRawMediaCategoryPodcastSignal:(id)a20 isRawMediaCategoryRadioSignal:(id)a21 isRawMediaCategoryVideoSignal:(id)a22 rawMediaTypeUsageSignalBook:(id)a23 rawMediaTypeUsageSignalMusic:(id)a24 rawMediaTypeUsageSignalPodcast:(id)a25 rawMediaTypeUsageSignalVideo:(id)a26 rawNowPlayingCountCoreDuet10Min:(id)a27 rawNowPlayingCountCoreDuet1Day:(id)a28 rawNowPlayingCountCoreDuet1Hr:(id)a29 rawNowPlayingCountCoreDuet28Day:(id)a30 rawNowPlayingCountCoreDuet2Min:(id)a31 rawNowPlayingCountCoreDuet6Hr:(id)a32 rawNowPlayingCountCoreDuet7Day:(id)a33 rawNowPlayingRecencyCD:(id)a34 rawEntitySearchRecency:(id)a35 usageScoreBooks:(id)a36 usageScoreMusic:(id)a37 usageScorePodcasts:(id)a38 isAppFirstParty:(id)a39 isRequestedApp:(id)a40 isNowPlayingBundlePSE1:(id)a41 isNowPlayingBundlePSE2:(id)a42 vq21Score:(id)a43 isSupportedFlag:(id)a44 isUnicornFlag:(id)a45 isSupportedUnicornMatchFlag:(id)a46 isDisambiguationSelectedApp:(id)a47 isModelPredictedApp:(id)a48 usageScoreRadio:(id)a49 usageScoreMusicWithoutRadio:(id)a50 rawMediaTypeUsageSignalRadio:(id)a51 rawMediaTypeUsageSignalMusicWithoutRadio:(id)a52
{
  v141 = a3;
  v140 = a4;
  v139 = a5;
  v138 = a6;
  v137 = a7;
  v136 = a8;
  v134 = a9;
  v56 = a10;
  v133 = a11;
  v132 = a12;
  v131 = a13;
  v130 = a14;
  v129 = a15;
  v128 = a16;
  v127 = a17;
  v126 = a18;
  v125 = a19;
  v124 = a20;
  v123 = a21;
  v122 = a22;
  v121 = a23;
  v120 = a24;
  v119 = a25;
  v118 = a26;
  v117 = a27;
  v116 = a28;
  v115 = a29;
  v114 = a30;
  v113 = a31;
  v112 = a32;
  v111 = a33;
  v110 = a34;
  v109 = a35;
  v108 = a36;
  v107 = a37;
  v106 = a38;
  v105 = a39;
  v104 = a40;
  v103 = a41;
  v102 = a42;
  v101 = a43;
  v100 = a44;
  v57 = a45;
  v58 = a46;
  v59 = a47;
  v60 = a48;
  v61 = a49;
  v62 = a50;
  v63 = a51;
  v64 = a52;
  v142.receiver = self;
  v142.super_class = BMSiriMusicInferenceTrainingDependentSignals;
  v65 = [(BMEventBase *)&v142 init];

  if (v65)
  {
    v65->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v141)
    {
      v65->_hasIsClientForegroundActiveBundle = 1;
      v65->_isClientForegroundActiveBundle = [v141 BOOLValue];
    }

    else
    {
      v65->_hasIsClientForegroundActiveBundle = 0;
      v65->_isClientForegroundActiveBundle = 0;
    }

    if (v140)
    {
      v65->_hasCompoundActiveBundleScore = 1;
      [v140 doubleValue];
    }

    else
    {
      v65->_hasCompoundActiveBundleScore = 0;
      v66 = -1.0;
    }

    v65->_compoundActiveBundleScore = v66;
    if (v139)
    {
      v65->_hasCompoundMediaTypeBundleScore = 1;
      [v139 doubleValue];
    }

    else
    {
      v65->_hasCompoundMediaTypeBundleScore = 0;
      v67 = -1.0;
    }

    v65->_compoundMediaTypeBundleScore = v67;
    if (v138)
    {
      v65->_hasEntitySearchBundleRecencyS = 1;
      [v138 doubleValue];
    }

    else
    {
      v65->_hasEntitySearchBundleRecencyS = 0;
      v68 = -1.0;
    }

    v65->_entitySearchBundleRecencyS = v68;
    if (v137)
    {
      v65->_hasEntitySearchBundleScore = 1;
      [v137 doubleValue];
    }

    else
    {
      v65->_hasEntitySearchBundleScore = 0;
      v69 = -1.0;
    }

    v65->_entitySearchBundleScore = v69;
    if (v136)
    {
      v65->_hasIsForegroundBundle = 1;
      v65->_isForegroundBundle = [v136 BOOLValue];
    }

    else
    {
      v65->_hasIsForegroundBundle = 0;
      v65->_isForegroundBundle = 0;
    }

    if (v134)
    {
      v65->_hasIsNowPlayingBundle = 1;
      v65->_isNowPlayingBundle = [v134 BOOLValue];
    }

    else
    {
      v65->_hasIsNowPlayingBundle = 0;
      v65->_isNowPlayingBundle = 0;
    }

    if (v56)
    {
      v65->_hasNowPlayingBundleCount = 1;
      v70 = [v56 intValue];
    }

    else
    {
      v65->_hasNowPlayingBundleCount = 0;
      v70 = -1;
    }

    v65->_nowPlayingBundleCount = v70;
    if (v133)
    {
      v65->_hasNowPlayingBundleRecencyS = 1;
      [v133 doubleValue];
    }

    else
    {
      v65->_hasNowPlayingBundleRecencyS = 0;
      v71 = -1.0;
    }

    v65->_nowPlayingBundleRecencyS = v71;
    if (v132)
    {
      v65->_hasNowPlayingBundleScore = 1;
      [v132 doubleValue];
    }

    else
    {
      v65->_hasNowPlayingBundleScore = 0;
      v72 = -1.0;
    }

    v65->_nowPlayingBundleScore = v72;
    if (v131)
    {
      v65->_hasIsNowPlayingLastBundle = 1;
      v65->_isNowPlayingLastBundle = [v131 BOOLValue];
    }

    else
    {
      v65->_hasIsNowPlayingLastBundle = 0;
      v65->_isNowPlayingLastBundle = 0;
    }

    if (v130)
    {
      v65->_hasNowPlayingUsage1Day = 1;
      v73 = [v130 intValue];
    }

    else
    {
      v65->_hasNowPlayingUsage1Day = 0;
      v73 = -1;
    }

    v65->_nowPlayingUsage1Day = v73;
    if (v129)
    {
      v65->_hasNowPlayingUsage7Days = 1;
      v74 = [v129 intValue];
    }

    else
    {
      v65->_hasNowPlayingUsage7Days = 0;
      v74 = -1;
    }

    v65->_nowPlayingUsage7Days = v74;
    if (v128)
    {
      v65->_hasNowPlayingUsage14Days = 1;
      v75 = [v128 intValue];
    }

    else
    {
      v65->_hasNowPlayingUsage14Days = 0;
      v75 = -1;
    }

    v65->_nowPlayingUsage14Days = v75;
    if (v127)
    {
      v65->_hasIsRawLastNowPlayingCoreDuet = 1;
      v65->_isRawLastNowPlayingCoreDuet = [v127 BOOLValue];
    }

    else
    {
      v65->_hasIsRawLastNowPlayingCoreDuet = 0;
      v65->_isRawLastNowPlayingCoreDuet = 0;
    }

    if (v126)
    {
      v65->_hasIsRawMediaCategoryAudiobookSignal = 1;
      v65->_isRawMediaCategoryAudiobookSignal = [v126 BOOLValue];
    }

    else
    {
      v65->_hasIsRawMediaCategoryAudiobookSignal = 0;
      v65->_isRawMediaCategoryAudiobookSignal = 0;
    }

    if (v125)
    {
      v65->_hasIsRawMediaCategoryMusicSignal = 1;
      v65->_isRawMediaCategoryMusicSignal = [v125 BOOLValue];
    }

    else
    {
      v65->_hasIsRawMediaCategoryMusicSignal = 0;
      v65->_isRawMediaCategoryMusicSignal = 0;
    }

    if (v124)
    {
      v65->_hasIsRawMediaCategoryPodcastSignal = 1;
      v65->_isRawMediaCategoryPodcastSignal = [v124 BOOLValue];
    }

    else
    {
      v65->_hasIsRawMediaCategoryPodcastSignal = 0;
      v65->_isRawMediaCategoryPodcastSignal = 0;
    }

    if (v123)
    {
      v65->_hasIsRawMediaCategoryRadioSignal = 1;
      v65->_isRawMediaCategoryRadioSignal = [v123 BOOLValue];
    }

    else
    {
      v65->_hasIsRawMediaCategoryRadioSignal = 0;
      v65->_isRawMediaCategoryRadioSignal = 0;
    }

    if (v122)
    {
      v65->_hasIsRawMediaCategoryVideoSignal = 1;
      v65->_isRawMediaCategoryVideoSignal = [v122 BOOLValue];
    }

    else
    {
      v65->_hasIsRawMediaCategoryVideoSignal = 0;
      v65->_isRawMediaCategoryVideoSignal = 0;
    }

    if (v121)
    {
      v65->_hasRawMediaTypeUsageSignalBook = 1;
      v76 = [v121 intValue];
    }

    else
    {
      v65->_hasRawMediaTypeUsageSignalBook = 0;
      v76 = -1;
    }

    v65->_rawMediaTypeUsageSignalBook = v76;
    if (v120)
    {
      v65->_hasRawMediaTypeUsageSignalMusic = 1;
      v77 = [v120 intValue];
    }

    else
    {
      v65->_hasRawMediaTypeUsageSignalMusic = 0;
      v77 = -1;
    }

    v65->_rawMediaTypeUsageSignalMusic = v77;
    if (v119)
    {
      v65->_hasRawMediaTypeUsageSignalPodcast = 1;
      v78 = [v119 intValue];
    }

    else
    {
      v65->_hasRawMediaTypeUsageSignalPodcast = 0;
      v78 = -1;
    }

    v65->_rawMediaTypeUsageSignalPodcast = v78;
    if (v118)
    {
      v65->_hasRawMediaTypeUsageSignalVideo = 1;
      v79 = [v118 intValue];
    }

    else
    {
      v65->_hasRawMediaTypeUsageSignalVideo = 0;
      v79 = -1;
    }

    v65->_rawMediaTypeUsageSignalVideo = v79;
    if (v117)
    {
      v65->_hasRawNowPlayingCountCoreDuet10Min = 1;
      v80 = [v117 intValue];
    }

    else
    {
      v65->_hasRawNowPlayingCountCoreDuet10Min = 0;
      v80 = -1;
    }

    v65->_rawNowPlayingCountCoreDuet10Min = v80;
    if (v116)
    {
      v65->_hasRawNowPlayingCountCoreDuet1Day = 1;
      v81 = [v116 intValue];
    }

    else
    {
      v65->_hasRawNowPlayingCountCoreDuet1Day = 0;
      v81 = -1;
    }

    v65->_rawNowPlayingCountCoreDuet1Day = v81;
    if (v115)
    {
      v65->_hasRawNowPlayingCountCoreDuet1Hr = 1;
      v82 = [v115 intValue];
    }

    else
    {
      v65->_hasRawNowPlayingCountCoreDuet1Hr = 0;
      v82 = -1;
    }

    v65->_rawNowPlayingCountCoreDuet1Hr = v82;
    if (v114)
    {
      v65->_hasRawNowPlayingCountCoreDuet28Day = 1;
      v83 = [v114 intValue];
    }

    else
    {
      v65->_hasRawNowPlayingCountCoreDuet28Day = 0;
      v83 = -1;
    }

    v65->_rawNowPlayingCountCoreDuet28Day = v83;
    if (v113)
    {
      v65->_hasRawNowPlayingCountCoreDuet2Min = 1;
      v84 = [v113 intValue];
    }

    else
    {
      v65->_hasRawNowPlayingCountCoreDuet2Min = 0;
      v84 = -1;
    }

    v65->_rawNowPlayingCountCoreDuet2Min = v84;
    if (v112)
    {
      v65->_hasRawNowPlayingCountCoreDuet6Hr = 1;
      v85 = [v112 intValue];
    }

    else
    {
      v65->_hasRawNowPlayingCountCoreDuet6Hr = 0;
      v85 = -1;
    }

    v65->_rawNowPlayingCountCoreDuet6Hr = v85;
    if (v111)
    {
      v65->_hasRawNowPlayingCountCoreDuet7Day = 1;
      v86 = [v111 intValue];
    }

    else
    {
      v65->_hasRawNowPlayingCountCoreDuet7Day = 0;
      v86 = -1;
    }

    v65->_rawNowPlayingCountCoreDuet7Day = v86;
    if (v110)
    {
      v65->_hasRawNowPlayingRecencyCD = 1;
      v87 = [v110 intValue];
    }

    else
    {
      v65->_hasRawNowPlayingRecencyCD = 0;
      v87 = -1;
    }

    v65->_rawNowPlayingRecencyCD = v87;
    if (v109)
    {
      v65->_hasRawEntitySearchRecency = 1;
      v88 = [v109 intValue];
    }

    else
    {
      v65->_hasRawEntitySearchRecency = 0;
      v88 = -1;
    }

    v65->_rawEntitySearchRecency = v88;
    if (v108)
    {
      v65->_hasUsageScoreBooks = 1;
      [v108 doubleValue];
    }

    else
    {
      v65->_hasUsageScoreBooks = 0;
      v89 = -1.0;
    }

    v65->_usageScoreBooks = v89;
    if (v107)
    {
      v65->_hasUsageScoreMusic = 1;
      [v107 doubleValue];
    }

    else
    {
      v65->_hasUsageScoreMusic = 0;
      v90 = -1.0;
    }

    v65->_usageScoreMusic = v90;
    if (v106)
    {
      v65->_hasUsageScorePodcasts = 1;
      [v106 doubleValue];
    }

    else
    {
      v65->_hasUsageScorePodcasts = 0;
      v91 = -1.0;
    }

    v65->_usageScorePodcasts = v91;
    if (v105)
    {
      v65->_hasIsAppFirstParty = 1;
      v65->_isAppFirstParty = [v105 BOOLValue];
    }

    else
    {
      v65->_hasIsAppFirstParty = 0;
      v65->_isAppFirstParty = 0;
    }

    if (v104)
    {
      v65->_hasIsRequestedApp = 1;
      v65->_isRequestedApp = [v104 BOOLValue];
    }

    else
    {
      v65->_hasIsRequestedApp = 0;
      v65->_isRequestedApp = 0;
    }

    if (v103)
    {
      v65->_hasIsNowPlayingBundlePSE1 = 1;
      v65->_isNowPlayingBundlePSE1 = [v103 BOOLValue];
    }

    else
    {
      v65->_hasIsNowPlayingBundlePSE1 = 0;
      v65->_isNowPlayingBundlePSE1 = 0;
    }

    if (v102)
    {
      v65->_hasIsNowPlayingBundlePSE2 = 1;
      v65->_isNowPlayingBundlePSE2 = [v102 BOOLValue];
    }

    else
    {
      v65->_hasIsNowPlayingBundlePSE2 = 0;
      v65->_isNowPlayingBundlePSE2 = 0;
    }

    if (v101)
    {
      v65->_hasVq21Score = 1;
      [v101 doubleValue];
    }

    else
    {
      v65->_hasVq21Score = 0;
      v92 = -1.0;
    }

    v65->_vq21Score = v92;
    if (v100)
    {
      v65->_hasIsSupportedFlag = 1;
      v65->_isSupportedFlag = [v100 BOOLValue];
    }

    else
    {
      v65->_hasIsSupportedFlag = 0;
      v65->_isSupportedFlag = 0;
    }

    if (v57)
    {
      v65->_hasIsUnicornFlag = 1;
      v65->_isUnicornFlag = [v57 BOOLValue];
    }

    else
    {
      v65->_hasIsUnicornFlag = 0;
      v65->_isUnicornFlag = 0;
    }

    if (v58)
    {
      v65->_hasIsSupportedUnicornMatchFlag = 1;
      v65->_isSupportedUnicornMatchFlag = [v58 BOOLValue];
    }

    else
    {
      v65->_hasIsSupportedUnicornMatchFlag = 0;
      v65->_isSupportedUnicornMatchFlag = 0;
    }

    if (v59)
    {
      v65->_hasIsDisambiguationSelectedApp = 1;
      v65->_isDisambiguationSelectedApp = [v59 BOOLValue];
    }

    else
    {
      v65->_hasIsDisambiguationSelectedApp = 0;
      v65->_isDisambiguationSelectedApp = 0;
    }

    if (v60)
    {
      v65->_hasIsModelPredictedApp = 1;
      v65->_isModelPredictedApp = [v60 BOOLValue];
    }

    else
    {
      v65->_hasIsModelPredictedApp = 0;
      v65->_isModelPredictedApp = 0;
    }

    if (v61)
    {
      v65->_hasUsageScoreRadio = 1;
      [v61 doubleValue];
    }

    else
    {
      v65->_hasUsageScoreRadio = 0;
      v93 = -1.0;
    }

    v65->_usageScoreRadio = v93;
    if (v62)
    {
      v65->_hasUsageScoreMusicWithoutRadio = 1;
      [v62 doubleValue];
    }

    else
    {
      v65->_hasUsageScoreMusicWithoutRadio = 0;
      v94 = -1.0;
    }

    v65->_usageScoreMusicWithoutRadio = v94;
    if (v63)
    {
      v65->_hasRawMediaTypeUsageSignalRadio = 1;
      v95 = [v63 intValue];
    }

    else
    {
      v65->_hasRawMediaTypeUsageSignalRadio = 0;
      v95 = -1;
    }

    v65->_rawMediaTypeUsageSignalRadio = v95;
    if (v64)
    {
      v65->_hasRawMediaTypeUsageSignalMusicWithoutRadio = 1;
      v96 = [v64 intValue];
    }

    else
    {
      v65->_hasRawMediaTypeUsageSignalMusicWithoutRadio = 0;
      v96 = -1;
    }

    v65->_rawMediaTypeUsageSignalMusicWithoutRadio = v96;
  }

  v97 = v65;

  return v97;
}

+ (id)protoFields
{
  v55[50] = *MEMORY[0x1E69E9840];
  v54 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isClientForegroundActiveBundle" number:1 type:12 subMessageClass:0];
  v55[0] = v54;
  v53 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"compoundActiveBundleScore" number:2 type:0 subMessageClass:0];
  v55[1] = v53;
  v52 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"compoundMediaTypeBundleScore" number:3 type:0 subMessageClass:0];
  v55[2] = v52;
  v51 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"entitySearchBundleRecencyS" number:4 type:0 subMessageClass:0];
  v55[3] = v51;
  v50 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"entitySearchBundleScore" number:5 type:0 subMessageClass:0];
  v55[4] = v50;
  v49 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isForegroundBundle" number:6 type:12 subMessageClass:0];
  v55[5] = v49;
  v48 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isNowPlayingBundle" number:7 type:12 subMessageClass:0];
  v55[6] = v48;
  v47 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nowPlayingBundleCount" number:8 type:2 subMessageClass:0];
  v55[7] = v47;
  v46 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nowPlayingBundleRecencyS" number:9 type:0 subMessageClass:0];
  v55[8] = v46;
  v45 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nowPlayingBundleScore" number:10 type:0 subMessageClass:0];
  v55[9] = v45;
  v44 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isNowPlayingLastBundle" number:11 type:12 subMessageClass:0];
  v55[10] = v44;
  v43 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nowPlayingUsage1Day" number:12 type:2 subMessageClass:0];
  v55[11] = v43;
  v42 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nowPlayingUsage7Days" number:13 type:2 subMessageClass:0];
  v55[12] = v42;
  v41 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nowPlayingUsage14Days" number:14 type:2 subMessageClass:0];
  v55[13] = v41;
  v40 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRawLastNowPlayingCoreDuet" number:15 type:12 subMessageClass:0];
  v55[14] = v40;
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRawMediaCategoryAudiobookSignal" number:16 type:12 subMessageClass:0];
  v55[15] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRawMediaCategoryMusicSignal" number:17 type:12 subMessageClass:0];
  v55[16] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRawMediaCategoryPodcastSignal" number:18 type:12 subMessageClass:0];
  v55[17] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRawMediaCategoryRadioSignal" number:19 type:12 subMessageClass:0];
  v55[18] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRawMediaCategoryVideoSignal" number:20 type:12 subMessageClass:0];
  v55[19] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawMediaTypeUsageSignalBook" number:21 type:2 subMessageClass:0];
  v55[20] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawMediaTypeUsageSignalMusic" number:22 type:2 subMessageClass:0];
  v55[21] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawMediaTypeUsageSignalPodcast" number:23 type:2 subMessageClass:0];
  v55[22] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawMediaTypeUsageSignalVideo" number:24 type:2 subMessageClass:0];
  v55[23] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawNowPlayingCountCoreDuet10Min" number:25 type:2 subMessageClass:0];
  v55[24] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawNowPlayingCountCoreDuet1Day" number:26 type:2 subMessageClass:0];
  v55[25] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawNowPlayingCountCoreDuet1Hr" number:27 type:2 subMessageClass:0];
  v55[26] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawNowPlayingCountCoreDuet28Day" number:28 type:2 subMessageClass:0];
  v55[27] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawNowPlayingCountCoreDuet2Min" number:29 type:2 subMessageClass:0];
  v55[28] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawNowPlayingCountCoreDuet6Hr" number:30 type:2 subMessageClass:0];
  v55[29] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawNowPlayingCountCoreDuet7Day" number:31 type:2 subMessageClass:0];
  v55[30] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawNowPlayingRecencyCD" number:32 type:2 subMessageClass:0];
  v55[31] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawEntitySearchRecency" number:33 type:2 subMessageClass:0];
  v55[32] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usageScoreBooks" number:34 type:0 subMessageClass:0];
  v55[33] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usageScoreMusic" number:35 type:0 subMessageClass:0];
  v55[34] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usageScorePodcasts" number:36 type:0 subMessageClass:0];
  v55[35] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAppFirstParty" number:37 type:12 subMessageClass:0];
  v55[36] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRequestedApp" number:38 type:12 subMessageClass:0];
  v55[37] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isNowPlayingBundlePSE1" number:39 type:12 subMessageClass:0];
  v55[38] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isNowPlayingBundlePSE2" number:40 type:12 subMessageClass:0];
  v55[39] = v15;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"vq21Score" number:41 type:0 subMessageClass:0];
  v55[40] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSupportedFlag" number:42 type:12 subMessageClass:0];
  v55[41] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isUnicornFlag" number:43 type:12 subMessageClass:0];
  v55[42] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSupportedUnicornMatchFlag" number:44 type:12 subMessageClass:0];
  v55[43] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isDisambiguationSelectedApp" number:45 type:12 subMessageClass:0];
  v55[44] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isModelPredictedApp" number:46 type:12 subMessageClass:0];
  v55[45] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usageScoreRadio" number:47 type:0 subMessageClass:0];
  v55[46] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usageScoreMusicWithoutRadio" number:48 type:0 subMessageClass:0];
  v55[47] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawMediaTypeUsageSignalRadio" number:49 type:2 subMessageClass:0];
  v55[48] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawMediaTypeUsageSignalMusicWithoutRadio" number:50 type:2 subMessageClass:0];
  v55[49] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:50];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)columns
{
  v55[50] = *MEMORY[0x1E69E9840];
  v53 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isClientForegroundActiveBundle" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v54 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"compoundActiveBundleScore" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v52 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"compoundMediaTypeBundleScore" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v51 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"entitySearchBundleRecencyS" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v50 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"entitySearchBundleScore" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v49 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isForegroundBundle" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v48 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isNowPlayingBundle" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v47 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nowPlayingBundleCount" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v46 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nowPlayingBundleRecencyS" dataType:1 requestOnly:0 fieldNumber:9 protoDataType:0 convertedType:0];
  v45 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nowPlayingBundleScore" dataType:1 requestOnly:0 fieldNumber:10 protoDataType:0 convertedType:0];
  v44 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isNowPlayingLastBundle" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:12 convertedType:0];
  v43 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nowPlayingUsage1Day" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:2 convertedType:0];
  v42 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nowPlayingUsage7Days" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:2 convertedType:0];
  v41 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nowPlayingUsage14Days" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:2 convertedType:0];
  v40 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRawLastNowPlayingCoreDuet" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:12 convertedType:0];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRawMediaCategoryAudiobookSignal" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:12 convertedType:0];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRawMediaCategoryMusicSignal" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:12 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRawMediaCategoryPodcastSignal" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:12 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRawMediaCategoryRadioSignal" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:12 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRawMediaCategoryVideoSignal" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:12 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawMediaTypeUsageSignalBook" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:2 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawMediaTypeUsageSignalMusic" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:2 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawMediaTypeUsageSignalPodcast" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:2 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawMediaTypeUsageSignalVideo" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:2 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawNowPlayingCountCoreDuet10Min" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:2 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawNowPlayingCountCoreDuet1Day" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:2 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawNowPlayingCountCoreDuet1Hr" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:2 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawNowPlayingCountCoreDuet28Day" dataType:0 requestOnly:0 fieldNumber:28 protoDataType:2 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawNowPlayingCountCoreDuet2Min" dataType:0 requestOnly:0 fieldNumber:29 protoDataType:2 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawNowPlayingCountCoreDuet6Hr" dataType:0 requestOnly:0 fieldNumber:30 protoDataType:2 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawNowPlayingCountCoreDuet7Day" dataType:0 requestOnly:0 fieldNumber:31 protoDataType:2 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawNowPlayingRecencyCD" dataType:0 requestOnly:0 fieldNumber:32 protoDataType:2 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawEntitySearchRecency" dataType:0 requestOnly:0 fieldNumber:33 protoDataType:2 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"usageScoreBooks" dataType:1 requestOnly:0 fieldNumber:34 protoDataType:0 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"usageScoreMusic" dataType:1 requestOnly:0 fieldNumber:35 protoDataType:0 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"usageScorePodcasts" dataType:1 requestOnly:0 fieldNumber:36 protoDataType:0 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAppFirstParty" dataType:0 requestOnly:0 fieldNumber:37 protoDataType:12 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRequestedApp" dataType:0 requestOnly:0 fieldNumber:38 protoDataType:12 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isNowPlayingBundlePSE1" dataType:0 requestOnly:0 fieldNumber:39 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isNowPlayingBundlePSE2" dataType:0 requestOnly:0 fieldNumber:40 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"vq21Score" dataType:1 requestOnly:0 fieldNumber:41 protoDataType:0 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSupportedFlag" dataType:0 requestOnly:0 fieldNumber:42 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isUnicornFlag" dataType:0 requestOnly:0 fieldNumber:43 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSupportedUnicornMatchFlag" dataType:0 requestOnly:0 fieldNumber:44 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isDisambiguationSelectedApp" dataType:0 requestOnly:0 fieldNumber:45 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isModelPredictedApp" dataType:0 requestOnly:0 fieldNumber:46 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"usageScoreRadio" dataType:1 requestOnly:0 fieldNumber:47 protoDataType:0 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"usageScoreMusicWithoutRadio" dataType:1 requestOnly:0 fieldNumber:48 protoDataType:0 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawMediaTypeUsageSignalRadio" dataType:0 requestOnly:0 fieldNumber:49 protoDataType:2 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawMediaTypeUsageSignalMusicWithoutRadio" dataType:0 requestOnly:0 fieldNumber:50 protoDataType:2 convertedType:0];
  v55[0] = v53;
  v55[1] = v54;
  v55[2] = v52;
  v55[3] = v51;
  v55[4] = v50;
  v55[5] = v49;
  v55[6] = v48;
  v55[7] = v47;
  v55[8] = v46;
  v55[9] = v45;
  v55[10] = v44;
  v55[11] = v43;
  v55[12] = v42;
  v55[13] = v41;
  v55[14] = v40;
  v55[15] = v39;
  v55[16] = v38;
  v55[17] = v37;
  v55[18] = v36;
  v55[19] = v35;
  v55[20] = v34;
  v55[21] = v33;
  v55[22] = v32;
  v55[23] = v31;
  v55[24] = v30;
  v55[25] = v29;
  v55[26] = v28;
  v55[27] = v27;
  v55[28] = v26;
  v55[29] = v25;
  v55[30] = v24;
  v55[31] = v23;
  v55[32] = v22;
  v55[33] = v21;
  v55[34] = v20;
  v55[35] = v19;
  v55[36] = v18;
  v55[37] = v17;
  v55[38] = v16;
  v55[39] = v15;
  v55[40] = v2;
  v55[41] = v3;
  v55[42] = v4;
  v55[43] = v5;
  v55[44] = v6;
  v55[45] = v7;
  v55[46] = v8;
  v55[47] = v9;
  v55[48] = v14;
  v55[49] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:50];

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMSiriMusicInferenceTrainingDependentSignals alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[22] = 0;
    }
  }

  return v4;
}

@end