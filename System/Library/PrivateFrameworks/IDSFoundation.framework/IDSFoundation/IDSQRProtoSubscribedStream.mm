@interface IDSQRProtoSubscribedStream
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)peerStreamIdsAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasIsSeamlessTransition:(BOOL)transition;
- (void)setHasWildcardSubscription:(BOOL)subscription;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoSubscribedStream

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = IDSQRProtoSubscribedStream;
  [(IDSQRProtoSubscribedStream *)&v3 dealloc];
}

- (void)setHasWildcardSubscription:(BOOL)subscription
{
  if (subscription)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (unsigned)peerStreamIdsAtIndex:(unint64_t)index
{
  p_peerStreamIds = &self->_peerStreamIds;
  count = self->_peerStreamIds.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_peerStreamIds->list[index];
}

- (void)setHasIsSeamlessTransition:(BOOL)transition
{
  if (transition)
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
  dictionaryRepresentation = [(IDSQRProtoSubscribedStream *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_wildcardSubscription];
    [dictionary setObject:v5 forKey:@"wildcard_subscription"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_peerParticipantId];
    [dictionary setObject:v6 forKey:@"peer_participant_id"];
  }

  v7 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v7 forKey:@"peer_stream_ids"];

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSeamlessTransition];
    [dictionary setObject:v8 forKey:@"is_seamless_transition"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v7 = toCopy;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v7;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteUint64Field();
    toCopy = v7;
  }

  if (self->_peerStreamIds.count)
  {
    v6 = 0;
    do
    {
      PBDataWriterWriteUint32Field();
      toCopy = v7;
      ++v6;
    }

    while (v6 < self->_peerStreamIds.count);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[41] = self->_wildcardSubscription;
    toCopy[44] |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 4) = self->_peerParticipantId;
    toCopy[44] |= 1u;
  }

  v9 = toCopy;
  if ([(IDSQRProtoSubscribedStream *)self peerStreamIdsCount])
  {
    [v9 clearPeerStreamIds];
    peerStreamIdsCount = [(IDSQRProtoSubscribedStream *)self peerStreamIdsCount];
    if (peerStreamIdsCount)
    {
      v7 = peerStreamIdsCount;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 44) & 4) == 0)
    {
      goto LABEL_20;
    }

    if (self->_wildcardSubscription)
    {
      if ((*(equalCopy + 41) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else if (*(equalCopy + 41))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 44) & 4) != 0)
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_peerParticipantId != *(equalCopy + 4))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_20;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
LABEL_20:
    v5 = 0;
    goto LABEL_21;
  }

  v5 = (*(equalCopy + 44) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) != 0)
    {
      if (self->_isSeamlessTransition)
      {
        if (*(equalCopy + 40))
        {
          goto LABEL_23;
        }
      }

      else if (!*(equalCopy + 40))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 44);
  if ((v5 & 4) != 0)
  {
    self->_wildcardSubscription = *(fromCopy + 41);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 44);
  }

  if (v5)
  {
    self->_peerParticipantId = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  v9 = fromCopy;
  peerStreamIdsCount = [fromCopy peerStreamIdsCount];
  if (peerStreamIdsCount)
  {
    v7 = peerStreamIdsCount;
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