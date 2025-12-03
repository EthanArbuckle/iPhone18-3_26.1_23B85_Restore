@interface BMPBHomeKitClientActionSetEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAssociatedAccessoryUniqueIdentifiers:(id)identifiers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBHomeKitClientActionSetEvent

- (void)addAssociatedAccessoryUniqueIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  associatedAccessoryUniqueIdentifiers = self->_associatedAccessoryUniqueIdentifiers;
  v8 = identifiersCopy;
  if (!associatedAccessoryUniqueIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_associatedAccessoryUniqueIdentifiers;
    self->_associatedAccessoryUniqueIdentifiers = v6;

    identifiersCopy = v8;
    associatedAccessoryUniqueIdentifiers = self->_associatedAccessoryUniqueIdentifiers;
  }

  [(NSMutableArray *)associatedAccessoryUniqueIdentifiers addObject:identifiersCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBHomeKitClientActionSetEvent;
  v4 = [(BMPBHomeKitClientActionSetEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBHomeKitClientActionSetEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  base = self->_base;
  if (base)
  {
    dictionaryRepresentation = [(BMPBHomeKitClientBase *)base dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"base"];
  }

  actionSetUniqueIdentifier = self->_actionSetUniqueIdentifier;
  if (actionSetUniqueIdentifier)
  {
    [dictionary setObject:actionSetUniqueIdentifier forKey:@"actionSetUniqueIdentifier"];
  }

  actionSetType = self->_actionSetType;
  if (actionSetType)
  {
    [dictionary setObject:actionSetType forKey:@"actionSetType"];
  }

  associatedAccessoryUniqueIdentifiers = self->_associatedAccessoryUniqueIdentifiers;
  if (associatedAccessoryUniqueIdentifiers)
  {
    [dictionary setObject:associatedAccessoryUniqueIdentifiers forKey:@"associatedAccessoryUniqueIdentifiers"];
  }

  actionSetName = self->_actionSetName;
  if (actionSetName)
  {
    [dictionary setObject:actionSetName forKey:@"actionSetName"];
  }

  homeName = self->_homeName;
  if (homeName)
  {
    [dictionary setObject:homeName forKey:@"homeName"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_base)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_actionSetUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_actionSetType)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_associatedAccessoryUniqueIdentifiers;
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

  if (self->_actionSetName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_homeName)
  {
    PBDataWriterWriteStringField();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_base)
  {
    [toCopy setBase:?];
  }

  if (self->_actionSetUniqueIdentifier)
  {
    [toCopy setActionSetUniqueIdentifier:?];
  }

  if (self->_actionSetType)
  {
    [toCopy setActionSetType:?];
  }

  if ([(BMPBHomeKitClientActionSetEvent *)self associatedAccessoryUniqueIdentifiersCount])
  {
    [toCopy clearAssociatedAccessoryUniqueIdentifiers];
    associatedAccessoryUniqueIdentifiersCount = [(BMPBHomeKitClientActionSetEvent *)self associatedAccessoryUniqueIdentifiersCount];
    if (associatedAccessoryUniqueIdentifiersCount)
    {
      v5 = associatedAccessoryUniqueIdentifiersCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BMPBHomeKitClientActionSetEvent *)self associatedAccessoryUniqueIdentifiersAtIndex:i];
        [toCopy addAssociatedAccessoryUniqueIdentifiers:v7];
      }
    }
  }

  if (self->_actionSetName)
  {
    [toCopy setActionSetName:?];
  }

  v8 = toCopy;
  if (self->_homeName)
  {
    [toCopy setHomeName:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(BMPBHomeKitClientBase *)self->_base copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_actionSetUniqueIdentifier copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_actionSetType copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = self->_associatedAccessoryUniqueIdentifiers;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v24 + 1) + 8 * v16) copyWithZone:{zone, v24}];
        [v5 addAssociatedAccessoryUniqueIdentifiers:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v18 = [(NSString *)self->_actionSetName copyWithZone:zone];
  v19 = v5[1];
  v5[1] = v18;

  v20 = [(NSString *)self->_homeName copyWithZone:zone];
  v21 = v5[6];
  v5[6] = v20;

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((base = self->_base, !(base | equalCopy[5])) || -[BMPBHomeKitClientBase isEqual:](base, "isEqual:")) && ((actionSetUniqueIdentifier = self->_actionSetUniqueIdentifier, !(actionSetUniqueIdentifier | equalCopy[3])) || -[NSString isEqual:](actionSetUniqueIdentifier, "isEqual:")) && ((actionSetType = self->_actionSetType, !(actionSetType | equalCopy[2])) || -[NSString isEqual:](actionSetType, "isEqual:")) && ((associatedAccessoryUniqueIdentifiers = self->_associatedAccessoryUniqueIdentifiers, !(associatedAccessoryUniqueIdentifiers | equalCopy[4])) || -[NSMutableArray isEqual:](associatedAccessoryUniqueIdentifiers, "isEqual:")) && ((actionSetName = self->_actionSetName, !(actionSetName | equalCopy[1])) || -[NSString isEqual:](actionSetName, "isEqual:")))
  {
    homeName = self->_homeName;
    if (homeName | equalCopy[6])
    {
      v11 = [(NSString *)homeName isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(BMPBHomeKitClientBase *)self->_base hash];
  v4 = [(NSString *)self->_actionSetUniqueIdentifier hash]^ v3;
  v5 = [(NSString *)self->_actionSetType hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_associatedAccessoryUniqueIdentifiers hash];
  v7 = [(NSString *)self->_actionSetName hash];
  return v6 ^ v7 ^ [(NSString *)self->_homeName hash];
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  base = self->_base;
  v6 = *(fromCopy + 5);
  if (base)
  {
    if (v6)
    {
      [(BMPBHomeKitClientBase *)base mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(BMPBHomeKitClientActionSetEvent *)self setBase:?];
  }

  if (*(fromCopy + 3))
  {
    [(BMPBHomeKitClientActionSetEvent *)self setActionSetUniqueIdentifier:?];
  }

  if (*(fromCopy + 2))
  {
    [(BMPBHomeKitClientActionSetEvent *)self setActionSetType:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(fromCopy + 4);
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

        [(BMPBHomeKitClientActionSetEvent *)self addAssociatedAccessoryUniqueIdentifiers:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  if (*(fromCopy + 1))
  {
    [(BMPBHomeKitClientActionSetEvent *)self setActionSetName:?];
  }

  if (*(fromCopy + 6))
  {
    [(BMPBHomeKitClientActionSetEvent *)self setHomeName:?];
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end