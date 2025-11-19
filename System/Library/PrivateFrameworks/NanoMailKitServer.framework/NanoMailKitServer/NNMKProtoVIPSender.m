@interface NNMKProtoVIPSender
+ (id)protoVIP:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)vipSender;
- (unint64_t)hash;
- (void)addEmailAddresses:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NNMKProtoVIPSender

- (id)vipSender
{
  v3 = objc_alloc_init(NNMKVIPSender);
  v4 = [(NNMKProtoVIPSender *)self name];
  [(NNMKVIPSender *)v3 setName:v4];

  v5 = [(NNMKProtoVIPSender *)self displayName];
  [(NNMKVIPSender *)v3 setDisplayName:v5];

  v6 = MEMORY[0x277CBEB98];
  v7 = [(NNMKProtoVIPSender *)self emailAddresses];
  v8 = [v6 setWithArray:v7];
  [(NNMKVIPSender *)v3 setEmailAddresses:v8];

  return v3;
}

+ (id)protoVIP:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NNMKProtoVIPSender);
  v5 = [v3 name];
  [(NNMKProtoVIPSender *)v4 setName:v5];

  v6 = [v3 displayName];
  [(NNMKProtoVIPSender *)v4 setDisplayName:v6];

  v7 = [v3 emailAddresses];

  v8 = [v7 allObjects];
  v9 = [v8 mutableCopy];
  [(NNMKProtoVIPSender *)v4 setEmailAddresses:v9];

  return v4;
}

- (void)addEmailAddresses:(id)a3
{
  v4 = a3;
  emailAddresses = self->_emailAddresses;
  v8 = v4;
  if (!emailAddresses)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_emailAddresses;
    self->_emailAddresses = v6;

    v4 = v8;
    emailAddresses = self->_emailAddresses;
  }

  [(NSMutableArray *)emailAddresses addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoVIPSender;
  v4 = [(NNMKProtoVIPSender *)&v8 description];
  v5 = [(NNMKProtoVIPSender *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v4 setObject:displayName forKey:@"displayName"];
  }

  emailAddresses = self->_emailAddresses;
  if (emailAddresses)
  {
    [v4 setObject:emailAddresses forKey:@"emailAddresses"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_emailAddresses;
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
  if (self->_name)
  {
    [v8 setName:?];
  }

  if (self->_displayName)
  {
    [v8 setDisplayName:?];
  }

  if ([(NNMKProtoVIPSender *)self emailAddressesCount])
  {
    [v8 clearEmailAddresses];
    v4 = [(NNMKProtoVIPSender *)self emailAddressesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NNMKProtoVIPSender *)self emailAddressesAtIndex:i];
        [v8 addEmailAddresses:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_displayName copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_emailAddresses;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * v14) copyWithZone:{a3, v18}];
        [v5 addEmailAddresses:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | v4[3])) || -[NSString isEqual:](name, "isEqual:")) && ((displayName = self->_displayName, !(displayName | v4[1])) || -[NSString isEqual:](displayName, "isEqual:")))
  {
    emailAddresses = self->_emailAddresses;
    if (emailAddresses | v4[2])
    {
      v8 = [(NSMutableArray *)emailAddresses isEqual:?];
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
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_displayName hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_emailAddresses hash];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 3))
  {
    [(NNMKProtoVIPSender *)self setName:?];
  }

  if (*(v4 + 1))
  {
    [(NNMKProtoVIPSender *)self setDisplayName:?];
  }

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
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NNMKProtoVIPSender *)self addEmailAddresses:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end