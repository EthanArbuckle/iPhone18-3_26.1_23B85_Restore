@interface JFXCompositionTrackGroup
+ (id)visualDescriptionForSegments:(id)segments;
- (BOOL)commitPendingVolumeToTime:(id *)time;
- (BOOL)containsAudioSegments;
- (BOOL)containsSegments;
- (BOOL)containsVideoSegments;
- (BOOL)requestVolume:(float)volume atTime:(id *)time;
- (BOOL)requestVolumeRampFromStartVolume:(float)volume toEndVolume:(float)endVolume timeRange:(id *)range;
- (BOOL)requestVolumeRampFromStartVolume:(float)volume toEndVolume:(float)endVolume timeRange:(id *)range fillEmptySegment:(BOOL)segment;
- (BOOL)shouldCommitVolume:(float)volume;
- (BOOL)validate;
- (JFXCompositionTrackGroup)initWithLabel:(id)label timeScale:(int)scale;
- (float)linearFadeOutValueForTime:(id *)time;
- (float)setFadedVolumeRampFromStartVolume:(float)volume toEndVolume:(float)endVolume timeRange:(id *)range;
- (id)applyToTrack:(id)track withSegments:(id)segments assets:(id)assets;
- (id)description;
- (int)usableVideoTrackID;
- (void)addExtraAudioTrackGroup:(id)group;
- (void)apply:(id)apply;
- (void)applyAudioMixParameters:(id)parameters;
- (void)applyCompositionItem:(id)item atTime:(id *)time skipAudio:(BOOL)audio;
- (void)applyCompositionItem:(id)item skipAudio:(BOOL)audio;
- (void)applyCompositionItemAsLoopedAudio:(id)audio forTimeRange:(id *)range;
- (void)applyPaddingToTime:(id *)time;
- (void)commitVolumeRampFromStartVolume:(float)volume toEndVolume:(float)endVolume timeRange:(id *)range;
- (void)dealloc;
- (void)markDirty;
- (void)removeExtraAudioTrackGroups;
- (void)resetVolumeState;
- (void)setAudioTrack:(id)track;
- (void)setFadeOutDuration:(id *)duration;
- (void)setFadeOutStart:(id *)start;
- (void)setLastRampToZeroEnd:(id *)end;
- (void)setTimeOfLastRequest:(id *)request;
- (void)setTimeOfLastVolumeChange:(id *)change;
@end

@implementation JFXCompositionTrackGroup

- (JFXCompositionTrackGroup)initWithLabel:(id)label timeScale:(int)scale
{
  labelCopy = label;
  v18.receiver = self;
  v18.super_class = JFXCompositionTrackGroup;
  v7 = [(JFXCompositionTrackGroup *)&v18 init];
  v8 = v7;
  if (v7)
  {
    [(JFXCompositionTrackGroup *)v7 setLabel:labelCopy];
    CMTimeMake(&v17, 0, scale);
    v8->_cursor = v17;
    CMTimeMake(&v17, 0, scale);
    v8->_cursorForMovieAudio = v17;
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    videoSegments = v8->_videoSegments;
    v8->_videoSegments = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    audioSegments = v8->_audioSegments;
    v8->_audioSegments = v11;

    v13 = MEMORY[0x277CC08F0];
    v14 = *MEMORY[0x277CC08F0];
    *&v8->_fadeOutStart.value = *MEMORY[0x277CC08F0];
    v15 = *(v13 + 16);
    v8->_fadeOutStart.epoch = v15;
    *&v8->_fadeOutDuration.value = v14;
    v8->_fadeOutDuration.epoch = v15;
    v8->_timeScale = scale;
  }

  return v8;
}

- (void)dealloc
{
  [(JFXCompositionTrackGroup *)self setAudioFormatDescription:0];
  [(JFXCompositionTrackGroup *)self removeExtraAudioTrackGroups];
  [(JFXCompositionTrackGroup *)self setComposition:0];
  v3.receiver = self;
  v3.super_class = JFXCompositionTrackGroup;
  [(JFXCompositionTrackGroup *)&v3 dealloc];
}

- (BOOL)containsVideoSegments
{
  if (self->_videoTrack)
  {
    videoSegments = self->_videoSegments;
    if (videoSegments)
    {
      LOBYTE(videoSegments) = [(NSMutableArray *)videoSegments count]!= 0;
    }
  }

  else
  {
    LOBYTE(videoSegments) = 0;
  }

  return videoSegments;
}

- (BOOL)containsAudioSegments
{
  if (self->_audioTrack)
  {
    audioSegments = self->_audioSegments;
    if (audioSegments)
    {
      LOBYTE(audioSegments) = [(NSMutableArray *)audioSegments count]!= 0;
    }
  }

  else
  {
    LOBYTE(audioSegments) = 0;
  }

  return audioSegments;
}

- (BOOL)containsSegments
{
  if ([(JFXCompositionTrackGroup *)self containsVideoSegments])
  {
    return 1;
  }

  return [(JFXCompositionTrackGroup *)self containsAudioSegments];
}

- (void)setAudioTrack:(id)track
{
  trackCopy = track;
  if (self->_audioTrack != trackCopy)
  {
    objc_storeStrong(&self->_audioTrack, track);
    v5 = [MEMORY[0x277CE6540] audioMixInputParametersWithTrack:trackCopy];
    audioParameters = self->_audioParameters;
    self->_audioParameters = v5;

    fmTrackInfoDict = self->_fmTrackInfoDict;
    self->_fmTrackInfoDict = 0;

    [(JFXCompositionTrackGroup *)self removeExtraAudioTrackGroups];
    [(JFXCompositionTrackGroup *)self setSeenSpeedClip:0];
    [(JFXCompositionTrackGroup *)self setSeenMoreThanOneASBD:0];
    [(JFXCompositionTrackGroup *)self setAudioFormatDescription:0];
  }

  [(JFXCompositionTrackGroup *)self resetVolumeState];
}

- (int)usableVideoTrackID
{
  videoTrack = self->_videoTrack;
  if (videoTrack)
  {
    return [(AVMutableCompositionTrack *)videoTrack trackID];
  }

  else
  {
    return -1;
  }
}

+ (id)visualDescriptionForSegments:(id)segments
{
  v34 = *MEMORY[0x277D85DE8];
  segmentsCopy = segments;
  string = [MEMORY[0x277CCAB68] string];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = segmentsCopy;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        memset(v28, 0, sizeof(v28));
        if (v9)
        {
          [v9 timeMapping];
          v10 = (v28[0].start.flags & 1) == 0;
        }

        else
        {
          v10 = 1;
        }

        *&time.start.value = *&v28[1].start.value;
        time.start.epoch = v28[1].start.epoch;
        CMTimeConvertScale(&v27, &time.start, 30, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        value = v27.value;
        time = v28[1];
        CMTimeRangeGetEnd(&v26, &time);
        CMTimeConvertScale(&v24, &v26, 30, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        [string appendFormat:@"\n[%lld\t%lld]", value, v24.value];
        if (v10)
        {
          [string appendFormat:@" (empty)"];
        }

        else
        {
          *&time.start.value = *&v28[0].start.value;
          time.start.epoch = v28[0].start.epoch;
          CMTimeConvertScale(&v23, &time.start, 30, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          v12 = v23.value;
          time = v28[0];
          CMTimeRangeGetEnd(&v26, &time);
          CMTimeConvertScale(&v22, &v26, 30, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          v13 = v6;
          v14 = v7;
          v15 = v22.value;
          sourceURL = [v9 sourceURL];
          path = [sourceURL path];
          lastPathComponent = [path lastPathComponent];
          v20 = v15;
          v7 = v14;
          v6 = v13;
          [string appendFormat:@"\t source -> [%lld\t%lld] (%@)", v12, v20, lastPathComponent];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v6);
  }

  return string;
}

- (id)description
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", self->_label];
  if ([(AVMutableCompositionTrack *)self->_videoTrack trackID]> 0 || [(AVMutableCompositionTrack *)self->_audioTrack trackID]>= 1)
  {
    if ([(AVMutableCompositionTrack *)self->_videoTrack trackID]>= 1)
    {
      v4 = MEMORY[0x277CCACA8];
      trackID = [(AVMutableCompositionTrack *)self->_videoTrack trackID];
      label = self->_label;
      v7 = [JFXCompositionTrackGroup visualDescriptionForSegments:self->_videoSegments];
      v8 = [v4 stringWithFormat:@"ID%d %@-Video: %@\n", trackID, label, v7];

      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v3, v8];

      v3 = v9;
    }

    if ([(AVMutableCompositionTrack *)self->_audioTrack trackID]>= 1)
    {
      v10 = MEMORY[0x277CCACA8];
      trackID2 = [(AVMutableCompositionTrack *)self->_audioTrack trackID];
      v12 = self->_label;
      v13 = [JFXCompositionTrackGroup visualDescriptionForSegments:self->_audioSegments];
      v14 = [v10 stringWithFormat:@"ID%d %@-Audio: %@\n", trackID2, v12, v13];

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v3, v14];

      v3 = v15;
    }
  }

  return v3;
}

