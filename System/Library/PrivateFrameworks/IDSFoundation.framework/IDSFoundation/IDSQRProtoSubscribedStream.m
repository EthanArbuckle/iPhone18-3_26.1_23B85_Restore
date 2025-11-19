@interface IDSQRProtoSubscribedStream
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)peerStreamIdsAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasIsSeamlessTransition:(BOOL)a3;
- (void)setHasWildcardSubscription:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoSubscribedStream

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = IDSQRProtoSubscribedStream;
  [(IDSQRProtoSubscribedStream *)&v3 dealloc];
}

- (void)setHasWildcardSubscription:(BOOL)a3
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

- (unsigned)peerStreamIdsAtIndex:(unint64_t)a3
{
  p_peerStreamIds = &self->_peerStreamIds;
  count = self->_peerStreamIds.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_peerStreamIds->list[a3];
}

- (void)setHasIsSeamlessTransition:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoSubscribedStream;
  v4 = [(IDSQRProtoSubscribedStream *)&v8 description];
  v5 = [(IDSQRProtoSubscribedStream *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_wildcardSubscription];
    [v3 setObject:v5 forKey:@"wildcard_subscription"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_peerParticipantId];
    [v3 setObject:v6 forKey:@"peer_participant_id"];
  }

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"peer_stream_ids"];

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSeamlessTransition];
    [v3 setObject:v8 forKey:@"is_seamless_transition"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v7 = v4;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v7;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteUint64Field();
    v4 = v7;
  }

  if (self->_peerStreamIds.count)
  {
    v6 = 0;
    do
    {
      PBDataWriterWriteUint32Field();
      v4 = v7;
      ++v6;
    }

    while (v6 < self->_peerStreamIds.count);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[41] = self->_wildcardSubscription;
    v4[44] |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 4) = self->_peerParticipantId;
    v4[44] |= 1u;
  }

  v9 = v4;
  if ([(IDSQRProtoSubscribedStream *)self peerStreamIdsCount])
  {
    [v9 clearPeerStreamIds];
    v6 = [(IDSQRProtoSubscribedStream *)self peerStreamIdsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [v9 addPeerStreamIds:{-[IDSQRProtoSubscribedStream peerStreamIdsAtIndex:](self, "peerStreamIdsAtIndex:", i)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v9[40] = self->_isSeamlessTransition;
    v9[44] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 41) = self->_wildcardSubscription;
    *(v4 + 44) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 32) = self->_peerParticipantId;
    *(v4 + 44) |= 1u;
  }

  PBRepeatedUInt32Copy();
  if ((*&self->_has & 2) != 0)
  {
    v5[40] = self->_isSeamlessTransition;
    v5[44] |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0)
    {
      goto LABEL_20;
    }

    if (self->_wildcardSubscription)
    {
      if ((*(v4 + 41) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else if (*(v4 + 41))
    {
      goto LABEL_20;
    }
  }

  else if ((*(v4 + 44) & 4) != 0)
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_peerParticipantId != *(v4 + 4))
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_20;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
LABEL_20:
    v5 = 0;
    goto LABEL_21;
  }

  v5 = (*(v4 + 44) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) != 0)
    {
      if (self->_isSeamlessTransition)
      {
        if (*(v4 + 40))
        {
          goto LABEL_23;
        }
      }

      else if (!*(v4 + 40))
      {
LABEL_23:
        v5 = 1;
        goto LABEL_21;
      }
    }

    goto LABEL_20;
  }

LABEL_21:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_wildcardSubscription;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if (*&self->_has)
    {
LABEL_3:
      v4 = 2654435761u * self->_peerParticipantId;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_isSeamlessTransition;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 44);
  if ((v5 & 4) != 0)
  {
    self->_wildcardSubscription = *(v4 + 41);
    *&self->_has |= 4u;
    v5 = *(v4 + 44);
  }

  if (v5)
  {
    self->_peerParticipantId = *(v4 + 4);
    *&self->_has |= 1u;
  }

  v9 = v4;
  v6 = [v4 peerStreamIdsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[IDSQRProtoSubscribedStream addPeerStreamIds:](self, "addPeerStreamIds:", [v9 peerStreamIdsAtIndex:i]);
    }
  }

  if ((v9[44] & 2) != 0)
  {
    self->_isSeamlessTransition = v9[40];
    *&self->_has |= 2u;
  }
}

@end