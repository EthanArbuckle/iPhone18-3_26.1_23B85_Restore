@interface JFXComposition
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- ($AC64C642040120CEEAD84DEEACA9A5CE)compositionItemsForState:(SEL)state compositionItem:(id)item backfillCompositionItem:(id *)compositionItem;
- ($AC64C642040120CEEAD84DEEACA9A5CE)timeRangeForClip:(SEL)clip;
- (AVPlayerItem)playerItem;
- (BOOL)JFX_hasEffectThatRequiresCustomRendering;
- (BOOL)JFX_isContigousSplitClip:(id)clip nextClip:(id)nextClip;
- (BOOL)emptySegments:(id)segments;
- (BOOL)removeTrackIfEmpty:(id)empty;
- (BOOL)validate;
- (CGAffineTransform)clipTransform:(SEL)transform;
- (CGSize)previousRenderSize;
- (CGSize)viewSize;
- (JFXComposition)initWithClipsDataSource:(id)source;
- (PVColorSpace)compositionOutputColorSpace;
- (PVTransformAnimationInfo)liveCompositionTransform;
- (float)JFX_preferredRenderScale;
- (float)volumeForClip:(id)clip;
- (id)AVComposition;
- (id)animojiCustomRendererPropsForClip:(id)clip currentCustomProperties:(id)properties sharedMediaDataReaderManager:(id)manager;
- (id)buildClipList;
- (id)dissolveGraphNode:(id *)node from:(id)from to:(id)to;
- (id)instructionToHideTrackID:(int)d whileHidingTrackID:(int)iD timeRange:(id *)range requiresCARendering:(BOOL)rendering;
- (id)instructionToShowClip:(id)clip withTrackID:(int)d withTransform:(CGAffineTransform *)transform timeRange:(id *)range requiresCARendering:(BOOL)rendering;
- (id)instructionToShowImageWithClip:(id)clip withTransform:(CGAffineTransform *)transform timeRange:(id *)range requiresCARendering:(BOOL)rendering;
- (id)newInstructionGraphNodeForClip:(id)clip clipTransform:(CGAffineTransform *)transform compositionTrackID:(int)d requiresTweening:(BOOL *)tweening isContainedClip:(BOOL)containedClip;
- (id)updateVideoAndAudioInstructionForState:(id)state previousInstructions:(id)instructions waitingForResource:(BOOL)resource;
- (int)outputFrameRate;
- (void)CFX_updateFaceTrackingPlaybackDelegateForClip:(id)clip sharedMediaDataReaderManager:(id)manager;
- (void)JFX_applyPropertiesForCustomVideoCompositor:(id)compositor;
- (void)JFX_finalizeVideoComposition;
- (void)JFX_setScrubbingModeForPlaybackDelegates:(BOOL)delegates;
- (void)JFX_updateFaceTrackPropertiesForEffectsAtTime:(id *)time;
- (void)JFX_updatePlaybackDelegatesForClip:(id)clip;
- (void)addBackTracksIfRemoved;
- (void)applyExportProperties;
- (void)applyPlayerItemProperties;
- (void)assetUsed:(id)used;
- (void)burnInPlaybackSettings:(id)settings;
- (void)clearPlayerItemProperties;
- (void)dealloc;
- (void)markDirty;
- (void)noteEffectChangeForClip:(id)clip;
- (void)notifyPlaybackDidStopAtTime:(id *)time;
- (void)playerItemDidReachEnd:(id)end;
- (void)rebuildCompositionInstructionsForVideoStillTitleCard:(id)card;
- (void)refreshAVComposition;
- (void)removeEmptyTracks;
- (void)removeTrackFromAudioMix:(int)mix;
- (void)setDuration:(id *)duration;
- (void)setLiveCompositionTransform:(PVTransformAnimationInfo *)transform;
- (void)setRenderScale;
- (void)setViewSize:(CGSize)size;
- (void)update;
- (void)updateRenderSizeIfNeeded;
- (void)validate;
@end

@implementation JFXComposition

- (float)JFX_preferredRenderScale
{
  clipsDataSource = [(JFXComposition *)self clipsDataSource];
  isExporting = [clipsDataSource isExporting];

  jFX_hasEffectThatRequiresCustomRendering = [(JFXComposition *)self JFX_hasEffectThatRequiresCustomRendering];
  v6 = 1.0;
  if ((isExporting & 1) == 0 && !jFX_hasEffectThatRequiresCustomRendering)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v8 = [standardUserDefaults integerForKey:@"VideoScaling"];

    if ((v8 - 1) <= 3)
    {
      v6 = flt_242B5B740[v8 - 1];
    }

    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = [standardUserDefaults2 integerForKey:@"PVVideoCompositingContextProxyModeKey"];

    if (!v10)
    {
      [(JFXComposition *)self viewSize];
      v12 = v11;
      v14 = v13;
      clipsDataSource2 = [(JFXComposition *)self clipsDataSource];
      [clipsDataSource2 imageScale];
      v17 = v12 * v16;
      [(JFXComposition *)self previousRenderSize];
      v19 = v17 / v18;

      clipsDataSource3 = [(JFXComposition *)self clipsDataSource];
      [clipsDataSource3 imageScale];
      v22 = v14 * v21;
      [(JFXComposition *)self previousRenderSize];
      v24 = v22 / v23;

      if (v19 >= v24)
      {
        v19 = v24;
      }

      if (v19 > 1.0)
      {
        clipsDataSource4 = [(JFXComposition *)self clipsDataSource];
        if ([clipsDataSource4 screenCanShow2160P])
        {
          clipsDataSource5 = [(JFXComposition *)self clipsDataSource];
          v27 = [clipsDataSource5 use2160Pcontent:0];

          v28 = fmin(v19, 2.0);
          if (v27)
          {
            v19 = v28;
          }

          else
          {
            v19 = 1.0;
          }
        }

        else
        {

          v19 = 1.0;
        }
      }

      v29 = 0.35;
      if (v19 > 0.35)
      {
        v29 = v19;
      }

      return v29 * v6;
    }
  }

  return v6;
}

- (void)setRenderScale
{
  [(JFXComposition *)self JFX_preferredRenderScale];
  v4 = v3;
  videoComposition = [(JFXComposition *)self videoComposition];
  LODWORD(v5) = v4;
  [videoComposition setRenderScale:v5];
}

- (BOOL)JFX_hasEffectThatRequiresCustomRendering
{
  clipsDataSource = [(JFXComposition *)self clipsDataSource];
  v4 = [clipsDataSource count];

  if (!v4)
  {
    return 0;
  }

  clipsDataSource2 = [(JFXComposition *)self clipsDataSource];
  v6 = [clipsDataSource2 playableElementAtIndex:0];

  LOBYTE(clipsDataSource2) = [v6 hasPlayableEffectOfType:7];
  if (clipsDataSource2)
  {
    return 1;
  }

  v8 = 1;
  do
  {
    v9 = v8;
    if (v4 == v8)
    {
      break;
    }

    clipsDataSource3 = [(JFXComposition *)self clipsDataSource];
    v11 = [clipsDataSource3 playableElementAtIndex:v9];

    LODWORD(clipsDataSource3) = [v11 hasPlayableEffectOfType:7];
    v8 = v9 + 1;
  }

  while (!clipsDataSource3);
  return v9 < v4;
}

- (JFXComposition)initWithClipsDataSource:(id)source
{
  sourceCopy = source;
  v59.receiver = self;
  v59.super_class = JFXComposition;
  v6 = [(JFXComposition *)&v59 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clipsDataSource, source);
    [(JFXComposition *)v7 markDirty];
    v8 = objc_alloc_init(MEMORY[0x277CE6548]);
    [(JFXComposition *)v7 setAvComposition:v8];

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(JFXComposition *)v7 setVideoCompositionInstructions:v9];

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(JFXComposition *)v7 setAudioMixParameters:v10];

    v11 = [JFXCompositionTrackGroup alloc];
    clipsDataSource = [(JFXComposition *)v7 clipsDataSource];
    v13 = -[JFXCompositionTrackGroup initWithLabel:timeScale:](v11, "initWithLabel:timeScale:", @"A", [clipsDataSource timeScale]);
    [(JFXComposition *)v7 setTrackGroupA:v13];

    avComposition = [(JFXComposition *)v7 avComposition];
    v15 = *MEMORY[0x277CE5EA8];
    v16 = [avComposition addMutableTrackWithMediaType:*MEMORY[0x277CE5EA8] preferredTrackID:1];
    trackGroupA = [(JFXComposition *)v7 trackGroupA];
    [trackGroupA setVideoTrack:v16];

    avComposition2 = [(JFXComposition *)v7 avComposition];
    v19 = *MEMORY[0x277CE5E48];
    v20 = [avComposition2 addMutableTrackWithMediaType:*MEMORY[0x277CE5E48] preferredTrackID:2];
    trackGroupA2 = [(JFXComposition *)v7 trackGroupA];
    [trackGroupA2 setAudioTrack:v20];

    avComposition3 = [(JFXComposition *)v7 avComposition];
    trackGroupA3 = [(JFXComposition *)v7 trackGroupA];
    [trackGroupA3 setComposition:avComposition3];

    trackGroupA4 = [(JFXComposition *)v7 trackGroupA];
    *v52 = *MEMORY[0x277CC08F0];
    v51 = *v52;
    *&v52[16] = *(MEMORY[0x277CC08F0] + 16);
    v25 = *&v52[16];
    [trackGroupA4 setFadeOutStart:v52];

    trackGroupA5 = [(JFXComposition *)v7 trackGroupA];
    *v52 = v51;
    *&v52[16] = v25;
    [trackGroupA5 setFadeOutDuration:v52];

    v27 = [JFXCompositionTrackGroup alloc];
    clipsDataSource2 = [(JFXComposition *)v7 clipsDataSource];
    v29 = -[JFXCompositionTrackGroup initWithLabel:timeScale:](v27, "initWithLabel:timeScale:", @"B", [clipsDataSource2 timeScale]);
    [(JFXComposition *)v7 setTrackGroupB:v29];

    avComposition4 = [(JFXComposition *)v7 avComposition];
    v31 = [avComposition4 addMutableTrackWithMediaType:v15 preferredTrackID:3];
    trackGroupB = [(JFXComposition *)v7 trackGroupB];
    [trackGroupB setVideoTrack:v31];

    avComposition5 = [(JFXComposition *)v7 avComposition];
    v34 = [avComposition5 addMutableTrackWithMediaType:v19 preferredTrackID:4];
    trackGroupB2 = [(JFXComposition *)v7 trackGroupB];
    [trackGroupB2 setAudioTrack:v34];

    avComposition6 = [(JFXComposition *)v7 avComposition];
    trackGroupB3 = [(JFXComposition *)v7 trackGroupB];
    [trackGroupB3 setComposition:avComposition6];

    trackGroupB4 = [(JFXComposition *)v7 trackGroupB];
    *v52 = v51;
    *&v52[16] = v25;
    [trackGroupB4 setFadeOutStart:v52];

    trackGroupB5 = [(JFXComposition *)v7 trackGroupB];
    *v52 = v51;
    *&v52[16] = v25;
    [trackGroupB5 setFadeOutDuration:v52];

    v40 = objc_alloc_init(MEMORY[0x277CE6568]);
    [(JFXComposition *)v7 setVideoComposition:v40];

    v41 = objc_alloc_init(MEMORY[0x277CE6538]);
    [(JFXComposition *)v7 setAudioMix:v41];

    LODWORD(v42) = 1.0;
    [(JFXComposition *)v7 setGlobalAudioVolume:v42];
    v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(JFXComposition *)v7 setAssetsUsed:v43];

    videoComposition = [(JFXComposition *)v7 videoComposition];
    clipsDataSource3 = [(JFXComposition *)v7 clipsDataSource];
    CMTimeMake(v52, 1, [clipsDataSource3 timeScale]);
    [videoComposition setFrameDuration:v52];

    v7->_viewSize = *MEMORY[0x277CBF3A8];
    [(JFXComposition *)v7 setPreviousRenderSize:v7->_viewSize.width, v7->_viewSize.height];
    [(JFXComposition *)v7 markDirty];
    [(JFXComposition *)v7 setLiveTransformClip:0];
    PVTransformAnimationInfoIdentity();
    *v52 = v55;
    *&v52[16] = v56;
    v53 = v57;
    v54 = v58;
    [(JFXComposition *)v7 setLiveCompositionTransform:v52];
    v46 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:2];
    clipCustomRendererMap = v7->_clipCustomRendererMap;
    v7->_clipCustomRendererMap = v46;

    v48 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:2];
    clipFaceTrackingPlaybackDelegates = v7->_clipFaceTrackingPlaybackDelegates;
    v7->_clipFaceTrackingPlaybackDelegates = v48;

    v7->_parentCode = -1;
  }

  return v7;
}

