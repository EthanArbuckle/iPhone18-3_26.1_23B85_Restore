@interface _MRReceivedCommandProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCommand:(id)a3;
- (int)command;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCommand:(BOOL)a3;
- (void)setHasOriginUID:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRReceivedCommandProtobuf

- (int)command
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_command;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCommand:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
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

- (void)setHasOriginUID:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRReceivedCommandProtobuf;
  v4 = [(_MRReceivedCommandProtobuf *)&v8 description];
  v5 = [(_MRReceivedCommandProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
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

  if ((*&self->_has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_originUID];
    [v3 setObject:v7 forKey:@"originUID"];
  }

  senderAppDisplayID = self->_senderAppDisplayID;
  if (senderAppDisplayID)
  {
    [v3 setObject:senderAppDisplayID forKey:@"senderAppDisplayID"];
  }

  destinationAppDisplayID = self->_destinationAppDisplayID;
  if (destinationAppDisplayID)
  {
    [v3 setObject:destinationAppDisplayID forKey:@"destinationAppDisplayID"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_destinationAppProcessID];
    [v3 setObject:v10 forKey:@"destinationAppProcessID"];
  }

  remoteControlInterfaceID = self->_remoteControlInterfaceID;
  if (remoteControlInterfaceID)
  {
    [v3 setObject:remoteControlInterfaceID forKey:@"remoteControlInterfaceID"];
  }

  appOptions = self->_appOptions;
  if (appOptions)
  {
    v13 = [(_MRReceivedCommandAppOptionsProtobuf *)appOptions dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"appOptions"];
  }

  playerPath = self->_playerPath;
  if (playerPath)
  {
    v15 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"playerPath"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if ((*&self->_has & 2) != 0)
  {
    command = self->_command;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_options)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if ((*&self->_has & 4) != 0)
  {
    originUID = self->_originUID;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_senderAppDisplayID)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_destinationAppDisplayID)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (*&self->_has)
  {
    destinationAppProcessID = self->_destinationAppProcessID;
    PBDataWriterWriteInt64Field();
    v4 = v8;
  }

  if (self->_remoteControlInterfaceID)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_appOptions)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_playerPath)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[6] = self->_command;
    *(v4 + 80) |= 2u;
  }

  v5 = v4;
  if (self->_options)
  {
    [v4 setOptions:?];
    v4 = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    v4[12] = self->_originUID;
    *(v4 + 80) |= 4u;
  }

  if (self->_senderAppDisplayID)
  {
    [v5 setSenderAppDisplayID:?];
    v4 = v5;
  }

  if (self->_destinationAppDisplayID)
  {
    [v5 setDestinationAppDisplayID:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_destinationAppProcessID;
    *(v4 + 80) |= 1u;
  }

  if (self->_remoteControlInterfaceID)
  {
    [v5 setRemoteControlInterfaceID:?];
    v4 = v5;
  }

  if (self->_appOptions)
  {
    [v5 setAppOptions:?];
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
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 24) = self->_command;
    *(v5 + 80) |= 2u;
  }

  v7 = [(_MRCommandOptionsProtobuf *)self->_options copyWithZone:a3];
  v8 = *(v6 + 40);
  *(v6 + 40) = v7;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 48) = self->_originUID;
    *(v6 + 80) |= 4u;
  }

  v9 = [(NSString *)self->_senderAppDisplayID copyWithZone:a3];
  v10 = *(v6 + 72);
  *(v6 + 72) = v9;

  v11 = [(NSString *)self->_destinationAppDisplayID copyWithZone:a3];
  v12 = *(v6 + 32);
  *(v6 + 32) = v11;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_destinationAppProcessID;
    *(v6 + 80) |= 1u;
  }

  v13 = [(NSString *)self->_remoteControlInterfaceID copyWithZone:a3];
  v14 = *(v6 + 64);
  *(v6 + 64) = v13;

  v15 = [(_MRReceivedCommandAppOptionsProtobuf *)self->_appOptions copyWithZone:a3];
  v16 = *(v6 + 16);
  *(v6 + 16) = v15;

  v17 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:a3];
  v18 = *(v6 + 56);
  *(v6 + 56) = v17;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  has = self->_has;
  v6 = *(v4 + 80);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 80) & 2) == 0 || self->_command != *(v4 + 6))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 80) & 2) != 0)
  {
    goto LABEL_30;
  }

  options = self->_options;
  if (options | *(v4 + 5))
  {
    if (![(_MRCommandOptionsProtobuf *)options isEqual:?])
    {
LABEL_30:
      v15 = 0;
      goto LABEL_31;
    }

    has = self->_has;
  }

  v8 = *(v4 + 80);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 80) & 4) == 0 || self->_originUID != *(v4 + 12))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 80) & 4) != 0)
  {
    goto LABEL_30;
  }

  senderAppDisplayID = self->_senderAppDisplayID;
  if (senderAppDisplayID | *(v4 + 9) && ![(NSString *)senderAppDisplayID isEqual:?])
  {
    goto LABEL_30;
  }

  destinationAppDisplayID = self->_destinationAppDisplayID;
  if (destinationAppDisplayID | *(v4 + 4))
  {
    if (![(NSString *)destinationAppDisplayID isEqual:?])
    {
      goto LABEL_30;
    }
  }

  v11 = *(v4 + 80);
  if (*&self->_has)
  {
    if ((*(v4 + 80) & 1) == 0 || self->_destinationAppProcessID != *(v4 + 1))
    {
      goto LABEL_30;
    }
  }

  else if (*(v4 + 80))
  {
    goto LABEL_30;
  }

  remoteControlInterfaceID = self->_remoteControlInterfaceID;
  if (remoteControlInterfaceID | *(v4 + 8) && ![(NSString *)remoteControlInterfaceID isEqual:?])
  {
    goto LABEL_30;
  }

  appOptions = self->_appOptions;
  if (appOptions | *(v4 + 2))
  {
    if (![(_MRReceivedCommandAppOptionsProtobuf *)appOptions isEqual:?])
    {
      goto LABEL_30;
    }
  }

  playerPath = self->_playerPath;
  if (playerPath | *(v4 + 7))
  {
    v15 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_31:

  return v15;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_command;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_MRCommandOptionsProtobuf *)self->_options hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_originUID;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_senderAppDisplayID hash];
  v7 = [(NSString *)self->_destinationAppDisplayID hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_destinationAppProcessID;
  }

  else
  {
    v8 = 0;
  }

  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_remoteControlInterfaceID hash];
  v10 = [(_MRReceivedCommandAppOptionsProtobuf *)self->_appOptions hash];
  return v9 ^ v10 ^ [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((v4[20] & 2) != 0)
  {
    self->_command = v4[6];
    *&self->_has |= 2u;
  }

  options = self->_options;
  v7 = *(v5 + 5);
  v12 = v5;
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

    [(_MRReceivedCommandProtobuf *)self setOptions:?];
  }

  v5 = v12;
