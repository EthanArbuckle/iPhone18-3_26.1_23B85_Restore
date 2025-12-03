@interface PBBProtoTransferPerformanceResults
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMacroActivites:(id)activites;
- (void)addMeasures:(id)measures;
- (void)addMilestones:(id)milestones;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PBBProtoTransferPerformanceResults

- (void)addMilestones:(id)milestones
{
  milestonesCopy = milestones;
  milestones = self->_milestones;
  v8 = milestonesCopy;
  if (!milestones)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_milestones;
    self->_milestones = v6;

    milestonesCopy = v8;
    milestones = self->_milestones;
  }

  [(NSMutableArray *)milestones addObject:milestonesCopy];
}

- (void)addMeasures:(id)measures
{
  measuresCopy = measures;
  measures = self->_measures;
  v8 = measuresCopy;
  if (!measures)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_measures;
    self->_measures = v6;

    measuresCopy = v8;
    measures = self->_measures;
  }

  [(NSMutableArray *)measures addObject:measuresCopy];
}

- (void)addMacroActivites:(id)activites
{
  activitesCopy = activites;
  macroActivites = self->_macroActivites;
  v8 = activitesCopy;
  if (!macroActivites)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_macroActivites;
    self->_macroActivites = v6;

    activitesCopy = v8;
    macroActivites = self->_macroActivites;
  }

  [(NSMutableArray *)macroActivites addObject:activitesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoTransferPerformanceResults;
  v4 = [(PBBProtoTransferPerformanceResults *)&v8 description];
  dictionaryRepresentation = [(PBBProtoTransferPerformanceResults *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v42 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_milestones count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_milestones, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v5 = self->_milestones;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v36;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v35 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"milestones"];
  }

  if ([(NSMutableArray *)self->_measures count])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_measures, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = self->_measures;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v31 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"measures"];
  }

  if ([(NSMutableArray *)self->_macroActivites count])
  {
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_macroActivites, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = self->_macroActivites;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation3 = [*(*(&v27 + 1) + 8 * k) dictionaryRepresentation];
          [v18 addObject:dictionaryRepresentation3];
        }

        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v21);
    }

    [dictionary setObject:v18 forKey:@"macroActivites"];
  }

  v25 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v39 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = self->_milestones;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = self->_measures;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v13);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = self->_macroActivites;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v24 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v19);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(PBBProtoTransferPerformanceResults *)self milestonesCount])
  {
    [toCopy clearMilestones];
    milestonesCount = [(PBBProtoTransferPerformanceResults *)self milestonesCount];
    if (milestonesCount)
    {
      v5 = milestonesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PBBProtoTransferPerformanceResults *)self milestonesAtIndex:i];
        [toCopy addMilestones:v7];
      }
    }
  }

  if ([(PBBProtoTransferPerformanceResults *)self measuresCount])
  {
    [toCopy clearMeasures];
    measuresCount = [(PBBProtoTransferPerformanceResults *)self measuresCount];
    if (measuresCount)
    {
      v9 = measuresCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(PBBProtoTransferPerformanceResults *)self measuresAtIndex:j];
        [toCopy addMeasures:v11];
      }
    }
  }

  if ([(PBBProtoTransferPerformanceResults *)self macroActivitesCount])
  {
    [toCopy clearMacroActivites];
    macroActivitesCount = [(PBBProtoTransferPerformanceResults *)self macroActivitesCount];
    if (macroActivitesCount)
    {
      v13 = macroActivitesCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(PBBProtoTransferPerformanceResults *)self macroActivitesAtIndex:k];
        [toCopy addMacroActivites:v15];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = self->_milestones;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      v10 = 0;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v34 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addMilestones:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v8);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = self->_measures;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      v16 = 0;
      do
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v30 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addMeasures:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v14);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = self->_macroActivites;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      v22 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v26 + 1) + 8 * v22) copyWithZone:{zone, v26}];
        [v5 addMacroActivites:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((milestones = self->_milestones, !(milestones | equalCopy[3])) || -[NSMutableArray isEqual:](milestones, "isEqual:")) && ((measures = self->_measures, !(measures | equalCopy[2])) || -[NSMutableArray isEqual:](measures, "isEqual:")))
  {
    macroActivites = self->_macroActivites;
    if (macroActivites | equalCopy[1])
    {
      v8 = [(NSMutableArray *)macroActivites isEqual:?];
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
  v3 = [(NSMutableArray *)self->_milestones hash];
  v4 = [(NSMutableArray *)self->_measures hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_macroActivites hash];
}

- (void)mergeFrom:(id)from
{
  v36 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = fromCopy[3];
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PBBProtoTransferPerformanceResults *)self addMilestones:*(*(&v29 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = fromCopy[2];
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(PBBProtoTransferPerformanceResults *)self addMeasures:*(*(&v25 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v12);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = fromCopy[1];
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(PBBProtoTransferPerformanceResults *)self addMacroActivites:*(*(&v21 + 1) + 8 * v19++), v21];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end