- (void)dealloc
{
  [(JFXComposition *)self setAudioMix:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277CE60C0];
  avPlayerItem = [(JFXComposition *)self avPlayerItem];
  [defaultCenter removeObserver:self name:v4 object:avPlayerItem];

  [(JFXComposition *)self setAvPlayerItem:0];
  [(JFXComposition *)self setAssetsUsed:0];
  v6.receiver = self;
  v6.super_class = JFXComposition;
  [(JFXComposition *)&v6 dealloc];
}

- (void)markDirty
{
  if (![(JFXComposition *)self needsUpdate])
  {
    v3 = objc_autoreleasePoolPush();
    [(JFXComposition *)self setNeedsUpdate:1];
    audioMixParameters = [(JFXComposition *)self audioMixParameters];
    [audioMixParameters removeAllObjects];

    videoCompositionInstructions = [(JFXComposition *)self videoCompositionInstructions];
    [videoCompositionInstructions removeAllObjects];

    assetsUsed = [(JFXComposition *)self assetsUsed];
    [assetsUsed removeAllObjects];

    trackGroupA = [(JFXComposition *)self trackGroupA];
    [trackGroupA markDirty];

    trackGroupB = [(JFXComposition *)self trackGroupB];
    [trackGroupB markDirty];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = *MEMORY[0x277CE60C0];
    avPlayerItem = [(JFXComposition *)self avPlayerItem];
    [defaultCenter removeObserver:self name:v10 object:avPlayerItem];

    [(JFXComposition *)self setAvPlayerItem:0];
    clipCustomRendererMap = [(JFXComposition *)self clipCustomRendererMap];
    [clipCustomRendererMap removeAllObjects];

    clipFaceTrackingPlaybackDelegates = [(JFXComposition *)self clipFaceTrackingPlaybackDelegates];
    [clipFaceTrackingPlaybackDelegates removeAllObjects];

    objc_autoreleasePoolPop(v3);
  }
}

- (float)volumeForClip:(id)clip
{
  mediaItem = [clip mediaItem];
  hasAudibleCharacteristic = [mediaItem hasAudibleCharacteristic];

  if (!hasAudibleCharacteristic)
  {
    return 0.0;
  }

  [(JFXComposition *)self globalAudioVolume];
  return result;
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)compositionItemsForState:(SEL)state compositionItem:(id)item backfillCompositionItem:(id *)compositionItem
{
  compositionItemCopy = compositionItem;
  itemCopy = item;
  clip = [itemCopy clip];
  clipsDataSource = [(JFXComposition *)self clipsDataSource];
  v11 = +[JFXCompositionItem compositionItemWithClip:timeScale:](JFXCompositionItem, "compositionItemWithClip:timeScale:", clip, [clipsDataSource timeScale]);

  v12 = [JFXCompositionItem alloc];
  clipsDataSource2 = [(JFXComposition *)self clipsDataSource];
  v14 = -[JFXCompositionItem initWithClip:timeScale:](v12, "initWithClip:timeScale:", clip, [clipsDataSource2 timeScale]);

  isLastClip = [itemCopy isLastClip];
  [(JFXCompositionItem *)v14 setIsFinalClip:isLastClip];
  [v11 setIsFinalClip:isLastClip];
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  memset(&v38, 0, sizeof(v38));
  LODWORD(isLastClip) = [clip duration];
  clipsDataSource3 = [(JFXComposition *)self clipsDataSource];
  DurationCMTimeFromFrameTime(isLastClip, [clipsDataSource3 timeScale], &v38);

  LODWORD(isLastClip) = [clip mediaStartOffset];
  clipsDataSource4 = [(JFXComposition *)self clipsDataSource];
  DurationCMTimeFromFrameTime(isLastClip, [clipsDataSource4 timeScale], &v37.start);
  memset(&v37.duration, 0, sizeof(v37.duration));

  v37.duration = v38;
  lhs = v37;
  [v11 setSourceTimeRange:&lhs];
  v37.duration = v38;
  *&lhs.start.value = *&v37.start.value;
  *&lhs.start.epoch = *&v37.start.epoch;
  *&lhs.duration.timescale = *&v38.timescale;
  [(JFXCompositionItem *)v14 setSourceTimeRange:&lhs];
  if ([itemCopy overlapLeft] > 0 || objc_msgSend(itemCopy, "overlapRight") >= 1)
  {
    memset(&v35, 0, sizeof(v35));
    overlapLeft = [itemCopy overlapLeft];
    clipsDataSource5 = [(JFXComposition *)self clipsDataSource];
    CMTimeFromFrameTime(overlapLeft, [clipsDataSource5 timeScale], &v35);

    memset(&v34, 0, sizeof(v34));
    overlapRight = [itemCopy overlapRight];
    clipsDataSource6 = [(JFXComposition *)self clipsDataSource];
    CMTimeFromFrameTime(overlapRight, [clipsDataSource6 timeScale], &v34);

    memset(&v33, 0, sizeof(v33));
    *&lhs.start.value = *&v37.start.value;
    lhs.start.epoch = v37.start.epoch;
    rhs = v35;
    CMTimeAdd(&v33, &lhs.start, &rhs);
    memset(&rhs, 0, sizeof(rhs));
    lhs.start = v37.duration;
    duration = v35;
    CMTimeSubtract(&rhs, &lhs.start, &duration);
    duration = rhs;
    v30 = v34;
    CMTimeSubtract(&lhs.start, &duration, &v30);
    rhs = lhs.start;
    lhs.start = v33;
    duration = rhs;
    CMTimeRangeMake(&v29, &lhs.start, &duration);
    lhs = v29;
    [(JFXCompositionItem *)v14 setSourceTimeRange:&lhs];
    lhs.start = rhs;
    [(JFXCompositionItem *)v14 setDestinationDuration:&lhs];
  }

  v22 = v11;
  *compositionItemCopy = v11;
  v23 = v14;
  *a6 = v14;
  currentTrackGroup = [itemCopy currentTrackGroup];
  v25 = currentTrackGroup;
  if (currentTrackGroup)
  {
    [currentTrackGroup cursor];
  }

  else
  {
    memset(&lhs, 0, 24);
  }

  *&retstr->var0.var0 = *&lhs.start.value;
  retstr->var0.var3 = lhs.start.epoch;

  retstr->var1 = v38;
  return result;
}

- (id)instructionToHideTrackID:(int)d whileHidingTrackID:(int)iD timeRange:(id *)range requiresCARendering:(BOOL)rendering
{
  renderingCopy = rendering;
  v8 = objc_alloc_init(MEMORY[0x277D416C8]);
  v9 = *&range->var0.var3;
  v11[0] = *&range->var0.var0;
  v11[1] = v9;
  v11[2] = *&range->var1.var1;
  [v8 setTimeRange:v11];
  [v8 setEnablePostProcessing:renderingCopy];

  return v8;
}

- (id)instructionToShowClip:(id)clip withTrackID:(int)d withTransform:(CGAffineTransform *)transform timeRange:(id *)range requiresCARendering:(BOOL)rendering
{
  renderingCopy = rendering;
  v10 = *&d;
  v12 = MEMORY[0x277D416C8];
  clipCopy = clip;
  v14 = objc_alloc_init(v12);
  v22 = 0;
  v15 = *&transform->c;
  v19 = *&transform->a;
  v20 = v15;
  v21 = *&transform->tx;
  v16 = [(JFXComposition *)self newInstructionGraphNodeForClip:clipCopy clipTransform:&v19 compositionTrackID:v10 requiresTweening:&v22 isContainedClip:0];

  [v14 setOutputNode:v16];
  [v14 setContainsTweening:v22];
  [v14 setIsFreezeFrame:0];
  v17 = *&range->var0.var3;
  v19 = *&range->var0.var0;
  v20 = v17;
  v21 = *&range->var1.var1;
  [v14 setTimeRange:&v19];
  [v14 setEnablePostProcessing:renderingCopy];

  return v14;
}

- (id)instructionToShowImageWithClip:(id)clip withTransform:(CGAffineTransform *)transform timeRange:(id *)range requiresCARendering:(BOOL)rendering
{
  renderingCopy = rendering;
  v16 = 0;
  v8 = *&transform->c;
  v13 = *&transform->a;
  v14 = v8;
  v15 = *&transform->tx;
  v9 = [(JFXComposition *)self newInstructionGraphNodeForClip:clip clipTransform:&v13 compositionTrackID:0 requiresTweening:&v16 isContainedClip:0];
  v10 = objc_alloc_init(MEMORY[0x277D416C8]);
  [v10 setOutputNode:v9];
  v11 = *&range->var0.var3;
  v13 = *&range->var0.var0;
  v14 = v11;
  v15 = *&range->var1.var1;
  [v10 setTimeRange:&v13];
  [v10 setEnablePostProcessing:renderingCopy];
  [v10 setContainsTweening:v16];

  return v10;
}

