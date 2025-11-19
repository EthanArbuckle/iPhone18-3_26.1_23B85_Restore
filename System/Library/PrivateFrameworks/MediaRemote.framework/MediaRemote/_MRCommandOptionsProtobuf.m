@interface _MRCommandOptionsProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPlaybackSessionPriority:(id)a3;
- (int)StringAsPrepareForSetQueueProactiveReasonType:(id)a3;
- (int)StringAsQueueEndAction:(id)a3;
- (int)StringAsRepeatMode:(id)a3;
- (int)StringAsReplaceIntent:(id)a3;
- (int)StringAsSendOptions:(id)a3;
- (int)StringAsShuffleMode:(id)a3;
- (int)StringAsSleepTimerStopMode:(id)a3;
- (int)playbackSessionPriority;
- (int)prepareForSetQueueProactiveReasonType;
- (int)queueEndAction;
- (int)repeatMode;
- (int)replaceIntent;
- (int)sendOptions;
- (int)shuffleMode;
- (int)sleepTimerStopMode;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAlwaysIgnoreDuringCall:(BOOL)a3;
- (void)setHasAlwaysIgnoreDuringSharePlay:(BOOL)a3;
- (void)setHasAssistantTTSEndTimestamp:(BOOL)a3;
- (void)setHasBeginSeek:(BOOL)a3;
- (void)setHasCommandTimeout:(BOOL)a3;
- (void)setHasEndSeek:(BOOL)a3;
- (void)setHasEnhanceDialogueActive:(BOOL)a3;
- (void)setHasExternalPlayerCommand:(BOOL)a3;
- (void)setHasNegative:(BOOL)a3;
- (void)setHasOriginatedFromRemoteDevice:(BOOL)a3;
- (void)setHasPlaybackPosition:(BOOL)a3;
- (void)setHasPlaybackQueueDestinationOffset:(BOOL)a3;
- (void)setHasPlaybackQueueInsertionPosition:(BOOL)a3;
- (void)setHasPlaybackQueueOffset:(BOOL)a3;
- (void)setHasPlaybackRate:(BOOL)a3;
- (void)setHasPlaybackSessionPriority:(BOOL)a3;
- (void)setHasPrepareForSetQueueIsProactive:(BOOL)a3;
- (void)setHasPrepareForSetQueueProactiveReasonType:(BOOL)a3;
- (void)setHasPreservesQueueEndAction:(BOOL)a3;
- (void)setHasPreservesRepeatMode:(BOOL)a3;
- (void)setHasPreservesShuffleMode:(BOOL)a3;
- (void)setHasQueueEndAction:(BOOL)a3;
- (void)setHasRadioStationID:(BOOL)a3;
- (void)setHasRating:(BOOL)a3;
- (void)setHasReferencePosition:(BOOL)a3;
- (void)setHasRepeatMode:(BOOL)a3;
- (void)setHasReplaceIntent:(BOOL)a3;
- (void)setHasRequestDefermentToPlaybackQueuePosition:(BOOL)a3;
- (void)setHasSendOptions:(BOOL)a3;
- (void)setHasShouldBeginRadioPlayback:(BOOL)a3;
- (void)setHasShouldOverrideManuallyCuratedQueue:(BOOL)a3;
- (void)setHasShuffleMode:(BOOL)a3;
- (void)setHasSkipInterval:(BOOL)a3;
- (void)setHasSleepTimerStopMode:(BOOL)a3;
- (void)setHasSleepTimerTime:(BOOL)a3;
- (void)setHasTrackID:(BOOL)a3;
- (void)setHasTrueCompletion:(BOOL)a3;
- (void)setHasVerifySupportedCommands:(BOOL)a3;
- (void)setHasVocalsControlActive:(BOOL)a3;
- (void)setHasVocalsControlContinuous:(BOOL)a3;
- (void)setHasVocalsControlLevel:(BOOL)a3;
- (void)setHasVocalsControlMaxLevel:(BOOL)a3;
- (void)setHasVocalsControlMinLevel:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRCommandOptionsProtobuf

- (void)setHasExternalPlayerCommand:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasSkipInterval:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasPlaybackRate:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasRating:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasNegative:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasPlaybackPosition:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (int)repeatMode
{
  if (*(&self->_has + 2))
  {
    return self->_repeatMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRepeatMode:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (int)StringAsRepeatMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"One"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"All"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)shuffleMode
{
  if ((*(&self->_has + 2) & 8) != 0)
  {
    return self->_shuffleMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasShuffleMode:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (int)StringAsShuffleMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Off"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Albums"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Songs"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTrackID:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasRadioStationID:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (int)sendOptions
{
  if ((*(&self->_has + 2) & 4) != 0)
  {
    return self->_sendOptions;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSendOptions:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (int)StringAsSendOptions:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"LaunchApplication"];
  }

  return v4;
}

- (void)setHasRequestDefermentToPlaybackQueuePosition:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasShouldOverrideManuallyCuratedQueue:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setHasShouldBeginRadioPlayback:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasPlaybackQueueInsertionPosition:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasPlaybackQueueOffset:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasPlaybackQueueDestinationOffset:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (int)replaceIntent
{
  if ((*(&self->_has + 2) & 2) != 0)
  {
    return self->_replaceIntent;
  }

  else
  {
    return 0;
  }
}

- (void)setHasReplaceIntent:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (int)StringAsReplaceIntent:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NonDestructive"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ClearUpNext"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KeepUpNext"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LeaveSharedSession"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasBeginSeek:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasEndSeek:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (int)queueEndAction
{
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    return self->_queueEndAction;
  }

  else
  {
    return 0;
  }
}

- (void)setHasQueueEndAction:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (int)StringAsQueueEndAction:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Clear"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Reset"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"AutoPlay"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPreservesRepeatMode:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasPreservesShuffleMode:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasPreservesQueueEndAction:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasVerifySupportedCommands:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (int)playbackSessionPriority
{
  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    return self->_playbackSessionPriority;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPlaybackSessionPriority:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (int)StringAsPlaybackSessionPriority:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Low"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"High"])
  {
    v4 = 512;
  }

  else if ([v3 isEqualToString:@"Immediate"])
  {
    v4 = 1024;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTrueCompletion:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasCommandTimeout:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasAssistantTTSEndTimestamp:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasAlwaysIgnoreDuringCall:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasAlwaysIgnoreDuringSharePlay:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasOriginatedFromRemoteDevice:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasPrepareForSetQueueIsProactive:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (int)prepareForSetQueueProactiveReasonType
{
  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    return self->_prepareForSetQueueProactiveReasonType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPrepareForSetQueueProactiveReasonType:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (int)StringAsPrepareForSetQueueProactiveReasonType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Boot"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ASE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SiriActivation"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasVocalsControlActive:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasVocalsControlLevel:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasVocalsControlMinLevel:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasVocalsControlMaxLevel:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasVocalsControlContinuous:(BOOL)a3
{
  v3 = 0x80000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3);
}

- (void)setHasSleepTimerTime:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (int)sleepTimerStopMode
{
  if ((*(&self->_has + 2) & 0x20) != 0)
  {
    return self->_sleepTimerStopMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSleepTimerStopMode:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (int)StringAsSleepTimerStopMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Off"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Time"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ChapterEnd"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ItemEnd"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasReferencePosition:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasEnhanceDialogueActive:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRCommandOptionsProtobuf;
  v4 = [(_MRCommandOptionsProtobuf *)&v8 description];
  v5 = [(_MRCommandOptionsProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v5 = v3;
  sourceID = self->_sourceID;
  if (sourceID)
  {
    [v3 setObject:sourceID forKey:@"sourceID"];
  }

  mediaType = self->_mediaType;
  if (mediaType)
  {
    [v5 setObject:mediaType forKey:@"mediaType"];
  }

  has = self->_has;
  if ((*&has & 0x40000000) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_externalPlayerCommand];
    [v5 setObject:v9 forKey:@"externalPlayerCommand"];

    has = self->_has;
    if ((*&has & 0x100000) == 0)
    {
LABEL_7:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((*&has & 0x100000) == 0)
  {
    goto LABEL_7;
  }

  *&v4 = self->_skipInterval;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v5 setObject:v10 forKey:@"skipInterval"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  *&v4 = self->_playbackRate;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v5 setObject:v11 forKey:@"playbackRate"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  *&v4 = self->_rating;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v5 setObject:v12 forKey:@"rating"];

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_10:
    if ((*&has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_negative];
  [v5 setObject:v13 forKey:@"negative"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_playbackPosition];
  [v5 setObject:v14 forKey:@"playbackPosition"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

LABEL_20:
  repeatMode = self->_repeatMode;
  if (repeatMode >= 4)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_repeatMode];
  }

  else
  {
    v16 = off_1E76A3628[repeatMode];
  }

  [v5 setObject:v16 forKey:@"repeatMode"];

  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_24:
    shuffleMode = self->_shuffleMode;
    if (shuffleMode >= 4)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_shuffleMode];
    }

    else
    {
      v18 = off_1E76A3648[shuffleMode];
    }

    [v5 setObject:v18 forKey:@"shuffleMode"];
  }

LABEL_28:
  contextID = self->_contextID;
  if (contextID)
  {
    [v5 setObject:contextID forKey:@"contextID"];
  }

  v20 = self->_has;
  if ((*&v20 & 0x80) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_trackID];
    [v5 setObject:v21 forKey:@"trackID"];

    v20 = self->_has;
  }

  if ((*&v20 & 0x10) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_radioStationID];
    [v5 setObject:v22 forKey:@"radioStationID"];
  }

  radioStationHash = self->_radioStationHash;
  if (radioStationHash)
  {
    [v5 setObject:radioStationHash forKey:@"radioStationHash"];
  }

  systemAppPlaybackQueueData = self->_systemAppPlaybackQueueData;
  if (systemAppPlaybackQueueData)
  {
    [v5 setObject:systemAppPlaybackQueueData forKey:@"systemAppPlaybackQueueData"];
  }

  destinationAppDisplayID = self->_destinationAppDisplayID;
  if (destinationAppDisplayID)
  {
    [v5 setObject:destinationAppDisplayID forKey:@"destinationAppDisplayID"];
  }

  v26 = self->_has;
  if ((*&v26 & 0x40000) != 0)
  {
    sendOptions = self->_sendOptions;
    if (sendOptions)
    {
      if (sendOptions == 1)
      {
        v43 = @"LaunchApplication";
      }

      else
      {
        v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_sendOptions];
      }
    }

    else
    {
      v43 = @"None";
    }

    [v5 setObject:v43 forKey:@"sendOptions"];

    v26 = self->_has;
    if ((*&v26 & 0x2000000000) == 0)
    {
LABEL_42:
      if ((*&v26 & 0x8000000000) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }
  }

  else if ((*&v26 & 0x2000000000) == 0)
  {
    goto LABEL_42;
  }

  v64 = [MEMORY[0x1E696AD98] numberWithBool:self->_requestDefermentToPlaybackQueuePosition];
  [v5 setObject:v64 forKey:@"requestDefermentToPlaybackQueuePosition"];

  if ((*&self->_has & 0x8000000000) != 0)
  {
LABEL_43:
    v27 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldOverrideManuallyCuratedQueue];
    [v5 setObject:v27 forKey:@"shouldOverrideManuallyCuratedQueue"];
  }

LABEL_44:
  stationURL = self->_stationURL;
  if (stationURL)
  {
    [v5 setObject:stationURL forKey:@"stationURL"];
  }

  v29 = self->_has;
  if ((*&v29 & 0x4000000000) != 0)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldBeginRadioPlayback];
    [v5 setObject:v30 forKey:@"shouldBeginRadioPlayback"];

    v29 = self->_has;
  }

  if ((*&v29 & 0x200) != 0)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithInt:self->_playbackQueueInsertionPosition];
    [v5 setObject:v31 forKey:@"playbackQueueInsertionPosition"];
  }

  contentItemID = self->_contentItemID;
  if (contentItemID)
  {
    [v5 setObject:contentItemID forKey:@"contentItemID"];
  }

  v33 = self->_has;
  if ((*&v33 & 0x400) != 0)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithInt:self->_playbackQueueOffset];
    [v5 setObject:v34 forKey:@"playbackQueueOffset"];

    v33 = self->_has;
  }

  if ((*&v33 & 0x100) != 0)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithInt:self->_playbackQueueDestinationOffset];
    [v5 setObject:v35 forKey:@"playbackQueueDestinationOffset"];
  }

  languageOption = self->_languageOption;
  if (languageOption)
  {
    [v5 setObject:languageOption forKey:@"languageOption"];
  }

  playbackQueueContext = self->_playbackQueueContext;
  if (playbackQueueContext)
  {
    [v5 setObject:playbackQueueContext forKey:@"playbackQueueContext"];
  }

  insertAfterContentItemID = self->_insertAfterContentItemID;
  if (insertAfterContentItemID)
  {
    [v5 setObject:insertAfterContentItemID forKey:@"insertAfterContentItemID"];
  }

  nowPlayingContentItemID = self->_nowPlayingContentItemID;
  if (nowPlayingContentItemID)
  {
    [v5 setObject:nowPlayingContentItemID forKey:@"nowPlayingContentItemID"];
  }

  if ((*(&self->_has + 2) & 2) != 0)
  {
    replaceIntent = self->_replaceIntent;
    if (replaceIntent >= 4)
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_replaceIntent];
    }

    else
    {
      v41 = off_1E76A3668[replaceIntent];
    }

    [v5 setObject:v41 forKey:@"replaceIntent"];
  }

  commandID = self->_commandID;
  if (commandID)
  {
    [v5 setObject:commandID forKey:@"commandID"];
  }

  senderID = self->_senderID;
  if (senderID)
  {
    [v5 setObject:senderID forKey:@"senderID"];
  }

  remoteControlInterface = self->_remoteControlInterface;
  if (remoteControlInterface)
  {
    [v5 setObject:remoteControlInterface forKey:@"remoteControlInterface"];
  }

  v47 = self->_has;
  if ((*&v47 & 0x8000000) != 0)
  {
    v48 = [MEMORY[0x1E696AD98] numberWithBool:self->_beginSeek];
    [v5 setObject:v48 forKey:@"beginSeek"];

    v47 = self->_has;
  }

  if ((*&v47 & 0x10000000) != 0)
  {
    v49 = [MEMORY[0x1E696AD98] numberWithBool:self->_endSeek];
    [v5 setObject:v49 forKey:@"endSeek"];
  }

  playbackSession = self->_playbackSession;
  if (playbackSession)
  {
    [v5 setObject:playbackSession forKey:@"playbackSession"];
  }

  userIdentityData = self->_userIdentityData;
  if (userIdentityData)
  {
    [v5 setObject:userIdentityData forKey:@"userIdentityData"];
  }

  insertBeforeContentItemID = self->_insertBeforeContentItemID;
  if (insertBeforeContentItemID)
  {
    [v5 setObject:insertBeforeContentItemID forKey:@"insertBeforeContentItemID"];
  }

  v53 = self->_has;
  if ((*&v53 & 0x4000) != 0)
  {
    queueEndAction = self->_queueEndAction;
    if (queueEndAction >= 4)
    {
      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_queueEndAction];
    }

    else
    {
      v61 = off_1E76A3688[queueEndAction];
    }

    [v5 setObject:v61 forKey:@"queueEndAction"];

    v53 = self->_has;
    if ((*&v53 & 0x800000000) == 0)
    {
LABEL_90:
      if ((*&v53 & 0x1000000000) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_109;
    }
  }

  else if ((*&v53 & 0x800000000) == 0)
  {
    goto LABEL_90;
  }

  v62 = [MEMORY[0x1E696AD98] numberWithBool:self->_preservesRepeatMode];
  [v5 setObject:v62 forKey:@"preservesRepeatMode"];

  v53 = self->_has;
  if ((*&v53 & 0x1000000000) == 0)
  {
LABEL_91:
    if ((*&v53 & 0x400000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

LABEL_109:
  v63 = [MEMORY[0x1E696AD98] numberWithBool:self->_preservesShuffleMode];
  [v5 setObject:v63 forKey:@"preservesShuffleMode"];

  if ((*&self->_has & 0x400000000) != 0)
  {
LABEL_92:
    v54 = [MEMORY[0x1E696AD98] numberWithBool:self->_preservesQueueEndAction];
    [v5 setObject:v54 forKey:@"preservesQueueEndAction"];
  }

LABEL_93:
  homeKitUserIdentifier = self->_homeKitUserIdentifier;
  if (homeKitUserIdentifier)
  {
    [v5 setObject:homeKitUserIdentifier forKey:@"homeKitUserIdentifier"];
  }

  if ((*(&self->_has + 5) & 2) != 0)
  {
    v56 = [MEMORY[0x1E696AD98] numberWithBool:self->_verifySupportedCommands];
    [v5 setObject:v56 forKey:@"verifySupportedCommands"];
  }

  playbackSessionIdentifier = self->_playbackSessionIdentifier;
  if (playbackSessionIdentifier)
  {
    [v5 setObject:playbackSessionIdentifier forKey:@"playbackSessionIdentifier"];
  }

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    playbackSessionPriority = self->_playbackSessionPriority;
    if (playbackSessionPriority)
    {
      if (playbackSessionPriority == 1024)
      {
        v59 = @"Immediate";
      }

      else if (playbackSessionPriority == 512)
      {
        v59 = @"High";
      }

      else
      {
        v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_playbackSessionPriority];
      }
    }

    else
    {
      v59 = @"Low";
    }

    [v5 setObject:v59 forKey:@"playbackSessionPriority"];
  }

  playbackSessionFilePath = self->_playbackSessionFilePath;
  if (playbackSessionFilePath)
  {
    [v5 setObject:playbackSessionFilePath forKey:@"playbackSessionFilePath"];
  }

  playbackSessionRevision = self->_playbackSessionRevision;
  if (playbackSessionRevision)
  {
    [v5 setObject:playbackSessionRevision forKey:@"playbackSessionRevision"];
  }

  playbackSessionMetadata = self->_playbackSessionMetadata;
  if (playbackSessionMetadata)
  {
    [v5 setObject:playbackSessionMetadata forKey:@"playbackSessionMetadata"];
  }

  playbackSessionType = self->_playbackSessionType;
  if (playbackSessionType)
  {
    [v5 setObject:playbackSessionType forKey:@"playbackSessionType"];
  }

  if (*(&self->_has + 5))
  {
    v69 = [MEMORY[0x1E696AD98] numberWithBool:self->_trueCompletion];
    [v5 setObject:v69 forKey:@"trueCompletion"];
  }

  playbackAuthorizationToken = self->_playbackAuthorizationToken;
  if (playbackAuthorizationToken)
  {
    [v5 setObject:playbackAuthorizationToken forKey:@"playbackAuthorizationToken"];
  }

  eventNoticeType = self->_eventNoticeType;
  if (eventNoticeType)
  {
    [v5 setObject:eventNoticeType forKey:@"eventNoticeType"];
  }

  eventNoticeIdentifier = self->_eventNoticeIdentifier;
  if (eventNoticeIdentifier)
  {
    [v5 setObject:eventNoticeIdentifier forKey:@"eventNoticeIdentifier"];
  }

  sharedPlaybackSessionIdentifier = self->_sharedPlaybackSessionIdentifier;
  if (sharedPlaybackSessionIdentifier)
  {
    [v5 setObject:sharedPlaybackSessionIdentifier forKey:@"sharedPlaybackSessionIdentifier"];
  }

  v74 = self->_has;
  if ((*&v74 & 4) != 0)
  {
    v90 = [MEMORY[0x1E696AD98] numberWithDouble:self->_commandTimeout];
    [v5 setObject:v90 forKey:@"commandTimeout"];

    v74 = self->_has;
    if ((*&v74 & 2) == 0)
    {
LABEL_140:
      if ((*&v74 & 1) == 0)
      {
        goto LABEL_142;
      }

      goto LABEL_141;
    }
  }

  else if ((*&v74 & 2) == 0)
  {
    goto LABEL_140;
  }

  v91 = [MEMORY[0x1E696AD98] numberWithDouble:self->_assistantTTSEndTimestamp];
  [v5 setObject:v91 forKey:@"assistantTTSEndTimestamp"];

  if (*&self->_has)
  {
LABEL_141:
    v75 = [MEMORY[0x1E696AD98] numberWithDouble:self->_assistantCommandSendTimestamp];
    [v5 setObject:v75 forKey:@"assistantCommandSendTimestamp"];
  }

LABEL_142:
  originatingDeviceUID = self->_originatingDeviceUID;
  if (originatingDeviceUID)
  {
    [v5 setObject:originatingDeviceUID forKey:@"originatingDeviceUID"];
  }

  destinationDeviceUIDs = self->_destinationDeviceUIDs;
  if (destinationDeviceUIDs)
  {
    [v5 setObject:destinationDeviceUIDs forKey:@"destinationDeviceUIDs"];
  }

  desiredSessionID = self->_desiredSessionID;
  if (desiredSessionID)
  {
    [v5 setObject:desiredSessionID forKey:@"desiredSessionID"];
  }

  v79 = self->_has;
  if ((*&v79 & 0x2000000) != 0)
  {
    v80 = [MEMORY[0x1E696AD98] numberWithBool:self->_alwaysIgnoreDuringCall];
    [v5 setObject:v80 forKey:@"alwaysIgnoreDuringCall"];

    v79 = self->_has;
  }

  if ((*&v79 & 0x4000000) != 0)
  {
    v81 = [MEMORY[0x1E696AD98] numberWithBool:self->_alwaysIgnoreDuringSharePlay];
    [v5 setObject:v81 forKey:@"alwaysIgnoreDuringSharePlay"];
  }

  commandSequenceUUID = self->_commandSequenceUUID;
  if (commandSequenceUUID)
  {
    [v5 setObject:commandSequenceUUID forKey:@"commandSequenceUUID"];
  }

  if (*(&self->_has + 4))
  {
    v83 = [MEMORY[0x1E696AD98] numberWithBool:self->_originatedFromRemoteDevice];
    [v5 setObject:v83 forKey:@"originatedFromRemoteDevice"];
  }

  siriTurnIdentifier = self->_siriTurnIdentifier;
  if (siriTurnIdentifier)
  {
    [v5 setObject:siriTurnIdentifier forKey:@"siriTurnIdentifier"];
  }

  siriSearchDataSetIdentifier = self->_siriSearchDataSetIdentifier;
  if (siriSearchDataSetIdentifier)
  {
    [v5 setObject:siriSearchDataSetIdentifier forKey:@"siriSearchDataSetIdentifier"];
  }

  if ((*(&self->_has + 4) & 2) != 0)
  {
    v86 = [MEMORY[0x1E696AD98] numberWithBool:self->_prepareForSetQueueIsProactive];
    [v5 setObject:v86 forKey:@"prepareForSetQueueIsProactive"];
  }

  prepareForSetQueueProactiveReason = self->_prepareForSetQueueProactiveReason;
  if (prepareForSetQueueProactiveReason)
  {
    [v5 setObject:prepareForSetQueueProactiveReason forKey:@"prepareForSetQueueProactiveReason"];
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    prepareForSetQueueProactiveReasonType = self->_prepareForSetQueueProactiveReasonType;
    if (prepareForSetQueueProactiveReasonType >= 4)
    {
      v89 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_prepareForSetQueueProactiveReasonType];
    }

    else
    {
      v89 = off_1E76A36A8[prepareForSetQueueProactiveReasonType];
    }

    [v5 setObject:v89 forKey:@"prepareForSetQueueProactiveReasonType"];
  }

  applicationUserIdentity = self->_applicationUserIdentity;
  if (applicationUserIdentity)
  {
    [v5 setObject:applicationUserIdentity forKey:@"applicationUserIdentity"];
  }

  systemAppPlaybackQueue = self->_systemAppPlaybackQueue;
  if (systemAppPlaybackQueue)
  {
    v94 = [(_MRSystemPlaybackQueueProtobuf *)systemAppPlaybackQueue dictionaryRepresentation];
    [v5 setObject:v94 forKey:@"systemAppPlaybackQueue"];
  }

  v95 = self->_has;
  if ((*&v95 & 0x40000000000) != 0)
  {
    v102 = [MEMORY[0x1E696AD98] numberWithBool:self->_vocalsControlActive];
    [v5 setObject:v102 forKey:@"vocalsControlActive"];

    v95 = self->_has;
    if ((*&v95 & 0x400000) == 0)
    {
LABEL_178:
      if ((*&v95 & 0x1000000) == 0)
      {
        goto LABEL_179;
      }

      goto LABEL_191;
    }
  }

  else if ((*&v95 & 0x400000) == 0)
  {
    goto LABEL_178;
  }

  *&v4 = self->_vocalsControlLevel;
  v103 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v5 setObject:v103 forKey:@"vocalsControlLevel"];

  v95 = self->_has;
  if ((*&v95 & 0x1000000) == 0)
  {
LABEL_179:
    if ((*&v95 & 0x800000) == 0)
    {
      goto LABEL_180;
    }

    goto LABEL_192;
  }

