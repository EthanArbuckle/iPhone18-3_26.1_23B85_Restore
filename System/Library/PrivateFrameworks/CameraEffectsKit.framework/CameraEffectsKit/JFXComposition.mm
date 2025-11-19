@interface JFXComposition
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- ($AC64C642040120CEEAD84DEEACA9A5CE)compositionItemsForState:(SEL)a3 compositionItem:(id)a4 backfillCompositionItem:(id *)a5;
- ($AC64C642040120CEEAD84DEEACA9A5CE)timeRangeForClip:(SEL)a3;
- (AVPlayerItem)playerItem;
- (BOOL)JFX_hasEffectThatRequiresCustomRendering;
- (BOOL)JFX_isContigousSplitClip:(id)a3 nextClip:(id)a4;
- (BOOL)emptySegments:(id)a3;
- (BOOL)removeTrackIfEmpty:(id)a3;
- (BOOL)validate;
- (CGAffineTransform)clipTransform:(SEL)a3;
- (CGSize)previousRenderSize;
- (CGSize)viewSize;
- (JFXComposition)initWithClipsDataSource:(id)a3;
- (PVColorSpace)compositionOutputColorSpace;
- (PVTransformAnimationInfo)liveCompositionTransform;
- (float)JFX_preferredRenderScale;
- (float)volumeForClip:(id)a3;
- (id)AVComposition;
- (id)animojiCustomRendererPropsForClip:(id)a3 currentCustomProperties:(id)a4 sharedMediaDataReaderManager:(id)a5;
- (id)buildClipList;
- (id)dissolveGraphNode:(id *)a3 from:(id)a4 to:(id)a5;
- (id)instructionToHideTrackID:(int)a3 whileHidingTrackID:(int)a4 timeRange:(id *)a5 requiresCARendering:(BOOL)a6;
- (id)instructionToShowClip:(id)a3 withTrackID:(int)a4 withTransform:(CGAffineTransform *)a5 timeRange:(id *)a6 requiresCARendering:(BOOL)a7;
- (id)instructionToShowImageWithClip:(id)a3 withTransform:(CGAffineTransform *)a4 timeRange:(id *)a5 requiresCARendering:(BOOL)a6;
- (id)newInstructionGraphNodeForClip:(id)a3 clipTransform:(CGAffineTransform *)a4 compositionTrackID:(int)a5 requiresTweening:(BOOL *)a6 isContainedClip:(BOOL)a7;
- (id)updateVideoAndAudioInstructionForState:(id)a3 previousInstructions:(id)a4 waitingForResource:(BOOL)a5;
- (int)outputFrameRate;
- (void)CFX_updateFaceTrackingPlaybackDelegateForClip:(id)a3 sharedMediaDataReaderManager:(id)a4;
- (void)JFX_applyPropertiesForCustomVideoCompositor:(id)a3;
- (void)JFX_finalizeVideoComposition;
- (void)JFX_setScrubbingModeForPlaybackDelegates:(BOOL)a3;
- (void)JFX_updateFaceTrackPropertiesForEffectsAtTime:(id *)a3;
- (void)JFX_updatePlaybackDelegatesForClip:(id)a3;
- (void)addBackTracksIfRemoved;
- (void)applyExportProperties;
- (void)applyPlayerItemProperties;
- (void)assetUsed:(id)a3;
- (void)burnInPlaybackSettings:(id)a3;
- (void)clearPlayerItemProperties;
- (void)dealloc;
- (void)markDirty;
- (void)noteEffectChangeForClip:(id)a3;
- (void)notifyPlaybackDidStopAtTime:(id *)a3;
- (void)playerItemDidReachEnd:(id)a3;
- (void)rebuildCompositionInstructionsForVideoStillTitleCard:(id)a3;
- (void)refreshAVComposition;
- (void)removeEmptyTracks;
- (void)removeTrackFromAudioMix:(int)a3;
- (void)setDuration:(id *)a3;
- (void)setLiveCompositionTransform:(PVTransformAnimationInfo *)a3;
- (void)setRenderScale;
- (void)setViewSize:(CGSize)a3;
- (void)update;
- (void)updateRenderSizeIfNeeded;
- (void)validate;
@end

@implementation JFXComposition

