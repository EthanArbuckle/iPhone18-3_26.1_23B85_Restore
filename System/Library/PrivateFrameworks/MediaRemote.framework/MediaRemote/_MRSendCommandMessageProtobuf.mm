@interface _MRSendCommandMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCommand:(id)command;
- (int)command;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRSendCommandMessageProtobuf

- (int)command
{
  if (*&self->_has)
  {
    return self->_command;
  }

  else
  {
    return 0;
  }
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSendCommandMessageProtobuf;
  v4 = [(_MRSendCommandMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRSendCommandMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = @"Unknown";
    switch(self->_command)
    {
      case 0:
        break;
      case 1:
        v4 = @"Play";
        break;
      case 2:
        v4 = @"Pause";
        break;
      case 3:
        v4 = @"TogglePlayPause";
        break;
      case 4:
        v4 = @"Stop";
        break;
      case 5:
        v4 = @"NextTrack";
        break;
      case 6:
        v4 = @"PreviousTrack";
        break;
      case 7:
        v4 = @"AdvanceShuffleMode";
        break;
      case 8:
        v4 = @"AdvanceRepeatMode";
        break;
      case 9:
        v4 = @"BeginFastForward";
        break;
      case 0xA:
        v4 = @"EndFastForward";
        break;
      case 0xB:
        v4 = @"BeginRewind";
        break;
      case 0xC:
        v4 = @"EndRewind";
        break;
      case 0xD:
        v4 = @"Rewind15Seconds";
        break;
      case 0xE:
        v4 = @"FastForward15Seconds";
        break;
      case 0xF:
        v4 = @"Rewind30Seconds";
        break;
      case 0x10:
        v4 = @"FastForward30Seconds";
        break;
      case 0x12:
        v4 = @"SkipForward";
        break;
      case 0x13:
        v4 = @"SkipBackward";
        break;
      case 0x14:
        v4 = @"ChangePlaybackRate";
        break;
      case 0x15:
        v4 = @"RateTrack";
        break;
      case 0x16:
        v4 = @"LikeTrack";
        break;
      case 0x17:
        v4 = @"DislikeTrack";
        break;
      case 0x18:
        v4 = @"BookmarkTrack";
        break;
      case 0x19:
        v4 = @"NextChapter";
        break;
      case 0x1A:
        v4 = @"PreviousChapter";
        break;
      case 0x1B:
        v4 = @"NextAlbum";
        break;
      case 0x1C:
        v4 = @"PreviousAlbum";
        break;
      case 0x1D:
        v4 = @"NextPlaylist";
        break;
      case 0x1E:
        v4 = @"PreviousPlaylist";
        break;
      case 0x1F:
        v4 = @"BanTrack";
        break;
      case 0x20:
        v4 = @"AddTrackToWishList";
        break;
      case 0x21:
        v4 = @"RemoveTrackFromWishList";
        break;
      case 0x22:
        v4 = @"NextInContext";
        break;
      case 0x23:
        v4 = @"PreviousInContext";
        break;
      case 0x29:
        v4 = @"ResetPlaybackTimeout";
        break;
      case 0x2D:
        v4 = @"SeekToPlaybackPosition";
        break;
      case 0x2E:
        v4 = @"ChangeRepeatMode";
        break;
      case 0x2F:
        v4 = @"ChangeShuffleMode";
        break;
      case 0x30:
        v4 = @"SetPlaybackQueue";
        break;
      case 0x31:
        v4 = @"AddNowPlayingItemToLibrary";
        break;
      case 0x32:
        v4 = @"CreateRadioStation";
        break;
      case 0x33:
        v4 = @"AddItemToLibrary";
        break;
      case 0x34:
        v4 = @"InsertIntoPlaybackQueue";
        break;
      case 0x35:
        v4 = @"EnableLanguageOption";
        break;
      case 0x36:
        v4 = @"DisableLanguageOption";
        break;
      case 0x37:
        v4 = @"ReorderPlaybackQueue";
        break;
      case 0x38:
        v4 = @"RemoveFromPlaybackQueue";
        break;
      case 0x39:
        v4 = @"PlayItemInPlaybackQueue";
        break;
      case 0x3A:
        v4 = @"PrepareForSetQueue";
        break;
      case 0x3B:
        v4 = @"SetPlaybackSession";
        break;
      case 0x3C:
        v4 = @"PreloadPlaybackSession";
        break;
      case 0x3D:
        v4 = @"SetPriorityForPlaybackSession";
        break;
      case 0x3E:
        v4 = @"DiscardPlaybackSession";
        break;
      case 0x3F:
        v4 = @"Reshuffle";
        break;
      case 0x40:
        v4 = @"LeaveSharedPlaybackSession";
        break;
      case 0x41:
        v4 = @"PostEventNotice";
        break;
      case 0x7C:
        v4 = @"SetSleepTimer";
        break;
      case 0x87:
        v4 = @"ChangeQueueEndAction";
        break;
      case 0x8E:
        v4 = @"VocalsControl";
        break;
      case 0x8F:
        v4 = @"PrepareVocalsControl";
        break;
      case 0x90:
        v4 = @"ClearUpNextQueue";
        break;
      case 0x91:
        v4 = @"PerformDialogAction";
        break;
      case 0x92:
        v4 = @"DelegateAccount";
        break;
      case 0x93:
        v4 = @"EnhanceDialogue";
        break;
      case 0x95:
        v4 = @"ToggleTransitions";
        break;
      default:
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_command];
        break;
    }

    [dictionary setObject:v4 forKey:@"command"];
  }

  options = self->_options;
  if (options)
  {
    dictionaryRepresentation = [(_MRCommandOptionsProtobuf *)options dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"options"];
  }

  playerPath = self->_playerPath;
  if (playerPath)
  {
    dictionaryRepresentation2 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"playerPath"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    command = self->_command;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_options)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_playerPath)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_command;
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_options)
  {
    [toCopy setOptions:?];
    toCopy = v5;
  }

  if (self->_playerPath)
  {
    [v5 setPlayerPath:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_command;
    *(v5 + 32) |= 1u;
  }

  v7 = [(_MRCommandOptionsProtobuf *)self->_options copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_command != *(equalCopy + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  options = self->_options;
  if (options | *(equalCopy + 2) && ![(_MRCommandOptionsProtobuf *)options isEqual:?])
  {
    goto LABEL_11;
  }

  playerPath = self->_playerPath;
  if (playerPath | *(equalCopy + 3))
  {
    v8 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_command;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_MRCommandOptionsProtobuf *)self->_options hash]^ v3;
  return v4 ^ [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 32))
  {
    self->_command = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  options = self->_options;
  v7 = v5[2];
  v10 = v5;
  if (options)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(_MRCommandOptionsProtobuf *)options mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(_MRSendCommandMessageProtobuf *)self setOptions:?];
  }

  v5 = v10;
LABEL_9:
  playerPath = self->_playerPath;
  v9 = v5[3];
  if (playerPath)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(_MRNowPlayingPlayerPathProtobuf *)playerPath mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(_MRSendCommandMessageProtobuf *)self setPlayerPath:?];
  }

  v5 = v10;
LABEL_15:
}

@end