LABEL_191:
  *&v4 = self->_vocalsControlMinLevel;
  v104 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v5 setObject:v104 forKey:@"vocalsControlMinLevel"];

  v95 = self->_has;
  if ((*&v95 & 0x800000) == 0)
  {
LABEL_180:
    if ((*&v95 & 0x80000000000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_181;
  }

LABEL_192:
  *&v4 = self->_vocalsControlMaxLevel;
  v105 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v5 setObject:v105 forKey:@"vocalsControlMaxLevel"];

  if ((*&self->_has & 0x80000000000) != 0)
  {
LABEL_181:
    v96 = [MEMORY[0x1E696AD98] numberWithBool:self->_vocalsControlContinuous];
    [v5 setObject:v96 forKey:@"vocalsControlContinuous"];
  }

LABEL_182:
  associatedParticipantIdentifier = self->_associatedParticipantIdentifier;
  if (associatedParticipantIdentifier)
  {
    [v5 setObject:associatedParticipantIdentifier forKey:@"associatedParticipantIdentifier"];
  }

  v98 = self->_has;
  if ((*&v98 & 0x40) != 0)
  {
    v99 = [MEMORY[0x1E696AD98] numberWithDouble:self->_sleepTimerTime];
    [v5 setObject:v99 forKey:@"sleepTimerTime"];

    v98 = self->_has;
  }

  if ((*&v98 & 0x200000) != 0)
  {
    sleepTimerStopMode = self->_sleepTimerStopMode;
    if (sleepTimerStopMode >= 4)
    {
      v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_sleepTimerStopMode];
    }

    else
    {
      v101 = off_1E76A36C8[sleepTimerStopMode];
    }

    [v5 setObject:v101 forKey:@"sleepTimerStopMode"];
  }

  dialogOptions = self->_dialogOptions;
  if (dialogOptions)
  {
    v107 = [(_MRDictionaryProtobuf *)dialogOptions dictionaryRepresentation];
    [v5 setObject:v107 forKey:@"dialogOptions"];
  }

  clientPreferredLanguages = self->_clientPreferredLanguages;
  if (clientPreferredLanguages)
  {
    [v5 setObject:clientPreferredLanguages forKey:@"clientPreferredLanguages"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v109 = [MEMORY[0x1E696AD98] numberWithDouble:self->_referencePosition];
    [v5 setObject:v109 forKey:@"referencePosition"];
  }

  delegateAccountData = self->_delegateAccountData;
  if (delegateAccountData)
  {
    [v5 setObject:delegateAccountData forKey:@"delegateAccountData"];
  }

  delegateAccountDataType = self->_delegateAccountDataType;
  if (delegateAccountDataType)
  {
    [v5 setObject:delegateAccountDataType forKey:@"delegateAccountDataType"];
  }

  if ((*(&self->_has + 3) & 0x20) != 0)
  {
    v112 = [MEMORY[0x1E696AD98] numberWithBool:self->_enhanceDialogueActive];
    [v5 setObject:v112 forKey:@"enhanceDialogueActive"];
  }

  v113 = v5;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v59 = v4;
  if (self->_sourceID)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if (self->_mediaType)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  has = self->_has;
  if ((*&has & 0x40000000) != 0)
  {
    externalPlayerCommand = self->_externalPlayerCommand;
    PBDataWriterWriteBOOLField();
    v4 = v59;
    has = self->_has;
    if ((*&has & 0x100000) == 0)
    {
LABEL_7:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_160;
    }
  }

  else if ((*&has & 0x100000) == 0)
  {
    goto LABEL_7;
  }

  skipInterval = self->_skipInterval;
  PBDataWriterWriteFloatField();
  v4 = v59;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_161;
  }

LABEL_160:
  playbackRate = self->_playbackRate;
  PBDataWriterWriteFloatField();
  v4 = v59;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_162;
  }

LABEL_161:
  rating = self->_rating;
  PBDataWriterWriteFloatField();
  v4 = v59;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_10:
    if ((*&has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_163;
  }

LABEL_162:
  negative = self->_negative;
  PBDataWriterWriteBOOLField();
  v4 = v59;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_164;
  }

LABEL_163:
  playbackPosition = self->_playbackPosition;
  PBDataWriterWriteDoubleField();
  v4 = v59;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_165;
  }

LABEL_164:
  repeatMode = self->_repeatMode;
  PBDataWriterWriteInt32Field();
  v4 = v59;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_166;
  }

LABEL_165:
  shuffleMode = self->_shuffleMode;
  PBDataWriterWriteInt32Field();
  v4 = v59;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_166:
  trackID = self->_trackID;
  PBDataWriterWriteUint64Field();
  v4 = v59;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_15:
    radioStationID = self->_radioStationID;
    PBDataWriterWriteInt64Field();
    v4 = v59;
  }