- (id)updateVideoAndAudioInstructionForState:(id)state previousInstructions:(id)instructions waitingForResource:(BOOL)resource
{
  stateCopy = state;
  clip = [stateCopy clip];
  mediaType = [clip mediaType];
  memset(&v44, 0, sizeof(v44));
  clip2 = [stateCopy clip];
  [(JFXComposition *)self clipTransform:clip2];

  switch(mediaType)
  {
    case 9:
      goto LABEL_4;
    case 2:
      if (stateCopy)
      {
        [stateCopy videoCompTimeRange];
      }

      else
      {
        memset(&v43, 0, sizeof(v43));
      }

      clipRequiresCA = [stateCopy clipRequiresCA];
      start = v44;
      v13 = [(JFXComposition *)self instructionToShowImageWithClip:clip withTransform:&start timeRange:&v43 requiresCARendering:clipRequiresCA];
      currentTrackGroup = [stateCopy currentTrackGroup];
      if (stateCopy)
      {
        [stateCopy videoCompTimeRange];
      }

      else
      {
        v31 = 0;
        v30 = 0u;
      }

      *&v43.start.value = v30;
      v43.start.epoch = v31;
      [currentTrackGroup requestVolume:&v43 atTime:0.0];

      alternateTrackGroup = [stateCopy alternateTrackGroup];
      if (stateCopy)
      {
        [stateCopy videoCompTimeRange];
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
      }

      *&v43.start.value = v27;
      v43.start.epoch = v28;
      [alternateTrackGroup requestVolume:&v43 atTime:{0.0, v27, v28, v29}];
      goto LABEL_32;
    case 1:
LABEL_4:
      currentTrackGroup2 = [stateCopy currentTrackGroup];
      actualVideoTrackID = [currentTrackGroup2 actualVideoTrackID];
      if (stateCopy)
      {
        [stateCopy videoCompTimeRange];
      }

      else
      {
        memset(&v43, 0, sizeof(v43));
      }

      clipRequiresCA2 = [stateCopy clipRequiresCA];
      start = v44;
      v13 = [(JFXComposition *)self instructionToShowClip:clip withTrackID:actualVideoTrackID withTransform:&start timeRange:&v43 requiresCARendering:clipRequiresCA2];

      [(JFXComposition *)self volumeForClip:clip];
      v16 = v15;
      if (v15 <= 0.0)
      {
        currentTrackGroup3 = [stateCopy currentTrackGroup];
        if (stateCopy)
        {
LABEL_17:
          [stateCopy audioCompTimeRange];
          goto LABEL_28;
        }
      }

      else
      {
        if (stateCopy)
        {
          [stateCopy audioCompTimeRange];
          currentTrackGroup3 = [stateCopy currentTrackGroup];
          if (*(&v40 + 1) > 2)
          {
            [stateCopy audioCompTimeRange];
            *&start.start.value = v37;
            start.start.epoch = v38;
            clipsDataSource = [(JFXComposition *)self clipsDataSource];
            CMTimeMake(&duration, 1, [clipsDataSource timeScale]);
            CMTimeRangeMake(&v43, &start.start, &duration);
            *&v19 = v16;
            [currentTrackGroup3 requestVolumeRampFromStartVolume:&v43 toEndVolume:0.0 timeRange:v19];

            memset(&v43, 0, sizeof(v43));
            goto LABEL_29;
          }

          goto LABEL_17;
        }

        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        currentTrackGroup3 = [0 currentTrackGroup];
      }

      v35 = 0;
      v34 = 0u;
LABEL_28:
      *&v43.start.value = v34;
      v43.start.epoch = v35;
      [currentTrackGroup3 requestVolume:&v43 atTime:{COERCE_DOUBLE(__PAIR64__(DWORD1(v34), LODWORD(v16)))}];

      memset(&v43, 0, sizeof(v43));
      if (!stateCopy)
      {
        v23 = -1;
        goto LABEL_31;
      }

LABEL_29:
      [stateCopy audioCompTimeRange];
      [stateCopy audioCompTimeRange];
      v23 = v33 + v32 - 1;
LABEL_31:
      clipsDataSource2 = [(JFXComposition *)self clipsDataSource];
      CMTimeMake(&start.start, v23, [clipsDataSource2 timeScale]);
      clipsDataSource3 = [(JFXComposition *)self clipsDataSource];
      CMTimeMake(&duration, 1, [clipsDataSource3 timeScale]);
      CMTimeRangeMake(&v43, &start.start, &duration);

      v43.start.value = v43.duration.value + v43.start.value - 1;
      alternateTrackGroup = [stateCopy currentTrackGroup];
      start = v43;
      [alternateTrackGroup requestVolumeRampFromStartVolume:&start toEndVolume:COERCE_DOUBLE(__PAIR64__(v43.duration.flags timeRange:{LODWORD(v16))), 0.0}];
LABEL_32:

      goto LABEL_33;
  }

  v12 = JFXLog_playback();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [JFXComposition updateVideoAndAudioInstructionForState:previousInstructions:waitingForResource:];
  }

  v13 = 0;
LABEL_33:

  return v13;
}

- (void)assetUsed:(id)used
{
  usedCopy = used;
  asset = [usedCopy asset];
  if (asset)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = asset;
      v6 = [v5 URL];
      if (v6)
      {
        assetsUsed = [(JFXComposition *)self assetsUsed];
        v8 = [assetsUsed objectForKey:v6];

        if (!v8)
        {
          assetsUsed2 = [(JFXComposition *)self assetsUsed];
          [assetsUsed2 setObject:v5 forKey:v6];
        }
      }

      audioAssetOverwrite = [usedCopy audioAssetOverwrite];

      if (audioAssetOverwrite)
      {
        audioAssetOverwrite2 = [usedCopy audioAssetOverwrite];

        v12 = [audioAssetOverwrite2 URL];

        if (v12)
        {
          assetsUsed3 = [(JFXComposition *)self assetsUsed];
          v14 = [assetsUsed3 objectForKey:v12];

          if (!v14)
          {
            assetsUsed4 = [(JFXComposition *)self assetsUsed];
            audioAssetOverwrite3 = [usedCopy audioAssetOverwrite];
            [assetsUsed4 setObject:audioAssetOverwrite3 forKey:v12];
          }
        }
      }

      else
      {
        audioAssetOverwrite2 = v5;
        v12 = v6;
      }
    }
  }
}

- (BOOL)emptySegments:(id)segments
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  segmentsCopy = segments;
  v4 = [segmentsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(segmentsCopy);
        }

        sourceURL = [*(*(&v11 + 1) + 8 * i) sourceURL];

        if (sourceURL)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v5 = [segmentsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (void)removeTrackFromAudioMix:(int)mix
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  audioMixParameters = [(JFXComposition *)self audioMixParameters];
  v7 = [audioMixParameters countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(audioMixParameters);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 trackID] == mix)
        {
          [array addObject:v11];
        }
      }

      v8 = [audioMixParameters countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if ([array count])
  {
    audioMixParameters2 = [(JFXComposition *)self audioMixParameters];
    [audioMixParameters2 removeObjectsInArray:array];
  }
}

- (BOOL)removeTrackIfEmpty:(id)empty
{
  emptyCopy = empty;
  segments = [emptyCopy segments];
  v6 = [(JFXComposition *)self emptySegments:segments];

  if (v6)
  {
    avComposition = [(JFXComposition *)self avComposition];
    [avComposition removeTrack:emptyCopy];

    [emptyCopy setSegments:0];
    mediaType = [emptyCopy mediaType];
    v9 = [mediaType isEqualToString:*MEMORY[0x277CE5E48]];

    if (v9)
    {
      -[JFXComposition removeTrackFromAudioMix:](self, "removeTrackFromAudioMix:", [emptyCopy trackID]);
    }
  }

  return v6;
}

- (void)removeEmptyTracks
{
  trackGroupA = [(JFXComposition *)self trackGroupA];
  audioTrack = [trackGroupA audioTrack];
  v5 = [(JFXComposition *)self removeTrackIfEmpty:audioTrack];

  if (v5)
  {
    trackGroupA2 = [(JFXComposition *)self trackGroupA];
    audioTrack2 = [trackGroupA2 audioTrack];
    -[JFXComposition logRemovedTrack:trackID:](self, "logRemovedTrack:trackID:", @"movie A audio", [audioTrack2 trackID]);

    trackGroupA3 = [(JFXComposition *)self trackGroupA];
    [trackGroupA3 setAudioTrack:0];
  }

  trackGroupB = [(JFXComposition *)self trackGroupB];
  videoTrack = [trackGroupB videoTrack];
  v11 = [(JFXComposition *)self removeTrackIfEmpty:videoTrack];

  if (v11)
  {
    trackGroupB2 = [(JFXComposition *)self trackGroupB];
    audioTrack3 = [trackGroupB2 audioTrack];
    -[JFXComposition logRemovedTrack:trackID:](self, "logRemovedTrack:trackID:", @"movie B video", [audioTrack3 trackID]);

    trackGroupB3 = [(JFXComposition *)self trackGroupB];
    [trackGroupB3 setVideoTrack:0];
  }

  trackGroupB4 = [(JFXComposition *)self trackGroupB];
  audioTrack4 = [trackGroupB4 audioTrack];
  v17 = [(JFXComposition *)self removeTrackIfEmpty:audioTrack4];

  if (v17)
  {
    trackGroupB5 = [(JFXComposition *)self trackGroupB];
    audioTrack5 = [trackGroupB5 audioTrack];
    -[JFXComposition logRemovedTrack:trackID:](self, "logRemovedTrack:trackID:", @"movie B audio", [audioTrack5 trackID]);

    trackGroupB6 = [(JFXComposition *)self trackGroupB];
    [trackGroupB6 setAudioTrack:0];
  }
}