- (void)addExtraAudioTrackGroup:(id)group
{
  groupCopy = group;
  extraAudioTrackGroups = [(JFXCompositionTrackGroup *)self extraAudioTrackGroups];

  if (!extraAudioTrackGroups)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(JFXCompositionTrackGroup *)self setExtraAudioTrackGroups:array];
  }

  extraAudioTrackGroups2 = [(JFXCompositionTrackGroup *)self extraAudioTrackGroups];
  [extraAudioTrackGroups2 addObject:groupCopy];
}

- (void)removeExtraAudioTrackGroups
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  extraAudioTrackGroups = [(JFXCompositionTrackGroup *)self extraAudioTrackGroups];
  v4 = [extraAudioTrackGroups countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(extraAudioTrackGroups);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        composition = [(JFXCompositionTrackGroup *)self composition];
        audioTrack = [v8 audioTrack];
        [composition removeTrack:audioTrack];

        audioTrack2 = [v8 audioTrack];
        [audioTrack2 setSegments:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [extraAudioTrackGroups countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [(JFXCompositionTrackGroup *)self setExtraAudioTrackGroups:0];
}

- (void)applyCompositionItem:(id)item skipAudio:(BOOL)audio
{
  audioCopy = audio;
  v59 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  cursor = self->_cursor;
  memset(&v55, 0, sizeof(v55));
  CMTimeMake(&v55, 0, [(JFXCompositionTrackGroup *)self timeScale]);
  if (self->_videoTrack)
  {
    self->_videoTrackInUse = 1;
  }

  else
  {
    hasVideoContent = [itemCopy hasVideoContent];
    videoTrack = self->_videoTrack;
    self->_videoTrackInUse = hasVideoContent;
    if (!videoTrack)
    {
      goto LABEL_18;
    }
  }

  *&self->_cursorAtLastVideoInsertion.value = *&self->_cursor.value;
  self->_cursorAtLastVideoInsertion.epoch = self->_cursor.epoch;
  memset(&v54, 0, sizeof(v54));
  if (itemCopy)
  {
    [itemCopy destinationDuration];
  }

  else
  {
    memset(&duration, 0, 24);
  }

  *&start.start.value = *&self->_cursorAtLastVideoInsertion.value;
  start.start.epoch = self->_cursorAtLastVideoInsertion.epoch;
  CMTimeRangeMake(&v54, &start.start, &duration.start);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  duration = v54;
  v9 = [itemCopy videoTrackSegmentsWithDestinationRange:&duration];
  v10 = [v9 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v51;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v51 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v50 + 1) + 8 * i);
        [(NSMutableArray *)self->_videoSegments addObject:v14];
        if (v14)
        {
          [v14 timeMapping];
        }

        else
        {
          memset(v48, 0, sizeof(v48));
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
        }

        *&start.start.value = *(v48 + 8);
        start.start.epoch = *(&v48[1] + 1);
        lhs = v55;
        CMTimeAdd(&duration.start, &lhs, &start.start);
        v55 = duration.start;
      }

      v11 = [v9 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v11);
  }

LABEL_18:
  isFinalClip = [itemCopy isFinalClip];
  if (isFinalClip)
  {
    isFinalClip = [itemCopy needSilenceAtEnd];
  }

  if (self->_audioTrack && ((!audioCopy | isFinalClip) & 1) != 0)
  {
    if (self->_videoTrack)
    {
      cursor = self->_cursorForMovieAudio;
    }

    memset(&lhs, 0, sizeof(lhs));
    CMTimeMake(&lhs, 0, [(JFXCompositionTrackGroup *)self timeScale]);
    v42 = cursor;
    [(JFXCompositionTrackGroup *)self lastRampToZeroEnd];
    duration.start = cursor;
    if (CMTimeCompare(&duration.start, &v54.start) < 0)
    {
      [(JFXCompositionTrackGroup *)self lastRampToZeroEnd];
    }

    v26 = itemCopy;
    if ([itemCopy needAudioLoop])
    {
      *&v54.start.value = *&self->_cursor.value;
      v54.start.epoch = self->_cursor.epoch;
      [itemCopy audioTrackSegmentsLoopedWithDestinationTime:&v54];
    }

    else
    {
      *&v54.start.value = *&self->_cursor.value;
      v54.start.epoch = self->_cursor.epoch;
      duration.start = v42;
      [itemCopy audioTrackSegmentsWithDestinationTime:&v54 paddedFromTime:&duration];
    }
    v16 = ;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v16;
    v17 = [obj countByEnumeratingWithState:&v38 objects:v57 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v39;
      v28 = *MEMORY[0x277CC08F0];
      v20 = *(MEMORY[0x277CC08F0] + 16);
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v38 + 1) + 8 * j);
          v23 = 0uLL;
          memset(&v54, 0, sizeof(v54));
          if (v22)
          {
            [v22 timeMapping];
            v23 = 0uLL;
          }

          else
          {
            v36 = 0uLL;
            memset(&v37, 0, sizeof(v37));
            v34 = 0uLL;
            v35 = 0uLL;
          }

          v54 = v37;
          *&duration.start.epoch = v23;
          *&duration.duration.timescale = v23;
          *&duration.start.value = v23;
          time2 = cursor;
          rhs = lhs;
          CMTimeAdd(&start.start, &time2, &rhs);
          time2 = cursor;
          v31 = lhs;
          CMTimeAdd(&rhs, &time2, &v31);
          v31 = v54.start;
          CMTimeSubtract(&time2, &v31, &rhs);
          CMTimeRangeMake(&duration, &start.start, &time2);
          start.start = duration.duration;
          *&time2.value = v28;
          time2.epoch = v20;
          if (CMTimeCompare(&start.start, &time2) >= 1)
          {
            v24 = objc_alloc(MEMORY[0x277CE64C0]);
            start = duration;
            v25 = [v24 initWithTimeRange:&start];
            [(NSMutableArray *)self->_audioSegments addObject:v25];
            time2 = lhs;
            rhs = duration.duration;
            CMTimeAdd(&start.start, &time2, &rhs);
            lhs = start.start;
          }

          start.start = cursor;
          time2 = lhs;
          CMTimeAdd(&v54.start, &start.start, &time2);
          [(NSMutableArray *)self->_audioSegments addObject:v22];
          if (self->_videoTrack)
          {
            if (v22)
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v22)
            {
              [v22 timeMapping];
            }

            else
            {
              memset(&v29[12], 0, 32);
            }

            time2 = *&v29[13];
            rhs = v55;
            CMTimeAdd(&start.start, &rhs, &time2);
            v55 = start.start;
            if (v22)
            {
LABEL_41:
              [v22 timeMapping];
              goto LABEL_47;
            }
          }

          memset(v29, 0, 32);
LABEL_47:
          time2 = *&v29[1];
          rhs = lhs;
          CMTimeAdd(&start.start, &rhs, &time2);
          lhs = start.start;
        }

        v18 = [obj countByEnumeratingWithState:&v38 objects:v57 count:16];
      }

      while (v18);
    }

    *&duration.start.value = *&self->_cursorForMovieAudio.value;
    duration.start.epoch = self->_cursorForMovieAudio.epoch;
    start.start = lhs;
    CMTimeAdd(&v54.start, &duration.start, &start.start);
    *&self->_cursorForMovieAudio.value = *&v54.start.value;
    self->_cursorForMovieAudio.epoch = v54.start.epoch;

    itemCopy = v26;
  }

  *&duration.start.value = *&self->_cursor.value;
  duration.start.epoch = self->_cursor.epoch;
  start.start = v55;
  CMTimeAdd(&v54.start, &duration.start, &start.start);
  *&self->_cursor.value = *&v54.start.value;
  self->_cursor.epoch = v54.start.epoch;
}

