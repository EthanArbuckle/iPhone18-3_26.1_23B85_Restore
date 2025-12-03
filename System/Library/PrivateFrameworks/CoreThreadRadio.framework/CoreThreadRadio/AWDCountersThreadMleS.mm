@interface AWDCountersThreadMleS
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasBetterPartitionAttachAttempts:(BOOL)attempts;
- (void)setHasChildRoleCount:(BOOL)count;
- (void)setHasDetachedRoleCount:(BOOL)count;
- (void)setHasDisabledRoleCount:(BOOL)count;
- (void)setHasLeaderRoleCount:(BOOL)count;
- (void)setHasParentChangesCount:(BOOL)count;
- (void)setHasPartitionIdChangesCount:(BOOL)count;
- (void)setHasRouterRoleCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation AWDCountersThreadMleS

- (void)setHasDisabledRoleCount:(BOOL)count
{
  if (count)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasDetachedRoleCount:(BOOL)count
{
  if (count)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasChildRoleCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasRouterRoleCount:(BOOL)count
{
  if (count)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasLeaderRoleCount:(BOOL)count
{
  if (count)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasPartitionIdChangesCount:(BOOL)count
{
  if (count)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasBetterPartitionAttachAttempts:(BOOL)attempts
{
  if (attempts)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasParentChangesCount:(BOOL)count
{
  if (count)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDCountersThreadMleS;
  v3 = [(AWDCountersThreadMleS *)&v7 description];
  dictionaryRepresentation = [(AWDCountersThreadMleS *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_disabledRoleCount];
    [v3 setObject:v7 forKey:@"disabled_role_count"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithUnsignedInt:self->_detachedRoleCount];
  [v3 setObject:v8 forKey:@"detached_role_count"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = [NSNumber numberWithUnsignedInt:self->_childRoleCount];
  [v3 setObject:v9 forKey:@"child_role_count"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = [NSNumber numberWithUnsignedInt:self->_routerRoleCount];
  [v3 setObject:v10 forKey:@"router_role_count"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = [NSNumber numberWithUnsignedInt:self->_leaderRoleCount];
  [v3 setObject:v11 forKey:@"leader_role_count"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = [NSNumber numberWithUnsignedInt:self->_attachAttempts];
  [v3 setObject:v12 forKey:@"attach_attempts"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v13 = [NSNumber numberWithUnsignedInt:self->_partitionIdChangesCount];
  [v3 setObject:v13 forKey:@"partition_id_changes_count"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  v14 = [NSNumber numberWithUnsignedInt:self->_betterPartitionAttachAttempts];
  [v3 setObject:v14 forKey:@"better_partition_attach_attempts"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_10:
    v5 = [NSNumber numberWithUnsignedInt:self->_parentChangesCount];
    [v3 setObject:v5 forKey:@"parent_changes_count"];
  }

LABEL_11:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    disabledRoleCount = self->_disabledRoleCount;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  detachedRoleCount = self->_detachedRoleCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  childRoleCount = self->_childRoleCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  routerRoleCount = self->_routerRoleCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  leaderRoleCount = self->_leaderRoleCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  attachAttempts = self->_attachAttempts;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  partitionIdChangesCount = self->_partitionIdChangesCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  betterPartitionAttachAttempts = self->_betterPartitionAttachAttempts;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) == 0)
  {
LABEL_10:
    v5 = toCopy;

    goto LABEL_12;
  }

LABEL_21:
  parentChangesCount = self->_parentChangesCount;
  PBDataWriterWriteUint32Field();
  v5 = toCopy;

LABEL_12:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    toCopy[6] = self->_disabledRoleCount;
    *(toCopy + 22) |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  toCopy[5] = self->_detachedRoleCount;
  *(toCopy + 22) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  toCopy[4] = self->_childRoleCount;
  *(toCopy + 22) |= 4u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  toCopy[10] = self->_routerRoleCount;
  *(toCopy + 22) |= 0x100u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  toCopy[7] = self->_leaderRoleCount;
  *(toCopy + 22) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  toCopy[2] = self->_attachAttempts;
  *(toCopy + 22) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  toCopy[9] = self->_partitionIdChangesCount;
  *(toCopy + 22) |= 0x80u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  toCopy[3] = self->_betterPartitionAttachAttempts;
  *(toCopy + 22) |= 2u;
  if ((*&self->_has & 0x40) == 0)
  {
LABEL_10:

    goto LABEL_12;
  }

LABEL_21:
  toCopy[8] = self->_parentChangesCount;
  *(toCopy + 22) |= 0x40u;

LABEL_12:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(result + 6) = self->_disabledRoleCount;
    *(result + 22) |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 5) = self->_detachedRoleCount;
  *(result + 22) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 4) = self->_childRoleCount;
  *(result + 22) |= 4u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 10) = self->_routerRoleCount;
  *(result + 22) |= 0x100u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 7) = self->_leaderRoleCount;
  *(result + 22) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 2) = self->_attachAttempts;
  *(result + 22) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 9) = self->_partitionIdChangesCount;
  *(result + 22) |= 0x80u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      return result;
    }

LABEL_19:
    *(result + 8) = self->_parentChangesCount;
    *(result + 22) |= 0x40u;
    return result;
  }

LABEL_18:
  *(result + 3) = self->_betterPartitionAttachAttempts;
  *(result + 22) |= 2u;
  if ((*&self->_has & 0x40) != 0)
  {
    goto LABEL_19;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  has = self->_has;
  v6 = *(equalCopy + 22);
  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_disabledRoleCount != *(equalCopy + 6))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_detachedRoleCount != *(equalCopy + 5))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_childRoleCount != *(equalCopy + 4))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_47;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 22) & 0x100) == 0 || self->_routerRoleCount != *(equalCopy + 10))
    {
      goto LABEL_47;
    }
  }

  else if ((*(equalCopy + 22) & 0x100) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_leaderRoleCount != *(equalCopy + 7))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_47;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_attachAttempts != *(equalCopy + 2))
    {
      goto LABEL_47;
    }
  }

  else if (v6)
  {
    goto LABEL_47;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_partitionIdChangesCount != *(equalCopy + 9))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_betterPartitionAttachAttempts != *(equalCopy + 3))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 0x40) == 0)
  {
    v7 = (v6 & 0x40) == 0;

    return v7;
  }

  if ((v6 & 0x40) != 0 && self->_parentChangesCount == *(equalCopy + 8))
  {

    return 1;
  }

