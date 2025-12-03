@interface _MRCommandOptionsProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPlaybackSessionPriority:(id)priority;
- (int)StringAsPrepareForSetQueueProactiveReasonType:(id)type;
- (int)StringAsQueueEndAction:(id)action;
- (int)StringAsRepeatMode:(id)mode;
- (int)StringAsReplaceIntent:(id)intent;
- (int)StringAsSendOptions:(id)options;
- (int)StringAsShuffleMode:(id)mode;
- (int)StringAsSleepTimerStopMode:(id)mode;
- (int)playbackSessionPriority;
- (int)prepareForSetQueueProactiveReasonType;
- (int)queueEndAction;
- (int)repeatMode;
- (int)replaceIntent;
- (int)sendOptions;
- (int)shuffleMode;
- (int)sleepTimerStopMode;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAlwaysIgnoreDuringCall:(BOOL)call;
- (void)setHasAlwaysIgnoreDuringSharePlay:(BOOL)play;
- (void)setHasAssistantTTSEndTimestamp:(BOOL)timestamp;
- (void)setHasBeginSeek:(BOOL)seek;
- (void)setHasCommandTimeout:(BOOL)timeout;
- (void)setHasEndSeek:(BOOL)seek;
- (void)setHasEnhanceDialogueActive:(BOOL)active;
- (void)setHasExternalPlayerCommand:(BOOL)command;
- (void)setHasNegative:(BOOL)negative;
- (void)setHasOriginatedFromRemoteDevice:(BOOL)device;
- (void)setHasPlaybackPosition:(BOOL)position;
- (void)setHasPlaybackQueueDestinationOffset:(BOOL)offset;
- (void)setHasPlaybackQueueInsertionPosition:(BOOL)position;
- (void)setHasPlaybackQueueOffset:(BOOL)offset;
- (void)setHasPlaybackRate:(BOOL)rate;
- (void)setHasPlaybackSessionPriority:(BOOL)priority;
- (void)setHasPrepareForSetQueueIsProactive:(BOOL)proactive;
- (void)setHasPrepareForSetQueueProactiveReasonType:(BOOL)type;
- (void)setHasPreservesQueueEndAction:(BOOL)action;
- (void)setHasPreservesRepeatMode:(BOOL)mode;
- (void)setHasPreservesShuffleMode:(BOOL)mode;
- (void)setHasQueueEndAction:(BOOL)action;
- (void)setHasRadioStationID:(BOOL)d;
- (void)setHasRating:(BOOL)rating;
- (void)setHasReferencePosition:(BOOL)position;
- (void)setHasRepeatMode:(BOOL)mode;
- (void)setHasReplaceIntent:(BOOL)intent;
- (void)setHasRequestDefermentToPlaybackQueuePosition:(BOOL)position;
- (void)setHasSendOptions:(BOOL)options;
- (void)setHasShouldBeginRadioPlayback:(BOOL)playback;
- (void)setHasShouldOverrideManuallyCuratedQueue:(BOOL)queue;
- (void)setHasShuffleMode:(BOOL)mode;
- (void)setHasSkipInterval:(BOOL)interval;
- (void)setHasSleepTimerStopMode:(BOOL)mode;
- (void)setHasSleepTimerTime:(BOOL)time;
- (void)setHasTrackID:(BOOL)d;
- (void)setHasTrueCompletion:(BOOL)completion;
- (void)setHasVerifySupportedCommands:(BOOL)commands;
- (void)setHasVocalsControlActive:(BOOL)active;
- (void)setHasVocalsControlContinuous:(BOOL)continuous;
- (void)setHasVocalsControlLevel:(BOOL)level;
- (void)setHasVocalsControlMaxLevel:(BOOL)level;
- (void)setHasVocalsControlMinLevel:(BOOL)level;
- (void)writeTo:(id)to;
@end

@implementation _MRCommandOptionsProtobuf

