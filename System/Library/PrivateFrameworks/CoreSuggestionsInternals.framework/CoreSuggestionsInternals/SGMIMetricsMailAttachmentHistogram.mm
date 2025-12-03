@interface SGMIMetricsMailAttachmentHistogram
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCategory:(id)category;
- (int)category;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCount128KBTo512KB:(BOOL)b;
- (void)setHasCount32KBTo128KB:(BOOL)b;
- (void)setHasCount512KBTo2MB:(BOOL)b;
- (void)setHasCount8KBTo32KB:(BOOL)b;
- (void)setHasCountOver2MB:(BOOL)b;
- (void)setHasCountUpTo8KB:(BOOL)b;
- (void)writeTo:(id)to;
@end

@implementation SGMIMetricsMailAttachmentHistogram

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 36);
  if (v5)
  {
    self->_category = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 36);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(fromCopy + 36) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  self->_countUpTo8KB = *(fromCopy + 8);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_count8KBTo32KB = *(fromCopy + 6);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 36);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_count32KBTo128KB = *(fromCopy + 4);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 36);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_count128KBTo512KB = *(fromCopy + 3);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 36);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  self->_count512KBTo2MB = *(fromCopy + 5);
  *&self->_has |= 8u;
  if ((*(fromCopy + 36) & 0x20) != 0)
  {
LABEL_8:
    self->_countOver2MB = *(fromCopy + 7);
    *&self->_has |= 0x20u;
  }

LABEL_9:
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_category;
    if ((*&self->_has & 0x40) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_countUpTo8KB;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_count8KBTo32KB;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_count32KBTo128KB;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_count128KBTo512KB;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_count512KBTo2MB;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_countOver2MB;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_category != *(equalCopy + 2))
    {
      goto LABEL_36;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_36:
    v5 = 0;
    goto LABEL_37;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 36) & 0x40) == 0 || self->_countUpTo8KB != *(equalCopy + 8))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 36) & 0x40) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 36) & 0x10) == 0 || self->_count8KBTo32KB != *(equalCopy + 6))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 36) & 0x10) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_count32KBTo128KB != *(equalCopy + 4))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_count128KBTo512KB != *(equalCopy + 3))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 36) & 8) == 0 || self->_count512KBTo2MB != *(equalCopy + 5))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 36) & 8) != 0)
  {
    goto LABEL_36;
  }

  v5 = (*(equalCopy + 36) & 0x20) == 0;
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 36) & 0x20) == 0 || self->_countOver2MB != *(equalCopy + 7))
    {
      goto LABEL_36;
    }

    v5 = 1;
  }

LABEL_37:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_category;
    *(result + 36) |= 1u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(result + 8) = self->_countUpTo8KB;
  *(result + 36) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 6) = self->_count8KBTo32KB;
  *(result + 36) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 4) = self->_count32KBTo128KB;
  *(result + 36) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 3) = self->_count128KBTo512KB;
  *(result + 36) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 5) = self->_count512KBTo2MB;
  *(result + 36) |= 8u;
  if ((*&self->_has & 0x20) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 7) = self->_countOver2MB;
  *(result + 36) |= 0x20u;
  return result;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_category;
    *(toCopy + 36) |= 1u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  toCopy[8] = self->_countUpTo8KB;
  *(toCopy + 36) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  toCopy[6] = self->_count8KBTo32KB;
  *(toCopy + 36) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  toCopy[4] = self->_count32KBTo128KB;
  *(toCopy + 36) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  toCopy[3] = self->_count128KBTo512KB;
  *(toCopy + 36) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  toCopy[5] = self->_count512KBTo2MB;
  *(toCopy + 36) |= 8u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    toCopy[7] = self->_countOver2MB;
    *(toCopy + 36) |= 0x20u;
  }

LABEL_9:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    category = self->_category;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  countUpTo8KB = self->_countUpTo8KB;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  count8KBTo32KB = self->_count8KBTo32KB;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  count32KBTo128KB = self->_count32KBTo128KB;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  count128KBTo512KB = self->_count128KBTo512KB;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  count512KBTo2MB = self->_count512KBTo2MB;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    countOver2MB = self->_countOver2MB;
    PBDataWriterWriteUint32Field();
  }

LABEL_9:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    category = self->_category;
    if (category >= 3)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_category];
    }

    else
    {
      v6 = off_27894EBC8[category];
    }

    [dictionary setObject:v6 forKey:@"category"];

    has = self->_has;
  }

  if ((has & 0x40) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_countUpTo8KB];
    [dictionary setObject:v9 forKey:@"countUpTo8KB"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_8:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_count8KBTo32KB];
  [dictionary setObject:v10 forKey:@"count8KBTo32KB"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_count32KBTo128KB];
  [dictionary setObject:v11 forKey:@"count32KBTo128KB"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_count128KBTo512KB];
  [dictionary setObject:v12 forKey:@"count128KBTo512KB"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_20:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_count512KBTo2MB];
  [dictionary setObject:v13 forKey:@"count512KBTo2MB"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_countOver2MB];
    [dictionary setObject:v7 forKey:@"countOver2MB"];
  }

LABEL_13:

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGMIMetricsMailAttachmentHistogram;
  v4 = [(SGMIMetricsMailAttachmentHistogram *)&v8 description];
  dictionaryRepresentation = [(SGMIMetricsMailAttachmentHistogram *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasCountOver2MB:(BOOL)b
{
  if (b)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasCount512KBTo2MB:(BOOL)b
{
  if (b)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasCount128KBTo512KB:(BOOL)b
{
  if (b)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasCount32KBTo128KB:(BOOL)b
{
  if (b)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCount8KBTo32KB:(BOOL)b
{
  if (b)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasCountUpTo8KB:(BOOL)b
{
  if (b)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (int)StringAsCategory:(id)category
{
  categoryCopy = category;
  if ([categoryCopy isEqualToString:@"Application"])
  {
    v4 = 0;
  }

  else if ([categoryCopy isEqualToString:@"Media"])
  {
    v4 = 1;
  }

  else if ([categoryCopy isEqualToString:@"Others"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)category
{
  if (*&self->_has)
  {
    return self->_category;
  }

  else
  {
    return 0;
  }
}

@end