- (void)setViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v35 = *MEMORY[0x277D85DE8];
  if (self->_viewSize.width != size.width || self->_viewSize.height != size.height)
  {
    self->_viewSize = size;
    videoComposition = [(JFXComposition *)self videoComposition];
    if (videoComposition)
    {
      v8 = videoComposition;
      avPlayerItem = [(JFXComposition *)self avPlayerItem];

      if (avPlayerItem)
      {
        videoComposition2 = [(JFXComposition *)self videoComposition];
        instructions = [videoComposition2 instructions];

        array = [MEMORY[0x277CBEB18] array];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v13 = instructions;
        v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v31;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [*(*(&v30 + 1) + 8 * i) copy];
              [array addObject:v18];
            }

            v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v15);
        }

        avPlayerItem2 = [(JFXComposition *)self avPlayerItem];
        videoComposition3 = [avPlayerItem2 videoComposition];
        v21 = [videoComposition3 mutableCopy];
        [(JFXComposition *)self setVideoComposition:v21];

        videoComposition4 = [(JFXComposition *)self videoComposition];
        [videoComposition4 setInstructions:array];

        avPlayerItem3 = [(JFXComposition *)self avPlayerItem];
        videoComposition5 = [(JFXComposition *)self videoComposition];
        [avPlayerItem3 setVideoComposition:videoComposition5];
      }
    }

    [(JFXComposition *)self previousRenderSize];
    v26 = *(MEMORY[0x277CBF3A8] + 8);
    if ((v27 != *MEMORY[0x277CBF3A8] || v25 != v26) && (width != *MEMORY[0x277CBF3A8] || height != v26))
    {
      [(JFXComposition *)self setRenderScale];
    }
  }
}

- (void)addBackTracksIfRemoved
{
  objc_initWeak(&location, self);
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  avComposition = [(JFXComposition *)self avComposition];
  trackGroupA = [(JFXComposition *)self trackGroupA];
  audioTrack = [trackGroupA audioTrack];
  trackID = [audioTrack trackID];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __40__JFXComposition_addBackTracksIfRemoved__block_invoke;
  v25[3] = &unk_278D79F78;
  objc_copyWeak(&v27, &location);
  v8 = v3;
  v26 = v8;
  [avComposition loadTrackWithTrackID:trackID completionHandler:v25];

  dispatch_group_enter(v8);
  avComposition2 = [(JFXComposition *)self avComposition];
  trackGroupB = [(JFXComposition *)self trackGroupB];
  videoTrack = [trackGroupB videoTrack];
  trackID2 = [videoTrack trackID];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __40__JFXComposition_addBackTracksIfRemoved__block_invoke_2;
  v22[3] = &unk_278D79F78;
  objc_copyWeak(&v24, &location);
  v13 = v8;
  v23 = v13;
  [avComposition2 loadTrackWithTrackID:trackID2 completionHandler:v22];

  dispatch_group_enter(v13);
  avComposition3 = [(JFXComposition *)self avComposition];
  trackGroupB2 = [(JFXComposition *)self trackGroupB];
  audioTrack2 = [trackGroupB2 audioTrack];
  trackID3 = [audioTrack2 trackID];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __40__JFXComposition_addBackTracksIfRemoved__block_invoke_3;
  v19[3] = &unk_278D79F78;
  objc_copyWeak(&v21, &location);
  v18 = v13;
  v20 = v18;
  [avComposition3 loadTrackWithTrackID:trackID3 completionHandler:v19];

  dispatch_group_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
  objc_destroyWeak(&v21);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v27);

  objc_destroyWeak(&location);
}

void __40__JFXComposition_addBackTracksIfRemoved__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!a2)
  {
    v4 = [WeakRetained avComposition];
    v5 = [v4 addMutableTrackWithMediaType:*MEMORY[0x277CE5E48] preferredTrackID:2];
    v6 = [WeakRetained trackGroupA];
    [v6 setAudioTrack:v5];

    [WeakRetained logAddedTrack:@"movie A audio" trackID:2];
  }

  dispatch_group_leave(*(a1 + 32));
}

void __40__JFXComposition_addBackTracksIfRemoved__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!a2)
  {
    v4 = [WeakRetained avComposition];
    v5 = [v4 addMutableTrackWithMediaType:*MEMORY[0x277CE5EA8] preferredTrackID:3];
    v6 = [WeakRetained trackGroupB];
    [v6 setVideoTrack:v5];

    [WeakRetained logAddedTrack:@"movie B video" trackID:3];
  }

  dispatch_group_leave(*(a1 + 32));
}

void __40__JFXComposition_addBackTracksIfRemoved__block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!a2)
  {
    v4 = [WeakRetained avComposition];
    v5 = [v4 addMutableTrackWithMediaType:*MEMORY[0x277CE5E48] preferredTrackID:4];
    v6 = [WeakRetained trackGroupB];
    [v6 setAudioTrack:v5];

    [WeakRetained logAddedTrack:@"movie B audio" trackID:4];
  }

  dispatch_group_leave(*(a1 + 32));
}

- (CGAffineTransform)clipTransform:(SEL)transform
{
  v5 = a4;
  if ([v5 mediaType] == 1 || objc_msgSend(v5, "mediaType") == 9)
  {
    mediaItem = [v5 mediaItem];
    v7 = mediaItem;
    if (mediaItem)
    {
      [mediaItem transform];
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
    }

    *&retstr->a = v11;
    *&retstr->c = v12;
    *&retstr->tx = v13;
  }

  else
  {
    v8 = MEMORY[0x277CBF2C0];
    v9 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v9;
    *&retstr->tx = *(v8 + 32);
  }

  return result;
}

- (id)buildClipList
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  clipsDataSource = [(JFXComposition *)self clipsDataSource];
  v5 = [clipsDataSource count];

  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      clipsDataSource2 = [(JFXComposition *)self clipsDataSource];
      v8 = [clipsDataSource2 playableElementAtIndex:i];

      [v3 addObject:v8];
    }
  }

  return v3;
}

- (id)dissolveGraphNode:(id *)node from:(id)from to:(id)to
{
  v7 = *MEMORY[0x277D419D0];
  v8 = MEMORY[0x277D415F8];
  toCopy = to;
  fromCopy = from;
  v11 = [v8 newEffectWithID:v7];
  v12 = *&node->var0.var3;
  v17[0] = *&node->var0.var0;
  v17[1] = v12;
  v17[2] = *&node->var1.var1;
  [v11 setEffectRange:v17];
  v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v19.x = 0.0;
  v19.y = 1.0;
  v14 = NSStringFromCGPoint(v19);
  [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x277D41A18]];

  [v11 setInspectableProperties:v13];
  v15 = [MEMORY[0x277D41620] newEffectNodeToTransitionFrom:fromCopy to:toCopy effect:v11];

  return v15;
}

