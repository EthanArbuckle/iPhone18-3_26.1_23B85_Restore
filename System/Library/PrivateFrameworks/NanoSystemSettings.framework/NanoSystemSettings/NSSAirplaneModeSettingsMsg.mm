@interface NSSAirplaneModeSettingsMsg
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSSAirplaneModeSettingsMsg

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSAirplaneModeSettingsMsg;
  v4 = [(NSSAirplaneModeSettingsMsg *)&v8 description];
  v5 = [(NSSAirplaneModeSettingsMsg *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_cellularOn];
    [v3 setObject:v4 forKey:@"cellularOn"];
  }

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_wifiOn];
  [v3 setObject:v5 forKey:@"wifiOn"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_bluetoothOn];
  [v3 setObject:v6 forKey:@"bluetoothOn"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (*&self->_has)
  {
    cellularOn = self->_cellularOn;
    PBDataWriterWriteBOOLField();
  }

  wifiOn = self->_wifiOn;
  PBDataWriterWriteBOOLField();
  bluetoothOn = self->_bluetoothOn;
  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 9) = self->_cellularOn;
    *(a3 + 12) |= 1u;
  }

  *(a3 + 10) = self->_wifiOn;
  *(a3 + 8) = self->_bluetoothOn;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 9) = self->_cellularOn;
    *(result + 12) |= 1u;
  }

  *(result + 10) = self->_wifiOn;
  *(result + 8) = self->_bluetoothOn;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = v4[12];
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((v4[12] & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = v4[9];
  if (self->_cellularOn)
  {
    if ((v4[9] & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_3:
    if (v5)
    {
      goto LABEL_12;
    }
  }

  v6 = v4[10];
  if (self->_wifiOn)
  {
    if (v4[10])
    {
      goto LABEL_14;
    }
  }

  else if ((v4[10] & 1) == 0)
  {
LABEL_14:
    v7 = self->_bluetoothOn == v4[8];
    goto LABEL_13;
  }

LABEL_12:
  v7 = 0;
LABEL_13:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_cellularOn;
  }

  else
  {
    v2 = 0;
  }

  return (2654435761 * self->_wifiOn) ^ v2 ^ (2654435761 * self->_bluetoothOn);
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 12))
  {
    self->_cellularOn = *(a3 + 9);
    *&self->_has |= 1u;
  }

  self->_wifiOn = *(a3 + 10);
  self->_bluetoothOn = *(a3 + 8);
}

@end