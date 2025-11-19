@interface OTCDPRecoveryInformation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNonViableRepair:(BOOL)a3;
- (void)setHasSilentRecoveryAttempt:(BOOL)a3;
- (void)setHasUseCachedSecret:(BOOL)a3;
- (void)setHasUsePreviouslyCachedRecoveryKey:(BOOL)a3;
- (void)setHasUsesMultipleIcsc:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation OTCDPRecoveryInformation

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 2))
  {
    [(OTCDPRecoveryInformation *)self setRecoverySecret:?];
    v4 = v6;
  }

  if ((v4[32] & 8) != 0)
  {
    self->_useCachedSecret = v4[27];
    *&self->_has |= 8u;
  }

  if (*(v4 + 1))
  {
    [(OTCDPRecoveryInformation *)self setRecoveryKey:?];
    v4 = v6;
  }

  v5 = v4[32];
  if ((v5 & 0x10) != 0)
  {
    self->_usePreviouslyCachedRecoveryKey = v4[28];
    *&self->_has |= 0x10u;
    v5 = v4[32];
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if (!v5)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if ((v4[32] & 4) == 0)
  {
    goto LABEL_9;
  }

  self->_silentRecoveryAttempt = v4[26];
  *&self->_has |= 4u;
  v5 = v4[32];
  if (!v5)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_containsIcdpData = v4[24];
  *&self->_has |= 1u;
  v5 = v4[32];
  if ((v5 & 0x20) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_19:
  self->_usesMultipleIcsc = v4[29];
  *&self->_has |= 0x20u;
  if ((v4[32] & 2) != 0)
  {
LABEL_12:
    self->_nonViableRepair = v4[25];
    *&self->_has |= 2u;
  }

LABEL_13:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_recoverySecret hash];
  if ((*&self->_has & 8) != 0)
  {
    v4 = 2654435761 * self->_useCachedSecret;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_recoveryKey hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v6 = 2654435761 * self->_usePreviouslyCachedRecoveryKey;
    if ((*&self->_has & 4) != 0)
    {
LABEL_6:
      v7 = 2654435761 * self->_silentRecoveryAttempt;
      if (*&self->_has)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
  if (*&self->_has)
  {
LABEL_7:
    v8 = 2654435761 * self->_containsIcdpData;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v9 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

LABEL_12:
  v8 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v9 = 2654435761 * self->_usesMultipleIcsc;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v10 = 2654435761 * self->_nonViableRepair;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  recoverySecret = self->_recoverySecret;
  if (recoverySecret | *(v4 + 2))
  {
    if (![(NSString *)recoverySecret isEqual:?])
    {
      goto LABEL_53;
    }
  }

  has = self->_has;
  v7 = *(v4 + 32);
  if ((has & 8) != 0)
  {
    if ((*(v4 + 32) & 8) == 0)
    {
      goto LABEL_53;
    }

    v10 = *(v4 + 27);
    if (self->_useCachedSecret)
    {
      if ((*(v4 + 27) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (*(v4 + 27))
    {
      goto LABEL_53;
    }
  }

  else if ((*(v4 + 32) & 8) != 0)
  {
    goto LABEL_53;
  }

  recoveryKey = self->_recoveryKey;
  if (recoveryKey | *(v4 + 1))
  {
    if (![(NSString *)recoveryKey isEqual:?])
    {
      goto LABEL_53;
    }

    has = self->_has;
    v7 = *(v4 + 32);
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_53;
    }

    v11 = *(v4 + 28);
    if (self->_usePreviouslyCachedRecoveryKey)
    {
      if ((*(v4 + 28) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (*(v4 + 28))
    {
      goto LABEL_53;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_53;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0)
    {
      goto LABEL_53;
    }

    v12 = *(v4 + 26);
    if (self->_silentRecoveryAttempt)
    {
      if ((*(v4 + 26) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (*(v4 + 26))
    {
      goto LABEL_53;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_53;
  }

  if (has)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_53;
    }

    v13 = *(v4 + 24);
    if (self->_containsIcdpData)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (*(v4 + 24))
    {
      goto LABEL_53;
    }
  }

  else if (v7)
  {
    goto LABEL_53;
  }

  if ((has & 0x20) == 0)
  {
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_17;
    }

LABEL_53:
    v9 = 0;
    goto LABEL_54;
  }

  if ((v7 & 0x20) == 0)
  {
    goto LABEL_53;
  }

  v14 = *(v4 + 29);
  if (self->_usesMultipleIcsc)
  {
    if ((*(v4 + 29) & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (*(v4 + 29))
  {
    goto LABEL_53;
  }

LABEL_17:
  v9 = (v7 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v7 & 2) != 0)
    {
      if (self->_nonViableRepair)
      {
        if (*(v4 + 25))
        {
          goto LABEL_55;
        }
      }

      else if (!*(v4 + 25))
      {
LABEL_55:
        v9 = 1;
        goto LABEL_54;
      }
    }

    goto LABEL_53;
  }

LABEL_54:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_recoverySecret copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 27) = self->_useCachedSecret;
    *(v5 + 32) |= 8u;
  }

  v8 = [(NSString *)self->_recoveryKey copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 28) = self->_usePreviouslyCachedRecoveryKey;
    *(v5 + 32) |= 0x10u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 26) = self->_silentRecoveryAttempt;
  *(v5 + 32) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    *(v5 + 29) = self->_usesMultipleIcsc;
    *(v5 + 32) |= 0x20u;
    if ((*&self->_has & 2) == 0)
    {
      return v5;
    }

    goto LABEL_8;
  }

LABEL_12:
  *(v5 + 24) = self->_containsIcdpData;
  *(v5 + 32) |= 1u;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((has & 2) != 0)
  {
LABEL_8:
    *(v5 + 25) = self->_nonViableRepair;
    *(v5 + 32) |= 2u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_recoverySecret)
  {
    [v4 setRecoverySecret:?];
    v4 = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    v4[27] = self->_useCachedSecret;
    v4[32] |= 8u;
  }

  if (self->_recoveryKey)
  {
    [v6 setRecoveryKey:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v4[28] = self->_usePreviouslyCachedRecoveryKey;
    v4[32] |= 0x10u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  v4[26] = self->_silentRecoveryAttempt;
  v4[32] |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4[24] = self->_containsIcdpData;
  v4[32] |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_19:
  v4[29] = self->_usesMultipleIcsc;
  v4[32] |= 0x20u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_12:
    v4[25] = self->_nonViableRepair;
    v4[32] |= 2u;
  }

LABEL_13:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_recoverySecret)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if ((*&self->_has & 8) != 0)
  {
    useCachedSecret = self->_useCachedSecret;
    PBDataWriterWriteBOOLField();
    v4 = v12;
  }

  if (self->_recoveryKey)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    usePreviouslyCachedRecoveryKey = self->_usePreviouslyCachedRecoveryKey;
    PBDataWriterWriteBOOLField();
    v4 = v12;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  silentRecoveryAttempt = self->_silentRecoveryAttempt;
  PBDataWriterWriteBOOLField();
  v4 = v12;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  containsIcdpData = self->_containsIcdpData;
  PBDataWriterWriteBOOLField();
  v4 = v12;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_19:
  usesMultipleIcsc = self->_usesMultipleIcsc;
  PBDataWriterWriteBOOLField();
  v4 = v12;
  if ((*&self->_has & 2) != 0)
  {
LABEL_12:
    nonViableRepair = self->_nonViableRepair;
    PBDataWriterWriteBOOLField();
    v4 = v12;
  }

LABEL_13:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  recoverySecret = self->_recoverySecret;
  if (recoverySecret)
  {
    [v3 setObject:recoverySecret forKey:@"recovery_secret"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_useCachedSecret];
    [v4 setObject:v6 forKey:@"use_cached_secret"];
  }

  recoveryKey = self->_recoveryKey;
  if (recoveryKey)
  {
    [v4 setObject:recoveryKey forKey:@"recovery_key"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_usePreviouslyCachedRecoveryKey];
    [v4 setObject:v11 forKey:@"use_previously_cached_recovery_key"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_silentRecoveryAttempt];
  [v4 setObject:v12 forKey:@"silent_recovery_attempt"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_containsIcdpData];
  [v4 setObject:v13 forKey:@"contains_icdp_data"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_19:
  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_usesMultipleIcsc];
  [v4 setObject:v14 forKey:@"uses_multiple_icsc"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_12:
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_nonViableRepair];
    [v4 setObject:v9 forKey:@"non_viable_repair"];
  }

LABEL_13:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = OTCDPRecoveryInformation;
  v4 = [(OTCDPRecoveryInformation *)&v8 description];
  v5 = [(OTCDPRecoveryInformation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasNonViableRepair:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasUsesMultipleIcsc:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasSilentRecoveryAttempt:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasUsePreviouslyCachedRecoveryKey:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasUseCachedSecret:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

@end