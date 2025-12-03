@interface BMPBHomeKitClientMediaAccessoryControlEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAccessoryState:(id)state;
- (void)addZoneNames:(id)names;
- (void)addZoneUniqueIdentifiers:(id)identifiers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBHomeKitClientMediaAccessoryControlEvent

- (void)addAccessoryState:(id)state
{
  stateCopy = state;
  accessoryStates = self->_accessoryStates;
  v8 = stateCopy;
  if (!accessoryStates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_accessoryStates;
    self->_accessoryStates = v6;

    stateCopy = v8;
    accessoryStates = self->_accessoryStates;
  }

  [(NSMutableArray *)accessoryStates addObject:stateCopy];
}

- (void)addZoneUniqueIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  zoneUniqueIdentifiers = self->_zoneUniqueIdentifiers;
  v8 = identifiersCopy;
  if (!zoneUniqueIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_zoneUniqueIdentifiers;
    self->_zoneUniqueIdentifiers = v6;

    identifiersCopy = v8;
    zoneUniqueIdentifiers = self->_zoneUniqueIdentifiers;
  }

  [(NSMutableArray *)zoneUniqueIdentifiers addObject:identifiersCopy];
}

- (void)addZoneNames:(id)names
{
  namesCopy = names;
  zoneNames = self->_zoneNames;
  v8 = namesCopy;
  if (!zoneNames)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_zoneNames;
    self->_zoneNames = v6;

    namesCopy = v8;
    zoneNames = self->_zoneNames;
  }

  [(NSMutableArray *)zoneNames addObject:namesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBHomeKitClientMediaAccessoryControlEvent;
  v4 = [(BMPBHomeKitClientMediaAccessoryControlEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBHomeKitClientMediaAccessoryControlEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  base = self->_base;
  if (base)
  {
    dictionaryRepresentation = [(BMPBHomeKitClientBase *)base dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"base"];
  }

  accessoryUniqueIdentifier = self->_accessoryUniqueIdentifier;
  if (accessoryUniqueIdentifier)
  {
    [dictionary setObject:accessoryUniqueIdentifier forKey:@"accessoryUniqueIdentifier"];
  }

  if ([(NSMutableArray *)self->_accessoryStates count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_accessoryStates, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = self->_accessoryStates;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation2];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"accessoryState"];
  }

  accessoryMediaRouteIdentifier = self->_accessoryMediaRouteIdentifier;
  if (accessoryMediaRouteIdentifier)
  {
    [dictionary setObject:accessoryMediaRouteIdentifier forKey:@"accessoryMediaRouteIdentifier"];
  }

  zoneUniqueIdentifiers = self->_zoneUniqueIdentifiers;
  if (zoneUniqueIdentifiers)
  {
    [dictionary setObject:zoneUniqueIdentifiers forKey:@"zoneUniqueIdentifiers"];
  }

  roomUniqueIdentifier = self->_roomUniqueIdentifier;
  if (roomUniqueIdentifier)
  {
    [dictionary setObject:roomUniqueIdentifier forKey:@"roomUniqueIdentifier"];
  }

  accessoryName = self->_accessoryName;
  if (accessoryName)
  {
    [dictionary setObject:accessoryName forKey:@"accessoryName"];
  }

  roomName = self->_roomName;
  if (roomName)
  {
    [dictionary setObject:roomName forKey:@"roomName"];
  }

  zoneNames = self->_zoneNames;
  if (zoneNames)
  {
    [dictionary setObject:zoneNames forKey:@"zoneNames"];
  }

  homeName = self->_homeName;
  if (homeName)
  {
    [dictionary setObject:homeName forKey:@"homeName"];
  }

  v21 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v39 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_base)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_accessoryUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = self->_accessoryStates;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  if (self->_accessoryMediaRouteIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = self->_zoneUniqueIdentifiers;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v13);
  }

  if (self->_roomUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accessoryName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_roomName)
  {
    PBDataWriterWriteStringField();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = self->_zoneNames;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v24 + 1) + 8 * v21);
        PBDataWriterWriteStringField();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v19);
  }

  if (self->_homeName)
  {
    PBDataWriterWriteStringField();
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_base)
  {
    [toCopy setBase:?];
  }

  if (self->_accessoryUniqueIdentifier)
  {
    [toCopy setAccessoryUniqueIdentifier:?];
  }

  if ([(BMPBHomeKitClientMediaAccessoryControlEvent *)self accessoryStatesCount])
  {
    [toCopy clearAccessoryStates];
    accessoryStatesCount = [(BMPBHomeKitClientMediaAccessoryControlEvent *)self accessoryStatesCount];
    if (accessoryStatesCount)
    {
      v5 = accessoryStatesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BMPBHomeKitClientMediaAccessoryControlEvent *)self accessoryStateAtIndex:i];
        [toCopy addAccessoryState:v7];
      }
    }
  }

  if (self->_accessoryMediaRouteIdentifier)
  {
    [toCopy setAccessoryMediaRouteIdentifier:?];
  }

  if ([(BMPBHomeKitClientMediaAccessoryControlEvent *)self zoneUniqueIdentifiersCount])
  {
    [toCopy clearZoneUniqueIdentifiers];
    zoneUniqueIdentifiersCount = [(BMPBHomeKitClientMediaAccessoryControlEvent *)self zoneUniqueIdentifiersCount];
    if (zoneUniqueIdentifiersCount)
    {
      v9 = zoneUniqueIdentifiersCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(BMPBHomeKitClientMediaAccessoryControlEvent *)self zoneUniqueIdentifiersAtIndex:j];
        [toCopy addZoneUniqueIdentifiers:v11];
      }
    }
  }

  if (self->_roomUniqueIdentifier)
  {
    [toCopy setRoomUniqueIdentifier:?];
  }

  if (self->_accessoryName)
  {
    [toCopy setAccessoryName:?];
  }

  if (self->_roomName)
  {
    [toCopy setRoomName:?];
  }

  if ([(BMPBHomeKitClientMediaAccessoryControlEvent *)self zoneNamesCount])
  {
    [toCopy clearZoneNames];
    zoneNamesCount = [(BMPBHomeKitClientMediaAccessoryControlEvent *)self zoneNamesCount];
    if (zoneNamesCount)
    {
      v13 = zoneNamesCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(BMPBHomeKitClientMediaAccessoryControlEvent *)self zoneNamesAtIndex:k];
        [toCopy addZoneNames:v15];
      }
    }
  }

  if (self->_homeName)
  {
    [toCopy setHomeName:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(BMPBHomeKitClientBase *)self->_base copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_accessoryUniqueIdentifier copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v10 = self->_accessoryStates;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v49;
    do
    {
      v14 = 0;
      do
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v48 + 1) + 8 * v14) copyWithZone:zone];
        [v5 addAccessoryState:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v12);
  }

  v16 = [(NSString *)self->_accessoryMediaRouteIdentifier copyWithZone:zone];
  v17 = v5[1];
  v5[1] = v16;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v18 = self->_zoneUniqueIdentifiers;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v45;
    do
    {
      v22 = 0;
      do
      {
        if (*v45 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v44 + 1) + 8 * v22) copyWithZone:zone];
        [v5 addZoneUniqueIdentifiers:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v20);
  }

  v24 = [(NSString *)self->_roomUniqueIdentifier copyWithZone:zone];
  v25 = v5[8];
  v5[8] = v24;

  v26 = [(NSString *)self->_accessoryName copyWithZone:zone];
  v27 = v5[2];
  v5[2] = v26;

  v28 = [(NSString *)self->_roomName copyWithZone:zone];
  v29 = v5[7];
  v5[7] = v28;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v30 = self->_zoneNames;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v41;
    do
    {
      v34 = 0;
      do
      {
        if (*v41 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v40 + 1) + 8 * v34) copyWithZone:{zone, v40}];
        [v5 addZoneNames:v35];

        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v32);
  }

  v36 = [(NSString *)self->_homeName copyWithZone:zone];
  v37 = v5[6];
  v5[6] = v36;

  v38 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  base = self->_base;
  if (base | equalCopy[5])
  {
    if (![(BMPBHomeKitClientBase *)base isEqual:?])
    {
      goto LABEL_22;
    }
  }

  accessoryUniqueIdentifier = self->_accessoryUniqueIdentifier;
  if (accessoryUniqueIdentifier | equalCopy[4] && ![(NSString *)accessoryUniqueIdentifier isEqual:?])
  {
    goto LABEL_22;
  }

  if (((accessoryStates = self->_accessoryStates, !(accessoryStates | equalCopy[3])) || [(NSMutableArray *)accessoryStates isEqual:?]) && ((accessoryMediaRouteIdentifier = self->_accessoryMediaRouteIdentifier, !(accessoryMediaRouteIdentifier | equalCopy[1])) || [(NSString *)accessoryMediaRouteIdentifier isEqual:?]) && ((zoneUniqueIdentifiers = self->_zoneUniqueIdentifiers, !(zoneUniqueIdentifiers | equalCopy[10])) || [(NSMutableArray *)zoneUniqueIdentifiers isEqual:?]) && ((roomUniqueIdentifier = self->_roomUniqueIdentifier, !(roomUniqueIdentifier | equalCopy[8])) || [(NSString *)roomUniqueIdentifier isEqual:?]) && ((accessoryName = self->_accessoryName, !(accessoryName | equalCopy[2])) || [(NSString *)accessoryName isEqual:?]) && ((roomName = self->_roomName, !(roomName | equalCopy[7])) || [(NSString *)roomName isEqual:?]) && ((zoneNames = self->_zoneNames, !(zoneNames | equalCopy[9])) || [(NSMutableArray *)zoneNames isEqual:?]))
  {
    homeName = self->_homeName;
    if (homeName | equalCopy[6])
    {
      v15 = [(NSString *)homeName isEqual:?];
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
LABEL_22:
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(BMPBHomeKitClientBase *)self->_base hash];
  v4 = [(NSString *)self->_accessoryUniqueIdentifier hash]^ v3;
  v5 = [(NSMutableArray *)self->_accessoryStates hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_accessoryMediaRouteIdentifier hash];
  v7 = [(NSMutableArray *)self->_zoneUniqueIdentifiers hash];
  v8 = v7 ^ [(NSString *)self->_roomUniqueIdentifier hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_accessoryName hash];
  v10 = [(NSString *)self->_roomName hash];
  v11 = v10 ^ [(NSMutableArray *)self->_zoneNames hash];
  return v9 ^ v11 ^ [(NSString *)self->_homeName hash];
}

