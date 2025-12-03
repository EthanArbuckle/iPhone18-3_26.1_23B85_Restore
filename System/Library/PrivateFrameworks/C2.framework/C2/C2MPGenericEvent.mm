@interface C2MPGenericEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)addMetric:(id)metric;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTimestampStart:(BOOL)start;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation C2MPGenericEvent

- (int)type
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"none"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"cloudkit"])
  {
    v4 = 101;
  }

  else if ([typeCopy isEqualToString:@"cloudkit_client"])
  {
    v4 = 201;
  }

  else if ([typeCopy isEqualToString:@"server"])
  {
    v4 = 301;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTimestampStart:(BOOL)start
{
  if (start)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addMetric:(id)metric
{
  metricCopy = metric;
  metrics = self->_metrics;
  v8 = metricCopy;
  if (!metrics)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_metrics;
    self->_metrics = v6;

    metricCopy = v8;
    metrics = self->_metrics;
  }

  [(NSMutableArray *)metrics addObject:metricCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = C2MPGenericEvent;
  v4 = [(C2MPGenericEvent *)&v8 description];
  dictionaryRepresentation = [(C2MPGenericEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    type = self->_type;
    if (type > 200)
    {
      if (type == 201)
      {
        v5 = @"cloudkit_client";
        goto LABEL_12;
      }

      if (type == 301)
      {
        v5 = @"server";
        goto LABEL_12;
      }
    }

    else
    {
      if (!type)
      {
        v5 = @"none";
        goto LABEL_12;
      }

      if (type == 101)
      {
        v5 = @"cloudkit";
LABEL_12:
        [dictionary setObject:v5 forKey:@"type"];

        goto LABEL_13;
      }
    }

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
    goto LABEL_12;
  }

LABEL_13:
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestampStart];
    [dictionary setObject:v8 forKey:@"timestamp_start"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestampEnd];
    [dictionary setObject:v9 forKey:@"timestamp_end"];
  }

  if ([(NSMutableArray *)self->_metrics count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_metrics, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_metrics;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKey:@"metric"];
  }

  v17 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    timestampStart = self->_timestampStart;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if (has)
  {
    timestampEnd = self->_timestampEnd;
    PBDataWriterWriteUint64Field();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_metrics;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[10] = self->_type;
    *(toCopy + 44) |= 4u;
  }

  v10 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_timestampStart;
    *(toCopy + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = self->_timestampEnd;
    *(toCopy + 44) |= 1u;
  }

  if ([(C2MPGenericEvent *)self metricsCount])
  {
    [v10 clearMetrics];
    metricsCount = [(C2MPGenericEvent *)self metricsCount];
    if (metricsCount)
    {
      v7 = metricsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(C2MPGenericEvent *)self metricAtIndex:i];
        [v10 addMetric:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 40) = self->_type;
    *(v5 + 44) |= 4u;
  }

  v7 = [(NSString *)self->_name copyWithZone:zone];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_timestampStart;
    *(v6 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 8) = self->_timestampEnd;
    *(v6 + 44) |= 1u;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_metrics;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * i) copyWithZone:{zone, v18}];
        [v6 addMetric:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = *(equalCopy + 44);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 44) & 4) == 0 || self->_type != *(equalCopy + 10))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 44) & 4) != 0)
  {
    goto LABEL_22;
  }

  name = self->_name;
  if (name | *(equalCopy + 4))
  {
    if (![(NSString *)name isEqual:?])
    {
LABEL_22:
      v10 = 0;
      goto LABEL_23;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 44);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_timestampStart != *(equalCopy + 2))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_22;
  }

  if (has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_timestampEnd != *(equalCopy + 1))
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_22;
  }

  metrics = self->_metrics;
  if (metrics | *(equalCopy + 3))
  {
    v10 = [(NSMutableArray *)metrics isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_23:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_name hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761u * self->_timestampStart;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ [(NSMutableArray *)self->_metrics hash];
  }

  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761u * self->_timestampEnd;
  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSMutableArray *)self->_metrics hash];
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[11] & 4) != 0)
  {
    self->_type = fromCopy[10];
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 4))
  {
    [(C2MPGenericEvent *)self setName:?];
  }

  v6 = *(v5 + 44);
  if ((v6 & 2) != 0)
  {
    self->_timestampStart = *(v5 + 2);
    *&self->_has |= 2u;
    v6 = *(v5 + 44);
  }

  if (v6)
  {
    self->_timestampEnd = *(v5 + 1);
    *&self->_has |= 1u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v5 + 3);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(C2MPGenericEvent *)self addMetric:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end