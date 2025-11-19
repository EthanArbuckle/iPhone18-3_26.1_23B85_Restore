@interface HDCodableGeneratedObjectCollection
- (BOOL)isEqual:(id)a3;
- (BOOL)unitTest_isEquivalentToGeneratedObjectCollection:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decodedObjects;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addMedicationDoseEvent:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableGeneratedObjectCollection

- (void)addMedicationDoseEvent:(id)a3
{
  v4 = a3;
  medicationDoseEvents = self->_medicationDoseEvents;
  v8 = v4;
  if (!medicationDoseEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_medicationDoseEvents;
    self->_medicationDoseEvents = v6;

    v4 = v8;
    medicationDoseEvents = self->_medicationDoseEvents;
  }

  [(NSMutableArray *)medicationDoseEvents addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableGeneratedObjectCollection;
  v4 = [(HDCodableGeneratedObjectCollection *)&v8 description];
  v5 = [(HDCodableGeneratedObjectCollection *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_medicationDoseEvents count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_medicationDoseEvents, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_medicationDoseEvents;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"medicationDoseEvent"];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_medicationDoseEvents;
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
  if ([(HDCodableGeneratedObjectCollection *)self medicationDoseEventsCount])
  {
    [v8 clearMedicationDoseEvents];
    v4 = [(HDCodableGeneratedObjectCollection *)self medicationDoseEventsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HDCodableGeneratedObjectCollection *)self medicationDoseEventAtIndex:i];
        [v8 addMedicationDoseEvent:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_medicationDoseEvents;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:{a3, v14}];
        [v5 addMedicationDoseEvent:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    medicationDoseEvents = self->_medicationDoseEvents;
    if (medicationDoseEvents | v4[1])
    {
      v6 = [(NSMutableArray *)medicationDoseEvents isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a3 + 1);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(HDCodableGeneratedObjectCollection *)self addMedicationDoseEvent:*(*(&v10 + 1) + 8 * v8++), v10];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)decodedObjects
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__HDCodableGeneratedObjectCollection_HDCodingSupport__decodedObjects__block_invoke;
  aBlock[3] = &unk_27861FAD0;
  v4 = v3;
  v20 = v4;
  v5 = _Block_copy(aBlock);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_medicationDoseEvents;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x277CCD650] createWithCodable:{*(*(&v15 + 1) + 8 * v10), v15}];
        v5[2](v5, v11);

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v8);
  }

  v12 = v4;
  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t __69__HDCodableGeneratedObjectCollection_HDCodingSupport__decodedObjects__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

- (BOOL)unitTest_isEquivalentToGeneratedObjectCollection:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = self->_medicationDoseEvents;
  v5 = [a3 medicationDoseEvents];
  v6 = v4;
  v7 = v6;
  if (v4 == v5)
  {
    v12 = 1;
  }

  else
  {
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }

    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = MEMORY[0x277CBEBF8];
    }

    v10 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v9];
    v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v8];
    v12 = [v10 isEqualToSet:v11];
  }

  return v12;
}

@end