- (void)applyPaddingToTime:(id *)time
{
  memset(&v18, 0, sizeof(v18));
  CMTimeMake(&v18, 0, [(JFXCompositionTrackGroup *)self timeScale]);
  memset(&v17, 0, sizeof(v17));
  [(JFXCompositionTrackGroup *)self cursor];
  [(JFXCompositionTrackGroup *)self cursor];
  lhs = *time;
  CMTimeSubtract(&duration, &lhs, &rhs);
  CMTimeRangeMake(&v17, &start.start, &duration);
  v5 = MEMORY[0x277CC08F0];
  if (self->_videoTrack)
  {
    start.start = v17.duration;
    duration = **&MEMORY[0x277CC08F0];
    if (CMTimeCompare(&start.start, &duration) >= 1)
    {
      v6 = objc_alloc(MEMORY[0x277CE64C0]);
      start = v17;
      v7 = [v6 initWithTimeRange:&start];
      [(NSMutableArray *)self->_videoSegments addObject:v7];
      if (v7)
      {
        [v7 timeMapping];
      }

      else
      {
        memset(v12, 0, sizeof(v12));
      }

      v18 = *&v12[1];
    }

    if (self->_videoTrack)
    {
      *&start.start.value = *&time->var0;
      start.start.epoch = time->var3;
      rhs = self->_cursorForMovieAudio;
      CMTimeSubtract(&duration, &start.start, &rhs);
      rhs = self->_cursorForMovieAudio;
      CMTimeRangeMake(&start, &rhs, &duration);
      v17 = start;
    }
  }

  if (self->_audioTrack)
  {
    start.start = v17.duration;
    duration = *v5;
    if (CMTimeCompare(&start.start, &duration) >= 1)
    {
      v8 = objc_alloc(MEMORY[0x277CE64C0]);
      start = v17;
      v9 = [v8 initWithTimeRange:&start];
      [(NSMutableArray *)self->_audioSegments addObject:v9];
      if (!self->_videoTrack)
      {
        if (v9)
        {
          [v9 timeMapping];
        }

        else
        {
          memset(&v11[12], 0, 32);
        }

        v18 = *&v11[13];
      }

      p_cursorForMovieAudio = &self->_cursorForMovieAudio;
      if (v9)
      {
        [v9 timeMapping];
      }

      else
      {
        memset(v11, 0, 32);
      }

      duration = *&v11[1];
      *&rhs.value = *&p_cursorForMovieAudio->value;
      rhs.epoch = self->_cursorForMovieAudio.epoch;
      CMTimeAdd(&start.start, &rhs, &duration);
      *&p_cursorForMovieAudio->value = *&start.start.value;
      self->_cursorForMovieAudio.epoch = start.start.epoch;
    }
  }

  duration = self->_cursor;
  rhs = v18;
  CMTimeAdd(&start.start, &duration, &rhs);
  *&self->_cursor.value = *&start.start.value;
  self->_cursor.epoch = start.start.epoch;
}

- (void)applyCompositionItem:(id)item atTime:(id *)time skipAudio:(BOOL)audio
{
  audioCopy = audio;
  itemCopy = item;
  [(JFXCompositionTrackGroup *)self cursor];
  v9 = *time;
  if ((CMTimeCompare(&v9, &time2) & 0x80000000) == 0)
  {
    time2 = *time;
    [(JFXCompositionTrackGroup *)self applyPaddingToTime:&time2];
  }

  [(JFXCompositionTrackGroup *)self applyCompositionItem:itemCopy skipAudio:audioCopy];
}

- (void)applyCompositionItemAsLoopedAudio:(id)audio forTimeRange:(id *)range
{
  v30 = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  memset(&v28, 0, sizeof(v28));
  CMTimeMake(&v28, 0, [(JFXCompositionTrackGroup *)self timeScale]);
  videoTrack = self->_videoTrack;
  self->_videoTrack = 0;

  if (self->_audioTrack)
  {
    v8 = *&range->var0.var3;
    *v26 = *&range->var0.var0;
    *&v26[16] = v8;
    v27 = *&range->var1.var1;
    v9 = [audioCopy audioTrackSegmentsLoopedForDestinationTimeRange:v26];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          [(NSMutableArray *)self->_audioSegments addObject:v14];
          if (!self->_videoTrack)
          {
            if (v14)
            {
              [v14 timeMapping];
            }

            else
            {
              memset(v20, 0, sizeof(v20));
              v18 = 0u;
              v19 = 0u;
              v16 = 0u;
              v17 = 0u;
            }

            rhs = *(v20 + 8);
            v15 = v28;
            CMTimeAdd(v26, &v15, &rhs);
            v28 = *v26;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v29 count:16];
      }

      while (v11);
    }
  }

  rhs = self->_cursor;
  v15 = v28;
  CMTimeAdd(v26, &rhs, &v15);
  *&self->_cursor.value = *v26;
  self->_cursor.epoch = *&v26[16];
}

- (BOOL)validate
{
  videoTrack = self->_videoTrack;
  if (!videoTrack)
  {
    v6 = 0;
    goto LABEL_7;
  }

  videoSegments = self->_videoSegments;
  v16 = 0;
  v5 = [(AVMutableCompositionTrack *)videoTrack validateTrackSegments:videoSegments error:&v16];
  v6 = v16;
  if (v5)
  {
LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  v7 = JFXLog_playback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [JFXCompositionTrackGroup validate];
  }

  v8 = 0;
LABEL_8:
  audioTrack = self->_audioTrack;
  if (audioTrack)
  {
    audioSegments = self->_audioSegments;
    v15 = v6;
    v11 = [(AVMutableCompositionTrack *)audioTrack validateTrackSegments:audioSegments error:&v15];
    v12 = v15;

    if (!v11)
    {
      v13 = JFXLog_playback();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [JFXCompositionTrackGroup validate];
      }

      v8 = 0;
    }
  }

  else
  {
    v12 = v6;
  }

  return v8;
}

- (id)applyToTrack:(id)track withSegments:(id)segments assets:(id)assets
{
  v59 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  segmentsCopy = segments;
  assetsCopy = assets;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__13;
  v55 = __Block_byref_object_dispose__13;
  v56 = 0;
  v36 = trackCopy;
  if (!trackCopy || !segmentsCopy)
  {
    v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-1 userInfo:0];
    v30 = v52[5];
    v52[5] = v29;

    v31 = v52[5];
    goto LABEL_24;
  }

  memset(&v50, 0, sizeof(v50));
  CMTimeMakeWithSeconds(&duration.start, 86400.0, [(JFXCompositionTrackGroup *)self timeScale]);
  start = **&MEMORY[0x277CC08F0];
  CMTimeRangeMake(&v50, &start, &duration.start);
  duration = v50;
  [trackCopy removeTimeRange:&duration];
  [trackCopy setSegments:0];
  duration.start.value = 0;
  *&duration.start.timescale = &duration;
  duration.start.epoch = 0x2020000000;
  LOBYTE(duration.duration.value) = 0;
  v9 = MEMORY[0x277CBEAC0];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v34 = [v9 dictionaryWithObject:v10 forKey:*MEMORY[0x277CE6240]];

  v11 = dispatch_group_create();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v12 = segmentsCopy;
  v13 = [v12 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v13)
  {
    v14 = *v46;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v46 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v45 + 1) + 8 * i);
        if (([v16 isEmpty] & 1) == 0)
        {
          sourceURL = [v16 sourceURL];
          v18 = [assetsCopy objectForKey:sourceURL];

          if (v18)
          {
            goto LABEL_13;
          }

          v19 = MEMORY[0x277CE6650];
          sourceURL2 = [v16 sourceURL];
          v18 = [v19 URLAssetWithURL:sourceURL2 options:v34];

          v21 = JFXLog_playback();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            sourceURL3 = [v16 sourceURL];
            [(JFXCompositionTrackGroup *)sourceURL3 applyToTrack:(&start.value + 4) withSegments:v21 assets:?];
          }

          if (v18)
          {
LABEL_13:
            dispatch_group_enter(v11);
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = __61__JFXCompositionTrackGroup_applyToTrack_withSegments_assets___block_invoke;
            v38[3] = &unk_278D7B6A8;
            v23 = v36;
            v39 = v23;
            v40 = v16;
            v43 = &v51;
            p_duration = &duration;
            selfCopy = self;
            v42 = v11;
            [v18 findCompatibleTrackForCompositionTrack:v23 completionHandler:v38];
          }
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v13);
  }

  dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  if (*(*&duration.start.timescale + 24) != 1)
  {
    goto LABEL_19;
  }

  audioTimePitchAlgorithm = [(AVMutableAudioMixInputParameters *)self->_audioParameters audioTimePitchAlgorithm];
  preferredAudioTimePitchAlgorithm = [(JFXCompositionTrackGroup *)self preferredAudioTimePitchAlgorithm];
  v26 = [audioTimePitchAlgorithm isEqualToString:preferredAudioTimePitchAlgorithm];

  if (v26)
  {
    if ((*(*&duration.start.timescale + 24) & 1) == 0)
    {
LABEL_19:
      audioTimePitchAlgorithm2 = [(AVMutableAudioMixInputParameters *)self->_audioParameters audioTimePitchAlgorithm];
      v28 = audioTimePitchAlgorithm2 == 0;

      if (!v28)
      {
        [(AVMutableAudioMixInputParameters *)self->_audioParameters setAudioTimePitchAlgorithm:0];
      }
    }
  }

  else
  {
    preferredAudioTimePitchAlgorithm2 = [(JFXCompositionTrackGroup *)self preferredAudioTimePitchAlgorithm];
    [(AVMutableAudioMixInputParameters *)self->_audioParameters setAudioTimePitchAlgorithm:preferredAudioTimePitchAlgorithm2];
  }

  v31 = v52[5];

  _Block_object_dispose(&duration, 8);
