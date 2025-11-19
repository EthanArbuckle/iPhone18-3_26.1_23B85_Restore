@interface BMPBHomeKitClientAccessoryControlEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addZoneNames:(id)a3;
- (void)addZoneUniqueIdentifiers:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBHomeKitClientAccessoryControlEvent

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
  v8.super_class = BMPBHomeKitClientAccessoryControlEvent;
  v4 = [(BMPBHomeKitClientAccessoryControlEvent *)&v8 description];
  v5 = [(BMPBHomeKitClientAccessoryControlEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
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

  accessoryState = self->_accessoryState;
  if (accessoryState)
  {
    v8 = [(BMPBAccessoryState *)accessoryState dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"accessoryState"];
  }

  serviceUniqueIdentifier = self->_serviceUniqueIdentifier;
  if (serviceUniqueIdentifier)
  {
    [v3 setObject:serviceUniqueIdentifier forKey:@"serviceUniqueIdentifier"];
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [v3 setObject:serviceType forKey:@"serviceType"];
  }

  characteristicType = self->_characteristicType;
  if (characteristicType)
  {
    [v3 setObject:characteristicType forKey:@"characteristicType"];
  }

  serviceGroupUniqueIdentifier = self->_serviceGroupUniqueIdentifier;
  if (serviceGroupUniqueIdentifier)
  {
    [v3 setObject:serviceGroupUniqueIdentifier forKey:@"serviceGroupUniqueIdentifier"];
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

  serviceName = self->_serviceName;
  if (serviceName)
  {
    [v3 setObject:serviceName forKey:@"serviceName"];
  }

  roomName = self->_roomName;
  if (roomName)
  {
    [v3 setObject:roomName forKey:@"roomName"];
  }

  serviceGroupName = self->_serviceGroupName;
  if (serviceGroupName)
  {
    [v3 setObject:serviceGroupName forKey:@"serviceGroupName"];
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

  return v3;
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_base)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_accessoryUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accessoryState)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_serviceUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_serviceType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_characteristicType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_serviceGroupUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_zoneUniqueIdentifiers;
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
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  if (self->_roomUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accessoryName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_serviceName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_roomName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_serviceGroupName)
  {
    PBDataWriterWriteStringField();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_zoneNames;
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
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  if (self->_homeName)
  {
    PBDataWriterWriteStringField();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v12 = a3;
  if (self->_base)
  {
    [v12 setBase:?];
  }

  if (self->_accessoryUniqueIdentifier)
  {
    [v12 setAccessoryUniqueIdentifier:?];
  }

  if (self->_accessoryState)
  {
    [v12 setAccessoryState:?];
  }

  if (self->_serviceUniqueIdentifier)
  {
    [v12 setServiceUniqueIdentifier:?];
  }

  if (self->_serviceType)
  {
    [v12 setServiceType:?];
  }

  if (self->_characteristicType)
  {
    [v12 setCharacteristicType:?];
  }

  if (self->_serviceGroupUniqueIdentifier)
  {
    [v12 setServiceGroupUniqueIdentifier:?];
  }

  if ([(BMPBHomeKitClientAccessoryControlEvent *)self zoneUniqueIdentifiersCount])
  {
    [v12 clearZoneUniqueIdentifiers];
    v4 = [(BMPBHomeKitClientAccessoryControlEvent *)self zoneUniqueIdentifiersCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BMPBHomeKitClientAccessoryControlEvent *)self zoneUniqueIdentifiersAtIndex:i];
        [v12 addZoneUniqueIdentifiers:v7];
      }
    }
  }

  if (self->_roomUniqueIdentifier)
  {
    [v12 setRoomUniqueIdentifier:?];
  }

  if (self->_accessoryName)
  {
    [v12 setAccessoryName:?];
  }

  if (self->_serviceName)
  {
    [v12 setServiceName:?];
  }

  if (self->_roomName)
  {
    [v12 setRoomName:?];
  }

  if (self->_serviceGroupName)
  {
    [v12 setServiceGroupName:?];
  }

  if ([(BMPBHomeKitClientAccessoryControlEvent *)self zoneNamesCount])
  {
    [v12 clearZoneNames];
    v8 = [(BMPBHomeKitClientAccessoryControlEvent *)self zoneNamesCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(BMPBHomeKitClientAccessoryControlEvent *)self zoneNamesAtIndex:j];
        [v12 addZoneNames:v11];
      }
    }
  }

  if (self->_homeName)
  {
    [v12 setHomeName:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(BMPBHomeKitClientBase *)self->_base copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_accessoryUniqueIdentifier copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(BMPBAccessoryState *)self->_accessoryState copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_serviceUniqueIdentifier copyWithZone:a3];
  v13 = v5[13];
  v5[13] = v12;

  v14 = [(NSString *)self->_serviceType copyWithZone:a3];
  v15 = v5[12];
  v5[12] = v14;

  v16 = [(NSString *)self->_characteristicType copyWithZone:a3];
  v17 = v5[5];
  v5[5] = v16;

  v18 = [(NSString *)self->_serviceGroupUniqueIdentifier copyWithZone:a3];
  v19 = v5[10];
  v5[10] = v18;

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v20 = self->_zoneUniqueIdentifiers;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v51;
    do
    {
      v24 = 0;
      do
      {
        if (*v51 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v50 + 1) + 8 * v24) copyWithZone:a3];
        [v5 addZoneUniqueIdentifiers:v25];

        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v22);
  }

  v26 = [(NSString *)self->_roomUniqueIdentifier copyWithZone:a3];
  v27 = v5[8];
  v5[8] = v26;

  v28 = [(NSString *)self->_accessoryName copyWithZone:a3];
  v29 = v5[1];
  v5[1] = v28;

  v30 = [(NSString *)self->_serviceName copyWithZone:a3];
  v31 = v5[11];
  v5[11] = v30;

  v32 = [(NSString *)self->_roomName copyWithZone:a3];
  v33 = v5[7];
  v5[7] = v32;

  v34 = [(NSString *)self->_serviceGroupName copyWithZone:a3];
  v35 = v5[9];
  v5[9] = v34;

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v36 = self->_zoneNames;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v47;
    do
    {
      v40 = 0;
      do
      {
        if (*v47 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v46 + 1) + 8 * v40) copyWithZone:{a3, v46}];
        [v5 addZoneNames:v41];

        ++v40;
      }

      while (v38 != v40);
      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v38);
  }

  v42 = [(NSString *)self->_homeName copyWithZone:a3];
  v43 = v5[6];
  v5[6] = v42;

  v44 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  base = self->_base;
  if (base | v4[4])
  {
    if (![(BMPBHomeKitClientBase *)base isEqual:?])
    {
      goto LABEL_32;
    }
  }

  accessoryUniqueIdentifier = self->_accessoryUniqueIdentifier;
  if (accessoryUniqueIdentifier | v4[3] && ![(NSString *)accessoryUniqueIdentifier isEqual:?])
  {
    goto LABEL_32;
  }

  accessoryState = self->_accessoryState;
  if (accessoryState | v4[2] && ![(BMPBAccessoryState *)accessoryState isEqual:?])
  {
    goto LABEL_32;
  }

  serviceUniqueIdentifier = self->_serviceUniqueIdentifier;
  if (serviceUniqueIdentifier | v4[13] && ![(NSString *)serviceUniqueIdentifier isEqual:?])
  {
    goto LABEL_32;
  }

  serviceType = self->_serviceType;
  if (serviceType | v4[12] && ![(NSString *)serviceType isEqual:?])
  {
    goto LABEL_32;
  }

  characteristicType = self->_characteristicType;
  if (characteristicType | v4[5] && ![(NSString *)characteristicType isEqual:?])
  {
    goto LABEL_32;
  }

  serviceGroupUniqueIdentifier = self->_serviceGroupUniqueIdentifier;
  if (serviceGroupUniqueIdentifier | v4[10] && ![(NSString *)serviceGroupUniqueIdentifier isEqual:?])
  {
    goto LABEL_32;
  }

  if (((zoneUniqueIdentifiers = self->_zoneUniqueIdentifiers, !(zoneUniqueIdentifiers | v4[15])) || [(NSMutableArray *)zoneUniqueIdentifiers isEqual:?]) && ((roomUniqueIdentifier = self->_roomUniqueIdentifier, !(roomUniqueIdentifier | v4[8])) || [(NSString *)roomUniqueIdentifier isEqual:?]) && ((accessoryName = self->_accessoryName, !(accessoryName | v4[1])) || [(NSString *)accessoryName isEqual:?]) && ((serviceName = self->_serviceName, !(serviceName | v4[11])) || [(NSString *)serviceName isEqual:?]) && ((roomName = self->_roomName, !(roomName | v4[7])) || [(NSString *)roomName isEqual:?]) && ((serviceGroupName = self->_serviceGroupName, !(serviceGroupName | v4[9])) || [(NSString *)serviceGroupName isEqual:?]) && ((zoneNames = self->_zoneNames, !(zoneNames | v4[14])) || [(NSMutableArray *)zoneNames isEqual:?]))
  {
    homeName = self->_homeName;
    if (homeName | v4[6])
    {
      v20 = [(NSString *)homeName isEqual:?];
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
LABEL_32:
    v20 = 0;
  }

  return v20;
}

