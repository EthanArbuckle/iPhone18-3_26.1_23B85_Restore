@interface IDSQRProtoPeerPublishedStream
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)peerStreamIdsAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoPeerPublishedStream

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = IDSQRProtoPeerPublishedStream;
  [(IDSQRProtoPeerPublishedStream *)&v3 dealloc];
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoPeerPublishedStream;
  v4 = [(IDSQRProtoPeerPublishedStream *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoPeerPublishedStream *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_peerParticipantId];
    [dictionary setObject:v4 forKey:@"peer_participant_id"];
  }

  v5 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v5 forKey:@"peer_stream_ids"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
    toCopy = v7;
  }

  p_peerStreamIds = &self->_peerStreamIds;
  if (p_peerStreamIds->count)
  {
    v6 = 0;
    do
    {
      PBDataWriterWriteUint32Field();
      toCopy = v7;
      ++v6;
    }

    while (v6 < p_peerStreamIds->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_peerParticipantId;
    *(toCopy + 40) |= 1u;
  }

  v8 = toCopy;
  if ([(IDSQRProtoPeerPublishedStream *)self peerStreamIdsCount])
  {
    [v8 clearPeerStreamIds];
    peerStreamIdsCount = [(IDSQRProtoPeerPublishedStream *)self peerStreamIdsCount];
    if (peerStreamIdsCount)
    {
      v6 = peerStreamIdsCount;
      for (i = 0; i != v6; ++i)
      {
        [v8 addPeerStreamIds:{-[IDSQRProtoPeerPublishedStream peerStreamIdsAtIndex:](self, "peerStreamIdsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 32) = self->_peerParticipantId;
    *(v4 + 40) |= 1u;
  }

  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_peerParticipantId != *(equalCopy + 4))
    {
      goto LABEL_8;
    }
  }

  else if (*(equalCopy + 40))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[5])
  {
    self->_peerParticipantId = fromCopy[4];
    *&self->_has |= 1u;
  }

  v8 = fromCopy;
  peerStreamIdsCount = [fromCopy peerStreamIdsCount];
  if (peerStreamIdsCount)
  {
    v6 = peerStreamIdsCount;
    for (i = 0; i != v6; ++i)
    {
      -[IDSQRProtoPeerPublishedStream addPeerStreamIds:](self, "addPeerStreamIds:", [v8 peerStreamIdsAtIndex:i]);
    }
  }
}

@end