@interface _MRGroupSessionIdentityShareReplyMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRGroupSessionIdentityShareReplyMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGroupSessionIdentityShareReplyMessageProtobuf;
  v4 = [(_MRGroupSessionIdentityShareReplyMessageProtobuf *)&v8 description];
  v5 = [(_MRGroupSessionIdentityShareReplyMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  localParticipant = self->_localParticipant;
  if (localParticipant)
  {
    v5 = [(_MRGroupSessionParticipantProtobuf *)localParticipant dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"localParticipant"];
  }

  leaderParticipant = self->_leaderParticipant;
  if (leaderParticipant)
  {
    v7 = [(_MRGroupSessionParticipantProtobuf *)leaderParticipant dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"leaderParticipant"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_localParticipant)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_leaderParticipant)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_localParticipant)
  {
    [v4 setLocalParticipant:?];
    v4 = v5;
  }

  if (self->_leaderParticipant)
  {
    [v5 setLeaderParticipant:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRGroupSessionParticipantProtobuf *)self->_localParticipant copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(_MRGroupSessionParticipantProtobuf *)self->_leaderParticipant copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((localParticipant = self->_localParticipant, !(localParticipant | v4[2])) || -[_MRGroupSessionParticipantProtobuf isEqual:](localParticipant, "isEqual:")))
  {
    leaderParticipant = self->_leaderParticipant;
    if (leaderParticipant | v4[1])
    {
      v7 = [(_MRGroupSessionParticipantProtobuf *)leaderParticipant isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  localParticipant = self->_localParticipant;
  v6 = v4[2];
  v9 = v4;
  if (localParticipant)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRGroupSessionParticipantProtobuf *)localParticipant mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRGroupSessionIdentityShareReplyMessageProtobuf *)self setLocalParticipant:?];
  }

  v4 = v9;
LABEL_7:
  leaderParticipant = self->_leaderParticipant;
  v8 = v4[1];
  if (leaderParticipant)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(_MRGroupSessionParticipantProtobuf *)leaderParticipant mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(_MRGroupSessionIdentityShareReplyMessageProtobuf *)self setLeaderParticipant:?];
  }

  v4 = v9;
LABEL_13:
}

@end