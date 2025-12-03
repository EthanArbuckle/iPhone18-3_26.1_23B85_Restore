@interface _MRGroupSessionIdentityShareReplyMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRGroupSessionIdentityShareReplyMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGroupSessionIdentityShareReplyMessageProtobuf;
  v4 = [(_MRGroupSessionIdentityShareReplyMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRGroupSessionIdentityShareReplyMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  localParticipant = self->_localParticipant;
  if (localParticipant)
  {
    dictionaryRepresentation = [(_MRGroupSessionParticipantProtobuf *)localParticipant dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"localParticipant"];
  }

  leaderParticipant = self->_leaderParticipant;
  if (leaderParticipant)
  {
    dictionaryRepresentation2 = [(_MRGroupSessionParticipantProtobuf *)leaderParticipant dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"leaderParticipant"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_localParticipant)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_leaderParticipant)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_localParticipant)
  {
    [toCopy setLocalParticipant:?];
    toCopy = v5;
  }

  if (self->_leaderParticipant)
  {
    [v5 setLeaderParticipant:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRGroupSessionParticipantProtobuf *)self->_localParticipant copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(_MRGroupSessionParticipantProtobuf *)self->_leaderParticipant copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((localParticipant = self->_localParticipant, !(localParticipant | equalCopy[2])) || -[_MRGroupSessionParticipantProtobuf isEqual:](localParticipant, "isEqual:")))
  {
    leaderParticipant = self->_leaderParticipant;
    if (leaderParticipant | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  localParticipant = self->_localParticipant;
  v6 = fromCopy[2];
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  leaderParticipant = self->_leaderParticipant;
  v8 = fromCopy[1];
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

  fromCopy = v9;
LABEL_13:
}

@end