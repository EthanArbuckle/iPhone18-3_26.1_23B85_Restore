@interface NPKProtoStandalonePaymentPassListResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addPaymentPasses:(id)passes;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentPassListResponse

- (void)addPaymentPasses:(id)passes
{
  passesCopy = passes;
  paymentPasses = self->_paymentPasses;
  v8 = passesCopy;
  if (!paymentPasses)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_paymentPasses;
    self->_paymentPasses = v6;

    passesCopy = v8;
    paymentPasses = self->_paymentPasses;
  }

  [(NSMutableArray *)paymentPasses addObject:passesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentPassListResponse;
  v4 = [(NPKProtoStandalonePaymentPassListResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentPassListResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  responseHeader = self->_responseHeader;
  if (responseHeader)
  {
    dictionaryRepresentation = [(NPKProtoStandaloneResponseHeader *)responseHeader dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"responseHeader"];
  }

  if ([(NSMutableArray *)self->_paymentPasses count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_paymentPasses, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_paymentPasses;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"paymentPasses"];
  }

  v13 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (!self->_responseHeader)
  {
    [NPKProtoStandalonePaymentPassListResponse writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_paymentPasses;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setResponseHeader:self->_responseHeader];
  if ([(NPKProtoStandalonePaymentPassListResponse *)self paymentPassesCount])
  {
    [toCopy clearPaymentPasses];
    paymentPassesCount = [(NPKProtoStandalonePaymentPassListResponse *)self paymentPassesCount];
    if (paymentPassesCount)
    {
      v5 = paymentPassesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoStandalonePaymentPassListResponse *)self paymentPassesAtIndex:i];
        [toCopy addPaymentPasses:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NPKProtoStandaloneResponseHeader *)self->_responseHeader copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_paymentPasses;
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
        [v5 addPaymentPasses:v13];

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
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((responseHeader = self->_responseHeader, !(responseHeader | equalCopy[2])) || -[NPKProtoStandaloneResponseHeader isEqual:](responseHeader, "isEqual:")))
  {
    paymentPasses = self->_paymentPasses;
    if (paymentPasses | equalCopy[1])
    {
      v7 = [(NSMutableArray *)paymentPasses isEqual:?];
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
  responseHeader = self->_responseHeader;
  v6 = *(fromCopy + 2);
  if (responseHeader)
  {
    if (v6)
    {
      [(NPKProtoStandaloneResponseHeader *)responseHeader mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(NPKProtoStandalonePaymentPassListResponse *)self setResponseHeader:?];
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

        [(NPKProtoStandalonePaymentPassListResponse *)self addPaymentPasses:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end