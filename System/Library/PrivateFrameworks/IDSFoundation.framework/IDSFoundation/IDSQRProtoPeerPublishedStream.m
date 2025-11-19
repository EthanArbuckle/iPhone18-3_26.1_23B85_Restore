@interface IDSQRProtoPeerPublishedStream
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)peerStreamIdsAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoPeerPublishedStream

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = IDSQRProtoPeerPublishedStream;
  [(IDSQRProtoPeerPublishedStream *)&v3 dealloc];
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoPeerPublishedStream;
  v4 = [(IDSQRProtoPeerPublishedStream *)&v8 description];
  v5 = [(IDSQRProtoPeerPublishedStream *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_peerParticipantId];
    [v3 setObject:v4 forKey:@"peer_participant_id"];
  }

  v5 = PBRepeatedUInt32NSArray();
  [v3 setObject:v5 forKey:@"peer_stream_ids"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
    v4 = v7;
  }

  p_peerStreamIds = &self->_peerStreamIds;
  if (p_peerStreamIds->count)
  {
    v6 = 0;
    do
    {
      PBDataWriterWriteUint32Field();
      v4 = v7;
      ++v6;
    }

    while (v6 < p_peerStreamIds->count);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_peerParticipantId;
    *(v4 + 40) |= 1u;
  }

  v8 = v4;
  if ([(IDSQRProtoPeerPublishedStream *)self peerStreamIdsCount])
  {
    [v8 clearPeerStreamIds];
    v5 = [(IDSQRProtoPeerPublishedStream *)self peerStreamIdsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v8 addPeerStreamIds:{-[IDSQRProtoPeerPublishedStream peerStreamIdsAtIndex:](self, "peerStreamIdsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 32) = self->_peerParticipantId;
    *(v4 + 40) |= 1u;
  }

  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_peerParticipantId != *(v4 + 4))
    {
      goto LABEL_8;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_8:
    IsEqual = 0;
    goto LABEL_9;
  }

  IsEqual = PBRepeatedUInt32IsEqual();
LABEL_9:

  return IsEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_peerParticipantId;
  }

  else
  {
    v2 = 0;
  }

  return PBRepeatedUInt32Hash() ^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[5])
  {
    self->_peerParticipantId = v4[4];
    *&self->_has |= 1u;
  }

  v8 = v4;
  v5 = [v4 peerStreamIdsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[IDSQRProtoPeerPublishedStream addPeerStreamIds:](self, "addPeerStreamIds:", [v8 peerStreamIdsAtIndex:i]);
    }
  }
}

@end