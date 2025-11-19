@interface FTCPPETParticipant
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation FTCPPETParticipant

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = FTCPPETParticipant;
  v4 = [(FTCPPETParticipant *)&v8 description];
  v5 = [(FTCPPETParticipant *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_hashedId];
  [v3 setObject:v4 forKey:@"hashedId"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isContact];
  [v3 setObject:v5 forKey:@"isContact"];

  return v3;
}

- (void)writeTo:(id)a3
{
  hashedId = self->_hashedId;
  v6 = a3;
  PBDataWriterWriteUint64Field();
  isContact = self->_isContact;
  PBDataWriterWriteBOOLField();
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 1) = self->_hashedId;
  *(result + 16) = self->_isContact;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_hashedId == *(v4 + 1) && self->_isContact == v4[16];

  return v5;
}

@end