LABEL_24:
  _Block_object_dispose(&v51, 8);

  return v31;
}

void __61__JFXCompositionTrackGroup_applyToTrack_withSegments_assets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (v7)
    {
      [v7 timeMapping];
      v9 = *(a1 + 40);
      time1 = v46;
      if (v9)
      {
        [v9 timeMapping];
        goto LABEL_10;
      }
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      memset(&v46, 0, sizeof(v46));
      memset(&time1, 0, sizeof(time1));
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
LABEL_10:
    *&v18.start.value = v43;
    v18.start.epoch = v44;
    v11 = *(*(a1 + 64) + 8);
    obj = *(v11 + 40);
    [v8 insertTimeRange:&time1 ofTrack:v5 atTime:&v18 error:&obj];
    objc_storeStrong((v11 + 40), obj);
    v12 = *(a1 + 40);
    if (v12)
    {
      [v12 timeMapping];
      v13 = *(a1 + 40);
      *&time1.start.value = *(&v38[3] + 8);
      time1.start.epoch = *(&v38[4] + 1);
      if (v13)
      {
        [v13 timeMapping];
        goto LABEL_15;
      }
    }

    else
    {
      memset(&v38[2], 0, 96);
      *&time1.start.value = *(&v38[3] + 8);
      time1.start.epoch = 0;
    }

    memset(v38, 0, 32);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
LABEL_15:
    *&v18.start.value = *(v38 + 8);
    v18.start.epoch = *(&v38[1] + 1);
    if (!CMTimeCompare(&time1.start, &v18.start))
    {
      goto LABEL_26;
    }

    memset(&time1, 0, sizeof(time1));
    v14 = *(a1 + 40);
    if (v14)
    {
      [v14 timeMapping];
      v15 = *(a1 + 40);
      *&v18.start.value = v31;
      v18.start.epoch = v32;
      if (v15)
      {
        [v15 timeMapping];
LABEL_21:
        duration = *(&v23[3] + 8);
        CMTimeRangeMake(&time1, &v18.start, &duration);
        v16 = *(a1 + 40);
        if (v16)
        {
          [v16 timeMapping];
        }

        else
        {
          memset(v23, 0, 32);
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
        }

        v17 = *(a1 + 32);
        v18 = time1;
        duration = *(v23 + 8);
        [v17 scaleTimeRange:&v18 toDuration:&duration];
        if (*(a1 + 32) == *(*(a1 + 48) + 48))
        {
          *(*(*(a1 + 72) + 8) + 24) = 1;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v32 = 0uLL;
      v33 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      memset(&v18, 0, 24);
    }

    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    memset(&v23[2], 0, 48);
    goto LABEL_21;
  }

  v10 = JFXLog_playback();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __61__JFXCompositionTrackGroup_applyToTrack_withSegments_assets___block_invoke_cold_1(a1);
  }

LABEL_26:
  dispatch_group_leave(*(a1 + 56));
}

