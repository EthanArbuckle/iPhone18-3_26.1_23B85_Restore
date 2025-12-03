@interface NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSetupFields:(id)fields;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext

- (void)addSetupFields:(id)fields
{
  fieldsCopy = fields;
  setupFields = self->_setupFields;
  v8 = fieldsCopy;
  if (!setupFields)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_setupFields;
    self->_setupFields = v6;

    fieldsCopy = v8;
    setupFields = self->_setupFields;
  }

  [(NSMutableArray *)setupFields addObject:fieldsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [v4 setObject:subtitle forKey:@"subtitle"];
  }

  if ([(NSMutableArray *)self->_setupFields count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_setupFields, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = self->_setupFields;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"setupFields"];
  }

  product = self->_product;
  if (product)
  {
    dictionaryRepresentation2 = [(NPKProtoStandalonePaymentSetupProduct *)product dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"product"];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_setupFields;
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
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_product)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_title)
  {
    [toCopy setTitle:?];
  }

  if (self->_subtitle)
  {
    [toCopy setSubtitle:?];
  }

  if ([(NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext *)self setupFieldsCount])
  {
    [toCopy clearSetupFields];
    setupFieldsCount = [(NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext *)self setupFieldsCount];
    if (setupFieldsCount)
    {
      v5 = setupFieldsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext *)self setupFieldsAtIndex:i];
        [toCopy addSetupFields:v7];
      }
    }
  }

  if (self->_product)
  {
    [toCopy setProduct:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_subtitle copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = self->_setupFields;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v20 + 1) + 8 * v14) copyWithZone:{zone, v20}];
        [v5 addSetupFields:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v16 = [(NPKProtoStandalonePaymentSetupProduct *)self->_product copyWithZone:zone];
  v17 = v5[1];
  v5[1] = v16;

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((title = self->_title, !(title | equalCopy[4])) || -[NSString isEqual:](title, "isEqual:")) && ((subtitle = self->_subtitle, !(subtitle | equalCopy[3])) || -[NSString isEqual:](subtitle, "isEqual:")) && ((setupFields = self->_setupFields, !(setupFields | equalCopy[2])) || -[NSMutableArray isEqual:](setupFields, "isEqual:")))
  {
    product = self->_product;
    if (product | equalCopy[1])
    {
      v9 = [(NPKProtoStandalonePaymentSetupProduct *)product isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_subtitle hash]^ v3;
  v5 = [(NSMutableArray *)self->_setupFields hash];
  return v4 ^ v5 ^ [(NPKProtoStandalonePaymentSetupProduct *)self->_product hash];
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext *)self setTitle:?];
  }

  if (*(fromCopy + 3))
  {
    [(NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext *)self setSubtitle:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(fromCopy + 2);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext *)self addSetupFields:*(*(&v13 + 1) + 8 * i), v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  product = self->_product;
  v11 = *(fromCopy + 1);
  if (product)
  {
    if (v11)
    {
      [(NPKProtoStandalonePaymentSetupProduct *)product mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext *)self setProduct:?];
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end