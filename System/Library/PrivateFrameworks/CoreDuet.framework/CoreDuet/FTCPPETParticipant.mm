@interface FTCPPETParticipant
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation FTCPPETParticipant

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = FTCPPETParticipant;
  v4 = [(FTCPPETParticipant *)&v8 description];
  dictionaryRepresentation = [(FTCPPETParticipant *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_hashedId];
  [dictionary setObject:v4 forKey:@"hashedId"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isContact];
  [dictionary setObject:v5 forKey:@"isContact"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  hashedId = self->_hashedId;
  toCopy = to;
  PBDataWriterWriteUint64Field();
  isContact = self->_isContact;
  PBDataWriterWriteBOOLField();
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 1) = self->_hashedId;
  *(result + 16) = self->_isContact;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_hashedId == *(equalCopy + 1) && self->_isContact == equalCopy[16];

  return v5;
}

@end