- (void)update
{
  v3 = objc_autoreleasePoolPush();
  buildClipList = [(JFXComposition *)self buildClipList];
  [(JFXComposition *)self addBackTracksIfRemoved];
  v5 = *MEMORY[0x277CE5CE0];
  trackGroupB = [(JFXComposition *)self trackGroupB];
  [trackGroupB setPreferredAudioTimePitchAlgorithm:v5];

  clipsDataSource = [(JFXComposition *)self clipsDataSource];
  isExporting = [clipsDataSource isExporting];
  trackGroupA = [(JFXComposition *)self trackGroupA];
  [trackGroupA setIsExporting:isExporting];

  clipsDataSource2 = [(JFXComposition *)self clipsDataSource];
  isExporting2 = [clipsDataSource2 isExporting];
  trackGroupB2 = [(JFXComposition *)self trackGroupB];
  [trackGroupB2 setIsExporting:isExporting2];

  v13 = objc_alloc_init(EditListCompositionState);
  trackGroupA2 = [(JFXComposition *)self trackGroupA];
  [(EditListCompositionState *)v13 setCurrentTrackGroup:trackGroupA2];

  trackGroupB3 = [(JFXComposition *)self trackGroupB];
  [(EditListCompositionState *)v13 setAlternateTrackGroup:trackGroupB3];

  memset(&v107, 0, sizeof(v107));
  clipsDataSource3 = [(JFXComposition *)self clipsDataSource];
  LODWORD(isExporting2) = [clipsDataSource3 duration];
  clipsDataSource4 = [(JFXComposition *)self clipsDataSource];
  CMTimeFromFrameTime(isExporting2, [clipsDataSource4 timeScale], &v107);

  v18 = [buildClipList count];
  [buildClipList lastObject];
  v83 = v82 = v18;
  if (!v18)
  {
    goto LABEL_45;
  }

  v80 = v3;
  v81 = buildClipList;
  v19 = 0;
  v20 = 0;
  do
  {
    v21 = [buildClipList objectAtIndex:v19];
    [(EditListCompositionState *)v13 setClip:v21];

    clip = [(EditListCompositionState *)v13 clip];
    [(JFXComposition *)self JFX_updatePlaybackDelegatesForClip:clip];

    clip2 = [(EditListCompositionState *)v13 clip];
    [(EditListCompositionState *)v13 setClipRequiresCA:[(JFXComposition *)self CARenderingRequiredForClip:clip2]];

    clip3 = [(EditListCompositionState *)v13 clip];
    [(EditListCompositionState *)v13 setIsLastClip:clip3 == v83];

    if (v19 && ([buildClipList objectAtIndex:v19 - 1], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v26 = v25;
      presentationTime = [v25 presentationTime];
      v85 = v26;
      LODWORD(v26) = [v26 duration] + presentationTime;
      clip4 = [(EditListCompositionState *)v13 clip];
      -[EditListCompositionState setOverlapLeft:](v13, "setOverlapLeft:", v26 - [clip4 presentationTime]);
    }

    else
    {
      [(EditListCompositionState *)v13 setOverlapLeft:0];
      v85 = 0;
    }

    if (-[EditListCompositionState isLastClip](v13, "isLastClip") || ([buildClipList objectAtIndex:v19 + 1], (v29 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      [(EditListCompositionState *)v13 setOverlapRight:0];
    }

    else
    {
      v30 = v29;
      clip5 = [(EditListCompositionState *)v13 clip];
      presentationTime2 = [clip5 presentationTime];
      clip6 = [(EditListCompositionState *)v13 clip];
      -[EditListCompositionState setOverlapRight:](v13, "setOverlapRight:", [clip6 duration] + presentationTime2 - objc_msgSend(v30, "presentationTime"));
    }

    v104 = 0;
    v105 = 0;
    [(JFXComposition *)self compositionItemsForState:v13 compositionItem:&v105 backfillCompositionItem:&v104];
    v34 = v105;
    v35 = v104;
    v103 = v106;
    [(EditListCompositionState *)v13 setVideoCompTimeRange:&v103];
    memset(&v103, 0, sizeof(v103));
    if (v13)
    {
      [(EditListCompositionState *)v13 videoCompTimeRange];
    }

    [(EditListCompositionState *)v13 setAudioStartOffset:0];
    [(EditListCompositionState *)v13 setAudioEndOffset:0];
    clipsDataSource5 = [(JFXComposition *)self clipsDataSource];
    CMTimeMake(&v102, 0, [clipsDataSource5 timeScale]);
    lhs.start = v102;
    [v34 setAudioStartOffset:&lhs];

    clipsDataSource6 = [(JFXComposition *)self clipsDataSource];
    CMTimeMake(&v101, 0, [clipsDataSource6 timeScale]);
    lhs.start = v101;
    [v34 setAudioEndOffset:&lhs];

    lhs = v103;
    [(EditListCompositionState *)v13 setAudioCompTimeRange:&lhs];
    clip7 = [(EditListCompositionState *)v13 clip];
    v39 = [clip7 mediaType] == 2;

    currentTrackGroup = [(EditListCompositionState *)v13 currentTrackGroup];
    [currentTrackGroup applyCompositionItem:v34 skipAudio:v39];

    alternateTrackGroup = [(EditListCompositionState *)v13 alternateTrackGroup];
    [alternateTrackGroup applyCompositionItem:v35 skipAudio:1];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(JFXComposition *)self assetUsed:v34];
    }

    clipsDataSource7 = [(JFXComposition *)self clipsDataSource];
    v84 = v35;
    if ([clipsDataSource7 isExporting])
    {

LABEL_19:
      isWaitingForResource = 0;
      goto LABEL_20;
    }

    hasVideoContent = [v34 hasVideoContent];

    if (!hasVideoContent)
    {
      goto LABEL_19;
    }

    isWaitingForResource = [v34 isWaitingForResource];
LABEL_20:
    memset(&v99, 0, sizeof(v99));
    overlapLeft = [(EditListCompositionState *)v13 overlapLeft];
    clipsDataSource8 = [(JFXComposition *)self clipsDataSource];
    CMTimeFromFrameTime(overlapLeft, [clipsDataSource8 timeScale], &v99);

    if ([(EditListCompositionState *)v13 overlapLeft]> 0 || [(EditListCompositionState *)v13 overlapRight]>= 1)
    {
      memset(start, 0, 24);
      overlapRight = [(EditListCompositionState *)v13 overlapRight];
      clipsDataSource9 = [(JFXComposition *)self clipsDataSource];
      CMTimeFromFrameTime(overlapRight, [clipsDataSource9 timeScale], &start[0].start);

      memset(&v98, 0, sizeof(v98));
      if (v13)
      {
        [(EditListCompositionState *)v13 videoCompTimeRange];
      }

      else
      {
        v96 = 0u;
        v97 = 0u;
        v95 = 0u;
      }

      *&lhs.start.value = v95;
      lhs.start.epoch = v96;
      rhs = v99;
      CMTimeAdd(&v98, &lhs.start, &rhs);
      memset(&rhs, 0, sizeof(rhs));
      if (v13)
      {
        [(EditListCompositionState *)v13 videoCompTimeRange];
      }

      else
      {
        memset(v93, 0, sizeof(v93));
        v92 = 0u;
      }

      *&lhs.start.value = *(v93 + 8);
      lhs.start.epoch = *(&v93[1] + 1);
      v90 = v99;
      v89 = start[0].start;
      CMTimeAdd(&duration, &v90, &v89);
      CMTimeSubtract(&rhs, &lhs.start, &duration);
      lhs.start = v98;
      duration = rhs;
      CMTimeRangeMake(&v88, &lhs.start, &duration);
      lhs = v88;
      [(EditListCompositionState *)v13 setVideoCompTimeRange:&lhs];
      if (v13)
      {
        [(EditListCompositionState *)v13 videoCompTimeRange];
      }

      else
      {
        memset(&start[1], 0, sizeof(CMTimeRange));
      }

      lhs = start[1];
      [(EditListCompositionState *)v13 setAudioCompTimeRange:&lhs];
    }

    v86 = v20;
    v49 = [(JFXComposition *)self updateVideoAndAudioInstructionForState:v13 previousInstructions:v20 waitingForResource:isWaitingForResource];
    if ([(EditListCompositionState *)v13 overlapLeft]>= 1)
    {
      v50 = objc_alloc_init(MEMORY[0x277D416C8]);
      memset(&lhs, 0, sizeof(lhs));
      clip8 = [(EditListCompositionState *)v13 clip];
      presentationTime3 = [clip8 presentationTime];
      clipsDataSource10 = [(JFXComposition *)self clipsDataSource];
      CMTimeFromFrameTime(presentationTime3, [clipsDataSource10 timeScale], &start[0].start);
      v98 = v99;
      CMTimeRangeMake(&lhs, &start[0].start, &v98);

      start[0] = lhs;
      [v50 setTimeRange:start];
      outputNode = [v86 outputNode];
      outputNode2 = [v49 outputNode];
      start[0] = lhs;
      v56 = [(JFXComposition *)self dissolveGraphNode:start from:outputNode to:outputNode2];

      [v50 setOutputNode:v56];
      v57 = [(EditListCompositionState *)v13 clipRequiresCA]|| [(JFXComposition *)self CARenderingRequiredForClip:v85];
      [v50 setContainsTweening:v57];
      [v50 setIsFreezeFrame:0];
      videoCompositionInstructions = [(JFXComposition *)self videoCompositionInstructions];
      [videoCompositionInstructions addObject:v50];

      buildClipList = v81;
    }

    if (v49)
    {
      videoCompositionInstructions2 = [(JFXComposition *)self videoCompositionInstructions];
      [videoCompositionInstructions2 addObject:v49];
    }

    videoCompositionInstructions3 = [(JFXComposition *)self videoCompositionInstructions];
    if ([videoCompositionInstructions3 count] == 1)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v62 = [standardUserDefaults BOOLForKey:@"burnInExportSettings"];

      if (!v62)
      {
        goto LABEL_43;
      }

      videoCompositionInstructions3 = [(JFXComposition *)self videoCompositionInstructions];
      v63 = [videoCompositionInstructions3 objectAtIndexedSubscript:0];
      [(JFXComposition *)self burnInPlaybackSettings:v63];
    }

LABEL_43:
    [(EditListCompositionState *)v13 swapTrackGroup];

    ++v19;
    v20 = v49;
  }

  while (v82 != v19);

  v3 = v80;
LABEL_45:
  memset(start, 0, 24);
  currentTrackGroup2 = [(EditListCompositionState *)v13 currentTrackGroup];
  v65 = currentTrackGroup2;
  if (currentTrackGroup2)
  {
    [currentTrackGroup2 cursor];
  }

  else
  {
    memset(start, 0, 24);
  }

  memset(&v99, 0, sizeof(v99));
  v103.start = v107;
  *&lhs.start.value = *&start[0].start.value;
  lhs.start.epoch = start[0].start.epoch;
  CMTimeSubtract(&v99, &v103.start, &lhs.start);
  if (v99.value >= 1)
  {
    memset(&v103, 0, sizeof(v103));
    *&lhs.start.value = *&start[0].start.value;
    lhs.start.epoch = start[0].start.epoch;
    v98 = v107;
    CMTimeRangeMake(&v103, &lhs.start, &v98);
    currentTrackGroup3 = [(EditListCompositionState *)v13 currentTrackGroup];
    lhs.start = v107;
    [currentTrackGroup3 applyPaddingToTime:&lhs];

    alternateTrackGroup2 = [(EditListCompositionState *)v13 alternateTrackGroup];
    lhs.start = v107;
    [alternateTrackGroup2 applyPaddingToTime:&lhs];

    videoCompositionInstructions4 = [(JFXComposition *)self videoCompositionInstructions];
    currentTrackGroup4 = [(EditListCompositionState *)v13 currentTrackGroup];
    usableVideoTrackID = [currentTrackGroup4 usableVideoTrackID];
    alternateTrackGroup3 = [(EditListCompositionState *)v13 alternateTrackGroup];
    usableVideoTrackID2 = [alternateTrackGroup3 usableVideoTrackID];
    lhs = v103;
    v73 = [(JFXComposition *)self instructionToHideTrackID:usableVideoTrackID whileHidingTrackID:usableVideoTrackID2 timeRange:&lhs requiresCARendering:1];
    [videoCompositionInstructions4 addObject:v73];
  }

  currentTrackGroup5 = [(EditListCompositionState *)v13 currentTrackGroup];
  v103.start = v107;
  [currentTrackGroup5 commitPendingVolumeToTime:&v103];

  alternateTrackGroup4 = [(EditListCompositionState *)v13 alternateTrackGroup];
  v103.start = v107;
  [alternateTrackGroup4 commitPendingVolumeToTime:&v103];

  currentTrackGroup6 = [(EditListCompositionState *)v13 currentTrackGroup];
  audioMixParameters = [(JFXComposition *)self audioMixParameters];
  [currentTrackGroup6 applyAudioMixParameters:audioMixParameters];

  alternateTrackGroup5 = [(EditListCompositionState *)v13 alternateTrackGroup];
  audioMixParameters2 = [(JFXComposition *)self audioMixParameters];
  [alternateTrackGroup5 applyAudioMixParameters:audioMixParameters2];

  [(JFXComposition *)self setNeedsUpdate:0];
  objc_autoreleasePoolPop(v3);
}