- (void)apply:(id)apply
{
  v17 = *MEMORY[0x277D85DE8];
  applyCopy = apply;
  v5 = [(JFXCompositionTrackGroup *)self applyToTrack:self->_videoTrack withSegments:self->_videoSegments assets:applyCopy];
  v6 = [(JFXCompositionTrackGroup *)self applyToTrack:self->_audioTrack withSegments:self->_audioSegments assets:applyCopy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  extraAudioTrackGroups = [(JFXCompositionTrackGroup *)self extraAudioTrackGroups];
  v8 = [extraAudioTrackGroups countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(extraAudioTrackGroups);
        }

        [*(*(&v12 + 1) + 8 * v11++) apply:applyCopy];
      }

      while (v9 != v11);
      v9 = [extraAudioTrackGroups countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)applyAudioMixParameters:(id)parameters
{
  v21 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  audioParameters = [(JFXCompositionTrackGroup *)self audioParameters];

  if (audioParameters)
  {
    audioParameters2 = [(JFXCompositionTrackGroup *)self audioParameters];
    [parametersCopy addObject:audioParameters2];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    extraAudioTrackGroups = [(JFXCompositionTrackGroup *)self extraAudioTrackGroups];
    v8 = [extraAudioTrackGroups countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(extraAudioTrackGroups);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          audioParameters3 = [(JFXCompositionTrackGroup *)self audioParameters];
          v14 = [audioParameters3 mutableCopy];

          audioTrack = [v12 audioTrack];
          [v14 setTrackID:{objc_msgSend(audioTrack, "trackID")}];

          [v12 setAudioParameters:v14];
          [parametersCopy addObject:v14];

          ++v11;
        }

        while (v9 != v11);
        v9 = [extraAudioTrackGroups countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }
}

- (void)markDirty
{
  v3 = [MEMORY[0x277CE6540] audioMixInputParametersWithTrack:self->_audioTrack];
  audioParameters = self->_audioParameters;
  self->_audioParameters = v3;

  [(NSMutableArray *)self->_audioSegments removeAllObjects];
  fmTrackInfoDict = self->_fmTrackInfoDict;
  self->_fmTrackInfoDict = 0;

  [(NSMutableArray *)self->_videoSegments removeAllObjects];
  self->_videoTrackInUse = 0;
  CMTimeMake(&v6, 0, [(JFXCompositionTrackGroup *)self timeScale]);
  self->_cursor = v6;
  CMTimeMake(&v6, 0, [(JFXCompositionTrackGroup *)self timeScale]);
  self->_cursorForMovieAudio = v6;
  [(JFXCompositionTrackGroup *)self resetVolumeState];
  self->_cursorAtLastVideoInsertion = self->_cursor;
  [(JFXCompositionTrackGroup *)self setAudioFormatDescription:0];
  [(JFXCompositionTrackGroup *)self setSeenSpeedClip:0];
  [(JFXCompositionTrackGroup *)self setSeenMoreThanOneASBD:0];
  [(JFXCompositionTrackGroup *)self removeExtraAudioTrackGroups];
}

- (void)resetVolumeState
{
  CMTimeMake(&v6, 0, [(JFXCompositionTrackGroup *)self timeScale]);
  v5 = v6;
  [(JFXCompositionTrackGroup *)self setTimeOfLastVolumeChange:&v5];
  [(JFXCompositionTrackGroup *)self setVolumeAtLastVolumeChange:0.0];
  LODWORD(v3) = -1.0;
  [(JFXCompositionTrackGroup *)self setVolumeChangePending:v3];
  CMTimeMake(&v4, 0, [(JFXCompositionTrackGroup *)self timeScale]);
  v5 = v4;
  [(JFXCompositionTrackGroup *)self setTimeOfLastRequest:&v5];
  v5 = **&MEMORY[0x277CC08F0];
  [(JFXCompositionTrackGroup *)self setLastRampToZeroEnd:&v5];
}

- (float)linearFadeOutValueForTime:(id *)time
{
  [(JFXCompositionTrackGroup *)self fadeOutStart];
  Seconds = CMTimeGetSeconds(&v10);
  [(JFXCompositionTrackGroup *)self fadeOutDuration];
  v6 = CMTimeGetSeconds(&v10);
  v10 = *time;
  v7 = CMTimeGetSeconds(&v10);
  result = 0.0;
  if (v6 > 0.0)
  {
    v9 = v7 - Seconds;
    result = 1.0;
    if (v9 >= 0.0)
    {
      result = 0.0;
      if (v9 <= v6)
      {
        return v9 / v6;
      }
    }
  }

  return result;
}

- (float)setFadedVolumeRampFromStartVolume:(float)volume toEndVolume:(float)endVolume timeRange:(id *)range
{
  v87 = *MEMORY[0x277D85DE8];
  memset(&v84, 0, sizeof(v84));
  [(JFXCompositionTrackGroup *)self fadeOutStart];
  [(JFXCompositionTrackGroup *)self fadeOutDuration];
  CMTimeRangeMake(&v84, start, &duration.start);
  if ((v84.start.flags & 1) != 0 && (v84.duration.flags & 1) != 0 && !v84.duration.epoch && (v84.duration.value & 0x8000000000000000) == 0)
  {
    *start = v84.duration;
    *&duration.start.value = *MEMORY[0x277CC08F0];
    duration.start.epoch = *(MEMORY[0x277CC08F0] + 16);
    if (!CMTimeCompare(start, &duration.start))
    {
      audioParameters = self->_audioParameters;
      v37 = *&range->var0.var3;
      *start = *&range->var0.var0;
      *&start[16] = v37;
      *v86 = *&range->var1.var1;
      *&v37 = endVolume;
      [(AVMutableAudioMixInputParameters *)audioParameters setVolumeRampFromStartVolume:start toEndVolume:COERCE_DOUBLE(__PAIR64__(*&v86[4] timeRange:LODWORD(volume))), *&v37];
      v17 = JFXLog_DebugComposition();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        label = self->_label;
        *start = *&range->var0.var0;
        *&start[16] = range->var0.var3;
        Seconds = CMTimeGetSeconds(start);
        v40 = *&range->var0.var3;
        *start = *&range->var0.var0;
        *&start[16] = v40;
        *v86 = *&range->var1.var1;
        CMTimeRangeGetEnd(&duration.start, start);
        v41 = CMTimeGetSeconds(&duration.start);
        *start = 138413314;
        *&start[4] = label;
        *&start[12] = 2048;
        *&start[14] = Seconds;
        *&start[22] = 2048;
        *&start[24] = volume;
        *v86 = 2048;
        *&v86[2] = v41;
        *&v86[10] = 2048;
        *&v86[12] = endVolume;
        v22 = "  beforeFadeZone - VOLUME RANGE :%@  time %f volume %f  -  time %f volume %f";
        goto LABEL_38;
      }

      goto LABEL_20;
    }
  }

  memset(&duration.start.epoch, 0, 32);
  v9 = endVolume <= 0.0 && volume <= 0.0;
  v10 = endVolume > 0.0 && volume <= 0.0;
  v11 = endVolume <= 0.0 && volume > 0.0;
  v12 = *&range->var0.var3;
  *start = *&range->var0.var0;
  *&start[16] = v12;
  *v86 = *&range->var1.var1;
  otherRange = v84;
  *&duration.start.value = 0uLL;
  CMTimeRangeGetIntersection(&duration, start, &otherRange);
  *start = duration.duration;
  v13 = CMTimeGetSeconds(start);
  *start = *&v84.start.value;
  *&start[16] = *&v84.start.epoch;
  *v86 = *&v84.duration.timescale;
  CMTimeRangeGetEnd(&otherRange.start, start);
  v14 = CMTimeGetSeconds(&otherRange.start);
  *start = *&range->var0.var0;
  *&start[16] = range->var0.var3;
  if (CMTimeGetSeconds(start) > v14)
  {
    v15 = self->_audioParameters;
    v16 = *&range->var0.var3;
    *start = *&range->var0.var0;
    *&start[16] = v16;
    *v86 = *&range->var1.var1;
    [(AVMutableAudioMixInputParameters *)v15 setVolumeRampFromStartVolume:start toEndVolume:0.0 timeRange:0.0];
    v17 = JFXLog_DebugComposition();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = self->_label;
      *start = *&range->var0.var0;
      *&start[16] = range->var0.var3;
      v19 = CMTimeGetSeconds(start);
      v20 = *&range->var0.var3;
      *start = *&range->var0.var0;
      *&start[16] = v20;
      *v86 = *&range->var1.var1;
      CMTimeRangeGetEnd(&otherRange.start, start);
      v21 = CMTimeGetSeconds(&otherRange.start);
      *start = 138413314;
      *&start[4] = v18;
      *&start[12] = 2048;
      *&start[14] = v19;
      *&start[22] = 2048;
      *&start[24] = 0;
      *v86 = 2048;
      *&v86[2] = v21;
      *&v86[10] = 2048;
      *&v86[12] = 0;
      v22 = "  afterFadeZone - VOLUME RANGE :%@  time %f volume %f  -  time %f volume %f";
LABEL_38:
      _os_log_debug_impl(&dword_242A3B000, v17, OS_LOG_TYPE_DEBUG, v22, start, 0x34u);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  volumeCopy = volume;
  if ((duration.start.flags & 1) == 0 || (duration.duration.flags & 1) == 0 || duration.duration.epoch || (duration.duration.value < 0 ? (v27 = 1) : (v27 = v9), (v27 & 1) != 0 || v13 <= 0.0))
  {
    v24 = self->_audioParameters;
    v25 = *&range->var0.var3;
    *start = *&range->var0.var0;
    *&start[16] = v25;
    *v86 = *&range->var1.var1;
    *&v25 = endVolume;
    [(AVMutableAudioMixInputParameters *)v24 setVolumeRampFromStartVolume:start toEndVolume:COERCE_DOUBLE(__PAIR64__(*&v86[4] timeRange:LODWORD(volume))), *&v25];
    v17 = JFXLog_DebugComposition();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v50 = self->_label;
      *start = *&range->var0.var0;
      *&start[16] = range->var0.var3;
      v51 = CMTimeGetSeconds(start);
      v52 = *&range->var0.var3;
      *start = *&range->var0.var0;
      *&start[16] = v52;
      *v86 = *&range->var1.var1;
      CMTimeRangeGetEnd(&otherRange.start, start);
      v53 = CMTimeGetSeconds(&otherRange.start);
      *start = 138413314;
      *&start[4] = v50;
      *&start[12] = 2048;
      *&start[14] = v51;
      *&start[22] = 2048;
      *&start[24] = volumeCopy;
      *v86 = 2048;
      *&v86[2] = v53;
      *&v86[10] = 2048;
      *&v86[12] = endVolume;
      v22 = "  outOfFadeZone or zeroRamp - VOLUME RANGE :%@  time %f volume %f  -  time %f volume %f";
      goto LABEL_38;
    }

    goto LABEL_20;
  }

  if (v10)
  {
    v28 = *&range->var0.var3;
    *start = *&range->var0.var0;
    *&start[16] = v28;
    *v86 = *&range->var1.var1;
    CMTimeRangeGetEnd(&otherRange.start, start);
    [(JFXCompositionTrackGroup *)self linearFadeOutValueForTime:&otherRange];
    endVolume = v29 * endVolume;
    v30 = self->_audioParameters;
    v31 = *&range->var0.var3;
    *start = *&range->var0.var0;
    *&start[16] = v31;
    *v86 = *&range->var1.var1;
    *&v31 = endVolume;
    [(AVMutableAudioMixInputParameters *)v30 setVolumeRampFromStartVolume:start toEndVolume:0.0 timeRange:*&v31];
    v17 = JFXLog_DebugComposition();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v32 = self->_label;
      *start = *&range->var0.var0;
      *&start[16] = range->var0.var3;
      v33 = CMTimeGetSeconds(start);
      v34 = *&range->var0.var3;
      *start = *&range->var0.var0;
      *&start[16] = v34;
      *v86 = *&range->var1.var1;
      CMTimeRangeGetEnd(&otherRange.start, start);
      v35 = CMTimeGetSeconds(&otherRange.start);
      *start = 138413314;
      *&start[4] = v32;
      *&start[12] = 2048;
      *&start[14] = v33;
      *&start[22] = 2048;
      *&start[24] = 0;
      *v86 = 2048;
      *&v86[2] = v35;
      *&v86[10] = 2048;
      *&v86[12] = endVolume;
      v22 = "  rampIsFadeIn - VOLUME RANGE :%@  time %f volume %f  -  time %f volume %f";
      goto LABEL_38;
    }

LABEL_20:

    return endVolume;
  }

  if (v11)
  {
    [(JFXCompositionTrackGroup *)self volumeAtLastVolumeChange];
    v43 = *&v42;
    v44 = self->_audioParameters;
    v45 = *&range->var0.var3;
    *start = *&range->var0.var0;
    *&start[16] = v45;
    *v86 = *&range->var1.var1;
    HIDWORD(v42) = *&v86[4];
    endVolume = 0.0;
    [(AVMutableAudioMixInputParameters *)v44 setVolumeRampFromStartVolume:start toEndVolume:v42 timeRange:0.0];
    v17 = JFXLog_DebugComposition();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v46 = self->_label;
      *start = *&range->var0.var0;
      *&start[16] = range->var0.var3;
      v47 = CMTimeGetSeconds(start);
      v48 = *&range->var0.var3;
      *start = *&range->var0.var0;
      *&start[16] = v48;
      *v86 = *&range->var1.var1;
      CMTimeRangeGetEnd(&otherRange.start, start);
      v49 = CMTimeGetSeconds(&otherRange.start);
      *start = 138413314;
      *&start[4] = v46;
      *&start[12] = 2048;
      *&start[14] = v47;
      *&start[22] = 2048;
      *&start[24] = v43;
      *v86 = 2048;
      *&v86[2] = v49;
      *&v86[10] = 2048;
      *&v86[12] = 0;
      v22 = "  rampIsFadeOut - VOLUME RANGE :%@  time %f volume %f  -  time %f volume %f";
      goto LABEL_38;
    }

    goto LABEL_20;
  }

  memset(&v81, 0, sizeof(v81));
  *start = *&duration.start.value;
  *&start[16] = duration.start.epoch;
  *&otherRange.start.value = *&range->var0.var0;
  otherRange.start.epoch = range->var0.var3;
  CMTimeSubtract(&v81, start, &otherRange.start);
  value = duration.duration.value;
  v80 = *&duration.duration.timescale;
  memset(&v79, 0, sizeof(v79));
  v55 = *&range->var0.var3;
  *start = *&range->var0.var0;
  *&start[16] = v55;
  *v86 = *&range->var1.var1;
  CMTimeRangeGetEnd(&otherRange.start, start);
  *start = *&duration.start.value;
  *&start[16] = *&duration.start.epoch;
  *v86 = *&duration.duration.timescale;
  CMTimeRangeGetEnd(&rhs, start);
  CMTimeSubtract(&v79, &otherRange.start, &rhs);
  rhs = range->var0;
  if (v81.value >= 1)
  {
    v56 = self->_audioParameters;
    *&otherRange.start.value = *&range->var0.var0;
    otherRange.start.epoch = range->var0.var3;
    lhs = v81;
    CMTimeRangeMake(start, &otherRange.start, &lhs);
    *&v57 = volume;
    *&v58 = volume;
    [(AVMutableAudioMixInputParameters *)v56 setVolumeRampFromStartVolume:start toEndVolume:v57 timeRange:v58];
    v59 = JFXLog_DebugComposition();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      v67 = self->_label;
      *start = rhs;
      v68 = CMTimeGetSeconds(start);
      *start = v81;
      v69 = CMTimeGetSeconds(start);
      *start = 138413314;
      *&start[4] = v67;
      *&start[12] = 2048;
      *&start[14] = v68;
      *&start[22] = 2048;
      *&start[24] = volume;
      *v86 = 2048;
      *&v86[2] = v69;
      *&v86[10] = 2048;
      *&v86[12] = volume;
      _os_log_debug_impl(&dword_242A3B000, v59, OS_LOG_TYPE_DEBUG, "  durationBefore - VOLUME RANGE :%@  time %f volume %f  -  time %f volume %f", start, 0x34u);
    }

    *start = rhs;
    otherRange.start = v81;
    CMTimeAdd(&rhs, start, &otherRange.start);
  }

  if (value >= 1)
  {
    memset(&otherRange, 0, sizeof(otherRange));
    *start = rhs;
    lhs.value = value;
    *&lhs.timescale = v80;
    CMTimeRangeMake(&otherRange, start, &lhs);
    *start = *&otherRange.start.value;
    *&start[16] = otherRange.start.epoch;
    [(JFXCompositionTrackGroup *)self linearFadeOutValueForTime:start];
    v61 = v60 * volume;
    *start = *&otherRange.start.value;
    *&start[16] = *&otherRange.start.epoch;
    *v86 = *&otherRange.duration.timescale;
    CMTimeRangeGetEnd(&lhs, start);
    [(JFXCompositionTrackGroup *)self linearFadeOutValueForTime:&lhs];
    endVolume = v62 * endVolume;
    v63 = self->_audioParameters;
    *start = *&otherRange.start.value;
    *&start[16] = *&otherRange.start.epoch;
    *v86 = *&otherRange.duration.timescale;
    [(AVMutableAudioMixInputParameters *)v63 setVolumeRampFromStartVolume:start toEndVolume:COERCE_DOUBLE(__PAIR64__(otherRange.duration.flags timeRange:LODWORD(v61))), COERCE_DOUBLE(__PAIR64__(HIDWORD(otherRange.start.epoch), LODWORD(endVolume)))];
    v64 = JFXLog_DebugComposition();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      v70 = self->_label;
      *start = rhs;
      v71 = CMTimeGetSeconds(start);
      *start = value;
      *&start[8] = v80;
      v72 = CMTimeGetSeconds(start);
      *start = 138413314;
      *&start[4] = v70;
      *&start[12] = 2048;
      *&start[14] = v71;
      *&start[22] = 2048;
      *&start[24] = v61;
      *v86 = 2048;
      *&v86[2] = v72;
      *&v86[10] = 2048;
      *&v86[12] = endVolume;
      _os_log_debug_impl(&dword_242A3B000, v64, OS_LOG_TYPE_DEBUG, "  durationDuring - VOLUME RANGE :%@  time %f volume %f  -  time %f volume %f", start, 0x34u);
    }

    lhs = rhs;
    v76.value = value;
    *&v76.timescale = v80;
    CMTimeAdd(start, &lhs, &v76);
    rhs = *start;
  }

  if (v79.value >= 1)
  {
    v65 = self->_audioParameters;
    otherRange.start = rhs;
    lhs = v79;
    CMTimeRangeMake(start, &otherRange.start, &lhs);
    endVolume = 0.0;
    [(AVMutableAudioMixInputParameters *)v65 setVolumeRampFromStartVolume:start toEndVolume:0.0 timeRange:0.0];
    v66 = JFXLog_DebugComposition();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      v73 = self->_label;
      *start = rhs;
      v74 = CMTimeGetSeconds(start);
      *start = v79;
      v75 = CMTimeGetSeconds(start);
      *start = 138413314;
      *&start[4] = v73;
      *&start[12] = 2048;
      *&start[14] = v74;
      *&start[22] = 2048;
      *&start[24] = 0;
      *v86 = 2048;
      *&v86[2] = v75;
      *&v86[10] = 2048;
      *&v86[12] = 0;
      _os_log_debug_impl(&dword_242A3B000, v66, OS_LOG_TYPE_DEBUG, "  durationAfter - VOLUME RANGE :%@  time %f volume %f  -  time %f volume %f", start, 0x34u);
    }
  }

  return endVolume;
}