- (void)mergeFrom:(id)from
{
  v38 = *MEMORY[0x1E69E9840];
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
    [(BMPBHomeKitClientMediaAccessoryControlEvent *)self setBase:?];
  }

  if (*(fromCopy + 4))
  {
    [(BMPBHomeKitClientMediaAccessoryControlEvent *)self setAccessoryUniqueIdentifier:?];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = *(fromCopy + 3);
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(BMPBHomeKitClientMediaAccessoryControlEvent *)self addAccessoryState:*(*(&v31 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v9);
  }

  if (*(fromCopy + 1))
  {
    [(BMPBHomeKitClientMediaAccessoryControlEvent *)self setAccessoryMediaRouteIdentifier:?];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = *(fromCopy + 10);
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(BMPBHomeKitClientMediaAccessoryControlEvent *)self addZoneUniqueIdentifiers:*(*(&v27 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v14);
  }

  if (*(fromCopy + 8))
  {
    [(BMPBHomeKitClientMediaAccessoryControlEvent *)self setRoomUniqueIdentifier:?];
  }

  if (*(fromCopy + 2))
  {
    [(BMPBHomeKitClientMediaAccessoryControlEvent *)self setAccessoryName:?];
  }

  if (*(fromCopy + 7))
  {
    [(BMPBHomeKitClientMediaAccessoryControlEvent *)self setRoomName:?];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = *(fromCopy + 9);
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(BMPBHomeKitClientMediaAccessoryControlEvent *)self addZoneNames:*(*(&v23 + 1) + 8 * k), v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v19);
  }

  if (*(fromCopy + 6))
  {
    [(BMPBHomeKitClientMediaAccessoryControlEvent *)self setHomeName:?];
  }

  v22 = *MEMORY[0x1E69E9840];
}

@end