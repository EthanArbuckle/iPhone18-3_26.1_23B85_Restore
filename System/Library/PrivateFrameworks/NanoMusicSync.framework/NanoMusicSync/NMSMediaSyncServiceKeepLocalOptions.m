@interface NMSMediaSyncServiceKeepLocalOptions
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDownloadOffPowerPolicy:(id)a3;
- (int)StringAsDownloadOnCellularPolicy:(id)a3;
- (int)StringAsQualityOfService:(id)a3;
- (int)downloadOffPowerPolicy;
- (int)downloadOnCellularPolicy;
- (int)qualityOfService;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDownloadOffPowerPolicy:(BOOL)a3;
- (void)setHasDownloadOnCellularPolicy:(BOOL)a3;
- (void)setHasQualityOfService:(BOOL)a3;
- (void)setHasRequiresValidation:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NMSMediaSyncServiceKeepLocalOptions

- (void)setHasRequiresValidation:(BOOL)a3
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

- (int)downloadOffPowerPolicy
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_downloadOffPowerPolicy;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDownloadOffPowerPolicy:(BOOL)a3
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

- (int)StringAsDownloadOffPowerPolicy:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Allowed"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NotAllowed"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)downloadOnCellularPolicy
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_downloadOnCellularPolicy;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDownloadOnCellularPolicy:(BOOL)a3
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

- (int)StringAsDownloadOnCellularPolicy:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Allowed"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NotAllowed"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)qualityOfService
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_qualityOfService;
  }

  else
  {
    return 4;
  }
}

- (void)setHasQualityOfService:(BOOL)a3
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

- (int)StringAsQualityOfService:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UserInteractive"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"UserInitiated"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Utility"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Background"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NMSMediaSyncServiceKeepLocalOptions;
  v4 = [(NMSMediaSyncServiceKeepLocalOptions *)&v8 description];
  v5 = [(NMSMediaSyncServiceKeepLocalOptions *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_requiresValidation];
    [v3 setObject:v8 forKey:@"requiresValidation"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  downloadOffPowerPolicy = self->_downloadOffPowerPolicy;
  if (downloadOffPowerPolicy >= 3)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_downloadOffPowerPolicy];
  }

  else
  {
    v10 = off_27993E430[downloadOffPowerPolicy];
  }

  [v3 setObject:v10 forKey:@"downloadOffPowerPolicy"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_17:
  downloadOnCellularPolicy = self->_downloadOnCellularPolicy;
  if (downloadOnCellularPolicy >= 3)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_downloadOnCellularPolicy];
  }

  else
  {
    v12 = off_27993E430[downloadOnCellularPolicy];
  }

  [v3 setObject:v12 forKey:@"downloadOnCellularPolicy"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_21:
  qualityOfService = self->_qualityOfService;
  if (qualityOfService >= 5)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_qualityOfService];
  }

  else
  {
    v14 = off_27993E448[qualityOfService];
  }

  [v3 setObject:v14 forKey:@"qualityOfService"];

  if (*&self->_has)
  {
LABEL_6:
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeout];
    [v3 setObject:v5 forKey:@"timeout"];
  }

