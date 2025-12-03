@interface BLTPBSetSectionInfoRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addKeypaths:(id)keypaths;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BLTPBSetSectionInfoRequest

- (void)addKeypaths:(id)keypaths
{
  keypathsCopy = keypaths;
  keypaths = self->_keypaths;
  v8 = keypathsCopy;
  if (!keypaths)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_keypaths;
    self->_keypaths = v6;

    keypathsCopy = v8;
    keypaths = self->_keypaths;
  }

  [(NSMutableArray *)keypaths addObject:keypathsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBSetSectionInfoRequest;
  v4 = [(BLTPBSetSectionInfoRequest *)&v8 description];
  dictionaryRepresentation = [(BLTPBSetSectionInfoRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sectionInfo = self->_sectionInfo;
  if (sectionInfo)
  {
    dictionaryRepresentation = [(BLTPBSectionInfo *)sectionInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"sectionInfo"];
  }

  keypaths = self->_keypaths;
  if (keypaths)
  {
    [dictionary setObject:keypaths forKey:@"keypaths"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_sectionInfo)
  {
    [toCopy setSectionInfo:?];
  }

  if ([(BLTPBSetSectionInfoRequest *)self keypathsCount])
  {
    [toCopy clearKeypaths];
    keypathsCount = [(BLTPBSetSectionInfoRequest *)self keypathsCount];
    if (keypathsCount)
    {
      v5 = keypathsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BLTPBSetSectionInfoRequest *)self keypathsAtIndex:i];
        [toCopy addKeypaths:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(BLTPBSectionInfo *)self->_sectionInfo copyWithZone:zone];
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

        v13 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{zone, v16}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((sectionInfo = self->_sectionInfo, !(sectionInfo | equalCopy[2])) || -[BLTPBSectionInfo isEqual:](sectionInfo, "isEqual:")))
  {
    keypaths = self->_keypaths;
    if (keypaths | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  sectionInfo = self->_sectionInfo;
  v6 = *(fromCopy + 2);
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
  v7 = *(fromCopy + 1);
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