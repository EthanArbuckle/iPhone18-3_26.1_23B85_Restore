@interface NPKProtoAddISO18013BlobsRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCardType:(id)type;
- (int)cardType;
- (unint64_t)hash;
- (void)addIsoblobs:(id)isoblobs;
- (void)addSubcredentialData:(id)data;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoAddISO18013BlobsRequest

- (void)addSubcredentialData:(id)data
{
  dataCopy = data;
  subcredentialDatas = self->_subcredentialDatas;
  v8 = dataCopy;
  if (!subcredentialDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_subcredentialDatas;
    self->_subcredentialDatas = v6;

    dataCopy = v8;
    subcredentialDatas = self->_subcredentialDatas;
  }

  [(NSMutableArray *)subcredentialDatas addObject:dataCopy];
}

- (void)addIsoblobs:(id)isoblobs
{
  isoblobsCopy = isoblobs;
  isoblobs = self->_isoblobs;
  v8 = isoblobsCopy;
  if (!isoblobs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_isoblobs;
    self->_isoblobs = v6;

    isoblobsCopy = v8;
    isoblobs = self->_isoblobs;
  }

  [(NSMutableArray *)isoblobs addObject:isoblobsCopy];
}

- (int)cardType
{
  if (*&self->_has)
  {
    return self->_cardType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsCardType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Payment"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Transit"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Access"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Identity"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoAddISO18013BlobsRequest;
  v4 = [(NPKProtoAddISO18013BlobsRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoAddISO18013BlobsRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  subcredentialDatas = self->_subcredentialDatas;
  if (subcredentialDatas)
  {
    [dictionary setObject:subcredentialDatas forKey:@"subcredentialData"];
  }

  isoblobs = self->_isoblobs;
  if (isoblobs)
  {
    [v4 setObject:isoblobs forKey:@"isoblobs"];
  }

  if (*&self->_has)
  {
    cardType = self->_cardType;
    if (cardType >= 5)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_cardType];
    }

    else
    {
      v8 = off_279945550[cardType];
    }

    [v4 setObject:v8 forKey:@"cardType"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_subcredentialDatas;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        PBDataWriterWriteDataField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_isoblobs;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        PBDataWriterWriteDataField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  if (*&self->_has)
  {
    cardType = self->_cardType;
    PBDataWriterWriteInt32Field();
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NPKProtoAddISO18013BlobsRequest *)self subcredentialDatasCount])
  {
    [toCopy clearSubcredentialDatas];
    subcredentialDatasCount = [(NPKProtoAddISO18013BlobsRequest *)self subcredentialDatasCount];
    if (subcredentialDatasCount)
    {
      v5 = subcredentialDatasCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoAddISO18013BlobsRequest *)self subcredentialDataAtIndex:i];
        [toCopy addSubcredentialData:v7];
      }
    }
  }

  if ([(NPKProtoAddISO18013BlobsRequest *)self isoblobsCount])
  {
    [toCopy clearIsoblobs];
    isoblobsCount = [(NPKProtoAddISO18013BlobsRequest *)self isoblobsCount];
    if (isoblobsCount)
    {
      v9 = isoblobsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NPKProtoAddISO18013BlobsRequest *)self isoblobsAtIndex:j];
        [toCopy addIsoblobs:v11];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_cardType;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = self->_subcredentialDatas;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v24 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addSubcredentialData:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_isoblobs;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v20 + 1) + 8 * v16) copyWithZone:{zone, v20}];
        [v5 addIsoblobs:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_cardType;
    *(v5 + 32) |= 1u;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  subcredentialDatas = self->_subcredentialDatas;
  if (subcredentialDatas | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)subcredentialDatas isEqual:?])
    {
      goto LABEL_10;
    }
  }

  isoblobs = self->_isoblobs;
  if (isoblobs | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)isoblobs isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_cardType == *(equalCopy + 2))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_subcredentialDatas hash];
  v4 = [(NSMutableArray *)self->_isoblobs hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_cardType;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  v26 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = *(fromCopy + 3);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NPKProtoAddISO18013BlobsRequest *)self addSubcredentialData:*(*(&v20 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(fromCopy + 2);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NPKProtoAddISO18013BlobsRequest *)self addIsoblobs:*(*(&v16 + 1) + 8 * v14++), v16];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  if (*(fromCopy + 32))
  {
    self->_cardType = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end