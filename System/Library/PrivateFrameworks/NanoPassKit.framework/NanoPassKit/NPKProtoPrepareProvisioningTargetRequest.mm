@interface NPKProtoPrepareProvisioningTargetRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoPrepareProvisioningTargetRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPrepareProvisioningTargetRequest;
  v4 = [(NPKProtoPrepareProvisioningTargetRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoPrepareProvisioningTargetRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  targetData = self->_targetData;
  if (targetData)
  {
    [dictionary setObject:targetData forKey:@"targetData"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_checkFamilyCircle];
    [v4 setObject:v6 forKey:@"checkFamilyCircle"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_targetData)
  {
    [NPKProtoPrepareProvisioningTargetRequest writeTo:];
  }

  v6 = toCopy;
  PBDataWriterWriteDataField();
  if (*&self->_has)
  {
    checkFamilyCircle = self->_checkFamilyCircle;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setTargetData:self->_targetData];
  if (*&self->_has)
  {
    toCopy[16] = self->_checkFamilyCircle;
    toCopy[20] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_targetData copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_checkFamilyCircle;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  targetData = self->_targetData;
  if (targetData | *(equalCopy + 1))
  {
    if (![(NSData *)targetData isEqual:?])
    {
      goto LABEL_6;
    }
  }

  v6 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_7;
    }

    if (self->_checkFamilyCircle)
    {
      if ((*(equalCopy + 16) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (*(equalCopy + 16))
    {
      goto LABEL_6;
    }

    v6 = 1;
  }

LABEL_7:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_targetData hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_checkFamilyCircle;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(NPKProtoPrepareProvisioningTargetRequest *)self setTargetData:?];
    fromCopy = v5;
  }

  if (fromCopy[20])
  {
    self->_checkFamilyCircle = fromCopy[16];
    *&self->_has |= 1u;
  }
}

@end