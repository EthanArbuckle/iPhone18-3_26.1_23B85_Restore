@interface HDCodableCodedValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addReferenceRanges:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableCodedValue

- (void)addReferenceRanges:(id)a3
{
  v4 = a3;
  referenceRanges = self->_referenceRanges;
  v8 = v4;
  if (!referenceRanges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_referenceRanges;
    self->_referenceRanges = v6;

    v4 = v8;
    referenceRanges = self->_referenceRanges;
  }

  [(NSMutableArray *)referenceRanges addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableCodedValue;
  v4 = [(HDCodableCodedValue *)&v8 description];
  v5 = [(HDCodableCodedValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  codings = self->_codings;
  if (codings)
  {
    v5 = [(HDCodableMedicalCodingList *)codings dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"codings"];
  }

  value = self->_value;
  if (value)
  {
    v7 = [(HDCodableInspectableValue *)value dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"value"];
  }

  if ([(NSMutableArray *)self->_referenceRanges count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_referenceRanges, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = self->_referenceRanges;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"referenceRanges"];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_codings)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_referenceRanges;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_codings)
  {
    [v8 setCodings:?];
  }

  if (self->_value)
  {
    [v8 setValue:?];
  }

  if ([(HDCodableCodedValue *)self referenceRangesCount])
  {
    [v8 clearReferenceRanges];
    v4 = [(HDCodableCodedValue *)self referenceRangesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HDCodableCodedValue *)self referenceRangesAtIndex:i];
        [v8 addReferenceRanges:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableMedicalCodingList *)self->_codings copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(HDCodableInspectableValue *)self->_value copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_referenceRanges;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * v14) copyWithZone:{a3, v18}];
        [v5 addReferenceRanges:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((codings = self->_codings, !(codings | v4[1])) || -[HDCodableMedicalCodingList isEqual:](codings, "isEqual:")) && ((value = self->_value, !(value | v4[3])) || -[HDCodableInspectableValue isEqual:](value, "isEqual:")))
  {
    referenceRanges = self->_referenceRanges;
    if (referenceRanges | v4[2])
    {
      v8 = [(NSMutableArray *)referenceRanges isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(HDCodableMedicalCodingList *)self->_codings hash];
  v4 = [(HDCodableInspectableValue *)self->_value hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_referenceRanges hash];
}

- (void)mergeFrom:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  codings = self->_codings;
  v6 = *(v4 + 1);
  if (codings)
  {
    if (v6)
    {
      [(HDCodableMedicalCodingList *)codings mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HDCodableCodedValue *)self setCodings:?];
  }

  value = self->_value;
  v8 = *(v4 + 3);
  if (value)
  {
    if (v8)
    {
      [(HDCodableInspectableValue *)value mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(HDCodableCodedValue *)self setValue:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(v4 + 2);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(HDCodableCodedValue *)self addReferenceRanges:*(*(&v15 + 1) + 8 * i), v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end