- (void)commitVolumeRampFromStartVolume:(float)volume toEndVolume:(float)endVolume timeRange:(id *)range
{
  v48 = *MEMORY[0x277D85DE8];
  memset(&v45, 0, sizeof(v45));
  CMTimeMake(&v45, 1, [(JFXCompositionTrackGroup *)self timeScale]);
  [(JFXCompositionTrackGroup *)self timeOfLastVolumeChange];
  *&time1.start.value = *&range->var0.var0;
  time1.start.epoch = range->var0.var3;
  if (CMTimeCompare(&time1.start, time2) >= 1)
  {
    v9 = JFXLog_DebugComposition();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *time2 = *&range->var0.var0;
      *&time2[16] = range->var0.var3;
      Seconds = CMTimeGetSeconds(time2);
      [(JFXCompositionTrackGroup *)self timeOfLastVolumeChange];
      v30 = CMTimeGetSeconds(time2);
      *time2 = 134218240;
      *&time2[4] = Seconds;
      *&time2[12] = 2048;
      *&time2[14] = v30;
      _os_log_debug_impl(&dword_242A3B000, v9, OS_LOG_TYPE_DEBUG, "commitVolumeRampFromStartVolume startTime %f < timeOfLastVolumeChange %f -- Adjusting", time2, 0x16u);
    }

    [(JFXCompositionTrackGroup *)self timeOfLastVolumeChange];
    v10 = *&range->var0.var3;
    *time2 = *&range->var0.var0;
    *&time2[16] = v10;
    *v47 = *&range->var1.var1;
    CMTimeRangeGetEnd(&end.start, time2);
    CMTimeRangeFromTimeToTime(time2, &time1.start, &end.start);
    v11 = *&time2[16];
    *&range->var0.var0 = *time2;
    *&range->var0.var3 = v11;
    *&range->var1.var1 = *v47;
  }

  v12 = JFXLog_DebugComposition();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (volume == endVolume)
  {
    if (v13)
    {
      label = self->_label;
      *time2 = *&range->var0.var0;
      *&time2[16] = range->var0.var3;
      v15 = CMTimeGetSeconds(time2);
      v16 = *&range->var0.var3;
      *time2 = *&range->var0.var0;
      *&time2[16] = v16;
      *v47 = *&range->var1.var1;
      CMTimeRangeGetEnd(&time1.start, time2);
      v17 = CMTimeGetSeconds(&time1.start);
      *time2 = 138413314;
      *&time2[4] = label;
      *&time2[12] = 2048;
      *&time2[14] = v15;
      *&time2[22] = 2048;
      *&time2[24] = volume;
      *v47 = 2048;
      *&v47[2] = v17;
      *&v47[10] = 2048;
      *&v47[12] = endVolume;
      v18 = "VOLUME RANGE :%@  time %f volume %f  -  time %f volume %f";
LABEL_21:
      _os_log_debug_impl(&dword_242A3B000, v12, OS_LOG_TYPE_DEBUG, v18, time2, 0x34u);
    }
  }

  else if (v13)
  {
    v31 = self->_label;
    *time2 = *&range->var0.var0;
    *&time2[16] = range->var0.var3;
    v32 = CMTimeGetSeconds(time2);
    v33 = *&range->var0.var3;
    *time2 = *&range->var0.var0;
    *&time2[16] = v33;
    *v47 = *&range->var1.var1;
    CMTimeRangeGetEnd(&time1.start, time2);
    v34 = CMTimeGetSeconds(&time1.start);
    *time2 = 138413314;
    *&time2[4] = v31;
    *&time2[12] = 2048;
    *&time2[14] = v32;
    *&time2[22] = 2048;
    *&time2[24] = volume;
    *v47 = 2048;
    *&v47[2] = v34;
    *&v47[10] = 2048;
    *&v47[12] = endVolume;
    v18 = "VOLUME FADE  :%@  time %f volume %f  -  time %f volume %f";
    goto LABEL_21;
  }

  *time2 = *&range->var1.var0;
  *&time2[16] = range->var1.var3;
  time1.start = v45;
  if (CMTimeCompare(time2, &time1.start) < 0 && ![(JFXCompositionTrackGroup *)self isFlexMusic])
  {
    v19 = JFXLog_DebugComposition();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v35 = self->_label;
      *&time1.start.value = *&range->var0.var0;
      time1.start.epoch = range->var0.var3;
      v36 = CMTimeGetSeconds(&time1.start);
      v37 = *&range->var0.var3;
      *&time1.start.value = *&range->var0.var0;
      *&time1.start.epoch = v37;
      *&time1.duration.timescale = *&range->var1.var1;
      CMTimeRangeGetEnd(&time, &time1);
      v38 = CMTimeGetSeconds(&time);
      *time2 = 138413314;
      *&time2[4] = v35;
      *&time2[12] = 2048;
      *&time2[14] = v36;
      *&time2[22] = 2048;
      *&time2[24] = volume;
      *v47 = 2048;
      *&v47[2] = v38;
      *&v47[10] = 2048;
      *&v47[12] = endVolume;
      _os_log_debug_impl(&dword_242A3B000, v19, OS_LOG_TYPE_DEBUG, "setVolumeRamp:%@  time %f volume %f  -  time %f volume %f", time2, 0x34u);
    }

    v20 = JFXLog_DebugComposition();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [JFXCompositionTrackGroup commitVolumeRampFromStartVolume:v20 toEndVolume:? timeRange:?];
    }

    range->var1 = v45;
  }

  v21 = *&range->var0.var3;
  *time2 = *&range->var0.var0;
  *&time2[16] = v21;
  *v47 = *&range->var1.var1;
  *&v21 = endVolume;
  [(JFXCompositionTrackGroup *)self setFadedVolumeRampFromStartVolume:time2 toEndVolume:COERCE_DOUBLE(__PAIR64__(*&v47[4] timeRange:LODWORD(volume))), *&v21];
  v23 = v22;
  v24 = *&range->var0.var3;
  *&end.start.value = *&range->var0.var0;
  *&end.start.epoch = v24;
  *&end.duration.timescale = *&range->var1.var1;
  CMTimeRangeGetEnd(&v42, &end);
  end.start = v42;
  [(JFXCompositionTrackGroup *)self setTimeOfLastVolumeChange:&end];
  v25 = *&range->var0.var3;
  *&end.start.value = *&range->var0.var0;
  *&end.start.epoch = v25;
  *&end.duration.timescale = *&range->var1.var1;
  CMTimeRangeGetEnd(&v40, &end);
  end.start = v40;
  [(JFXCompositionTrackGroup *)self setTimeOfLastRequest:&end];
  *&v26 = v23;
  [(JFXCompositionTrackGroup *)self setVolumeAtLastVolumeChange:v26];
  if (volume > 0.0 && v23 <= 0.0)
  {
    v28 = *&range->var0.var3;
    *&end.start.value = *&range->var0.var0;
    *&end.start.epoch = v28;
    *&end.duration.timescale = *&range->var1.var1;
    CMTimeRangeGetEnd(&v39, &end);
    end.start = v39;
    [(JFXCompositionTrackGroup *)self setLastRampToZeroEnd:&end];
  }

  LODWORD(v27) = -1.0;
  [(JFXCompositionTrackGroup *)self setVolumeChangePending:v27];
}