- (void)rebuildCompositionInstructionsForVideoStillTitleCard:(id)card
{
  v52 = *MEMORY[0x277D85DE8];
  cardCopy = card;
  clipsDataSource = [(JFXComposition *)self clipsDataSource];
  timeScale = [clipsDataSource timeScale];

  avPlayerItem = [(JFXComposition *)self avPlayerItem];

  if (avPlayerItem)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    memset(&v50, 0, sizeof(v50));
    CMTimeMake(&start.start, [cardCopy presentationTime], timeScale);
    CMTimeMake(&duration.start, [cardCopy duration], timeScale);
    CMTimeRangeMake(&v50, &start.start, &duration.start);
    mediaType = [cardCopy mediaType];
    [(JFXComposition *)self JFX_updatePlaybackDelegatesForClip:cardCopy];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    avPlayerItem2 = [(JFXComposition *)self avPlayerItem];
    videoComposition = [avPlayerItem2 videoComposition];
    instructions = [videoComposition instructions];

    v13 = v8;
    obj = instructions;
    v14 = [instructions countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (!v14)
    {
      goto LABEL_44;
    }

    v15 = v14;
    v16 = *v47;
    v17 = 0xFFFFFFFFLL;
    v39 = v13;
    while (1)
    {
      v18 = 0;
      do
      {
        if (*v47 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v46 + 1) + 8 * v18);
        if (v19)
        {
          [*(*(&v46 + 1) + 8 * v18) timeRange];
        }

        else
        {
          memset(&start, 0, sizeof(start));
        }

        duration = v50;
        if (!CMTimeRangeContainsTimeRange(&duration, &start))
        {
          [v13 addObject:v19];
          goto LABEL_42;
        }

        if (v17 == -1 && mediaType <= 9 && ((1 << mediaType) & 0x20A) != 0)
        {
          requiredSourceTrackIDs = [v19 requiredSourceTrackIDs];
          firstObject = [requiredSourceTrackIDs firstObject];
          intValue = [firstObject intValue];

          if (intValue)
          {
            v17 = intValue;
          }

          else
          {
            v17 = 3;
          }

          v13 = v39;
        }

        memset(&start, 0, sizeof(start));
        [(JFXComposition *)self clipTransform:cardCopy];
        if (mediaType > 2)
        {
          if (mediaType != 9 && mediaType != 3)
          {
            goto LABEL_39;
          }
        }

        else if (mediaType != 1)
        {
          if (mediaType == 2)
          {
            if (v19)
            {
              [v19 timeRange];
            }

            else
            {
              memset(&duration, 0, sizeof(duration));
            }

            v29 = [(JFXComposition *)self CARenderingRequiredForClip:cardCopy];
            v43 = start;
            v25 = [(JFXComposition *)self instructionToShowImageWithClip:cardCopy withTransform:&v43 timeRange:&duration requiresCARendering:v29];
            if (v25)
            {
              goto LABEL_32;
            }
          }

          goto LABEL_39;
        }

        if (v19)
        {
          [v19 timeRange];
        }

        else
        {
          memset(&duration, 0, sizeof(duration));
        }

        v23 = [(JFXComposition *)self CARenderingRequiredForClip:cardCopy];
        v43 = start;
        v24 = [(JFXComposition *)self instructionToShowClip:cardCopy withTrackID:v17 withTransform:&v43 timeRange:&duration requiresCARendering:v23];
        v25 = v24;
        if (mediaType == 3)
        {
          [v24 setContainsTweening:1];
        }

        if (v25)
        {
LABEL_32:
          if (![cardCopy presentationTime])
          {
            outputNode = [v25 outputNode];
            if (outputNode)
            {
              v27 = outputNode;
              standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
              v38 = [standardUserDefaults BOOLForKey:@"burnInExportSettings"];

              v13 = v39;
              if (v38)
              {
                [(JFXComposition *)self burnInPlaybackSettings:v25];
              }
            }
          }

          [v13 addObject:v25];
          goto LABEL_41;
        }

LABEL_39:
        v25 = JFXLog_playback();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [(JFXComposition *)&buf rebuildCompositionInstructionsForVideoStillTitleCard:v42, v25];
        }

LABEL_41:

LABEL_42:
        ++v18;
      }

      while (v15 != v18);
      v15 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (!v15)
      {
LABEL_44:

        avPlayerItem3 = [(JFXComposition *)self avPlayerItem];
        videoComposition2 = [avPlayerItem3 videoComposition];
        v32 = [videoComposition2 mutableCopy];

        [v32 setInstructions:v13];
        [(JFXComposition *)self JFX_preferredRenderScale];
        v34 = v33;
        [v32 renderScale];
        if (vabds_f32(v34, *&v35) >= 0.0001)
        {
          *&v35 = v34;
          [v32 setRenderScale:v35];
        }

        avPlayerItem4 = [(JFXComposition *)self avPlayerItem];
        [avPlayerItem4 setVideoComposition:v32];

        [(JFXComposition *)self setVideoComposition:v32];
        [(JFXComposition *)self setVideoCompositionInstructions:v13];
        videoComposition3 = [(JFXComposition *)self videoComposition];
        [videoComposition3 setInstructions:v13];

        goto LABEL_49;
      }
    }
  }

  v13 = JFXLog_playback();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [JFXComposition rebuildCompositionInstructionsForVideoStillTitleCard:];
  }

LABEL_49:
}

- (void)JFX_updatePlaybackDelegatesForClip:(id)clip
{
  clipCopy = clip;
  v4 = [[JFXSharedMediaDataReaderManager alloc] initWithPlayableElement:clipCopy];
  clipCustomRendererMap = [(JFXComposition *)self clipCustomRendererMap];
  v6 = [clipCustomRendererMap objectForKey:clipCopy];

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [v6 objectForKeyedSubscript:@"JFXCustomRenderingPropertiesKey_Animoji"];
  v9 = [(JFXComposition *)self animojiCustomRendererPropsForClip:clipCopy currentCustomProperties:v8 sharedMediaDataReaderManager:v4];

  if (v9)
  {
    [v7 setObject:v9 forKeyedSubscript:@"JFXCustomRenderingPropertiesKey_Animoji"];
  }

  [(JFXComposition *)self CFX_updateFaceTrackingPlaybackDelegateForClip:clipCopy sharedMediaDataReaderManager:v4];
  clipCustomRendererMap2 = [(JFXComposition *)self clipCustomRendererMap];
  [clipCustomRendererMap2 setObject:v7 forKey:clipCopy];
}

- (id)animojiCustomRendererPropsForClip:(id)clip currentCustomProperties:(id)properties sharedMediaDataReaderManager:(id)manager
{
  v32[3] = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  propertiesCopy = properties;
  managerCopy = manager;
  v11 = [clipCopy playableEffectsOfType:7];
  if ([v11 count])
  {
    [clipCopy playableMediaSizeWithTransform];
    v13 = v12;
    v15 = v14;
    clipsDataSource = [(JFXComposition *)self clipsDataSource];
    [clipsDataSource renderSize];
    v18 = v17;
    v20 = v19;

    if (v18 < v20)
    {
      v18 = v20;
    }

    if (!CGSizeCouldContainSize(v18, v18, v13, v15))
    {
      v13 = CGSizeFitToAspectInSize(v18, v18, v13, v15);
      v15 = v21;
    }

    v22 = [v11 objectAtIndexedSubscript:0];
    v32[0] = v22;
    v31[0] = @"JFXAnimojiRendererMetadata_Effect";
    v31[1] = @"JFXAnimojiRendererMetadata_UIInterfaceOrientation";
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v22, "captureInterfaceOrientation")}];
    v32[1] = v23;
    v31[2] = @"JFXAnimojiRendererMetadata_RenderSize";
    *v30 = v13;
    *&v30[1] = v15;
    v24 = [MEMORY[0x277CCAE60] valueWithBytes:v30 objCType:"{CGSize=dd}"];
    v32[2] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];

    if (propertiesCopy && ([propertiesCopy renderingDelegate], (v26 = objc_claimAutoreleasedReturnValue()) != 0) || ((objc_msgSend(clipCopy, "isVideo") & 1) != 0 || objc_msgSend(clipCopy, "isStill")) && (v26 = -[JFXAnimojiPlaybackDelegate initWithPlayableElement:sharedMediaDataReaderManager:]([JFXAnimojiPlaybackDelegate alloc], "initWithPlayableElement:sharedMediaDataReaderManager:", clipCopy, managerCopy)) != 0)
    {
      v27 = v26;
      v28 = [JFXCustomRenderProperties newCustomRenderProperties:v26 metadata:v25];
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (void)CFX_updateFaceTrackingPlaybackDelegateForClip:(id)clip sharedMediaDataReaderManager:(id)manager
{
  v62 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  managerCopy = manager;
  v45 = clipCopy;
  [clipCopy playableEffectsOfType:2];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v8 = v53 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v51;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v51 != v11)
        {
          objc_enumerationMutation(v8);
        }

        trackingProps = [*(*(&v50 + 1) + 8 * i) trackingProps];
        currentTrackingType = [trackingProps currentTrackingType];

        if (currentTrackingType)
        {
          v15 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v50 objects:v61 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  clipFaceTrackingPlaybackDelegates = [(JFXComposition *)self clipFaceTrackingPlaybackDelegates];
  v17 = v45;
  v18 = [clipFaceTrackingPlaybackDelegates objectForKey:v45];

  if (v15)
  {
    if (v18)
    {
      goto LABEL_20;
    }

    if (([v45 isVideo] & 1) != 0 || objc_msgSend(v45, "isStill"))
    {
      v19 = [JFXFaceTrackingPlaybackDelegate alloc];
      clipsDataSource = [(JFXComposition *)self clipsDataSource];
      [clipsDataSource renderSize];
      v21 = v19;
      v17 = v45;
      v18 = [(JFXFaceTrackingPlaybackDelegate *)v21 initWithPlayableElement:v45 sharedMediaDataReaderManager:managerCopy outputSize:?];
    }

    else
    {
      v18 = 0;
    }

    clipFaceTrackingPlaybackDelegates2 = [(JFXComposition *)self clipFaceTrackingPlaybackDelegates];
    [clipFaceTrackingPlaybackDelegates2 setObject:v18 forKey:v17];
  }

  else
  {
    clipFaceTrackingPlaybackDelegates2 = [(JFXComposition *)self clipFaceTrackingPlaybackDelegates];
    [clipFaceTrackingPlaybackDelegates2 removeObjectForKey:v45];
  }

LABEL_20:
  v44 = v18;
  v43 = managerCopy;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v23 = v8;
  v24 = [v23 countByEnumeratingWithState:&v46 objects:v60 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v47;
    do
    {
      v27 = 0;
      do
      {
        if (*v47 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v46 + 1) + 8 * v27);
        trackingProps2 = [v28 trackingProps];
        renderEffect = [v28 renderEffect];
        [renderEffect removeAllTimedPropertiesDelegates];

        v31 = JFXLog_DebugFaceTrackingPlayback();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          renderEffect2 = [v28 renderEffect];
          uuid = [v45 uuid];
          *buf = 134218242;
          v55 = renderEffect2;
          v56 = 2112;
          v57 = uuid;
          _os_log_debug_impl(&dword_242A3B000, v31, OS_LOG_TYPE_DEBUG, "remove timedProperties delegate for PVEffect %p on clip %@", buf, 0x16u);
        }

        if ([trackingProps2 currentTrackingType] && (objc_msgSend(v28, "isEditingFaceTrackingTransforms") & 1) == 0)
        {
          v32 = objc_opt_new();
          v33 = MEMORY[0x277CCABB0];
          mediaItem = [v45 mediaItem];
          v35 = [v33 numberWithInteger:{objc_msgSend(mediaItem, "interfaceOrientationForDisplay")}];
          [v32 setObject:v35 forKeyedSubscript:@"JFXFaceTrackingKey_InterfaceOrientation"];

          v36 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(trackingProps2, "currentTrackingType")}];
          [v32 setObject:v36 forKeyedSubscript:@"JFXFaceTrackingKey_TrackingType"];

          v37 = JFXLog_DebugFaceTrackingPlayback();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            renderEffect3 = [v28 renderEffect];
            uuid2 = [v45 uuid];
            *buf = 134218498;
            v55 = v44;
            v56 = 2048;
            v57 = renderEffect3;
            v58 = 2112;
            v59 = uuid2;
            _os_log_debug_impl(&dword_242A3B000, v37, OS_LOG_TYPE_DEBUG, "add timedProperties delegate %p for PVEffect %p on clip %@", buf, 0x20u);
          }

          renderEffect4 = [v28 renderEffect];
          [renderEffect4 addTimedPropertiesDelegate:v44 userContext:v32];
        }

        ++v27;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v46 objects:v60 count:16];
    }

    while (v25);
  }
}

