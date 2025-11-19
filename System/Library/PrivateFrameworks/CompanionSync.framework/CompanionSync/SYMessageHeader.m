@interface SYMessageHeader
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYMessageHeader

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYMessageHeader;
  v4 = [(SYMessageHeader *)&v8 description];
  v5 = [(SYMessageHeader *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
  [v3 setObject:v4 forKey:@"timestamp"];

  sender = self->_sender;
  if (sender)
  {
    v6 = [(SYPeer *)sender dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"sender"];
  }

  state = self->_state;
  if (state)
  {
    v8 = [(SYVectorClock *)state dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"state"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [v3 setObject:v9 forKey:@"version"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_sequenceNumber];
  [v3 setObject:v10 forKey:@"sequenceNumber"];

  if (*&self->_has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeout];
    [v3 setObject:v11 forKey:@"timeout"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  timestamp = self->_timestamp;
  v9 = v4;
  PBDataWriterWriteDoubleField();
  if (!self->_sender)
  {
    [SYMessageHeader writeTo:];
  }

  PBDataWriterWriteSubmessage();
  if (!self->_state)
  {
    [SYMessageHeader writeTo:];
  }

  PBDataWriterWriteSubmessage();
  version = self->_version;
  PBDataWriterWriteUint32Field();
  sequenceNumber = self->_sequenceNumber;
  PBDataWriterWriteUint64Field();
  if (*&self->_has)
  {
    timeout = self->_timeout;
    PBDataWriterWriteDoubleField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[3] = *&self->_timestamp;
  [v4 setSender:self->_sender];
  [v4 setState:self->_state];
  *(v4 + 12) = self->_version;
  v4[1] = self->_sequenceNumber;
  if (*&self->_has)
  {
    v4[2] = *&self->_timeout;
    *(v4 + 52) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 24) = self->_timestamp;
  v6 = [(SYPeer *)self->_sender copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(SYVectorClock *)self->_state copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  *(v5 + 48) = self->_version;
  *(v5 + 8) = self->_sequenceNumber;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_timeout;
    *(v5 + 52) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  if (self->_timestamp != *(v4 + 3))
  {
    goto LABEL_13;
  }

  sender = self->_sender;
  if (sender | *(v4 + 4))
  {
    if (![(SYPeer *)sender isEqual:?])
    {
      goto LABEL_13;
    }
  }

  state = self->_state;
  if (state | *(v4 + 5))
  {
    if (![(SYVectorClock *)state isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (self->_version != *(v4 + 12) || self->_sequenceNumber != *(v4 + 1))
  {
    goto LABEL_13;
  }

  v7 = (*(v4 + 52) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) != 0 && self->_timeout == *(v4 + 2))
    {
      v7 = 1;
      goto LABEL_14;
    }

LABEL_13:
    v7 = 0;
  }

LABEL_14:

  return v7;
}

- (unint64_t)hash
{
  timestamp = self->_timestamp;
  if (timestamp < 0.0)
  {
    timestamp = -timestamp;
  }

  *v2.i64 = floor(timestamp + 0.5);
  v6 = (timestamp - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v22 = vnegq_f64(v7);
  v2.i64[0] = vbslq_s8(v22, v3, v2).i64[0];
  v8 = 2654435761u * *v2.i64;
  v9 = v8 + v6;
  if (v6 <= 0.0)
  {
    v9 = 2654435761u * *v2.i64;
  }

  v10 = v8 - fabs(v6);
  if (v6 < 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = [(SYPeer *)self->_sender hash];
  v13 = [(SYVectorClock *)self->_state hash];
  if (*&self->_has)
  {
    timeout = self->_timeout;
    if (timeout < 0.0)
    {
      timeout = -timeout;
    }

    *v14.i64 = floor(timeout + 0.5);
    v18 = (timeout - *v14.i64) * 1.84467441e19;
    *v15.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.i64[0] = vbslq_s8(v23, v15, v14).i64[0];
    v19 = 2654435761u * *v14.i64;
    v20 = v19 + v18;
    if (v18 <= 0.0)
    {
      v20 = 2654435761u * *v14.i64;
    }

    v16 = v19 - fabs(v18);
    if (v18 >= 0.0)
    {
      v16 = v20;
    }
  }

  else
  {
    v16 = 0;
  }

  return v12 ^ v11 ^ v13 ^ (2654435761 * self->_version) ^ (2654435761u * self->_sequenceNumber) ^ v16;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_timestamp = *(v4 + 3);
  sender = self->_sender;
  v6 = *(v4 + 4);
  v9 = v4;
  if (sender)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SYPeer *)sender mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SYMessageHeader *)self setSender:?];
  }

  v4 = v9;
LABEL_7:
  state = self->_state;
  v8 = *(v4 + 5);
  if (state)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    state = [(SYVectorClock *)state mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    state = [(SYMessageHeader *)self setState:?];
  }

  v4 = v9;
LABEL_13:
  self->_version = *(v4 + 12);
  self->_sequenceNumber = *(v4 + 1);
  if (*(v4 + 52))
  {
    self->_timeout = *(v4 + 2);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](state, v4);
}

@end