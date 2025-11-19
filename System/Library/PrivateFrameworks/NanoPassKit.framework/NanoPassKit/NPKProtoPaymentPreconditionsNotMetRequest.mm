@interface NPKProtoPaymentPreconditionsNotMetRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFailedPrecondition:(id)a3;
- (void)addPassIDs:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoPaymentPreconditionsNotMetRequest

- (int)StringAsFailedPrecondition:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Passcode"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"WristDetection"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AppleAccount"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addPassIDs:(id)a3
{
  v4 = a3;
  passIDs = self->_passIDs;
  v8 = v4;
  if (!passIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_passIDs;
    self->_passIDs = v6;

    v4 = v8;
    passIDs = self->_passIDs;
  }

  [(NSMutableArray *)passIDs addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPaymentPreconditionsNotMetRequest;
  v4 = [(NPKProtoPaymentPreconditionsNotMetRequest *)&v8 description];
  v5 = [(NPKProtoPaymentPreconditionsNotMetRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  failedPrecondition = self->_failedPrecondition;
  if (failedPrecondition >= 3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_failedPrecondition];
  }

  else
  {
    v5 = off_27994B1D8[failedPrecondition];
  }

  [v3 setObject:v5 forKey:@"failedPrecondition"];

  passIDs = self->_passIDs;
  if (passIDs)
  {
    [v3 setObject:passIDs forKey:@"passIDs"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  failedPrecondition = self->_failedPrecondition;
  PBDataWriterWriteInt32Field();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_passIDs;
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
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  v8[2] = self->_failedPrecondition;
  if ([(NPKProtoPaymentPreconditionsNotMetRequest *)self passIDsCount])
  {
    [v8 clearPassIDs];
    v4 = [(NPKProtoPaymentPreconditionsNotMetRequest *)self passIDsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoPaymentPreconditionsNotMetRequest *)self passIDsAtIndex:i];
        [v8 addPassIDs:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[2] = self->_failedPrecondition;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_passIDs;
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
        [v5 addPassIDs:v11];

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
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_failedPrecondition == *(v4 + 2))
  {
    passIDs = self->_passIDs;
    if (passIDs | v4[2])
    {
      v6 = [(NSMutableArray *)passIDs isEqual:?];
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
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_failedPrecondition = *(v4 + 2);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 2);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NPKProtoPaymentPreconditionsNotMetRequest *)self addPassIDs:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end