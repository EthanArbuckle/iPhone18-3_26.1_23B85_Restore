@interface NSSAirplaneModeSettingsMsg
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSSAirplaneModeSettingsMsg

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSAirplaneModeSettingsMsg;
  v4 = [(NSSAirplaneModeSettingsMsg *)&v8 description];
  dictionaryRepresentation = [(NSSAirplaneModeSettingsMsg *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_cellularOn];
    [dictionary setObject:v4 forKey:@"cellularOn"];
  }

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_wifiOn];
  [dictionary setObject:v5 forKey:@"wifiOn"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_bluetoothOn];
  [dictionary setObject:v6 forKey:@"bluetoothOn"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 9) = self->_cellularOn;
    *(to + 12) |= 1u;
  }

  *(to + 10) = self->_wifiOn;
  *(to + 8) = self->_bluetoothOn;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 9) = self->_cellularOn;
    *(result + 12) |= 1u;
  }

  *(result + 10) = self->_wifiOn;
  *(result + 8) = self->_bluetoothOn;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = equalCopy[12];
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((equalCopy[12] & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = equalCopy[9];
  if (self->_cellularOn)
  {
    if ((equalCopy[9] & 1) == 0)
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

  v6 = equalCopy[10];
  if (self->_wifiOn)
  {
    if (equalCopy[10])
    {
      goto LABEL_14;
    }
  }

  else if ((equalCopy[10] & 1) == 0)
  {
LABEL_14:
    v7 = self->_bluetoothOn == equalCopy[8];
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

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_cellularOn = *(from + 9);
    *&self->_has |= 1u;
  }

  self->_wifiOn = *(from + 10);
  self->_bluetoothOn = *(from + 8);
}

@end