@interface _MRPlaybackQueueParticipantProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRPlaybackQueueParticipantProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPlaybackQueueParticipantProtobuf;
  v4 = [(_MRPlaybackQueueParticipantProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRPlaybackQueueParticipantProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  identity = self->_identity;
  if (identity)
  {
    dictionaryRepresentation = [(_MRUserIdentityProtobuf *)identity dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"identity"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_identity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v5;
  }

  if (self->_identity)
  {
    [v5 setIdentity:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(_MRUserIdentityProtobuf *)self->_identity copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | equalCopy[1])) || -[NSString isEqual:](identifier, "isEqual:")))
  {
    identity = self->_identity;
    if (identity | equalCopy[2])
    {
      v7 = [(_MRUserIdentityProtobuf *)identity isEqual:?];
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
  v7 = fromCopy;
  if (fromCopy[1])
  {
    [(_MRPlaybackQueueParticipantProtobuf *)self setIdentifier:?];
    fromCopy = v7;
  }

  identity = self->_identity;
  v6 = fromCopy[2];
  if (identity)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(_MRUserIdentityProtobuf *)identity mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(_MRPlaybackQueueParticipantProtobuf *)self setIdentity:?];
  }

  fromCopy = v7;
LABEL_9:
}

@end