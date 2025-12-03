@interface _MRCommandInfoProtobuf
- (BOOL)isEqual:(id)equal;
- (double)preferredIntervalAtIndex:(unint64_t)index;
- (float)extendedSupportedRateAtIndex:(unint64_t)index;
- (float)supportedRateAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCommand:(id)command;
- (int)StringAsCurrentQueueEndAction:(id)action;
- (int)StringAsDisabledReason:(id)reason;
- (int)StringAsRepeatMode:(id)mode;
- (int)StringAsShuffleMode:(id)mode;
- (int)StringAsSleepTimerStopMode:(id)mode;
- (int)StringAsSupportedQueueEndActions:(id)actions;
- (int)command;
- (int)currentQueueEndAction;
- (int)disabledReason;
- (int)repeatMode;
- (int)shuffleMode;
- (int)sleepTimerStopMode;
- (int)supportedInsertionPositionsAtIndex:(unint64_t)index;
- (int)supportedPlaybackQueueTypesAtIndex:(unint64_t)index;
- (int)supportedQueueEndActionsAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addCurrentPlaybackSessionTypes:(id)types;
- (void)addSupportedCustomQueueIdentifier:(id)identifier;
- (void)addSupportedPlaybackSessionIdentifiers:(id)identifiers;
- (void)addSupportedPlaybackSessionTypes:(id)types;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasActive:(BOOL)active;
- (void)setHasCanScrub:(BOOL)scrub;
- (void)setHasCommand:(BOOL)command;
- (void)setHasCurrentQueueEndAction:(BOOL)action;
- (void)setHasDisabledReason:(BOOL)reason;
- (void)setHasEnabled:(BOOL)enabled;
- (void)setHasMaximumRating:(BOOL)rating;
- (void)setHasMinimumRating:(BOOL)rating;
- (void)setHasNumAvailableSkips:(BOOL)skips;
- (void)setHasPreferredPlaybackRate:(BOOL)rate;
- (void)setHasPresentationStyle:(BOOL)style;
- (void)setHasRepeatMode:(BOOL)mode;
- (void)setHasShuffleMode:(BOOL)mode;
- (void)setHasSkipFrequency:(BOOL)frequency;
- (void)setHasSkipInterval:(BOOL)interval;
- (void)setHasSleepTimerStopMode:(BOOL)mode;
- (void)setHasSleepTimerTime:(BOOL)time;
- (void)setHasSupportsReferencePosition:(BOOL)position;
- (void)setHasTransitionStyle:(BOOL)style;
- (void)setHasUpNextItemCount:(BOOL)count;
- (void)setHasVocalsControlActive:(BOOL)active;
- (void)setHasVocalsControlContinuous:(BOOL)continuous;
- (void)setHasVocalsControlLevel:(BOOL)level;
- (void)setHasVocalsControlMaxLevel:(BOOL)level;
- (void)setHasVocalsControlMinLevel:(BOOL)level;
- (void)writeTo:(id)to;
@end

@implementation _MRCommandInfoProtobuf

- (void)dealloc
{
  PBRepeatedDoubleClear();
  PBRepeatedFloatClear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = _MRCommandInfoProtobuf;
  [(_MRCommandInfoProtobuf *)&v3 dealloc];
}

