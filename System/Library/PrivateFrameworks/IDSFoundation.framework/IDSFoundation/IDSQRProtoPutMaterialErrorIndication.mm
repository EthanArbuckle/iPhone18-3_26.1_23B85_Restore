@interface IDSQRProtoPutMaterialErrorIndication
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoPutMaterialErrorIndication

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoPutMaterialErrorIndication;
  v4 = [(IDSQRProtoPutMaterialErrorIndication *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoPutMaterialErrorIndication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_receiverParticipantId];
  [dictionary setObject:v4 forKey:@"receiver_participant_id"];

  materialOwner = self->_materialOwner;
  if (materialOwner)
  {
    dictionaryRepresentation = [(IDSQRProtoMaterialOwner *)materialOwner dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"material_owner"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint64Field();
  if (!self->_materialOwner)
  {
    sub_1A7E1E3D8();
  }

  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = self->_receiverParticipantId;
  v6 = [(IDSQRProtoMaterialOwner *)self->_materialOwner copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_receiverParticipantId == equalCopy[1])
  {
    materialOwner = self->_materialOwner;
    if (materialOwner | equalCopy[2])
    {
      v6 = [(IDSQRProtoMaterialOwner *)materialOwner isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_receiverParticipantId = fromCopy[1];
  materialOwner = self->_materialOwner;
  v6 = fromCopy[2];
  if (materialOwner)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(IDSQRProtoMaterialOwner *)materialOwner mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(IDSQRProtoPutMaterialErrorIndication *)self setMaterialOwner:?];
  }

  fromCopy = v7;
LABEL_7:
}

@end