- (float)JFX_preferredRenderScale
{
  v3 = [(JFXComposition *)self clipsDataSource];
  v4 = [v3 isExporting];

  v5 = [(JFXComposition *)self JFX_hasEffectThatRequiresCustomRendering];
  v6 = 1.0;
  if ((v4 & 1) == 0 && !v5)
  {
    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v8 = [v7 integerForKey:@"VideoScaling"];

    if ((v8 - 1) <= 3)
    {
      v6 = flt_242B5B740[v8 - 1];
    }

    v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = [v9 integerForKey:@"PVVideoCompositingContextProxyModeKey"];

    if (!v10)
    {
      [(JFXComposition *)self viewSize];
      v12 = v11;
      v14 = v13;
      v15 = [(JFXComposition *)self clipsDataSource];
      [v15 imageScale];
      v17 = v12 * v16;
      [(JFXComposition *)self previousRenderSize];
      v19 = v17 / v18;

      v20 = [(JFXComposition *)self clipsDataSource];
      [v20 imageScale];
      v22 = v14 * v21;
      [(JFXComposition *)self previousRenderSize];
      v24 = v22 / v23;

      if (v19 >= v24)
      {
        v19 = v24;
      }

      if (v19 > 1.0)
      {
        v25 = [(JFXComposition *)self clipsDataSource];
        if ([v25 screenCanShow2160P])
        {
          v26 = [(JFXComposition *)self clipsDataSource];
          v27 = [v26 use2160Pcontent:0];

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
  v6 = [(JFXComposition *)self videoComposition];
  LODWORD(v5) = v4;
  [v6 setRenderScale:v5];
}

- (BOOL)JFX_hasEffectThatRequiresCustomRendering
{
  v3 = [(JFXComposition *)self clipsDataSource];
  v4 = [v3 count];

  if (!v4)
  {
    return 0;
  }

  v5 = [(JFXComposition *)self clipsDataSource];
  v6 = [v5 playableElementAtIndex:0];

  LOBYTE(v5) = [v6 hasPlayableEffectOfType:7];
  if (v5)
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

    v10 = [(JFXComposition *)self clipsDataSource];
    v11 = [v10 playableElementAtIndex:v9];

    LODWORD(v10) = [v11 hasPlayableEffectOfType:7];
    v8 = v9 + 1;
  }

  while (!v10);
  return v9 < v4;
}

- (JFXComposition)initWithClipsDataSource:(id)a3
{
  v5 = a3;
  v59.receiver = self;
  v59.super_class = JFXComposition;
  v6 = [(JFXComposition *)&v59 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clipsDataSource, a3);
    [(JFXComposition *)v7 markDirty];
    v8 = objc_alloc_init(MEMORY[0x277CE6548]);
    [(JFXComposition *)v7 setAvComposition:v8];

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(JFXComposition *)v7 setVideoCompositionInstructions:v9];

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(JFXComposition *)v7 setAudioMixParameters:v10];

    v11 = [JFXCompositionTrackGroup alloc];
    v12 = [(JFXComposition *)v7 clipsDataSource];
    v13 = -[JFXCompositionTrackGroup initWithLabel:timeScale:](v11, "initWithLabel:timeScale:", @"A", [v12 timeScale]);
    [(JFXComposition *)v7 setTrackGroupA:v13];

    v14 = [(JFXComposition *)v7 avComposition];
    v15 = *MEMORY[0x277CE5EA8];
    v16 = [v14 addMutableTrackWithMediaType:*MEMORY[0x277CE5EA8] preferredTrackID:1];
    v17 = [(JFXComposition *)v7 trackGroupA];
    [v17 setVideoTrack:v16];

    v18 = [(JFXComposition *)v7 avComposition];
    v19 = *MEMORY[0x277CE5E48];
    v20 = [v18 addMutableTrackWithMediaType:*MEMORY[0x277CE5E48] preferredTrackID:2];
    v21 = [(JFXComposition *)v7 trackGroupA];
    [v21 setAudioTrack:v20];

    v22 = [(JFXComposition *)v7 avComposition];
    v23 = [(JFXComposition *)v7 trackGroupA];
    [v23 setComposition:v22];

    v24 = [(JFXComposition *)v7 trackGroupA];
    *v52 = *MEMORY[0x277CC08F0];
    v51 = *v52;
    *&v52[16] = *(MEMORY[0x277CC08F0] + 16);
    v25 = *&v52[16];
    [v24 setFadeOutStart:v52];

    v26 = [(JFXComposition *)v7 trackGroupA];
    *v52 = v51;
    *&v52[16] = v25;
    [v26 setFadeOutDuration:v52];

    v27 = [JFXCompositionTrackGroup alloc];
    v28 = [(JFXComposition *)v7 clipsDataSource];
    v29 = -[JFXCompositionTrackGroup initWithLabel:timeScale:](v27, "initWithLabel:timeScale:", @"B", [v28 timeScale]);
    [(JFXComposition *)v7 setTrackGroupB:v29];

    v30 = [(JFXComposition *)v7 avComposition];
    v31 = [v30 addMutableTrackWithMediaType:v15 preferredTrackID:3];
    v32 = [(JFXComposition *)v7 trackGroupB];
    [v32 setVideoTrack:v31];

    v33 = [(JFXComposition *)v7 avComposition];
    v34 = [v33 addMutableTrackWithMediaType:v19 preferredTrackID:4];
    v35 = [(JFXComposition *)v7 trackGroupB];
    [v35 setAudioTrack:v34];

    v36 = [(JFXComposition *)v7 avComposition];
    v37 = [(JFXComposition *)v7 trackGroupB];
    [v37 setComposition:v36];

    v38 = [(JFXComposition *)v7 trackGroupB];
    *v52 = v51;
    *&v52[16] = v25;
    [v38 setFadeOutStart:v52];

    v39 = [(JFXComposition *)v7 trackGroupB];
    *v52 = v51;
    *&v52[16] = v25;
    [v39 setFadeOutDuration:v52];

    v40 = objc_alloc_init(MEMORY[0x277CE6568]);
    [(JFXComposition *)v7 setVideoComposition:v40];

    v41 = objc_alloc_init(MEMORY[0x277CE6538]);
    [(JFXComposition *)v7 setAudioMix:v41];

    LODWORD(v42) = 1.0;
    [(JFXComposition *)v7 setGlobalAudioVolume:v42];
    v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(JFXComposition *)v7 setAssetsUsed:v43];

    v44 = [(JFXComposition *)v7 videoComposition];
    v45 = [(JFXComposition *)v7 clipsDataSource];
    CMTimeMake(v52, 1, [v45 timeScale]);
    [v44 setFrameDuration:v52];

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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277CE60C0];
  v5 = [(JFXComposition *)self avPlayerItem];
  [v3 removeObserver:self name:v4 object:v5];

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
    v4 = [(JFXComposition *)self audioMixParameters];
    [v4 removeAllObjects];

    v5 = [(JFXComposition *)self videoCompositionInstructions];
    [v5 removeAllObjects];

    v6 = [(JFXComposition *)self assetsUsed];
    [v6 removeAllObjects];

    v7 = [(JFXComposition *)self trackGroupA];
    [v7 markDirty];

    v8 = [(JFXComposition *)self trackGroupB];
    [v8 markDirty];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = *MEMORY[0x277CE60C0];
    v11 = [(JFXComposition *)self avPlayerItem];
    [v9 removeObserver:self name:v10 object:v11];

    [(JFXComposition *)self setAvPlayerItem:0];
    v12 = [(JFXComposition *)self clipCustomRendererMap];
    [v12 removeAllObjects];

    v13 = [(JFXComposition *)self clipFaceTrackingPlaybackDelegates];
    [v13 removeAllObjects];

    objc_autoreleasePoolPop(v3);
  }
}

