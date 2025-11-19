@interface _MRGroupSessionJoinResponseMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRGroupSessionJoinResponseMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGroupSessionJoinResponseMessageProtobuf;
  v4 = [(_MRGroupSessionJoinResponseMessageProtobuf *)&v8 description];
  v5 = [(_MRGroupSessionJoinResponseMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  participantIdentifier = self->_participantIdentifier;
  if (participantIdentifier)
  {
    [v3 setObject:participantIdentifier forKey:@"participantIdentifier"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_approved];
  [v4 setObject:v6 forKey:@"approved"];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_participantIdentifier)
  {
    [_MRGroupSessionJoinResponseMessageProtobuf writeTo:];
  }

  v6 = v4;
  PBDataWriterWriteStringField();
  approved = self->_approved;
  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)a3
{
  participantIdentifier = self->_participantIdentifier;
  v5 = a3;
  [v5 setParticipantIdentifier:participantIdentifier];
  v5[16] = self->_approved;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_participantIdentifier copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->_approved;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && ((participantIdentifier = self->_participantIdentifier, !(participantIdentifier | *(v4 + 1))) || -[NSString isEqual:](participantIdentifier, "isEqual:")) && self->_approved == v4[16];

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v5 = v4;
    [(_MRGroupSessionJoinResponseMessageProtobuf *)self setParticipantIdentifier:?];
    v4 = v5;
  }

  self->_approved = v4[16];
}

@end