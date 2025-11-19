@interface _MRSendCommandMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCommand:(id)a3;
- (int)command;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsCommand:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Play"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Pause"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"TogglePlayPause"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Stop"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"NextTrack"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PreviousTrack"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"AdvanceShuffleMode"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"AdvanceRepeatMode"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"BeginFastForward"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"EndFastForward"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"BeginRewind"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"EndRewind"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"Rewind15Seconds"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"FastForward15Seconds"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"Rewind30Seconds"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"FastForward30Seconds"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"SkipForward"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"SkipBackward"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"ChangePlaybackRate"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"RateTrack"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"LikeTrack"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"DislikeTrack"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"BookmarkTrack"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"SeekToPlaybackPosition"])
  {
    v4 = 45;
  }

  else if ([v3 isEqualToString:@"ChangeRepeatMode"])
  {
    v4 = 46;
  }

  else if ([v3 isEqualToString:@"ChangeShuffleMode"])
  {
    v4 = 47;
  }

  else if ([v3 isEqualToString:@"EnableLanguageOption"])
  {
    v4 = 53;
  }

  else if ([v3 isEqualToString:@"DisableLanguageOption"])
  {
    v4 = 54;
  }

  else if ([v3 isEqualToString:@"NextChapter"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"PreviousChapter"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"NextAlbum"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"PreviousAlbum"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"NextPlaylist"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"PreviousPlaylist"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"BanTrack"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"AddTrackToWishList"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"RemoveTrackFromWishList"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"NextInContext"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"PreviousInContext"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"ResetPlaybackTimeout"])
  {
    v4 = 41;
  }

  else if ([v3 isEqualToString:@"SetPlaybackQueue"])
  {
    v4 = 48;
  }

  else if ([v3 isEqualToString:@"AddNowPlayingItemToLibrary"])
  {
    v4 = 49;
  }

  else if ([v3 isEqualToString:@"CreateRadioStation"])
  {
    v4 = 50;
  }

  else if ([v3 isEqualToString:@"AddItemToLibrary"])
  {
    v4 = 51;
  }

  else if ([v3 isEqualToString:@"InsertIntoPlaybackQueue"])
  {
    v4 = 52;
  }

  else if ([v3 isEqualToString:@"ReorderPlaybackQueue"])
  {
    v4 = 55;
  }

  else if ([v3 isEqualToString:@"RemoveFromPlaybackQueue"])
  {
    v4 = 56;
  }

  else if ([v3 isEqualToString:@"PlayItemInPlaybackQueue"])
  {
    v4 = 57;
  }

  else if ([v3 isEqualToString:@"PrepareForSetQueue"])
  {
    v4 = 58;
  }

  else if ([v3 isEqualToString:@"SetPlaybackSession"])
  {
    v4 = 59;
  }

  else if ([v3 isEqualToString:@"PreloadPlaybackSession"])
  {
    v4 = 60;
  }

  else if ([v3 isEqualToString:@"SetPriorityForPlaybackSession"])
  {
    v4 = 61;
  }

  else if ([v3 isEqualToString:@"DiscardPlaybackSession"])
  {
    v4 = 62;
  }

  else if ([v3 isEqualToString:@"Reshuffle"])
  {
    v4 = 63;
  }

  else if ([v3 isEqualToString:@"LeaveSharedPlaybackSession"])
  {
    v4 = 64;
  }

  else if ([v3 isEqualToString:@"PostEventNotice"])
  {
    v4 = 65;
  }

  else if ([v3 isEqualToString:@"SetSleepTimer"])
  {
    v4 = 124;
  }

  else if ([v3 isEqualToString:@"ChangeQueueEndAction"])
  {
    v4 = 135;
  }

  else if ([v3 isEqualToString:@"VocalsControl"])
  {
    v4 = 142;
  }

  else if ([v3 isEqualToString:@"PrepareVocalsControl"])
  {
    v4 = 143;
  }

  else if ([v3 isEqualToString:@"ClearUpNextQueue"])
  {
    v4 = 144;
  }

  else if ([v3 isEqualToString:@"PerformDialogAction"])
  {
    v4 = 145;
  }

  else if ([v3 isEqualToString:@"DelegateAccount"])
  {
    v4 = 146;
  }

  else if ([v3 isEqualToString:@"EnhanceDialogue"])
  {
    v4 = 147;
  }

  else if ([v3 isEqualToString:@"ToggleTransitions"])
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
  v5 = [(_MRSendCommandMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v4 forKey:@"command"];
  }

  options = self->_options;
  if (options)
  {
    v6 = [(_MRCommandOptionsProtobuf *)options dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"options"];
  }

  playerPath = self->_playerPath;
  if (playerPath)
  {
    v8 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"playerPath"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    command = self->_command;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_options)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_playerPath)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_command;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_options)
  {
    [v4 setOptions:?];
    v4 = v5;
  }

  if (self->_playerPath)
  {
    [v5 setPlayerPath:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_command;
    *(v5 + 32) |= 1u;
  }

  v7 = [(_MRCommandOptionsProtobuf *)self->_options copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_command != *(v4 + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  options = self->_options;
  if (options | *(v4 + 2) && ![(_MRCommandOptionsProtobuf *)options isEqual:?])
  {
    goto LABEL_11;
  }

  playerPath = self->_playerPath;
  if (playerPath | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 32))
  {
    self->_command = *(v4 + 2);
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