- (float)volumeForClip:(id)a3
{
  v4 = [a3 mediaItem];
  v5 = [v4 hasAudibleCharacteristic];

  if (!v5)
  {
    return 0.0;
  }

  [(JFXComposition *)self globalAudioVolume];
  return result;
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)compositionItemsForState:(SEL)a3 compositionItem:(id)a4 backfillCompositionItem:(id *)a5
{
  v27 = a5;
  v8 = a4;
  v9 = [v8 clip];
  v10 = [(JFXComposition *)self clipsDataSource];
  v11 = +[JFXCompositionItem compositionItemWithClip:timeScale:](JFXCompositionItem, "compositionItemWithClip:timeScale:", v9, [v10 timeScale]);

  v12 = [JFXCompositionItem alloc];
  v13 = [(JFXComposition *)self clipsDataSource];
  v14 = -[JFXCompositionItem initWithClip:timeScale:](v12, "initWithClip:timeScale:", v9, [v13 timeScale]);

  v15 = [v8 isLastClip];
  [(JFXCompositionItem *)v14 setIsFinalClip:v15];
  [v11 setIsFinalClip:v15];
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  memset(&v38, 0, sizeof(v38));
  LODWORD(v15) = [v9 duration];
  v16 = [(JFXComposition *)self clipsDataSource];
  DurationCMTimeFromFrameTime(v15, [v16 timeScale], &v38);

  LODWORD(v15) = [v9 mediaStartOffset];
  v17 = [(JFXComposition *)self clipsDataSource];
  DurationCMTimeFromFrameTime(v15, [v17 timeScale], &v37.start);
  memset(&v37.duration, 0, sizeof(v37.duration));

  v37.duration = v38;
  lhs = v37;
  [v11 setSourceTimeRange:&lhs];
  v37.duration = v38;
  *&lhs.start.value = *&v37.start.value;
  *&lhs.start.epoch = *&v37.start.epoch;
  *&lhs.duration.timescale = *&v38.timescale;
  [(JFXCompositionItem *)v14 setSourceTimeRange:&lhs];
  if ([v8 overlapLeft] > 0 || objc_msgSend(v8, "overlapRight") >= 1)
  {
    memset(&v35, 0, sizeof(v35));
    v18 = [v8 overlapLeft];
    v19 = [(JFXComposition *)self clipsDataSource];
    CMTimeFromFrameTime(v18, [v19 timeScale], &v35);

    memset(&v34, 0, sizeof(v34));
    v20 = [v8 overlapRight];
    v21 = [(JFXComposition *)self clipsDataSource];
    CMTimeFromFrameTime(v20, [v21 timeScale], &v34);

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
  *v27 = v11;
  v23 = v14;
  *a6 = v14;
  v24 = [v8 currentTrackGroup];
  v25 = v24;
  if (v24)
  {
    [v24 cursor];
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

- (id)instructionToHideTrackID:(int)a3 whileHidingTrackID:(int)a4 timeRange:(id *)a5 requiresCARendering:(BOOL)a6
{
  v6 = a6;
  v8 = objc_alloc_init(MEMORY[0x277D416C8]);
  v9 = *&a5->var0.var3;
  v11[0] = *&a5->var0.var0;
  v11[1] = v9;
  v11[2] = *&a5->var1.var1;
  [v8 setTimeRange:v11];
  [v8 setEnablePostProcessing:v6];

  return v8;
}

- (id)instructionToShowClip:(id)a3 withTrackID:(int)a4 withTransform:(CGAffineTransform *)a5 timeRange:(id *)a6 requiresCARendering:(BOOL)a7
{
  v7 = a7;
  v10 = *&a4;
  v12 = MEMORY[0x277D416C8];
  v13 = a3;
  v14 = objc_alloc_init(v12);
  v22 = 0;
  v15 = *&a5->c;
  v19 = *&a5->a;
  v20 = v15;
  v21 = *&a5->tx;
  v16 = [(JFXComposition *)self newInstructionGraphNodeForClip:v13 clipTransform:&v19 compositionTrackID:v10 requiresTweening:&v22 isContainedClip:0];

  [v14 setOutputNode:v16];
  [v14 setContainsTweening:v22];
  [v14 setIsFreezeFrame:0];
  v17 = *&a6->var0.var3;
  v19 = *&a6->var0.var0;
  v20 = v17;
  v21 = *&a6->var1.var1;
  [v14 setTimeRange:&v19];
  [v14 setEnablePostProcessing:v7];

  return v14;
}

- (id)instructionToShowImageWithClip:(id)a3 withTransform:(CGAffineTransform *)a4 timeRange:(id *)a5 requiresCARendering:(BOOL)a6
{
  v6 = a6;
  v16 = 0;
  v8 = *&a4->c;
  v13 = *&a4->a;
  v14 = v8;
  v15 = *&a4->tx;
  v9 = [(JFXComposition *)self newInstructionGraphNodeForClip:a3 clipTransform:&v13 compositionTrackID:0 requiresTweening:&v16 isContainedClip:0];
  v10 = objc_alloc_init(MEMORY[0x277D416C8]);
  [v10 setOutputNode:v9];
  v11 = *&a5->var0.var3;
  v13 = *&a5->var0.var0;
  v14 = v11;
  v15 = *&a5->var1.var1;
  [v10 setTimeRange:&v13];
  [v10 setEnablePostProcessing:v6];
  [v10 setContainsTweening:v16];

  return v10;
}

- (id)updateVideoAndAudioInstructionForState:(id)a3 previousInstructions:(id)a4 waitingForResource:(BOOL)a5
{
  v6 = a3;
  v7 = [v6 clip];
  v8 = [v7 mediaType];
  memset(&v44, 0, sizeof(v44));
  v9 = [v6 clip];
  [(JFXComposition *)self clipTransform:v9];

  switch(v8)
  {
    case 9:
      goto LABEL_4;
    case 2:
      if (v6)
      {
        [v6 videoCompTimeRange];
      }

      else
      {
        memset(&v43, 0, sizeof(v43));
      }

      v20 = [v6 clipRequiresCA];
      start = v44;
      v13 = [(JFXComposition *)self instructionToShowImageWithClip:v7 withTransform:&start timeRange:&v43 requiresCARendering:v20];
      v21 = [v6 currentTrackGroup];
      if (v6)
      {
        [v6 videoCompTimeRange];
      }

      else
      {
        v31 = 0;
        v30 = 0u;
      }

      *&v43.start.value = v30;
      v43.start.epoch = v31;
      [v21 requestVolume:&v43 atTime:0.0];

      v22 = [v6 alternateTrackGroup];
      if (v6)
      {
        [v6 videoCompTimeRange];
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
      }

      *&v43.start.value = v27;
      v43.start.epoch = v28;
      [v22 requestVolume:&v43 atTime:{0.0, v27, v28, v29}];
      goto LABEL_32;
    case 1:
LABEL_4:
      v10 = [v6 currentTrackGroup];
      v11 = [v10 actualVideoTrackID];
      if (v6)
      {
        [v6 videoCompTimeRange];
      }

      else
      {
        memset(&v43, 0, sizeof(v43));
      }

      v14 = [v6 clipRequiresCA];
      start = v44;
      v13 = [(JFXComposition *)self instructionToShowClip:v7 withTrackID:v11 withTransform:&start timeRange:&v43 requiresCARendering:v14];

      [(JFXComposition *)self volumeForClip:v7];
      v16 = v15;
      if (v15 <= 0.0)
      {
        v17 = [v6 currentTrackGroup];
        if (v6)
        {
LABEL_17:
          [v6 audioCompTimeRange];
          goto LABEL_28;
        }
      }

      else
      {
        if (v6)
        {
          [v6 audioCompTimeRange];
          v17 = [v6 currentTrackGroup];
          if (*(&v40 + 1) > 2)
          {
            [v6 audioCompTimeRange];
            *&start.start.value = v37;
            start.start.epoch = v38;
            v18 = [(JFXComposition *)self clipsDataSource];
            CMTimeMake(&duration, 1, [v18 timeScale]);
            CMTimeRangeMake(&v43, &start.start, &duration);
            *&v19 = v16;
            [v17 requestVolumeRampFromStartVolume:&v43 toEndVolume:0.0 timeRange:v19];

            memset(&v43, 0, sizeof(v43));
            goto LABEL_29;
          }

          goto LABEL_17;
        }

        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        v17 = [0 currentTrackGroup];
      }

      v35 = 0;
      v34 = 0u;
LABEL_28:
      *&v43.start.value = v34;
      v43.start.epoch = v35;
      [v17 requestVolume:&v43 atTime:{COERCE_DOUBLE(__PAIR64__(DWORD1(v34), LODWORD(v16)))}];

      memset(&v43, 0, sizeof(v43));
      if (!v6)
      {
        v23 = -1;
        goto LABEL_31;
      }

LABEL_29:
      [v6 audioCompTimeRange];
      [v6 audioCompTimeRange];
      v23 = v33 + v32 - 1;
LABEL_31:
      v24 = [(JFXComposition *)self clipsDataSource];
      CMTimeMake(&start.start, v23, [v24 timeScale]);
      v25 = [(JFXComposition *)self clipsDataSource];
      CMTimeMake(&duration, 1, [v25 timeScale]);
      CMTimeRangeMake(&v43, &start.start, &duration);

      v43.start.value = v43.duration.value + v43.start.value - 1;
      v22 = [v6 currentTrackGroup];
      start = v43;
      [v22 requestVolumeRampFromStartVolume:&start toEndVolume:COERCE_DOUBLE(__PAIR64__(v43.duration.flags timeRange:{LODWORD(v16))), 0.0}];
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

- (void)assetUsed:(id)a3
{
  v17 = a3;
  v4 = [v17 asset];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 URL];
      if (v6)
      {
        v7 = [(JFXComposition *)self assetsUsed];
        v8 = [v7 objectForKey:v6];

        if (!v8)
        {
          v9 = [(JFXComposition *)self assetsUsed];
          [v9 setObject:v5 forKey:v6];
        }
      }

      v10 = [v17 audioAssetOverwrite];

      if (v10)
      {
        v11 = [v17 audioAssetOverwrite];

        v12 = [v11 URL];

        if (v12)
        {
          v13 = [(JFXComposition *)self assetsUsed];
          v14 = [v13 objectForKey:v12];

          if (!v14)
          {
            v15 = [(JFXComposition *)self assetsUsed];
            v16 = [v17 audioAssetOverwrite];
            [v15 setObject:v16 forKey:v12];
          }
        }
      }

      else
      {
        v11 = v5;
        v12 = v6;
      }
    }
  }
}

- (BOOL)emptySegments:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) sourceURL];

        if (v8)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)removeTrackFromAudioMix:(int)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(JFXComposition *)self audioMixParameters];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 trackID] == a3)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = [(JFXComposition *)self audioMixParameters];
    [v12 removeObjectsInArray:v5];
  }
}