- (BOOL)commitPendingVolumeToTime:(id *)time
{
  [(JFXCompositionTrackGroup *)self timeOfLastVolumeChange];
  v13.start = *time;
  v5 = CMTimeCompare(&v13.start, &time2.start);
  if (v5 <= 0)
  {
    v11 = JFXLog_DebugComposition();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [JFXCompositionTrackGroup commitPendingVolumeToTime:time];
    }
  }

  else
  {
    [(JFXCompositionTrackGroup *)self volumeChangePending];
    if (v6 == -1.0)
    {
      [(JFXCompositionTrackGroup *)self setVolumeChangePending:0.0];
    }

    memset(&time2, 0, sizeof(time2));
    [(JFXCompositionTrackGroup *)self timeOfLastVolumeChange];
    end = *time;
    CMTimeRangeFromTimeToTime(&time2, &v13.start, &end);
    [(JFXCompositionTrackGroup *)self volumeChangePending];
    v8 = v7;
    [(JFXCompositionTrackGroup *)self volumeChangePending];
    LODWORD(v10) = v9;
    v13 = time2;
    [(JFXCompositionTrackGroup *)self commitVolumeRampFromStartVolume:&v13 toEndVolume:COERCE_DOUBLE(__PAIR64__(time2.duration.flags timeRange:v8)), v10];
  }

  return v5 > 0;
}

- (BOOL)shouldCommitVolume:(float)volume
{
  [(JFXCompositionTrackGroup *)self volumeChangePending];
  if (v5 == -1.0)
  {
    return 0;
  }

  [(JFXCompositionTrackGroup *)self volumeChangePending];
  return v7 != volume;
}

- (BOOL)requestVolume:(float)volume atTime:(id *)time
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = *time;
  [(JFXCompositionTrackGroup *)self timeOfLastVolumeChange];
  v13 = v14;
  if (CMTimeCompare(&v13, &time2) < 0)
  {
    v8 = JFXLog_DebugComposition();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      time2 = *time;
      Seconds = CMTimeGetSeconds(&time2);
      [(JFXCompositionTrackGroup *)self timeOfLastVolumeChange];
      v12 = CMTimeGetSeconds(&time2);
      LODWORD(time2.value) = 134218240;
      *(&time2.value + 4) = Seconds;
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = v12;
      _os_log_debug_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEBUG, "setVolume startTime %f < timeOfLastVolumeChange %f -- Adjusting", &time2, 0x16u);
    }
  }

  *&v7 = volume;
  if ([(JFXCompositionTrackGroup *)self shouldCommitVolume:v7])
  {
    time2 = v14;
    [(JFXCompositionTrackGroup *)self commitPendingVolumeToTime:&time2];
  }

  *&v9 = volume;
  [(JFXCompositionTrackGroup *)self setVolumeChangePending:v9];
  time2 = *time;
  [(JFXCompositionTrackGroup *)self setTimeOfLastRequest:&time2];
  return 1;
}

