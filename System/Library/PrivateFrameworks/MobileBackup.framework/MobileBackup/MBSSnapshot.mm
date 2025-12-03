@interface MBSSnapshot
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasLastModified:(BOOL)modified;
- (void)setHasQuotaReserved:(BOOL)reserved;
- (void)setHasSnapshotID:(BOOL)d;
- (void)writeTo:(id)to;
@end

@implementation MBSSnapshot

- (void)dealloc
{
  [(MBSSnapshot *)self setAttributes:0];
  v3.receiver = self;
  v3.super_class = MBSSnapshot;
  [(MBSSnapshot *)&v3 dealloc];
}

- (void)setHasSnapshotID:(BOOL)d
{
  if (d)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasQuotaReserved:(BOOL)reserved
{
  if (reserved)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasLastModified:(BOOL)modified
{
  if (modified)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MBSSnapshot;
  return [NSString stringWithFormat:@"%@ %@", [(MBSSnapshot *)&v3 description], [(MBSSnapshot *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_snapshotID), @"snapshotID"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", self->_quotaReserved), @"quotaReserved"}];
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    [v3 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", self->_lastModified), @"lastModified"}];
  }

LABEL_5:
  attributes = self->_attributes;
  if (attributes)
  {
    [v3 setObject:-[MBSSnapshotAttributes dictionaryRepresentation](attributes forKey:{"dictionaryRepresentation"), @"attributes"}];
  }

  if (*&self->_has)
  {
    [v3 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", self->_committed), @"committed"}];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    snapshotID = self->_snapshotID;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  quotaReserved = self->_quotaReserved;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    lastModified = self->_lastModified;
    PBDataWriterWriteUint64Field();
  }

LABEL_5:
  if (self->_attributes)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    committed = self->_committed;

    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(to + 10) = self->_snapshotID;
    *(to + 44) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(to + 3) = self->_quotaReserved;
  *(to + 44) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(to + 2) = self->_lastModified;
    *(to + 44) |= 2u;
  }

LABEL_5:
  if (self->_attributes)
  {
    [to setAttributes:?];
  }

  if (*&self->_has)
  {
    *(to + 1) = self->_committed;
    *(to + 44) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 10) = self->_snapshotID;
    *(v5 + 44) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v5[3] = self->_quotaReserved;
  *(v5 + 44) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5[2] = self->_lastModified;
    *(v5 + 44) |= 2u;
  }

LABEL_5:

  v6[4] = [(MBSSnapshotAttributes *)self->_attributes copyWithZone:zone];
  if (*&self->_has)
  {
    v6[1] = self->_committed;
    *(v6 + 44) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 44);
    if ((has & 8) != 0)
    {
      if ((*(equal + 44) & 8) == 0 || self->_snapshotID != *(equal + 10))
      {
        goto LABEL_24;
      }
    }

    else if ((*(equal + 44) & 8) != 0)
    {
LABEL_24:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 44) & 4) == 0 || self->_quotaReserved != *(equal + 3))
      {
        goto LABEL_24;
      }
    }

    else if ((*(equal + 44) & 4) != 0)
    {
      goto LABEL_24;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 44) & 2) == 0 || self->_lastModified != *(equal + 2))
      {
        goto LABEL_24;
      }
    }

    else if ((*(equal + 44) & 2) != 0)
    {
      goto LABEL_24;
    }

    attributes = self->_attributes;
    if (attributes | *(equal + 4))
    {
      v5 = [(MBSSnapshotAttributes *)attributes isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
      v7 = *(equal + 44);
    }

    LOBYTE(v5) = (v7 & 1) == 0;
    if (has)
    {
      if ((v7 & 1) == 0 || self->_committed != *(equal + 1))
      {
        goto LABEL_24;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = 2654435761 * self->_snapshotID;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761u * self->_quotaReserved;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = 2654435761u * self->_lastModified;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [(MBSSnapshotAttributes *)self->_attributes hash];
  if (*&self->_has)
  {
    v7 = 2654435761u * self->_committed;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v7 ^ v6;
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 44);
  if ((v5 & 8) != 0)
  {
    self->_snapshotID = *(from + 10);
    *&self->_has |= 8u;
    v5 = *(from + 44);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(from + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_quotaReserved = *(from + 3);
  *&self->_has |= 4u;
  if ((*(from + 44) & 2) != 0)
  {
LABEL_4:
    self->_lastModified = *(from + 2);
    *&self->_has |= 2u;
  }

LABEL_5:
  attributes = self->_attributes;
  v7 = *(from + 4);
  if (attributes)
  {
    if (v7)
    {
      [(MBSSnapshotAttributes *)attributes mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(MBSSnapshot *)self setAttributes:?];
  }

  if (*(from + 44))
  {
    self->_committed = *(from + 1);
    *&self->_has |= 1u;
  }
}

@end