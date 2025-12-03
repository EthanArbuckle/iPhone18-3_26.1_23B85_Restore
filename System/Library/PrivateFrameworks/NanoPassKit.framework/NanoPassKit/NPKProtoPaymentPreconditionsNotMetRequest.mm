@interface NPKProtoPaymentPreconditionsNotMetRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFailedPrecondition:(id)precondition;
- (void)addPassIDs:(id)ds;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoPaymentPreconditionsNotMetRequest

- (int)StringAsFailedPrecondition:(id)precondition
{
  preconditionCopy = precondition;
  if ([preconditionCopy isEqualToString:@"Passcode"])
  {
    v4 = 0;
  }

  else if ([preconditionCopy isEqualToString:@"WristDetection"])
  {
    v4 = 1;
  }

  else if ([preconditionCopy isEqualToString:@"AppleAccount"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addPassIDs:(id)ds
{
  dsCopy = ds;
  passIDs = self->_passIDs;
  v8 = dsCopy;
  if (!passIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_passIDs;
    self->_passIDs = v6;

    dsCopy = v8;
    passIDs = self->_passIDs;
  }

  [(NSMutableArray *)passIDs addObject:dsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPaymentPreconditionsNotMetRequest;
  v4 = [(NPKProtoPaymentPreconditionsNotMetRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoPaymentPreconditionsNotMetRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  failedPrecondition = self->_failedPrecondition;
  if (failedPrecondition >= 3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_failedPrecondition];
  }

  else
  {
    v5 = off_27994B1D8[failedPrecondition];
  }

  [dictionary setObject:v5 forKey:@"failedPrecondition"];

  passIDs = self->_passIDs;
  if (passIDs)
  {
    [dictionary setObject:passIDs forKey:@"passIDs"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[2] = self->_failedPrecondition;
  if ([(NPKProtoPaymentPreconditionsNotMetRequest *)self passIDsCount])
  {
    [toCopy clearPassIDs];
    passIDsCount = [(NPKProtoPaymentPreconditionsNotMetRequest *)self passIDsCount];
    if (passIDsCount)
    {
      v5 = passIDsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoPaymentPreconditionsNotMetRequest *)self passIDsAtIndex:i];
        [toCopy addPassIDs:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:{zone, v14}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_failedPrecondition == *(equalCopy + 2))
  {
    passIDs = self->_passIDs;
    if (passIDs | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  self->_failedPrecondition = *(fromCopy + 2);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(fromCopy + 2);
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