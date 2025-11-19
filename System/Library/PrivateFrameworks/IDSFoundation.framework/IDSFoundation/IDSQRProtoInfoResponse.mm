@interface IDSQRProtoInfoResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)activeLightweightParticipantsAtIndex:(unint64_t)a3;
- (unint64_t)activeParticipantsAtIndex:(unint64_t)a3;
- (unint64_t)activeVirtualParticipantsAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (unint64_t)activeParticipantsAtIndex:(unint64_t)a3
{
  p_activeParticipants = &self->_activeParticipants;
  count = self->_activeParticipants.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_activeParticipants->list[a3];
}

- (unint64_t)activeLightweightParticipantsAtIndex:(unint64_t)a3
{
  p_activeLightweightParticipants = &self->_activeLightweightParticipants;
  count = self->_activeLightweightParticipants.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_activeLightweightParticipants->list[a3];
}

- (unint64_t)activeVirtualParticipantsAtIndex:(unint64_t)a3
{
  p_activeVirtualParticipants = &self->_activeVirtualParticipants;
  count = self->_activeVirtualParticipants.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_activeVirtualParticipants->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoInfoResponse;
  v4 = [(IDSQRProtoInfoResponse *)&v8 description];
  v5 = [(IDSQRProtoInfoResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  clientAddress = self->_clientAddress;
  if (clientAddress)
  {
    [v3 setObject:clientAddress forKey:@"client_address"];
  }

  v6 = PBRepeatedUInt64NSArray();
  [v4 setObject:v6 forKey:@"active_participants"];

  v7 = PBRepeatedUInt64NSArray();
  [v4 setObject:v7 forKey:@"active_lightweight_participants"];

  v8 = PBRepeatedUInt64NSArray();
  [v4 setObject:v8 forKey:@"active_virtual_participants"];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_clientAddress)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_activeParticipants.count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteUint64Field();
      v4 = v9;
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
      v4 = v9;
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
      v4 = v9;
      ++v8;
    }

    while (v8 < p_activeVirtualParticipants->count);
  }
}

- (void)copyTo:(id)a3
{
  v13 = a3;
  if (self->_clientAddress)
  {
    [v13 setClientAddress:?];
  }

  if ([(IDSQRProtoInfoResponse *)self activeParticipantsCount])
  {
    [v13 clearActiveParticipants];
    v4 = [(IDSQRProtoInfoResponse *)self activeParticipantsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v13 addActiveParticipants:{-[IDSQRProtoInfoResponse activeParticipantsAtIndex:](self, "activeParticipantsAtIndex:", i)}];
      }
    }
  }

  if ([(IDSQRProtoInfoResponse *)self activeLightweightParticipantsCount])
  {
    [v13 clearActiveLightweightParticipants];
    v7 = [(IDSQRProtoInfoResponse *)self activeLightweightParticipantsCount];
    if (v7)
    {
      v8 = v7;
      for (j = 0; j != v8; ++j)
      {
        [v13 addActiveLightweightParticipants:{-[IDSQRProtoInfoResponse activeLightweightParticipantsAtIndex:](self, "activeLightweightParticipantsAtIndex:", j)}];
      }
    }
  }

  if ([(IDSQRProtoInfoResponse *)self activeVirtualParticipantsCount])
  {
    [v13 clearActiveVirtualParticipants];
    v10 = [(IDSQRProtoInfoResponse *)self activeVirtualParticipantsCount];
    if (v10)
    {
      v11 = v10;
      for (k = 0; k != v11; ++k)
      {
        [v13 addActiveVirtualParticipants:{-[IDSQRProtoInfoResponse activeVirtualParticipantsAtIndex:](self, "activeVirtualParticipantsAtIndex:", k)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_clientAddress copyWithZone:a3];
  v7 = v5[10];
  v5[10] = v6;

  PBRepeatedUInt64Copy();
  PBRepeatedUInt64Copy();
  PBRepeatedUInt64Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((clientAddress = self->_clientAddress, !(clientAddress | v4[10])) || -[NSString isEqual:](clientAddress, "isEqual:")) && PBRepeatedUInt64IsEqual() && PBRepeatedUInt64IsEqual())
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v14 = v4;
  if (v4[10])
  {
    [(IDSQRProtoInfoResponse *)self setClientAddress:?];
    v4 = v14;
  }

  v5 = [v4 activeParticipantsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[IDSQRProtoInfoResponse addActiveParticipants:](self, "addActiveParticipants:", [v14 activeParticipantsAtIndex:i]);
    }
  }

  v8 = [v14 activeLightweightParticipantsCount];
  if (v8)
  {
    v9 = v8;
    for (j = 0; j != v9; ++j)
    {
      -[IDSQRProtoInfoResponse addActiveLightweightParticipants:](self, "addActiveLightweightParticipants:", [v14 activeLightweightParticipantsAtIndex:j]);
    }
  }

  v11 = [v14 activeVirtualParticipantsCount];
  if (v11)
  {
    v12 = v11;
    for (k = 0; k != v12; ++k)
    {
      -[IDSQRProtoInfoResponse addActiveVirtualParticipants:](self, "addActiveVirtualParticipants:", [v14 activeVirtualParticipantsAtIndex:k]);
    }
  }
}

@end