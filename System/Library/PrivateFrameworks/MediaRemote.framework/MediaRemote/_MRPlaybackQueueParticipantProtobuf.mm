@interface _MRPlaybackQueueParticipantProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRPlaybackQueueParticipantProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPlaybackQueueParticipantProtobuf;
  v4 = [(_MRPlaybackQueueParticipantProtobuf *)&v8 description];
  v5 = [(_MRPlaybackQueueParticipantProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  identity = self->_identity;
  if (identity)
  {
    v7 = [(_MRUserIdentityProtobuf *)identity dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"identity"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_identity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v5;
  }

  if (self->_identity)
  {
    [v5 setIdentity:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(_MRUserIdentityProtobuf *)self->_identity copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | v4[1])) || -[NSString isEqual:](identifier, "isEqual:")))
  {
    identity = self->_identity;
    if (identity | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[1])
  {
    [(_MRPlaybackQueueParticipantProtobuf *)self setIdentifier:?];
    v4 = v7;
  }

  identity = self->_identity;
  v6 = v4[2];
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

  v4 = v7;
LABEL_9:
}

@end