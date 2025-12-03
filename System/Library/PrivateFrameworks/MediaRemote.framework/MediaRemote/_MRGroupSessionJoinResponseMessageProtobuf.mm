@interface _MRGroupSessionJoinResponseMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRGroupSessionJoinResponseMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGroupSessionJoinResponseMessageProtobuf;
  v4 = [(_MRGroupSessionJoinResponseMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRGroupSessionJoinResponseMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  participantIdentifier = self->_participantIdentifier;
  if (participantIdentifier)
  {
    [dictionary setObject:participantIdentifier forKey:@"participantIdentifier"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_approved];
  [v4 setObject:v6 forKey:@"approved"];

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_participantIdentifier)
  {
    [_MRGroupSessionJoinResponseMessageProtobuf writeTo:];
  }

  v6 = toCopy;
  PBDataWriterWriteStringField();
  approved = self->_approved;
  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)to
{
  participantIdentifier = self->_participantIdentifier;
  toCopy = to;
  [toCopy setParticipantIdentifier:participantIdentifier];
  toCopy[16] = self->_approved;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_participantIdentifier copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->_approved;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((participantIdentifier = self->_participantIdentifier, !(participantIdentifier | *(equalCopy + 1))) || -[NSString isEqual:](participantIdentifier, "isEqual:")) && self->_approved == equalCopy[16];

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(_MRGroupSessionJoinResponseMessageProtobuf *)self setParticipantIdentifier:?];
    fromCopy = v5;
  }

  self->_approved = fromCopy[16];
}

@end