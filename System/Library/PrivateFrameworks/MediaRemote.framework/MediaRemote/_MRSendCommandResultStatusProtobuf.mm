@interface _MRSendCommandResultStatusProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsStatusCode:(id)code;
- (int)StringAsType:(id)type;
- (int)statusCode;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation _MRSendCommandResultStatusProtobuf

- (int)statusCode
{
  if (*&self->_has)
  {
    return self->_statusCode;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsStatusCode:(id)code
{
  codeCopy = code;
  if ([codeCopy isEqualToString:@"Success"])
  {
    v4 = 0;
  }

  else if ([codeCopy isEqualToString:@"NoSuchContent"])
  {
    v4 = 1;
  }

  else if ([codeCopy isEqualToString:@"CommandFailed"])
  {
    v4 = 2;
  }

  else if ([codeCopy isEqualToString:@"NoActionableNowPlayingItem"])
  {
    v4 = 10;
  }

  else if ([codeCopy isEqualToString:@"DeviceNotFound"])
  {
    v4 = 20;
  }

  else if ([codeCopy isEqualToString:@"UIKitLegacy"])
  {
    v4 = 3;
  }

  else if ([codeCopy isEqualToString:@"SkipAdProhibited"])
  {
    v4 = 100;
  }

  else if ([codeCopy isEqualToString:@"QueueIsUserCurated"])
  {
    v4 = 101;
  }

  else if ([codeCopy isEqualToString:@"UserModifiedQueueDisable"])
  {
    v4 = 102;
  }

  else if ([codeCopy isEqualToString:@"UserQueueModificationNotSupportedForCurrentItem"])
  {
    v4 = 103;
  }

  else if ([codeCopy isEqualToString:@"SubscriptionRequiredForSharedQueue"])
  {
    v4 = 104;
  }

  else if ([codeCopy isEqualToString:@"InsertionPositionNotSpecified"])
  {
    v4 = 105;
  }

  else if ([codeCopy isEqualToString:@"InvalidInsertionPosition"])
  {
    v4 = 106;
  }

  else if ([codeCopy isEqualToString:@"RequestParametersOutOfBounds"])
  {
    v4 = 107;
  }

  else if ([codeCopy isEqualToString:@"SkipLimitReached"])
  {
    v4 = 108;
  }

  else if ([codeCopy isEqualToString:@"CannotModifyQueueWithPlaybackTokenItems"])
  {
    v4 = 109;
  }

  else if ([codeCopy isEqualToString:@"AuthenticationFailure"])
  {
    v4 = 401;
  }

  else if ([codeCopy isEqualToString:@"MediaServicesUnavailable"])
  {
    v4 = 501;
  }

  else if ([codeCopy isEqualToString:@"Timeout"])
  {
    v4 = 555;
  }

  else if ([codeCopy isEqualToString:@"UnsupportedCommand"])
  {
    v4 = 404;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)type
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Dialog"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Error"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Custom"])
  {
    v4 = 999;
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
  v8.super_class = _MRSendCommandResultStatusProtobuf;
  v4 = [(_MRSendCommandResultStatusProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRSendCommandResultStatusProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    statusCode = self->_statusCode;
    if (statusCode > 103)
    {
      if (statusCode <= 108)
      {
        if (statusCode <= 105)
        {
          if (statusCode == 104)
          {
            v6 = @"SubscriptionRequiredForSharedQueue";
          }

          else
          {
            v6 = @"InsertionPositionNotSpecified";
          }
        }

        else if (statusCode == 106)
        {
          v6 = @"InvalidInsertionPosition";
        }

        else if (statusCode == 107)
        {
          v6 = @"RequestParametersOutOfBounds";
        }

        else
        {
          v6 = @"SkipLimitReached";
        }

        goto LABEL_47;
      }

      if (statusCode <= 403)
      {
        if (statusCode == 109)
        {
          v6 = @"CannotModifyQueueWithPlaybackTokenItems";
          goto LABEL_47;
        }

        if (statusCode == 401)
        {
          v6 = @"AuthenticationFailure";
          goto LABEL_47;
        }
      }

      else
      {
        switch(statusCode)
        {
          case 404:
            v6 = @"UnsupportedCommand";
            goto LABEL_47;
          case 501:
            v6 = @"MediaServicesUnavailable";
            goto LABEL_47;
          case 555:
            v6 = @"Timeout";
            goto LABEL_47;
        }
      }
    }

    else if (statusCode > 19)
    {
      if (statusCode > 100)
      {
        if (statusCode == 101)
        {
          v6 = @"QueueIsUserCurated";
        }

        else if (statusCode == 102)
        {
          v6 = @"UserModifiedQueueDisable";
        }

        else
        {
          v6 = @"UserQueueModificationNotSupportedForCurrentItem";
        }

        goto LABEL_47;
      }

      if (statusCode == 20)
      {
        v6 = @"DeviceNotFound";
        goto LABEL_47;
      }

      if (statusCode == 100)
      {
        v6 = @"SkipAdProhibited";
        goto LABEL_47;
      }
    }

    else if (statusCode <= 1)
    {
      if (!statusCode)
      {
        v6 = @"Success";
        goto LABEL_47;
      }

      if (statusCode == 1)
      {
        v6 = @"NoSuchContent";
        goto LABEL_47;
      }
    }

    else
    {
      switch(statusCode)
      {
        case 2:
          v6 = @"CommandFailed";
          goto LABEL_47;
        case 3:
          v6 = @"UIKitLegacy";
          goto LABEL_47;
        case 10:
          v6 = @"NoActionableNowPlayingItem";
LABEL_47:
          [dictionary setObject:v6 forKey:@"statusCode"];

          has = self->_has;
          goto LABEL_48;
      }
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_statusCode];
    goto LABEL_47;
  }

LABEL_48:
  if ((has & 2) == 0)
  {
    goto LABEL_60;
  }

  type = self->_type;
  if (type > 1)
  {
    if (type == 2)
    {
      v8 = @"Error";
      goto LABEL_59;
    }

    if (type == 999)
    {
      v8 = @"Custom";
      goto LABEL_59;
    }

LABEL_56:
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    goto LABEL_59;
  }

  if (!type)
  {
    v8 = @"Unknown";
    goto LABEL_59;
  }

  if (type != 1)
  {
    goto LABEL_56;
  }

  v8 = @"Dialog";
LABEL_59:
  [dictionary setObject:v8 forKey:@"type"];

LABEL_60:
  dialog = self->_dialog;
  if (dialog)
  {
    dictionaryRepresentation = [(_MRSendCommandResultHandlerDialogProtobuf *)dialog dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"dialog"];
  }

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation2 = [(_MRErrorProtobuf *)error dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"error"];
  }

  customData = self->_customData;
  if (customData)
  {
    [dictionary setObject:customData forKey:@"customData"];
  }

  customDataType = self->_customDataType;
  if (customDataType)
  {
    [dictionary setObject:customDataType forKey:@"customDataType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    statusCode = self->_statusCode;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_dialog)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_customData)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  if (self->_customDataType)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[10] = self->_statusCode;
    *(toCopy + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[11] = self->_type;
    *(toCopy + 48) |= 2u;
  }

  v6 = toCopy;
  if (self->_dialog)
  {
    [toCopy setDialog:?];
    toCopy = v6;
  }

  if (self->_error)
  {
    [v6 setError:?];
    toCopy = v6;
  }

  if (self->_customData)
  {
    [v6 setCustomData:?];
    toCopy = v6;
  }

  if (self->_customDataType)
  {
    [v6 setCustomDataType:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 40) = self->_statusCode;
    *(v5 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 44) = self->_type;
    *(v5 + 48) |= 2u;
  }

  v8 = [(_MRSendCommandResultHandlerDialogProtobuf *)self->_dialog copyWithZone:zone];
  v9 = v6[3];
  v6[3] = v8;

  v10 = [(_MRErrorProtobuf *)self->_error copyWithZone:zone];
  v11 = v6[4];
  v6[4] = v10;

  v12 = [(NSData *)self->_customData copyWithZone:zone];
  v13 = v6[1];
  v6[1] = v12;

  v14 = [(NSString *)self->_customDataType copyWithZone:zone];
  v15 = v6[2];
  v6[2] = v14;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_statusCode != *(equalCopy + 10))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_20:
    v10 = 0;
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_type != *(equalCopy + 11))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_20;
  }

  dialog = self->_dialog;
  if (dialog | *(equalCopy + 3) && ![(_MRSendCommandResultHandlerDialogProtobuf *)dialog isEqual:?])
  {
    goto LABEL_20;
  }

  error = self->_error;
  if (error | *(equalCopy + 4))
  {
    if (![(_MRErrorProtobuf *)error isEqual:?])
    {
      goto LABEL_20;
    }
  }

  customData = self->_customData;
  if (customData | *(equalCopy + 1))
  {
    if (![(NSData *)customData isEqual:?])
    {
      goto LABEL_20;
    }
  }

  customDataType = self->_customDataType;
  if (customDataType | *(equalCopy + 2))
  {
    v10 = [(NSString *)customDataType isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_21:

  return v10;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_statusCode;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_type;
LABEL_6:
  v5 = v4 ^ v3 ^ [(_MRSendCommandResultHandlerDialogProtobuf *)self->_dialog hash];
  v6 = [(_MRErrorProtobuf *)self->_error hash];
  v7 = v5 ^ v6 ^ [(NSData *)self->_customData hash];
  return v7 ^ [(NSString *)self->_customDataType hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 48);
  if (v6)
  {
    self->_statusCode = *(fromCopy + 10);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 48);
  }

  if ((v6 & 2) != 0)
  {
    self->_type = *(fromCopy + 11);
    *&self->_has |= 2u;
  }

  dialog = self->_dialog;
  v8 = v5[3];
  v11 = v5;
  if (dialog)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    [(_MRSendCommandResultHandlerDialogProtobuf *)dialog mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    [(_MRSendCommandResultStatusProtobuf *)self setDialog:?];
  }

  v5 = v11;
LABEL_11:
  error = self->_error;
  v10 = v5[4];
  if (error)
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    [(_MRErrorProtobuf *)error mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    [(_MRSendCommandResultStatusProtobuf *)self setError:?];
  }

  v5 = v11;
LABEL_17:
  if (v5[1])
  {
    [(_MRSendCommandResultStatusProtobuf *)self setCustomData:?];
    v5 = v11;
  }

  if (v5[2])
  {
    [(_MRSendCommandResultStatusProtobuf *)self setCustomDataType:?];
    v5 = v11;
  }
}

@end