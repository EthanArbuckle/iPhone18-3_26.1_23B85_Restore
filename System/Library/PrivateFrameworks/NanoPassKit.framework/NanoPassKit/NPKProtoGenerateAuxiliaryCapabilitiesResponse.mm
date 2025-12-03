@interface NPKProtoGenerateAuxiliaryCapabilitiesResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addKeyMaterialValues:(id)values;
- (void)addRequirementKeys:(id)keys;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoGenerateAuxiliaryCapabilitiesResponse

- (void)addRequirementKeys:(id)keys
{
  keysCopy = keys;
  requirementKeys = self->_requirementKeys;
  v8 = keysCopy;
  if (!requirementKeys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_requirementKeys;
    self->_requirementKeys = v6;

    keysCopy = v8;
    requirementKeys = self->_requirementKeys;
  }

  [(NSMutableArray *)requirementKeys addObject:keysCopy];
}

- (void)addKeyMaterialValues:(id)values
{
  valuesCopy = values;
  keyMaterialValues = self->_keyMaterialValues;
  v8 = valuesCopy;
  if (!keyMaterialValues)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_keyMaterialValues;
    self->_keyMaterialValues = v6;

    valuesCopy = v8;
    keyMaterialValues = self->_keyMaterialValues;
  }

  [(NSMutableArray *)keyMaterialValues addObject:valuesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoGenerateAuxiliaryCapabilitiesResponse;
  v4 = [(NPKProtoGenerateAuxiliaryCapabilitiesResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoGenerateAuxiliaryCapabilitiesResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  requirementKeys = self->_requirementKeys;
  if (requirementKeys)
  {
    [dictionary setObject:requirementKeys forKey:@"requirementKeys"];
  }

  keyMaterialValues = self->_keyMaterialValues;
  if (keyMaterialValues)
  {
    [v4 setObject:keyMaterialValues forKey:@"keyMaterialValues"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [v4 setObject:errorData forKey:@"errorData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_requirementKeys;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteDataField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_keyMaterialValues;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        PBDataWriterWriteDataField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NPKProtoGenerateAuxiliaryCapabilitiesResponse *)self requirementKeysCount])
  {
    [toCopy clearRequirementKeys];
    requirementKeysCount = [(NPKProtoGenerateAuxiliaryCapabilitiesResponse *)self requirementKeysCount];
    if (requirementKeysCount)
    {
      v5 = requirementKeysCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoGenerateAuxiliaryCapabilitiesResponse *)self requirementKeysAtIndex:i];
        [toCopy addRequirementKeys:v7];
      }
    }
  }

  if ([(NPKProtoGenerateAuxiliaryCapabilitiesResponse *)self keyMaterialValuesCount])
  {
    [toCopy clearKeyMaterialValues];
    keyMaterialValuesCount = [(NPKProtoGenerateAuxiliaryCapabilitiesResponse *)self keyMaterialValuesCount];
    if (keyMaterialValuesCount)
    {
      v9 = keyMaterialValuesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NPKProtoGenerateAuxiliaryCapabilitiesResponse *)self keyMaterialValuesAtIndex:j];
        [toCopy addKeyMaterialValues:v11];
      }
    }
  }

  if (self->_errorData)
  {
    [toCopy setErrorData:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = self->_requirementKeys;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v26 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addRequirementKeys:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = self->_keyMaterialValues;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      v16 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v22 + 1) + 8 * v16) copyWithZone:{zone, v22}];
        [v5 addKeyMaterialValues:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  v18 = [(NSData *)self->_errorData copyWithZone:zone];
  v19 = v5[1];
  v5[1] = v18;

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requirementKeys = self->_requirementKeys, !(requirementKeys | equalCopy[3])) || -[NSMutableArray isEqual:](requirementKeys, "isEqual:")) && ((keyMaterialValues = self->_keyMaterialValues, !(keyMaterialValues | equalCopy[2])) || -[NSMutableArray isEqual:](keyMaterialValues, "isEqual:")))
  {
    errorData = self->_errorData;
    if (errorData | equalCopy[1])
    {
      v8 = [(NSData *)errorData isEqual:?];
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
  v3 = [(NSMutableArray *)self->_requirementKeys hash];
  v4 = [(NSMutableArray *)self->_keyMaterialValues hash]^ v3;
  return v4 ^ [(NSData *)self->_errorData hash];
}

- (void)mergeFrom:(id)from
{
  v26 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = fromCopy[3];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NPKProtoGenerateAuxiliaryCapabilitiesResponse *)self addRequirementKeys:*(*(&v20 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = fromCopy[2];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NPKProtoGenerateAuxiliaryCapabilitiesResponse *)self addKeyMaterialValues:*(*(&v16 + 1) + 8 * j), v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  if (fromCopy[1])
  {
    [(NPKProtoGenerateAuxiliaryCapabilitiesResponse *)self setErrorData:?];
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end