- (void)noteEffectChangeForClip:(id)clip
{
  clipCopy = clip;
  mediaType = [clipCopy mediaType];
  if (mediaType > 9 || ((1 << mediaType) & 0x20E) == 0)
  {
    v7 = JFXLog_playback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [JFXComposition noteEffectChangeForClip:];
    }
  }

  else
  {
    [(JFXComposition *)self rebuildCompositionInstructionsForVideoStillTitleCard:clipCopy];
  }
}

- (void)notifyPlaybackDidStopAtTime:(id *)time
{
  [(JFXComposition *)self JFX_setScrubbingModeForPlaybackDelegates:1];
  v5 = *time;
  [(JFXComposition *)self notifyNeedsEffectPropertiesUpdatedForPlaybackTime:&v5];
}

- (void)JFX_updateFaceTrackPropertiesForEffectsAtTime:(id *)time
{
  v42 = *MEMORY[0x277D85DE8];
  clipsDataSource = [(JFXComposition *)self clipsDataSource];
  v6 = [clipsDataSource count];

  if (v6 >= 1)
  {
    v7 = 0;
    while (1)
    {
      clipsDataSource2 = [(JFXComposition *)self clipsDataSource];
      v9 = [clipsDataSource2 playableElementAtIndex:v7];

      [(JFXComposition *)self timeRangeForClip:v9];
      time = *time;
      if (CMTimeRangeContainsTime(&range, &time))
      {
        break;
      }

      if (v6 == ++v7)
      {
        return;
      }
    }

    clipFaceTrackingPlaybackDelegates = [(JFXComposition *)self clipFaceTrackingPlaybackDelegates];
    v11 = [clipFaceTrackingPlaybackDelegates objectForKey:v9];

    if (v11)
    {
      mediaItem = [v9 mediaItem];
      interfaceOrientationForDisplay = [mediaItem interfaceOrientationForDisplay];

      v14 = [v9 playableEffectsOfType:2];
      *&range.start.value = *&time->var0;
      range.start.epoch = time->var3;
      v32 = interfaceOrientationForDisplay;
      v33 = v11;
      v15 = [v11 faceTrackingTransformAtTime:&range forDisplayingMediaAtInterfaceOrientation:interfaceOrientationForDisplay];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v36;
        v34 = v15;
        do
        {
          v20 = 0;
          do
          {
            if (*v36 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v35 + 1) + 8 * v20);
            v22 = JFXLog_DebugFaceTrackingPlayback();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *&range.start.value = *&time->var0;
              range.start.epoch = time->var3;
              Seconds = CMTimeGetSeconds(&range.start);
              renderEffect = [v21 renderEffect];
              [v9 uuid];
              v25 = v9;
              v27 = v26 = time;
              LODWORD(range.start.value) = 134218498;
              *(&range.start.value + 4) = Seconds;
              LOWORD(range.start.flags) = 2048;
              *(&range.start.flags + 2) = renderEffect;
              HIWORD(range.start.epoch) = 2112;
              range.duration.value = v27;
              _os_log_debug_impl(&dword_242A3B000, v22, OS_LOG_TYPE_DEBUG, "update face tracking properties at time %f for PVEffect %p on clip %@", &range, 0x20u);

              time = v26;
              v9 = v25;

              v15 = v34;
            }

            if (([v21 isEditingFaceTrackingTransforms] & 1) == 0)
            {
              [v21 setFaceTrackingTransform:v15];
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v18);
      }

      *&range.start.value = *&time->var0;
      range.start.epoch = time->var3;
      v11 = v33;
      v28 = [v33 arDataAtTime:&range forDisplayingMediaAtInterfaceOrientation:v32];
    }

    else
    {
      v28 = 0;
    }

    v29 = +[JFXVideoCameraController sharedInstance];
    [v29 setMostRecentARMetadata:v28];

    faceAnchor = [v28 faceAnchor];
    v31 = +[JFXVideoCameraController sharedInstance];
    [v31 setHasValidFaceData:faceAnchor != 0];
  }
}

- (void)JFX_setScrubbingModeForPlaybackDelegates:(BOOL)delegates
{
  delegatesCopy = delegates;
  clipsDataSource = [(JFXComposition *)self clipsDataSource];
  v6 = [clipsDataSource count];

  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      clipsDataSource2 = [(JFXComposition *)self clipsDataSource];
      v9 = [clipsDataSource2 playableElementAtIndex:i];

      clipCustomRendererMap = [(JFXComposition *)self clipCustomRendererMap];
      v11 = [clipCustomRendererMap objectForKey:v9];

      clipFaceTrackingPlaybackDelegates = [(JFXComposition *)self clipFaceTrackingPlaybackDelegates];
      v13 = [clipFaceTrackingPlaybackDelegates objectForKey:v9];

      [v13 setIsScrubbing:delegatesCopy];
      v14 = [v11 objectForKeyedSubscript:@"JFXCustomRenderingPropertiesKey_Animoji"];
      v15 = v14;
      if (v14)
      {
        renderingDelegate = [v14 renderingDelegate];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [renderingDelegate setIsScrubbing:delegatesCopy];
        }
      }
    }
  }
}

- (id)AVComposition
{
  avComposition = [(JFXComposition *)self avComposition];
  if (!avComposition || (v4 = avComposition, v5 = [(JFXComposition *)self needsUpdate], v4, v5))
  {
    [(JFXComposition *)self update];
  }

  return [(JFXComposition *)self avComposition];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration
{
  if ([(JFXComposition *)self needsUpdate])
  {
    [(JFXComposition *)self update];
  }

  avComposition = [(JFXComposition *)self avComposition];
  if (avComposition)
  {
    v7 = avComposition;
    [avComposition duration];
    avComposition = v7;
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (BOOL)validate
{
  if ([(JFXComposition *)self needsUpdate])
  {
    [(JFXComposition *)self update];
  }

  trackGroupA = [(JFXComposition *)self trackGroupA];
  validate = [trackGroupA validate];

  trackGroupB = [(JFXComposition *)self trackGroupB];
  validate2 = [trackGroupB validate];

  v7 = JFXLog_DebugComposition();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [JFXComposition validate];
  }

  v8 = JFXLog_DebugComposition();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [JFXComposition validate];
  }

  v9 = JFXLog_DebugComposition();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(JFXComposition *)self validate];
  }

  v10 = JFXLog_DebugComposition();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(JFXComposition *)self validate];
  }

  v11 = JFXLog_DebugComposition();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [JFXComposition validate];
  }

  v12 = JFXLog_DebugComposition();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(JFXComposition *)self validate];
  }

  return validate2 & validate;
}

- (void)updateRenderSizeIfNeeded
{
  clipsDataSource = [(JFXComposition *)self clipsDataSource];
  [clipsDataSource renderSize];
  v5 = v4;
  v7 = v6;

  [(JFXComposition *)self previousRenderSize];
  if (v9 != v5 || v8 != v7)
  {
    videoComposition = [(JFXComposition *)self videoComposition];
    [videoComposition setRenderSize:{v5, v7}];

    [(JFXComposition *)self setPreviousRenderSize:v5, v7];
  }
}

- (void)refreshAVComposition
{
  v3 = objc_autoreleasePoolPush();
  trackGroupA = [(JFXComposition *)self trackGroupA];
  assetsUsed = [(JFXComposition *)self assetsUsed];
  [trackGroupA apply:assetsUsed];

  trackGroupB = [(JFXComposition *)self trackGroupB];
  assetsUsed2 = [(JFXComposition *)self assetsUsed];
  [trackGroupB apply:assetsUsed2];

  [(JFXComposition *)self removeEmptyTracks];
  videoComposition = [(JFXComposition *)self videoComposition];
  videoCompositionInstructions = [(JFXComposition *)self videoCompositionInstructions];
  [videoComposition setInstructions:videoCompositionInstructions];

  [(JFXComposition *)self updateRenderSizeIfNeeded];
  [(JFXComposition *)self setRenderScale];

  objc_autoreleasePoolPop(v3);
}

- (AVPlayerItem)playerItem
{
  if ([(JFXComposition *)self needsUpdate])
  {
    [(JFXComposition *)self updateRenderSizeIfNeeded];
    [(JFXComposition *)self update];
  }

  avPlayerItem = [(JFXComposition *)self avPlayerItem];

  if (!avPlayerItem)
  {
    [(JFXComposition *)self refreshAVComposition];
    v4 = MEMORY[0x277CE65B0];
    avComposition = [(JFXComposition *)self avComposition];
    v6 = [avComposition copy];
    v7 = [v4 playerItemWithAsset:v6];
    [(JFXComposition *)self setAvPlayerItem:v7];

    avPlayerItem2 = [(JFXComposition *)self avPlayerItem];
    [avPlayerItem2 setSeekingWaitsForVideoCompositionRendering:1];

    avPlayerItem3 = [(JFXComposition *)self avPlayerItem];
    LOBYTE(avComposition) = objc_opt_respondsToSelector();

    if (avComposition)
    {
      avPlayerItem4 = [(JFXComposition *)self avPlayerItem];
      [avPlayerItem4 setAppliesPerFrameHDRDisplayMetadata:0];
    }

    v11 = *MEMORY[0x277CE5CD8];
    avPlayerItem5 = [(JFXComposition *)self avPlayerItem];
    [avPlayerItem5 setAudioTimePitchAlgorithm:v11];
  }

  return [(JFXComposition *)self avPlayerItem];
}

- (void)JFX_applyPropertiesForCustomVideoCompositor:(id)compositor
{
  compositorCopy = compositor;
  if (compositorCopy)
  {
    if ([(JFXComposition *)self parentCode]!= -1)
    {
      [compositorCopy setParentCode:{-[JFXComposition parentCode](self, "parentCode")}];
    }

    clipsDataSource = [(JFXComposition *)self clipsDataSource];
    isExporting = [clipsDataSource isExporting];

    if (isExporting)
    {
      [compositorCopy setImmediatelyCancelPendingRequests:1];
    }

    videoCompositingContext = [compositorCopy videoCompositingContext];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    dictionaryRepresentation = [standardUserDefaults dictionaryRepresentation];
    [videoCompositingContext setContext:dictionaryRepresentation];

    compositionOutputColorSpace = [(JFXComposition *)self compositionOutputColorSpace];
    [compositorCopy setOutputColorSpace:compositionOutputColorSpace];
  }

  else
  {
    v11 = JFXLog_playback();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [JFXComposition JFX_applyPropertiesForCustomVideoCompositor:];
    }
  }
}

