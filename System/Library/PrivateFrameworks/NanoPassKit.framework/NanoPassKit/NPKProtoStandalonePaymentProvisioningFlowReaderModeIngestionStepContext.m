@interface NPKProtoStandalonePaymentProvisioningFlowReaderModeIngestionStepContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsIngestionState:(id)a3;
- (int)ingestionState;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIngestionState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowReaderModeIngestionStepContext

- (int)ingestionState
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_ingestionState;
  }

  else
  {
    return 100;
  }
}

- (void)setHasIngestionState:(BOOL)a3
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

- (int)StringAsIngestionState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ReaderModeIngestionStateDefault"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"ReaderModeIngestionStateCardNotFound"])
  {
    v4 = 110;
  }

  else if ([v3 isEqualToString:@"ReaderModeIngestionStateTransferValue"])
  {
    v4 = 120;
  }

  else if ([v3 isEqualToString:@"ReaderModeIngestionStateTransferring"])
  {
    v4 = 130;
  }

  else if ([v3 isEqualToString:@"ReaderModeIngestionStateCardAdded"])
  {
    v4 = 140;
  }

  else if ([v3 isEqualToString:@"ReaderModeIngestionStateCommuteCardAdded"])
  {
    v4 = 150;
  }

  else
  {
    v4 = 100;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowReaderModeIngestionStepContext;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowReaderModeIngestionStepContext *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentProvisioningFlowReaderModeIngestionStepContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v3;
  physicalCardImageURL = self->_physicalCardImageURL;
  if (physicalCardImageURL)
  {
    [v3 setObject:physicalCardImageURL forKey:@"physicalCardImageURL"];
  }

  title = self->_title;
  if (title)
  {
    [v5 setObject:title forKey:@"title"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [v5 setObject:subtitle forKey:@"subtitle"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    ingestionState = self->_ingestionState;
    if (ingestionState > 129)
    {
      switch(ingestionState)
      {
        case 130:
          v11 = @"ReaderModeIngestionStateTransferring";
          goto LABEL_22;
        case 140:
          v11 = @"ReaderModeIngestionStateCardAdded";
          goto LABEL_22;
        case 150:
          v11 = @"ReaderModeIngestionStateCommuteCardAdded";
          goto LABEL_22;
      }
    }

    else
    {
      switch(ingestionState)
      {
        case 'd':
          v11 = @"ReaderModeIngestionStateDefault";
          goto LABEL_22;
        case 'n':
          v11 = @"ReaderModeIngestionStateCardNotFound";
          goto LABEL_22;
        case 'x':
          v11 = @"ReaderModeIngestionStateTransferValue";
LABEL_22:
          [v5 setObject:v11 forKey:@"ingestionState"];

          has = self->_has;
          goto LABEL_23;
      }
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_ingestionState];
    goto LABEL_22;
  }

LABEL_23:
  if (has)
  {
    *&v4 = self->_ingestionProgress;
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v5 setObject:v12 forKey:@"ingestionProgress"];
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_physicalCardImageURL)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    ingestionState = self->_ingestionState;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    ingestionProgress = self->_ingestionProgress;
    PBDataWriterWriteFloatField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_physicalCardImageURL)
  {
    [v4 setPhysicalCardImageURL:?];
    v4 = v6;
  }

  if (self->_title)
  {
    [v6 setTitle:?];
    v4 = v6;
  }

  if (self->_subtitle)
  {
    [v6 setSubtitle:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 3) = self->_ingestionState;
    *(v4 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 2) = LODWORD(self->_ingestionProgress);
    *(v4 + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_physicalCardImageURL copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_title copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_subtitle copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 12) = self->_ingestionState;
    *(v5 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_ingestionProgress;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  physicalCardImageURL = self->_physicalCardImageURL;
  if (physicalCardImageURL | *(v4 + 2))
  {
    if (![(NSString *)physicalCardImageURL isEqual:?])
    {
      goto LABEL_17;
    }
  }

  title = self->_title;
  if (title | *(v4 + 4))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_17;
    }
  }

  subtitle = self->_subtitle;
  if (subtitle | *(v4 + 3))
  {
    if (![(NSString *)subtitle isEqual:?])
    {
      goto LABEL_17;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_ingestionState != *(v4 + 3))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  v8 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_ingestionProgress != *(v4 + 2))
    {
      goto LABEL_17;
    }

    v8 = 1;
  }

LABEL_18:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_physicalCardImageURL hash];
  v4 = [(NSString *)self->_title hash];
  v5 = [(NSString *)self->_subtitle hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_ingestionState;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v8 ^ v12;
  }

  v8 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  ingestionProgress = self->_ingestionProgress;
  if (ingestionProgress < 0.0)
  {
    ingestionProgress = -ingestionProgress;
  }

  *v6.i32 = floorf(ingestionProgress + 0.5);
  v10 = (ingestionProgress - *v6.i32) * 1.8447e19;
  *v7.i32 = *v6.i32 - (truncf(*v6.i32 * 5.421e-20) * 1.8447e19);
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  v12 = 2654435761u * *vbslq_s8(v11, v7, v6).i32;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabsf(v10);
  }

  return v4 ^ v3 ^ v5 ^ v8 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 2))
  {
    [(NPKProtoStandalonePaymentProvisioningFlowReaderModeIngestionStepContext *)self setPhysicalCardImageURL:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(NPKProtoStandalonePaymentProvisioningFlowReaderModeIngestionStepContext *)self setTitle:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(NPKProtoStandalonePaymentProvisioningFlowReaderModeIngestionStepContext *)self setSubtitle:?];
    v4 = v6;
  }

  v5 = *(v4 + 40);
  if ((v5 & 2) != 0)
  {
    self->_ingestionState = *(v4 + 3);
    *&self->_has |= 2u;
    v5 = *(v4 + 40);
  }

  if (v5)
  {
    self->_ingestionProgress = *(v4 + 2);
    *&self->_has |= 1u;
  }
}

@end