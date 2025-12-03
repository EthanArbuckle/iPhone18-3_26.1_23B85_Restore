@interface NPKProtoPasscodeUpgradeFlowApplyPasscodeRestrictionsRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)enforcedPolicy;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoPasscodeUpgradeFlowApplyPasscodeRestrictionsRequest

- (int)enforcedPolicy
{
  if (*&self->_has)
  {
    return self->_enforcedPolicy;
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPasscodeUpgradeFlowApplyPasscodeRestrictionsRequest;
  v4 = [(NPKProtoPasscodeUpgradeFlowApplyPasscodeRestrictionsRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoPasscodeUpgradeFlowApplyPasscodeRestrictionsRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    if (self->_enforcedPolicy)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_enforcedPolicy];
    }

    else
    {
      v4 = @"China";
    }

    [dictionary setObject:v4 forKey:@"enforcedPolicy"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    enforcedPolicy = self->_enforcedPolicy;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_enforcedPolicy;
    *(to + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_enforcedPolicy;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(equalCopy + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 12) & 1) != 0 && self->_enforcedPolicy == *(equalCopy + 2))
    {
      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_enforcedPolicy;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_enforcedPolicy = *(from + 2);
    *&self->_has |= 1u;
  }
}

@end