@interface NPKProtoPasscodeUpgradeFlowApplyPasscodeRestrictionsRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)enforcedPolicy;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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
  v5 = [(NPKProtoPasscodeUpgradeFlowApplyPasscodeRestrictionsRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

    [v3 setObject:v4 forKey:@"enforcedPolicy"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    enforcedPolicy = self->_enforcedPolicy;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 2) = self->_enforcedPolicy;
    *(a3 + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_enforcedPolicy;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(v4 + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 12) & 1) != 0 && self->_enforcedPolicy == *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 12))
  {
    self->_enforcedPolicy = *(a3 + 2);
    *&self->_has |= 1u;
  }
}

@end