- (BOOL)removeTrackIfEmpty:(id)a3
{
  v4 = a3;
  v5 = [v4 segments];
  v6 = [(JFXComposition *)self emptySegments:v5];

  if (v6)
  {
    v7 = [(JFXComposition *)self avComposition];
    [v7 removeTrack:v4];

    [v4 setSegments:0];
    v8 = [v4 mediaType];
    v9 = [v8 isEqualToString:*MEMORY[0x277CE5E48]];

    if (v9)
    {
      -[JFXComposition removeTrackFromAudioMix:](self, "removeTrackFromAudioMix:", [v4 trackID]);
    }
  }

  return v6;
}

- (void)removeEmptyTracks
{
  v3 = [(JFXComposition *)self trackGroupA];
  v4 = [v3 audioTrack];
  v5 = [(JFXComposition *)self removeTrackIfEmpty:v4];

  if (v5)
  {
    v6 = [(JFXComposition *)self trackGroupA];
    v7 = [v6 audioTrack];
    -[JFXComposition logRemovedTrack:trackID:](self, "logRemovedTrack:trackID:", @"movie A audio", [v7 trackID]);

    v8 = [(JFXComposition *)self trackGroupA];
    [v8 setAudioTrack:0];
  }

  v9 = [(JFXComposition *)self trackGroupB];
  v10 = [v9 videoTrack];
  v11 = [(JFXComposition *)self removeTrackIfEmpty:v10];

  if (v11)
  {
    v12 = [(JFXComposition *)self trackGroupB];
    v13 = [v12 audioTrack];
    -[JFXComposition logRemovedTrack:trackID:](self, "logRemovedTrack:trackID:", @"movie B video", [v13 trackID]);

    v14 = [(JFXComposition *)self trackGroupB];
    [v14 setVideoTrack:0];
  }

  v15 = [(JFXComposition *)self trackGroupB];
  v16 = [v15 audioTrack];
  v17 = [(JFXComposition *)self removeTrackIfEmpty:v16];

  if (v17)
  {
    v18 = [(JFXComposition *)self trackGroupB];
    v19 = [v18 audioTrack];
    -[JFXComposition logRemovedTrack:trackID:](self, "logRemovedTrack:trackID:", @"movie B audio", [v19 trackID]);

    v20 = [(JFXComposition *)self trackGroupB];
    [v20 setAudioTrack:0];
  }
}

- (void)setViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v35 = *MEMORY[0x277D85DE8];
  if (self->_viewSize.width != a3.width || self->_viewSize.height != a3.height)
  {
    self->_viewSize = a3;
    v7 = [(JFXComposition *)self videoComposition];
    if (v7)
    {
      v8 = v7;
      v9 = [(JFXComposition *)self avPlayerItem];

      if (v9)
      {
        v10 = [(JFXComposition *)self videoComposition];
        v11 = [v10 instructions];

        v12 = [MEMORY[0x277CBEB18] array];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v13 = v11;
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
              [v12 addObject:v18];
            }

            v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v15);
        }

        v19 = [(JFXComposition *)self avPlayerItem];
        v20 = [v19 videoComposition];
        v21 = [v20 mutableCopy];
        [(JFXComposition *)self setVideoComposition:v21];

        v22 = [(JFXComposition *)self videoComposition];
        [v22 setInstructions:v12];

        v23 = [(JFXComposition *)self avPlayerItem];
        v24 = [(JFXComposition *)self videoComposition];
        [v23 setVideoComposition:v24];
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
  v4 = [(JFXComposition *)self avComposition];
  v5 = [(JFXComposition *)self trackGroupA];
  v6 = [v5 audioTrack];
  v7 = [v6 trackID];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __40__JFXComposition_addBackTracksIfRemoved__block_invoke;
  v25[3] = &unk_278D79F78;
  objc_copyWeak(&v27, &location);
  v8 = v3;
  v26 = v8;
  [v4 loadTrackWithTrackID:v7 completionHandler:v25];

  dispatch_group_enter(v8);
  v9 = [(JFXComposition *)self avComposition];
  v10 = [(JFXComposition *)self trackGroupB];
  v11 = [v10 videoTrack];
  v12 = [v11 trackID];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __40__JFXComposition_addBackTracksIfRemoved__block_invoke_2;
  v22[3] = &unk_278D79F78;
  objc_copyWeak(&v24, &location);
  v13 = v8;
  v23 = v13;
  [v9 loadTrackWithTrackID:v12 completionHandler:v22];

  dispatch_group_enter(v13);
  v14 = [(JFXComposition *)self avComposition];
  v15 = [(JFXComposition *)self trackGroupB];
  v16 = [v15 audioTrack];
  v17 = [v16 trackID];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __40__JFXComposition_addBackTracksIfRemoved__block_invoke_3;
  v19[3] = &unk_278D79F78;
  objc_copyWeak(&v21, &location);
  v18 = v13;
  v20 = v18;
  [v14 loadTrackWithTrackID:v17 completionHandler:v19];

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

- (CGAffineTransform)clipTransform:(SEL)a3
{
  v5 = a4;
  if ([v5 mediaType] == 1 || objc_msgSend(v5, "mediaType") == 9)
  {
    v6 = [v5 mediaItem];
    v7 = v6;
    if (v6)
    {
      [v6 transform];
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
  v4 = [(JFXComposition *)self clipsDataSource];
  v5 = [v4 count];

  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = [(JFXComposition *)self clipsDataSource];
      v8 = [v7 playableElementAtIndex:i];

      [v3 addObject:v8];
    }
  }

  return v3;
}

- (id)dissolveGraphNode:(id *)a3 from:(id)a4 to:(id)a5
{
  v7 = *MEMORY[0x277D419D0];
  v8 = MEMORY[0x277D415F8];
  v9 = a5;
  v10 = a4;
  v11 = [v8 newEffectWithID:v7];
  v12 = *&a3->var0.var3;
  v17[0] = *&a3->var0.var0;
  v17[1] = v12;
  v17[2] = *&a3->var1.var1;
  [v11 setEffectRange:v17];
  v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v19.x = 0.0;
  v19.y = 1.0;
  v14 = NSStringFromCGPoint(v19);
  [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x277D41A18]];

  [v11 setInspectableProperties:v13];
  v15 = [MEMORY[0x277D41620] newEffectNodeToTransitionFrom:v10 to:v9 effect:v11];

  return v15;
}