- (void)applyExportProperties
{
  [(JFXComposition *)self updateRenderSizeIfNeeded];
  [(JFXComposition *)self update];
  [(JFXComposition *)self refreshAVComposition];

  [(JFXComposition *)self JFX_finalizeVideoComposition];
}

- (void)applyPlayerItemProperties
{
  [(JFXComposition *)self JFX_finalizeVideoComposition];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277CE60C0];
  avPlayerItem = [(JFXComposition *)self avPlayerItem];
  [defaultCenter addObserver:self selector:sel_playerItemDidReachEnd_ name:v4 object:avPlayerItem];

  avPlayerItem2 = [(JFXComposition *)self avPlayerItem];
  videoComposition = [(JFXComposition *)self videoComposition];
  [avPlayerItem2 setVideoComposition:videoComposition];

  avPlayerItem3 = [(JFXComposition *)self avPlayerItem];
  customVideoCompositor = [avPlayerItem3 customVideoCompositor];

  [(JFXComposition *)self JFX_applyPropertiesForCustomVideoCompositor:customVideoCompositor];
}

- (void)clearPlayerItemProperties
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277CE60C0];
  avPlayerItem = [(JFXComposition *)self avPlayerItem];
  [defaultCenter removeObserver:self name:v4 object:avPlayerItem];

  [(JFXComposition *)self markDirty];
  videoComposition = [(JFXComposition *)self videoComposition];
  [videoComposition setCustomVideoCompositorClass:0];

  v7 = objc_alloc_init(MEMORY[0x277CE6568]);
  [(JFXComposition *)self setVideoComposition:v7];

  avPlayerItem2 = [(JFXComposition *)self avPlayerItem];
  videoComposition2 = [(JFXComposition *)self videoComposition];
  [avPlayerItem2 setVideoComposition:videoComposition2];
}

- (PVColorSpace)compositionOutputColorSpace
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice jfx_supportsHDR])
  {
    clipsDataSource = [(JFXComposition *)self clipsDataSource];
    v5 = [clipsDataSource count];

    if (v5 >= 1)
    {
      clipsDataSource2 = [(JFXComposition *)self clipsDataSource];
      colorSpace = [clipsDataSource2 colorSpace];

      clipsDataSource3 = [(JFXComposition *)self clipsDataSource];
      LODWORD(clipsDataSource2) = [clipsDataSource3 isExporting];

      if (clipsDataSource2)
      {
        rec709GammaColorSpace = colorSpace;
      }

      else
      {
        currentDevice2 = [MEMORY[0x277D75418] currentDevice];
        jfx_displayColorSpace = [currentDevice2 jfx_displayColorSpace];

        currentDevice3 = [MEMORY[0x277D75418] currentDevice];
        v13 = [currentDevice3 jfx_recommendedDisplayColorSpaceForColorSpace:colorSpace];

        v14 = [MEMORY[0x277D415E0] jfx_compareAndChooseLesserColorSpace:jfx_displayColorSpace right:v13];
        currentDevice4 = [MEMORY[0x277D75418] currentDevice];
        rec709GammaColorSpace = [currentDevice4 jfx_recommendedDisplayColorSpaceForColorSpace:v14];
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  rec709GammaColorSpace = [MEMORY[0x277D415E0] rec709GammaColorSpace];
LABEL_9:

  return rec709GammaColorSpace;
}

- (void)JFX_finalizeVideoComposition
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)playerItemDidReachEnd:(id)end
{
  avPlayerItem = [(JFXComposition *)self avPlayerItem];
  customVideoCompositor = [avPlayerItem customVideoCompositor];

  [customVideoCompositor printAndClearStats];
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)timeRangeForClip:(SEL)clip
{
  v6 = a4;
  presentationTime = [v6 presentationTime];
  duration = [v6 duration];

  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  v9 = presentationTime;
  clipsDataSource = [(JFXComposition *)self clipsDataSource];
  CMTimeMake(&start, v9, [clipsDataSource timeScale]);
  clipsDataSource2 = [(JFXComposition *)self clipsDataSource];
  CMTimeMake(&v13, duration, [clipsDataSource2 timeScale]);
  CMTimeRangeMake(retstr, &start, &v13);

  return result;
}

- (int)outputFrameRate
{
  clipsDataSource = [(JFXComposition *)self clipsDataSource];
  frameRate = [clipsDataSource frameRate];

  return frameRate;
}

- (void)burnInPlaybackSettings:(id)settings
{
  outputNode = [settings outputNode];
}

- (BOOL)JFX_isContigousSplitClip:(id)clip nextClip:(id)nextClip
{
  clipCopy = clip;
  nextClipCopy = nextClip;
  mediaStartOffset = [nextClipCopy mediaStartOffset];
  mediaStartOffset2 = [clipCopy mediaStartOffset];
  if (mediaStartOffset == [clipCopy duration] + mediaStartOffset2)
  {
    mediaItem = [clipCopy mediaItem];
    mediaItem2 = [nextClipCopy mediaItem];
    v11 = [mediaItem isEqual:mediaItem2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)newInstructionGraphNodeForClip:(id)clip clipTransform:(CGAffineTransform *)transform compositionTrackID:(int)d requiresTweening:(BOOL *)tweening isContainedClip:(BOOL)containedClip
{
  v7 = *&d;
  clipCopy = clip;
  clipsDataSource = [(JFXComposition *)self clipsDataSource];
  [clipsDataSource renderSize];
  v13 = v12;
  v15 = v14;

  clipsDataSource2 = [(JFXComposition *)self clipsDataSource];
  [clipsDataSource2 frameSize];
  v18 = v17;
  v20 = v19;

  compositionOutputColorSpace = [(JFXComposition *)self compositionOutputColorSpace];
  v22 = [objc_alloc(objc_msgSend(objc_opt_class() "instructionBuilderClass"))];
  clipsDataSource3 = [(JFXComposition *)self clipsDataSource];
  isExporting = [clipsDataSource3 isExporting];

  [v22 setRenderingIntent:isExporting];
  playableEffectStack = [clipCopy playableEffectStack];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __115__JFXComposition_newInstructionGraphNodeForClip_clipTransform_compositionTrackID_requiresTweening_isContainedClip___block_invoke;
  v47[3] = &unk_278D79FA0;
  v49 = v13;
  v50 = v15;
  v26 = clipCopy;
  v48 = v26;
  [playableEffectStack enumerateObjectsUsingBlock:v47];

  liveTransformClip = [(JFXComposition *)self liveTransformClip];

  if (liveTransformClip && self->_liveTransformClip != v26)
  {
    v28 = JFXLog_playback();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [JFXComposition newInstructionGraphNodeForClip:clipTransform:compositionTrackID:requiresTweening:isContainedClip:];
    }
  }

  [(JFXComposition *)self timeRangeForClip:v26];
  liveTransformClip2 = [(JFXComposition *)self liveTransformClip];
  if (liveTransformClip2)
  {
    p_liveCompositionTransform = &self->_liveCompositionTransform;
  }

  else
  {
    p_liveCompositionTransform = 0;
  }

  clipCustomRendererMap = [(JFXComposition *)self clipCustomRendererMap];
  v32 = [clipCustomRendererMap objectForKey:v26];
  v33 = *&transform->c;
  v45[0] = *&transform->a;
  v45[1] = v33;
  v45[2] = *&transform->tx;
  v34 = [v22 instructionGraphForPlayableElement:v26 presentationTimeRange:v46 sourceTransform:v45 compositionTrackID:v7 liveTransform:p_liveCompositionTransform excludingEffectType:0 customRendererProperties:v32];

  if (tweening)
  {
    if ([(JFXPlayableElement *)v26 mediaType]== 2)
    {
      v35 = 1;
      goto LABEL_22;
    }

    if ([(JFXPlayableElement *)v26 mediaType]== 1)
    {
      if (v7 < 1)
      {
        v35 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      mediaType = [(JFXPlayableElement *)v26 mediaType];
      v35 = 0;
      if (v7 < 1 || mediaType != 9)
      {
LABEL_22:
        playableEffectStack2 = [(JFXPlayableElement *)v26 playableEffectStack];
        v41 = [playableEffectStack2 count];

        if (v41)
        {
          v42 = 1;
        }

        else
        {
          v42 = v35;
        }

        *tweening = v42;
        goto LABEL_26;
      }
    }

    mediaItem = [(JFXPlayableElement *)v26 mediaItem];
    [mediaItem frameRate];
    v39 = v38 * 1.1;
    v35 = v39 > 0.0 && v39 < [(JFXComposition *)self outputFrameRate];

    goto LABEL_22;
  }

LABEL_26:

  return v34;
}

void __115__JFXComposition_newInstructionGraphNodeForClip_clipTransform_compositionTrackID_requiresTweening_isContainedClip___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = a2;
  [v5 setRenderSize:{v3, v4}];
  [v5 setPlayableAspectRatio:{objc_msgSend(*(a1 + 32), "playableAspectRatio")}];
  [v5 setPlayableAspectRatioPreservationMode:{objc_msgSend(*(a1 + 32), "playableAspectRatioPreservationMode")}];
}

- (void)setDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_duration.epoch = duration->var3;
  *&self->_duration.value = v3;
}

- (CGSize)viewSize
{
  width = self->_viewSize.width;
  height = self->_viewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)previousRenderSize
{
  width = self->_previousRenderSize.width;
  height = self->_previousRenderSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PVTransformAnimationInfo)liveCompositionTransform
{
  v3 = *&self[4].time.value;
  *&retstr->time.value = *&self[3].scale;
  *&retstr->time.epoch = v3;
  *&retstr->translation.y = *&self[4].time.epoch;
  retstr->rotation = self[4].translation.y;
  return self;
}

- (void)setLiveCompositionTransform:(PVTransformAnimationInfo *)transform
{
  v3 = *&transform->time.value;
  v4 = *&transform->time.epoch;
  v5 = *&transform->translation.y;
  self->_liveCompositionTransform.rotation = transform->rotation;
  *&self->_liveCompositionTransform.time.epoch = v4;
  *&self->_liveCompositionTransform.translation.y = v5;
  *&self->_liveCompositionTransform.time.value = v3;
}

- (void)updateVideoAndAudioInstructionForState:previousInstructions:waitingForResource:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)rebuildCompositionInstructionsForVideoStillTitleCard:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_242A3B000, log, OS_LOG_TYPE_ERROR, "noteEffectChangeForClip: unsuported clipType...", buf, 2u);
}

- (void)noteEffectChangeForClip:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)validate
{
  videoCompositionInstructions = [self videoCompositionInstructions];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_242A3B000, v2, v3, "VideoComp:\n%@", v4, v5, v6, v7, v8);
}

- (void)newInstructionGraphNodeForClip:clipTransform:compositionTrackID:requiresTweening:isContainedClip:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end