- (void)setHasExternalPlayerCommand:(BOOL)command
{
  v3 = 0x40000000;
  if (!command)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasSkipInterval:(BOOL)interval
{
  v3 = 0x100000;
  if (!interval)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasPlaybackRate:(BOOL)rate
{
  v3 = 2048;
  if (!rate)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasRating:(BOOL)rating
{
  v3 = 0x8000;
  if (!rating)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasNegative:(BOOL)negative
{
  v3 = 0x80000000;
  if (!negative)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasPlaybackPosition:(BOOL)position
{
  v3 = 8;
  if (!position)
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

- (void)setHasRepeatMode:(BOOL)mode
{
  v3 = 0x10000;
  if (!mode)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (int)StringAsRepeatMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"One"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"All"])
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

- (void)setHasShuffleMode:(BOOL)mode
{
  v3 = 0x80000;
  if (!mode)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (int)StringAsShuffleMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"Off"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"Albums"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"Songs"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTrackID:(BOOL)d
{
  v3 = 128;
  if (!d)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasRadioStationID:(BOOL)d
{
  v3 = 16;
  if (!d)
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

- (void)setHasSendOptions:(BOOL)options
{
  v3 = 0x40000;
  if (!options)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (int)StringAsSendOptions:(id)options
{
  optionsCopy = options;
  if ([optionsCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [optionsCopy isEqualToString:@"LaunchApplication"];
  }

  return v4;
}

- (void)setHasRequestDefermentToPlaybackQueuePosition:(BOOL)position
{
  v3 = 0x2000000000;
  if (!position)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasShouldOverrideManuallyCuratedQueue:(BOOL)queue
{
  v3 = 0x8000000000;
  if (!queue)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setHasShouldBeginRadioPlayback:(BOOL)playback
{
  v3 = 0x4000000000;
  if (!playback)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasPlaybackQueueInsertionPosition:(BOOL)position
{
  v3 = 512;
  if (!position)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasPlaybackQueueOffset:(BOOL)offset
{
  v3 = 1024;
  if (!offset)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasPlaybackQueueDestinationOffset:(BOOL)offset
{
  v3 = 256;
  if (!offset)
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

- (void)setHasReplaceIntent:(BOOL)intent
{
  v3 = 0x20000;
  if (!intent)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (int)StringAsReplaceIntent:(id)intent
{
  intentCopy = intent;
  if ([intentCopy isEqualToString:@"NonDestructive"])
  {
    v4 = 0;
  }

  else if ([intentCopy isEqualToString:@"ClearUpNext"])
  {
    v4 = 1;
  }

  else if ([intentCopy isEqualToString:@"KeepUpNext"])
  {
    v4 = 2;
  }

  else if ([intentCopy isEqualToString:@"LeaveSharedSession"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasBeginSeek:(BOOL)seek
{
  v3 = 0x8000000;
  if (!seek)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasEndSeek:(BOOL)seek
{
  v3 = 0x10000000;
  if (!seek)
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

- (void)setHasQueueEndAction:(BOOL)action
{
  v3 = 0x4000;
  if (!action)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (int)StringAsQueueEndAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:@"Clear"])
  {
    v4 = 0;
  }

  else if ([actionCopy isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([actionCopy isEqualToString:@"Reset"])
  {
    v4 = 2;
  }

  else if ([actionCopy isEqualToString:@"AutoPlay"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPreservesRepeatMode:(BOOL)mode
{
  v3 = 0x800000000;
  if (!mode)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasPreservesShuffleMode:(BOOL)mode
{
  v3 = 0x1000000000;
  if (!mode)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasPreservesQueueEndAction:(BOOL)action
{
  v3 = 0x400000000;
  if (!action)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasVerifySupportedCommands:(BOOL)commands
{
  v3 = 0x20000000000;
  if (!commands)
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

- (void)setHasPlaybackSessionPriority:(BOOL)priority
{
  v3 = 4096;
  if (!priority)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (int)StringAsPlaybackSessionPriority:(id)priority
{
  priorityCopy = priority;
  if ([priorityCopy isEqualToString:@"Low"])
  {
    v4 = 0;
  }

  else if ([priorityCopy isEqualToString:@"High"])
  {
    v4 = 512;
  }

  else if ([priorityCopy isEqualToString:@"Immediate"])
  {
    v4 = 1024;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTrueCompletion:(BOOL)completion
{
  v3 = 0x10000000000;
  if (!completion)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasCommandTimeout:(BOOL)timeout
{
  v3 = 4;
  if (!timeout)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasAssistantTTSEndTimestamp:(BOOL)timestamp
{
  v3 = 2;
  if (!timestamp)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasAlwaysIgnoreDuringCall:(BOOL)call
{
  v3 = 0x2000000;
  if (!call)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasAlwaysIgnoreDuringSharePlay:(BOOL)play
{
  v3 = 0x4000000;
  if (!play)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasOriginatedFromRemoteDevice:(BOOL)device
{
  v3 = 0x100000000;
  if (!device)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasPrepareForSetQueueIsProactive:(BOOL)proactive
{
  v3 = 0x200000000;
  if (!proactive)
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

- (void)setHasPrepareForSetQueueProactiveReasonType:(BOOL)type
{
  v3 = 0x2000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (int)StringAsPrepareForSetQueueProactiveReasonType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Boot"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ASE"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"SiriActivation"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasVocalsControlActive:(BOOL)active
{
  v3 = 0x40000000000;
  if (!active)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasVocalsControlLevel:(BOOL)level
{
  v3 = 0x400000;
  if (!level)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasVocalsControlMinLevel:(BOOL)level
{
  v3 = 0x1000000;
  if (!level)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasVocalsControlMaxLevel:(BOOL)level
{
  v3 = 0x800000;
  if (!level)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasVocalsControlContinuous:(BOOL)continuous
{
  v3 = 0x80000000000;
  if (!continuous)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3);
}

- (void)setHasSleepTimerTime:(BOOL)time
{
  v3 = 64;
  if (!time)
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

- (void)setHasSleepTimerStopMode:(BOOL)mode
{
  v3 = 0x200000;
  if (!mode)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (int)StringAsSleepTimerStopMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Off"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"Time"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"ChapterEnd"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"ItemEnd"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasReferencePosition:(BOOL)position
{
  v3 = 32;
  if (!position)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasEnhanceDialogueActive:(BOOL)active
{
  v3 = 0x20000000;
  if (!active)
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
  dictionaryRepresentation = [(_MRCommandOptionsProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = dictionary;
  sourceID = self->_sourceID;
  if (sourceID)
  {
    [dictionary setObject:sourceID forKey:@"sourceID"];
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
    dictionaryRepresentation = [(_MRSystemPlaybackQueueProtobuf *)systemAppPlaybackQueue dictionaryRepresentation];
    [v5 setObject:dictionaryRepresentation forKey:@"systemAppPlaybackQueue"];
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
    dictionaryRepresentation2 = [(_MRDictionaryProtobuf *)dialogOptions dictionaryRepresentation];
    [v5 setObject:dictionaryRepresentation2 forKey:@"dialogOptions"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v59 = toCopy;
  if (self->_sourceID)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if (self->_mediaType)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  has = self->_has;
  if ((*&has & 0x40000000) != 0)
  {
    externalPlayerCommand = self->_externalPlayerCommand;
    PBDataWriterWriteBOOLField();
    toCopy = v59;
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
  toCopy = v59;
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
  toCopy = v59;
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
  toCopy = v59;
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
  toCopy = v59;
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
  toCopy = v59;
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
  toCopy = v59;
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
  toCopy = v59;
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
  toCopy = v59;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_15:
    radioStationID = self->_radioStationID;
    PBDataWriterWriteInt64Field();
    toCopy = v59;
  }

LABEL_16:
  if (self->_radioStationHash)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if (self->_systemAppPlaybackQueueData)
  {
    PBDataWriterWriteDataField();
    toCopy = v59;
  }

  if (self->_destinationAppDisplayID)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  v7 = self->_has;
  if ((*&v7 & 0x40000) != 0)
  {
    sendOptions = self->_sendOptions;
    PBDataWriterWriteInt32Field();
    toCopy = v59;
    v7 = self->_has;
  }

  if ((*&v7 & 0x2000000000) != 0)
  {
    requestDefermentToPlaybackQueuePosition = self->_requestDefermentToPlaybackQueuePosition;
    PBDataWriterWriteBOOLField();
    toCopy = v59;
  }

  if (self->_contextID)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if ((*(&self->_has + 4) & 0x80) != 0)
  {
    shouldOverrideManuallyCuratedQueue = self->_shouldOverrideManuallyCuratedQueue;
    PBDataWriterWriteBOOLField();
    toCopy = v59;
  }

  if (self->_stationURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  v11 = self->_has;
  if ((*&v11 & 0x4000000000) != 0)
  {
    shouldBeginRadioPlayback = self->_shouldBeginRadioPlayback;
    PBDataWriterWriteBOOLField();
    toCopy = v59;
    v11 = self->_has;
  }

  if ((*&v11 & 0x200) != 0)
  {
    playbackQueueInsertionPosition = self->_playbackQueueInsertionPosition;
    PBDataWriterWriteInt32Field();
    toCopy = v59;
  }

  if (self->_contentItemID)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  v14 = self->_has;
  if ((*&v14 & 0x400) != 0)
  {
    playbackQueueOffset = self->_playbackQueueOffset;
    PBDataWriterWriteInt32Field();
    toCopy = v59;
    v14 = self->_has;
  }

  if ((*&v14 & 0x100) != 0)
  {
    playbackQueueDestinationOffset = self->_playbackQueueDestinationOffset;
    PBDataWriterWriteInt32Field();
    toCopy = v59;
  }

  if (self->_languageOption)
  {
    PBDataWriterWriteDataField();
    toCopy = v59;
  }

  if (self->_playbackQueueContext)
  {
    PBDataWriterWriteDataField();
    toCopy = v59;
  }

  if (self->_insertAfterContentItemID)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if (self->_nowPlayingContentItemID)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if ((*(&self->_has + 2) & 2) != 0)
  {
    replaceIntent = self->_replaceIntent;
    PBDataWriterWriteInt32Field();
    toCopy = v59;
  }

  if (self->_commandID)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if (self->_senderID)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if (self->_remoteControlInterface)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  v18 = self->_has;
  if ((*&v18 & 0x8000000) != 0)
  {
    beginSeek = self->_beginSeek;
    PBDataWriterWriteBOOLField();
    toCopy = v59;
    v18 = self->_has;
  }

  if ((*&v18 & 0x10000000) != 0)
  {
    endSeek = self->_endSeek;
    PBDataWriterWriteBOOLField();
    toCopy = v59;
  }

  if (self->_playbackSession)
  {
    PBDataWriterWriteDataField();
    toCopy = v59;
  }

  if (self->_userIdentityData)
  {
    PBDataWriterWriteDataField();
    toCopy = v59;
  }

  if (self->_insertBeforeContentItemID)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  v21 = self->_has;
  if ((*&v21 & 0x4000) != 0)
  {
    queueEndAction = self->_queueEndAction;
    PBDataWriterWriteInt32Field();
    toCopy = v59;
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
  toCopy = v59;
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
  toCopy = v59;
  if ((*&self->_has & 0x400000000) != 0)
  {
LABEL_72:
    preservesQueueEndAction = self->_preservesQueueEndAction;
    PBDataWriterWriteBOOLField();
    toCopy = v59;
  }

LABEL_73:
  if (self->_homeKitUserIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if ((*(&self->_has + 5) & 2) != 0)
  {
    verifySupportedCommands = self->_verifySupportedCommands;
    PBDataWriterWriteBOOLField();
    toCopy = v59;
  }

  if (self->_playbackSessionIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    playbackSessionPriority = self->_playbackSessionPriority;
    PBDataWriterWriteInt32Field();
    toCopy = v59;
  }

  if (self->_playbackSessionFilePath)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if (self->_playbackSessionRevision)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if (self->_playbackSessionMetadata)
  {
    PBDataWriterWriteDataField();
    toCopy = v59;
  }

  if (self->_playbackSessionType)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if (*(&self->_has + 5))
  {
    trueCompletion = self->_trueCompletion;
    PBDataWriterWriteBOOLField();
    toCopy = v59;
  }

  if (self->_playbackAuthorizationToken)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if (self->_eventNoticeType)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if (self->_eventNoticeIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if (self->_sharedPlaybackSessionIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  v26 = self->_has;
  if ((*&v26 & 4) != 0)
  {
    commandTimeout = self->_commandTimeout;
    PBDataWriterWriteDoubleField();
    toCopy = v59;
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
  toCopy = v59;
  if (*&self->_has)
  {
LABEL_102:
    assistantCommandSendTimestamp = self->_assistantCommandSendTimestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v59;
  }

LABEL_103:
  if (self->_originatingDeviceUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if (self->_destinationDeviceUIDs)
  {
    PBDataWriterWriteDataField();
    toCopy = v59;
  }

  if (self->_desiredSessionID)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  v28 = self->_has;
  if ((*&v28 & 0x2000000) != 0)
  {
    alwaysIgnoreDuringCall = self->_alwaysIgnoreDuringCall;
    PBDataWriterWriteBOOLField();
    toCopy = v59;
    v28 = self->_has;
  }

  if ((*&v28 & 0x4000000) != 0)
  {
    alwaysIgnoreDuringSharePlay = self->_alwaysIgnoreDuringSharePlay;
    PBDataWriterWriteBOOLField();
    toCopy = v59;
  }

  if (self->_commandSequenceUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if (*(&self->_has + 4))
  {
    originatedFromRemoteDevice = self->_originatedFromRemoteDevice;
    PBDataWriterWriteBOOLField();
    toCopy = v59;
  }

  if (self->_siriTurnIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if (self->_siriSearchDataSetIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if ((*(&self->_has + 4) & 2) != 0)
  {
    prepareForSetQueueIsProactive = self->_prepareForSetQueueIsProactive;
    PBDataWriterWriteBOOLField();
    toCopy = v59;
  }

  if (self->_prepareForSetQueueProactiveReason)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    prepareForSetQueueProactiveReasonType = self->_prepareForSetQueueProactiveReasonType;
    PBDataWriterWriteInt32Field();
    toCopy = v59;
  }

  if (self->_applicationUserIdentity)
  {
    PBDataWriterWriteDataField();
    toCopy = v59;
  }

  if (self->_systemAppPlaybackQueue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v59;
  }

  v34 = self->_has;
  if ((*&v34 & 0x40000000000) != 0)
  {
    vocalsControlActive = self->_vocalsControlActive;
    PBDataWriterWriteBOOLField();
    toCopy = v59;
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
  toCopy = v59;
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
  toCopy = v59;
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
  toCopy = v59;
  if ((*&self->_has & 0x80000000000) != 0)
  {
LABEL_136:
    vocalsControlContinuous = self->_vocalsControlContinuous;
    PBDataWriterWriteBOOLField();
    toCopy = v59;
  }

LABEL_137:
  if (self->_associatedParticipantIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  v36 = self->_has;
  if ((*&v36 & 0x40) != 0)
  {
    sleepTimerTime = self->_sleepTimerTime;
    PBDataWriterWriteDoubleField();
    toCopy = v59;
    v36 = self->_has;
  }

  if ((*&v36 & 0x200000) != 0)
  {
    sleepTimerStopMode = self->_sleepTimerStopMode;
    PBDataWriterWriteInt32Field();
    toCopy = v59;
  }

  if (self->_dialogOptions)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v59;
  }

  if (self->_clientPreferredLanguages)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    referencePosition = self->_referencePosition;
    PBDataWriterWriteDoubleField();
    toCopy = v59;
  }

  if (self->_delegateAccountData)
  {
    PBDataWriterWriteDataField();
    toCopy = v59;
  }

  if (self->_delegateAccountDataType)
  {
    PBDataWriterWriteStringField();
    toCopy = v59;
  }

  if ((*(&self->_has + 3) & 0x20) != 0)
  {
    enhanceDialogueActive = self->_enhanceDialogueActive;
    PBDataWriterWriteBOOLField();
    toCopy = v59;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v15 = toCopy;
  if (self->_sourceID)
  {
    [toCopy setSourceID:?];
    toCopy = v15;
  }

  if (self->_mediaType)
  {
    [v15 setMediaType:?];
    toCopy = v15;
  }

  has = self->_has;
  if ((*&has & 0x40000000) != 0)
  {
    *(toCopy + 497) = self->_externalPlayerCommand;
    *(toCopy + 64) |= 0x40000000uLL;
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

  *(toCopy + 108) = LODWORD(self->_skipInterval);
  *(toCopy + 64) |= 0x100000uLL;
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
  *(toCopy + 69) = LODWORD(self->_playbackRate);
  *(toCopy + 64) |= 0x800uLL;
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
  *(toCopy + 90) = LODWORD(self->_rating);
  *(toCopy + 64) |= 0x8000uLL;
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
  *(toCopy + 498) = self->_negative;
  *(toCopy + 64) |= 0x80000000uLL;
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
  *(toCopy + 4) = *&self->_playbackPosition;
  *(toCopy + 64) |= 8uLL;
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
  *(toCopy + 94) = self->_repeatMode;
  *(toCopy + 64) |= 0x10000uLL;
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
  *(toCopy + 102) = self->_shuffleMode;
  *(toCopy + 64) |= 0x80000uLL;
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
  *(toCopy + 8) = self->_trackID;
  *(toCopy + 64) |= 0x80uLL;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_15:
    *(toCopy + 5) = self->_radioStationID;
    *(toCopy + 64) |= 0x10uLL;
  }

LABEL_16:
  if (self->_radioStationHash)
  {
    [v15 setRadioStationHash:?];
    toCopy = v15;
  }

  if (self->_systemAppPlaybackQueueData)
  {
    [v15 setSystemAppPlaybackQueueData:?];
    toCopy = v15;
  }

  if (self->_destinationAppDisplayID)
  {
    [v15 setDestinationAppDisplayID:?];
    toCopy = v15;
  }

  v6 = self->_has;
  if ((*&v6 & 0x40000) != 0)
  {
    *(toCopy + 96) = self->_sendOptions;
    *(toCopy + 64) |= 0x40000uLL;
    v6 = self->_has;
  }

  if ((*&v6 & 0x2000000000) != 0)
  {
    *(toCopy + 504) = self->_requestDefermentToPlaybackQueuePosition;
    *(toCopy + 64) |= 0x2000000000uLL;
  }

  if (self->_contextID)
  {
    [v15 setContextID:?];
    toCopy = v15;
  }

  if ((*(&self->_has + 4) & 0x80) != 0)
  {
    *(toCopy + 506) = self->_shouldOverrideManuallyCuratedQueue;
    *(toCopy + 64) |= 0x8000000000uLL;
  }

  if (self->_stationURL)
  {
    [v15 setStationURL:?];
    toCopy = v15;
  }

  v7 = self->_has;
  if ((*&v7 & 0x4000000000) != 0)
  {
    *(toCopy + 505) = self->_shouldBeginRadioPlayback;
    *(toCopy + 64) |= 0x4000000000uLL;
    v7 = self->_has;
  }

  if ((*&v7 & 0x200) != 0)
  {
    *(toCopy + 67) = self->_playbackQueueInsertionPosition;
    *(toCopy + 64) |= 0x200uLL;
  }

  if (self->_contentItemID)
  {
    [v15 setContentItemID:?];
    toCopy = v15;
  }

  v8 = self->_has;
  if ((*&v8 & 0x400) != 0)
  {
    *(toCopy + 68) = self->_playbackQueueOffset;
    *(toCopy + 64) |= 0x400uLL;
    v8 = self->_has;
  }

  if ((*&v8 & 0x100) != 0)
  {
    *(toCopy + 66) = self->_playbackQueueDestinationOffset;
    *(toCopy + 64) |= 0x100uLL;
  }

  if (self->_languageOption)
  {
    [v15 setLanguageOption:?];
    toCopy = v15;
  }

  if (self->_playbackQueueContext)
  {
    [v15 setPlaybackQueueContext:?];
    toCopy = v15;
  }

  if (self->_insertAfterContentItemID)
  {
    [v15 setInsertAfterContentItemID:?];
    toCopy = v15;
  }

  if (self->_nowPlayingContentItemID)
  {
    [v15 setNowPlayingContentItemID:?];
    toCopy = v15;
  }

  if ((*(&self->_has + 2) & 2) != 0)
  {
    *(toCopy + 95) = self->_replaceIntent;
    *(toCopy + 64) |= 0x20000uLL;
  }

  if (self->_commandID)
  {
    [v15 setCommandID:?];
    toCopy = v15;
  }

  if (self->_senderID)
  {
    [v15 setSenderID:?];
    toCopy = v15;
  }

  if (self->_remoteControlInterface)
  {
    [v15 setRemoteControlInterface:?];
    toCopy = v15;
  }

  v9 = self->_has;
  if ((*&v9 & 0x8000000) != 0)
  {
    *(toCopy + 494) = self->_beginSeek;
    *(toCopy + 64) |= 0x8000000uLL;
    v9 = self->_has;
  }

  if ((*&v9 & 0x10000000) != 0)
  {
    *(toCopy + 495) = self->_endSeek;
    *(toCopy + 64) |= 0x10000000uLL;
  }

  if (self->_playbackSession)
  {
    [v15 setPlaybackSession:?];
    toCopy = v15;
  }

  if (self->_userIdentityData)
  {
    [v15 setUserIdentityData:?];
    toCopy = v15;
  }

  if (self->_insertBeforeContentItemID)
  {
    [v15 setInsertBeforeContentItemID:?];
    toCopy = v15;
  }

  v10 = self->_has;
  if ((*&v10 & 0x4000) != 0)
  {
    *(toCopy + 87) = self->_queueEndAction;
    *(toCopy + 64) |= 0x4000uLL;
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

  *(toCopy + 502) = self->_preservesRepeatMode;
  *(toCopy + 64) |= 0x800000000uLL;
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
  *(toCopy + 503) = self->_preservesShuffleMode;
  *(toCopy + 64) |= 0x1000000000uLL;
  if ((*&self->_has & 0x400000000) != 0)
  {
LABEL_72:
    *(toCopy + 501) = self->_preservesQueueEndAction;
    *(toCopy + 64) |= 0x400000000uLL;
  }

LABEL_73:
  if (self->_homeKitUserIdentifier)
  {
    [v15 setHomeKitUserIdentifier:?];
    toCopy = v15;
  }

  if ((*(&self->_has + 5) & 2) != 0)
  {
    *(toCopy + 508) = self->_verifySupportedCommands;
    *(toCopy + 64) |= 0x20000000000uLL;
  }

  if (self->_playbackSessionIdentifier)
  {
    [v15 setPlaybackSessionIdentifier:?];
    toCopy = v15;
  }

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    *(toCopy + 78) = self->_playbackSessionPriority;
    *(toCopy + 64) |= 0x1000uLL;
  }

  if (self->_playbackSessionFilePath)
  {
    [v15 setPlaybackSessionFilePath:?];
    toCopy = v15;
  }

  if (self->_playbackSessionRevision)
  {
    [v15 setPlaybackSessionRevision:?];
    toCopy = v15;
  }

  if (self->_playbackSessionMetadata)
  {
    [v15 setPlaybackSessionMetadata:?];
    toCopy = v15;
  }

  if (self->_playbackSessionType)
  {
    [v15 setPlaybackSessionType:?];
    toCopy = v15;
  }

  if (*(&self->_has + 5))
  {
    *(toCopy + 507) = self->_trueCompletion;
    *(toCopy + 64) |= 0x10000000000uLL;
  }

  if (self->_playbackAuthorizationToken)
  {
    [v15 setPlaybackAuthorizationToken:?];
    toCopy = v15;
  }

  if (self->_eventNoticeType)
  {
    [v15 setEventNoticeType:?];
    toCopy = v15;
  }

  if (self->_eventNoticeIdentifier)
  {
    [v15 setEventNoticeIdentifier:?];
    toCopy = v15;
  }

  if (self->_sharedPlaybackSessionIdentifier)
  {
    [v15 setSharedPlaybackSessionIdentifier:?];
    toCopy = v15;
  }

  v11 = self->_has;
  if ((*&v11 & 4) != 0)
  {
    *(toCopy + 3) = *&self->_commandTimeout;
    *(toCopy + 64) |= 4uLL;
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

  *(toCopy + 2) = *&self->_assistantTTSEndTimestamp;
  *(toCopy + 64) |= 2uLL;
  if (*&self->_has)
  {
LABEL_102:
    *(toCopy + 1) = *&self->_assistantCommandSendTimestamp;
    *(toCopy + 64) |= 1uLL;
  }

LABEL_103:
  if (self->_originatingDeviceUID)
  {
    [v15 setOriginatingDeviceUID:?];
    toCopy = v15;
  }

  if (self->_destinationDeviceUIDs)
  {
    [v15 setDestinationDeviceUIDs:?];
    toCopy = v15;
  }

  if (self->_desiredSessionID)
  {
    [v15 setDesiredSessionID:?];
    toCopy = v15;
  }

  v12 = self->_has;
  if ((*&v12 & 0x2000000) != 0)
  {
    *(toCopy + 492) = self->_alwaysIgnoreDuringCall;
    *(toCopy + 64) |= 0x2000000uLL;
    v12 = self->_has;
  }

  if ((*&v12 & 0x4000000) != 0)
  {
    *(toCopy + 493) = self->_alwaysIgnoreDuringSharePlay;
    *(toCopy + 64) |= 0x4000000uLL;
  }

  if (self->_commandSequenceUUID)
  {
    [v15 setCommandSequenceUUID:?];
    toCopy = v15;
  }

  if (*(&self->_has + 4))
  {
    *(toCopy + 499) = self->_originatedFromRemoteDevice;
    *(toCopy + 64) |= 0x100000000uLL;
  }

  if (self->_siriTurnIdentifier)
  {
    [v15 setSiriTurnIdentifier:?];
    toCopy = v15;
  }

  if (self->_siriSearchDataSetIdentifier)
  {
    [v15 setSiriSearchDataSetIdentifier:?];
    toCopy = v15;
  }

  if ((*(&self->_has + 4) & 2) != 0)
  {
    *(toCopy + 500) = self->_prepareForSetQueueIsProactive;
    *(toCopy + 64) |= 0x200000000uLL;
  }

  if (self->_prepareForSetQueueProactiveReason)
  {
    [v15 setPrepareForSetQueueProactiveReason:?];
    toCopy = v15;
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    *(toCopy + 86) = self->_prepareForSetQueueProactiveReasonType;
    *(toCopy + 64) |= 0x2000uLL;
  }

  if (self->_applicationUserIdentity)
  {
    [v15 setApplicationUserIdentity:?];
    toCopy = v15;
  }

  if (self->_systemAppPlaybackQueue)
  {
    [v15 setSystemAppPlaybackQueue:?];
    toCopy = v15;
  }

  v13 = self->_has;
  if ((*&v13 & 0x40000000000) != 0)
  {
    *(toCopy + 509) = self->_vocalsControlActive;
    *(toCopy + 64) |= 0x40000000000uLL;
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

  *(toCopy + 120) = LODWORD(self->_vocalsControlLevel);
  *(toCopy + 64) |= 0x400000uLL;
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
  *(toCopy + 122) = LODWORD(self->_vocalsControlMinLevel);
  *(toCopy + 64) |= 0x1000000uLL;
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
  *(toCopy + 121) = LODWORD(self->_vocalsControlMaxLevel);
  *(toCopy + 64) |= 0x800000uLL;
  if ((*&self->_has & 0x80000000000) != 0)
  {
LABEL_136:
    *(toCopy + 510) = self->_vocalsControlContinuous;
    *(toCopy + 64) |= 0x80000000000uLL;
  }

LABEL_137:
  if (self->_associatedParticipantIdentifier)
  {
    [v15 setAssociatedParticipantIdentifier:?];
    toCopy = v15;
  }

  v14 = self->_has;
  if ((*&v14 & 0x40) != 0)
  {
    *(toCopy + 7) = *&self->_sleepTimerTime;
    *(toCopy + 64) |= 0x40uLL;
    v14 = self->_has;
  }

  if ((*&v14 & 0x200000) != 0)
  {
    *(toCopy + 109) = self->_sleepTimerStopMode;
    *(toCopy + 64) |= 0x200000uLL;
  }

  if (self->_dialogOptions)
  {
    [v15 setDialogOptions:?];
    toCopy = v15;
  }

  if (self->_clientPreferredLanguages)
  {
    [v15 setClientPreferredLanguages:?];
    toCopy = v15;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(toCopy + 6) = *&self->_referencePosition;
    *(toCopy + 64) |= 0x20uLL;
  }

  if (self->_delegateAccountData)
  {
    [v15 setDelegateAccountData:?];
    toCopy = v15;
  }

  if (self->_delegateAccountDataType)
  {
    [v15 setDelegateAccountDataType:?];
    toCopy = v15;
  }

  if ((*(&self->_has + 3) & 0x20) != 0)
  {
    *(toCopy + 496) = self->_enhanceDialogueActive;
    *(toCopy + 64) |= 0x20000000uLL;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_sourceID copyWithZone:zone];
  v7 = *(v5 + 440);
  *(v5 + 440) = v6;

  v8 = [(NSString *)self->_mediaType copyWithZone:zone];
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
  v11 = [(NSString *)self->_radioStationHash copyWithZone:zone];
  v12 = *(v5 + 352);
  *(v5 + 352) = v11;

  v13 = [(NSData *)self->_systemAppPlaybackQueueData copyWithZone:zone];
  v14 = *(v5 + 464);
  *(v5 + 464) = v13;

  v15 = [(NSString *)self->_destinationAppDisplayID copyWithZone:zone];
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

  v18 = [(NSString *)self->_contextID copyWithZone:zone];
  v19 = *(v5 + 120);
  *(v5 + 120) = v18;

  if ((*(&self->_has + 4) & 0x80) != 0)
  {
    *(v5 + 506) = self->_shouldOverrideManuallyCuratedQueue;
    *(v5 + 512) |= 0x8000000000uLL;
  }

  v20 = [(NSString *)self->_stationURL copyWithZone:zone];
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

  v23 = [(NSString *)self->_contentItemID copyWithZone:zone];
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

  v26 = [(NSData *)self->_languageOption copyWithZone:zone];
  v27 = *(v5 + 216);
  *(v5 + 216) = v26;

  v28 = [(NSData *)self->_playbackQueueContext copyWithZone:zone];
  v29 = *(v5 + 256);
  *(v5 + 256) = v28;

  v30 = [(NSString *)self->_insertAfterContentItemID copyWithZone:zone];
  v31 = *(v5 + 200);
  *(v5 + 200) = v30;

  v32 = [(NSString *)self->_nowPlayingContentItemID copyWithZone:zone];
  v33 = *(v5 + 232);
  *(v5 + 232) = v32;

  if ((*(&self->_has + 2) & 2) != 0)
  {
    *(v5 + 380) = self->_replaceIntent;
    *(v5 + 512) |= 0x20000uLL;
  }

  v34 = [(NSString *)self->_commandID copyWithZone:zone];
  v35 = *(v5 + 96);
  *(v5 + 96) = v34;

  v36 = [(NSString *)self->_senderID copyWithZone:zone];
  v37 = *(v5 + 392);
  *(v5 + 392) = v36;

  v38 = [(NSString *)self->_remoteControlInterface copyWithZone:zone];
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

  v41 = [(NSData *)self->_playbackSession copyWithZone:zone];
  v42 = *(v5 + 280);
  *(v5 + 280) = v41;

  v43 = [(NSData *)self->_userIdentityData copyWithZone:zone];
  v44 = *(v5 + 472);
  *(v5 + 472) = v43;

  v45 = [(NSString *)self->_insertBeforeContentItemID copyWithZone:zone];
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
  v48 = [(NSString *)self->_homeKitUserIdentifier copyWithZone:zone];
  v49 = *(v5 + 192);
  *(v5 + 192) = v48;

  if ((*(&self->_has + 5) & 2) != 0)
  {
    *(v5 + 508) = self->_verifySupportedCommands;
    *(v5 + 512) |= 0x20000000000uLL;
  }

  v50 = [(NSString *)self->_playbackSessionIdentifier copyWithZone:zone];
  v51 = *(v5 + 296);
  *(v5 + 296) = v50;

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    *(v5 + 312) = self->_playbackSessionPriority;
    *(v5 + 512) |= 0x1000uLL;
  }

  v52 = [(NSString *)self->_playbackSessionFilePath copyWithZone:zone];
  v53 = *(v5 + 288);
  *(v5 + 288) = v52;

  v54 = [(NSString *)self->_playbackSessionRevision copyWithZone:zone];
  v55 = *(v5 + 320);
  *(v5 + 320) = v54;

  v56 = [(NSData *)self->_playbackSessionMetadata copyWithZone:zone];
  v57 = *(v5 + 304);
  *(v5 + 304) = v56;

  v58 = [(NSString *)self->_playbackSessionType copyWithZone:zone];
  v59 = *(v5 + 328);
  *(v5 + 328) = v58;

  if (*(&self->_has + 5))
  {
    *(v5 + 507) = self->_trueCompletion;
    *(v5 + 512) |= 0x10000000000uLL;
  }

  v60 = [(NSString *)self->_playbackAuthorizationToken copyWithZone:zone];
  v61 = *(v5 + 248);
  *(v5 + 248) = v60;

  v62 = [(NSString *)self->_eventNoticeType copyWithZone:zone];
  v63 = *(v5 + 184);
  *(v5 + 184) = v62;

  v64 = [(NSString *)self->_eventNoticeIdentifier copyWithZone:zone];
  v65 = *(v5 + 176);
  *(v5 + 176) = v64;

  v66 = [(NSString *)self->_sharedPlaybackSessionIdentifier copyWithZone:zone];
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
  v69 = [(NSString *)self->_originatingDeviceUID copyWithZone:zone];
  v70 = *(v5 + 240);
  *(v5 + 240) = v69;

  v71 = [(NSData *)self->_destinationDeviceUIDs copyWithZone:zone];
  v72 = *(v5 + 160);
  *(v5 + 160) = v71;

  v73 = [(NSString *)self->_desiredSessionID copyWithZone:zone];
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

  v76 = [(NSString *)self->_commandSequenceUUID copyWithZone:zone];
  v77 = *(v5 + 104);
  *(v5 + 104) = v76;

  if (*(&self->_has + 4))
  {
    *(v5 + 499) = self->_originatedFromRemoteDevice;
    *(v5 + 512) |= 0x100000000uLL;
  }

  v78 = [(NSString *)self->_siriTurnIdentifier copyWithZone:zone];
  v79 = *(v5 + 424);
  *(v5 + 424) = v78;

  v80 = [(NSString *)self->_siriSearchDataSetIdentifier copyWithZone:zone];
  v81 = *(v5 + 416);
  *(v5 + 416) = v80;

  if ((*(&self->_has + 4) & 2) != 0)
  {
    *(v5 + 500) = self->_prepareForSetQueueIsProactive;
    *(v5 + 512) |= 0x200000000uLL;
  }

  v82 = [(NSString *)self->_prepareForSetQueueProactiveReason copyWithZone:zone];
  v83 = *(v5 + 336);
  *(v5 + 336) = v82;

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    *(v5 + 344) = self->_prepareForSetQueueProactiveReasonType;
    *(v5 + 512) |= 0x2000uLL;
  }

  v84 = [(NSData *)self->_applicationUserIdentity copyWithZone:zone];
  v85 = *(v5 + 72);
  *(v5 + 72) = v84;

  v86 = [(_MRSystemPlaybackQueueProtobuf *)self->_systemAppPlaybackQueue copyWithZone:zone];
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
  v89 = [(NSString *)self->_associatedParticipantIdentifier copyWithZone:zone];
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

  v92 = [(_MRDictionaryProtobuf *)self->_dialogOptions copyWithZone:zone];
  v93 = *(v5 + 168);
  *(v5 + 168) = v92;

  v94 = [(NSString *)self->_clientPreferredLanguages copyWithZone:zone];
  v95 = *(v5 + 88);
  *(v5 + 88) = v94;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 48) = self->_referencePosition;
    *(v5 + 512) |= 0x20uLL;
  }

  v96 = [(NSData *)self->_delegateAccountData copyWithZone:zone];
  v97 = *(v5 + 128);
  *(v5 + 128) = v96;

  v98 = [(NSString *)self->_delegateAccountDataType copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_160;
  }

  sourceID = self->_sourceID;
  if (sourceID | *(equalCopy + 55))
  {
    if (![(NSString *)sourceID isEqual:?])
    {
      goto LABEL_160;
    }
  }

  mediaType = self->_mediaType;
  if (mediaType | *(equalCopy + 28))
  {
    if (![(NSString *)mediaType isEqual:?])
    {
      goto LABEL_160;
    }
  }

  has = self->_has;
  v8 = *(equalCopy + 64);
  if ((*&has & 0x40000000) != 0)
  {
    if ((v8 & 0x40000000) == 0)
    {
      goto LABEL_160;
    }

    v9 = *(equalCopy + 497);
    if (self->_externalPlayerCommand)
    {
      if ((*(equalCopy + 497) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(equalCopy + 497))
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
    if ((v8 & 0x100000) == 0 || self->_skipInterval != *(equalCopy + 108))
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
    if ((v8 & 0x800) == 0 || self->_playbackRate != *(equalCopy + 69))
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
    if ((v8 & 0x8000) == 0 || self->_rating != *(equalCopy + 90))
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

    v10 = *(equalCopy + 498);
    if (self->_negative)
    {
      if ((*(equalCopy + 498) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(equalCopy + 498))
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
    if ((v8 & 8) == 0 || self->_playbackPosition != *(equalCopy + 4))
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
    if ((v8 & 0x10000) == 0 || self->_repeatMode != *(equalCopy + 94))
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
    if ((v8 & 0x80000) == 0 || self->_shuffleMode != *(equalCopy + 102))
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
    if ((v8 & 0x80) == 0 || self->_trackID != *(equalCopy + 8))
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
    if ((v8 & 0x10) == 0 || self->_radioStationID != *(equalCopy + 5))
    {
      goto LABEL_160;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_160;
  }

  radioStationHash = self->_radioStationHash;
  if (radioStationHash | *(equalCopy + 44) && ![(NSString *)radioStationHash isEqual:?])
  {
    goto LABEL_160;
  }

  systemAppPlaybackQueueData = self->_systemAppPlaybackQueueData;
  if (systemAppPlaybackQueueData | *(equalCopy + 58))
  {
    if (![(NSData *)systemAppPlaybackQueueData isEqual:?])
    {
      goto LABEL_160;
    }
  }

  destinationAppDisplayID = self->_destinationAppDisplayID;
  if (destinationAppDisplayID | *(equalCopy + 19))
  {
    if (![(NSString *)destinationAppDisplayID isEqual:?])
    {
      goto LABEL_160;
    }
  }

  v14 = self->_has;
  v15 = *(equalCopy + 64);
  if ((*&v14 & 0x40000) != 0)
  {
    if ((v15 & 0x40000) == 0 || self->_sendOptions != *(equalCopy + 96))
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

    v20 = *(equalCopy + 504);
    if (self->_requestDefermentToPlaybackQueuePosition)
    {
      if ((*(equalCopy + 504) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(equalCopy + 504))
    {
      goto LABEL_160;
    }
  }

  else if ((v15 & 0x2000000000) != 0)
  {
    goto LABEL_160;
  }

  contextID = self->_contextID;
  if (contextID | *(equalCopy + 15))
  {
    if (![(NSString *)contextID isEqual:?])
    {
      goto LABEL_160;
    }

    v14 = self->_has;
  }

  v17 = *(equalCopy + 64);
  if ((*&v14 & 0x8000000000) != 0)
  {
    if ((v17 & 0x8000000000) == 0)
    {
      goto LABEL_160;
    }

    v21 = *(equalCopy + 506);
    if (self->_shouldOverrideManuallyCuratedQueue)
    {
      if ((*(equalCopy + 506) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(equalCopy + 506))
    {
      goto LABEL_160;
    }
  }

  else if ((v17 & 0x8000000000) != 0)
  {
    goto LABEL_160;
  }

  stationURL = self->_stationURL;
  if (stationURL | *(equalCopy + 56))
  {
    if (![(NSString *)stationURL isEqual:?])
    {
      goto LABEL_160;
    }

    v14 = self->_has;
  }

  v19 = *(equalCopy + 64);
  if ((*&v14 & 0x4000000000) != 0)
  {
    if ((v19 & 0x4000000000) == 0)
    {
      goto LABEL_160;
    }

    v22 = *(equalCopy + 505);
    if (self->_shouldBeginRadioPlayback)
    {
      if ((*(equalCopy + 505) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(equalCopy + 505))
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
    if ((v19 & 0x200) == 0 || self->_playbackQueueInsertionPosition != *(equalCopy + 67))
    {
      goto LABEL_160;
    }
  }

  else if ((v19 & 0x200) != 0)
  {
    goto LABEL_160;
  }

  contentItemID = self->_contentItemID;
  if (contentItemID | *(equalCopy + 14))
  {
    if (![(NSString *)contentItemID isEqual:?])
    {
      goto LABEL_160;
    }

    v14 = self->_has;
  }

  v24 = *(equalCopy + 64);
  if ((*&v14 & 0x400) != 0)
  {
    if ((v24 & 0x400) == 0 || self->_playbackQueueOffset != *(equalCopy + 68))
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
    if ((v24 & 0x100) == 0 || self->_playbackQueueDestinationOffset != *(equalCopy + 66))
    {
      goto LABEL_160;
    }
  }

  else if ((v24 & 0x100) != 0)
  {
    goto LABEL_160;
  }

  languageOption = self->_languageOption;
  if (languageOption | *(equalCopy + 27) && ![(NSData *)languageOption isEqual:?])
  {
    goto LABEL_160;
  }

  playbackQueueContext = self->_playbackQueueContext;
  if (playbackQueueContext | *(equalCopy + 32))
  {
    if (![(NSData *)playbackQueueContext isEqual:?])
    {
      goto LABEL_160;
    }
  }

  insertAfterContentItemID = self->_insertAfterContentItemID;
  if (insertAfterContentItemID | *(equalCopy + 25))
  {
    if (![(NSString *)insertAfterContentItemID isEqual:?])
    {
      goto LABEL_160;
    }
  }

  nowPlayingContentItemID = self->_nowPlayingContentItemID;
  if (nowPlayingContentItemID | *(equalCopy + 29))
  {
    if (![(NSString *)nowPlayingContentItemID isEqual:?])
    {
      goto LABEL_160;
    }
  }

  v29 = *(equalCopy + 64);
  if ((*(&self->_has + 2) & 2) != 0)
  {
    if ((v29 & 0x20000) == 0 || self->_replaceIntent != *(equalCopy + 95))
    {
      goto LABEL_160;
    }
  }

  else if ((v29 & 0x20000) != 0)
  {
    goto LABEL_160;
  }

  commandID = self->_commandID;
  if (commandID | *(equalCopy + 12) && ![(NSString *)commandID isEqual:?])
  {
    goto LABEL_160;
  }

  senderID = self->_senderID;
  if (senderID | *(equalCopy + 49))
  {
    if (![(NSString *)senderID isEqual:?])
    {
      goto LABEL_160;
    }
  }

  remoteControlInterface = self->_remoteControlInterface;
  if (remoteControlInterface | *(equalCopy + 46))
  {
    if (![(NSString *)remoteControlInterface isEqual:?])
    {
      goto LABEL_160;
    }
  }

  v33 = self->_has;
  v34 = *(equalCopy + 64);
  if ((*&v33 & 0x8000000) != 0)
  {
    if ((v34 & 0x8000000) == 0)
    {
      goto LABEL_160;
    }

    v35 = *(equalCopy + 494);
    if (self->_beginSeek)
    {
      if ((*(equalCopy + 494) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(equalCopy + 494))
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

    v43 = *(equalCopy + 495);
    if (self->_endSeek)
    {
      if ((*(equalCopy + 495) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(equalCopy + 495))
    {
      goto LABEL_160;
    }
  }

  else if ((v34 & 0x10000000) != 0)
  {
    goto LABEL_160;
  }

  playbackSession = self->_playbackSession;
  if (playbackSession | *(equalCopy + 35) && ![(NSData *)playbackSession isEqual:?])
  {
    goto LABEL_160;
  }

  userIdentityData = self->_userIdentityData;
  if (userIdentityData | *(equalCopy + 59))
  {
    if (![(NSData *)userIdentityData isEqual:?])
    {
      goto LABEL_160;
    }
  }

  insertBeforeContentItemID = self->_insertBeforeContentItemID;
  if (insertBeforeContentItemID | *(equalCopy + 26))
  {
    if (![(NSString *)insertBeforeContentItemID isEqual:?])
    {
      goto LABEL_160;
    }
  }

  v39 = self->_has;
  v40 = *(equalCopy + 64);
  if ((*&v39 & 0x4000) != 0)
  {
    if ((v40 & 0x4000) == 0 || self->_queueEndAction != *(equalCopy + 87))
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

    v44 = *(equalCopy + 502);
    if (self->_preservesRepeatMode)
    {
      if ((*(equalCopy + 502) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(equalCopy + 502))
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

    v45 = *(equalCopy + 503);
    if (self->_preservesShuffleMode)
    {
      if ((*(equalCopy + 503) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(equalCopy + 503))
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

    v46 = *(equalCopy + 501);
    if (self->_preservesQueueEndAction)
    {
      if ((*(equalCopy + 501) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(equalCopy + 501))
    {
      goto LABEL_160;
    }
  }

  else if ((v40 & 0x400000000) != 0)
  {
    goto LABEL_160;
  }

  homeKitUserIdentifier = self->_homeKitUserIdentifier;
  if (homeKitUserIdentifier | *(equalCopy + 24))
  {
    if (![(NSString *)homeKitUserIdentifier isEqual:?])
    {
      goto LABEL_160;
    }

    v39 = self->_has;
  }

  v48 = *(equalCopy + 64);
  if ((*&v39 & 0x20000000000) != 0)
  {
    if ((v48 & 0x20000000000) == 0)
    {
      goto LABEL_160;
    }

    v49 = *(equalCopy + 508);
    if (self->_verifySupportedCommands)
    {
      if ((*(equalCopy + 508) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(equalCopy + 508))
    {
      goto LABEL_160;
    }
  }

  else if ((v48 & 0x20000000000) != 0)
  {
    goto LABEL_160;
  }

  playbackSessionIdentifier = self->_playbackSessionIdentifier;
  if (playbackSessionIdentifier | *(equalCopy + 37))
  {
    if (![(NSString *)playbackSessionIdentifier isEqual:?])
    {
      goto LABEL_160;
    }

    v39 = self->_has;
  }

  v51 = *(equalCopy + 64);
  if ((*&v39 & 0x1000) != 0)
  {
    if ((v51 & 0x1000) == 0 || self->_playbackSessionPriority != *(equalCopy + 78))
    {
      goto LABEL_160;
    }
  }

  else if ((v51 & 0x1000) != 0)
  {
    goto LABEL_160;
  }

  playbackSessionFilePath = self->_playbackSessionFilePath;
  if (playbackSessionFilePath | *(equalCopy + 36) && ![(NSString *)playbackSessionFilePath isEqual:?])
  {
    goto LABEL_160;
  }

  playbackSessionRevision = self->_playbackSessionRevision;
  if (playbackSessionRevision | *(equalCopy + 40))
  {
    if (![(NSString *)playbackSessionRevision isEqual:?])
    {
      goto LABEL_160;
    }
  }

  playbackSessionMetadata = self->_playbackSessionMetadata;
  if (playbackSessionMetadata | *(equalCopy + 38))
  {
    if (![(NSData *)playbackSessionMetadata isEqual:?])
    {
      goto LABEL_160;
    }
  }

  playbackSessionType = self->_playbackSessionType;
  if (playbackSessionType | *(equalCopy + 41))
  {
    if (![(NSString *)playbackSessionType isEqual:?])
    {
      goto LABEL_160;
    }
  }

  v56 = *(equalCopy + 64);
  if (*(&self->_has + 5))
  {
    if ((v56 & 0x10000000000) == 0)
    {
      goto LABEL_160;
    }

    v63 = *(equalCopy + 507);
    if (self->_trueCompletion)
    {
      if ((*(equalCopy + 507) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(equalCopy + 507))
    {
      goto LABEL_160;
    }
  }

  else if ((v56 & 0x10000000000) != 0)
  {
    goto LABEL_160;
  }

  playbackAuthorizationToken = self->_playbackAuthorizationToken;
  if (playbackAuthorizationToken | *(equalCopy + 31) && ![(NSString *)playbackAuthorizationToken isEqual:?])
  {
    goto LABEL_160;
  }

  eventNoticeType = self->_eventNoticeType;
  if (eventNoticeType | *(equalCopy + 23))
  {
    if (![(NSString *)eventNoticeType isEqual:?])
    {
      goto LABEL_160;
    }
  }

  eventNoticeIdentifier = self->_eventNoticeIdentifier;
  if (eventNoticeIdentifier | *(equalCopy + 22))
  {
    if (![(NSString *)eventNoticeIdentifier isEqual:?])
    {
      goto LABEL_160;
    }
  }

  sharedPlaybackSessionIdentifier = self->_sharedPlaybackSessionIdentifier;
  if (sharedPlaybackSessionIdentifier | *(equalCopy + 50))
  {
    if (![(NSString *)sharedPlaybackSessionIdentifier isEqual:?])
    {
      goto LABEL_160;
    }
  }

  v61 = self->_has;
  v62 = *(equalCopy + 64);
  if ((*&v61 & 4) != 0)
  {
    if ((v62 & 4) == 0 || self->_commandTimeout != *(equalCopy + 3))
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
    if ((v62 & 2) == 0 || self->_assistantTTSEndTimestamp != *(equalCopy + 2))
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
    if ((v62 & 1) == 0 || self->_assistantCommandSendTimestamp != *(equalCopy + 1))
    {
      goto LABEL_160;
    }
  }

  else if (v62)
  {
    goto LABEL_160;
  }

  originatingDeviceUID = self->_originatingDeviceUID;
  if (originatingDeviceUID | *(equalCopy + 30) && ![(NSString *)originatingDeviceUID isEqual:?])
  {
    goto LABEL_160;
  }

  destinationDeviceUIDs = self->_destinationDeviceUIDs;
  if (destinationDeviceUIDs | *(equalCopy + 20))
  {
    if (![(NSData *)destinationDeviceUIDs isEqual:?])
    {
      goto LABEL_160;
    }
  }

  desiredSessionID = self->_desiredSessionID;
  if (desiredSessionID | *(equalCopy + 18))
  {
    if (![(NSString *)desiredSessionID isEqual:?])
    {
      goto LABEL_160;
    }
  }

  v67 = self->_has;
  v68 = *(equalCopy + 64);
  if ((*&v67 & 0x2000000) != 0)
  {
    if ((v68 & 0x2000000) == 0)
    {
      goto LABEL_160;
    }

    v69 = *(equalCopy + 492);
    if (self->_alwaysIgnoreDuringCall)
    {
      if ((*(equalCopy + 492) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(equalCopy + 492))
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

    v70 = *(equalCopy + 493);
    if (self->_alwaysIgnoreDuringSharePlay)
    {
      if ((*(equalCopy + 493) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(equalCopy + 493))
    {
      goto LABEL_160;
    }
  }

  else if ((v68 & 0x4000000) != 0)
  {
    goto LABEL_160;
  }

  commandSequenceUUID = self->_commandSequenceUUID;
  if (commandSequenceUUID | *(equalCopy + 13))
  {
    if (![(NSString *)commandSequenceUUID isEqual:?])
    {
      goto LABEL_160;
    }

    v67 = self->_has;
  }

  v72 = *(equalCopy + 64);
  if ((*&v67 & 0x100000000) != 0)
  {
    if ((v72 & 0x100000000) == 0)
    {
      goto LABEL_160;
    }

    v73 = *(equalCopy + 499);
    if (self->_originatedFromRemoteDevice)
    {
      if ((*(equalCopy + 499) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(equalCopy + 499))
    {
      goto LABEL_160;
    }
  }

  else if ((v72 & 0x100000000) != 0)
  {
    goto LABEL_160;
  }

  siriTurnIdentifier = self->_siriTurnIdentifier;
  if (siriTurnIdentifier | *(equalCopy + 53) && ![(NSString *)siriTurnIdentifier isEqual:?])
  {
    goto LABEL_160;
  }

  siriSearchDataSetIdentifier = self->_siriSearchDataSetIdentifier;
  if (siriSearchDataSetIdentifier | *(equalCopy + 52))
  {
    if (![(NSString *)siriSearchDataSetIdentifier isEqual:?])
    {
      goto LABEL_160;
    }
  }

  v76 = self->_has;
  v77 = *(equalCopy + 64);
  if ((*&v76 & 0x200000000) != 0)
  {
    if ((v77 & 0x200000000) == 0)
    {
      goto LABEL_160;
    }

    v78 = *(equalCopy + 500);
    if (self->_prepareForSetQueueIsProactive)
    {
      if ((*(equalCopy + 500) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(equalCopy + 500))
    {
      goto LABEL_160;
    }
  }

  else if ((v77 & 0x200000000) != 0)
  {
    goto LABEL_160;
  }

  prepareForSetQueueProactiveReason = self->_prepareForSetQueueProactiveReason;
  if (prepareForSetQueueProactiveReason | *(equalCopy + 42))
  {
    if (![(NSString *)prepareForSetQueueProactiveReason isEqual:?])
    {
      goto LABEL_160;
    }

    v76 = self->_has;
  }

  v80 = *(equalCopy + 64);
  if ((*&v76 & 0x2000) != 0)
  {
    if ((v80 & 0x2000) == 0 || self->_prepareForSetQueueProactiveReasonType != *(equalCopy + 86))
    {
      goto LABEL_160;
    }
  }

  else if ((v80 & 0x2000) != 0)
  {
    goto LABEL_160;
  }

  applicationUserIdentity = self->_applicationUserIdentity;
  if (applicationUserIdentity | *(equalCopy + 9) && ![(NSData *)applicationUserIdentity isEqual:?])
  {
    goto LABEL_160;
  }

  systemAppPlaybackQueue = self->_systemAppPlaybackQueue;
  if (systemAppPlaybackQueue | *(equalCopy + 57))
  {
    if (![(_MRSystemPlaybackQueueProtobuf *)systemAppPlaybackQueue isEqual:?])
    {
      goto LABEL_160;
    }
  }

  v83 = self->_has;
  v84 = *(equalCopy + 64);
  if ((*&v83 & 0x40000000000) != 0)
  {
    if ((v84 & 0x40000000000) == 0)
    {
      goto LABEL_160;
    }

    v85 = *(equalCopy + 509);
    if (self->_vocalsControlActive)
    {
      if ((*(equalCopy + 509) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(equalCopy + 509))
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
    if ((v84 & 0x400000) == 0 || self->_vocalsControlLevel != *(equalCopy + 120))
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
    if ((v84 & 0x1000000) == 0 || self->_vocalsControlMinLevel != *(equalCopy + 122))
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
    if ((v84 & 0x800000) == 0 || self->_vocalsControlMaxLevel != *(equalCopy + 121))
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

    v86 = *(equalCopy + 510);
    if (self->_vocalsControlContinuous)
    {
      if ((*(equalCopy + 510) & 1) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (*(equalCopy + 510))
    {
      goto LABEL_160;
    }
  }

  else if ((v84 & 0x80000000000) != 0)
  {
    goto LABEL_160;
  }

  associatedParticipantIdentifier = self->_associatedParticipantIdentifier;
  if (associatedParticipantIdentifier | *(equalCopy + 10))
  {
    if (![(NSString *)associatedParticipantIdentifier isEqual:?])
    {
      goto LABEL_160;
    }

    v83 = self->_has;
  }

  v88 = *(equalCopy + 64);
  if ((*&v83 & 0x40) != 0)
  {
    if ((v88 & 0x40) == 0 || self->_sleepTimerTime != *(equalCopy + 7))
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
    if ((v88 & 0x200000) == 0 || self->_sleepTimerStopMode != *(equalCopy + 109))
    {
      goto LABEL_160;
    }
  }

  else if ((v88 & 0x200000) != 0)
  {
    goto LABEL_160;
  }

  dialogOptions = self->_dialogOptions;
  if (dialogOptions | *(equalCopy + 21) && ![(_MRDictionaryProtobuf *)dialogOptions isEqual:?])
  {
    goto LABEL_160;
  }

  clientPreferredLanguages = self->_clientPreferredLanguages;
  if (clientPreferredLanguages | *(equalCopy + 11))
  {
    if (![(NSString *)clientPreferredLanguages isEqual:?])
    {
      goto LABEL_160;
    }
  }

  v91 = *(equalCopy + 64);
  if ((*&self->_has & 0x20) != 0)
  {
    if ((v91 & 0x20) == 0 || self->_referencePosition != *(equalCopy + 6))
    {
      goto LABEL_160;
    }
  }

  else if ((v91 & 0x20) != 0)
  {
    goto LABEL_160;
  }

  delegateAccountData = self->_delegateAccountData;
  if (!(delegateAccountData | *(equalCopy + 16)) || [(NSData *)delegateAccountData isEqual:?])
  {
    delegateAccountDataType = self->_delegateAccountDataType;
    if (!(delegateAccountDataType | *(equalCopy + 17)) || [(NSString *)delegateAccountDataType isEqual:?])
    {
      if ((*(&self->_has + 3) & 0x20) == 0)
      {
        v41 = (*(equalCopy + 64) & 0x20000000) == 0;
        goto LABEL_161;
      }

      if ((*(equalCopy + 64) & 0x20000000) != 0)
      {
        if (self->_enhanceDialogueActive)
        {
          if ((*(equalCopy + 496) & 1) == 0)
          {
            goto LABEL_160;
          }

LABEL_372:
          v41 = 1;
          goto LABEL_161;
        }

        if (!*(equalCopy + 496))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v19 = fromCopy;
  if (*(fromCopy + 55))
  {
    [(_MRCommandOptionsProtobuf *)self setSourceID:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 28))
  {
    [(_MRCommandOptionsProtobuf *)self setMediaType:?];
    fromCopy = v19;
  }

  v5 = *(fromCopy + 64);
  if ((v5 & 0x40000000) != 0)
  {
    self->_externalPlayerCommand = *(fromCopy + 497);
    *&self->_has |= 0x40000000uLL;
    v5 = *(fromCopy + 64);
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

  self->_skipInterval = *(fromCopy + 108);
  *&self->_has |= 0x100000uLL;
  v5 = *(fromCopy + 64);
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
  self->_playbackRate = *(fromCopy + 69);
  *&self->_has |= 0x800uLL;
  v5 = *(fromCopy + 64);
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
  self->_rating = *(fromCopy + 90);
  *&self->_has |= 0x8000uLL;
  v5 = *(fromCopy + 64);
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
  self->_negative = *(fromCopy + 498);
  *&self->_has |= 0x80000000uLL;
  v5 = *(fromCopy + 64);
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
  self->_playbackPosition = *(fromCopy + 4);
  *&self->_has |= 8uLL;
  v5 = *(fromCopy + 64);
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
  self->_repeatMode = *(fromCopy + 94);
  *&self->_has |= 0x10000uLL;
  v5 = *(fromCopy + 64);
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
  self->_shuffleMode = *(fromCopy + 102);
  *&self->_has |= 0x80000uLL;
  v5 = *(fromCopy + 64);
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
  self->_trackID = *(fromCopy + 8);
  *&self->_has |= 0x80uLL;
  if ((*(fromCopy + 64) & 0x10) != 0)
  {
LABEL_15:
    self->_radioStationID = *(fromCopy + 5);
    *&self->_has |= 0x10uLL;
  }

LABEL_16:
  if (*(fromCopy + 44))
  {
    [(_MRCommandOptionsProtobuf *)self setRadioStationHash:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 58))
  {
    [(_MRCommandOptionsProtobuf *)self setSystemAppPlaybackQueueData:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 19))
  {
    [(_MRCommandOptionsProtobuf *)self setDestinationAppDisplayID:?];
    fromCopy = v19;
  }

  v6 = *(fromCopy + 64);
  if ((v6 & 0x40000) != 0)
  {
    self->_sendOptions = *(fromCopy + 96);
    *&self->_has |= 0x40000uLL;
    v6 = *(fromCopy + 64);
  }

  if ((v6 & 0x2000000000) != 0)
  {
    self->_requestDefermentToPlaybackQueuePosition = *(fromCopy + 504);
    *&self->_has |= 0x2000000000uLL;
  }

  if (*(fromCopy + 15))
  {
    [(_MRCommandOptionsProtobuf *)self setContextID:?];
    fromCopy = v19;
  }

  if ((*(fromCopy + 516) & 0x80) != 0)
  {
    self->_shouldOverrideManuallyCuratedQueue = *(fromCopy + 506);
    *&self->_has |= 0x8000000000uLL;
  }

  if (*(fromCopy + 56))
  {
    [(_MRCommandOptionsProtobuf *)self setStationURL:?];
    fromCopy = v19;
  }

  v7 = *(fromCopy + 64);
  if ((v7 & 0x4000000000) != 0)
  {
    self->_shouldBeginRadioPlayback = *(fromCopy + 505);
    *&self->_has |= 0x4000000000uLL;
    v7 = *(fromCopy + 64);
  }

  if ((v7 & 0x200) != 0)
  {
    self->_playbackQueueInsertionPosition = *(fromCopy + 67);
    *&self->_has |= 0x200uLL;
  }

  if (*(fromCopy + 14))
  {
    [(_MRCommandOptionsProtobuf *)self setContentItemID:?];
    fromCopy = v19;
  }

  v8 = *(fromCopy + 64);
  if ((v8 & 0x400) != 0)
  {
    self->_playbackQueueOffset = *(fromCopy + 68);
    *&self->_has |= 0x400uLL;
    v8 = *(fromCopy + 64);
  }

  if ((v8 & 0x100) != 0)
  {
    self->_playbackQueueDestinationOffset = *(fromCopy + 66);
    *&self->_has |= 0x100uLL;
  }

  if (*(fromCopy + 27))
  {
    [(_MRCommandOptionsProtobuf *)self setLanguageOption:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 32))
  {
    [(_MRCommandOptionsProtobuf *)self setPlaybackQueueContext:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 25))
  {
    [(_MRCommandOptionsProtobuf *)self setInsertAfterContentItemID:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 29))
  {
    [(_MRCommandOptionsProtobuf *)self setNowPlayingContentItemID:?];
    fromCopy = v19;
  }

  if ((*(fromCopy + 514) & 2) != 0)
  {
    self->_replaceIntent = *(fromCopy + 95);
    *&self->_has |= 0x20000uLL;
  }

  if (*(fromCopy + 12))
  {
    [(_MRCommandOptionsProtobuf *)self setCommandID:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 49))
  {
    [(_MRCommandOptionsProtobuf *)self setSenderID:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 46))
  {
    [(_MRCommandOptionsProtobuf *)self setRemoteControlInterface:?];
    fromCopy = v19;
  }

  v9 = *(fromCopy + 64);
  if ((v9 & 0x8000000) != 0)
  {
    self->_beginSeek = *(fromCopy + 494);
    *&self->_has |= 0x8000000uLL;
    v9 = *(fromCopy + 64);
  }

  if ((v9 & 0x10000000) != 0)
  {
    self->_endSeek = *(fromCopy + 495);
    *&self->_has |= 0x10000000uLL;
  }

  if (*(fromCopy + 35))
  {
    [(_MRCommandOptionsProtobuf *)self setPlaybackSession:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 59))
  {
    [(_MRCommandOptionsProtobuf *)self setUserIdentityData:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 26))
  {
    [(_MRCommandOptionsProtobuf *)self setInsertBeforeContentItemID:?];
    fromCopy = v19;
  }

  v10 = *(fromCopy + 64);
  if ((v10 & 0x4000) != 0)
  {
    self->_queueEndAction = *(fromCopy + 87);
    *&self->_has |= 0x4000uLL;
    v10 = *(fromCopy + 64);
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

  self->_preservesRepeatMode = *(fromCopy + 502);
  *&self->_has |= 0x800000000uLL;
  v10 = *(fromCopy + 64);
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
  self->_preservesShuffleMode = *(fromCopy + 503);
  *&self->_has |= 0x1000000000uLL;
  if ((*(fromCopy + 64) & 0x400000000) != 0)
  {
LABEL_72:
    self->_preservesQueueEndAction = *(fromCopy + 501);
    *&self->_has |= 0x400000000uLL;
  }

LABEL_73:
  if (*(fromCopy + 24))
  {
    [(_MRCommandOptionsProtobuf *)self setHomeKitUserIdentifier:?];
    fromCopy = v19;
  }

  if ((*(fromCopy + 517) & 2) != 0)
  {
    self->_verifySupportedCommands = *(fromCopy + 508);
    *&self->_has |= 0x20000000000uLL;
  }

  if (*(fromCopy + 37))
  {
    [(_MRCommandOptionsProtobuf *)self setPlaybackSessionIdentifier:?];
    fromCopy = v19;
  }

  if ((*(fromCopy + 513) & 0x10) != 0)
  {
    self->_playbackSessionPriority = *(fromCopy + 78);
    *&self->_has |= 0x1000uLL;
  }

  if (*(fromCopy + 36))
  {
    [(_MRCommandOptionsProtobuf *)self setPlaybackSessionFilePath:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 40))
  {
    [(_MRCommandOptionsProtobuf *)self setPlaybackSessionRevision:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 38))
  {
    [(_MRCommandOptionsProtobuf *)self setPlaybackSessionMetadata:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 41))
  {
    [(_MRCommandOptionsProtobuf *)self setPlaybackSessionType:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 517))
  {
    self->_trueCompletion = *(fromCopy + 507);
    *&self->_has |= 0x10000000000uLL;
  }

  if (*(fromCopy + 31))
  {
    [(_MRCommandOptionsProtobuf *)self setPlaybackAuthorizationToken:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 23))
  {
    [(_MRCommandOptionsProtobuf *)self setEventNoticeType:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 22))
  {
    [(_MRCommandOptionsProtobuf *)self setEventNoticeIdentifier:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 50))
  {
    [(_MRCommandOptionsProtobuf *)self setSharedPlaybackSessionIdentifier:?];
    fromCopy = v19;
  }

  v11 = *(fromCopy + 64);
  if ((v11 & 4) != 0)
  {
    self->_commandTimeout = *(fromCopy + 3);
    *&self->_has |= 4uLL;
    v11 = *(fromCopy + 64);
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

  self->_assistantTTSEndTimestamp = *(fromCopy + 2);
  *&self->_has |= 2uLL;
  if (*(fromCopy + 64))
  {
LABEL_102:
    self->_assistantCommandSendTimestamp = *(fromCopy + 1);
    *&self->_has |= 1uLL;
  }

LABEL_103:
  if (*(fromCopy + 30))
  {
    [(_MRCommandOptionsProtobuf *)self setOriginatingDeviceUID:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 20))
  {
    [(_MRCommandOptionsProtobuf *)self setDestinationDeviceUIDs:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 18))
  {
    [(_MRCommandOptionsProtobuf *)self setDesiredSessionID:?];
    fromCopy = v19;
  }

  v12 = *(fromCopy + 64);
  if ((v12 & 0x2000000) != 0)
  {
    self->_alwaysIgnoreDuringCall = *(fromCopy + 492);
    *&self->_has |= 0x2000000uLL;
    v12 = *(fromCopy + 64);
  }

  if ((v12 & 0x4000000) != 0)
  {
    self->_alwaysIgnoreDuringSharePlay = *(fromCopy + 493);
    *&self->_has |= 0x4000000uLL;
  }

  if (*(fromCopy + 13))
  {
    [(_MRCommandOptionsProtobuf *)self setCommandSequenceUUID:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 516))
  {
    self->_originatedFromRemoteDevice = *(fromCopy + 499);
    *&self->_has |= 0x100000000uLL;
  }

  if (*(fromCopy + 53))
  {
    [(_MRCommandOptionsProtobuf *)self setSiriTurnIdentifier:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 52))
  {
    [(_MRCommandOptionsProtobuf *)self setSiriSearchDataSetIdentifier:?];
    fromCopy = v19;
  }

  if ((*(fromCopy + 516) & 2) != 0)
  {
    self->_prepareForSetQueueIsProactive = *(fromCopy + 500);
    *&self->_has |= 0x200000000uLL;
  }

  if (*(fromCopy + 42))
  {
    [(_MRCommandOptionsProtobuf *)self setPrepareForSetQueueProactiveReason:?];
    fromCopy = v19;
  }

  if ((*(fromCopy + 513) & 0x20) != 0)
  {
    self->_prepareForSetQueueProactiveReasonType = *(fromCopy + 86);
    *&self->_has |= 0x2000uLL;
  }

  if (*(fromCopy + 9))
  {
    [(_MRCommandOptionsProtobuf *)self setApplicationUserIdentity:?];
    fromCopy = v19;
  }

  systemAppPlaybackQueue = self->_systemAppPlaybackQueue;
  v14 = *(fromCopy + 57);
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

  fromCopy = v19;
LABEL_152:
  v15 = *(fromCopy + 64);
  if ((v15 & 0x40000000000) != 0)
  {
    self->_vocalsControlActive = *(fromCopy + 509);
    *&self->_has |= 0x40000000000uLL;
    v15 = *(fromCopy + 64);
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

  self->_vocalsControlLevel = *(fromCopy + 120);
  *&self->_has |= 0x400000uLL;
  v15 = *(fromCopy + 64);
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
  self->_vocalsControlMinLevel = *(fromCopy + 122);
  *&self->_has |= 0x1000000uLL;
  v15 = *(fromCopy + 64);
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
  self->_vocalsControlMaxLevel = *(fromCopy + 121);
  *&self->_has |= 0x800000uLL;
  if ((*(fromCopy + 64) & 0x80000000000) != 0)
  {
LABEL_157:
    self->_vocalsControlContinuous = *(fromCopy + 510);
    *&self->_has |= 0x80000000000uLL;
  }

LABEL_158:
  if (*(fromCopy + 10))
  {
    [(_MRCommandOptionsProtobuf *)self setAssociatedParticipantIdentifier:?];
    fromCopy = v19;
  }

  v16 = *(fromCopy + 64);
  if ((v16 & 0x40) != 0)
  {
    self->_sleepTimerTime = *(fromCopy + 7);
    *&self->_has |= 0x40uLL;
    v16 = *(fromCopy + 64);
  }

  if ((v16 & 0x200000) != 0)
  {
    self->_sleepTimerStopMode = *(fromCopy + 109);
    *&self->_has |= 0x200000uLL;
  }

  dialogOptions = self->_dialogOptions;
  v18 = *(fromCopy + 21);
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

  fromCopy = v19;
LABEL_175:
  if (*(fromCopy + 11))
  {
    [(_MRCommandOptionsProtobuf *)self setClientPreferredLanguages:?];
    fromCopy = v19;
  }

  if ((*(fromCopy + 512) & 0x20) != 0)
  {
    self->_referencePosition = *(fromCopy + 6);
    *&self->_has |= 0x20uLL;
  }

  if (*(fromCopy + 16))
  {
    [(_MRCommandOptionsProtobuf *)self setDelegateAccountData:?];
    fromCopy = v19;
  }

  if (*(fromCopy + 17))
  {
    [(_MRCommandOptionsProtobuf *)self setDelegateAccountDataType:?];
    fromCopy = v19;
  }

  if ((*(fromCopy + 515) & 0x20) != 0)
  {
    self->_enhanceDialogueActive = *(fromCopy + 496);
    *&self->_has |= 0x20000000uLL;
  }
}

@end