LABEL_16:
  if (self->_radioStationHash)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if (self->_systemAppPlaybackQueueData)
  {
    PBDataWriterWriteDataField();
    v4 = v59;
  }

  if (self->_destinationAppDisplayID)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  v7 = self->_has;
  if ((*&v7 & 0x40000) != 0)
  {
    sendOptions = self->_sendOptions;
    PBDataWriterWriteInt32Field();
    v4 = v59;
    v7 = self->_has;
  }

  if ((*&v7 & 0x2000000000) != 0)
  {
    requestDefermentToPlaybackQueuePosition = self->_requestDefermentToPlaybackQueuePosition;
    PBDataWriterWriteBOOLField();
    v4 = v59;
  }

  if (self->_contextID)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if ((*(&self->_has + 4) & 0x80) != 0)
  {
    shouldOverrideManuallyCuratedQueue = self->_shouldOverrideManuallyCuratedQueue;
    PBDataWriterWriteBOOLField();
    v4 = v59;
  }

  if (self->_stationURL)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  v11 = self->_has;
  if ((*&v11 & 0x4000000000) != 0)
  {
    shouldBeginRadioPlayback = self->_shouldBeginRadioPlayback;
    PBDataWriterWriteBOOLField();
    v4 = v59;
    v11 = self->_has;
  }

  if ((*&v11 & 0x200) != 0)
  {
    playbackQueueInsertionPosition = self->_playbackQueueInsertionPosition;
    PBDataWriterWriteInt32Field();
    v4 = v59;
  }

  if (self->_contentItemID)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  v14 = self->_has;
  if ((*&v14 & 0x400) != 0)
  {
    playbackQueueOffset = self->_playbackQueueOffset;
    PBDataWriterWriteInt32Field();
    v4 = v59;
    v14 = self->_has;
  }

  if ((*&v14 & 0x100) != 0)
  {
    playbackQueueDestinationOffset = self->_playbackQueueDestinationOffset;
    PBDataWriterWriteInt32Field();
    v4 = v59;
  }

  if (self->_languageOption)
  {
    PBDataWriterWriteDataField();
    v4 = v59;
  }

  if (self->_playbackQueueContext)
  {
    PBDataWriterWriteDataField();
    v4 = v59;
  }

  if (self->_insertAfterContentItemID)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if (self->_nowPlayingContentItemID)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if ((*(&self->_has + 2) & 2) != 0)
  {
    replaceIntent = self->_replaceIntent;
    PBDataWriterWriteInt32Field();
    v4 = v59;
  }

  if (self->_commandID)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if (self->_senderID)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if (self->_remoteControlInterface)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  v18 = self->_has;
  if ((*&v18 & 0x8000000) != 0)
  {
    beginSeek = self->_beginSeek;
    PBDataWriterWriteBOOLField();
    v4 = v59;
    v18 = self->_has;
  }

  if ((*&v18 & 0x10000000) != 0)
  {
    endSeek = self->_endSeek;
    PBDataWriterWriteBOOLField();
    v4 = v59;
  }

  if (self->_playbackSession)
  {
    PBDataWriterWriteDataField();
    v4 = v59;
  }

  if (self->_userIdentityData)
  {
    PBDataWriterWriteDataField();
    v4 = v59;
  }

  if (self->_insertBeforeContentItemID)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  v21 = self->_has;
  if ((*&v21 & 0x4000) != 0)
  {
    queueEndAction = self->_queueEndAction;
    PBDataWriterWriteInt32Field();
    v4 = v59;
    v21 = self->_has;
    if ((*&v21 & 0x800000000) == 0)
    {
LABEL_70:
      if ((*&v21 & 0x1000000000) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_170;
    }
  }

  else if ((*&v21 & 0x800000000) == 0)
  {
    goto LABEL_70;
  }

  preservesRepeatMode = self->_preservesRepeatMode;
  PBDataWriterWriteBOOLField();
  v4 = v59;
  v21 = self->_has;
  if ((*&v21 & 0x1000000000) == 0)
  {
LABEL_71:
    if ((*&v21 & 0x400000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_170:
  preservesShuffleMode = self->_preservesShuffleMode;
  PBDataWriterWriteBOOLField();
  v4 = v59;
  if ((*&self->_has & 0x400000000) != 0)
  {
LABEL_72:
    preservesQueueEndAction = self->_preservesQueueEndAction;
    PBDataWriterWriteBOOLField();
    v4 = v59;
  }

LABEL_73:
  if (self->_homeKitUserIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if ((*(&self->_has + 5) & 2) != 0)
  {
    verifySupportedCommands = self->_verifySupportedCommands;
    PBDataWriterWriteBOOLField();
    v4 = v59;
  }

  if (self->_playbackSessionIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    playbackSessionPriority = self->_playbackSessionPriority;
    PBDataWriterWriteInt32Field();
    v4 = v59;
  }

  if (self->_playbackSessionFilePath)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if (self->_playbackSessionRevision)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if (self->_playbackSessionMetadata)
  {
    PBDataWriterWriteDataField();
    v4 = v59;
  }

  if (self->_playbackSessionType)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if (*(&self->_has + 5))
  {
    trueCompletion = self->_trueCompletion;
    PBDataWriterWriteBOOLField();
    v4 = v59;
  }

  if (self->_playbackAuthorizationToken)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if (self->_eventNoticeType)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if (self->_eventNoticeIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if (self->_sharedPlaybackSessionIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  v26 = self->_has;
  if ((*&v26 & 4) != 0)
  {
    commandTimeout = self->_commandTimeout;
    PBDataWriterWriteDoubleField();
    v4 = v59;
    v26 = self->_has;
    if ((*&v26 & 2) == 0)
    {
LABEL_101:
      if ((*&v26 & 1) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_102;
    }
  }

  else if ((*&v26 & 2) == 0)
  {
    goto LABEL_101;
  }

  assistantTTSEndTimestamp = self->_assistantTTSEndTimestamp;
  PBDataWriterWriteDoubleField();
  v4 = v59;
  if (*&self->_has)
  {
LABEL_102:
    assistantCommandSendTimestamp = self->_assistantCommandSendTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v59;
  }

LABEL_103:
  if (self->_originatingDeviceUID)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if (self->_destinationDeviceUIDs)
  {
    PBDataWriterWriteDataField();
    v4 = v59;
  }

  if (self->_desiredSessionID)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  v28 = self->_has;
  if ((*&v28 & 0x2000000) != 0)
  {
    alwaysIgnoreDuringCall = self->_alwaysIgnoreDuringCall;
    PBDataWriterWriteBOOLField();
    v4 = v59;
    v28 = self->_has;
  }

  if ((*&v28 & 0x4000000) != 0)
  {
    alwaysIgnoreDuringSharePlay = self->_alwaysIgnoreDuringSharePlay;
    PBDataWriterWriteBOOLField();
    v4 = v59;
  }

  if (self->_commandSequenceUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if (*(&self->_has + 4))
  {
    originatedFromRemoteDevice = self->_originatedFromRemoteDevice;
    PBDataWriterWriteBOOLField();
    v4 = v59;
  }

  if (self->_siriTurnIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if (self->_siriSearchDataSetIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if ((*(&self->_has + 4) & 2) != 0)
  {
    prepareForSetQueueIsProactive = self->_prepareForSetQueueIsProactive;
    PBDataWriterWriteBOOLField();
    v4 = v59;
  }

  if (self->_prepareForSetQueueProactiveReason)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    prepareForSetQueueProactiveReasonType = self->_prepareForSetQueueProactiveReasonType;
    PBDataWriterWriteInt32Field();
    v4 = v59;
  }

  if (self->_applicationUserIdentity)
  {
    PBDataWriterWriteDataField();
    v4 = v59;
  }

  if (self->_systemAppPlaybackQueue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v59;
  }

  v34 = self->_has;
  if ((*&v34 & 0x40000000000) != 0)
  {
    vocalsControlActive = self->_vocalsControlActive;
    PBDataWriterWriteBOOLField();
    v4 = v59;
    v34 = self->_has;
    if ((*&v34 & 0x400000) == 0)
    {
LABEL_133:
      if ((*&v34 & 0x1000000) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_177;
    }
  }

  else if ((*&v34 & 0x400000) == 0)
  {
    goto LABEL_133;
  }

  vocalsControlLevel = self->_vocalsControlLevel;
  PBDataWriterWriteFloatField();
  v4 = v59;
  v34 = self->_has;
  if ((*&v34 & 0x1000000) == 0)
  {
LABEL_134:
    if ((*&v34 & 0x800000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_178;
  }

LABEL_177:
  vocalsControlMinLevel = self->_vocalsControlMinLevel;
  PBDataWriterWriteFloatField();
  v4 = v59;
  v34 = self->_has;
  if ((*&v34 & 0x800000) == 0)
  {
LABEL_135:
    if ((*&v34 & 0x80000000000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_136;
  }

LABEL_178:
  vocalsControlMaxLevel = self->_vocalsControlMaxLevel;
  PBDataWriterWriteFloatField();
  v4 = v59;
  if ((*&self->_has & 0x80000000000) != 0)
  {
LABEL_136:
    vocalsControlContinuous = self->_vocalsControlContinuous;
    PBDataWriterWriteBOOLField();
    v4 = v59;
  }

LABEL_137:
  if (self->_associatedParticipantIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  v36 = self->_has;
  if ((*&v36 & 0x40) != 0)
  {
    sleepTimerTime = self->_sleepTimerTime;
    PBDataWriterWriteDoubleField();
    v4 = v59;
    v36 = self->_has;
  }

  if ((*&v36 & 0x200000) != 0)
  {
    sleepTimerStopMode = self->_sleepTimerStopMode;
    PBDataWriterWriteInt32Field();
    v4 = v59;
  }

  if (self->_dialogOptions)
  {
    PBDataWriterWriteSubmessage();
    v4 = v59;
  }

  if (self->_clientPreferredLanguages)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    referencePosition = self->_referencePosition;
    PBDataWriterWriteDoubleField();
    v4 = v59;
  }

  if (self->_delegateAccountData)
  {
    PBDataWriterWriteDataField();
    v4 = v59;
  }

  if (self->_delegateAccountDataType)
  {
    PBDataWriterWriteStringField();
    v4 = v59;
  }

  if ((*(&self->_has + 3) & 0x20) != 0)
  {
    enhanceDialogueActive = self->_enhanceDialogueActive;
    PBDataWriterWriteBOOLField();
    v4 = v59;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v15 = v4;
  if (self->_sourceID)
  {
    [v4 setSourceID:?];
    v4 = v15;
  }

  if (self->_mediaType)
  {
    [v15 setMediaType:?];
    v4 = v15;
  }

  has = self->_has;
  if ((*&has & 0x40000000) != 0)
  {
    *(v4 + 497) = self->_externalPlayerCommand;
    *(v4 + 64) |= 0x40000000uLL;
    has = self->_has;
    if ((*&has & 0x100000) == 0)
    {
LABEL_7:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_160;
    }
  }

  else if ((*&has & 0x100000) == 0)
  {
    goto LABEL_7;
  }

  *(v4 + 108) = LODWORD(self->_skipInterval);
  *(v4 + 64) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_161;
  }

LABEL_160:
  *(v4 + 69) = LODWORD(self->_playbackRate);
  *(v4 + 64) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_162;
  }

LABEL_161:
  *(v4 + 90) = LODWORD(self->_rating);
  *(v4 + 64) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_10:
    if ((*&has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_163;
  }

LABEL_162:
  *(v4 + 498) = self->_negative;
  *(v4 + 64) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_164;
  }

LABEL_163:
  *(v4 + 4) = *&self->_playbackPosition;
  *(v4 + 64) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_165;
  }

LABEL_164:
  *(v4 + 94) = self->_repeatMode;
  *(v4 + 64) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_166;
  }

LABEL_165:
  *(v4 + 102) = self->_shuffleMode;
  *(v4 + 64) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_166:
  *(v4 + 8) = self->_trackID;
  *(v4 + 64) |= 0x80uLL;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_15:
    *(v4 + 5) = self->_radioStationID;
    *(v4 + 64) |= 0x10uLL;
  }

LABEL_16:
  if (self->_radioStationHash)
  {
    [v15 setRadioStationHash:?];
    v4 = v15;
  }

  if (self->_systemAppPlaybackQueueData)
  {
    [v15 setSystemAppPlaybackQueueData:?];
    v4 = v15;
  }

  if (self->_destinationAppDisplayID)
  {
    [v15 setDestinationAppDisplayID:?];
    v4 = v15;
  }

  v6 = self->_has;
  if ((*&v6 & 0x40000) != 0)
  {
    *(v4 + 96) = self->_sendOptions;
    *(v4 + 64) |= 0x40000uLL;
    v6 = self->_has;
  }

  if ((*&v6 & 0x2000000000) != 0)
  {
    *(v4 + 504) = self->_requestDefermentToPlaybackQueuePosition;
    *(v4 + 64) |= 0x2000000000uLL;
  }

  if (self->_contextID)
  {
    [v15 setContextID:?];
    v4 = v15;
  }

  if ((*(&self->_has + 4) & 0x80) != 0)
  {
    *(v4 + 506) = self->_shouldOverrideManuallyCuratedQueue;
    *(v4 + 64) |= 0x8000000000uLL;
  }

  if (self->_stationURL)
  {
    [v15 setStationURL:?];
    v4 = v15;
  }

  v7 = self->_has;
  if ((*&v7 & 0x4000000000) != 0)
  {
    *(v4 + 505) = self->_shouldBeginRadioPlayback;
    *(v4 + 64) |= 0x4000000000uLL;
    v7 = self->_has;
  }

  if ((*&v7 & 0x200) != 0)
  {
    *(v4 + 67) = self->_playbackQueueInsertionPosition;
    *(v4 + 64) |= 0x200uLL;
  }

  if (self->_contentItemID)
  {
    [v15 setContentItemID:?];
    v4 = v15;
  }

  v8 = self->_has;
  if ((*&v8 & 0x400) != 0)
  {
    *(v4 + 68) = self->_playbackQueueOffset;
    *(v4 + 64) |= 0x400uLL;
    v8 = self->_has;
  }

  if ((*&v8 & 0x100) != 0)
  {
    *(v4 + 66) = self->_playbackQueueDestinationOffset;
    *(v4 + 64) |= 0x100uLL;
  }

  if (self->_languageOption)
  {
    [v15 setLanguageOption:?];
    v4 = v15;
  }

  if (self->_playbackQueueContext)
  {
    [v15 setPlaybackQueueContext:?];
    v4 = v15;
  }

  if (self->_insertAfterContentItemID)
  {
    [v15 setInsertAfterContentItemID:?];
    v4 = v15;
  }

  if (self->_nowPlayingContentItemID)
  {
    [v15 setNowPlayingContentItemID:?];
    v4 = v15;
  }

  if ((*(&self->_has + 2) & 2) != 0)
  {
    *(v4 + 95) = self->_replaceIntent;
    *(v4 + 64) |= 0x20000uLL;
  }

  if (self->_commandID)
  {
    [v15 setCommandID:?];
    v4 = v15;
  }

  if (self->_senderID)
  {
    [v15 setSenderID:?];
    v4 = v15;
  }

  if (self->_remoteControlInterface)
  {
    [v15 setRemoteControlInterface:?];
    v4 = v15;
  }

  v9 = self->_has;
  if ((*&v9 & 0x8000000) != 0)
  {
    *(v4 + 494) = self->_beginSeek;
    *(v4 + 64) |= 0x8000000uLL;
    v9 = self->_has;
  }

  if ((*&v9 & 0x10000000) != 0)
  {
    *(v4 + 495) = self->_endSeek;
    *(v4 + 64) |= 0x10000000uLL;
  }

  if (self->_playbackSession)
  {
    [v15 setPlaybackSession:?];
    v4 = v15;
  }

  if (self->_userIdentityData)
  {
    [v15 setUserIdentityData:?];
    v4 = v15;
  }

  if (self->_insertBeforeContentItemID)
  {
    [v15 setInsertBeforeContentItemID:?];
    v4 = v15;
  }

  v10 = self->_has;
  if ((*&v10 & 0x4000) != 0)
  {
    *(v4 + 87) = self->_queueEndAction;
    *(v4 + 64) |= 0x4000uLL;
    v10 = self->_has;
    if ((*&v10 & 0x800000000) == 0)
    {
LABEL_70:
      if ((*&v10 & 0x1000000000) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_170;
    }
  }

  else if ((*&v10 & 0x800000000) == 0)
  {
    goto LABEL_70;
  }

  *(v4 + 502) = self->_preservesRepeatMode;
  *(v4 + 64) |= 0x800000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x1000000000) == 0)
  {
LABEL_71:
    if ((*&v10 & 0x400000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_170:
  *(v4 + 503) = self->_preservesShuffleMode;
  *(v4 + 64) |= 0x1000000000uLL;
  if ((*&self->_has & 0x400000000) != 0)
  {
LABEL_72:
    *(v4 + 501) = self->_preservesQueueEndAction;
    *(v4 + 64) |= 0x400000000uLL;
  }

LABEL_73:
  if (self->_homeKitUserIdentifier)
  {
    [v15 setHomeKitUserIdentifier:?];
    v4 = v15;
  }

  if ((*(&self->_has + 5) & 2) != 0)
  {
    *(v4 + 508) = self->_verifySupportedCommands;
    *(v4 + 64) |= 0x20000000000uLL;
  }

  if (self->_playbackSessionIdentifier)
  {
    [v15 setPlaybackSessionIdentifier:?];
    v4 = v15;
  }

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    *(v4 + 78) = self->_playbackSessionPriority;
    *(v4 + 64) |= 0x1000uLL;
  }

  if (self->_playbackSessionFilePath)
  {
    [v15 setPlaybackSessionFilePath:?];
    v4 = v15;
  }

  if (self->_playbackSessionRevision)
  {
    [v15 setPlaybackSessionRevision:?];
    v4 = v15;
  }

  if (self->_playbackSessionMetadata)
  {
    [v15 setPlaybackSessionMetadata:?];
    v4 = v15;
  }

  if (self->_playbackSessionType)
  {
    [v15 setPlaybackSessionType:?];
    v4 = v15;
  }

  if (*(&self->_has + 5))
  {
    *(v4 + 507) = self->_trueCompletion;
    *(v4 + 64) |= 0x10000000000uLL;
  }

  if (self->_playbackAuthorizationToken)
  {
    [v15 setPlaybackAuthorizationToken:?];
    v4 = v15;
  }

  if (self->_eventNoticeType)
  {
    [v15 setEventNoticeType:?];
    v4 = v15;
  }

  if (self->_eventNoticeIdentifier)
  {
    [v15 setEventNoticeIdentifier:?];
    v4 = v15;
  }

  if (self->_sharedPlaybackSessionIdentifier)
  {
    [v15 setSharedPlaybackSessionIdentifier:?];
    v4 = v15;
  }

  v11 = self->_has;
  if ((*&v11 & 4) != 0)
  {
    *(v4 + 3) = *&self->_commandTimeout;
    *(v4 + 64) |= 4uLL;
    v11 = self->_has;
    if ((*&v11 & 2) == 0)
    {
LABEL_101:
      if ((*&v11 & 1) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_102;
    }
  }

  else if ((*&v11 & 2) == 0)
  {
    goto LABEL_101;
  }

  *(v4 + 2) = *&self->_assistantTTSEndTimestamp;
  *(v4 + 64) |= 2uLL;
  if (*&self->_has)
  {
LABEL_102:
    *(v4 + 1) = *&self->_assistantCommandSendTimestamp;
    *(v4 + 64) |= 1uLL;
  }

LABEL_103:
  if (self->_originatingDeviceUID)
  {
    [v15 setOriginatingDeviceUID:?];
    v4 = v15;
  }

  if (self->_destinationDeviceUIDs)
  {
    [v15 setDestinationDeviceUIDs:?];
    v4 = v15;
  }

  if (self->_desiredSessionID)
  {
    [v15 setDesiredSessionID:?];
    v4 = v15;
  }

  v12 = self->_has;
  if ((*&v12 & 0x2000000) != 0)
  {
    *(v4 + 492) = self->_alwaysIgnoreDuringCall;
    *(v4 + 64) |= 0x2000000uLL;
    v12 = self->_has;
  }

  if ((*&v12 & 0x4000000) != 0)
  {
    *(v4 + 493) = self->_alwaysIgnoreDuringSharePlay;
    *(v4 + 64) |= 0x4000000uLL;
  }

  if (self->_commandSequenceUUID)
  {
    [v15 setCommandSequenceUUID:?];
    v4 = v15;
  }

  if (*(&self->_has + 4))
  {
    *(v4 + 499) = self->_originatedFromRemoteDevice;
    *(v4 + 64) |= 0x100000000uLL;
  }

  if (self->_siriTurnIdentifier)
  {
    [v15 setSiriTurnIdentifier:?];
    v4 = v15;
  }

  if (self->_siriSearchDataSetIdentifier)
  {
    [v15 setSiriSearchDataSetIdentifier:?];
    v4 = v15;
  }

  if ((*(&self->_has + 4) & 2) != 0)
  {
    *(v4 + 500) = self->_prepareForSetQueueIsProactive;
    *(v4 + 64) |= 0x200000000uLL;
  }

  if (self->_prepareForSetQueueProactiveReason)
  {
    [v15 setPrepareForSetQueueProactiveReason:?];
    v4 = v15;
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    *(v4 + 86) = self->_prepareForSetQueueProactiveReasonType;
    *(v4 + 64) |= 0x2000uLL;
  }

  if (self->_applicationUserIdentity)
  {
    [v15 setApplicationUserIdentity:?];
    v4 = v15;
  }

  if (self->_systemAppPlaybackQueue)
  {
    [v15 setSystemAppPlaybackQueue:?];
    v4 = v15;
  }

  v13 = self->_has;
  if ((*&v13 & 0x40000000000) != 0)
  {
    *(v4 + 509) = self->_vocalsControlActive;
    *(v4 + 64) |= 0x40000000000uLL;
    v13 = self->_has;
    if ((*&v13 & 0x400000) == 0)
    {
LABEL_133:
      if ((*&v13 & 0x1000000) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_177;
    }
  }

  else if ((*&v13 & 0x400000) == 0)
  {
    goto LABEL_133;
  }

  *(v4 + 120) = LODWORD(self->_vocalsControlLevel);
  *(v4 + 64) |= 0x400000uLL;
  v13 = self->_has;
  if ((*&v13 & 0x1000000) == 0)
  {
LABEL_134:
    if ((*&v13 & 0x800000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_178;
  }

LABEL_177:
  *(v4 + 122) = LODWORD(self->_vocalsControlMinLevel);
  *(v4 + 64) |= 0x1000000uLL;
  v13 = self->_has;
  if ((*&v13 & 0x800000) == 0)
  {
LABEL_135:
    if ((*&v13 & 0x80000000000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_136;
  }

LABEL_178:
  *(v4 + 121) = LODWORD(self->_vocalsControlMaxLevel);
  *(v4 + 64) |= 0x800000uLL;
  if ((*&self->_has & 0x80000000000) != 0)
  {
LABEL_136:
    *(v4 + 510) = self->_vocalsControlContinuous;
    *(v4 + 64) |= 0x80000000000uLL;
  }

LABEL_137:
  if (self->_associatedParticipantIdentifier)
  {
    [v15 setAssociatedParticipantIdentifier:?];
    v4 = v15;
  }

  v14 = self->_has;
  if ((*&v14 & 0x40) != 0)
  {
    *(v4 + 7) = *&self->_sleepTimerTime;
    *(v4 + 64) |= 0x40uLL;
    v14 = self->_has;
  }

  if ((*&v14 & 0x200000) != 0)
  {
    *(v4 + 109) = self->_sleepTimerStopMode;
    *(v4 + 64) |= 0x200000uLL;
  }

  if (self->_dialogOptions)
  {
    [v15 setDialogOptions:?];
    v4 = v15;
  }

  if (self->_clientPreferredLanguages)
  {
    [v15 setClientPreferredLanguages:?];
    v4 = v15;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(v4 + 6) = *&self->_referencePosition;
    *(v4 + 64) |= 0x20uLL;
  }

  if (self->_delegateAccountData)
  {
    [v15 setDelegateAccountData:?];
    v4 = v15;
  }

  if (self->_delegateAccountDataType)
  {
    [v15 setDelegateAccountDataType:?];
    v4 = v15;
  }

  if ((*(&self->_has + 3) & 0x20) != 0)
  {
    *(v4 + 496) = self->_enhanceDialogueActive;
    *(v4 + 64) |= 0x20000000uLL;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_sourceID copyWithZone:a3];
  v7 = *(v5 + 440);
  *(v5 + 440) = v6;

  v8 = [(NSString *)self->_mediaType copyWithZone:a3];
  v9 = *(v5 + 224);
  *(v5 + 224) = v8;

  has = self->_has;
  if ((*&has & 0x40000000) != 0)
  {
    *(v5 + 497) = self->_externalPlayerCommand;
    *(v5 + 512) |= 0x40000000uLL;
    has = self->_has;
    if ((*&has & 0x100000) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_74;
    }
  }

  else if ((*&has & 0x100000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 432) = self->_skipInterval;
  *(v5 + 512) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_4:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v5 + 276) = self->_playbackRate;
  *(v5 + 512) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_5:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v5 + 360) = self->_rating;
  *(v5 + 512) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_6:
    if ((*&has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(v5 + 498) = self->_negative;
  *(v5 + 512) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_7:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(v5 + 32) = self->_playbackPosition;
  *(v5 + 512) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_8:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(v5 + 376) = self->_repeatMode;
  *(v5 + 512) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_9:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v5 + 408) = self->_shuffleMode;
  *(v5 + 512) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_80:
  *(v5 + 64) = self->_trackID;
  *(v5 + 512) |= 0x80uLL;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_11:
    *(v5 + 40) = self->_radioStationID;
    *(v5 + 512) |= 0x10uLL;
  }

LABEL_12:
  v11 = [(NSString *)self->_radioStationHash copyWithZone:a3];
  v12 = *(v5 + 352);
  *(v5 + 352) = v11;

  v13 = [(NSData *)self->_systemAppPlaybackQueueData copyWithZone:a3];
  v14 = *(v5 + 464);
  *(v5 + 464) = v13;

  v15 = [(NSString *)self->_destinationAppDisplayID copyWithZone:a3];
  v16 = *(v5 + 152);
  *(v5 + 152) = v15;

  v17 = self->_has;
  if ((*&v17 & 0x40000) != 0)
  {
    *(v5 + 384) = self->_sendOptions;
    *(v5 + 512) |= 0x40000uLL;
    v17 = self->_has;
  }

  if ((*&v17 & 0x2000000000) != 0)
  {
    *(v5 + 504) = self->_requestDefermentToPlaybackQueuePosition;
    *(v5 + 512) |= 0x2000000000uLL;
  }

  v18 = [(NSString *)self->_contextID copyWithZone:a3];
  v19 = *(v5 + 120);
  *(v5 + 120) = v18;

  if ((*(&self->_has + 4) & 0x80) != 0)
  {
    *(v5 + 506) = self->_shouldOverrideManuallyCuratedQueue;
    *(v5 + 512) |= 0x8000000000uLL;
  }

  v20 = [(NSString *)self->_stationURL copyWithZone:a3];
  v21 = *(v5 + 448);
  *(v5 + 448) = v20;

  v22 = self->_has;
  if ((*&v22 & 0x4000000000) != 0)
  {
    *(v5 + 505) = self->_shouldBeginRadioPlayback;
    *(v5 + 512) |= 0x4000000000uLL;
    v22 = self->_has;
  }

  if ((*&v22 & 0x200) != 0)
  {
    *(v5 + 268) = self->_playbackQueueInsertionPosition;
    *(v5 + 512) |= 0x200uLL;
  }

  v23 = [(NSString *)self->_contentItemID copyWithZone:a3];
  v24 = *(v5 + 112);
  *(v5 + 112) = v23;

  v25 = self->_has;
  if ((*&v25 & 0x400) != 0)
  {
    *(v5 + 272) = self->_playbackQueueOffset;
    *(v5 + 512) |= 0x400uLL;
    v25 = self->_has;
  }

  if ((*&v25 & 0x100) != 0)
  {
    *(v5 + 264) = self->_playbackQueueDestinationOffset;
    *(v5 + 512) |= 0x100uLL;
  }

  v26 = [(NSData *)self->_languageOption copyWithZone:a3];
  v27 = *(v5 + 216);
  *(v5 + 216) = v26;

  v28 = [(NSData *)self->_playbackQueueContext copyWithZone:a3];
  v29 = *(v5 + 256);
  *(v5 + 256) = v28;

  v30 = [(NSString *)self->_insertAfterContentItemID copyWithZone:a3];
  v31 = *(v5 + 200);
  *(v5 + 200) = v30;

  v32 = [(NSString *)self->_nowPlayingContentItemID copyWithZone:a3];
  v33 = *(v5 + 232);
  *(v5 + 232) = v32;

  if ((*(&self->_has + 2) & 2) != 0)
  {
    *(v5 + 380) = self->_replaceIntent;
    *(v5 + 512) |= 0x20000uLL;
  }

  v34 = [(NSString *)self->_commandID copyWithZone:a3];
  v35 = *(v5 + 96);
  *(v5 + 96) = v34;

  v36 = [(NSString *)self->_senderID copyWithZone:a3];
  v37 = *(v5 + 392);
  *(v5 + 392) = v36;

  v38 = [(NSString *)self->_remoteControlInterface copyWithZone:a3];
  v39 = *(v5 + 368);
  *(v5 + 368) = v38;

  v40 = self->_has;
  if ((*&v40 & 0x8000000) != 0)
  {
    *(v5 + 494) = self->_beginSeek;
    *(v5 + 512) |= 0x8000000uLL;
    v40 = self->_has;
  }

  if ((*&v40 & 0x10000000) != 0)
  {
    *(v5 + 495) = self->_endSeek;
    *(v5 + 512) |= 0x10000000uLL;
  }

  v41 = [(NSData *)self->_playbackSession copyWithZone:a3];
  v42 = *(v5 + 280);
  *(v5 + 280) = v41;

  v43 = [(NSData *)self->_userIdentityData copyWithZone:a3];
  v44 = *(v5 + 472);
  *(v5 + 472) = v43;

  v45 = [(NSString *)self->_insertBeforeContentItemID copyWithZone:a3];
  v46 = *(v5 + 208);
  *(v5 + 208) = v45;

  v47 = self->_has;
  if ((*&v47 & 0x4000) != 0)
  {
    *(v5 + 348) = self->_queueEndAction;
    *(v5 + 512) |= 0x4000uLL;
    v47 = self->_has;
    if ((*&v47 & 0x800000000) == 0)
    {
LABEL_34:
      if ((*&v47 & 0x1000000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_84;
    }
  }

  else if ((*&v47 & 0x800000000) == 0)
  {
    goto LABEL_34;
  }

  *(v5 + 502) = self->_preservesRepeatMode;
  *(v5 + 512) |= 0x800000000uLL;
  v47 = self->_has;
  if ((*&v47 & 0x1000000000) == 0)
  {
LABEL_35:
    if ((*&v47 & 0x400000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_84:
  *(v5 + 503) = self->_preservesShuffleMode;
  *(v5 + 512) |= 0x1000000000uLL;
  if ((*&self->_has & 0x400000000) != 0)
  {
LABEL_36:
    *(v5 + 501) = self->_preservesQueueEndAction;
    *(v5 + 512) |= 0x400000000uLL;
  }

LABEL_37:
  v48 = [(NSString *)self->_homeKitUserIdentifier copyWithZone:a3];
  v49 = *(v5 + 192);
  *(v5 + 192) = v48;

  if ((*(&self->_has + 5) & 2) != 0)
  {
    *(v5 + 508) = self->_verifySupportedCommands;
    *(v5 + 512) |= 0x20000000000uLL;
  }

  v50 = [(NSString *)self->_playbackSessionIdentifier copyWithZone:a3];
  v51 = *(v5 + 296);
  *(v5 + 296) = v50;

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    *(v5 + 312) = self->_playbackSessionPriority;
    *(v5 + 512) |= 0x1000uLL;
  }

  v52 = [(NSString *)self->_playbackSessionFilePath copyWithZone:a3];
  v53 = *(v5 + 288);
  *(v5 + 288) = v52;

  v54 = [(NSString *)self->_playbackSessionRevision copyWithZone:a3];
  v55 = *(v5 + 320);
  *(v5 + 320) = v54;

  v56 = [(NSData *)self->_playbackSessionMetadata copyWithZone:a3];
  v57 = *(v5 + 304);
  *(v5 + 304) = v56;

  v58 = [(NSString *)self->_playbackSessionType copyWithZone:a3];
  v59 = *(v5 + 328);
  *(v5 + 328) = v58;

  if (*(&self->_has + 5))
  {
    *(v5 + 507) = self->_trueCompletion;
    *(v5 + 512) |= 0x10000000000uLL;
  }

  v60 = [(NSString *)self->_playbackAuthorizationToken copyWithZone:a3];
  v61 = *(v5 + 248);
  *(v5 + 248) = v60;

  v62 = [(NSString *)self->_eventNoticeType copyWithZone:a3];
  v63 = *(v5 + 184);
  *(v5 + 184) = v62;

  v64 = [(NSString *)self->_eventNoticeIdentifier copyWithZone:a3];
  v65 = *(v5 + 176);
  *(v5 + 176) = v64;

  v66 = [(NSString *)self->_sharedPlaybackSessionIdentifier copyWithZone:a3];
  v67 = *(v5 + 400);
  *(v5 + 400) = v66;

  v68 = self->_has;
  if ((*&v68 & 4) != 0)
  {
    *(v5 + 24) = self->_commandTimeout;
    *(v5 + 512) |= 4uLL;
    v68 = self->_has;
    if ((*&v68 & 2) == 0)
    {
LABEL_45:
      if ((*&v68 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }
  }

  else if ((*&v68 & 2) == 0)
  {
    goto LABEL_45;
  }

  *(v5 + 16) = self->_assistantTTSEndTimestamp;
  *(v5 + 512) |= 2uLL;
  if (*&self->_has)
  {
LABEL_46:
    *(v5 + 8) = self->_assistantCommandSendTimestamp;
    *(v5 + 512) |= 1uLL;
  }

LABEL_47:
  v69 = [(NSString *)self->_originatingDeviceUID copyWithZone:a3];
  v70 = *(v5 + 240);
  *(v5 + 240) = v69;

  v71 = [(NSData *)self->_destinationDeviceUIDs copyWithZone:a3];
  v72 = *(v5 + 160);
  *(v5 + 160) = v71;

  v73 = [(NSString *)self->_desiredSessionID copyWithZone:a3];
  v74 = *(v5 + 144);
  *(v5 + 144) = v73;

  v75 = self->_has;
  if ((*&v75 & 0x2000000) != 0)
  {
    *(v5 + 492) = self->_alwaysIgnoreDuringCall;
    *(v5 + 512) |= 0x2000000uLL;
    v75 = self->_has;
  }

  if ((*&v75 & 0x4000000) != 0)
  {
    *(v5 + 493) = self->_alwaysIgnoreDuringSharePlay;
    *(v5 + 512) |= 0x4000000uLL;
  }

  v76 = [(NSString *)self->_commandSequenceUUID copyWithZone:a3];
  v77 = *(v5 + 104);
  *(v5 + 104) = v76;

  if (*(&self->_has + 4))
  {
    *(v5 + 499) = self->_originatedFromRemoteDevice;
    *(v5 + 512) |= 0x100000000uLL;
  }

  v78 = [(NSString *)self->_siriTurnIdentifier copyWithZone:a3];
  v79 = *(v5 + 424);
  *(v5 + 424) = v78;

  v80 = [(NSString *)self->_siriSearchDataSetIdentifier copyWithZone:a3];
  v81 = *(v5 + 416);
  *(v5 + 416) = v80;

  if ((*(&self->_has + 4) & 2) != 0)
  {
    *(v5 + 500) = self->_prepareForSetQueueIsProactive;
    *(v5 + 512) |= 0x200000000uLL;
  }

  v82 = [(NSString *)self->_prepareForSetQueueProactiveReason copyWithZone:a3];
  v83 = *(v5 + 336);
  *(v5 + 336) = v82;

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    *(v5 + 344) = self->_prepareForSetQueueProactiveReasonType;
    *(v5 + 512) |= 0x2000uLL;
  }

  v84 = [(NSData *)self->_applicationUserIdentity copyWithZone:a3];
  v85 = *(v5 + 72);
  *(v5 + 72) = v84;

  v86 = [(_MRSystemPlaybackQueueProtobuf *)self->_systemAppPlaybackQueue copyWithZone:a3];
  v87 = *(v5 + 456);
  *(v5 + 456) = v86;

  v88 = self->_has;
  if ((*&v88 & 0x40000000000) != 0)
  {
    *(v5 + 509) = self->_vocalsControlActive;
    *(v5 + 512) |= 0x40000000000uLL;
    v88 = self->_has;
    if ((*&v88 & 0x400000) == 0)
    {
LABEL_59:
      if ((*&v88 & 0x1000000) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_91;
    }
  }

  else if ((*&v88 & 0x400000) == 0)
  {
    goto LABEL_59;
  }

  *(v5 + 480) = self->_vocalsControlLevel;
  *(v5 + 512) |= 0x400000uLL;
  v88 = self->_has;
  if ((*&v88 & 0x1000000) == 0)
  {
LABEL_60:
    if ((*&v88 & 0x800000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v5 + 488) = self->_vocalsControlMinLevel;
  *(v5 + 512) |= 0x1000000uLL;
  v88 = self->_has;
  if ((*&v88 & 0x800000) == 0)
  {
LABEL_61:
    if ((*&v88 & 0x80000000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_92:
  *(v5 + 484) = self->_vocalsControlMaxLevel;
  *(v5 + 512) |= 0x800000uLL;
  if ((*&self->_has & 0x80000000000) != 0)
  {
LABEL_62:
    *(v5 + 510) = self->_vocalsControlContinuous;
    *(v5 + 512) |= 0x80000000000uLL;
  }

LABEL_63:
  v89 = [(NSString *)self->_associatedParticipantIdentifier copyWithZone:a3];
  v90 = *(v5 + 80);
  *(v5 + 80) = v89;

  v91 = self->_has;
  if ((*&v91 & 0x40) != 0)
  {
    *(v5 + 56) = self->_sleepTimerTime;
    *(v5 + 512) |= 0x40uLL;
    v91 = self->_has;
  }

  if ((*&v91 & 0x200000) != 0)
  {
    *(v5 + 436) = self->_sleepTimerStopMode;
    *(v5 + 512) |= 0x200000uLL;
  }

  v92 = [(_MRDictionaryProtobuf *)self->_dialogOptions copyWithZone:a3];
  v93 = *(v5 + 168);
  *(v5 + 168) = v92;

  v94 = [(NSString *)self->_clientPreferredLanguages copyWithZone:a3];
  v95 = *(v5 + 88);
  *(v5 + 88) = v94;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 48) = self->_referencePosition;
    *(v5 + 512) |= 0x20uLL;
  }

  v96 = [(NSData *)self->_delegateAccountData copyWithZone:a3];
  v97 = *(v5 + 128);
  *(v5 + 128) = v96;

  v98 = [(NSString *)self->_delegateAccountDataType copyWithZone:a3];
  v99 = *(v5 + 136);
  *(v5 + 136) = v98;

  if ((*(&self->_has + 3) & 0x20) != 0)
  {
    *(v5 + 496) = self->_enhanceDialogueActive;
    *(v5 + 512) |= 0x20000000uLL;
  }

  v100 = v5;

  return v100;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_160;
  }

  sourceID = self->_sourceID;
  if (sourceID | *(v4 + 55))
  {
    if (![(NSString *)sourceID isEqual:?])
    {
      goto LABEL_160;
    }
  }

  mediaType = self->_mediaType;
  if (mediaType | *(v4 + 28))
  {
    if (![(NSString *)mediaType isEqual:?])
    {
      goto LABEL_160;
    }
  }

  has = self->_has;
  v8 = *(v4 + 64);
  if ((*&has & 0x40000000) != 0)
  {
    if ((v8 & 0x40000000) == 0)
    {
      goto LABEL_160;
    }

    v9 = *(v4 + 497);
    if (self->_externalPlayerCommand)
    {
      if ((*(v4 + 497) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(v4 + 497))
    {
      goto LABEL_160;
    }
  }

  else if ((v8 & 0x40000000) != 0)
  {
    goto LABEL_160;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v8 & 0x100000) == 0 || self->_skipInterval != *(v4 + 108))
    {
      goto LABEL_160;
    }
  }

  else if ((v8 & 0x100000) != 0)
  {
    goto LABEL_160;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v8 & 0x800) == 0 || self->_playbackRate != *(v4 + 69))
    {
      goto LABEL_160;
    }
  }

  else if ((v8 & 0x800) != 0)
  {
    goto LABEL_160;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v8 & 0x8000) == 0 || self->_rating != *(v4 + 90))
    {
      goto LABEL_160;
    }
  }

  else if ((v8 & 0x8000) != 0)
  {
    goto LABEL_160;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_160;
    }

    v10 = *(v4 + 498);
    if (self->_negative)
    {
      if ((*(v4 + 498) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(v4 + 498))
    {
      goto LABEL_160;
    }
  }

  else if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_160;
  }

  if ((*&has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_playbackPosition != *(v4 + 4))
    {
      goto LABEL_160;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_160;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v8 & 0x10000) == 0 || self->_repeatMode != *(v4 + 94))
    {
      goto LABEL_160;
    }
  }

  else if ((v8 & 0x10000) != 0)
  {
    goto LABEL_160;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v8 & 0x80000) == 0 || self->_shuffleMode != *(v4 + 102))
    {
      goto LABEL_160;
    }
  }

  else if ((v8 & 0x80000) != 0)
  {
    goto LABEL_160;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_trackID != *(v4 + 8))
    {
      goto LABEL_160;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_160;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_radioStationID != *(v4 + 5))
    {
      goto LABEL_160;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_160;
  }

  radioStationHash = self->_radioStationHash;
  if (radioStationHash | *(v4 + 44) && ![(NSString *)radioStationHash isEqual:?])
  {
    goto LABEL_160;
  }

  systemAppPlaybackQueueData = self->_systemAppPlaybackQueueData;
  if (systemAppPlaybackQueueData | *(v4 + 58))
  {
    if (![(NSData *)systemAppPlaybackQueueData isEqual:?])
    {
      goto LABEL_160;
    }
  }

  destinationAppDisplayID = self->_destinationAppDisplayID;
  if (destinationAppDisplayID | *(v4 + 19))
  {
    if (![(NSString *)destinationAppDisplayID isEqual:?])
    {
      goto LABEL_160;
    }
  }

  v14 = self->_has;
  v15 = *(v4 + 64);
  if ((*&v14 & 0x40000) != 0)
  {
    if ((v15 & 0x40000) == 0 || self->_sendOptions != *(v4 + 96))
    {
      goto LABEL_160;
    }
  }

  else if ((v15 & 0x40000) != 0)
  {
    goto LABEL_160;
  }

  if ((*&v14 & 0x2000000000) != 0)
  {
    if ((v15 & 0x2000000000) == 0)
    {
      goto LABEL_160;
    }

    v20 = *(v4 + 504);
    if (self->_requestDefermentToPlaybackQueuePosition)
    {
      if ((*(v4 + 504) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(v4 + 504))
    {
      goto LABEL_160;
    }
  }

  else if ((v15 & 0x2000000000) != 0)
  {
    goto LABEL_160;
  }

  contextID = self->_contextID;
  if (contextID | *(v4 + 15))
  {
    if (![(NSString *)contextID isEqual:?])
    {
      goto LABEL_160;
    }

    v14 = self->_has;
  }

  v17 = *(v4 + 64);
  if ((*&v14 & 0x8000000000) != 0)
  {
    if ((v17 & 0x8000000000) == 0)
    {
      goto LABEL_160;
    }

    v21 = *(v4 + 506);
    if (self->_shouldOverrideManuallyCuratedQueue)
    {
      if ((*(v4 + 506) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(v4 + 506))
    {
      goto LABEL_160;
    }
  }

  else if ((v17 & 0x8000000000) != 0)
  {
    goto LABEL_160;
  }

  stationURL = self->_stationURL;
  if (stationURL | *(v4 + 56))
  {
    if (![(NSString *)stationURL isEqual:?])
    {
      goto LABEL_160;
    }

    v14 = self->_has;
  }

  v19 = *(v4 + 64);
  if ((*&v14 & 0x4000000000) != 0)
  {
    if ((v19 & 0x4000000000) == 0)
    {
      goto LABEL_160;
    }

    v22 = *(v4 + 505);
    if (self->_shouldBeginRadioPlayback)
    {
      if ((*(v4 + 505) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(v4 + 505))
    {
      goto LABEL_160;
    }
  }

  else if ((v19 & 0x4000000000) != 0)
  {
    goto LABEL_160;
  }

  if ((*&v14 & 0x200) != 0)
  {
    if ((v19 & 0x200) == 0 || self->_playbackQueueInsertionPosition != *(v4 + 67))
    {
      goto LABEL_160;
    }
  }

  else if ((v19 & 0x200) != 0)
  {
    goto LABEL_160;
  }

  contentItemID = self->_contentItemID;
  if (contentItemID | *(v4 + 14))
  {
    if (![(NSString *)contentItemID isEqual:?])
    {
      goto LABEL_160;
    }

    v14 = self->_has;
  }

  v24 = *(v4 + 64);
  if ((*&v14 & 0x400) != 0)
  {
    if ((v24 & 0x400) == 0 || self->_playbackQueueOffset != *(v4 + 68))
    {
      goto LABEL_160;
    }
  }

  else if ((v24 & 0x400) != 0)
  {
    goto LABEL_160;
  }

  if ((*&v14 & 0x100) != 0)
  {
    if ((v24 & 0x100) == 0 || self->_playbackQueueDestinationOffset != *(v4 + 66))
    {
      goto LABEL_160;
    }
  }

  else if ((v24 & 0x100) != 0)
  {
    goto LABEL_160;
  }

  languageOption = self->_languageOption;
  if (languageOption | *(v4 + 27) && ![(NSData *)languageOption isEqual:?])
  {
    goto LABEL_160;
  }

  playbackQueueContext = self->_playbackQueueContext;
  if (playbackQueueContext | *(v4 + 32))
  {
    if (![(NSData *)playbackQueueContext isEqual:?])
    {
      goto LABEL_160;
    }
  }

  insertAfterContentItemID = self->_insertAfterContentItemID;
  if (insertAfterContentItemID | *(v4 + 25))
  {
    if (![(NSString *)insertAfterContentItemID isEqual:?])
    {
      goto LABEL_160;
    }
  }

  nowPlayingContentItemID = self->_nowPlayingContentItemID;
  if (nowPlayingContentItemID | *(v4 + 29))
  {
    if (![(NSString *)nowPlayingContentItemID isEqual:?])
    {
      goto LABEL_160;
    }
  }

  v29 = *(v4 + 64);
  if ((*(&self->_has + 2) & 2) != 0)
  {
    if ((v29 & 0x20000) == 0 || self->_replaceIntent != *(v4 + 95))
    {
      goto LABEL_160;
    }
  }

  else if ((v29 & 0x20000) != 0)
  {
    goto LABEL_160;
  }

  commandID = self->_commandID;
  if (commandID | *(v4 + 12) && ![(NSString *)commandID isEqual:?])
  {
    goto LABEL_160;
  }

  senderID = self->_senderID;
  if (senderID | *(v4 + 49))
  {
    if (![(NSString *)senderID isEqual:?])
    {
      goto LABEL_160;
    }
  }

  remoteControlInterface = self->_remoteControlInterface;
  if (remoteControlInterface | *(v4 + 46))
  {
    if (![(NSString *)remoteControlInterface isEqual:?])
    {
      goto LABEL_160;
    }
  }

  v33 = self->_has;
  v34 = *(v4 + 64);
  if ((*&v33 & 0x8000000) != 0)
  {
    if ((v34 & 0x8000000) == 0)
    {
      goto LABEL_160;
    }

    v35 = *(v4 + 494);
    if (self->_beginSeek)
    {
      if ((*(v4 + 494) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(v4 + 494))
    {
      goto LABEL_160;
    }
  }

  else if ((v34 & 0x8000000) != 0)
  {
    goto LABEL_160;
  }

  if ((*&v33 & 0x10000000) != 0)
  {
    if ((v34 & 0x10000000) == 0)
    {
      goto LABEL_160;
    }

    v43 = *(v4 + 495);
    if (self->_endSeek)
    {
      if ((*(v4 + 495) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(v4 + 495))
    {
      goto LABEL_160;
    }
  }

  else if ((v34 & 0x10000000) != 0)
  {
    goto LABEL_160;
  }

  playbackSession = self->_playbackSession;
  if (playbackSession | *(v4 + 35) && ![(NSData *)playbackSession isEqual:?])
  {
    goto LABEL_160;
  }

  userIdentityData = self->_userIdentityData;
  if (userIdentityData | *(v4 + 59))
  {
    if (![(NSData *)userIdentityData isEqual:?])
    {
      goto LABEL_160;
    }
  }

  insertBeforeContentItemID = self->_insertBeforeContentItemID;
  if (insertBeforeContentItemID | *(v4 + 26))
  {
    if (![(NSString *)insertBeforeContentItemID isEqual:?])
    {
      goto LABEL_160;
    }
  }

  v39 = self->_has;
  v40 = *(v4 + 64);
  if ((*&v39 & 0x4000) != 0)
  {
    if ((v40 & 0x4000) == 0 || self->_queueEndAction != *(v4 + 87))
    {
      goto LABEL_160;
    }
  }

  else if ((v40 & 0x4000) != 0)
  {
    goto LABEL_160;
  }

  if ((*&v39 & 0x800000000) != 0)
  {
    if ((v40 & 0x800000000) == 0)
    {
      goto LABEL_160;
    }

    v44 = *(v4 + 502);
    if (self->_preservesRepeatMode)
    {
      if ((*(v4 + 502) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(v4 + 502))
    {
      goto LABEL_160;
    }
  }

  else if ((v40 & 0x800000000) != 0)
  {
    goto LABEL_160;
  }

  if ((*&v39 & 0x1000000000) != 0)
  {
    if ((v40 & 0x1000000000) == 0)
    {
      goto LABEL_160;
    }

    v45 = *(v4 + 503);
    if (self->_preservesShuffleMode)
    {
      if ((*(v4 + 503) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(v4 + 503))
    {
      goto LABEL_160;
    }
  }

  else if ((v40 & 0x1000000000) != 0)
  {
    goto LABEL_160;
  }

  if ((*&v39 & 0x400000000) != 0)
  {
    if ((v40 & 0x400000000) == 0)
    {
      goto LABEL_160;
    }

    v46 = *(v4 + 501);
    if (self->_preservesQueueEndAction)
    {
      if ((*(v4 + 501) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(v4 + 501))
    {
      goto LABEL_160;
    }
  }

  else if ((v40 & 0x400000000) != 0)
  {
    goto LABEL_160;
  }

  homeKitUserIdentifier = self->_homeKitUserIdentifier;
  if (homeKitUserIdentifier | *(v4 + 24))
  {
    if (![(NSString *)homeKitUserIdentifier isEqual:?])
    {
      goto LABEL_160;
    }

    v39 = self->_has;
  }

  v48 = *(v4 + 64);
  if ((*&v39 & 0x20000000000) != 0)
  {
    if ((v48 & 0x20000000000) == 0)
    {
      goto LABEL_160;
    }

    v49 = *(v4 + 508);
    if (self->_verifySupportedCommands)
    {
      if ((*(v4 + 508) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(v4 + 508))
    {
      goto LABEL_160;
    }
  }

  else if ((v48 & 0x20000000000) != 0)
  {
    goto LABEL_160;
  }

  playbackSessionIdentifier = self->_playbackSessionIdentifier;
  if (playbackSessionIdentifier | *(v4 + 37))
  {
    if (![(NSString *)playbackSessionIdentifier isEqual:?])
    {
      goto LABEL_160;
    }

    v39 = self->_has;
  }

  v51 = *(v4 + 64);
  if ((*&v39 & 0x1000) != 0)
  {
    if ((v51 & 0x1000) == 0 || self->_playbackSessionPriority != *(v4 + 78))
    {
      goto LABEL_160;
    }
  }

  else if ((v51 & 0x1000) != 0)
  {
    goto LABEL_160;
  }

  playbackSessionFilePath = self->_playbackSessionFilePath;
  if (playbackSessionFilePath | *(v4 + 36) && ![(NSString *)playbackSessionFilePath isEqual:?])
  {
    goto LABEL_160;
  }

  playbackSessionRevision = self->_playbackSessionRevision;
  if (playbackSessionRevision | *(v4 + 40))
  {
    if (![(NSString *)playbackSessionRevision isEqual:?])
    {
      goto LABEL_160;
    }
  }

  playbackSessionMetadata = self->_playbackSessionMetadata;
  if (playbackSessionMetadata | *(v4 + 38))
  {
    if (![(NSData *)playbackSessionMetadata isEqual:?])
    {
      goto LABEL_160;
    }
  }

  playbackSessionType = self->_playbackSessionType;
  if (playbackSessionType | *(v4 + 41))
  {
    if (![(NSString *)playbackSessionType isEqual:?])
    {
      goto LABEL_160;
    }
  }

  v56 = *(v4 + 64);
  if (*(&self->_has + 5))
  {
    if ((v56 & 0x10000000000) == 0)
    {
      goto LABEL_160;
    }

    v63 = *(v4 + 507);
    if (self->_trueCompletion)
    {
      if ((*(v4 + 507) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(v4 + 507))
    {
      goto LABEL_160;
    }
  }

  else if ((v56 & 0x10000000000) != 0)
  {
    goto LABEL_160;
  }

  playbackAuthorizationToken = self->_playbackAuthorizationToken;
  if (playbackAuthorizationToken | *(v4 + 31) && ![(NSString *)playbackAuthorizationToken isEqual:?])
  {
    goto LABEL_160;
  }

  eventNoticeType = self->_eventNoticeType;
  if (eventNoticeType | *(v4 + 23))
  {
    if (![(NSString *)eventNoticeType isEqual:?])
    {
      goto LABEL_160;
    }
  }

  eventNoticeIdentifier = self->_eventNoticeIdentifier;
  if (eventNoticeIdentifier | *(v4 + 22))
  {
    if (![(NSString *)eventNoticeIdentifier isEqual:?])
    {
      goto LABEL_160;
    }
  }

  sharedPlaybackSessionIdentifier = self->_sharedPlaybackSessionIdentifier;
  if (sharedPlaybackSessionIdentifier | *(v4 + 50))
  {
    if (![(NSString *)sharedPlaybackSessionIdentifier isEqual:?])
    {
      goto LABEL_160;
    }
  }

  v61 = self->_has;
  v62 = *(v4 + 64);
  if ((*&v61 & 4) != 0)
  {
    if ((v62 & 4) == 0 || self->_commandTimeout != *(v4 + 3))
    {
      goto LABEL_160;
    }
  }

  else if ((v62 & 4) != 0)
  {
    goto LABEL_160;
  }

  if ((*&v61 & 2) != 0)
  {
    if ((v62 & 2) == 0 || self->_assistantTTSEndTimestamp != *(v4 + 2))
    {
      goto LABEL_160;
    }
  }

  else if ((v62 & 2) != 0)
  {
    goto LABEL_160;
  }

  if (*&v61)
  {
    if ((v62 & 1) == 0 || self->_assistantCommandSendTimestamp != *(v4 + 1))
    {
      goto LABEL_160;
    }
  }

  else if (v62)
  {
    goto LABEL_160;
  }

  originatingDeviceUID = self->_originatingDeviceUID;
  if (originatingDeviceUID | *(v4 + 30) && ![(NSString *)originatingDeviceUID isEqual:?])
  {
    goto LABEL_160;
  }

  destinationDeviceUIDs = self->_destinationDeviceUIDs;
  if (destinationDeviceUIDs | *(v4 + 20))
  {
    if (![(NSData *)destinationDeviceUIDs isEqual:?])
    {
      goto LABEL_160;
    }
  }

  desiredSessionID = self->_desiredSessionID;
  if (desiredSessionID | *(v4 + 18))
  {
    if (![(NSString *)desiredSessionID isEqual:?])
    {
      goto LABEL_160;
    }
  }

  v67 = self->_has;
  v68 = *(v4 + 64);
  if ((*&v67 & 0x2000000) != 0)
  {
    if ((v68 & 0x2000000) == 0)
    {
      goto LABEL_160;
    }

    v69 = *(v4 + 492);
    if (self->_alwaysIgnoreDuringCall)
    {
      if ((*(v4 + 492) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(v4 + 492))
    {
      goto LABEL_160;
    }
  }

  else if ((v68 & 0x2000000) != 0)
  {
    goto LABEL_160;
  }

  if ((*&v67 & 0x4000000) != 0)
  {
    if ((v68 & 0x4000000) == 0)
    {
      goto LABEL_160;
    }

    v70 = *(v4 + 493);
    if (self->_alwaysIgnoreDuringSharePlay)
    {
      if ((*(v4 + 493) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(v4 + 493))
    {
      goto LABEL_160;
    }
  }

  else if ((v68 & 0x4000000) != 0)
  {
    goto LABEL_160;
  }

  commandSequenceUUID = self->_commandSequenceUUID;
  if (commandSequenceUUID | *(v4 + 13))
  {
    if (![(NSString *)commandSequenceUUID isEqual:?])
    {
      goto LABEL_160;
    }

    v67 = self->_has;
  }

  v72 = *(v4 + 64);
  if ((*&v67 & 0x100000000) != 0)
  {
    if ((v72 & 0x100000000) == 0)
    {
      goto LABEL_160;
    }

    v73 = *(v4 + 499);
    if (self->_originatedFromRemoteDevice)
    {
      if ((*(v4 + 499) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(v4 + 499))
    {
      goto LABEL_160;
    }
  }

  else if ((v72 & 0x100000000) != 0)
  {
    goto LABEL_160;
  }

  siriTurnIdentifier = self->_siriTurnIdentifier;
  if (siriTurnIdentifier | *(v4 + 53) && ![(NSString *)siriTurnIdentifier isEqual:?])
  {
    goto LABEL_160;
  }

  siriSearchDataSetIdentifier = self->_siriSearchDataSetIdentifier;
  if (siriSearchDataSetIdentifier | *(v4 + 52))
  {
    if (![(NSString *)siriSearchDataSetIdentifier isEqual:?])
    {
      goto LABEL_160;
    }
  }

  v76 = self->_has;
  v77 = *(v4 + 64);
  if ((*&v76 & 0x200000000) != 0)
  {
    if ((v77 & 0x200000000) == 0)
    {
      goto LABEL_160;
    }

    v78 = *(v4 + 500);
    if (self->_prepareForSetQueueIsProactive)
    {
      if ((*(v4 + 500) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(v4 + 500))
    {
      goto LABEL_160;
    }
  }

  else if ((v77 & 0x200000000) != 0)
  {
    goto LABEL_160;
  }

  prepareForSetQueueProactiveReason = self->_prepareForSetQueueProactiveReason;
  if (prepareForSetQueueProactiveReason | *(v4 + 42))
  {
    if (![(NSString *)prepareForSetQueueProactiveReason isEqual:?])
    {
      goto LABEL_160;
    }

    v76 = self->_has;
  }

  v80 = *(v4 + 64);
  if ((*&v76 & 0x2000) != 0)
  {
    if ((v80 & 0x2000) == 0 || self->_prepareForSetQueueProactiveReasonType != *(v4 + 86))
    {
      goto LABEL_160;
    }
  }

  else if ((v80 & 0x2000) != 0)
  {
    goto LABEL_160;
  }

  applicationUserIdentity = self->_applicationUserIdentity;
  if (applicationUserIdentity | *(v4 + 9) && ![(NSData *)applicationUserIdentity isEqual:?])
  {
    goto LABEL_160;
  }

  systemAppPlaybackQueue = self->_systemAppPlaybackQueue;
  if (systemAppPlaybackQueue | *(v4 + 57))
  {
    if (![(_MRSystemPlaybackQueueProtobuf *)systemAppPlaybackQueue isEqual:?])
    {
      goto LABEL_160;
    }
  }

  v83 = self->_has;
  v84 = *(v4 + 64);
  if ((*&v83 & 0x40000000000) != 0)
  {
    if ((v84 & 0x40000000000) == 0)
    {
      goto LABEL_160;
    }

    v85 = *(v4 + 509);
    if (self->_vocalsControlActive)
    {
      if ((*(v4 + 509) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(v4 + 509))
    {
      goto LABEL_160;
    }
  }

  else if ((v84 & 0x40000000000) != 0)
  {
    goto LABEL_160;
  }

  if ((*&v83 & 0x400000) != 0)
  {
    if ((v84 & 0x400000) == 0 || self->_vocalsControlLevel != *(v4 + 120))
    {
      goto LABEL_160;
    }
  }

  else if ((v84 & 0x400000) != 0)
  {
    goto LABEL_160;
  }

  if ((*&v83 & 0x1000000) != 0)
  {
    if ((v84 & 0x1000000) == 0 || self->_vocalsControlMinLevel != *(v4 + 122))
    {
      goto LABEL_160;
    }
  }

  else if ((v84 & 0x1000000) != 0)
  {
    goto LABEL_160;
  }

  if ((*&v83 & 0x800000) != 0)
  {
    if ((v84 & 0x800000) == 0 || self->_vocalsControlMaxLevel != *(v4 + 121))
    {
      goto LABEL_160;
    }
  }

  else if ((v84 & 0x800000) != 0)
  {
    goto LABEL_160;
  }

  if ((*&v83 & 0x80000000000) != 0)
  {
    if ((v84 & 0x80000000000) == 0)
    {
      goto LABEL_160;
    }

    v86 = *(v4 + 510);
    if (self->_vocalsControlContinuous)
    {
      if ((*(v4 + 510) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(v4 + 510))
    {
      goto LABEL_160;
    }
  }

  else if ((v84 & 0x80000000000) != 0)
  {
    goto LABEL_160;
  }

  associatedParticipantIdentifier = self->_associatedParticipantIdentifier;
  if (associatedParticipantIdentifier | *(v4 + 10))
  {
    if (![(NSString *)associatedParticipantIdentifier isEqual:?])
    {
      goto LABEL_160;
    }

    v83 = self->_has;
  }

  v88 = *(v4 + 64);
  if ((*&v83 & 0x40) != 0)
  {
    if ((v88 & 0x40) == 0 || self->_sleepTimerTime != *(v4 + 7))
    {
      goto LABEL_160;
    }
  }

  else if ((v88 & 0x40) != 0)
  {
    goto LABEL_160;
  }

  if ((*&v83 & 0x200000) != 0)
  {
    if ((v88 & 0x200000) == 0 || self->_sleepTimerStopMode != *(v4 + 109))
    {
      goto LABEL_160;
    }
  }

  else if ((v88 & 0x200000) != 0)
  {
    goto LABEL_160;
  }

  dialogOptions = self->_dialogOptions;
  if (dialogOptions | *(v4 + 21) && ![(_MRDictionaryProtobuf *)dialogOptions isEqual:?])
  {
    goto LABEL_160;
  }

  clientPreferredLanguages = self->_clientPreferredLanguages;
  if (clientPreferredLanguages | *(v4 + 11))
  {
    if (![(NSString *)clientPreferredLanguages isEqual:?])
    {
      goto LABEL_160;
    }
  }

  v91 = *(v4 + 64);
  if ((*&self->_has & 0x20) != 0)
  {
    if ((v91 & 0x20) == 0 || self->_referencePosition != *(v4 + 6))
    {
      goto LABEL_160;
    }
  }

  else if ((v91 & 0x20) != 0)
  {
    goto LABEL_160;
  }

  delegateAccountData = self->_delegateAccountData;
  if (!(delegateAccountData | *(v4 + 16)) || [(NSData *)delegateAccountData isEqual:?])
  {
    delegateAccountDataType = self->_delegateAccountDataType;
    if (!(delegateAccountDataType | *(v4 + 17)) || [(NSString *)delegateAccountDataType isEqual:?])
    {
      if ((*(&self->_has + 3) & 0x20) == 0)
      {
        v41 = (*(v4 + 64) & 0x20000000) == 0;
        goto LABEL_161;
      }

      if ((*(v4 + 64) & 0x20000000) != 0)
      {
        if (self->_enhanceDialogueActive)
        {
          if ((*(v4 + 496) & 1) == 0)
          {
            goto LABEL_160;
          }

LABEL_372:
          v41 = 1;
          goto LABEL_161;
        }

        if (!*(v4 + 496))
        {
          goto LABEL_372;
        }
      }
    }
  }

LABEL_160:
  v41 = 0;
LABEL_161:

  return v41;
}

- (unint64_t)hash
{
  v155 = [(NSString *)self->_sourceID hash];
  v154 = [(NSString *)self->_mediaType hash];
  has = self->_has;
  if ((*&has & 0x40000000) != 0)
  {
    v153 = 2654435761 * self->_externalPlayerCommand;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v153 = 0;
  if ((*&has & 0x100000) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  skipInterval = self->_skipInterval;
  if (skipInterval < 0.0)
  {
    skipInterval = -skipInterval;
  }

  *v3.i32 = floorf(skipInterval + 0.5);
  v7 = (skipInterval - *v3.i32) * 1.8447e19;
  *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v3 = vbslq_s8(v8, v4, v3);
  v9 = 2654435761u * *v3.i32;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabsf(v7);
  }

LABEL_9:
  if ((*&has & 0x800) != 0)
  {
    playbackRate = self->_playbackRate;
    if (playbackRate < 0.0)
    {
      playbackRate = -playbackRate;
    }

    *v3.i32 = floorf(playbackRate + 0.5);
    v12 = (playbackRate - *v3.i32) * 1.8447e19;
    *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
    v13.i64[0] = 0x8000000080000000;
    v13.i64[1] = 0x8000000080000000;
    v3 = vbslq_s8(v13, v4, v3);
    v10 = 2654435761u * *v3.i32;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabsf(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*&has & 0x8000) != 0)
  {
    rating = self->_rating;
    if (rating < 0.0)
    {
      rating = -rating;
    }

    *v3.i32 = floorf(rating + 0.5);
    v16 = (rating - *v3.i32) * 1.8447e19;
    *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
    v17.i64[0] = 0x8000000080000000;
    v17.i64[1] = 0x8000000080000000;
    v3 = vbslq_s8(v17, v4, v3);
    v14 = 2654435761u * *v3.i32;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabsf(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  if ((*&has & 0x80000000) != 0)
  {
    v149 = 2654435761 * self->_negative;
    if ((*&has & 8) != 0)
    {
      goto LABEL_29;
    }

LABEL_34:
    v21 = 0;
    goto LABEL_35;
  }

  v149 = 0;
  if ((*&has & 8) == 0)
  {
    goto LABEL_34;
  }

LABEL_29:
  playbackPosition = self->_playbackPosition;
  if (playbackPosition < 0.0)
  {
    playbackPosition = -playbackPosition;
  }

  *v3.i64 = floor(playbackPosition + 0.5);
  v19 = (playbackPosition - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v20.f64[0] = NAN;
  v20.f64[1] = NAN;
  v21 = 2654435761u * *vbslq_s8(vnegq_f64(v20), v4, v3).i64;
  if (v19 >= 0.0)
  {
    if (v19 > 0.0)
    {
      v21 += v19;
    }
  }

  else
  {
    v21 -= fabs(v19);
  }

LABEL_35:
  if ((*&has & 0x10000) == 0)
  {
    v147 = 0;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_37;
    }

LABEL_40:
    v146 = 0;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_41;
  }

  v147 = 2654435761 * self->_repeatMode;
  if ((*&has & 0x80000) == 0)
  {
    goto LABEL_40;
  }

LABEL_37:
  v146 = 2654435761 * self->_shuffleMode;
  if ((*&has & 0x80) != 0)
  {
LABEL_38:
    v145 = 2654435761u * self->_trackID;
    goto LABEL_42;
  }

LABEL_41:
  v145 = 0;
LABEL_42:
  v151 = v10;
  v152 = v9;
  v150 = v14;
  v148 = v21;
  if ((*&has & 0x10) != 0)
  {
    v144 = 2654435761 * self->_radioStationID;
  }

  else
  {
    v144 = 0;
  }

  v143 = [(NSString *)self->_radioStationHash hash];
  v142 = [(NSData *)self->_systemAppPlaybackQueueData hash];
  v141 = [(NSString *)self->_destinationAppDisplayID hash];
  v22 = self->_has;
  if ((*&v22 & 0x40000) != 0)
  {
    v140 = 2654435761 * self->_sendOptions;
    if ((*&v22 & 0x2000000000) != 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v140 = 0;
    if ((*&v22 & 0x2000000000) != 0)
    {
LABEL_47:
      v139 = 2654435761 * self->_requestDefermentToPlaybackQueuePosition;
      goto LABEL_50;
    }
  }

  v139 = 0;
LABEL_50:
  v138 = [(NSString *)self->_contextID hash];
  if ((*(&self->_has + 4) & 0x80) != 0)
  {
    v137 = 2654435761 * self->_shouldOverrideManuallyCuratedQueue;
  }

  else
  {
    v137 = 0;
  }

  v136 = [(NSString *)self->_stationURL hash];
  v23 = self->_has;
  if ((*&v23 & 0x4000000000) != 0)
  {
    v135 = 2654435761 * self->_shouldBeginRadioPlayback;
    if ((*&v23 & 0x200) != 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v135 = 0;
    if ((*&v23 & 0x200) != 0)
    {
LABEL_55:
      v134 = 2654435761 * self->_playbackQueueInsertionPosition;
      goto LABEL_58;
    }
  }

  v134 = 0;
LABEL_58:
  v133 = [(NSString *)self->_contentItemID hash];
  v24 = self->_has;
  if ((*&v24 & 0x400) != 0)
  {
    v132 = 2654435761 * self->_playbackQueueOffset;
    if ((*&v24 & 0x100) != 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v132 = 0;
    if ((*&v24 & 0x100) != 0)
    {
LABEL_60:
      v131 = 2654435761 * self->_playbackQueueDestinationOffset;
      goto LABEL_63;
    }
  }

  v131 = 0;
LABEL_63:
  v130 = [(NSData *)self->_languageOption hash];
  v129 = [(NSData *)self->_playbackQueueContext hash];
  v128 = [(NSString *)self->_insertAfterContentItemID hash];
  v127 = [(NSString *)self->_nowPlayingContentItemID hash];
  if ((*(&self->_has + 2) & 2) != 0)
  {
    v126 = 2654435761 * self->_replaceIntent;
  }

  else
  {
    v126 = 0;
  }

  v125 = [(NSString *)self->_commandID hash];
  v124 = [(NSString *)self->_senderID hash];
  v123 = [(NSString *)self->_remoteControlInterface hash];
  v25 = self->_has;
  if ((*&v25 & 0x8000000) != 0)
  {
    v122 = 2654435761 * self->_beginSeek;
    if ((*&v25 & 0x10000000) != 0)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v122 = 0;
    if ((*&v25 & 0x10000000) != 0)
    {
LABEL_68:
      v121 = 2654435761 * self->_endSeek;
      goto LABEL_71;
    }
  }

  v121 = 0;
LABEL_71:
  v120 = [(NSData *)self->_playbackSession hash];
  v119 = [(NSData *)self->_userIdentityData hash];
  v118 = [(NSString *)self->_insertBeforeContentItemID hash];
  v26 = self->_has;
  if ((*&v26 & 0x4000) != 0)
  {
    v117 = 2654435761 * self->_queueEndAction;
    if ((*&v26 & 0x800000000) != 0)
    {
LABEL_73:
      v116 = 2654435761 * self->_preservesRepeatMode;
      if ((*&v26 & 0x1000000000) != 0)
      {
        goto LABEL_74;
      }

LABEL_78:
      v115 = 0;
      if ((*&v26 & 0x400000000) != 0)
      {
        goto LABEL_75;
      }

      goto LABEL_79;
    }
  }

  else
  {
    v117 = 0;
    if ((*&v26 & 0x800000000) != 0)
    {
      goto LABEL_73;
    }
  }

  v116 = 0;
  if ((*&v26 & 0x1000000000) == 0)
  {
    goto LABEL_78;
  }

LABEL_74:
  v115 = 2654435761 * self->_preservesShuffleMode;
  if ((*&v26 & 0x400000000) != 0)
  {
LABEL_75:
    v114 = 2654435761 * self->_preservesQueueEndAction;
    goto LABEL_80;
  }

LABEL_79:
  v114 = 0;
LABEL_80:
  v113 = [(NSString *)self->_homeKitUserIdentifier hash];
  if ((*(&self->_has + 5) & 2) != 0)
  {
    v112 = 2654435761 * self->_verifySupportedCommands;
  }

  else
  {
    v112 = 0;
  }

  v111 = [(NSString *)self->_playbackSessionIdentifier hash];
  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    v110 = 2654435761 * self->_playbackSessionPriority;
  }

  else
  {
    v110 = 0;
  }

  v109 = [(NSString *)self->_playbackSessionFilePath hash];
  v108 = [(NSString *)self->_playbackSessionRevision hash];
  v107 = [(NSData *)self->_playbackSessionMetadata hash];
  v106 = [(NSString *)self->_playbackSessionType hash];
  if (*(&self->_has + 5))
  {
    v105 = 2654435761 * self->_trueCompletion;
  }

  else
  {
    v105 = 0;
  }

  v104 = [(NSString *)self->_playbackAuthorizationToken hash];
  v103 = [(NSString *)self->_eventNoticeType hash];
  v102 = [(NSString *)self->_eventNoticeIdentifier hash];
  v101 = [(NSString *)self->_sharedPlaybackSessionIdentifier hash];
  v29 = self->_has;
  if ((*&v29 & 4) != 0)
  {
    commandTimeout = self->_commandTimeout;
    if (commandTimeout < 0.0)
    {
      commandTimeout = -commandTimeout;
    }

    *v27.i64 = floor(commandTimeout + 0.5);
    v32 = (commandTimeout - *v27.i64) * 1.84467441e19;
    *v28.i64 = *v27.i64 - trunc(*v27.i64 * 5.42101086e-20) * 1.84467441e19;
    v33.f64[0] = NAN;
    v33.f64[1] = NAN;
    v27 = vbslq_s8(vnegq_f64(v33), v28, v27);
    v30 = 2654435761u * *v27.i64;
    if (v32 >= 0.0)
    {
      if (v32 > 0.0)
      {
        v30 += v32;
      }
    }

    else
    {
      v30 -= fabs(v32);
    }
  }

  else
  {
    v30 = 0;
  }

  if ((*&v29 & 2) != 0)
  {
    assistantTTSEndTimestamp = self->_assistantTTSEndTimestamp;
    if (assistantTTSEndTimestamp < 0.0)
    {
      assistantTTSEndTimestamp = -assistantTTSEndTimestamp;
    }

    *v27.i64 = floor(assistantTTSEndTimestamp + 0.5);
    v36 = (assistantTTSEndTimestamp - *v27.i64) * 1.84467441e19;
    *v28.i64 = *v27.i64 - trunc(*v27.i64 * 5.42101086e-20) * 1.84467441e19;
    v37.f64[0] = NAN;
    v37.f64[1] = NAN;
    v27 = vbslq_s8(vnegq_f64(v37), v28, v27);
    v34 = 2654435761u * *v27.i64;
    if (v36 >= 0.0)
    {
      if (v36 > 0.0)
      {
        v34 += v36;
      }
    }

    else
    {
      v34 -= fabs(v36);
    }
  }

  else
  {
    v34 = 0;
  }

  v99 = v34;
  v100 = v30;
  if (*&v29)
  {
    assistantCommandSendTimestamp = self->_assistantCommandSendTimestamp;
    if (assistantCommandSendTimestamp < 0.0)
    {
      assistantCommandSendTimestamp = -assistantCommandSendTimestamp;
    }

    *v27.i64 = floor(assistantCommandSendTimestamp + 0.5);
    v40 = (assistantCommandSendTimestamp - *v27.i64) * 1.84467441e19;
    *v28.i64 = *v27.i64 - trunc(*v27.i64 * 5.42101086e-20) * 1.84467441e19;
    v41.f64[0] = NAN;
    v41.f64[1] = NAN;
    v38 = 2654435761u * *vbslq_s8(vnegq_f64(v41), v28, v27).i64;
    if (v40 >= 0.0)
    {
      if (v40 > 0.0)
      {
        v38 += v40;
      }
    }

    else
    {
      v38 -= fabs(v40);
    }
  }

  else
  {
    v38 = 0;
  }

  v98 = v38;
  v97 = [(NSString *)self->_originatingDeviceUID hash];
  v96 = [(NSData *)self->_destinationDeviceUIDs hash];
  v95 = [(NSString *)self->_desiredSessionID hash];
  v42 = self->_has;
  if ((*&v42 & 0x2000000) != 0)
  {
    v94 = 2654435761 * self->_alwaysIgnoreDuringCall;
    if ((*&v42 & 0x4000000) != 0)
    {
      goto LABEL_117;
    }
  }

  else
  {
    v94 = 0;
    if ((*&v42 & 0x4000000) != 0)
    {
LABEL_117:
      v93 = 2654435761 * self->_alwaysIgnoreDuringSharePlay;
      goto LABEL_120;
    }
  }

  v93 = 0;
LABEL_120:
  v92 = [(NSString *)self->_commandSequenceUUID hash];
  if (*(&self->_has + 4))
  {
    v91 = 2654435761 * self->_originatedFromRemoteDevice;
  }

  else
  {
    v91 = 0;
  }

  v90 = [(NSString *)self->_siriTurnIdentifier hash];
  v89 = [(NSString *)self->_siriSearchDataSetIdentifier hash];
  if ((*(&self->_has + 4) & 2) != 0)
  {
    v88 = 2654435761 * self->_prepareForSetQueueIsProactive;
  }

  else
  {
    v88 = 0;
  }

  v87 = [(NSString *)self->_prepareForSetQueueProactiveReason hash];
  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    v86 = 2654435761 * self->_prepareForSetQueueProactiveReasonType;
  }

  else
  {
    v86 = 0;
  }

  v85 = [(NSData *)self->_applicationUserIdentity hash];
  v84 = [(_MRSystemPlaybackQueueProtobuf *)self->_systemAppPlaybackQueue hash];
  v45 = self->_has;
  if ((*&v45 & 0x40000000000) != 0)
  {
    v83 = 2654435761 * self->_vocalsControlActive;
    if ((*&v45 & 0x400000) != 0)
    {
      goto LABEL_131;
    }

LABEL_136:
    v49 = 0;
    goto LABEL_137;
  }

  v83 = 0;
  if ((*&v45 & 0x400000) == 0)
  {
    goto LABEL_136;
  }

LABEL_131:
  vocalsControlLevel = self->_vocalsControlLevel;
  if (vocalsControlLevel < 0.0)
  {
    vocalsControlLevel = -vocalsControlLevel;
  }

  *v43.i32 = floorf(vocalsControlLevel + 0.5);
  v47 = (vocalsControlLevel - *v43.i32) * 1.8447e19;
  *v44.i32 = *v43.i32 - (truncf(*v43.i32 * 5.421e-20) * 1.8447e19);
  v48.i64[0] = 0x8000000080000000;
  v48.i64[1] = 0x8000000080000000;
  v43 = vbslq_s8(v48, v44, v43);
  v49 = 2654435761u * *v43.i32;
  if (v47 >= 0.0)
  {
    if (v47 > 0.0)
    {
      v49 += v47;
    }
  }

  else
  {
    v49 -= fabsf(v47);
  }

LABEL_137:
  if ((*&v45 & 0x1000000) != 0)
  {
    vocalsControlMinLevel = self->_vocalsControlMinLevel;
    if (vocalsControlMinLevel < 0.0)
    {
      vocalsControlMinLevel = -vocalsControlMinLevel;
    }

    *v43.i32 = floorf(vocalsControlMinLevel + 0.5);
    v52 = (vocalsControlMinLevel - *v43.i32) * 1.8447e19;
    *v44.i32 = *v43.i32 - (truncf(*v43.i32 * 5.421e-20) * 1.8447e19);
    v53.i64[0] = 0x8000000080000000;
    v53.i64[1] = 0x8000000080000000;
    v43 = vbslq_s8(v53, v44, v43);
    v50 = 2654435761u * *v43.i32;
    if (v52 >= 0.0)
    {
      if (v52 > 0.0)
      {
        v50 += v52;
      }
    }

    else
    {
      v50 -= fabsf(v52);
    }
  }

  else
  {
    v50 = 0;
  }

  if ((*&v45 & 0x800000) != 0)
  {
    vocalsControlMaxLevel = self->_vocalsControlMaxLevel;
    if (vocalsControlMaxLevel < 0.0)
    {
      vocalsControlMaxLevel = -vocalsControlMaxLevel;
    }

    *v43.i32 = floorf(vocalsControlMaxLevel + 0.5);
    v56 = (vocalsControlMaxLevel - *v43.i32) * 1.8447e19;
    *v44.i32 = *v43.i32 - (truncf(*v43.i32 * 5.421e-20) * 1.8447e19);
    v57.i64[0] = 0x8000000080000000;
    v57.i64[1] = 0x8000000080000000;
    v54 = 2654435761u * *vbslq_s8(v57, v44, v43).i32;
    if (v56 >= 0.0)
    {
      if (v56 > 0.0)
      {
        v54 += v56;
      }
    }

    else
    {
      v54 -= fabsf(v56);
    }
  }

  else
  {
    v54 = 0;
  }

  v81 = v50;
  v82 = v49;
  if ((*&v45 & 0x80000000000) != 0)
  {
    v80 = 2654435761 * self->_vocalsControlContinuous;
  }

  else
  {
    v80 = 0;
  }

  v78 = [(NSString *)self->_associatedParticipantIdentifier hash];
  v60 = self->_has;
  if ((*&v60 & 0x40) != 0)
  {
    sleepTimerTime = self->_sleepTimerTime;
    if (sleepTimerTime < 0.0)
    {
      sleepTimerTime = -sleepTimerTime;
    }

    *v58.i64 = floor(sleepTimerTime + 0.5);
    v63 = (sleepTimerTime - *v58.i64) * 1.84467441e19;
    *v59.i64 = *v58.i64 - trunc(*v58.i64 * 5.42101086e-20) * 1.84467441e19;
    v64.f64[0] = NAN;
    v64.f64[1] = NAN;
    v61 = 2654435761u * *vbslq_s8(vnegq_f64(v64), v59, v58).i64;
    if (v63 >= 0.0)
    {
      if (v63 > 0.0)
      {
        v61 += v63;
      }
    }

    else
    {
      v61 -= fabs(v63);
    }
  }

  else
  {
    v61 = 0;
  }

  if ((*&v60 & 0x200000) != 0)
  {
    v65 = 2654435761 * self->_sleepTimerStopMode;
  }

  else
  {
    v65 = 0;
  }

  v66 = [(_MRDictionaryProtobuf *)self->_dialogOptions hash];
  v67 = [(NSString *)self->_clientPreferredLanguages hash];
  if ((*&self->_has & 0x20) != 0)
  {
    referencePosition = self->_referencePosition;
    if (referencePosition < 0.0)
    {
      referencePosition = -referencePosition;
    }

    *v68.i64 = floor(referencePosition + 0.5);
    v72 = (referencePosition - *v68.i64) * 1.84467441e19;
    *v69.i64 = *v68.i64 - trunc(*v68.i64 * 5.42101086e-20) * 1.84467441e19;
    v73.f64[0] = NAN;
    v73.f64[1] = NAN;
    v70 = 2654435761u * *vbslq_s8(vnegq_f64(v73), v69, v68).i64;
    if (v72 >= 0.0)
    {
      if (v72 > 0.0)
      {
        v70 += v72;
      }
    }

    else
    {
      v70 -= fabs(v72);
    }
  }

  else
  {
    v70 = 0;
  }

  v74 = [(NSData *)self->_delegateAccountData hash];
  v75 = [(NSString *)self->_delegateAccountDataType hash];
  if ((*(&self->_has + 3) & 0x20) != 0)
  {
    v76 = 2654435761 * self->_enhanceDialogueActive;
  }

  else
  {
    v76 = 0;
  }

  return v154 ^ v155 ^ v153 ^ v152 ^ v151 ^ v150 ^ v149 ^ v148 ^ v147 ^ v146 ^ v145 ^ v144 ^ v143 ^ v142 ^ v141 ^ v140 ^ v139 ^ v138 ^ v137 ^ v136 ^ v135 ^ v134 ^ v133 ^ v132 ^ v131 ^ v130 ^ v129 ^ v128 ^ v127 ^ v126 ^ v125 ^ v124 ^ v123 ^ v122 ^ v121 ^ v120 ^ v119 ^ v118 ^ v117 ^ v116 ^ v115 ^ v114 ^ v113 ^ v112 ^ v111 ^ v110 ^ v109 ^ v108 ^ v107 ^ v106 ^ v105 ^ v104 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v54 ^ v80 ^ v79 ^ v61 ^ v65 ^ v66 ^ v67 ^ v70 ^ v74 ^ v75 ^ v76;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v19 = v4;
  if (*(v4 + 55))
  {
    [(_MRCommandOptionsProtobuf *)self setSourceID:?];
    v4 = v19;
  }

  if (*(v4 + 28))
  {
    [(_MRCommandOptionsProtobuf *)self setMediaType:?];
    v4 = v19;
  }

  v5 = *(v4 + 64);
  if ((v5 & 0x40000000) != 0)
  {
    self->_externalPlayerCommand = *(v4 + 497);
    *&self->_has |= 0x40000000uLL;
    v5 = *(v4 + 64);
    if ((v5 & 0x100000) == 0)
    {
LABEL_7:
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_134;
    }
  }

  else if ((v5 & 0x100000) == 0)
  {
    goto LABEL_7;
  }

  self->_skipInterval = *(v4 + 108);
  *&self->_has |= 0x100000uLL;
  v5 = *(v4 + 64);
  if ((v5 & 0x800) == 0)
  {
LABEL_8:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_135;
  }

LABEL_134:
  self->_playbackRate = *(v4 + 69);
  *&self->_has |= 0x800uLL;
  v5 = *(v4 + 64);
  if ((v5 & 0x8000) == 0)
  {
LABEL_9:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_136;
  }

LABEL_135:
  self->_rating = *(v4 + 90);
  *&self->_has |= 0x8000uLL;
  v5 = *(v4 + 64);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_10:
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_137;
  }

LABEL_136:
  self->_negative = *(v4 + 498);
  *&self->_has |= 0x80000000uLL;
  v5 = *(v4 + 64);
  if ((v5 & 8) == 0)
  {
LABEL_11:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_138;
  }

LABEL_137:
  self->_playbackPosition = *(v4 + 4);
  *&self->_has |= 8uLL;
  v5 = *(v4 + 64);
  if ((v5 & 0x10000) == 0)
  {
LABEL_12:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_139;
  }

LABEL_138:
  self->_repeatMode = *(v4 + 94);
  *&self->_has |= 0x10000uLL;
  v5 = *(v4 + 64);
  if ((v5 & 0x80000) == 0)
  {
LABEL_13:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_140;
  }

LABEL_139:
  self->_shuffleMode = *(v4 + 102);
  *&self->_has |= 0x80000uLL;
  v5 = *(v4 + 64);
  if ((v5 & 0x80) == 0)
  {
LABEL_14:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_140:
  self->_trackID = *(v4 + 8);
  *&self->_has |= 0x80uLL;
  if ((*(v4 + 64) & 0x10) != 0)
  {
LABEL_15:
    self->_radioStationID = *(v4 + 5);
    *&self->_has |= 0x10uLL;
  }

LABEL_16:
  if (*(v4 + 44))
  {
    [(_MRCommandOptionsProtobuf *)self setRadioStationHash:?];
    v4 = v19;
  }

  if (*(v4 + 58))
  {
    [(_MRCommandOptionsProtobuf *)self setSystemAppPlaybackQueueData:?];
    v4 = v19;
  }

  if (*(v4 + 19))
  {
    [(_MRCommandOptionsProtobuf *)self setDestinationAppDisplayID:?];
    v4 = v19;
  }

  v6 = *(v4 + 64);
  if ((v6 & 0x40000) != 0)
  {
    self->_sendOptions = *(v4 + 96);
    *&self->_has |= 0x40000uLL;
    v6 = *(v4 + 64);
  }

  if ((v6 & 0x2000000000) != 0)
  {
    self->_requestDefermentToPlaybackQueuePosition = *(v4 + 504);
    *&self->_has |= 0x2000000000uLL;
  }

  if (*(v4 + 15))
  {
    [(_MRCommandOptionsProtobuf *)self setContextID:?];
    v4 = v19;
  }

  if ((*(v4 + 516) & 0x80) != 0)
  {
    self->_shouldOverrideManuallyCuratedQueue = *(v4 + 506);
    *&self->_has |= 0x8000000000uLL;
  }

  if (*(v4 + 56))
  {
    [(_MRCommandOptionsProtobuf *)self setStationURL:?];
    v4 = v19;
  }

  v7 = *(v4 + 64);
  if ((v7 & 0x4000000000) != 0)
  {
    self->_shouldBeginRadioPlayback = *(v4 + 505);
    *&self->_has |= 0x4000000000uLL;
    v7 = *(v4 + 64);
  }

  if ((v7 & 0x200) != 0)
  {
    self->_playbackQueueInsertionPosition = *(v4 + 67);
    *&self->_has |= 0x200uLL;
  }

  if (*(v4 + 14))
  {
    [(_MRCommandOptionsProtobuf *)self setContentItemID:?];
    v4 = v19;
  }

  v8 = *(v4 + 64);
  if ((v8 & 0x400) != 0)
  {
    self->_playbackQueueOffset = *(v4 + 68);
    *&self->_has |= 0x400uLL;
    v8 = *(v4 + 64);
  }

  if ((v8 & 0x100) != 0)
  {
    self->_playbackQueueDestinationOffset = *(v4 + 66);
    *&self->_has |= 0x100uLL;
  }

  if (*(v4 + 27))
  {
    [(_MRCommandOptionsProtobuf *)self setLanguageOption:?];
    v4 = v19;
  }

  if (*(v4 + 32))
  {
    [(_MRCommandOptionsProtobuf *)self setPlaybackQueueContext:?];
    v4 = v19;
  }

  if (*(v4 + 25))
  {
    [(_MRCommandOptionsProtobuf *)self setInsertAfterContentItemID:?];
    v4 = v19;
  }

  if (*(v4 + 29))
  {
    [(_MRCommandOptionsProtobuf *)self setNowPlayingContentItemID:?];
    v4 = v19;
  }

  if ((*(v4 + 514) & 2) != 0)
  {
    self->_replaceIntent = *(v4 + 95);
    *&self->_has |= 0x20000uLL;
  }

  if (*(v4 + 12))
  {
    [(_MRCommandOptionsProtobuf *)self setCommandID:?];
    v4 = v19;
  }

  if (*(v4 + 49))
  {
    [(_MRCommandOptionsProtobuf *)self setSenderID:?];
    v4 = v19;
  }

  if (*(v4 + 46))
  {
    [(_MRCommandOptionsProtobuf *)self setRemoteControlInterface:?];
    v4 = v19;
  }

  v9 = *(v4 + 64);
  if ((v9 & 0x8000000) != 0)
  {
    self->_beginSeek = *(v4 + 494);
    *&self->_has |= 0x8000000uLL;
    v9 = *(v4 + 64);
  }

  if ((v9 & 0x10000000) != 0)
  {
    self->_endSeek = *(v4 + 495);
    *&self->_has |= 0x10000000uLL;
  }

  if (*(v4 + 35))
  {
    [(_MRCommandOptionsProtobuf *)self setPlaybackSession:?];
    v4 = v19;
  }

  if (*(v4 + 59))
  {
    [(_MRCommandOptionsProtobuf *)self setUserIdentityData:?];
    v4 = v19;
  }

  if (*(v4 + 26))
  {
    [(_MRCommandOptionsProtobuf *)self setInsertBeforeContentItemID:?];
    v4 = v19;
  }

  v10 = *(v4 + 64);
  if ((v10 & 0x4000) != 0)
  {
    self->_queueEndAction = *(v4 + 87);
    *&self->_has |= 0x4000uLL;
    v10 = *(v4 + 64);
    if ((v10 & 0x800000000) == 0)
    {
LABEL_70:
      if ((v10 & 0x1000000000) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_144;
    }
  }

  else if ((v10 & 0x800000000) == 0)
  {
    goto LABEL_70;
  }

  self->_preservesRepeatMode = *(v4 + 502);
  *&self->_has |= 0x800000000uLL;
  v10 = *(v4 + 64);
  if ((v10 & 0x1000000000) == 0)
  {
LABEL_71:
    if ((v10 & 0x400000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_144:
  self->_preservesShuffleMode = *(v4 + 503);
  *&self->_has |= 0x1000000000uLL;
  if ((*(v4 + 64) & 0x400000000) != 0)
  {
LABEL_72:
    self->_preservesQueueEndAction = *(v4 + 501);
    *&self->_has |= 0x400000000uLL;
  }

LABEL_73:
  if (*(v4 + 24))
  {
    [(_MRCommandOptionsProtobuf *)self setHomeKitUserIdentifier:?];
    v4 = v19;
  }

  if ((*(v4 + 517) & 2) != 0)
  {
    self->_verifySupportedCommands = *(v4 + 508);
    *&self->_has |= 0x20000000000uLL;
  }

  if (*(v4 + 37))
  {
    [(_MRCommandOptionsProtobuf *)self setPlaybackSessionIdentifier:?];
    v4 = v19;
  }

  if ((*(v4 + 513) & 0x10) != 0)
  {
    self->_playbackSessionPriority = *(v4 + 78);
    *&self->_has |= 0x1000uLL;
  }

  if (*(v4 + 36))
  {
    [(_MRCommandOptionsProtobuf *)self setPlaybackSessionFilePath:?];
    v4 = v19;
  }

  if (*(v4 + 40))
  {
    [(_MRCommandOptionsProtobuf *)self setPlaybackSessionRevision:?];
    v4 = v19;
  }

  if (*(v4 + 38))
  {
    [(_MRCommandOptionsProtobuf *)self setPlaybackSessionMetadata:?];
    v4 = v19;
  }

  if (*(v4 + 41))
  {
    [(_MRCommandOptionsProtobuf *)self setPlaybackSessionType:?];
    v4 = v19;
  }

  if (*(v4 + 517))
  {
    self->_trueCompletion = *(v4 + 507);
    *&self->_has |= 0x10000000000uLL;
  }

  if (*(v4 + 31))
  {
    [(_MRCommandOptionsProtobuf *)self setPlaybackAuthorizationToken:?];
    v4 = v19;
  }

  if (*(v4 + 23))
  {
    [(_MRCommandOptionsProtobuf *)self setEventNoticeType:?];
    v4 = v19;
  }

  if (*(v4 + 22))
  {
    [(_MRCommandOptionsProtobuf *)self setEventNoticeIdentifier:?];
    v4 = v19;
  }

  if (*(v4 + 50))
  {
    [(_MRCommandOptionsProtobuf *)self setSharedPlaybackSessionIdentifier:?];
    v4 = v19;
  }

  v11 = *(v4 + 64);
  if ((v11 & 4) != 0)
  {
    self->_commandTimeout = *(v4 + 3);
    *&self->_has |= 4uLL;
    v11 = *(v4 + 64);
    if ((v11 & 2) == 0)
    {
LABEL_101:
      if ((v11 & 1) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_102;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_101;
  }

  self->_assistantTTSEndTimestamp = *(v4 + 2);
  *&self->_has |= 2uLL;
  if (*(v4 + 64))
  {
LABEL_102:
    self->_assistantCommandSendTimestamp = *(v4 + 1);
    *&self->_has |= 1uLL;
  }

LABEL_103:
  if (*(v4 + 30))
  {
    [(_MRCommandOptionsProtobuf *)self setOriginatingDeviceUID:?];
    v4 = v19;
  }

  if (*(v4 + 20))
  {
    [(_MRCommandOptionsProtobuf *)self setDestinationDeviceUIDs:?];
    v4 = v19;
  }

  if (*(v4 + 18))
  {
    [(_MRCommandOptionsProtobuf *)self setDesiredSessionID:?];
    v4 = v19;
  }

  v12 = *(v4 + 64);
  if ((v12 & 0x2000000) != 0)
  {
    self->_alwaysIgnoreDuringCall = *(v4 + 492);
    *&self->_has |= 0x2000000uLL;
    v12 = *(v4 + 64);
  }

  if ((v12 & 0x4000000) != 0)
  {
    self->_alwaysIgnoreDuringSharePlay = *(v4 + 493);
    *&self->_has |= 0x4000000uLL;
  }

  if (*(v4 + 13))
  {
    [(_MRCommandOptionsProtobuf *)self setCommandSequenceUUID:?];
    v4 = v19;
  }

  if (*(v4 + 516))
  {
    self->_originatedFromRemoteDevice = *(v4 + 499);
    *&self->_has |= 0x100000000uLL;
  }

  if (*(v4 + 53))
  {
    [(_MRCommandOptionsProtobuf *)self setSiriTurnIdentifier:?];
    v4 = v19;
  }

  if (*(v4 + 52))
  {
    [(_MRCommandOptionsProtobuf *)self setSiriSearchDataSetIdentifier:?];
    v4 = v19;
  }

  if ((*(v4 + 516) & 2) != 0)
  {
    self->_prepareForSetQueueIsProactive = *(v4 + 500);
    *&self->_has |= 0x200000000uLL;
  }

  if (*(v4 + 42))
  {
    [(_MRCommandOptionsProtobuf *)self setPrepareForSetQueueProactiveReason:?];
    v4 = v19;
  }

  if ((*(v4 + 513) & 0x20) != 0)
  {
    self->_prepareForSetQueueProactiveReasonType = *(v4 + 86);
    *&self->_has |= 0x2000uLL;
  }

  if (*(v4 + 9))
  {
    [(_MRCommandOptionsProtobuf *)self setApplicationUserIdentity:?];
    v4 = v19;
  }

  systemAppPlaybackQueue = self->_systemAppPlaybackQueue;
  v14 = *(v4 + 57);
  if (systemAppPlaybackQueue)
  {
    if (!v14)
    {
      goto LABEL_152;
    }

    [(_MRSystemPlaybackQueueProtobuf *)systemAppPlaybackQueue mergeFrom:?];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_152;
    }

    [(_MRCommandOptionsProtobuf *)self setSystemAppPlaybackQueue:?];
  }

  v4 = v19;
LABEL_152:
  v15 = *(v4 + 64);
  if ((v15 & 0x40000000000) != 0)
  {
    self->_vocalsControlActive = *(v4 + 509);
    *&self->_has |= 0x40000000000uLL;
    v15 = *(v4 + 64);
    if ((v15 & 0x400000) == 0)
    {
LABEL_154:
      if ((v15 & 0x1000000) == 0)
      {
        goto LABEL_155;
      }

      goto LABEL_169;
    }
  }

  else if ((v15 & 0x400000) == 0)
  {
    goto LABEL_154;
  }

  self->_vocalsControlLevel = *(v4 + 120);
  *&self->_has |= 0x400000uLL;
  v15 = *(v4 + 64);
  if ((v15 & 0x1000000) == 0)
  {
LABEL_155:
    if ((v15 & 0x800000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_170;
  }

LABEL_169:
  self->_vocalsControlMinLevel = *(v4 + 122);
  *&self->_has |= 0x1000000uLL;
  v15 = *(v4 + 64);
  if ((v15 & 0x800000) == 0)
  {
LABEL_156:
    if ((v15 & 0x80000000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_157;
  }

LABEL_170:
  self->_vocalsControlMaxLevel = *(v4 + 121);
  *&self->_has |= 0x800000uLL;
  if ((*(v4 + 64) & 0x80000000000) != 0)
  {
LABEL_157:
    self->_vocalsControlContinuous = *(v4 + 510);
    *&self->_has |= 0x80000000000uLL;
  }

LABEL_158:
  if (*(v4 + 10))
  {
    [(_MRCommandOptionsProtobuf *)self setAssociatedParticipantIdentifier:?];
    v4 = v19;
  }

  v16 = *(v4 + 64);
  if ((v16 & 0x40) != 0)
  {
    self->_sleepTimerTime = *(v4 + 7);
    *&self->_has |= 0x40uLL;
    v16 = *(v4 + 64);
  }

  if ((v16 & 0x200000) != 0)
  {
    self->_sleepTimerStopMode = *(v4 + 109);
    *&self->_has |= 0x200000uLL;
  }

  dialogOptions = self->_dialogOptions;
  v18 = *(v4 + 21);
  if (dialogOptions)
  {
    if (!v18)
    {
      goto LABEL_175;
    }

    [(_MRDictionaryProtobuf *)dialogOptions mergeFrom:?];
  }

  else
  {
    if (!v18)
    {
      goto LABEL_175;
    }

    [(_MRCommandOptionsProtobuf *)self setDialogOptions:?];
  }

  v4 = v19;
LABEL_175:
  if (*(v4 + 11))
  {
    [(_MRCommandOptionsProtobuf *)self setClientPreferredLanguages:?];
    v4 = v19;
  }

  if ((*(v4 + 512) & 0x20) != 0)
  {
    self->_referencePosition = *(v4 + 6);
    *&self->_has |= 0x20uLL;
  }

  if (*(v4 + 16))
  {
    [(_MRCommandOptionsProtobuf *)self setDelegateAccountData:?];
    v4 = v19;
  }

  if (*(v4 + 17))
  {
    [(_MRCommandOptionsProtobuf *)self setDelegateAccountDataType:?];
    v4 = v19;
  }

  if ((*(v4 + 515) & 0x20) != 0)
  {
    self->_enhanceDialogueActive = *(v4 + 496);
    *&self->_has |= 0x20000000uLL;
  }
}

@end