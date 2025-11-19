@interface BMPBHomeKitClientMediaAccessoryControlEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAccessoryState:(id)a3;
- (void)addZoneNames:(id)a3;
- (void)addZoneUniqueIdentifiers:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBHomeKitClientMediaAccessoryControlEvent

- (void)addAccessoryState:(id)a3
{
  v4 = a3;
  accessoryStates = self->_accessoryStates;
  v8 = v4;
  if (!accessoryStates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_accessoryStates;
    self->_accessoryStates = v6;

    v4 = v8;
    accessoryStates = self->_accessoryStates;
  }

  [(NSMutableArray *)accessoryStates addObject:v4];
}

- (void)addZoneUniqueIdentifiers:(id)a3
{
  v4 = a3;
  zoneUniqueIdentifiers = self->_zoneUniqueIdentifiers;
  v8 = v4;
  if (!zoneUniqueIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_zoneUniqueIdentifiers;
    self->_zoneUniqueIdentifiers = v6;

    v4 = v8;
    zoneUniqueIdentifiers = self->_zoneUniqueIdentifiers;
  }

  [(NSMutableArray *)zoneUniqueIdentifiers addObject:v4];
}

- (void)addZoneNames:(id)a3
{
  v4 = a3;
  zoneNames = self->_zoneNames;
  v8 = v4;
  if (!zoneNames)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_zoneNames;
    self->_zoneNames = v6;

    v4 = v8;
    zoneNames = self->_zoneNames;
  }

  [(NSMutableArray *)zoneNames addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBHomeKitClientMediaAccessoryControlEvent;
  v4 = [(BMPBHomeKitClientMediaAccessoryControlEvent *)&v8 description];
  v5 = [(BMPBHomeKitClientMediaAccessoryControlEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  base = self->_base;
  if (base)
  {
    v5 = [(BMPBHomeKitClientBase *)base dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"base"];
  }

  accessoryUniqueIdentifier = self->_accessoryUniqueIdentifier;
  if (accessoryUniqueIdentifier)
  {
    [v3 setObject:accessoryUniqueIdentifier forKey:@"accessoryUniqueIdentifier"];
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

          v13 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"accessoryState"];
  }

  accessoryMediaRouteIdentifier = self->_accessoryMediaRouteIdentifier;
  if (accessoryMediaRouteIdentifier)
  {
    [v3 setObject:accessoryMediaRouteIdentifier forKey:@"accessoryMediaRouteIdentifier"];
  }

  zoneUniqueIdentifiers = self->_zoneUniqueIdentifiers;
  if (zoneUniqueIdentifiers)
  {
    [v3 setObject:zoneUniqueIdentifiers forKey:@"zoneUniqueIdentifiers"];
  }

  roomUniqueIdentifier = self->_roomUniqueIdentifier;
  if (roomUniqueIdentifier)
  {
    [v3 setObject:roomUniqueIdentifier forKey:@"roomUniqueIdentifier"];
  }

  accessoryName = self->_accessoryName;
  if (accessoryName)
  {
    [v3 setObject:accessoryName forKey:@"accessoryName"];
  }

  roomName = self->_roomName;
  if (roomName)
  {
    [v3 setObject:roomName forKey:@"roomName"];
  }

  zoneNames = self->_zoneNames;
  if (zoneNames)
  {
    [v3 setObject:zoneNames forKey:@"zoneNames"];
  }

  homeName = self->_homeName;
  if (homeName)
  {
    [v3 setObject:homeName forKey:@"homeName"];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v16 = a3;
  if (self->_base)
  {
    [v16 setBase:?];
  }

  if (self->_accessoryUniqueIdentifier)
  {
    [v16 setAccessoryUniqueIdentifier:?];
  }

  if ([(BMPBHomeKitClientMediaAccessoryControlEvent *)self accessoryStatesCount])
  {
    [v16 clearAccessoryStates];
    v4 = [(BMPBHomeKitClientMediaAccessoryControlEvent *)self accessoryStatesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BMPBHomeKitClientMediaAccessoryControlEvent *)self accessoryStateAtIndex:i];
        [v16 addAccessoryState:v7];
      }
    }
  }

  if (self->_accessoryMediaRouteIdentifier)
  {
    [v16 setAccessoryMediaRouteIdentifier:?];
  }

  if ([(BMPBHomeKitClientMediaAccessoryControlEvent *)self zoneUniqueIdentifiersCount])
  {
    [v16 clearZoneUniqueIdentifiers];
    v8 = [(BMPBHomeKitClientMediaAccessoryControlEvent *)self zoneUniqueIdentifiersCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(BMPBHomeKitClientMediaAccessoryControlEvent *)self zoneUniqueIdentifiersAtIndex:j];
        [v16 addZoneUniqueIdentifiers:v11];
      }
    }
  }

  if (self->_roomUniqueIdentifier)
  {
    [v16 setRoomUniqueIdentifier:?];
  }

  if (self->_accessoryName)
  {
    [v16 setAccessoryName:?];
  }

  if (self->_roomName)
  {
    [v16 setRoomName:?];
  }

  if ([(BMPBHomeKitClientMediaAccessoryControlEvent *)self zoneNamesCount])
  {
    [v16 clearZoneNames];
    v12 = [(BMPBHomeKitClientMediaAccessoryControlEvent *)self zoneNamesCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(BMPBHomeKitClientMediaAccessoryControlEvent *)self zoneNamesAtIndex:k];
        [v16 addZoneNames:v15];
      }
    }
  }

  if (self->_homeName)
  {
    [v16 setHomeName:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(BMPBHomeKitClientBase *)self->_base copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_accessoryUniqueIdentifier copyWithZone:a3];
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

        v15 = [*(*(&v48 + 1) + 8 * v14) copyWithZone:a3];
        [v5 addAccessoryState:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v12);
  }

  v16 = [(NSString *)self->_accessoryMediaRouteIdentifier copyWithZone:a3];
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

        v23 = [*(*(&v44 + 1) + 8 * v22) copyWithZone:a3];
        [v5 addZoneUniqueIdentifiers:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v20);
  }

  v24 = [(NSString *)self->_roomUniqueIdentifier copyWithZone:a3];
  v25 = v5[8];
  v5[8] = v24;

  v26 = [(NSString *)self->_accessoryName copyWithZone:a3];
  v27 = v5[2];
  v5[2] = v26;

  v28 = [(NSString *)self->_roomName copyWithZone:a3];
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

        v35 = [*(*(&v40 + 1) + 8 * v34) copyWithZone:{a3, v40}];
        [v5 addZoneNames:v35];

        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v32);
  }

  v36 = [(NSString *)self->_homeName copyWithZone:a3];
  v37 = v5[6];
  v5[6] = v36;

  v38 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  base = self->_base;
  if (base | v4[5])
  {
    if (![(BMPBHomeKitClientBase *)base isEqual:?])
    {
      goto LABEL_22;
    }
  }

  accessoryUniqueIdentifier = self->_accessoryUniqueIdentifier;
  if (accessoryUniqueIdentifier | v4[4] && ![(NSString *)accessoryUniqueIdentifier isEqual:?])
  {
    goto LABEL_22;
  }

  if (((accessoryStates = self->_accessoryStates, !(accessoryStates | v4[3])) || [(NSMutableArray *)accessoryStates isEqual:?]) && ((accessoryMediaRouteIdentifier = self->_accessoryMediaRouteIdentifier, !(accessoryMediaRouteIdentifier | v4[1])) || [(NSString *)accessoryMediaRouteIdentifier isEqual:?]) && ((zoneUniqueIdentifiers = self->_zoneUniqueIdentifiers, !(zoneUniqueIdentifiers | v4[10])) || [(NSMutableArray *)zoneUniqueIdentifiers isEqual:?]) && ((roomUniqueIdentifier = self->_roomUniqueIdentifier, !(roomUniqueIdentifier | v4[8])) || [(NSString *)roomUniqueIdentifier isEqual:?]) && ((accessoryName = self->_accessoryName, !(accessoryName | v4[2])) || [(NSString *)accessoryName isEqual:?]) && ((roomName = self->_roomName, !(roomName | v4[7])) || [(NSString *)roomName isEqual:?]) && ((zoneNames = self->_zoneNames, !(zoneNames | v4[9])) || [(NSMutableArray *)zoneNames isEqual:?]))
  {
    homeName = self->_homeName;
    if (homeName | v4[6])
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

- (void)mergeFrom:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  base = self->_base;
  v6 = *(v4 + 5);
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

  if (*(v4 + 4))
  {
    [(BMPBHomeKitClientMediaAccessoryControlEvent *)self setAccessoryUniqueIdentifier:?];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = *(v4 + 3);
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

  if (*(v4 + 1))
  {
    [(BMPBHomeKitClientMediaAccessoryControlEvent *)self setAccessoryMediaRouteIdentifier:?];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = *(v4 + 10);
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

  if (*(v4 + 8))
  {
    [(BMPBHomeKitClientMediaAccessoryControlEvent *)self setRoomUniqueIdentifier:?];
  }

  if (*(v4 + 2))
  {
    [(BMPBHomeKitClientMediaAccessoryControlEvent *)self setAccessoryName:?];
  }

  if (*(v4 + 7))
  {
    [(BMPBHomeKitClientMediaAccessoryControlEvent *)self setRoomName:?];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = *(v4 + 9);
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

  if (*(v4 + 6))
  {
    [(BMPBHomeKitClientMediaAccessoryControlEvent *)self setHomeName:?];
  }

  v22 = *MEMORY[0x1E69E9840];
}

@end