- (void)update
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(JFXComposition *)self buildClipList];
  [(JFXComposition *)self addBackTracksIfRemoved];
  v5 = *MEMORY[0x277CE5CE0];
  v6 = [(JFXComposition *)self trackGroupB];
  [v6 setPreferredAudioTimePitchAlgorithm:v5];

  v7 = [(JFXComposition *)self clipsDataSource];
  v8 = [v7 isExporting];
  v9 = [(JFXComposition *)self trackGroupA];
  [v9 setIsExporting:v8];

  v10 = [(JFXComposition *)self clipsDataSource];
  v11 = [v10 isExporting];
  v12 = [(JFXComposition *)self trackGroupB];
  [v12 setIsExporting:v11];

  v13 = objc_alloc_init(EditListCompositionState);
  v14 = [(JFXComposition *)self trackGroupA];
  [(EditListCompositionState *)v13 setCurrentTrackGroup:v14];

  v15 = [(JFXComposition *)self trackGroupB];
  [(EditListCompositionState *)v13 setAlternateTrackGroup:v15];

  memset(&v107, 0, sizeof(v107));
  v16 = [(JFXComposition *)self clipsDataSource];
  LODWORD(v11) = [v16 duration];
  v17 = [(JFXComposition *)self clipsDataSource];
  CMTimeFromFrameTime(v11, [v17 timeScale], &v107);

  v18 = [v4 count];
  [v4 lastObject];
  v83 = v82 = v18;
  if (!v18)
  {
    goto LABEL_45;
  }

  v80 = v3;
  v81 = v4;
  v19 = 0;
  v20 = 0;
  do
  {
    v21 = [v4 objectAtIndex:v19];
    [(EditListCompositionState *)v13 setClip:v21];

    v22 = [(EditListCompositionState *)v13 clip];
    [(JFXComposition *)self JFX_updatePlaybackDelegatesForClip:v22];

    v23 = [(EditListCompositionState *)v13 clip];
    [(EditListCompositionState *)v13 setClipRequiresCA:[(JFXComposition *)self CARenderingRequiredForClip:v23]];

    v24 = [(EditListCompositionState *)v13 clip];
    [(EditListCompositionState *)v13 setIsLastClip:v24 == v83];

    if (v19 && ([v4 objectAtIndex:v19 - 1], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v26 = v25;
      v27 = [v25 presentationTime];
      v85 = v26;
      LODWORD(v26) = [v26 duration] + v27;
      v28 = [(EditListCompositionState *)v13 clip];
      -[EditListCompositionState setOverlapLeft:](v13, "setOverlapLeft:", v26 - [v28 presentationTime]);
    }

    else
    {
      [(EditListCompositionState *)v13 setOverlapLeft:0];
      v85 = 0;
    }

    if (-[EditListCompositionState isLastClip](v13, "isLastClip") || ([v4 objectAtIndex:v19 + 1], (v29 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      [(EditListCompositionState *)v13 setOverlapRight:0];
    }

    else
    {
      v30 = v29;
      v31 = [(EditListCompositionState *)v13 clip];
      v32 = [v31 presentationTime];
      v33 = [(EditListCompositionState *)v13 clip];
      -[EditListCompositionState setOverlapRight:](v13, "setOverlapRight:", [v33 duration] + v32 - objc_msgSend(v30, "presentationTime"));
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
    v36 = [(JFXComposition *)self clipsDataSource];
    CMTimeMake(&v102, 0, [v36 timeScale]);
    lhs.start = v102;
    [v34 setAudioStartOffset:&lhs];

    v37 = [(JFXComposition *)self clipsDataSource];
    CMTimeMake(&v101, 0, [v37 timeScale]);
    lhs.start = v101;
    [v34 setAudioEndOffset:&lhs];

    lhs = v103;
    [(EditListCompositionState *)v13 setAudioCompTimeRange:&lhs];
    v38 = [(EditListCompositionState *)v13 clip];
    v39 = [v38 mediaType] == 2;

    v40 = [(EditListCompositionState *)v13 currentTrackGroup];
    [v40 applyCompositionItem:v34 skipAudio:v39];

    v41 = [(EditListCompositionState *)v13 alternateTrackGroup];
    [v41 applyCompositionItem:v35 skipAudio:1];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(JFXComposition *)self assetUsed:v34];
    }

    v42 = [(JFXComposition *)self clipsDataSource];
    v84 = v35;
    if ([v42 isExporting])
    {

LABEL_19:
      v44 = 0;
      goto LABEL_20;
    }

    v43 = [v34 hasVideoContent];

    if (!v43)
    {
      goto LABEL_19;
    }

    v44 = [v34 isWaitingForResource];
LABEL_20:
    memset(&v99, 0, sizeof(v99));
    v45 = [(EditListCompositionState *)v13 overlapLeft];
    v46 = [(JFXComposition *)self clipsDataSource];
    CMTimeFromFrameTime(v45, [v46 timeScale], &v99);

    if ([(EditListCompositionState *)v13 overlapLeft]> 0 || [(EditListCompositionState *)v13 overlapRight]>= 1)
    {
      memset(start, 0, 24);
      v47 = [(EditListCompositionState *)v13 overlapRight];
      v48 = [(JFXComposition *)self clipsDataSource];
      CMTimeFromFrameTime(v47, [v48 timeScale], &start[0].start);

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
    v49 = [(JFXComposition *)self updateVideoAndAudioInstructionForState:v13 previousInstructions:v20 waitingForResource:v44];
    if ([(EditListCompositionState *)v13 overlapLeft]>= 1)
    {
      v50 = objc_alloc_init(MEMORY[0x277D416C8]);
      memset(&lhs, 0, sizeof(lhs));
      v51 = [(EditListCompositionState *)v13 clip];
      v52 = [v51 presentationTime];
      v53 = [(JFXComposition *)self clipsDataSource];
      CMTimeFromFrameTime(v52, [v53 timeScale], &start[0].start);
      v98 = v99;
      CMTimeRangeMake(&lhs, &start[0].start, &v98);

      start[0] = lhs;
      [v50 setTimeRange:start];
      v54 = [v86 outputNode];
      v55 = [v49 outputNode];
      start[0] = lhs;
      v56 = [(JFXComposition *)self dissolveGraphNode:start from:v54 to:v55];

      [v50 setOutputNode:v56];
      v57 = [(EditListCompositionState *)v13 clipRequiresCA]|| [(JFXComposition *)self CARenderingRequiredForClip:v85];
      [v50 setContainsTweening:v57];
      [v50 setIsFreezeFrame:0];
      v58 = [(JFXComposition *)self videoCompositionInstructions];
      [v58 addObject:v50];

      v4 = v81;
    }

    if (v49)
    {
      v59 = [(JFXComposition *)self videoCompositionInstructions];
      [v59 addObject:v49];
    }

    v60 = [(JFXComposition *)self videoCompositionInstructions];
    if ([v60 count] == 1)
    {
      v61 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v62 = [v61 BOOLForKey:@"burnInExportSettings"];

      if (!v62)
      {
        goto LABEL_43;
      }

      v60 = [(JFXComposition *)self videoCompositionInstructions];
      v63 = [v60 objectAtIndexedSubscript:0];
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
  v64 = [(EditListCompositionState *)v13 currentTrackGroup];
  v65 = v64;
  if (v64)
  {
    [v64 cursor];
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
    v66 = [(EditListCompositionState *)v13 currentTrackGroup];
    lhs.start = v107;
    [v66 applyPaddingToTime:&lhs];

    v67 = [(EditListCompositionState *)v13 alternateTrackGroup];
    lhs.start = v107;
    [v67 applyPaddingToTime:&lhs];

    v68 = [(JFXComposition *)self videoCompositionInstructions];
    v69 = [(EditListCompositionState *)v13 currentTrackGroup];
    v70 = [v69 usableVideoTrackID];
    v71 = [(EditListCompositionState *)v13 alternateTrackGroup];
    v72 = [v71 usableVideoTrackID];
    lhs = v103;
    v73 = [(JFXComposition *)self instructionToHideTrackID:v70 whileHidingTrackID:v72 timeRange:&lhs requiresCARendering:1];
    [v68 addObject:v73];
  }

  v74 = [(EditListCompositionState *)v13 currentTrackGroup];
  v103.start = v107;
  [v74 commitPendingVolumeToTime:&v103];

  v75 = [(EditListCompositionState *)v13 alternateTrackGroup];
  v103.start = v107;
  [v75 commitPendingVolumeToTime:&v103];

  v76 = [(EditListCompositionState *)v13 currentTrackGroup];
  v77 = [(JFXComposition *)self audioMixParameters];
  [v76 applyAudioMixParameters:v77];

  v78 = [(EditListCompositionState *)v13 alternateTrackGroup];
  v79 = [(JFXComposition *)self audioMixParameters];
  [v78 applyAudioMixParameters:v79];

  [(JFXComposition *)self setNeedsUpdate:0];
  objc_autoreleasePoolPop(v3);
}

- (void)rebuildCompositionInstructionsForVideoStillTitleCard:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(JFXComposition *)self clipsDataSource];
  v6 = [v5 timeScale];

  v7 = [(JFXComposition *)self avPlayerItem];

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    memset(&v50, 0, sizeof(v50));
    CMTimeMake(&start.start, [v4 presentationTime], v6);
    CMTimeMake(&duration.start, [v4 duration], v6);
    CMTimeRangeMake(&v50, &start.start, &duration.start);
    v9 = [v4 mediaType];
    [(JFXComposition *)self JFX_updatePlaybackDelegatesForClip:v4];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v10 = [(JFXComposition *)self avPlayerItem];
    v11 = [v10 videoComposition];
    v12 = [v11 instructions];

    v13 = v8;
    obj = v12;
    v14 = [v12 countByEnumeratingWithState:&v46 objects:v51 count:16];
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

        if (v17 == -1 && v9 <= 9 && ((1 << v9) & 0x20A) != 0)
        {
          v20 = [v19 requiredSourceTrackIDs];
          v21 = [v20 firstObject];
          v22 = [v21 intValue];

          if (v22)
          {
            v17 = v22;
          }

          else
          {
            v17 = 3;
          }

          v13 = v39;
        }

        memset(&start, 0, sizeof(start));
        [(JFXComposition *)self clipTransform:v4];
        if (v9 > 2)
        {
          if (v9 != 9 && v9 != 3)
          {
            goto LABEL_39;
          }
        }

        else if (v9 != 1)
        {
          if (v9 == 2)
          {
            if (v19)
            {
              [v19 timeRange];
            }

            else
            {
              memset(&duration, 0, sizeof(duration));
            }

            v29 = [(JFXComposition *)self CARenderingRequiredForClip:v4];
            v43 = start;
            v25 = [(JFXComposition *)self instructionToShowImageWithClip:v4 withTransform:&v43 timeRange:&duration requiresCARendering:v29];
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

        v23 = [(JFXComposition *)self CARenderingRequiredForClip:v4];
        v43 = start;
        v24 = [(JFXComposition *)self instructionToShowClip:v4 withTrackID:v17 withTransform:&v43 timeRange:&duration requiresCARendering:v23];
        v25 = v24;
        if (v9 == 3)
        {
          [v24 setContainsTweening:1];
        }

        if (v25)
        {
LABEL_32:
          if (![v4 presentationTime])
          {
            v26 = [v25 outputNode];
            if (v26)
            {
              v27 = v26;
              v28 = [MEMORY[0x277CBEBD0] standardUserDefaults];
              v38 = [v28 BOOLForKey:@"burnInExportSettings"];

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

        v30 = [(JFXComposition *)self avPlayerItem];
        v31 = [v30 videoComposition];
        v32 = [v31 mutableCopy];

        [v32 setInstructions:v13];
        [(JFXComposition *)self JFX_preferredRenderScale];
        v34 = v33;
        [v32 renderScale];
        if (vabds_f32(v34, *&v35) >= 0.0001)
        {
          *&v35 = v34;
          [v32 setRenderScale:v35];
        }

        v36 = [(JFXComposition *)self avPlayerItem];
        [v36 setVideoComposition:v32];

        [(JFXComposition *)self setVideoComposition:v32];
        [(JFXComposition *)self setVideoCompositionInstructions:v13];
        v37 = [(JFXComposition *)self videoComposition];
        [v37 setInstructions:v13];

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

- (void)JFX_updatePlaybackDelegatesForClip:(id)a3
{
  v11 = a3;
  v4 = [[JFXSharedMediaDataReaderManager alloc] initWithPlayableElement:v11];
  v5 = [(JFXComposition *)self clipCustomRendererMap];
  v6 = [v5 objectForKey:v11];

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [v6 objectForKeyedSubscript:@"JFXCustomRenderingPropertiesKey_Animoji"];
  v9 = [(JFXComposition *)self animojiCustomRendererPropsForClip:v11 currentCustomProperties:v8 sharedMediaDataReaderManager:v4];

  if (v9)
  {
    [v7 setObject:v9 forKeyedSubscript:@"JFXCustomRenderingPropertiesKey_Animoji"];
  }

  [(JFXComposition *)self CFX_updateFaceTrackingPlaybackDelegateForClip:v11 sharedMediaDataReaderManager:v4];
  v10 = [(JFXComposition *)self clipCustomRendererMap];
  [v10 setObject:v7 forKey:v11];
}

- (id)animojiCustomRendererPropsForClip:(id)a3 currentCustomProperties:(id)a4 sharedMediaDataReaderManager:(id)a5
{
  v32[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 playableEffectsOfType:7];
  if ([v11 count])
  {
    [v8 playableMediaSizeWithTransform];
    v13 = v12;
    v15 = v14;
    v16 = [(JFXComposition *)self clipsDataSource];
    [v16 renderSize];
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

    if (v9 && ([v9 renderingDelegate], (v26 = objc_claimAutoreleasedReturnValue()) != 0) || ((objc_msgSend(v8, "isVideo") & 1) != 0 || objc_msgSend(v8, "isStill")) && (v26 = -[JFXAnimojiPlaybackDelegate initWithPlayableElement:sharedMediaDataReaderManager:]([JFXAnimojiPlaybackDelegate alloc], "initWithPlayableElement:sharedMediaDataReaderManager:", v8, v10)) != 0)
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

- (void)CFX_updateFaceTrackingPlaybackDelegateForClip:(id)a3 sharedMediaDataReaderManager:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v45 = v6;
  [v6 playableEffectsOfType:2];
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

        v13 = [*(*(&v50 + 1) + 8 * i) trackingProps];
        v14 = [v13 currentTrackingType];

        if (v14)
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

  v16 = [(JFXComposition *)self clipFaceTrackingPlaybackDelegates];
  v17 = v45;
  v18 = [v16 objectForKey:v45];

  if (v15)
  {
    if (v18)
    {
      goto LABEL_20;
    }

    if (([v45 isVideo] & 1) != 0 || objc_msgSend(v45, "isStill"))
    {
      v19 = [JFXFaceTrackingPlaybackDelegate alloc];
      v20 = [(JFXComposition *)self clipsDataSource];
      [v20 renderSize];
      v21 = v19;
      v17 = v45;
      v18 = [(JFXFaceTrackingPlaybackDelegate *)v21 initWithPlayableElement:v45 sharedMediaDataReaderManager:v7 outputSize:?];
    }

    else
    {
      v18 = 0;
    }

    v22 = [(JFXComposition *)self clipFaceTrackingPlaybackDelegates];
    [v22 setObject:v18 forKey:v17];
  }

  else
  {
    v22 = [(JFXComposition *)self clipFaceTrackingPlaybackDelegates];
    [v22 removeObjectForKey:v45];
  }

LABEL_20:
  v44 = v18;
  v43 = v7;
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
        v29 = [v28 trackingProps];
        v30 = [v28 renderEffect];
        [v30 removeAllTimedPropertiesDelegates];

        v31 = JFXLog_DebugFaceTrackingPlayback();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v39 = [v28 renderEffect];
          v40 = [v45 uuid];
          *buf = 134218242;
          v55 = v39;
          v56 = 2112;
          v57 = v40;
          _os_log_debug_impl(&dword_242A3B000, v31, OS_LOG_TYPE_DEBUG, "remove timedProperties delegate for PVEffect %p on clip %@", buf, 0x16u);
        }

        if ([v29 currentTrackingType] && (objc_msgSend(v28, "isEditingFaceTrackingTransforms") & 1) == 0)
        {
          v32 = objc_opt_new();
          v33 = MEMORY[0x277CCABB0];
          v34 = [v45 mediaItem];
          v35 = [v33 numberWithInteger:{objc_msgSend(v34, "interfaceOrientationForDisplay")}];
          [v32 setObject:v35 forKeyedSubscript:@"JFXFaceTrackingKey_InterfaceOrientation"];

          v36 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v29, "currentTrackingType")}];
          [v32 setObject:v36 forKeyedSubscript:@"JFXFaceTrackingKey_TrackingType"];

          v37 = JFXLog_DebugFaceTrackingPlayback();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            v41 = [v28 renderEffect];
            v42 = [v45 uuid];
            *buf = 134218498;
            v55 = v44;
            v56 = 2048;
            v57 = v41;
            v58 = 2112;
            v59 = v42;
            _os_log_debug_impl(&dword_242A3B000, v37, OS_LOG_TYPE_DEBUG, "add timedProperties delegate %p for PVEffect %p on clip %@", buf, 0x20u);
          }

          v38 = [v28 renderEffect];
          [v38 addTimedPropertiesDelegate:v44 userContext:v32];
        }

        ++v27;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v46 objects:v60 count:16];
    }

    while (v25);
  }
}

- (void)noteEffectChangeForClip:(id)a3
{
  v4 = a3;
  v5 = [v4 mediaType];
  if (v5 > 9 || ((1 << v5) & 0x20E) == 0)
  {
    v7 = JFXLog_playback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [JFXComposition noteEffectChangeForClip:];
    }
  }

  else
  {
    [(JFXComposition *)self rebuildCompositionInstructionsForVideoStillTitleCard:v4];
  }
}