LABEL_47:

  return 0;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v3 = 2654435761 * self->_disabledRoleCount;
    if ((has & 8) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_detachedRoleCount;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_childRoleCount;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_routerRoleCount;
    if ((has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_leaderRoleCount;
    if (has)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = 0;
  if (has)
  {
LABEL_7:
    v8 = 2654435761 * self->_attachAttempts;
    if ((has & 0x80) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_partitionIdChangesCount;
    if ((has & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v10 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

LABEL_17:
  v9 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v10 = 2654435761 * self->_betterPartitionAttachAttempts;
  if ((has & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v11 = 2654435761 * self->_parentChangesCount;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 22);
  if ((v5 & 0x10) != 0)
  {
    self->_disabledRoleCount = *(fromCopy + 6);
    *&self->_has |= 0x10u;
    v5 = *(fromCopy + 22);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_detachedRoleCount = *(fromCopy + 5);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 22);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_childRoleCount = *(fromCopy + 4);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 22);
  if ((v5 & 0x100) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_routerRoleCount = *(fromCopy + 10);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 22);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_leaderRoleCount = *(fromCopy + 7);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 22);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_attachAttempts = *(fromCopy + 2);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 22);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_partitionIdChangesCount = *(fromCopy + 9);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 22);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_betterPartitionAttachAttempts = *(fromCopy + 3);
  *&self->_has |= 2u;
  if ((*(fromCopy + 22) & 0x40) == 0)
  {
LABEL_10:

    goto LABEL_12;
  }

LABEL_21:
  self->_parentChangesCount = *(fromCopy + 8);
  *&self->_has |= 0x40u;

LABEL_12:
}

@end