LABEL_9:
  if ((*(v5 + 80) & 4) != 0)
  {
    self->_originUID = *(v5 + 12);
    *&self->_has |= 4u;
  }

  if (*(v5 + 9))
  {
    [(_MRReceivedCommandProtobuf *)self setSenderAppDisplayID:?];
    v5 = v12;
  }

  if (*(v5 + 4))
  {
    [(_MRReceivedCommandProtobuf *)self setDestinationAppDisplayID:?];
    v5 = v12;
  }

  if (*(v5 + 80))
  {
    self->_destinationAppProcessID = *(v5 + 1);
    *&self->_has |= 1u;
  }

  if (*(v5 + 8))
  {
    [(_MRReceivedCommandProtobuf *)self setRemoteControlInterfaceID:?];
    v5 = v12;
  }

  appOptions = self->_appOptions;
  v9 = *(v5 + 2);
  if (appOptions)
  {
    if (!v9)
    {
      goto LABEL_25;
    }

    [(_MRReceivedCommandAppOptionsProtobuf *)appOptions mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_25;
    }

    [(_MRReceivedCommandProtobuf *)self setAppOptions:?];
  }

  v5 = v12;
LABEL_25:
  playerPath = self->_playerPath;
  v11 = *(v5 + 7);
  if (playerPath)
  {
    if (!v11)
    {
      goto LABEL_31;
    }

    [(_MRNowPlayingPlayerPathProtobuf *)playerPath mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_31;
    }

    [(_MRReceivedCommandProtobuf *)self setPlayerPath:?];
  }

  v5 = v12;
LABEL_31:
}

@end