- (void)notifyPlaybackDidStopAtTime:(id *)a3
{
  [(JFXComposition *)self JFX_setScrubbingModeForPlaybackDelegates:1];
  v5 = *a3;
  [(JFXComposition *)self notifyNeedsEffectPropertiesUpdatedForPlaybackTime:&v5];
}

- (void)JFX_updateFaceTrackPropertiesForEffectsAtTime:(id *)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = [(JFXComposition *)self clipsDataSource];
  v6 = [v5 count];

  if (v6 >= 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = [(JFXComposition *)self clipsDataSource];
      v9 = [v8 playableElementAtIndex:v7];

      [(JFXComposition *)self timeRangeForClip:v9];
      time = *a3;
      if (CMTimeRangeContainsTime(&range, &time))
      {
        break;
      }

      if (v6 == ++v7)
      {
        return;
      }
    }

    v10 = [(JFXComposition *)self clipFaceTrackingPlaybackDelegates];
    v11 = [v10 objectForKey:v9];

    if (v11)
    {
      v12 = [v9 mediaItem];
      v13 = [v12 interfaceOrientationForDisplay];

      v14 = [v9 playableEffectsOfType:2];
      *&range.start.value = *&a3->var0;
      range.start.epoch = a3->var3;
      v32 = v13;
      v33 = v11;
      v15 = [v11 faceTrackingTransformAtTime:&range forDisplayingMediaAtInterfaceOrientation:v13];
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
              *&range.start.value = *&a3->var0;
              range.start.epoch = a3->var3;
              Seconds = CMTimeGetSeconds(&range.start);
              v24 = [v21 renderEffect];
              [v9 uuid];
              v25 = v9;
              v27 = v26 = a3;
              LODWORD(range.start.value) = 134218498;
              *(&range.start.value + 4) = Seconds;
              LOWORD(range.start.flags) = 2048;
              *(&range.start.flags + 2) = v24;
              HIWORD(range.start.epoch) = 2112;
              range.duration.value = v27;
              _os_log_debug_impl(&dword_242A3B000, v22, OS_LOG_TYPE_DEBUG, "update face tracking properties at time %f for PVEffect %p on clip %@", &range, 0x20u);

              a3 = v26;
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

      *&range.start.value = *&a3->var0;
      range.start.epoch = a3->var3;
      v11 = v33;
      v28 = [v33 arDataAtTime:&range forDisplayingMediaAtInterfaceOrientation:v32];
    }

    else
    {
      v28 = 0;
    }

    v29 = +[JFXVideoCameraController sharedInstance];
    [v29 setMostRecentARMetadata:v28];

    v30 = [v28 faceAnchor];
    v31 = +[JFXVideoCameraController sharedInstance];
    [v31 setHasValidFaceData:v30 != 0];
  }
}

