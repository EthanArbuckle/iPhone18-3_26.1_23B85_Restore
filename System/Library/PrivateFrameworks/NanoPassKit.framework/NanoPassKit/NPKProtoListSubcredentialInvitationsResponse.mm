@interface NPKProtoListSubcredentialInvitationsResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addSubcredentialInvitationsData:(id)data;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoListSubcredentialInvitationsResponse

- (void)addSubcredentialInvitationsData:(id)data
{
  dataCopy = data;
  subcredentialInvitationsDatas = self->_subcredentialInvitationsDatas;
  v8 = dataCopy;
  if (!subcredentialInvitationsDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_subcredentialInvitationsDatas;
    self->_subcredentialInvitationsDatas = v6;

    dataCopy = v8;
    subcredentialInvitationsDatas = self->_subcredentialInvitationsDatas;
  }

  [(NSMutableArray *)subcredentialInvitationsDatas addObject:dataCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoListSubcredentialInvitationsResponse;
  v4 = [(NPKProtoListSubcredentialInvitationsResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoListSubcredentialInvitationsResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  subcredentialInvitationsDatas = self->_subcredentialInvitationsDatas;
  if (subcredentialInvitationsDatas)
  {
    [dictionary setObject:subcredentialInvitationsDatas forKey:@"subcredentialInvitationsData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_subcredentialInvitationsDatas;
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
        PBDataWriterWriteDataField();
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
  if ([(NPKProtoListSubcredentialInvitationsResponse *)self subcredentialInvitationsDatasCount])
  {
    [toCopy clearSubcredentialInvitationsDatas];
    subcredentialInvitationsDatasCount = [(NPKProtoListSubcredentialInvitationsResponse *)self subcredentialInvitationsDatasCount];
    if (subcredentialInvitationsDatasCount)
    {
      v5 = subcredentialInvitationsDatasCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoListSubcredentialInvitationsResponse *)self subcredentialInvitationsDataAtIndex:i];
        [toCopy addSubcredentialInvitationsData:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_subcredentialInvitationsDatas;
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

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:{zone, v14}];
        [v5 addSubcredentialInvitationsData:v11];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    subcredentialInvitationsDatas = self->_subcredentialInvitationsDatas;
    if (subcredentialInvitationsDatas | equalCopy[1])
    {
      v6 = [(NSMutableArray *)subcredentialInvitationsDatas isEqual:?];
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

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(from + 1);
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

        [(NPKProtoListSubcredentialInvitationsResponse *)self addSubcredentialInvitationsData:*(*(&v10 + 1) + 8 * v8++), v10];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end