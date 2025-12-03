@interface PKProtobufSubcredentialInvitationMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)statusAsString:(int)string;
- (int)StringAsStatus:(id)status;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufSubcredentialInvitationMessage

- (int)status
{
  if (*&self->_has)
  {
    return self->_status;
  }

  else
  {
    return 5;
  }
}

- (id)statusAsString:(int)string
{
  if (string >= 6)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E79D10D8[string];
  }

  return v4;
}

- (int)StringAsStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"PENDING"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"ACCEPTED"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"EXPIRED"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"REVOKED"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"CANCELLED"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 5;
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
  v8.super_class = PKProtobufSubcredentialInvitationMessage;
  v4 = [(PKProtobufSubcredentialInvitationMessage *)&v8 description];
  dictionaryRepresentation = [(PKProtobufSubcredentialInvitationMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v4 forKey:@"version"];

  phoneInvitation = self->_phoneInvitation;
  if (phoneInvitation)
  {
    [dictionary setObject:phoneInvitation forKey:@"phoneInvitation"];
  }

  if (*&self->_has)
  {
    status = self->_status;
    if (status >= 6)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_status];
    }

    else
    {
      v7 = off_1E79D10D8[status];
    }

    [dictionary setObject:v7 forKey:@"status"];
  }

  dataString = self->_dataString;
  if (dataString)
  {
    [dictionary setObject:dataString forKey:@"dataString"];
  }

  watchInvitation = self->_watchInvitation;
  if (watchInvitation)
  {
    [dictionary setObject:watchInvitation forKey:@"watchInvitation"];
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [dictionary setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  }

  passThumbnailImage = self->_passThumbnailImage;
  if (passThumbnailImage)
  {
    [dictionary setObject:passThumbnailImage forKey:@"passThumbnailImage"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  if (self->_phoneInvitation)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = toCopy;
  if (self->_dataString)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_watchInvitation)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_uniqueIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_passThumbnailImage)
  {
    PBDataWriterWriteDataField();
    v4 = toCopy;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[12] = self->_version;
  v5 = toCopy;
  if (self->_phoneInvitation)
  {
    [toCopy setPhoneInvitation:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[8] = self->_status;
    *(toCopy + 64) |= 1u;
  }

  if (self->_dataString)
  {
    [v5 setDataString:?];
    toCopy = v5;
  }

  if (self->_watchInvitation)
  {
    [v5 setWatchInvitation:?];
    toCopy = v5;
  }

  if (self->_uniqueIdentifier)
  {
    [v5 setUniqueIdentifier:?];
    toCopy = v5;
  }

  if (self->_passThumbnailImage)
  {
    [v5 setPassThumbnailImage:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 48) = self->_version;
  v6 = [(NSString *)self->_phoneInvitation copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_status;
    *(v5 + 64) |= 1u;
  }

  v8 = [(NSString *)self->_dataString copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSString *)self->_watchInvitation copyWithZone:zone];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(NSString *)self->_uniqueIdentifier copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSData *)self->_passThumbnailImage copyWithZone:zone];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  if (self->_version != *(equalCopy + 12))
  {
    goto LABEL_18;
  }

  phoneInvitation = self->_phoneInvitation;
  if (phoneInvitation | *(equalCopy + 3))
  {
    if (![(NSString *)phoneInvitation isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_status != *(equalCopy + 8))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  dataString = self->_dataString;
  if (dataString | *(equalCopy + 1) && ![(NSString *)dataString isEqual:?])
  {
    goto LABEL_18;
  }

  watchInvitation = self->_watchInvitation;
  if (watchInvitation | *(equalCopy + 7))
  {
    if (![(NSString *)watchInvitation isEqual:?])
    {
      goto LABEL_18;
    }
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier | *(equalCopy + 5))
  {
    if (![(NSString *)uniqueIdentifier isEqual:?])
    {
      goto LABEL_18;
    }
  }

  passThumbnailImage = self->_passThumbnailImage;
  if (passThumbnailImage | *(equalCopy + 2))
  {
    v10 = [(NSData *)passThumbnailImage isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_19:

  return v10;
}

- (unint64_t)hash
{
  version = self->_version;
  v4 = [(NSString *)self->_phoneInvitation hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_status;
  }

  else
  {
    v5 = 0;
  }

  v6 = 2654435761 * version;
  v7 = v4 ^ v5 ^ [(NSString *)self->_dataString hash];
  v8 = v7 ^ [(NSString *)self->_watchInvitation hash]^ v6;
  v9 = [(NSString *)self->_uniqueIdentifier hash];
  return v8 ^ v9 ^ [(NSData *)self->_passThumbnailImage hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_version = fromCopy[12];
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(PKProtobufSubcredentialInvitationMessage *)self setPhoneInvitation:?];
    fromCopy = v5;
  }

  if (fromCopy[16])
  {
    self->_status = fromCopy[8];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(PKProtobufSubcredentialInvitationMessage *)self setDataString:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 7))
  {
    [(PKProtobufSubcredentialInvitationMessage *)self setWatchInvitation:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(PKProtobufSubcredentialInvitationMessage *)self setUniqueIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(PKProtobufSubcredentialInvitationMessage *)self setPassThumbnailImage:?];
    fromCopy = v5;
  }
}

@end