- (int)command
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_command;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCommand:(BOOL)command
{
  if (command)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (int)StringAsCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([commandCopy isEqualToString:@"Play"])
  {
    v4 = 1;
  }

  else if ([commandCopy isEqualToString:@"Pause"])
  {
    v4 = 2;
  }

  else if ([commandCopy isEqualToString:@"TogglePlayPause"])
  {
    v4 = 3;
  }

  else if ([commandCopy isEqualToString:@"Stop"])
  {
    v4 = 4;
  }

  else if ([commandCopy isEqualToString:@"NextTrack"])
  {
    v4 = 5;
  }

  else if ([commandCopy isEqualToString:@"PreviousTrack"])
  {
    v4 = 6;
  }

  else if ([commandCopy isEqualToString:@"AdvanceShuffleMode"])
  {
    v4 = 7;
  }

  else if ([commandCopy isEqualToString:@"AdvanceRepeatMode"])
  {
    v4 = 8;
  }

  else if ([commandCopy isEqualToString:@"BeginFastForward"])
  {
    v4 = 9;
  }

  else if ([commandCopy isEqualToString:@"EndFastForward"])
  {
    v4 = 10;
  }

  else if ([commandCopy isEqualToString:@"BeginRewind"])
  {
    v4 = 11;
  }

  else if ([commandCopy isEqualToString:@"EndRewind"])
  {
    v4 = 12;
  }

  else if ([commandCopy isEqualToString:@"Rewind15Seconds"])
  {
    v4 = 13;
  }

  else if ([commandCopy isEqualToString:@"FastForward15Seconds"])
  {
    v4 = 14;
  }

  else if ([commandCopy isEqualToString:@"Rewind30Seconds"])
  {
    v4 = 15;
  }

  else if ([commandCopy isEqualToString:@"FastForward30Seconds"])
  {
    v4 = 16;
  }

  else if ([commandCopy isEqualToString:@"SkipForward"])
  {
    v4 = 18;
  }

  else if ([commandCopy isEqualToString:@"SkipBackward"])
  {
    v4 = 19;
  }

  else if ([commandCopy isEqualToString:@"ChangePlaybackRate"])
  {
    v4 = 20;
  }

  else if ([commandCopy isEqualToString:@"RateTrack"])
  {
    v4 = 21;
  }

  else if ([commandCopy isEqualToString:@"LikeTrack"])
  {
    v4 = 22;
  }

  else if ([commandCopy isEqualToString:@"DislikeTrack"])
  {
    v4 = 23;
  }

  else if ([commandCopy isEqualToString:@"BookmarkTrack"])
  {
    v4 = 24;
  }

  else if ([commandCopy isEqualToString:@"SeekToPlaybackPosition"])
  {
    v4 = 45;
  }

  else if ([commandCopy isEqualToString:@"ChangeRepeatMode"])
  {
    v4 = 46;
  }

  else if ([commandCopy isEqualToString:@"ChangeShuffleMode"])
  {
    v4 = 47;
  }

  else if ([commandCopy isEqualToString:@"EnableLanguageOption"])
  {
    v4 = 53;
  }

  else if ([commandCopy isEqualToString:@"DisableLanguageOption"])
  {
    v4 = 54;
  }

  else if ([commandCopy isEqualToString:@"NextChapter"])
  {
    v4 = 25;
  }

  else if ([commandCopy isEqualToString:@"PreviousChapter"])
  {
    v4 = 26;
  }

  else if ([commandCopy isEqualToString:@"NextAlbum"])
  {
    v4 = 27;
  }

  else if ([commandCopy isEqualToString:@"PreviousAlbum"])
  {
    v4 = 28;
  }

  else if ([commandCopy isEqualToString:@"NextPlaylist"])
  {
    v4 = 29;
  }

  else if ([commandCopy isEqualToString:@"PreviousPlaylist"])
  {
    v4 = 30;
  }

  else if ([commandCopy isEqualToString:@"BanTrack"])
  {
    v4 = 31;
  }

  else if ([commandCopy isEqualToString:@"AddTrackToWishList"])
  {
    v4 = 32;
  }

  else if ([commandCopy isEqualToString:@"RemoveTrackFromWishList"])
  {
    v4 = 33;
  }

  else if ([commandCopy isEqualToString:@"NextInContext"])
  {
    v4 = 34;
  }

  else if ([commandCopy isEqualToString:@"PreviousInContext"])
  {
    v4 = 35;
  }

  else if ([commandCopy isEqualToString:@"ResetPlaybackTimeout"])
  {
    v4 = 41;
  }

  else if ([commandCopy isEqualToString:@"SetPlaybackQueue"])
  {
    v4 = 48;
  }

  else if ([commandCopy isEqualToString:@"AddNowPlayingItemToLibrary"])
  {
    v4 = 49;
  }

  else if ([commandCopy isEqualToString:@"CreateRadioStation"])
  {
    v4 = 50;
  }

  else if ([commandCopy isEqualToString:@"AddItemToLibrary"])
  {
    v4 = 51;
  }

  else if ([commandCopy isEqualToString:@"InsertIntoPlaybackQueue"])
  {
    v4 = 52;
  }

  else if ([commandCopy isEqualToString:@"ReorderPlaybackQueue"])
  {
    v4 = 55;
  }

  else if ([commandCopy isEqualToString:@"RemoveFromPlaybackQueue"])
  {
    v4 = 56;
  }

  else if ([commandCopy isEqualToString:@"PlayItemInPlaybackQueue"])
  {
    v4 = 57;
  }

  else if ([commandCopy isEqualToString:@"PrepareForSetQueue"])
  {
    v4 = 58;
  }

  else if ([commandCopy isEqualToString:@"SetPlaybackSession"])
  {
    v4 = 59;
  }

  else if ([commandCopy isEqualToString:@"PreloadPlaybackSession"])
  {
    v4 = 60;
  }

  else if ([commandCopy isEqualToString:@"SetPriorityForPlaybackSession"])
  {
    v4 = 61;
  }

  else if ([commandCopy isEqualToString:@"DiscardPlaybackSession"])
  {
    v4 = 62;
  }

  else if ([commandCopy isEqualToString:@"Reshuffle"])
  {
    v4 = 63;
  }

  else if ([commandCopy isEqualToString:@"LeaveSharedPlaybackSession"])
  {
    v4 = 64;
  }

  else if ([commandCopy isEqualToString:@"PostEventNotice"])
  {
    v4 = 65;
  }

  else if ([commandCopy isEqualToString:@"SetSleepTimer"])
  {
    v4 = 124;
  }

  else if ([commandCopy isEqualToString:@"ChangeQueueEndAction"])
  {
    v4 = 135;
  }

  else if ([commandCopy isEqualToString:@"VocalsControl"])
  {
    v4 = 142;
  }

  else if ([commandCopy isEqualToString:@"PrepareVocalsControl"])
  {
    v4 = 143;
  }

  else if ([commandCopy isEqualToString:@"ClearUpNextQueue"])
  {
    v4 = 144;
  }

  else if ([commandCopy isEqualToString:@"PerformDialogAction"])
  {
    v4 = 145;
  }

  else if ([commandCopy isEqualToString:@"DelegateAccount"])
  {
    v4 = 146;
  }

  else if ([commandCopy isEqualToString:@"EnhanceDialogue"])
  {
    v4 = 147;
  }

  else if ([commandCopy isEqualToString:@"ToggleTransitions"])
  {
    v4 = 149;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasActive:(BOOL)active
{
  if (active)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (double)preferredIntervalAtIndex:(unint64_t)index
{
  p_preferredIntervals = &self->_preferredIntervals;
  count = self->_preferredIntervals.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_preferredIntervals->list[index];
}

- (void)setHasMinimumRating:(BOOL)rating
{
  if (rating)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasMaximumRating:(BOOL)rating
{
  if (rating)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (float)supportedRateAtIndex:(unint64_t)index
{
  p_supportedRates = &self->_supportedRates;
  count = self->_supportedRates.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_supportedRates->list[index];
}

- (int)repeatMode
{
  if ((*(&self->_has + 1) & 8) != 0)
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
  if (mode)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
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
  if ((*(&self->_has + 1) & 0x10) != 0)
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
  if (mode)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
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

- (void)setHasPresentationStyle:(BOOL)style
{
  if (style)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasSkipInterval:(BOOL)interval
{
  if (interval)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasNumAvailableSkips:(BOOL)skips
{
  if (skips)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasSkipFrequency:(BOOL)frequency
{
  if (frequency)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasCanScrub:(BOOL)scrub
{
  if (scrub)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (int)supportedPlaybackQueueTypesAtIndex:(unint64_t)index
{
  p_supportedPlaybackQueueTypes = &self->_supportedPlaybackQueueTypes;
  count = self->_supportedPlaybackQueueTypes.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_supportedPlaybackQueueTypes->list[index];
}

- (void)addSupportedCustomQueueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  supportedCustomQueueIdentifiers = self->_supportedCustomQueueIdentifiers;
  v8 = identifierCopy;
  if (!supportedCustomQueueIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_supportedCustomQueueIdentifiers;
    self->_supportedCustomQueueIdentifiers = v6;

    identifierCopy = v8;
    supportedCustomQueueIdentifiers = self->_supportedCustomQueueIdentifiers;
  }

  [(NSMutableArray *)supportedCustomQueueIdentifiers addObject:identifierCopy];
}

- (int)supportedInsertionPositionsAtIndex:(unint64_t)index
{
  p_supportedInsertionPositions = &self->_supportedInsertionPositions;
  count = self->_supportedInsertionPositions.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_supportedInsertionPositions->list[index];
}

- (void)setHasUpNextItemCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasPreferredPlaybackRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)addSupportedPlaybackSessionTypes:(id)types
{
  typesCopy = types;
  supportedPlaybackSessionTypes = self->_supportedPlaybackSessionTypes;
  v8 = typesCopy;
  if (!supportedPlaybackSessionTypes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_supportedPlaybackSessionTypes;
    self->_supportedPlaybackSessionTypes = v6;

    typesCopy = v8;
    supportedPlaybackSessionTypes = self->_supportedPlaybackSessionTypes;
  }

  [(NSMutableArray *)supportedPlaybackSessionTypes addObject:typesCopy];
}

- (void)addCurrentPlaybackSessionTypes:(id)types
{
  typesCopy = types;
  currentPlaybackSessionTypes = self->_currentPlaybackSessionTypes;
  v8 = typesCopy;
  if (!currentPlaybackSessionTypes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_currentPlaybackSessionTypes;
    self->_currentPlaybackSessionTypes = v6;

    typesCopy = v8;
    currentPlaybackSessionTypes = self->_currentPlaybackSessionTypes;
  }

  [(NSMutableArray *)currentPlaybackSessionTypes addObject:typesCopy];
}

- (int)currentQueueEndAction
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_currentQueueEndAction;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCurrentQueueEndAction:(BOOL)action
{
  if (action)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (int)StringAsCurrentQueueEndAction:(id)action
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

- (int)supportedQueueEndActionsAtIndex:(unint64_t)index
{
  p_supportedQueueEndActions = &self->_supportedQueueEndActions;
  count = self->_supportedQueueEndActions.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_supportedQueueEndActions->list[index];
}

- (int)StringAsSupportedQueueEndActions:(id)actions
{
  actionsCopy = actions;
  if ([actionsCopy isEqualToString:@"Clear"])
  {
    v4 = 0;
  }

  else if ([actionsCopy isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([actionsCopy isEqualToString:@"Reset"])
  {
    v4 = 2;
  }

  else if ([actionsCopy isEqualToString:@"AutoPlay"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)disabledReason
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_disabledReason;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDisabledReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (int)StringAsDisabledReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([reasonCopy isEqualToString:@"AdPlayback"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"SkipLimitReached"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"InvalidAdRanges"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addSupportedPlaybackSessionIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  supportedPlaybackSessionIdentifiers = self->_supportedPlaybackSessionIdentifiers;
  v8 = identifiersCopy;
  if (!supportedPlaybackSessionIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_supportedPlaybackSessionIdentifiers;
    self->_supportedPlaybackSessionIdentifiers = v6;

    identifiersCopy = v8;
    supportedPlaybackSessionIdentifiers = self->_supportedPlaybackSessionIdentifiers;
  }

  [(NSMutableArray *)supportedPlaybackSessionIdentifiers addObject:identifiersCopy];
}

- (void)setHasVocalsControlActive:(BOOL)active
{
  if (active)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasVocalsControlLevel:(BOOL)level
{
  if (level)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasVocalsControlMaxLevel:(BOOL)level
{
  if (level)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasVocalsControlMinLevel:(BOOL)level
{
  if (level)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasVocalsControlContinuous:(BOOL)continuous
{
  if (continuous)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasSleepTimerTime:(BOOL)time
{
  if (time)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (int)sleepTimerStopMode
{
  if ((*(&self->_has + 1) & 0x80) != 0)
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
  if (mode)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
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

- (void)setHasSupportsReferencePosition:(BOOL)position
{
  if (position)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (float)extendedSupportedRateAtIndex:(unint64_t)index
{
  p_extendedSupportedRates = &self->_extendedSupportedRates;
  count = self->_extendedSupportedRates.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_extendedSupportedRates->list[index];
}

- (void)setHasTransitionStyle:(BOOL)style
{
  if (style)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRCommandInfoProtobuf;
  v4 = [(_MRCommandInfoProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRCommandInfoProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v81 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    v5 = @"Unknown";
    switch(self->_command)
    {
      case 0:
        break;
      case 1:
        v5 = @"Play";
        break;
      case 2:
        v5 = @"Pause";
        break;
      case 3:
        v5 = @"TogglePlayPause";
        break;
      case 4:
        v5 = @"Stop";
        break;
      case 5:
        v5 = @"NextTrack";
        break;
      case 6:
        v5 = @"PreviousTrack";
        break;
      case 7:
        v5 = @"AdvanceShuffleMode";
        break;
      case 8:
        v5 = @"AdvanceRepeatMode";
        break;
      case 9:
        v5 = @"BeginFastForward";
        break;
      case 0xA:
        v5 = @"EndFastForward";
        break;
      case 0xB:
        v5 = @"BeginRewind";
        break;
      case 0xC:
        v5 = @"EndRewind";
        break;
      case 0xD:
        v5 = @"Rewind15Seconds";
        break;
      case 0xE:
        v5 = @"FastForward15Seconds";
        break;
      case 0xF:
        v5 = @"Rewind30Seconds";
        break;
      case 0x10:
        v5 = @"FastForward30Seconds";
        break;
      case 0x12:
        v5 = @"SkipForward";
        break;
      case 0x13:
        v5 = @"SkipBackward";
        break;
      case 0x14:
        v5 = @"ChangePlaybackRate";
        break;
      case 0x15:
        v5 = @"RateTrack";
        break;
      case 0x16:
        v5 = @"LikeTrack";
        break;
      case 0x17:
        v5 = @"DislikeTrack";
        break;
      case 0x18:
        v5 = @"BookmarkTrack";
        break;
      case 0x19:
        v5 = @"NextChapter";
        break;
      case 0x1A:
        v5 = @"PreviousChapter";
        break;
      case 0x1B:
        v5 = @"NextAlbum";
        break;
      case 0x1C:
        v5 = @"PreviousAlbum";
        break;
      case 0x1D:
        v5 = @"NextPlaylist";
        break;
      case 0x1E:
        v5 = @"PreviousPlaylist";
        break;
      case 0x1F:
        v5 = @"BanTrack";
        break;
      case 0x20:
        v5 = @"AddTrackToWishList";
        break;
      case 0x21:
        v5 = @"RemoveTrackFromWishList";
        break;
      case 0x22:
        v5 = @"NextInContext";
        break;
      case 0x23:
        v5 = @"PreviousInContext";
        break;
      case 0x29:
        v5 = @"ResetPlaybackTimeout";
        break;
      case 0x2D:
        v5 = @"SeekToPlaybackPosition";
        break;
      case 0x2E:
        v5 = @"ChangeRepeatMode";
        break;
      case 0x2F:
        v5 = @"ChangeShuffleMode";
        break;
      case 0x30:
        v5 = @"SetPlaybackQueue";
        break;
      case 0x31:
        v5 = @"AddNowPlayingItemToLibrary";
        break;
      case 0x32:
        v5 = @"CreateRadioStation";
        break;
      case 0x33:
        v5 = @"AddItemToLibrary";
        break;
      case 0x34:
        v5 = @"InsertIntoPlaybackQueue";
        break;
      case 0x35:
        v5 = @"EnableLanguageOption";
        break;
      case 0x36:
        v5 = @"DisableLanguageOption";
        break;
      case 0x37:
        v5 = @"ReorderPlaybackQueue";
        break;
      case 0x38:
        v5 = @"RemoveFromPlaybackQueue";
        break;
      case 0x39:
        v5 = @"PlayItemInPlaybackQueue";
        break;
      case 0x3A:
        v5 = @"PrepareForSetQueue";
        break;
      case 0x3B:
        v5 = @"SetPlaybackSession";
        break;
      case 0x3C:
        v5 = @"PreloadPlaybackSession";
        break;
      case 0x3D:
        v5 = @"SetPriorityForPlaybackSession";
        break;
      case 0x3E:
        v5 = @"DiscardPlaybackSession";
        break;
      case 0x3F:
        v5 = @"Reshuffle";
        break;
      case 0x40:
        v5 = @"LeaveSharedPlaybackSession";
        break;
      case 0x41:
        v5 = @"PostEventNotice";
        break;
      case 0x7C:
        v5 = @"SetSleepTimer";
        break;
      case 0x87:
        v5 = @"ChangeQueueEndAction";
        break;
      case 0x8E:
        v5 = @"VocalsControl";
        break;
      case 0x8F:
        v5 = @"PrepareVocalsControl";
        break;
      case 0x90:
        v5 = @"ClearUpNextQueue";
        break;
      case 0x91:
        v5 = @"PerformDialogAction";
        break;
      case 0x92:
        v5 = @"DelegateAccount";
        break;
      case 0x93:
        v5 = @"EnhanceDialogue";
        break;
      case 0x95:
        v5 = @"ToggleTransitions";
        break;
      default:
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_command];
        break;
    }

    [dictionary setObject:v5 forKey:@"command"];

    has = self->_has;
  }

  if ((*&has & 0x400000) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_enabled];
    [dictionary setObject:v6 forKey:@"enabled"];

    has = self->_has;
  }

  if ((*&has & 0x200000) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_active];
    [dictionary setObject:v7 forKey:@"active"];
  }

  v8 = PBRepeatedDoubleNSArray();
  [dictionary setObject:v8 forKey:@"preferredInterval"];

  localizedTitle = self->_localizedTitle;
  if (localizedTitle)
  {
    [dictionary setObject:localizedTitle forKey:@"localizedTitle"];
  }

  localizedShortTitle = self->_localizedShortTitle;
  if (localizedShortTitle)
  {
    [dictionary setObject:localizedShortTitle forKey:@"localizedShortTitle"];
  }

  v12 = self->_has;
  if ((*&v12 & 0x80) != 0)
  {
    *&v9 = self->_minimumRating;
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    [dictionary setObject:v13 forKey:@"minimumRating"];

    v12 = self->_has;
  }

  if ((*&v12 & 0x40) != 0)
  {
    *&v9 = self->_maximumRating;
    v14 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    [dictionary setObject:v14 forKey:@"maximumRating"];
  }

  v15 = PBRepeatedFloatNSArray();
  [dictionary setObject:v15 forKey:@"supportedRate"];

  v16 = self->_has;
  if ((*&v16 & 0x800) != 0)
  {
    repeatMode = self->_repeatMode;
    if (repeatMode >= 4)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_repeatMode];
    }

    else
    {
      v31 = off_1E76A0AA8[repeatMode];
    }

    [dictionary setObject:v31 forKey:@"repeatMode"];

    v16 = self->_has;
    if ((*&v16 & 0x1000) == 0)
    {
LABEL_84:
      if ((*&v16 & 0x400) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_167;
    }
  }

  else if ((*&v16 & 0x1000) == 0)
  {
    goto LABEL_84;
  }

  shuffleMode = self->_shuffleMode;
  if (shuffleMode >= 4)
  {
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_shuffleMode];
  }

  else
  {
    v40 = off_1E76A0AC8[shuffleMode];
  }

  [dictionary setObject:v40 forKey:@"shuffleMode"];

  v16 = self->_has;
  if ((*&v16 & 0x400) == 0)
  {
LABEL_85:
    if ((*&v16 & 0x4000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_168;
  }

LABEL_167:
  v72 = [MEMORY[0x1E696AD98] numberWithInt:self->_presentationStyle];
  [dictionary setObject:v72 forKey:@"presentationStyle"];

  v16 = self->_has;
  if ((*&v16 & 0x4000) == 0)
  {
LABEL_86:
    if ((*&v16 & 0x100) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_169;
  }

LABEL_168:
  v73 = [MEMORY[0x1E696AD98] numberWithInt:self->_skipInterval];
  [dictionary setObject:v73 forKey:@"skipInterval"];

  v16 = self->_has;
  if ((*&v16 & 0x100) == 0)
  {
LABEL_87:
    if ((*&v16 & 0x2000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_170;
  }

LABEL_169:
  v74 = [MEMORY[0x1E696AD98] numberWithInt:self->_numAvailableSkips];
  [dictionary setObject:v74 forKey:@"numAvailableSkips"];

  v16 = self->_has;
  if ((*&v16 & 0x2000) == 0)
  {
LABEL_88:
    if ((*&v16 & 4) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

LABEL_170:
  v75 = [MEMORY[0x1E696AD98] numberWithInt:self->_skipFrequency];
  [dictionary setObject:v75 forKey:@"skipFrequency"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_89:
    v17 = [MEMORY[0x1E696AD98] numberWithInt:self->_canScrub];
    [dictionary setObject:v17 forKey:@"canScrub"];
  }

LABEL_90:
  v18 = PBRepeatedInt32NSArray();
  [dictionary setObject:v18 forKey:@"supportedPlaybackQueueTypes"];

  supportedCustomQueueIdentifiers = self->_supportedCustomQueueIdentifiers;
  if (supportedCustomQueueIdentifiers)
  {
    [dictionary setObject:supportedCustomQueueIdentifiers forKey:@"supportedCustomQueueIdentifier"];
  }

  v20 = PBRepeatedInt32NSArray();
  [dictionary setObject:v20 forKey:@"supportedInsertionPositions"];

  v22 = self->_has;
  if ((*&v22 & 0x20000) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithInt:self->_upNextItemCount];
    [dictionary setObject:v23 forKey:@"upNextItemCount"];

    v22 = self->_has;
  }

  if ((*&v22 & 0x200) != 0)
  {
    *&v21 = self->_preferredPlaybackRate;
    v24 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
    [dictionary setObject:v24 forKey:@"preferredPlaybackRate"];
  }

  supportedPlaybackSessionTypes = self->_supportedPlaybackSessionTypes;
  if (supportedPlaybackSessionTypes)
  {
    [dictionary setObject:supportedPlaybackSessionTypes forKey:@"supportedPlaybackSessionTypes"];
  }

  currentPlaybackSessionTypes = self->_currentPlaybackSessionTypes;
  if (currentPlaybackSessionTypes)
  {
    [dictionary setObject:currentPlaybackSessionTypes forKey:@"currentPlaybackSessionTypes"];
  }

  playbackSessionIdentifier = self->_playbackSessionIdentifier;
  if (playbackSessionIdentifier)
  {
    [dictionary setObject:playbackSessionIdentifier forKey:@"playbackSessionIdentifier"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    currentQueueEndAction = self->_currentQueueEndAction;
    if (currentQueueEndAction >= 4)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_currentQueueEndAction];
    }

    else
    {
      v29 = off_1E76A0AE8[currentQueueEndAction];
    }

    [dictionary setObject:v29 forKey:@"currentQueueEndAction"];
  }

  p_supportedQueueEndActions = &self->_supportedQueueEndActions;
  if (self->_supportedQueueEndActions.count)
  {
    v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    if (self->_supportedQueueEndActions.count)
    {
      v34 = 0;
      do
      {
        v35 = p_supportedQueueEndActions->list[v34];
        if (v35 >= 4)
        {
          v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", p_supportedQueueEndActions->list[v34]];
        }

        else
        {
          v36 = off_1E76A0AE8[v35];
        }

        [v33 addObject:v36];

        ++v34;
      }

      while (v34 < self->_supportedQueueEndActions.count);
    }

    [dictionary setObject:v33 forKey:@"supportedQueueEndActions"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    disabledReason = self->_disabledReason;
    if (disabledReason >= 4)
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_disabledReason];
    }

    else
    {
      v38 = off_1E76A0B08[disabledReason];
    }

    [dictionary setObject:v38 forKey:@"disabledReason"];
  }

  if ([(NSMutableArray *)self->_supportedPlaybackSessionIdentifiers count])
  {
    v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_supportedPlaybackSessionIdentifiers, "count")}];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v43 = self->_supportedPlaybackSessionIdentifiers;
    v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v76 objects:v80 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v77;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v77 != v46)
          {
            objc_enumerationMutation(v43);
          }

          dictionaryRepresentation = [*(*(&v76 + 1) + 8 * i) dictionaryRepresentation];
          [v42 addObject:dictionaryRepresentation];
        }

        v45 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v76 objects:v80 count:16];
      }

      while (v45);
    }

    [dictionary setObject:v42 forKey:@"supportedPlaybackSessionIdentifiers"];
  }

  proactiveCommandOptions = self->_proactiveCommandOptions;
  if (proactiveCommandOptions)
  {
    dictionaryRepresentation2 = [(_MRCommandOptionsProtobuf *)proactiveCommandOptions dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"proactiveCommandOptions"];
  }

  v51 = self->_has;
  if ((*&v51 & 0x1000000) != 0)
  {
    v64 = [MEMORY[0x1E696AD98] numberWithBool:self->_vocalsControlActive];
    [dictionary setObject:v64 forKey:@"vocalsControlActive"];

    v51 = self->_has;
    if ((*&v51 & 0x40000) == 0)
    {
LABEL_139:
      if ((*&v51 & 0x80000) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_159;
    }
  }

  else if ((*&v51 & 0x40000) == 0)
  {
    goto LABEL_139;
  }

  *&v41 = self->_vocalsControlLevel;
  v65 = [MEMORY[0x1E696AD98] numberWithFloat:v41];
  [dictionary setObject:v65 forKey:@"vocalsControlLevel"];

  v51 = self->_has;
  if ((*&v51 & 0x80000) == 0)
  {
LABEL_140:
    if ((*&v51 & 0x100000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_160;
  }

LABEL_159:
  *&v41 = self->_vocalsControlMaxLevel;
  v66 = [MEMORY[0x1E696AD98] numberWithFloat:v41];
  [dictionary setObject:v66 forKey:@"vocalsControlMaxLevel"];

  v51 = self->_has;
  if ((*&v51 & 0x100000) == 0)
  {
LABEL_141:
    if ((*&v51 & 0x2000000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_161;
  }

LABEL_160:
  *&v41 = self->_vocalsControlMinLevel;
  v67 = [MEMORY[0x1E696AD98] numberWithFloat:v41];
  [dictionary setObject:v67 forKey:@"vocalsControlMinLevel"];

  v51 = self->_has;
  if ((*&v51 & 0x2000000) == 0)
  {
LABEL_142:
    if ((*&v51 & 2) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_162;
  }

LABEL_161:
  v68 = [MEMORY[0x1E696AD98] numberWithBool:self->_vocalsControlContinuous];
  [dictionary setObject:v68 forKey:@"vocalsControlContinuous"];

  v51 = self->_has;
  if ((*&v51 & 2) == 0)
  {
LABEL_143:
    if ((*&v51 & 0x8000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_163;
  }

LABEL_162:
  v69 = [MEMORY[0x1E696AD98] numberWithDouble:self->_sleepTimerTime];
  [dictionary setObject:v69 forKey:@"sleepTimerTime"];

  v51 = self->_has;
  if ((*&v51 & 0x8000) == 0)
  {
LABEL_144:
    if ((*&v51 & 1) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_145;
  }

LABEL_163:
  sleepTimerStopMode = self->_sleepTimerStopMode;
  if (sleepTimerStopMode >= 4)
  {
    v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_sleepTimerStopMode];
  }

  else
  {
    v71 = off_1E76A0B28[sleepTimerStopMode];
  }

  [dictionary setObject:v71 forKey:@"sleepTimerStopMode"];

  if (*&self->_has)
  {
LABEL_145:
    v52 = [MEMORY[0x1E696AD98] numberWithDouble:self->_sleepTimerFireDate];
    [dictionary setObject:v52 forKey:@"sleepTimerFireDate"];
  }

LABEL_146:
  dialogOptions = self->_dialogOptions;
  if (dialogOptions)
  {
    dictionaryRepresentation3 = [(_MRDictionaryProtobuf *)dialogOptions dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"dialogOptions"];
  }

  lastSectionContentItemID = self->_lastSectionContentItemID;
  if (lastSectionContentItemID)
  {
    [dictionary setObject:lastSectionContentItemID forKey:@"lastSectionContentItemID"];
  }

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    v56 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsReferencePosition];
    [dictionary setObject:v56 forKey:@"supportsReferencePosition"];
  }

  playbackSessionRequirements = self->_playbackSessionRequirements;
  if (playbackSessionRequirements)
  {
    dictionaryRepresentation4 = [(_MRDictionaryProtobuf *)playbackSessionRequirements dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"playbackSessionRequirements"];
  }

  v59 = PBRepeatedFloatNSArray();
  [dictionary setObject:v59 forKey:@"extendedSupportedRate"];

  if (*(&self->_has + 2))
  {
    v60 = [MEMORY[0x1E696AD98] numberWithInt:self->_transitionStyle];
    [dictionary setObject:v60 forKey:@"transitionStyle"];
  }

  v61 = dictionary;

  v62 = *MEMORY[0x1E69E9840];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v93 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    command = self->_command;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((*&has & 0x400000) == 0)
    {
LABEL_3:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&has & 0x400000) == 0)
  {
    goto LABEL_3;
  }

  enabled = self->_enabled;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_4:
    active = self->_active;
    PBDataWriterWriteBOOLField();
  }

LABEL_5:
  if (self->_preferredIntervals.count)
  {
    v7 = 0;
    do
    {
      v8 = self->_preferredIntervals.list[v7];
      PBDataWriterWriteDoubleField();
      ++v7;
    }

    while (v7 < self->_preferredIntervals.count);
  }

  if (self->_localizedTitle)
  {
    PBDataWriterWriteStringField();
  }

  v9 = self->_has;
  if ((*&v9 & 0x80) != 0)
  {
    minimumRating = self->_minimumRating;
    PBDataWriterWriteFloatField();
    v9 = self->_has;
  }

  if ((*&v9 & 0x40) != 0)
  {
    maximumRating = self->_maximumRating;
    PBDataWriterWriteFloatField();
  }

  if (self->_supportedRates.count)
  {
    v12 = 0;
    do
    {
      v13 = self->_supportedRates.list[v12];
      PBDataWriterWriteFloatField();
      ++v12;
    }

    while (v12 < self->_supportedRates.count);
  }

  if (self->_localizedShortTitle)
  {
    PBDataWriterWriteStringField();
  }

  v14 = self->_has;
  if ((*&v14 & 0x800) != 0)
  {
    repeatMode = self->_repeatMode;
    PBDataWriterWriteInt32Field();
    v14 = self->_has;
    if ((*&v14 & 0x1000) == 0)
    {
LABEL_21:
      if ((*&v14 & 0x400) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_104;
    }
  }

  else if ((*&v14 & 0x1000) == 0)
  {
    goto LABEL_21;
  }

  shuffleMode = self->_shuffleMode;
  PBDataWriterWriteInt32Field();
  v14 = self->_has;
  if ((*&v14 & 0x400) == 0)
  {
LABEL_22:
    if ((*&v14 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_105;
  }

LABEL_104:
  presentationStyle = self->_presentationStyle;
  PBDataWriterWriteInt32Field();
  v14 = self->_has;
  if ((*&v14 & 0x4000) == 0)
  {
LABEL_23:
    if ((*&v14 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_106;
  }

LABEL_105:
  skipInterval = self->_skipInterval;
  PBDataWriterWriteInt32Field();
  v14 = self->_has;
  if ((*&v14 & 0x100) == 0)
  {
LABEL_24:
    if ((*&v14 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_107;
  }

LABEL_106:
  numAvailableSkips = self->_numAvailableSkips;
  PBDataWriterWriteInt32Field();
  v14 = self->_has;
  if ((*&v14 & 0x2000) == 0)
  {
LABEL_25:
    if ((*&v14 & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_107:
  skipFrequency = self->_skipFrequency;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_26:
    canScrub = self->_canScrub;
    PBDataWriterWriteInt32Field();
  }

LABEL_27:
  if (self->_supportedPlaybackQueueTypes.count)
  {
    v16 = 0;
    do
    {
      v17 = self->_supportedPlaybackQueueTypes.list[v16];
      PBDataWriterWriteInt32Field();
      ++v16;
    }

    while (v16 < self->_supportedPlaybackQueueTypes.count);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v18 = self->_supportedCustomQueueIdentifiers;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v85 objects:v92 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v86;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v86 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v85 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v85 objects:v92 count:16];
    }

    while (v20);
  }

  if (self->_supportedInsertionPositions.count)
  {
    v24 = 0;
    do
    {
      v25 = self->_supportedInsertionPositions.list[v24];
      PBDataWriterWriteInt32Field();
      ++v24;
    }

    while (v24 < self->_supportedInsertionPositions.count);
  }

  v26 = self->_has;
  if ((*&v26 & 0x20000) != 0)
  {
    upNextItemCount = self->_upNextItemCount;
    PBDataWriterWriteInt32Field();
    v26 = self->_has;
  }

  if ((*&v26 & 0x200) != 0)
  {
    preferredPlaybackRate = self->_preferredPlaybackRate;
    PBDataWriterWriteFloatField();
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v29 = self->_supportedPlaybackSessionTypes;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v81 objects:v91 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v82;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v82 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v81 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v81 objects:v91 count:16];
    }

    while (v31);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v35 = self->_currentPlaybackSessionTypes;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v77 objects:v90 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v78;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v78 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v77 + 1) + 8 * k);
        PBDataWriterWriteStringField();
      }

      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v77 objects:v90 count:16];
    }

    while (v37);
  }

  if (self->_playbackSessionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    currentQueueEndAction = self->_currentQueueEndAction;
    PBDataWriterWriteInt32Field();
  }

  if (self->_supportedQueueEndActions.count)
  {
    v42 = 0;
    do
    {
      v43 = self->_supportedQueueEndActions.list[v42];
      PBDataWriterWriteInt32Field();
      ++v42;
    }

    while (v42 < self->_supportedQueueEndActions.count);
  }

  if ((*&self->_has & 0x20) != 0)
  {
    disabledReason = self->_disabledReason;
    PBDataWriterWriteInt32Field();
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v45 = self->_supportedPlaybackSessionIdentifiers;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v73 objects:v89 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v74;
    do
    {
      for (m = 0; m != v47; ++m)
      {
        if (*v74 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v73 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v73 objects:v89 count:16];
    }

    while (v47);
  }

  if (self->_proactiveCommandOptions)
  {
    PBDataWriterWriteSubmessage();
  }

  v51 = self->_has;
  if ((*&v51 & 0x1000000) != 0)
  {
    vocalsControlActive = self->_vocalsControlActive;
    PBDataWriterWriteBOOLField();
    v51 = self->_has;
    if ((*&v51 & 0x40000) == 0)
    {
LABEL_78:
      if ((*&v51 & 0x80000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_111;
    }
  }

  else if ((*&v51 & 0x40000) == 0)
  {
    goto LABEL_78;
  }

  vocalsControlLevel = self->_vocalsControlLevel;
  PBDataWriterWriteFloatField();
  v51 = self->_has;
  if ((*&v51 & 0x80000) == 0)
  {
LABEL_79:
    if ((*&v51 & 0x100000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_112;
  }

LABEL_111:
  vocalsControlMaxLevel = self->_vocalsControlMaxLevel;
  PBDataWriterWriteFloatField();
  v51 = self->_has;
  if ((*&v51 & 0x100000) == 0)
  {
LABEL_80:
    if ((*&v51 & 0x2000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_113;
  }

LABEL_112:
  vocalsControlMinLevel = self->_vocalsControlMinLevel;
  PBDataWriterWriteFloatField();
  v51 = self->_has;
  if ((*&v51 & 0x2000000) == 0)
  {
LABEL_81:
    if ((*&v51 & 2) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_114;
  }

LABEL_113:
  vocalsControlContinuous = self->_vocalsControlContinuous;
  PBDataWriterWriteBOOLField();
  v51 = self->_has;
  if ((*&v51 & 2) == 0)
  {
LABEL_82:
    if ((*&v51 & 0x8000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_115;
  }

LABEL_114:
  sleepTimerTime = self->_sleepTimerTime;
  PBDataWriterWriteDoubleField();
  v51 = self->_has;
  if ((*&v51 & 0x8000) == 0)
  {
LABEL_83:
    if ((*&v51 & 1) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

LABEL_115:
  sleepTimerStopMode = self->_sleepTimerStopMode;
  PBDataWriterWriteInt32Field();
  if (*&self->_has)
  {
LABEL_84:
    sleepTimerFireDate = self->_sleepTimerFireDate;
    PBDataWriterWriteDoubleField();
  }

LABEL_85:
  if (self->_dialogOptions)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_lastSectionContentItemID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    supportsReferencePosition = self->_supportsReferencePosition;
    PBDataWriterWriteBOOLField();
  }

  if (self->_playbackSessionRequirements)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_extendedSupportedRates.count)
  {
    v54 = 0;
    do
    {
      v55 = self->_extendedSupportedRates.list[v54];
      PBDataWriterWriteFloatField();
      ++v54;
    }

    while (v54 < self->_extendedSupportedRates.count);
  }

  if (*(&self->_has + 2))
  {
    transitionStyle = self->_transitionStyle;
    PBDataWriterWriteInt32Field();
  }

  v57 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_3;
    }

LABEL_96:
    toCopy[349] = self->_enabled;
    *(toCopy + 89) |= 0x400000u;
    if ((*&self->_has & 0x200000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(toCopy + 43) = self->_command;
  *(toCopy + 89) |= 8u;
  has = self->_has;
  if ((*&has & 0x400000) != 0)
  {
    goto LABEL_96;
  }

LABEL_3:
  if ((*&has & 0x200000) != 0)
  {
LABEL_4:
    toCopy[348] = self->_active;
    *(toCopy + 89) |= 0x200000u;
  }

LABEL_5:
  v45 = toCopy;
  if ([(_MRCommandInfoProtobuf *)self preferredIntervalsCount])
  {
    [v45 clearPreferredIntervals];
    preferredIntervalsCount = [(_MRCommandInfoProtobuf *)self preferredIntervalsCount];
    if (preferredIntervalsCount)
    {
      v7 = preferredIntervalsCount;
      for (i = 0; i != v7; ++i)
      {
        [(_MRCommandInfoProtobuf *)self preferredIntervalAtIndex:i];
        [v45 addPreferredInterval:?];
      }
    }
  }

  if (self->_localizedTitle)
  {
    [v45 setLocalizedTitle:?];
  }

  v9 = self->_has;
  if ((*&v9 & 0x80) != 0)
  {
    *(v45 + 59) = LODWORD(self->_minimumRating);
    *(v45 + 89) |= 0x80u;
    v9 = self->_has;
  }

  if ((*&v9 & 0x40) != 0)
  {
    *(v45 + 58) = LODWORD(self->_maximumRating);
    *(v45 + 89) |= 0x40u;
  }

  if ([(_MRCommandInfoProtobuf *)self supportedRatesCount])
  {
    [v45 clearSupportedRates];
    supportedRatesCount = [(_MRCommandInfoProtobuf *)self supportedRatesCount];
    if (supportedRatesCount)
    {
      v11 = supportedRatesCount;
      for (j = 0; j != v11; ++j)
      {
        [(_MRCommandInfoProtobuf *)self supportedRateAtIndex:j];
        [v45 addSupportedRate:?];
      }
    }
  }

  if (self->_localizedShortTitle)
  {
    [v45 setLocalizedShortTitle:?];
  }

  v13 = self->_has;
  if ((*&v13 & 0x800) != 0)
  {
    *(v45 + 70) = self->_repeatMode;
    *(v45 + 89) |= 0x800u;
    v13 = self->_has;
    if ((*&v13 & 0x1000) == 0)
    {
LABEL_23:
      if ((*&v13 & 0x400) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_100;
    }
  }

  else if ((*&v13 & 0x1000) == 0)
  {
    goto LABEL_23;
  }

  *(v45 + 71) = self->_shuffleMode;
  *(v45 + 89) |= 0x1000u;
  v13 = self->_has;
  if ((*&v13 & 0x400) == 0)
  {
LABEL_24:
    if ((*&v13 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(v45 + 67) = self->_presentationStyle;
  *(v45 + 89) |= 0x400u;
  v13 = self->_has;
  if ((*&v13 & 0x4000) == 0)
  {
LABEL_25:
    if ((*&v13 & 0x100) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(v45 + 73) = self->_skipInterval;
  *(v45 + 89) |= 0x4000u;
  v13 = self->_has;
  if ((*&v13 & 0x100) == 0)
  {
LABEL_26:
    if ((*&v13 & 0x2000) == 0)
    {
      goto LABEL_27;
    }

LABEL_103:
    *(v45 + 72) = self->_skipFrequency;
    *(v45 + 89) |= 0x2000u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_102:
  *(v45 + 60) = self->_numAvailableSkips;
  *(v45 + 89) |= 0x100u;
  v13 = self->_has;
  if ((*&v13 & 0x2000) != 0)
  {
    goto LABEL_103;
  }

LABEL_27:
  if ((*&v13 & 4) != 0)
  {
LABEL_28:
    *(v45 + 42) = self->_canScrub;
    *(v45 + 89) |= 4u;
  }

LABEL_29:
  if ([(_MRCommandInfoProtobuf *)self supportedPlaybackQueueTypesCount])
  {
    [v45 clearSupportedPlaybackQueueTypes];
    supportedPlaybackQueueTypesCount = [(_MRCommandInfoProtobuf *)self supportedPlaybackQueueTypesCount];
    if (supportedPlaybackQueueTypesCount)
    {
      v15 = supportedPlaybackQueueTypesCount;
      for (k = 0; k != v15; ++k)
      {
        [v45 addSupportedPlaybackQueueTypes:{-[_MRCommandInfoProtobuf supportedPlaybackQueueTypesAtIndex:](self, "supportedPlaybackQueueTypesAtIndex:", k)}];
      }
    }
  }

  if ([(_MRCommandInfoProtobuf *)self supportedCustomQueueIdentifiersCount])
  {
    [v45 clearSupportedCustomQueueIdentifiers];
    supportedCustomQueueIdentifiersCount = [(_MRCommandInfoProtobuf *)self supportedCustomQueueIdentifiersCount];
    if (supportedCustomQueueIdentifiersCount)
    {
      v18 = supportedCustomQueueIdentifiersCount;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(_MRCommandInfoProtobuf *)self supportedCustomQueueIdentifierAtIndex:m];
        [v45 addSupportedCustomQueueIdentifier:v20];
      }
    }
  }

  if ([(_MRCommandInfoProtobuf *)self supportedInsertionPositionsCount])
  {
    [v45 clearSupportedInsertionPositions];
    supportedInsertionPositionsCount = [(_MRCommandInfoProtobuf *)self supportedInsertionPositionsCount];
    if (supportedInsertionPositionsCount)
    {
      v22 = supportedInsertionPositionsCount;
      for (n = 0; n != v22; ++n)
      {
        [v45 addSupportedInsertionPositions:{-[_MRCommandInfoProtobuf supportedInsertionPositionsAtIndex:](self, "supportedInsertionPositionsAtIndex:", n)}];
      }
    }
  }

  v24 = self->_has;
  if ((*&v24 & 0x20000) != 0)
  {
    *(v45 + 83) = self->_upNextItemCount;
    *(v45 + 89) |= 0x20000u;
    v24 = self->_has;
  }

  if ((*&v24 & 0x200) != 0)
  {
    *(v45 + 66) = LODWORD(self->_preferredPlaybackRate);
    *(v45 + 89) |= 0x200u;
  }

  if ([(_MRCommandInfoProtobuf *)self supportedPlaybackSessionTypesCount])
  {
    [v45 clearSupportedPlaybackSessionTypes];
    supportedPlaybackSessionTypesCount = [(_MRCommandInfoProtobuf *)self supportedPlaybackSessionTypesCount];
    if (supportedPlaybackSessionTypesCount)
    {
      v26 = supportedPlaybackSessionTypesCount;
      for (ii = 0; ii != v26; ++ii)
      {
        v28 = [(_MRCommandInfoProtobuf *)self supportedPlaybackSessionTypesAtIndex:ii];
        [v45 addSupportedPlaybackSessionTypes:v28];
      }
    }
  }

  if ([(_MRCommandInfoProtobuf *)self currentPlaybackSessionTypesCount])
  {
    [v45 clearCurrentPlaybackSessionTypes];
    currentPlaybackSessionTypesCount = [(_MRCommandInfoProtobuf *)self currentPlaybackSessionTypesCount];
    if (currentPlaybackSessionTypesCount)
    {
      v30 = currentPlaybackSessionTypesCount;
      for (jj = 0; jj != v30; ++jj)
      {
        v32 = [(_MRCommandInfoProtobuf *)self currentPlaybackSessionTypesAtIndex:jj];
        [v45 addCurrentPlaybackSessionTypes:v32];
      }
    }
  }

  if (self->_playbackSessionIdentifier)
  {
    [v45 setPlaybackSessionIdentifier:?];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v45 + 46) = self->_currentQueueEndAction;
    *(v45 + 89) |= 0x10u;
  }

  if ([(_MRCommandInfoProtobuf *)self supportedQueueEndActionsCount])
  {
    [v45 clearSupportedQueueEndActions];
    supportedQueueEndActionsCount = [(_MRCommandInfoProtobuf *)self supportedQueueEndActionsCount];
    if (supportedQueueEndActionsCount)
    {
      v34 = supportedQueueEndActionsCount;
      for (kk = 0; kk != v34; ++kk)
      {
        [v45 addSupportedQueueEndActions:{-[_MRCommandInfoProtobuf supportedQueueEndActionsAtIndex:](self, "supportedQueueEndActionsAtIndex:", kk)}];
      }
    }
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(v45 + 50) = self->_disabledReason;
    *(v45 + 89) |= 0x20u;
  }

  if ([(_MRCommandInfoProtobuf *)self supportedPlaybackSessionIdentifiersCount])
  {
    [v45 clearSupportedPlaybackSessionIdentifiers];
    supportedPlaybackSessionIdentifiersCount = [(_MRCommandInfoProtobuf *)self supportedPlaybackSessionIdentifiersCount];
    if (supportedPlaybackSessionIdentifiersCount)
    {
      v37 = supportedPlaybackSessionIdentifiersCount;
      for (mm = 0; mm != v37; ++mm)
      {
        v39 = [(_MRCommandInfoProtobuf *)self supportedPlaybackSessionIdentifiersAtIndex:mm];
        [v45 addSupportedPlaybackSessionIdentifiers:v39];
      }
    }
  }

  if (self->_proactiveCommandOptions)
  {
    [v45 setProactiveCommandOptions:?];
  }

  v40 = self->_has;
  v41 = v45;
  if ((*&v40 & 0x1000000) != 0)
  {
    *(v45 + 351) = self->_vocalsControlActive;
    *(v45 + 89) |= 0x1000000u;
    v40 = self->_has;
    if ((*&v40 & 0x40000) == 0)
    {
LABEL_71:
      if ((*&v40 & 0x80000) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_107;
    }
  }

  else if ((*&v40 & 0x40000) == 0)
  {
    goto LABEL_71;
  }

  *(v45 + 84) = LODWORD(self->_vocalsControlLevel);
  *(v45 + 89) |= 0x40000u;
  v40 = self->_has;
  if ((*&v40 & 0x80000) == 0)
  {
LABEL_72:
    if ((*&v40 & 0x100000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(v45 + 85) = LODWORD(self->_vocalsControlMaxLevel);
  *(v45 + 89) |= 0x80000u;
  v40 = self->_has;
  if ((*&v40 & 0x100000) == 0)
  {
LABEL_73:
    if ((*&v40 & 0x2000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_109;
  }

LABEL_108:
  *(v45 + 86) = LODWORD(self->_vocalsControlMinLevel);
  *(v45 + 89) |= 0x100000u;
  v40 = self->_has;
  if ((*&v40 & 0x2000000) == 0)
  {
LABEL_74:
    if ((*&v40 & 2) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_110;
  }

LABEL_109:
  *(v45 + 352) = self->_vocalsControlContinuous;
  *(v45 + 89) |= 0x2000000u;
  v40 = self->_has;
  if ((*&v40 & 2) == 0)
  {
LABEL_75:
    if ((*&v40 & 0x8000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_111;
  }

LABEL_110:
  *(v45 + 20) = *&self->_sleepTimerTime;
  *(v45 + 89) |= 2u;
  v40 = self->_has;
  if ((*&v40 & 0x8000) == 0)
  {
LABEL_76:
    if ((*&v40 & 1) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_111:
  *(v45 + 74) = self->_sleepTimerStopMode;
  *(v45 + 89) |= 0x8000u;
  if (*&self->_has)
  {
LABEL_77:
    *(v45 + 19) = *&self->_sleepTimerFireDate;
    *(v45 + 89) |= 1u;
  }

LABEL_78:
  if (self->_dialogOptions)
  {
    [v45 setDialogOptions:?];
    v41 = v45;
  }

  if (self->_lastSectionContentItemID)
  {
    [v45 setLastSectionContentItemID:?];
    v41 = v45;
  }

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    v41[350] = self->_supportsReferencePosition;
    *(v41 + 89) |= 0x800000u;
  }

  if (self->_playbackSessionRequirements)
  {
    [v45 setPlaybackSessionRequirements:?];
  }

  if ([(_MRCommandInfoProtobuf *)self extendedSupportedRatesCount])
  {
    [v45 clearExtendedSupportedRates];
    extendedSupportedRatesCount = [(_MRCommandInfoProtobuf *)self extendedSupportedRatesCount];
    if (extendedSupportedRatesCount)
    {
      v43 = extendedSupportedRatesCount;
      for (nn = 0; nn != v43; ++nn)
      {
        [(_MRCommandInfoProtobuf *)self extendedSupportedRateAtIndex:nn];
        [v45 addExtendedSupportedRate:?];
      }
    }
  }

  if (*(&self->_has + 2))
  {
    *(v45 + 82) = self->_transitionStyle;
    *(v45 + 89) |= 0x10000u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v73 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    *(v5 + 172) = self->_command;
    *(v5 + 356) |= 8u;
    has = self->_has;
    if ((*&has & 0x400000) == 0)
    {
LABEL_3:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&has & 0x400000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 349) = self->_enabled;
  *(v5 + 356) |= 0x400000u;
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_4:
    *(v5 + 348) = self->_active;
    *(v5 + 356) |= 0x200000u;
  }

LABEL_5:
  PBRepeatedDoubleCopy();
  v8 = [(NSString *)self->_localizedTitle copyWithZone:zone];
  v9 = *(v6 + 224);
  *(v6 + 224) = v8;

  v10 = self->_has;
  if ((*&v10 & 0x80) != 0)
  {
    *(v6 + 236) = self->_minimumRating;
    *(v6 + 356) |= 0x80u;
    v10 = self->_has;
  }

  if ((*&v10 & 0x40) != 0)
  {
    *(v6 + 232) = self->_maximumRating;
    *(v6 + 356) |= 0x40u;
  }

  PBRepeatedFloatCopy();
  v11 = [(NSString *)self->_localizedShortTitle copyWithZone:zone];
  v12 = *(v6 + 216);
  *(v6 + 216) = v11;

  v13 = self->_has;
  if ((*&v13 & 0x800) != 0)
  {
    *(v6 + 280) = self->_repeatMode;
    *(v6 + 356) |= 0x800u;
    v13 = self->_has;
    if ((*&v13 & 0x1000) == 0)
    {
LABEL_11:
      if ((*&v13 & 0x400) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_72;
    }
  }

  else if ((*&v13 & 0x1000) == 0)
  {
    goto LABEL_11;
  }

  *(v6 + 284) = self->_shuffleMode;
  *(v6 + 356) |= 0x1000u;
  v13 = self->_has;
  if ((*&v13 & 0x400) == 0)
  {
LABEL_12:
    if ((*&v13 & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v6 + 268) = self->_presentationStyle;
  *(v6 + 356) |= 0x400u;
  v13 = self->_has;
  if ((*&v13 & 0x4000) == 0)
  {
LABEL_13:
    if ((*&v13 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v6 + 292) = self->_skipInterval;
  *(v6 + 356) |= 0x4000u;
  v13 = self->_has;
  if ((*&v13 & 0x100) == 0)
  {
LABEL_14:
    if ((*&v13 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v6 + 240) = self->_numAvailableSkips;
  *(v6 + 356) |= 0x100u;
  v13 = self->_has;
  if ((*&v13 & 0x2000) == 0)
  {
LABEL_15:
    if ((*&v13 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_75:
  *(v6 + 288) = self->_skipFrequency;
  *(v6 + 356) |= 0x2000u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_16:
    *(v6 + 168) = self->_canScrub;
    *(v6 + 356) |= 4u;
  }

LABEL_17:
  PBRepeatedInt32Copy();
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v14 = self->_supportedCustomQueueIdentifiers;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v65 objects:v72 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v66;
    do
    {
      v18 = 0;
      do
      {
        if (*v66 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v65 + 1) + 8 * v18) copyWithZone:zone];
        [v6 addSupportedCustomQueueIdentifier:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v65 objects:v72 count:16];
    }

    while (v16);
  }

  PBRepeatedInt32Copy();
  v20 = self->_has;
  if ((*&v20 & 0x20000) != 0)
  {
    *(v6 + 332) = self->_upNextItemCount;
    *(v6 + 356) |= 0x20000u;
    v20 = self->_has;
  }

  if ((*&v20 & 0x200) != 0)
  {
    *(v6 + 264) = self->_preferredPlaybackRate;
    *(v6 + 356) |= 0x200u;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v21 = self->_supportedPlaybackSessionTypes;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v62;
    do
    {
      v25 = 0;
      do
      {
        if (*v62 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v61 + 1) + 8 * v25) copyWithZone:zone];
        [v6 addSupportedPlaybackSessionTypes:v26];

        ++v25;
      }

      while (v23 != v25);
      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v23);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v27 = self->_currentPlaybackSessionTypes;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v57 objects:v70 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v58;
    do
    {
      v31 = 0;
      do
      {
        if (*v58 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v57 + 1) + 8 * v31) copyWithZone:zone];
        [v6 addCurrentPlaybackSessionTypes:v32];

        ++v31;
      }

      while (v29 != v31);
      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v57 objects:v70 count:16];
    }

    while (v29);
  }

  v33 = [(NSString *)self->_playbackSessionIdentifier copyWithZone:zone];
  v34 = *(v6 + 248);
  *(v6 + 248) = v33;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 184) = self->_currentQueueEndAction;
    *(v6 + 356) |= 0x10u;
  }

  PBRepeatedInt32Copy();
  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 200) = self->_disabledReason;
    *(v6 + 356) |= 0x20u;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v35 = self->_supportedPlaybackSessionIdentifiers;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v53 objects:v69 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v54;
    do
    {
      v39 = 0;
      do
      {
        if (*v54 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [*(*(&v53 + 1) + 8 * v39) copyWithZone:{zone, v53}];
        [v6 addSupportedPlaybackSessionIdentifiers:v40];

        ++v39;
      }

      while (v37 != v39);
      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v53 objects:v69 count:16];
    }

    while (v37);
  }

  v41 = [(_MRCommandOptionsProtobuf *)self->_proactiveCommandOptions copyWithZone:zone];
  v42 = *(v6 + 272);
  *(v6 + 272) = v41;

  v43 = self->_has;
  if ((*&v43 & 0x1000000) != 0)
  {
    *(v6 + 351) = self->_vocalsControlActive;
    *(v6 + 356) |= 0x1000000u;
    v43 = self->_has;
    if ((*&v43 & 0x40000) == 0)
    {
LABEL_55:
      if ((*&v43 & 0x80000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_79;
    }
  }

  else if ((*&v43 & 0x40000) == 0)
  {
    goto LABEL_55;
  }

  *(v6 + 336) = self->_vocalsControlLevel;
  *(v6 + 356) |= 0x40000u;
  v43 = self->_has;
  if ((*&v43 & 0x80000) == 0)
  {
LABEL_56:
    if ((*&v43 & 0x100000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v6 + 340) = self->_vocalsControlMaxLevel;
  *(v6 + 356) |= 0x80000u;
  v43 = self->_has;
  if ((*&v43 & 0x100000) == 0)
  {
LABEL_57:
    if ((*&v43 & 0x2000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v6 + 344) = self->_vocalsControlMinLevel;
  *(v6 + 356) |= 0x100000u;
  v43 = self->_has;
  if ((*&v43 & 0x2000000) == 0)
  {
LABEL_58:
    if ((*&v43 & 2) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v6 + 352) = self->_vocalsControlContinuous;
  *(v6 + 356) |= 0x2000000u;
  v43 = self->_has;
  if ((*&v43 & 2) == 0)
  {
LABEL_59:
    if ((*&v43 & 0x8000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(v6 + 160) = self->_sleepTimerTime;
  *(v6 + 356) |= 2u;
  v43 = self->_has;
  if ((*&v43 & 0x8000) == 0)
  {
LABEL_60:
    if ((*&v43 & 1) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_83:
  *(v6 + 296) = self->_sleepTimerStopMode;
  *(v6 + 356) |= 0x8000u;
  if (*&self->_has)
  {
LABEL_61:
    *(v6 + 152) = self->_sleepTimerFireDate;
    *(v6 + 356) |= 1u;
  }

LABEL_62:
  v44 = [(_MRDictionaryProtobuf *)self->_dialogOptions copyWithZone:zone, v53];
  v45 = *(v6 + 192);
  *(v6 + 192) = v44;

  v46 = [(NSString *)self->_lastSectionContentItemID copyWithZone:zone];
  v47 = *(v6 + 208);
  *(v6 + 208) = v46;

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    *(v6 + 350) = self->_supportsReferencePosition;
    *(v6 + 356) |= 0x800000u;
  }

  v48 = [(_MRDictionaryProtobuf *)self->_playbackSessionRequirements copyWithZone:zone];
  v49 = *(v6 + 256);
  *(v6 + 256) = v48;

  PBRepeatedFloatCopy();
  if (*(&self->_has + 2))
  {
    *(v6 + 328) = self->_transitionStyle;
    *(v6 + 356) |= 0x10000u;
  }

  v50 = v6;

  v51 = *MEMORY[0x1E69E9840];
  return v50;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_175;
  }

  has = self->_has;
  v6 = *(equalCopy + 89);
  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_command != *(equalCopy + 43))
    {
      goto LABEL_175;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_175;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_175;
    }

    v10 = *(equalCopy + 349);
    if (self->_enabled)
    {
      if ((*(equalCopy + 349) & 1) == 0)
      {
        goto LABEL_175;
      }
    }

    else if (*(equalCopy + 349))
    {
      goto LABEL_175;
    }
  }

  else if ((v6 & 0x400000) != 0)
  {
    goto LABEL_175;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_175;
    }

    v11 = *(equalCopy + 348);
    if (self->_active)
    {
      if ((*(equalCopy + 348) & 1) == 0)
      {
        goto LABEL_175;
      }
    }

    else if (*(equalCopy + 348))
    {
      goto LABEL_175;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_175;
  }

  if (!PBRepeatedDoubleIsEqual())
  {
    goto LABEL_175;
  }

  localizedTitle = self->_localizedTitle;
  if (localizedTitle | *(equalCopy + 28))
  {
    if (![(NSString *)localizedTitle isEqual:?])
    {
      goto LABEL_175;
    }
  }

  v8 = self->_has;
  v9 = *(equalCopy + 89);
  if ((*&v8 & 0x80) != 0)
  {
    if ((v9 & 0x80) == 0 || self->_minimumRating != *(equalCopy + 59))
    {
      goto LABEL_175;
    }
  }

  else if ((v9 & 0x80) != 0)
  {
    goto LABEL_175;
  }

  if ((*&v8 & 0x40) != 0)
  {
    if ((v9 & 0x40) == 0 || self->_maximumRating != *(equalCopy + 58))
    {
      goto LABEL_175;
    }
  }

  else if ((v9 & 0x40) != 0)
  {
    goto LABEL_175;
  }

  if (!PBRepeatedFloatIsEqual())
  {
    goto LABEL_175;
  }

  localizedShortTitle = self->_localizedShortTitle;
  if (localizedShortTitle | *(equalCopy + 27))
  {
    if (![(NSString *)localizedShortTitle isEqual:?])
    {
      goto LABEL_175;
    }
  }

  v13 = self->_has;
  v14 = *(equalCopy + 89);
  if ((*&v13 & 0x800) != 0)
  {
    if ((v14 & 0x800) == 0 || self->_repeatMode != *(equalCopy + 70))
    {
      goto LABEL_175;
    }
  }

  else if ((v14 & 0x800) != 0)
  {
    goto LABEL_175;
  }

  if ((*&v13 & 0x1000) != 0)
  {
    if ((v14 & 0x1000) == 0 || self->_shuffleMode != *(equalCopy + 71))
    {
      goto LABEL_175;
    }
  }

  else if ((v14 & 0x1000) != 0)
  {
    goto LABEL_175;
  }

  if ((*&v13 & 0x400) != 0)
  {
    if ((v14 & 0x400) == 0 || self->_presentationStyle != *(equalCopy + 67))
    {
      goto LABEL_175;
    }
  }

  else if ((v14 & 0x400) != 0)
  {
    goto LABEL_175;
  }

  if ((*&v13 & 0x4000) != 0)
  {
    if ((v14 & 0x4000) == 0 || self->_skipInterval != *(equalCopy + 73))
    {
      goto LABEL_175;
    }
  }

  else if ((v14 & 0x4000) != 0)
  {
    goto LABEL_175;
  }

  if ((*&v13 & 0x100) != 0)
  {
    if ((v14 & 0x100) == 0 || self->_numAvailableSkips != *(equalCopy + 60))
    {
      goto LABEL_175;
    }
  }

  else if ((v14 & 0x100) != 0)
  {
    goto LABEL_175;
  }

  if ((*&v13 & 0x2000) != 0)
  {
    if ((v14 & 0x2000) == 0 || self->_skipFrequency != *(equalCopy + 72))
    {
      goto LABEL_175;
    }
  }

  else if ((v14 & 0x2000) != 0)
  {
    goto LABEL_175;
  }

  if ((*&v13 & 4) != 0)
  {
    if ((v14 & 4) == 0 || self->_canScrub != *(equalCopy + 42))
    {
      goto LABEL_175;
    }
  }

  else if ((v14 & 4) != 0)
  {
    goto LABEL_175;
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_175;
  }

  supportedCustomQueueIdentifiers = self->_supportedCustomQueueIdentifiers;
  if (supportedCustomQueueIdentifiers | *(equalCopy + 38))
  {
    if (![(NSMutableArray *)supportedCustomQueueIdentifiers isEqual:?])
    {
      goto LABEL_175;
    }
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_175;
  }

  v16 = self->_has;
  v17 = *(equalCopy + 89);
  if ((*&v16 & 0x20000) != 0)
  {
    if ((v17 & 0x20000) == 0 || self->_upNextItemCount != *(equalCopy + 83))
    {
      goto LABEL_175;
    }
  }

  else if ((v17 & 0x20000) != 0)
  {
    goto LABEL_175;
  }

  if ((*&v16 & 0x200) != 0)
  {
    if ((v17 & 0x200) == 0 || self->_preferredPlaybackRate != *(equalCopy + 66))
    {
      goto LABEL_175;
    }
  }

  else if ((v17 & 0x200) != 0)
  {
    goto LABEL_175;
  }

  supportedPlaybackSessionTypes = self->_supportedPlaybackSessionTypes;
  if (supportedPlaybackSessionTypes | *(equalCopy + 40) && ![(NSMutableArray *)supportedPlaybackSessionTypes isEqual:?])
  {
    goto LABEL_175;
  }

  currentPlaybackSessionTypes = self->_currentPlaybackSessionTypes;
  if (currentPlaybackSessionTypes | *(equalCopy + 22))
  {
    if (![(NSMutableArray *)currentPlaybackSessionTypes isEqual:?])
    {
      goto LABEL_175;
    }
  }

  playbackSessionIdentifier = self->_playbackSessionIdentifier;
  if (playbackSessionIdentifier | *(equalCopy + 31))
  {
    if (![(NSString *)playbackSessionIdentifier isEqual:?])
    {
      goto LABEL_175;
    }
  }

  v21 = *(equalCopy + 89);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((v21 & 0x10) == 0 || self->_currentQueueEndAction != *(equalCopy + 46))
    {
      goto LABEL_175;
    }
  }

  else if ((v21 & 0x10) != 0)
  {
    goto LABEL_175;
  }

  if (!PBRepeatedInt32IsEqual())
  {
LABEL_175:
    v35 = 0;
    goto LABEL_176;
  }

  v22 = *(equalCopy + 89);
  if ((*&self->_has & 0x20) != 0)
  {
    if ((v22 & 0x20) == 0 || self->_disabledReason != *(equalCopy + 50))
    {
      goto LABEL_175;
    }
  }

  else if ((v22 & 0x20) != 0)
  {
    goto LABEL_175;
  }

  supportedPlaybackSessionIdentifiers = self->_supportedPlaybackSessionIdentifiers;
  if (supportedPlaybackSessionIdentifiers | *(equalCopy + 39) && ![(NSMutableArray *)supportedPlaybackSessionIdentifiers isEqual:?])
  {
    goto LABEL_175;
  }

  proactiveCommandOptions = self->_proactiveCommandOptions;
  if (proactiveCommandOptions | *(equalCopy + 34))
  {
    if (![(_MRCommandOptionsProtobuf *)proactiveCommandOptions isEqual:?])
    {
      goto LABEL_175;
    }
  }

  v25 = self->_has;
  v26 = *(equalCopy + 89);
  if ((*&v25 & 0x1000000) != 0)
  {
    if ((v26 & 0x1000000) == 0)
    {
      goto LABEL_175;
    }

    v27 = *(equalCopy + 351);
    if (self->_vocalsControlActive)
    {
      if ((*(equalCopy + 351) & 1) == 0)
      {
        goto LABEL_175;
      }
    }

    else if (*(equalCopy + 351))
    {
      goto LABEL_175;
    }
  }

  else if ((v26 & 0x1000000) != 0)
  {
    goto LABEL_175;
  }

  if ((*&v25 & 0x40000) != 0)
  {
    if ((v26 & 0x40000) == 0 || self->_vocalsControlLevel != *(equalCopy + 84))
    {
      goto LABEL_175;
    }
  }

  else if ((v26 & 0x40000) != 0)
  {
    goto LABEL_175;
  }

  if ((*&v25 & 0x80000) != 0)
  {
    if ((v26 & 0x80000) == 0 || self->_vocalsControlMaxLevel != *(equalCopy + 85))
    {
      goto LABEL_175;
    }
  }

  else if ((v26 & 0x80000) != 0)
  {
    goto LABEL_175;
  }

  if ((*&v25 & 0x100000) != 0)
  {
    if ((v26 & 0x100000) == 0 || self->_vocalsControlMinLevel != *(equalCopy + 86))
    {
      goto LABEL_175;
    }
  }

  else if ((v26 & 0x100000) != 0)
  {
    goto LABEL_175;
  }

  if ((*&v25 & 0x2000000) != 0)
  {
    if ((v26 & 0x2000000) == 0)
    {
      goto LABEL_175;
    }

    v28 = *(equalCopy + 352);
    if (self->_vocalsControlContinuous)
    {
      if ((*(equalCopy + 352) & 1) == 0)
      {
        goto LABEL_175;
      }
    }

    else if (*(equalCopy + 352))
    {
      goto LABEL_175;
    }
  }

  else if ((v26 & 0x2000000) != 0)
  {
    goto LABEL_175;
  }

  if ((*&v25 & 2) != 0)
  {
    if ((v26 & 2) == 0 || self->_sleepTimerTime != *(equalCopy + 20))
    {
      goto LABEL_175;
    }
  }

  else if ((v26 & 2) != 0)
  {
    goto LABEL_175;
  }

  if ((*&v25 & 0x8000) != 0)
  {
    if ((v26 & 0x8000) == 0 || self->_sleepTimerStopMode != *(equalCopy + 74))
    {
      goto LABEL_175;
    }
  }

  else if ((v26 & 0x8000) != 0)
  {
    goto LABEL_175;
  }

  if (*&v25)
  {
    if ((v26 & 1) == 0 || self->_sleepTimerFireDate != *(equalCopy + 19))
    {
      goto LABEL_175;
    }
  }

  else if (v26)
  {
    goto LABEL_175;
  }

  dialogOptions = self->_dialogOptions;
  if (dialogOptions | *(equalCopy + 24) && ![(_MRDictionaryProtobuf *)dialogOptions isEqual:?])
  {
    goto LABEL_175;
  }

  lastSectionContentItemID = self->_lastSectionContentItemID;
  if (lastSectionContentItemID | *(equalCopy + 26))
  {
    if (![(NSString *)lastSectionContentItemID isEqual:?])
    {
      goto LABEL_175;
    }
  }

  v31 = *(equalCopy + 89);
  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    if ((v31 & 0x800000) != 0)
    {
      v32 = *(equalCopy + 350);
      if (self->_supportsReferencePosition)
      {
        if ((*(equalCopy + 350) & 1) == 0)
        {
          goto LABEL_175;
        }

        goto LABEL_167;
      }

      if ((*(equalCopy + 350) & 1) == 0)
      {
        goto LABEL_167;
      }
    }

    goto LABEL_175;
  }

  if ((v31 & 0x800000) != 0)
  {
    goto LABEL_175;
  }

LABEL_167:
  playbackSessionRequirements = self->_playbackSessionRequirements;
  if (playbackSessionRequirements | *(equalCopy + 32) && ![(_MRDictionaryProtobuf *)playbackSessionRequirements isEqual:?]|| !PBRepeatedFloatIsEqual())
  {
    goto LABEL_175;
  }

  v34 = *(equalCopy + 89);
  if (*(&self->_has + 2))
  {
    if ((v34 & 0x10000) == 0 || self->_transitionStyle != *(equalCopy + 82))
    {
      goto LABEL_175;
    }

    v35 = 1;
  }

  else
  {
    v35 = (v34 & 0x10000) == 0;
  }

LABEL_176:

  return v35;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 8) == 0)
  {
    v88 = 0;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v87 = 0;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v88 = 2654435761 * self->_command;
  if ((*&has & 0x400000) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v87 = 2654435761 * self->_enabled;
  if ((*&has & 0x200000) != 0)
  {
LABEL_4:
    v86 = 2654435761 * self->_active;
    goto LABEL_8;
  }

LABEL_7:
  v86 = 0;
LABEL_8:
  v85 = PBRepeatedDoubleHash();
  v84 = [(NSString *)self->_localizedTitle hash];
  v6 = self->_has;
  if ((*&v6 & 0x80) != 0)
  {
    minimumRating = self->_minimumRating;
    if (minimumRating < 0.0)
    {
      minimumRating = -minimumRating;
    }

    *v4.i32 = floorf(minimumRating + 0.5);
    v14 = (minimumRating - *v4.i32) * 1.8447e19;
    *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
    v15.i64[0] = 0x8000000080000000;
    v15.i64[1] = 0x8000000080000000;
    v4 = vbslq_s8(v15, v5, v4);
    v16 = 2654435761u * *v4.i32;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v16 += v14;
      }
    }

    else
    {
      v16 -= fabsf(v14);
    }

    v83 = v16;
    if ((*&v6 & 0x40) != 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v82 = 0;
    goto LABEL_25;
  }

  v83 = 0;
  if ((*&v6 & 0x40) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  maximumRating = self->_maximumRating;
  if (maximumRating < 0.0)
  {
    maximumRating = -maximumRating;
  }

  *v4.i32 = floorf(maximumRating + 0.5);
  v8 = (maximumRating - *v4.i32) * 1.8447e19;
  *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  v4.i32[0] = vbslq_s8(v9, v5, v4).i32[0];
  v10 = 2654435761u * *v4.i32;
  v11 = v10 + v8;
  if (v8 <= 0.0)
  {
    v11 = 2654435761u * *v4.i32;
  }

  v12 = v10 - fabsf(v8);
  if (v8 >= 0.0)
  {
    v12 = v11;
  }

  v82 = v12;
LABEL_25:
  v81 = PBRepeatedFloatHash();
  v80 = [(NSString *)self->_localizedShortTitle hash];
  v17 = self->_has;
  if ((*&v17 & 0x800) != 0)
  {
    v79 = 2654435761 * self->_repeatMode;
    if ((*&v17 & 0x1000) != 0)
    {
LABEL_27:
      v78 = 2654435761 * self->_shuffleMode;
      if ((*&v17 & 0x400) != 0)
      {
        goto LABEL_28;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v79 = 0;
    if ((*&v17 & 0x1000) != 0)
    {
      goto LABEL_27;
    }
  }

  v78 = 0;
  if ((*&v17 & 0x400) != 0)
  {
LABEL_28:
    v77 = 2654435761 * self->_presentationStyle;
    if ((*&v17 & 0x4000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

LABEL_35:
  v77 = 0;
  if ((*&v17 & 0x4000) != 0)
  {
LABEL_29:
    v76 = 2654435761 * self->_skipInterval;
    if ((*&v17 & 0x100) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_37;
  }

LABEL_36:
  v76 = 0;
  if ((*&v17 & 0x100) != 0)
  {
LABEL_30:
    v75 = 2654435761 * self->_numAvailableSkips;
    if ((*&v17 & 0x2000) != 0)
    {
      goto LABEL_31;
    }

LABEL_38:
    v74 = 0;
    if ((*&v17 & 4) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_39;
  }

LABEL_37:
  v75 = 0;
  if ((*&v17 & 0x2000) == 0)
  {
    goto LABEL_38;
  }

LABEL_31:
  v74 = 2654435761 * self->_skipFrequency;
  if ((*&v17 & 4) != 0)
  {
LABEL_32:
    v73 = 2654435761 * self->_canScrub;
    goto LABEL_40;
  }

LABEL_39:
  v73 = 0;
LABEL_40:
  v72 = PBRepeatedInt32Hash();
  v71 = [(NSMutableArray *)self->_supportedCustomQueueIdentifiers hash];
  v70 = PBRepeatedInt32Hash();
  v20 = self->_has;
  if ((*&v20 & 0x20000) != 0)
  {
    v69 = 2654435761 * self->_upNextItemCount;
    if ((*&v20 & 0x200) != 0)
    {
      goto LABEL_42;
    }

LABEL_47:
    v24 = 0;
    goto LABEL_48;
  }

  v69 = 0;
  if ((*&v20 & 0x200) == 0)
  {
    goto LABEL_47;
  }

LABEL_42:
  preferredPlaybackRate = self->_preferredPlaybackRate;
  if (preferredPlaybackRate < 0.0)
  {
    preferredPlaybackRate = -preferredPlaybackRate;
  }

  *v18.i32 = floorf(preferredPlaybackRate + 0.5);
  v22 = (preferredPlaybackRate - *v18.i32) * 1.8447e19;
  *v19.i32 = *v18.i32 - (truncf(*v18.i32 * 5.421e-20) * 1.8447e19);
  v23.i64[0] = 0x8000000080000000;
  v23.i64[1] = 0x8000000080000000;
  v24 = 2654435761u * *vbslq_s8(v23, v19, v18).i32;
  if (v22 >= 0.0)
  {
    if (v22 > 0.0)
    {
      v24 += v22;
    }
  }

  else
  {
    v24 -= fabsf(v22);
  }

LABEL_48:
  v68 = v24;
  v67 = [(NSMutableArray *)self->_supportedPlaybackSessionTypes hash];
  v66 = [(NSMutableArray *)self->_currentPlaybackSessionTypes hash];
  v65 = [(NSString *)self->_playbackSessionIdentifier hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v64 = 2654435761 * self->_currentQueueEndAction;
  }

  else
  {
    v64 = 0;
  }

  v63 = PBRepeatedInt32Hash();
  if ((*&self->_has & 0x20) != 0)
  {
    v62 = 2654435761 * self->_disabledReason;
  }

  else
  {
    v62 = 0;
  }

  v61 = [(NSMutableArray *)self->_supportedPlaybackSessionIdentifiers hash];
  v60 = [(_MRCommandOptionsProtobuf *)self->_proactiveCommandOptions hash];
  v27 = self->_has;
  if ((*&v27 & 0x1000000) != 0)
  {
    v59 = 2654435761 * self->_vocalsControlActive;
    if ((*&v27 & 0x40000) != 0)
    {
      goto LABEL_56;
    }

LABEL_61:
    v31 = 0;
    goto LABEL_62;
  }

  v59 = 0;
  if ((*&v27 & 0x40000) == 0)
  {
    goto LABEL_61;
  }

LABEL_56:
  vocalsControlLevel = self->_vocalsControlLevel;
  if (vocalsControlLevel < 0.0)
  {
    vocalsControlLevel = -vocalsControlLevel;
  }

  *v25.i32 = floorf(vocalsControlLevel + 0.5);
  v29 = (vocalsControlLevel - *v25.i32) * 1.8447e19;
  *v26.i32 = *v25.i32 - (truncf(*v25.i32 * 5.421e-20) * 1.8447e19);
  v30.i64[0] = 0x8000000080000000;
  v30.i64[1] = 0x8000000080000000;
  v25 = vbslq_s8(v30, v26, v25);
  v31 = 2654435761u * *v25.i32;
  if (v29 >= 0.0)
  {
    if (v29 > 0.0)
    {
      v31 += v29;
    }
  }

  else
  {
    v31 -= fabsf(v29);
  }

LABEL_62:
  if ((*&v27 & 0x80000) != 0)
  {
    vocalsControlMaxLevel = self->_vocalsControlMaxLevel;
    if (vocalsControlMaxLevel < 0.0)
    {
      vocalsControlMaxLevel = -vocalsControlMaxLevel;
    }

    *v25.i32 = floorf(vocalsControlMaxLevel + 0.5);
    v34 = (vocalsControlMaxLevel - *v25.i32) * 1.8447e19;
    *v26.i32 = *v25.i32 - (truncf(*v25.i32 * 5.421e-20) * 1.8447e19);
    v35.i64[0] = 0x8000000080000000;
    v35.i64[1] = 0x8000000080000000;
    v25 = vbslq_s8(v35, v26, v25);
    v32 = 2654435761u * *v25.i32;
    if (v34 >= 0.0)
    {
      if (v34 > 0.0)
      {
        v32 += v34;
      }
    }

    else
    {
      v32 -= fabsf(v34);
    }
  }

  else
  {
    v32 = 0;
  }

  if ((*&v27 & 0x100000) != 0)
  {
    vocalsControlMinLevel = self->_vocalsControlMinLevel;
    if (vocalsControlMinLevel < 0.0)
    {
      vocalsControlMinLevel = -vocalsControlMinLevel;
    }

    *v25.i32 = floorf(vocalsControlMinLevel + 0.5);
    v38 = (vocalsControlMinLevel - *v25.i32) * 1.8447e19;
    *v26.i32 = *v25.i32 - (truncf(*v25.i32 * 5.421e-20) * 1.8447e19);
    v39.i64[0] = 0x8000000080000000;
    v39.i64[1] = 0x8000000080000000;
    v25 = vbslq_s8(v39, v26, v25);
    v36 = 2654435761u * *v25.i32;
    if (v38 >= 0.0)
    {
      if (v38 > 0.0)
      {
        v36 += v38;
      }
    }

    else
    {
      v36 -= fabsf(v38);
    }
  }

  else
  {
    v36 = 0;
  }

  if ((*&v27 & 0x2000000) != 0)
  {
    v57 = 2654435761 * self->_vocalsControlContinuous;
    if ((*&v27 & 2) != 0)
    {
      goto LABEL_84;
    }

LABEL_89:
    v43 = 0;
    goto LABEL_90;
  }

  v57 = 0;
  if ((*&v27 & 2) == 0)
  {
    goto LABEL_89;
  }

LABEL_84:
  sleepTimerTime = self->_sleepTimerTime;
  if (sleepTimerTime < 0.0)
  {
    sleepTimerTime = -sleepTimerTime;
  }

  *v25.i64 = floor(sleepTimerTime + 0.5);
  v41 = (sleepTimerTime - *v25.i64) * 1.84467441e19;
  *v26.i64 = *v25.i64 - trunc(*v25.i64 * 5.42101086e-20) * 1.84467441e19;
  v42.f64[0] = NAN;
  v42.f64[1] = NAN;
  v25 = vbslq_s8(vnegq_f64(v42), v26, v25);
  v43 = 2654435761u * *v25.i64;
  if (v41 >= 0.0)
  {
    if (v41 > 0.0)
    {
      v43 += v41;
    }
  }

  else
  {
    v43 -= fabs(v41);
  }

LABEL_90:
  if ((*&v27 & 0x8000) != 0)
  {
    v55 = 2654435761 * self->_sleepTimerStopMode;
  }

  else
  {
    v55 = 0;
  }

  v58 = v32;
  v56 = v31;
  if (*&v27)
  {
    sleepTimerFireDate = self->_sleepTimerFireDate;
    if (sleepTimerFireDate < 0.0)
    {
      sleepTimerFireDate = -sleepTimerFireDate;
    }

    *v25.i64 = floor(sleepTimerFireDate + 0.5);
    v46 = (sleepTimerFireDate - *v25.i64) * 1.84467441e19;
    *v26.i64 = *v25.i64 - trunc(*v25.i64 * 5.42101086e-20) * 1.84467441e19;
    v47.f64[0] = NAN;
    v47.f64[1] = NAN;
    v44 = 2654435761u * *vbslq_s8(vnegq_f64(v47), v26, v25).i64;
    if (v46 >= 0.0)
    {
      if (v46 > 0.0)
      {
        v44 += v46;
      }
    }

    else
    {
      v44 -= fabs(v46);
    }
  }

  else
  {
    v44 = 0;
  }

  v48 = [(_MRDictionaryProtobuf *)self->_dialogOptions hash];
  v49 = [(NSString *)self->_lastSectionContentItemID hash];
  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    v50 = 2654435761 * self->_supportsReferencePosition;
  }

  else
  {
    v50 = 0;
  }

  v51 = [(_MRDictionaryProtobuf *)self->_playbackSessionRequirements hash];
  v52 = PBRepeatedFloatHash();
  if (*(&self->_has + 2))
  {
    v53 = 2654435761 * self->_transitionStyle;
  }

  else
  {
    v53 = 0;
  }

  return v87 ^ v88 ^ v86 ^ v85 ^ v83 ^ v82 ^ v81 ^ v84 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v56 ^ v58 ^ v36 ^ v57 ^ v43 ^ v55 ^ v44 ^ v48 ^ v49 ^ v50 ^ v51 ^ v52 ^ v53;
}

- (void)mergeFrom:(id)from
{
  v76 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 89);
  if ((v6 & 8) != 0)
  {
    self->_command = *(fromCopy + 43);
    *&self->_has |= 8u;
    v6 = *(fromCopy + 89);
    if ((v6 & 0x400000) == 0)
    {
LABEL_3:
      if ((v6 & 0x200000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 0x400000) == 0)
  {
    goto LABEL_3;
  }

  self->_enabled = *(fromCopy + 349);
  *&self->_has |= 0x400000u;
  if ((*(fromCopy + 89) & 0x200000) != 0)
  {
LABEL_4:
    self->_active = *(fromCopy + 348);
    *&self->_has |= 0x200000u;
  }

LABEL_5:
  preferredIntervalsCount = [fromCopy preferredIntervalsCount];
  if (preferredIntervalsCount)
  {
    v8 = preferredIntervalsCount;
    for (i = 0; i != v8; ++i)
    {
      [v5 preferredIntervalAtIndex:i];
      [(_MRCommandInfoProtobuf *)self addPreferredInterval:?];
    }
  }

  if (*(v5 + 28))
  {
    [(_MRCommandInfoProtobuf *)self setLocalizedTitle:?];
  }

  v10 = *(v5 + 89);
  if ((v10 & 0x80) != 0)
  {
    self->_minimumRating = *(v5 + 59);
    *&self->_has |= 0x80u;
    v10 = *(v5 + 89);
  }

  if ((v10 & 0x40) != 0)
  {
    self->_maximumRating = *(v5 + 58);
    *&self->_has |= 0x40u;
  }

  supportedRatesCount = [v5 supportedRatesCount];
  if (supportedRatesCount)
  {
    v12 = supportedRatesCount;
    for (j = 0; j != v12; ++j)
    {
      [v5 supportedRateAtIndex:j];
      [(_MRCommandInfoProtobuf *)self addSupportedRate:?];
    }
  }

  if (*(v5 + 27))
  {
    [(_MRCommandInfoProtobuf *)self setLocalizedShortTitle:?];
  }

  v14 = *(v5 + 89);
  if ((v14 & 0x800) != 0)
  {
    self->_repeatMode = *(v5 + 70);
    *&self->_has |= 0x800u;
    v14 = *(v5 + 89);
    if ((v14 & 0x1000) == 0)
    {
LABEL_21:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_82;
    }
  }

  else if ((v14 & 0x1000) == 0)
  {
    goto LABEL_21;
  }

  self->_shuffleMode = *(v5 + 71);
  *&self->_has |= 0x1000u;
  v14 = *(v5 + 89);
  if ((v14 & 0x400) == 0)
  {
LABEL_22:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_presentationStyle = *(v5 + 67);
  *&self->_has |= 0x400u;
  v14 = *(v5 + 89);
  if ((v14 & 0x4000) == 0)
  {
LABEL_23:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_84;
  }

LABEL_83:
  self->_skipInterval = *(v5 + 73);
  *&self->_has |= 0x4000u;
  v14 = *(v5 + 89);
  if ((v14 & 0x100) == 0)
  {
LABEL_24:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_numAvailableSkips = *(v5 + 60);
  *&self->_has |= 0x100u;
  v14 = *(v5 + 89);
  if ((v14 & 0x2000) == 0)
  {
LABEL_25:
    if ((v14 & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_85:
  self->_skipFrequency = *(v5 + 72);
  *&self->_has |= 0x2000u;
  if ((*(v5 + 89) & 4) != 0)
  {
LABEL_26:
    self->_canScrub = *(v5 + 42);
    *&self->_has |= 4u;
  }

LABEL_27:
  supportedPlaybackQueueTypesCount = [v5 supportedPlaybackQueueTypesCount];
  if (supportedPlaybackQueueTypesCount)
  {
    v16 = supportedPlaybackQueueTypesCount;
    for (k = 0; k != v16; ++k)
    {
      -[_MRCommandInfoProtobuf addSupportedPlaybackQueueTypes:](self, "addSupportedPlaybackQueueTypes:", [v5 supportedPlaybackQueueTypesAtIndex:k]);
    }
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v18 = *(v5 + 38);
  v19 = [v18 countByEnumeratingWithState:&v68 objects:v75 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v69;
    do
    {
      for (m = 0; m != v20; ++m)
      {
        if (*v69 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(_MRCommandInfoProtobuf *)self addSupportedCustomQueueIdentifier:*(*(&v68 + 1) + 8 * m)];
      }

      v20 = [v18 countByEnumeratingWithState:&v68 objects:v75 count:16];
    }

    while (v20);
  }

  supportedInsertionPositionsCount = [v5 supportedInsertionPositionsCount];
  if (supportedInsertionPositionsCount)
  {
    v24 = supportedInsertionPositionsCount;
    for (n = 0; n != v24; ++n)
    {
      -[_MRCommandInfoProtobuf addSupportedInsertionPositions:](self, "addSupportedInsertionPositions:", [v5 supportedInsertionPositionsAtIndex:n]);
    }
  }

  v26 = *(v5 + 89);
  if ((v26 & 0x20000) != 0)
  {
    self->_upNextItemCount = *(v5 + 83);
    *&self->_has |= 0x20000u;
    v26 = *(v5 + 89);
  }

  if ((v26 & 0x200) != 0)
  {
    self->_preferredPlaybackRate = *(v5 + 66);
    *&self->_has |= 0x200u;
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v27 = *(v5 + 40);
  v28 = [v27 countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v65;
    do
    {
      for (ii = 0; ii != v29; ++ii)
      {
        if (*v65 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [(_MRCommandInfoProtobuf *)self addSupportedPlaybackSessionTypes:*(*(&v64 + 1) + 8 * ii)];
      }

      v29 = [v27 countByEnumeratingWithState:&v64 objects:v74 count:16];
    }

    while (v29);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v32 = *(v5 + 22);
  v33 = [v32 countByEnumeratingWithState:&v60 objects:v73 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v61;
    do
    {
      for (jj = 0; jj != v34; ++jj)
      {
        if (*v61 != v35)
        {
          objc_enumerationMutation(v32);
        }

        [(_MRCommandInfoProtobuf *)self addCurrentPlaybackSessionTypes:*(*(&v60 + 1) + 8 * jj)];
      }

      v34 = [v32 countByEnumeratingWithState:&v60 objects:v73 count:16];
    }

    while (v34);
  }

  if (*(v5 + 31))
  {
    [(_MRCommandInfoProtobuf *)self setPlaybackSessionIdentifier:?];
  }

  if ((*(v5 + 356) & 0x10) != 0)
  {
    self->_currentQueueEndAction = *(v5 + 46);
    *&self->_has |= 0x10u;
  }

  supportedQueueEndActionsCount = [v5 supportedQueueEndActionsCount];
  if (supportedQueueEndActionsCount)
  {
    v38 = supportedQueueEndActionsCount;
    for (kk = 0; kk != v38; ++kk)
    {
      -[_MRCommandInfoProtobuf addSupportedQueueEndActions:](self, "addSupportedQueueEndActions:", [v5 supportedQueueEndActionsAtIndex:kk]);
    }
  }

  if ((*(v5 + 356) & 0x20) != 0)
  {
    self->_disabledReason = *(v5 + 50);
    *&self->_has |= 0x20u;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v40 = *(v5 + 39);
  v41 = [v40 countByEnumeratingWithState:&v56 objects:v72 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v57;
    do
    {
      for (mm = 0; mm != v42; ++mm)
      {
        if (*v57 != v43)
        {
          objc_enumerationMutation(v40);
        }

        [(_MRCommandInfoProtobuf *)self addSupportedPlaybackSessionIdentifiers:*(*(&v56 + 1) + 8 * mm), v56];
      }

      v42 = [v40 countByEnumeratingWithState:&v56 objects:v72 count:16];
    }

    while (v42);
  }

  proactiveCommandOptions = self->_proactiveCommandOptions;
  v46 = *(v5 + 34);
  if (proactiveCommandOptions)
  {
    if (v46)
    {
      [(_MRCommandOptionsProtobuf *)proactiveCommandOptions mergeFrom:?];
    }
  }

  else if (v46)
  {
    [(_MRCommandInfoProtobuf *)self setProactiveCommandOptions:?];
  }

  v47 = *(v5 + 89);
  if ((v47 & 0x1000000) != 0)
  {
    self->_vocalsControlActive = *(v5 + 351);
    *&self->_has |= 0x1000000u;
    v47 = *(v5 + 89);
    if ((v47 & 0x40000) == 0)
    {
LABEL_91:
      if ((v47 & 0x80000) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_103;
    }
  }

  else if ((v47 & 0x40000) == 0)
  {
    goto LABEL_91;
  }

  self->_vocalsControlLevel = *(v5 + 84);
  *&self->_has |= 0x40000u;
  v47 = *(v5 + 89);
  if ((v47 & 0x80000) == 0)
  {
LABEL_92:
    if ((v47 & 0x100000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_104;
  }

LABEL_103:
  self->_vocalsControlMaxLevel = *(v5 + 85);
  *&self->_has |= 0x80000u;
  v47 = *(v5 + 89);
  if ((v47 & 0x100000) == 0)
  {
LABEL_93:
    if ((v47 & 0x2000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_105;
  }

LABEL_104:
  self->_vocalsControlMinLevel = *(v5 + 86);
  *&self->_has |= 0x100000u;
  v47 = *(v5 + 89);
  if ((v47 & 0x2000000) == 0)
  {
LABEL_94:
    if ((v47 & 2) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_106;
  }

LABEL_105:
  self->_vocalsControlContinuous = *(v5 + 352);
  *&self->_has |= 0x2000000u;
  v47 = *(v5 + 89);
  if ((v47 & 2) == 0)
  {
LABEL_95:
    if ((v47 & 0x8000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_107;
  }

LABEL_106:
  self->_sleepTimerTime = *(v5 + 20);
  *&self->_has |= 2u;
  v47 = *(v5 + 89);
  if ((v47 & 0x8000) == 0)
  {
LABEL_96:
    if ((v47 & 1) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

LABEL_107:
  self->_sleepTimerStopMode = *(v5 + 74);
  *&self->_has |= 0x8000u;
  if (*(v5 + 89))
  {
LABEL_97:
    self->_sleepTimerFireDate = *(v5 + 19);
    *&self->_has |= 1u;
  }

LABEL_98:
  dialogOptions = self->_dialogOptions;
  v49 = *(v5 + 24);
  if (dialogOptions)
  {
    if (v49)
    {
      [(_MRDictionaryProtobuf *)dialogOptions mergeFrom:?];
    }
  }

  else if (v49)
  {
    [(_MRCommandInfoProtobuf *)self setDialogOptions:?];
  }

  if (*(v5 + 26))
  {
    [(_MRCommandInfoProtobuf *)self setLastSectionContentItemID:?];
  }

  if ((*(v5 + 358) & 0x80) != 0)
  {
    self->_supportsReferencePosition = *(v5 + 350);
    *&self->_has |= 0x800000u;
  }

  playbackSessionRequirements = self->_playbackSessionRequirements;
  v51 = *(v5 + 32);
  if (playbackSessionRequirements)
  {
    if (v51)
    {
      [(_MRDictionaryProtobuf *)playbackSessionRequirements mergeFrom:?];
    }
  }

  else if (v51)
  {
    [(_MRCommandInfoProtobuf *)self setPlaybackSessionRequirements:?];
  }

  extendedSupportedRatesCount = [v5 extendedSupportedRatesCount];
  if (extendedSupportedRatesCount)
  {
    v53 = extendedSupportedRatesCount;
    for (nn = 0; nn != v53; ++nn)
    {
      [v5 extendedSupportedRateAtIndex:nn];
      [(_MRCommandInfoProtobuf *)self addExtendedSupportedRate:?];
    }
  }

  if (*(v5 + 358))
  {
    self->_transitionStyle = *(v5 + 82);
    *&self->_has |= 0x10000u;
  }

  v55 = *MEMORY[0x1E69E9840];
}

@end