- (unint64_t)hash
{
  v3 = [(BMPBHomeKitClientBase *)self->_base hash];
  v4 = [(NSString *)self->_accessoryUniqueIdentifier hash]^ v3;
  v5 = [(BMPBAccessoryState *)self->_accessoryState hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_serviceUniqueIdentifier hash];
  v7 = [(NSString *)self->_serviceType hash];
  v8 = v7 ^ [(NSString *)self->_characteristicType hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_serviceGroupUniqueIdentifier hash];
  v10 = [(NSMutableArray *)self->_zoneUniqueIdentifiers hash];
  v11 = v10 ^ [(NSString *)self->_roomUniqueIdentifier hash];
  v12 = v11 ^ [(NSString *)self->_accessoryName hash];
  v13 = v9 ^ v12 ^ [(NSString *)self->_serviceName hash];
  v14 = [(NSString *)self->_roomName hash];
  v15 = v14 ^ [(NSString *)self->_serviceGroupName hash];
  v16 = v15 ^ [(NSMutableArray *)self->_zoneNames hash];
  return v13 ^ v16 ^ [(NSString *)self->_homeName hash];
}

- (void)mergeFrom:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  base = self->_base;
  v6 = *(v4 + 4);
  if (base)
  {
    if (v6)
    {
      [(BMPBHomeKitClientBase *)base mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setBase:?];
  }

  if (*(v4 + 3))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setAccessoryUniqueIdentifier:?];
  }

  accessoryState = self->_accessoryState;
  v8 = *(v4 + 2);
  if (accessoryState)
  {
    if (v8)
    {
      [(BMPBAccessoryState *)accessoryState mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setAccessoryState:?];
  }

  if (*(v4 + 13))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setServiceUniqueIdentifier:?];
  }

  if (*(v4 + 12))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setServiceType:?];
  }

  if (*(v4 + 5))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setCharacteristicType:?];
  }

  if (*(v4 + 10))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setServiceGroupUniqueIdentifier:?];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = *(v4 + 15);
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(BMPBHomeKitClientAccessoryControlEvent *)self addZoneUniqueIdentifiers:*(*(&v24 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v11);
  }

  if (*(v4 + 8))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setRoomUniqueIdentifier:?];
  }

  if (*(v4 + 1))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setAccessoryName:?];
  }

  if (*(v4 + 11))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setServiceName:?];
  }

  if (*(v4 + 7))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setRoomName:?];
  }

  if (*(v4 + 9))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setServiceGroupName:?];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = *(v4 + 14);
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(BMPBHomeKitClientAccessoryControlEvent *)self addZoneNames:*(*(&v20 + 1) + 8 * j), v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }

  if (*(v4 + 6))
  {
    [(BMPBHomeKitClientAccessoryControlEvent *)self setHomeName:?];
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end