- (void)JFX_setScrubbingModeForPlaybackDelegates:(BOOL)a3
{
  v3 = a3;
  v5 = [(JFXComposition *)self clipsDataSource];
  v6 = [v5 count];

  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [(JFXComposition *)self clipsDataSource];
      v9 = [v8 playableElementAtIndex:i];

      v10 = [(JFXComposition *)self clipCustomRendererMap];
      v11 = [v10 objectForKey:v9];

      v12 = [(JFXComposition *)self clipFaceTrackingPlaybackDelegates];
      v13 = [v12 objectForKey:v9];

      [v13 setIsScrubbing:v3];
      v14 = [v11 objectForKeyedSubscript:@"JFXCustomRenderingPropertiesKey_Animoji"];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 renderingDelegate];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v16 setIsScrubbing:v3];
        }
      }
    }
  }
}

- (id)AVComposition
{
  v3 = [(JFXComposition *)self avComposition];
  if (!v3 || (v4 = v3, v5 = [(JFXComposition *)self needsUpdate], v4, v5))
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

  v5 = [(JFXComposition *)self avComposition];
  if (v5)
  {
    v7 = v5;
    [v5 duration];
    v5 = v7;
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

  v3 = [(JFXComposition *)self trackGroupA];
  v4 = [v3 validate];

  v5 = [(JFXComposition *)self trackGroupB];
  v6 = [v5 validate];

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

  return v6 & v4;
}

- (void)updateRenderSizeIfNeeded
{
  v3 = [(JFXComposition *)self clipsDataSource];
  [v3 renderSize];
  v5 = v4;
  v7 = v6;

  [(JFXComposition *)self previousRenderSize];
  if (v9 != v5 || v8 != v7)
  {
    v11 = [(JFXComposition *)self videoComposition];
    [v11 setRenderSize:{v5, v7}];

    [(JFXComposition *)self setPreviousRenderSize:v5, v7];
  }
}

- (void)refreshAVComposition
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(JFXComposition *)self trackGroupA];
  v5 = [(JFXComposition *)self assetsUsed];
  [v4 apply:v5];

  v6 = [(JFXComposition *)self trackGroupB];
  v7 = [(JFXComposition *)self assetsUsed];
  [v6 apply:v7];

  [(JFXComposition *)self removeEmptyTracks];
  v8 = [(JFXComposition *)self videoComposition];
  v9 = [(JFXComposition *)self videoCompositionInstructions];
  [v8 setInstructions:v9];

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

  v3 = [(JFXComposition *)self avPlayerItem];

  if (!v3)
  {
    [(JFXComposition *)self refreshAVComposition];
    v4 = MEMORY[0x277CE65B0];
    v5 = [(JFXComposition *)self avComposition];
    v6 = [v5 copy];
    v7 = [v4 playerItemWithAsset:v6];
    [(JFXComposition *)self setAvPlayerItem:v7];

    v8 = [(JFXComposition *)self avPlayerItem];
    [v8 setSeekingWaitsForVideoCompositionRendering:1];

    v9 = [(JFXComposition *)self avPlayerItem];
    LOBYTE(v5) = objc_opt_respondsToSelector();

    if (v5)
    {
      v10 = [(JFXComposition *)self avPlayerItem];
      [v10 setAppliesPerFrameHDRDisplayMetadata:0];
    }

    v11 = *MEMORY[0x277CE5CD8];
    v12 = [(JFXComposition *)self avPlayerItem];
    [v12 setAudioTimePitchAlgorithm:v11];
  }

  return [(JFXComposition *)self avPlayerItem];
}

