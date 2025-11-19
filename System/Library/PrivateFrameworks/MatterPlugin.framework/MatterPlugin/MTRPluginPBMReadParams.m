@interface MTRPluginPBMReadParams
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (MTRPluginPBMReadParams)initWithReadParams:(id)a3;
- (MTRReadParams)readParams;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFilterByFabric:(BOOL)a3;
- (void)setReadParams:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTRPluginPBMReadParams

- (MTRPluginPBMReadParams)initWithReadParams:(id)a3
{
  v4 = a3;
  if (v4 && (self = [(MTRPluginPBMReadParams *)self init]) != 0)
  {
    -[MTRPluginPBMReadParams setFilterByFabric:](self, "setFilterByFabric:", [v4 shouldFilterByFabric]);
    -[MTRPluginPBMReadParams setAssumeUnknownAttributesReportable:](self, "setAssumeUnknownAttributesReportable:", [v4 shouldAssumeUnknownAttributesReportable]);
    v5 = [v4 minEventNumber];

    if (v5)
    {
      v6 = [MTRPluginPBMVariableValue alloc];
      v7 = [v4 minEventNumber];
      v8 = [(MTRPluginPBMVariableValue *)v6 initWithObjectValue:v7];
      [(MTRPluginPBMReadParams *)self setMinEventNumber:v8];
    }

    self = self;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setReadParams:(id)a3
{
  v8 = a3;
  -[MTRPluginPBMReadParams setFilterByFabric:](self, "setFilterByFabric:", [v8 shouldFilterByFabric]);
  -[MTRPluginPBMReadParams setAssumeUnknownAttributesReportable:](self, "setAssumeUnknownAttributesReportable:", [v8 shouldAssumeUnknownAttributesReportable]);
  v4 = [v8 minEventNumber];

  if (v4)
  {
    v5 = [MTRPluginPBMVariableValue alloc];
    v6 = [v8 minEventNumber];
    v7 = [(MTRPluginPBMVariableValue *)v5 initWithObjectValue:v6];
    [(MTRPluginPBMReadParams *)self setMinEventNumber:v7];
  }
}

- (MTRReadParams)readParams
{
  v3 = objc_alloc_init(MEMORY[0x277CD54D8]);
  [v3 setFilterByFabric:{-[MTRPluginPBMReadParams filterByFabric](self, "filterByFabric")}];
  [v3 setAssumeUnknownAttributesReportable:{-[MTRPluginPBMReadParams assumeUnknownAttributesReportable](self, "assumeUnknownAttributesReportable")}];
  v4 = [(MTRPluginPBMReadParams *)self minEventNumber];

  if (v4)
  {
    v5 = [(MTRPluginPBMReadParams *)self minEventNumber];
    v6 = [v5 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(MTRPluginPBMReadParams *)self minEventNumber];
      v8 = [v7 object];
      [v3 setMinEventNumber:v8];
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
  v3 = [(MTRPluginPBMReadParams *)self hasFilterByFabric];
  if (v3)
  {

    LOBYTE(v3) = [(MTRPluginPBMReadParams *)self hasAssumeUnknownAttributesReportable];
  }

  return v3;
}

- (void)setHasFilterByFabric:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMReadParams;
  v4 = [(MTRPluginPBMReadParams *)&v8 description];
  v5 = [(MTRPluginPBMReadParams *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_filterByFabric];
    [v3 setObject:v5 forKey:@"filterByFabric"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_assumeUnknownAttributesReportable];
    [v3 setObject:v6 forKey:@"assumeUnknownAttributesReportable"];
  }

  minEventNumber = self->_minEventNumber;
  if (minEventNumber)
  {
    v8 = [(MTRPluginPBMVariableValue *)minEventNumber dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"minEventNumber"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    filterByFabric = self->_filterByFabric;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    assumeUnknownAttributesReportable = self->_assumeUnknownAttributesReportable;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }

  if (self->_minEventNumber)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[17] = self->_filterByFabric;
    v4[20] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[16] = self->_assumeUnknownAttributesReportable;
    v4[20] |= 1u;
  }

  if (self->_minEventNumber)
  {
    v6 = v4;
    [v4 setMinEventNumber:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(MTRPluginPBMVariableValue *)self->_minEventNumber copyWithZone:a3];
  v9 = v6[1];
  v6[1] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = *(v4 + 20);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0)
    {
      goto LABEL_17;
    }

    v8 = *(v4 + 17);
    if (self->_filterByFabric)
    {
      if ((*(v4 + 17) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (*(v4 + 17))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v4 + 20) & 2) != 0)
  {
    goto LABEL_17;
  }

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(v4 + 20) & 1) == 0)
  {
    goto LABEL_17;
  }

  v5 = *(v4 + 16);
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

  if ((*(v4 + 16) & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  minEventNumber = self->_minEventNumber;
  if (minEventNumber | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = v4[20];
  if ((v6 & 2) != 0)
  {
    self->_filterByFabric = v4[17];
    *&self->_has |= 2u;
    v6 = v4[20];
  }

  if (v6)
  {
    self->_assumeUnknownAttributesReportable = v4[16];
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