LABEL_7:
  cellularBundleIdentifier = self->_cellularBundleIdentifier;
  if (cellularBundleIdentifier)
  {
    [v3 setObject:cellularBundleIdentifier forKey:@"cellularBundleIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v11 = v4;
  if ((has & 0x10) != 0)
  {
    requiresValidation = self->_requiresValidation;
    PBDataWriterWriteBOOLField();
    v4 = v11;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  downloadOffPowerPolicy = self->_downloadOffPowerPolicy;
  PBDataWriterWriteInt32Field();
  v4 = v11;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  downloadOnCellularPolicy = self->_downloadOnCellularPolicy;
  PBDataWriterWriteInt32Field();
  v4 = v11;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  qualityOfService = self->_qualityOfService;
  PBDataWriterWriteInt32Field();
  v4 = v11;
  if (*&self->_has)
  {
LABEL_6:
    timeout = self->_timeout;
    PBDataWriterWriteDoubleField();
    v4 = v11;
  }

LABEL_7:
  if (self->_cellularBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v4[36] = self->_requiresValidation;
    v4[40] |= 0x10u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 6) = self->_downloadOffPowerPolicy;
  v4[40] |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v4 + 7) = self->_downloadOnCellularPolicy;
  v4[40] |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  *(v4 + 8) = self->_qualityOfService;
  v4[40] |= 8u;
  if (*&self->_has)
  {
LABEL_6:
    *(v4 + 1) = *&self->_timeout;
    v4[40] |= 1u;
  }

LABEL_7:
  if (self->_cellularBundleIdentifier)
  {
    v6 = v4;
    [v4 setCellularBundleIdentifier:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 36) = self->_requiresValidation;
    *(v5 + 40) |= 0x10u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_downloadOffPowerPolicy;
  *(v5 + 40) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    *(v5 + 32) = self->_qualityOfService;
    *(v5 + 40) |= 8u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  *(v5 + 28) = self->_downloadOnCellularPolicy;
  *(v5 + 40) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (has)
  {
LABEL_6:
    *(v5 + 8) = self->_timeout;
    *(v5 + 40) |= 1u;
  }

LABEL_7:
  v8 = [(NSString *)self->_cellularBundleIdentifier copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = *(v4 + 40);
  if ((*&self->_has & 0x10) == 0)
  {
    if ((*(v4 + 40) & 0x10) == 0)
    {
      goto LABEL_4;
    }

LABEL_32:
    v8 = 0;
    goto LABEL_33;
  }

  if ((*(v4 + 40) & 0x10) == 0)
  {
    goto LABEL_32;
  }

  v6 = *(v4 + 36);
  if (self->_requiresValidation)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_32;
  }

LABEL_4:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_downloadOffPowerPolicy != *(v4 + 6))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_downloadOnCellularPolicy != *(v4 + 7))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 40) & 8) == 0 || self->_qualityOfService != *(v4 + 8))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 40) & 8) != 0)
  {
    goto LABEL_32;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_timeout != *(v4 + 1))
    {
      goto LABEL_32;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_32;
  }

  cellularBundleIdentifier = self->_cellularBundleIdentifier;
  if (cellularBundleIdentifier | *(v4 + 2))
  {
    v8 = [(NSString *)cellularBundleIdentifier isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_33:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v8 = 2654435761 * self->_requiresValidation;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v9 = 2654435761 * self->_downloadOffPowerPolicy;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v10 = 2654435761 * self->_downloadOnCellularPolicy;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    v11 = 0;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_14:
    v15 = 0;
    return v9 ^ v8 ^ v10 ^ v11 ^ v15 ^ [(NSString *)self->_cellularBundleIdentifier hash:v3];
  }

LABEL_12:
  v10 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  v11 = 2654435761 * self->_qualityOfService;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  timeout = self->_timeout;
  if (timeout < 0.0)
  {
    timeout = -timeout;
  }

  *v6.i64 = floor(timeout + 0.5);
  v13 = (timeout - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v7, v6).i64;
  if (v13 >= 0.0)
  {
    if (v13 > 0.0)
    {
      v15 += v13;
    }
  }

  else
  {
    v15 -= fabs(v13);
  }

  return v9 ^ v8 ^ v10 ^ v11 ^ v15 ^ [(NSString *)self->_cellularBundleIdentifier hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if ((v5 & 0x10) != 0)
  {
    self->_requiresValidation = *(v4 + 36);
    *&self->_has |= 0x10u;
    v5 = *(v4 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v4 + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_downloadOffPowerPolicy = *(v4 + 6);
  *&self->_has |= 2u;
  v5 = *(v4 + 40);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_downloadOnCellularPolicy = *(v4 + 7);
  *&self->_has |= 4u;
  v5 = *(v4 + 40);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  self->_qualityOfService = *(v4 + 8);
  *&self->_has |= 8u;
  if (*(v4 + 40))
  {
LABEL_6:
    self->_timeout = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_7:
  if (*(v4 + 2))
  {
    v6 = v4;
    [(NMSMediaSyncServiceKeepLocalOptions *)self setCellularBundleIdentifier:?];
    v4 = v6;
  }
}

@end