- (void)JFX_applyPropertiesForCustomVideoCompositor:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(JFXComposition *)self parentCode]!= -1)
    {
      [v4 setParentCode:{-[JFXComposition parentCode](self, "parentCode")}];
    }

    v5 = [(JFXComposition *)self clipsDataSource];
    v6 = [v5 isExporting];

    if (v6)
    {
      [v4 setImmediatelyCancelPendingRequests:1];
    }

    v7 = [v4 videoCompositingContext];
    v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [v8 dictionaryRepresentation];
    [v7 setContext:v9];

    v10 = [(JFXComposition *)self compositionOutputColorSpace];
    [v4 setOutputColorSpace:v10];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277CE60C0];
  v5 = [(JFXComposition *)self avPlayerItem];
  [v3 addObserver:self selector:sel_playerItemDidReachEnd_ name:v4 object:v5];

  v6 = [(JFXComposition *)self avPlayerItem];
  v7 = [(JFXComposition *)self videoComposition];
  [v6 setVideoComposition:v7];

  v8 = [(JFXComposition *)self avPlayerItem];
  v9 = [v8 customVideoCompositor];

  [(JFXComposition *)self JFX_applyPropertiesForCustomVideoCompositor:v9];
}

- (void)clearPlayerItemProperties
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277CE60C0];
  v5 = [(JFXComposition *)self avPlayerItem];
  [v3 removeObserver:self name:v4 object:v5];

  [(JFXComposition *)self markDirty];
  v6 = [(JFXComposition *)self videoComposition];
  [v6 setCustomVideoCompositorClass:0];

  v7 = objc_alloc_init(MEMORY[0x277CE6568]);
  [(JFXComposition *)self setVideoComposition:v7];

  v9 = [(JFXComposition *)self avPlayerItem];
  v8 = [(JFXComposition *)self videoComposition];
  [v9 setVideoComposition:v8];
}

- (PVColorSpace)compositionOutputColorSpace
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  if ([v3 jfx_supportsHDR])
  {
    v4 = [(JFXComposition *)self clipsDataSource];
    v5 = [v4 count];

    if (v5 >= 1)
    {
      v6 = [(JFXComposition *)self clipsDataSource];
      v7 = [v6 colorSpace];

      v8 = [(JFXComposition *)self clipsDataSource];
      LODWORD(v6) = [v8 isExporting];

      if (v6)
      {
        v9 = v7;
      }

      else
      {
        v10 = [MEMORY[0x277D75418] currentDevice];
        v11 = [v10 jfx_displayColorSpace];

        v12 = [MEMORY[0x277D75418] currentDevice];
        v13 = [v12 jfx_recommendedDisplayColorSpaceForColorSpace:v7];

        v14 = [MEMORY[0x277D415E0] jfx_compareAndChooseLesserColorSpace:v11 right:v13];
        v15 = [MEMORY[0x277D75418] currentDevice];
        v9 = [v15 jfx_recommendedDisplayColorSpaceForColorSpace:v14];
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  v9 = [MEMORY[0x277D415E0] rec709GammaColorSpace];
LABEL_9:

  return v9;
}

- (void)JFX_finalizeVideoComposition
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)playerItemDidReachEnd:(id)a3
{
  v3 = [(JFXComposition *)self avPlayerItem];
  v4 = [v3 customVideoCompositor];

  [v4 printAndClearStats];
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)timeRangeForClip:(SEL)a3
{
  v6 = a4;
  v7 = [v6 presentationTime];
  v8 = [v6 duration];

  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  v9 = v7;
  v10 = [(JFXComposition *)self clipsDataSource];
  CMTimeMake(&start, v9, [v10 timeScale]);
  v11 = [(JFXComposition *)self clipsDataSource];
  CMTimeMake(&v13, v8, [v11 timeScale]);
  CMTimeRangeMake(retstr, &start, &v13);

  return result;
}

- (int)outputFrameRate
{
  v2 = [(JFXComposition *)self clipsDataSource];
  v3 = [v2 frameRate];

  return v3;
}

- (void)burnInPlaybackSettings:(id)a3
{
  v3 = [a3 outputNode];
}

- (BOOL)JFX_isContigousSplitClip:(id)a3 nextClip:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 mediaStartOffset];
  v8 = [v5 mediaStartOffset];
  if (v7 == [v5 duration] + v8)
  {
    v9 = [v5 mediaItem];
    v10 = [v6 mediaItem];
    v11 = [v9 isEqual:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)newInstructionGraphNodeForClip:(id)a3 clipTransform:(CGAffineTransform *)a4 compositionTrackID:(int)a5 requiresTweening:(BOOL *)a6 isContainedClip:(BOOL)a7
{
  v7 = *&a5;
  v10 = a3;
  v11 = [(JFXComposition *)self clipsDataSource];
  [v11 renderSize];
  v13 = v12;
  v15 = v14;

  v16 = [(JFXComposition *)self clipsDataSource];
  [v16 frameSize];
  v18 = v17;
  v20 = v19;

  v21 = [(JFXComposition *)self compositionOutputColorSpace];
  v22 = [objc_alloc(objc_msgSend(objc_opt_class() "instructionBuilderClass"))];
  v23 = [(JFXComposition *)self clipsDataSource];
  v24 = [v23 isExporting];

  [v22 setRenderingIntent:v24];
  v25 = [v10 playableEffectStack];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __115__JFXComposition_newInstructionGraphNodeForClip_clipTransform_compositionTrackID_requiresTweening_isContainedClip___block_invoke;
  v47[3] = &unk_278D79FA0;
  v49 = v13;
  v50 = v15;
  v26 = v10;
  v48 = v26;
  [v25 enumerateObjectsUsingBlock:v47];

  v27 = [(JFXComposition *)self liveTransformClip];

  if (v27 && self->_liveTransformClip != v26)
  {
    v28 = JFXLog_playback();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [JFXComposition newInstructionGraphNodeForClip:clipTransform:compositionTrackID:requiresTweening:isContainedClip:];
    }
  }

  [(JFXComposition *)self timeRangeForClip:v26];
  v29 = [(JFXComposition *)self liveTransformClip];
  if (v29)
  {
    p_liveCompositionTransform = &self->_liveCompositionTransform;
  }

  else
  {
    p_liveCompositionTransform = 0;
  }

  v31 = [(JFXComposition *)self clipCustomRendererMap];
  v32 = [v31 objectForKey:v26];
  v33 = *&a4->c;
  v45[0] = *&a4->a;
  v45[1] = v33;
  v45[2] = *&a4->tx;
  v34 = [v22 instructionGraphForPlayableElement:v26 presentationTimeRange:v46 sourceTransform:v45 compositionTrackID:v7 liveTransform:p_liveCompositionTransform excludingEffectType:0 customRendererProperties:v32];

  if (a6)
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
      v36 = [(JFXPlayableElement *)v26 mediaType];
      v35 = 0;
      if (v7 < 1 || v36 != 9)
      {
LABEL_22:
        v40 = [(JFXPlayableElement *)v26 playableEffectStack];
        v41 = [v40 count];

        if (v41)
        {
          v42 = 1;
        }

        else
        {
          v42 = v35;
        }

        *a6 = v42;
        goto LABEL_26;
      }
    }

    v37 = [(JFXPlayableElement *)v26 mediaItem];
    [v37 frameRate];
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

- (void)setDuration:(id *)a3
{
  v3 = *&a3->var0;
  self->_duration.epoch = a3->var3;
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

- (void)setLiveCompositionTransform:(PVTransformAnimationInfo *)a3
{
  v3 = *&a3->time.value;
  v4 = *&a3->time.epoch;
  v5 = *&a3->translation.y;
  self->_liveCompositionTransform.rotation = a3->rotation;
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
  v1 = [a1 videoCompositionInstructions];
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