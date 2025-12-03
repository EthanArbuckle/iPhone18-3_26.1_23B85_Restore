@interface MTRPluginPBMReadParams
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (MTRPluginPBMReadParams)initWithReadParams:(id)params;
- (MTRReadParams)readParams;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFilterByFabric:(BOOL)fabric;
- (void)setReadParams:(id)params;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMReadParams

- (MTRPluginPBMReadParams)initWithReadParams:(id)params
{
  paramsCopy = params;
  if (paramsCopy && (self = [(MTRPluginPBMReadParams *)self init]) != 0)
  {
    -[MTRPluginPBMReadParams setFilterByFabric:](self, "setFilterByFabric:", [paramsCopy shouldFilterByFabric]);
    -[MTRPluginPBMReadParams setAssumeUnknownAttributesReportable:](self, "setAssumeUnknownAttributesReportable:", [paramsCopy shouldAssumeUnknownAttributesReportable]);
    minEventNumber = [paramsCopy minEventNumber];

    if (minEventNumber)
    {
      v6 = [MTRPluginPBMVariableValue alloc];
      minEventNumber2 = [paramsCopy minEventNumber];
      v8 = [(MTRPluginPBMVariableValue *)v6 initWithObjectValue:minEventNumber2];
      [(MTRPluginPBMReadParams *)self setMinEventNumber:v8];
    }

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setReadParams:(id)params
{
  paramsCopy = params;
  -[MTRPluginPBMReadParams setFilterByFabric:](self, "setFilterByFabric:", [paramsCopy shouldFilterByFabric]);
  -[MTRPluginPBMReadParams setAssumeUnknownAttributesReportable:](self, "setAssumeUnknownAttributesReportable:", [paramsCopy shouldAssumeUnknownAttributesReportable]);
  minEventNumber = [paramsCopy minEventNumber];

  if (minEventNumber)
  {
    v5 = [MTRPluginPBMVariableValue alloc];
    minEventNumber2 = [paramsCopy minEventNumber];
    v7 = [(MTRPluginPBMVariableValue *)v5 initWithObjectValue:minEventNumber2];
    [(MTRPluginPBMReadParams *)self setMinEventNumber:v7];
  }
}

- (MTRReadParams)readParams
{
  v3 = objc_alloc_init(MEMORY[0x277CD54D8]);
  [v3 setFilterByFabric:{-[MTRPluginPBMReadParams filterByFabric](self, "filterByFabric")}];
  [v3 setAssumeUnknownAttributesReportable:{-[MTRPluginPBMReadParams assumeUnknownAttributesReportable](self, "assumeUnknownAttributesReportable")}];
  minEventNumber = [(MTRPluginPBMReadParams *)self minEventNumber];

  if (minEventNumber)
  {
    minEventNumber2 = [(MTRPluginPBMReadParams *)self minEventNumber];
    object = [minEventNumber2 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      minEventNumber3 = [(MTRPluginPBMReadParams *)self minEventNumber];
      object2 = [minEventNumber3 object];
      [v3 setMinEventNumber:object2];
    }

    else
    {
      [v3 setMinEventNumber:0];
    }
  }

  return v3;
}

- (BOOL)isValid
{
  hasFilterByFabric = [(MTRPluginPBMReadParams *)self hasFilterByFabric];
  if (hasFilterByFabric)
  {

    LOBYTE(hasFilterByFabric) = [(MTRPluginPBMReadParams *)self hasAssumeUnknownAttributesReportable];
  }

  return hasFilterByFabric;
}

- (void)setHasFilterByFabric:(BOOL)fabric
{
  if (fabric)
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMReadParams;
  v4 = [(MTRPluginPBMReadParams *)&v8 description];
  dictionaryRepresentation = [(MTRPluginPBMReadParams *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_filterByFabric];
    [dictionary setObject:v5 forKey:@"filterByFabric"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_assumeUnknownAttributesReportable];
    [dictionary setObject:v6 forKey:@"assumeUnknownAttributesReportable"];
  }

  minEventNumber = self->_minEventNumber;
  if (minEventNumber)
  {
    dictionaryRepresentation = [(MTRPluginPBMVariableValue *)minEventNumber dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"minEventNumber"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    filterByFabric = self->_filterByFabric;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    assumeUnknownAttributesReportable = self->_assumeUnknownAttributesReportable;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }

  if (self->_minEventNumber)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[17] = self->_filterByFabric;
    toCopy[20] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[16] = self->_assumeUnknownAttributesReportable;
    toCopy[20] |= 1u;
  }

  if (self->_minEventNumber)
  {
    v6 = toCopy;
    [toCopy setMinEventNumber:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5[17] = self->_filterByFabric;
    v5[20] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v5[16] = self->_assumeUnknownAttributesReportable;
    v5[20] |= 1u;
  }

  v8 = [(MTRPluginPBMVariableValue *)self->_minEventNumber copyWithZone:zone];
  v9 = v6[1];
  v6[1] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = *(equalCopy + 20);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) == 0)
    {
      goto LABEL_17;
    }

    v8 = *(equalCopy + 17);
    if (self->_filterByFabric)
    {
      if ((*(equalCopy + 17) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (*(equalCopy + 17))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 20) & 2) != 0)
  {
    goto LABEL_17;
  }

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(equalCopy + 20) & 1) == 0)
  {
    goto LABEL_17;
  }

  v5 = *(equalCopy + 16);
  if (!self->_assumeUnknownAttributesReportable)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

  if ((*(equalCopy + 16) & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  minEventNumber = self->_minEventNumber;
  if (minEventNumber | *(equalCopy + 1))
  {
    v7 = [(MTRPluginPBMVariableValue *)minEventNumber isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_18:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_filterByFabric;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(MTRPluginPBMVariableValue *)self->_minEventNumber hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_assumeUnknownAttributesReportable;
  return v7 ^ v6 ^ [(MTRPluginPBMVariableValue *)self->_minEventNumber hash:v3];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = fromCopy[20];
  if ((v6 & 2) != 0)
  {
    self->_filterByFabric = fromCopy[17];
    *&self->_has |= 2u;
    v6 = fromCopy[20];
  }

  if (v6)
  {
    self->_assumeUnknownAttributesReportable = fromCopy[16];
    *&self->_has |= 1u;
  }

  minEventNumber = self->_minEventNumber;
  v8 = *(v5 + 1);
  if (minEventNumber)
  {
    if (v8)
    {
      [(MTRPluginPBMVariableValue *)minEventNumber mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(MTRPluginPBMReadParams *)self setMinEventNumber:?];
  }

  MEMORY[0x2821F96F8]();
}

@end