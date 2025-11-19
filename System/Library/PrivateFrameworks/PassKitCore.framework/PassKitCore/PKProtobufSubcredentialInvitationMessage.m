@interface PKProtobufSubcredentialInvitationMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)statusAsString:(int)a3;
- (int)StringAsStatus:(id)a3;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (id)statusAsString:(int)a3
{
  if (a3 >= 6)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E79D10D8[a3];
  }

  return v4;
}

- (int)StringAsStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PENDING"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ACCEPTED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"EXPIRED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"REVOKED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CANCELLED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"UNKNOWN"])
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
  v5 = [(PKProtobufSubcredentialInvitationMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [v3 setObject:v4 forKey:@"version"];

  phoneInvitation = self->_phoneInvitation;
  if (phoneInvitation)
  {
    [v3 setObject:phoneInvitation forKey:@"phoneInvitation"];
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

    [v3 setObject:v7 forKey:@"status"];
  }

  dataString = self->_dataString;
  if (dataString)
  {
    [v3 setObject:dataString forKey:@"dataString"];
  }

  watchInvitation = self->_watchInvitation;
  if (watchInvitation)
  {
    [v3 setObject:watchInvitation forKey:@"watchInvitation"];
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [v3 setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  }

  passThumbnailImage = self->_passThumbnailImage;
  if (passThumbnailImage)
  {
    [v3 setObject:passThumbnailImage forKey:@"passThumbnailImage"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  PBDataWriterWriteUint32Field();
  if (self->_phoneInvitation)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = v5;
  if (self->_dataString)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_watchInvitation)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_uniqueIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_passThumbnailImage)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[12] = self->_version;
  v5 = v4;
  if (self->_phoneInvitation)
  {
    [v4 setPhoneInvitation:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[8] = self->_status;
    *(v4 + 64) |= 1u;
  }

  if (self->_dataString)
  {
    [v5 setDataString:?];
    v4 = v5;
  }

  if (self->_watchInvitation)
  {
    [v5 setWatchInvitation:?];
    v4 = v5;
  }

  if (self->_uniqueIdentifier)
  {
    [v5 setUniqueIdentifier:?];
    v4 = v5;
  }

  if (self->_passThumbnailImage)
  {
    [v5 setPassThumbnailImage:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 48) = self->_version;
  v6 = [(NSString *)self->_phoneInvitation copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_status;
    *(v5 + 64) |= 1u;
  }

  v8 = [(NSString *)self->_dataString copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSString *)self->_watchInvitation copyWithZone:a3];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(NSString *)self->_uniqueIdentifier copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSData *)self->_passThumbnailImage copyWithZone:a3];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  if (self->_version != *(v4 + 12))
  {
    goto LABEL_18;
  }

  phoneInvitation = self->_phoneInvitation;
  if (phoneInvitation | *(v4 + 3))
  {
    if (![(NSString *)phoneInvitation isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_status != *(v4 + 8))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  dataString = self->_dataString;
  if (dataString | *(v4 + 1) && ![(NSString *)dataString isEqual:?])
  {
    goto LABEL_18;
  }

  watchInvitation = self->_watchInvitation;
  if (watchInvitation | *(v4 + 7))
  {
    if (![(NSString *)watchInvitation isEqual:?])
    {
      goto LABEL_18;
    }
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier | *(v4 + 5))
  {
    if (![(NSString *)uniqueIdentifier isEqual:?])
    {
      goto LABEL_18;
    }
  }

  passThumbnailImage = self->_passThumbnailImage;
  if (passThumbnailImage | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_version = v4[12];
  v5 = v4;
  if (*(v4 + 3))
  {
    [(PKProtobufSubcredentialInvitationMessage *)self setPhoneInvitation:?];
    v4 = v5;
  }

  if (v4[16])
  {
    self->_status = v4[8];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(PKProtobufSubcredentialInvitationMessage *)self setDataString:?];
    v4 = v5;
  }

  if (*(v4 + 7))
  {
    [(PKProtobufSubcredentialInvitationMessage *)self setWatchInvitation:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(PKProtobufSubcredentialInvitationMessage *)self setUniqueIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(PKProtobufSubcredentialInvitationMessage *)self setPassThumbnailImage:?];
    v4 = v5;
  }
}

@end