- (BOOL)requestVolumeRampFromStartVolume:(float)volume toEndVolume:(float)endVolume timeRange:(id *)range fillEmptySegment:(BOOL)segment
{
  segmentCopy = segment;
  v29 = *MEMORY[0x277D85DE8];
  v11 = *&range->var0.var3;
  *&v27.start.value = *&range->var0.var0;
  *&v27.start.epoch = v11;
  *&v27.duration.timescale = *&range->var1.var1;
  if (volume == endVolume)
  {
    *&range.start.value = *&range->var0.var0;
    range.start.epoch = range->var0.var3;
    [(JFXCompositionTrackGroup *)self requestVolume:&range atTime:COERCE_DOUBLE(__PAIR64__(HIDWORD(range.start.value), LODWORD(endVolume)))];
  }

  range = v27;
  CMTimeRangeGetEnd(&rangeCopy.start, &range);
  [(JFXCompositionTrackGroup *)self timeOfLastVolumeChange];
  v12 = CMTimeCompare(&rangeCopy.start, &range.start);
  if (v12 < 0)
  {
    v17 = JFXLog_DebugComposition();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      range = v27;
      CMTimeRangeGetEnd(&rangeCopy.start, &range);
      Seconds = CMTimeGetSeconds(&rangeCopy.start);
      [(JFXCompositionTrackGroup *)self timeOfLastVolumeChange];
      v20 = CMTimeGetSeconds(&range.start);
      LODWORD(range.start.value) = 134218240;
      *(&range.start.value + 4) = Seconds;
      LOWORD(range.start.flags) = 2048;
      *(&range.start.flags + 2) = v20;
      _os_log_debug_impl(&dword_242A3B000, v17, OS_LOG_TYPE_DEBUG, "setVolumeRamp endTime %f < timeOfLastVolumeChange %f -- ABORTING", &range, 0x16u);
    }
  }

  else
  {
    [(JFXCompositionTrackGroup *)self timeOfLastVolumeChange];
    *&rangeCopy.start.value = *&v27.start.value;
    rangeCopy.start.epoch = v27.start.epoch;
    if (CMTimeCompare(&rangeCopy.start, &range.start) < 0)
    {
      v13 = JFXLog_DebugComposition();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *&range.start.value = *&range->var0.var0;
        range.start.epoch = range->var0.var3;
        v21 = CMTimeGetSeconds(&range.start);
        [(JFXCompositionTrackGroup *)self timeOfLastVolumeChange];
        v22 = CMTimeGetSeconds(&range.start);
        LODWORD(range.start.value) = 134218240;
        *(&range.start.value + 4) = v21;
        LOWORD(range.start.flags) = 2048;
        *(&range.start.flags + 2) = v22;
        _os_log_debug_impl(&dword_242A3B000, v13, OS_LOG_TYPE_DEBUG, "setVolumeRamp startTime %f < timeOfLastVolumeChange %f -- Adjusting", &range, 0x16u);
      }

      [(JFXCompositionTrackGroup *)self timeOfLastVolumeChange];
      range = v27;
      CMTimeRangeGetEnd(&end, &range);
      CMTimeRangeFromTimeToTime(&v27, &rangeCopy.start, &end);
    }

    [(JFXCompositionTrackGroup *)self volumeChangePending];
    if (v14 == -1.0)
    {
      [(JFXCompositionTrackGroup *)self volumeAtLastVolumeChange];
      [(JFXCompositionTrackGroup *)self setVolumeChangePending:?];
    }

    if (segmentCopy)
    {
      [(JFXCompositionTrackGroup *)self timeOfLastVolumeChange];
      *&rangeCopy.start.value = *&v27.start.value;
      rangeCopy.start.epoch = v27.start.epoch;
      if (CMTimeCompare(&rangeCopy.start, &range.start) >= 1)
      {
        memset(&range, 0, sizeof(range));
        [(JFXCompositionTrackGroup *)self timeOfLastVolumeChange];
        [(JFXCompositionTrackGroup *)self timeOfLastVolumeChange];
        lhs = v27.start;
        CMTimeSubtract(&end, &lhs, &rhs);
        CMTimeRangeMake(&range, &rangeCopy.start, &end);
        *&v15 = self->_volumeAtLastVolumeChange;
        rangeCopy = range;
        [(JFXCompositionTrackGroup *)self commitVolumeRampFromStartVolume:&rangeCopy toEndVolume:v15 timeRange:COERCE_DOUBLE(__PAIR64__(range.duration.flags, LODWORD(v15)))];
        if (self->_volumeAtLastVolumeChange != 0.0)
        {
          v16 = JFXLog_DebugComposition();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            [JFXCompositionTrackGroup requestVolumeRampFromStartVolume:v16 toEndVolume:? timeRange:? fillEmptySegment:?];
          }
        }
      }
    }

    *&range.start.value = *&v27.start.value;
    range.start.epoch = v27.start.epoch;
    [(JFXCompositionTrackGroup *)self commitPendingVolumeToTime:&range];
    range = v27;
    [(JFXCompositionTrackGroup *)self commitVolumeRampFromStartVolume:&range toEndVolume:COERCE_DOUBLE(__PAIR64__(v27.duration.flags timeRange:LODWORD(volume))), COERCE_DOUBLE(__PAIR64__(HIDWORD(v27.start.epoch), LODWORD(endVolume)))];
  }

  return v12 >= 0;
}

- (BOOL)requestVolumeRampFromStartVolume:(float)volume toEndVolume:(float)endVolume timeRange:(id *)range
{
  v5 = *&range->var0.var3;
  v7[0] = *&range->var0.var0;
  v7[1] = v5;
  v7[2] = *&range->var1.var1;
  return [JFXCompositionTrackGroup requestVolumeRampFromStartVolume:"requestVolumeRampFromStartVolume:toEndVolume:timeRange:fillEmptySegment:" toEndVolume:v7 timeRange:0 fillEmptySegment:?];
}

- (void)setTimeOfLastVolumeChange:(id *)change
{
  v3 = *&change->var0;
  self->_timeOfLastVolumeChange.epoch = change->var3;
  *&self->_timeOfLastVolumeChange.value = v3;
}

- (void)setTimeOfLastRequest:(id *)request
{
  v3 = *&request->var0;
  self->_timeOfLastRequest.epoch = request->var3;
  *&self->_timeOfLastRequest.value = v3;
}

- (void)setFadeOutStart:(id *)start
{
  v3 = *&start->var0;
  self->_fadeOutStart.epoch = start->var3;
  *&self->_fadeOutStart.value = v3;
}

- (void)setFadeOutDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_fadeOutDuration.epoch = duration->var3;
  *&self->_fadeOutDuration.value = v3;
}

- (void)setLastRampToZeroEnd:(id *)end
{
  v3 = *&end->var0;
  self->_lastRampToZeroEnd.epoch = end->var3;
  *&self->_lastRampToZeroEnd.value = v3;
}

- (void)applyToTrack:(void *)a3 withSegments:(os_log_t)log assets:.cold.1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_debug_impl(&dword_242A3B000, log, OS_LOG_TYPE_DEBUG, "apply_to_track: WARNING asset %@ not found in assetsUsed", buf, 0xCu);
}

void __61__JFXCompositionTrackGroup_applyToTrack_withSegments_assets___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) sourceURL];
  OUTLINED_FUNCTION_1_0(&dword_242A3B000, v2, v3, "Unable to insert %@", v4, v5, v6, v7, 2u);
}

- (void)commitVolumeRampFromStartVolume:(void *)a1 toEndVolume:(uint8_t *)buf timeRange:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_242A3B000, log, OS_LOG_TYPE_ERROR, "An error occurred building an Audio Mix: %@", buf, 0xCu);
}

- (void)commitPendingVolumeToTime:(CMTime *)a1 .cold.1(CMTime *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  Seconds = CMTimeGetSeconds(&v8);
  v8.timescale = HIDWORD(Seconds);
  OUTLINED_FUNCTION_1_0(&dword_242A3B000, v2, v3, "commitPendingVolumeToTime: %f in Past", v4, v5, v6, v7, 0);
}

@end