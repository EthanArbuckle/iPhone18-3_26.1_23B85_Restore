@interface NPKProtoAddISO18013BlobsRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCardType:(id)a3;
- (int)cardType;
- (unint64_t)hash;
- (void)addIsoblobs:(id)a3;
- (void)addSubcredentialData:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoAddISO18013BlobsRequest

- (void)addSubcredentialData:(id)a3
{
  v4 = a3;
  subcredentialDatas = self->_subcredentialDatas;
  v8 = v4;
  if (!subcredentialDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_subcredentialDatas;
    self->_subcredentialDatas = v6;

    v4 = v8;
    subcredentialDatas = self->_subcredentialDatas;
  }

  [(NSMutableArray *)subcredentialDatas addObject:v4];
}

- (void)addIsoblobs:(id)a3
{
  v4 = a3;
  isoblobs = self->_isoblobs;
  v8 = v4;
  if (!isoblobs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_isoblobs;
    self->_isoblobs = v6;

    v4 = v8;
    isoblobs = self->_isoblobs;
  }

  [(NSMutableArray *)isoblobs addObject:v4];
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

- (int)StringAsCardType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Payment"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Transit"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Access"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Identity"])
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
  v5 = [(NPKProtoAddISO18013BlobsRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  subcredentialDatas = self->_subcredentialDatas;
  if (subcredentialDatas)
  {
    [v3 setObject:subcredentialDatas forKey:@"subcredentialData"];
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

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v12 = a3;
  if ([(NPKProtoAddISO18013BlobsRequest *)self subcredentialDatasCount])
  {
    [v12 clearSubcredentialDatas];
    v4 = [(NPKProtoAddISO18013BlobsRequest *)self subcredentialDatasCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoAddISO18013BlobsRequest *)self subcredentialDataAtIndex:i];
        [v12 addSubcredentialData:v7];
      }
    }
  }

  if ([(NPKProtoAddISO18013BlobsRequest *)self isoblobsCount])
  {
    [v12 clearIsoblobs];
    v8 = [(NPKProtoAddISO18013BlobsRequest *)self isoblobsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NPKProtoAddISO18013BlobsRequest *)self isoblobsAtIndex:j];
        [v12 addIsoblobs:v11];
      }
    }
  }

  if (*&self->_has)
  {
    *(v12 + 2) = self->_cardType;
    *(v12 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

        v11 = [*(*(&v24 + 1) + 8 * v10) copyWithZone:a3];
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

        v17 = [*(*(&v20 + 1) + 8 * v16) copyWithZone:{a3, v20}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  subcredentialDatas = self->_subcredentialDatas;
  if (subcredentialDatas | *(v4 + 3))
  {
    if (![(NSMutableArray *)subcredentialDatas isEqual:?])
    {
      goto LABEL_10;
    }
  }

  isoblobs = self->_isoblobs;
  if (isoblobs | *(v4 + 2))
  {
    if (![(NSMutableArray *)isoblobs isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_cardType == *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = *(v4 + 3);
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
  v10 = *(v4 + 2);
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

  if (*(v4 + 32))
  {
    self->_cardType = *(v4 + 2);
    *&self->_has |= 1u;
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end