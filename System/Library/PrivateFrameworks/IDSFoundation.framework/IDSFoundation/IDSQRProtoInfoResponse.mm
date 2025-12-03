@interface IDSQRProtoInfoResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)activeLightweightParticipantsAtIndex:(unint64_t)index;
- (unint64_t)activeParticipantsAtIndex:(unint64_t)index;
- (unint64_t)activeVirtualParticipantsAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoInfoResponse

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  PBRepeatedUInt64Clear();
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = IDSQRProtoInfoResponse;
  [(IDSQRProtoInfoResponse *)&v3 dealloc];
}

- (unint64_t)activeParticipantsAtIndex:(unint64_t)index
{
  p_activeParticipants = &self->_activeParticipants;
  count = self->_activeParticipants.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_activeParticipants->list[index];
}

- (unint64_t)activeLightweightParticipantsAtIndex:(unint64_t)index
{
  p_activeLightweightParticipants = &self->_activeLightweightParticipants;
  count = self->_activeLightweightParticipants.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_activeLightweightParticipants->list[index];
}

- (unint64_t)activeVirtualParticipantsAtIndex:(unint64_t)index
{
  p_activeVirtualParticipants = &self->_activeVirtualParticipants;
  count = self->_activeVirtualParticipants.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_activeVirtualParticipants->list[index];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoInfoResponse;
  v4 = [(IDSQRProtoInfoResponse *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoInfoResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  clientAddress = self->_clientAddress;
  if (clientAddress)
  {
    [dictionary setObject:clientAddress forKey:@"client_address"];
  }

  v6 = PBRepeatedUInt64NSArray();
  [v4 setObject:v6 forKey:@"active_participants"];

  v7 = PBRepeatedUInt64NSArray();
  [v4 setObject:v7 forKey:@"active_lightweight_participants"];

  v8 = PBRepeatedUInt64NSArray();
  [v4 setObject:v8 forKey:@"active_virtual_participants"];

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_clientAddress)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_activeParticipants.count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteUint64Field();
      toCopy = v9;
      ++v5;
    }

    while (v5 < self->_activeParticipants.count);
  }

  if (self->_activeLightweightParticipants.count)
  {
    v6 = 0;
    do
    {
      PBDataWriterWriteUint64Field();
      toCopy = v9;
      ++v6;
    }

    while (v6 < self->_activeLightweightParticipants.count);
  }

  p_activeVirtualParticipants = &self->_activeVirtualParticipants;
  if (p_activeVirtualParticipants->count)
  {
    v8 = 0;
    do
    {
      PBDataWriterWriteUint64Field();
      toCopy = v9;
      ++v8;
    }

    while (v8 < p_activeVirtualParticipants->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_clientAddress)
  {
    [toCopy setClientAddress:?];
  }

  if ([(IDSQRProtoInfoResponse *)self activeParticipantsCount])
  {
    [toCopy clearActiveParticipants];
    activeParticipantsCount = [(IDSQRProtoInfoResponse *)self activeParticipantsCount];
    if (activeParticipantsCount)
    {
      v5 = activeParticipantsCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addActiveParticipants:{-[IDSQRProtoInfoResponse activeParticipantsAtIndex:](self, "activeParticipantsAtIndex:", i)}];
      }
    }
  }

  if ([(IDSQRProtoInfoResponse *)self activeLightweightParticipantsCount])
  {
    [toCopy clearActiveLightweightParticipants];
    activeLightweightParticipantsCount = [(IDSQRProtoInfoResponse *)self activeLightweightParticipantsCount];
    if (activeLightweightParticipantsCount)
    {
      v8 = activeLightweightParticipantsCount;
      for (j = 0; j != v8; ++j)
      {
        [toCopy addActiveLightweightParticipants:{-[IDSQRProtoInfoResponse activeLightweightParticipantsAtIndex:](self, "activeLightweightParticipantsAtIndex:", j)}];
      }
    }
  }

  if ([(IDSQRProtoInfoResponse *)self activeVirtualParticipantsCount])
  {
    [toCopy clearActiveVirtualParticipants];
    activeVirtualParticipantsCount = [(IDSQRProtoInfoResponse *)self activeVirtualParticipantsCount];
    if (activeVirtualParticipantsCount)
    {
      v11 = activeVirtualParticipantsCount;
      for (k = 0; k != v11; ++k)
      {
        [toCopy addActiveVirtualParticipants:{-[IDSQRProtoInfoResponse activeVirtualParticipantsAtIndex:](self, "activeVirtualParticipantsAtIndex:", k)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_clientAddress copyWithZone:zone];
  v7 = v5[10];
  v5[10] = v6;

  PBRepeatedUInt64Copy();
  PBRepeatedUInt64Copy();
  PBRepeatedUInt64Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((clientAddress = self->_clientAddress, !(clientAddress | equalCopy[10])) || -[NSString isEqual:](clientAddress, "isEqual:")) && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual())
  {
    IsEqual = PBRepeatedUInt64IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (unint64_t)hash
{
  v2 = [(NSString *)self->_clientAddress hash];
  v3 = PBRepeatedUInt64Hash();
  v4 = v3 ^ PBRepeatedUInt64Hash();
  return v4 ^ PBRepeatedUInt64Hash() ^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v14 = fromCopy;
  if (fromCopy[10])
  {
    [(IDSQRProtoInfoResponse *)self setClientAddress:?];
    fromCopy = v14;
  }

  activeParticipantsCount = [fromCopy activeParticipantsCount];
  if (activeParticipantsCount)
  {
    v6 = activeParticipantsCount;
    for (i = 0; i != v6; ++i)
    {
      -[IDSQRProtoInfoResponse addActiveParticipants:](self, "addActiveParticipants:", [v14 activeParticipantsAtIndex:i]);
    }
  }

  activeLightweightParticipantsCount = [v14 activeLightweightParticipantsCount];
  if (activeLightweightParticipantsCount)
  {
    v9 = activeLightweightParticipantsCount;
    for (j = 0; j != v9; ++j)
    {
      -[IDSQRProtoInfoResponse addActiveLightweightParticipants:](self, "addActiveLightweightParticipants:", [v14 activeLightweightParticipantsAtIndex:j]);
    }
  }

  activeVirtualParticipantsCount = [v14 activeVirtualParticipantsCount];
  if (activeVirtualParticipantsCount)
  {
    v12 = activeVirtualParticipantsCount;
    for (k = 0; k != v12; ++k)
    {
      -[IDSQRProtoInfoResponse addActiveVirtualParticipants:](self, "addActiveVirtualParticipants:", [v14 activeVirtualParticipantsAtIndex:k]);
    }
  }
}

@end