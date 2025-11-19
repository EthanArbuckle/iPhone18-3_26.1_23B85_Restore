@interface IDSQRProtoPutMaterialErrorIndication
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoPutMaterialErrorIndication

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoPutMaterialErrorIndication;
  v4 = [(IDSQRProtoPutMaterialErrorIndication *)&v8 description];
  v5 = [(IDSQRProtoPutMaterialErrorIndication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_receiverParticipantId];
  [v3 setObject:v4 forKey:@"receiver_participant_id"];

  materialOwner = self->_materialOwner;
  if (materialOwner)
  {
    v6 = [(IDSQRProtoMaterialOwner *)materialOwner dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"material_owner"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  PBDataWriterWriteUint64Field();
  if (!self->_materialOwner)
  {
    sub_1A7E1E3D8();
  }

  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = self->_receiverParticipantId;
  v6 = [(IDSQRProtoMaterialOwner *)self->_materialOwner copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_receiverParticipantId == v4[1])
  {
    materialOwner = self->_materialOwner;
    if (materialOwner | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_receiverParticipantId = v4[1];
  materialOwner = self->_materialOwner;
  v6 = v4[2];
  if (materialOwner)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(IDSQRProtoMaterialOwner *)materialOwner mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(IDSQRProtoPutMaterialErrorIndication *)self setMaterialOwner:?];
  }

  v4 = v7;
LABEL_7:
}

@end