@interface _MRMicrophoneConnectionResponseMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsResult:(id)a3;
- (int)result;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRMicrophoneConnectionResponseMessageProtobuf

- (int)result
{
  if (*&self->_has)
  {
    return self->_result;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsResult:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NotConnected"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NeedsGuestPairing"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Connected"])
  {
    v4 = 2;
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
  v8.super_class = _MRMicrophoneConnectionResponseMessageProtobuf;
  v4 = [(_MRMicrophoneConnectionResponseMessageProtobuf *)&v8 description];
  v5 = [(_MRMicrophoneConnectionResponseMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = self->_result;
    if (v4 >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_result];
    }

    else
    {
      v5 = off_1E769F8B8[v4];
    }

    [v3 setObject:v5 forKey:@"result"];
  }

  rapportIdentifier = self->_rapportIdentifier;
  if (rapportIdentifier)
  {
    [v3 setObject:rapportIdentifier forKey:@"rapportIdentifier"];
  }

  pairingData = self->_pairingData;
  if (pairingData)
  {
    [v3 setObject:pairingData forKey:@"pairingData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    result = self->_result;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_rapportIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_pairingData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_result;
    *(v4 + 28) |= 1u;
  }

  v5 = v4;
  if (self->_rapportIdentifier)
  {
    [v4 setRapportIdentifier:?];
    v4 = v5;
  }

  if (self->_pairingData)
  {
    [v5 setPairingData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_result;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_rapportIdentifier copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSData *)self->_pairingData copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_result != *(v4 + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  rapportIdentifier = self->_rapportIdentifier;
  if (rapportIdentifier | *(v4 + 2) && ![(NSString *)rapportIdentifier isEqual:?])
  {
    goto LABEL_11;
  }

  pairingData = self->_pairingData;
  if (pairingData | *(v4 + 1))
  {
    v8 = [(NSData *)pairingData isEqual:?];
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
    v3 = 2654435761 * self->_result;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_rapportIdentifier hash]^ v3;
  return v4 ^ [(NSData *)self->_pairingData hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[7])
  {
    self->_result = v4[6];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 2))
  {
    [(_MRMicrophoneConnectionResponseMessageProtobuf *)self setRapportIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(_MRMicrophoneConnectionResponseMessageProtobuf *)self setPairingData:?];
    v4 = v5;
  }
}

@end