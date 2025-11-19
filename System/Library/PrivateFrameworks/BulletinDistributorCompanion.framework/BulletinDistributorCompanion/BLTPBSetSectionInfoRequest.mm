@interface BLTPBSetSectionInfoRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addKeypaths:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BLTPBSetSectionInfoRequest

- (void)addKeypaths:(id)a3
{
  v4 = a3;
  keypaths = self->_keypaths;
  v8 = v4;
  if (!keypaths)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_keypaths;
    self->_keypaths = v6;

    v4 = v8;
    keypaths = self->_keypaths;
  }

  [(NSMutableArray *)keypaths addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBSetSectionInfoRequest;
  v4 = [(BLTPBSetSectionInfoRequest *)&v8 description];
  v5 = [(BLTPBSetSectionInfoRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  sectionInfo = self->_sectionInfo;
  if (sectionInfo)
  {
    v5 = [(BLTPBSectionInfo *)sectionInfo dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"sectionInfo"];
  }

  keypaths = self->_keypaths;
  if (keypaths)
  {
    [v3 setObject:keypaths forKey:@"keypaths"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_sectionInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_keypaths;
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
        PBDataWriterWriteStringField();
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
  if (self->_sectionInfo)
  {
    [v8 setSectionInfo:?];
  }

  if ([(BLTPBSetSectionInfoRequest *)self keypathsCount])
  {
    [v8 clearKeypaths];
    v4 = [(BLTPBSetSectionInfoRequest *)self keypathsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BLTPBSetSectionInfoRequest *)self keypathsAtIndex:i];
        [v8 addKeypaths:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(BLTPBSectionInfo *)self->_sectionInfo copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_keypaths;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{a3, v16}];
        [v5 addKeypaths:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((sectionInfo = self->_sectionInfo, !(sectionInfo | v4[2])) || -[BLTPBSectionInfo isEqual:](sectionInfo, "isEqual:")))
  {
    keypaths = self->_keypaths;
    if (keypaths | v4[1])
    {
      v7 = [(NSMutableArray *)keypaths isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  sectionInfo = self->_sectionInfo;
  v6 = *(v4 + 2);
  if (sectionInfo)
  {
    if (v6)
    {
      [(BLTPBSectionInfo *)sectionInfo mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(BLTPBSetSectionInfoRequest *)self setSectionInfo:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v4 + 1);
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

        [(BLTPBSetSectionInfoRequest *)self addKeypaths:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end