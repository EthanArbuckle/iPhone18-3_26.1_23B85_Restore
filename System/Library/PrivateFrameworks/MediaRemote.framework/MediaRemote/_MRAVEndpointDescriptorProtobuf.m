@interface _MRAVEndpointDescriptorProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsConnectionType:(id)a3;
- (int)connectionType;
- (unint64_t)hash;
- (void)addOutputDevices:(id)a3;
- (void)addPersonalOutputDevices:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCanModifyGroupMembership:(BOOL)a3;
- (void)setHasIsLocalEndpoint:(BOOL)a3;
- (void)setHasIsProxyGroupPlayer:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRAVEndpointDescriptorProtobuf

- (int)connectionType
{
  if (*&self->_has)
  {
    return self->_connectionType;
  }

  else
  {
    return 0;
  }
}

- (void)addOutputDevices:(id)a3
{
  v4 = a3;
  outputDevices = self->_outputDevices;
  v8 = v4;
  if (!outputDevices)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_outputDevices;
    self->_outputDevices = v6;

    v4 = v8;
    outputDevices = self->_outputDevices;
  }

  [(NSMutableArray *)outputDevices addObject:v4];
}

- (void)setHasIsLocalEndpoint:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsProxyGroupPlayer:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsConnectionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Local"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Direct"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Relay"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"AirPlaySender"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RemoteHosted"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"LocalHosted"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasCanModifyGroupMembership:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addPersonalOutputDevices:(id)a3
{
  v4 = a3;
  personalOutputDevices = self->_personalOutputDevices;
  v8 = v4;
  if (!personalOutputDevices)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_personalOutputDevices;
    self->_personalOutputDevices = v6;

    v4 = v8;
    personalOutputDevices = self->_personalOutputDevices;
  }

  [(NSMutableArray *)personalOutputDevices addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRAVEndpointDescriptorProtobuf;
  v4 = [(_MRAVEndpointDescriptorProtobuf *)&v8 description];
  v5 = [(_MRAVEndpointDescriptorProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [v4 setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  }

  if ([(NSMutableArray *)self->_outputDevices count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_outputDevices, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v8 = self->_outputDevices;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v37;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"outputDevices"];
  }

  designatedGroupLeader = self->_designatedGroupLeader;
  if (designatedGroupLeader)
  {
    v15 = [(_MRAVOutputDeviceDescriptorProtobuf *)designatedGroupLeader dictionaryRepresentation];
    [v4 setObject:v15 forKey:@"designatedGroupLeader"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLocalEndpoint];
    [v4 setObject:v16 forKey:@"isLocalEndpoint"];
  }

  instanceIdentifier = self->_instanceIdentifier;
  if (instanceIdentifier)
  {
    [v4 setObject:instanceIdentifier forKey:@"instanceIdentifier"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:self->_isProxyGroupPlayer];
    [v4 setObject:v29 forKey:@"isProxyGroupPlayer"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_22:
      if ((has & 2) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_22;
  }

  connectionType = self->_connectionType;
  if (connectionType >= 7)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_connectionType];
  }

  else
  {
    v31 = off_1E769E688[connectionType];
  }

  [v4 setObject:v31 forKey:@"connectionType"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_23:
    v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_canModifyGroupMembership];
    [v4 setObject:v19 forKey:@"canModifyGroupMembership"];
  }

LABEL_24:
  if ([(NSMutableArray *)self->_personalOutputDevices count])
  {
    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_personalOutputDevices, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = self->_personalOutputDevices;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v33;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v32 + 1) + 8 * j) dictionaryRepresentation];
          [v20 addObject:v26];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v23);
    }

    [v4 setObject:v20 forKey:@"personalOutputDevices"];
  }

  v27 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_uniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = self->_outputDevices;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  if (self->_designatedGroupLeader)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    isLocalEndpoint = self->_isLocalEndpoint;
    PBDataWriterWriteBOOLField();
  }

  if (self->_instanceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    isProxyGroupPlayer = self->_isProxyGroupPlayer;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_20:
      if ((has & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_20;
  }

  connectionType = self->_connectionType;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_21:
    canModifyGroupMembership = self->_canModifyGroupMembership;
    PBDataWriterWriteBOOLField();
  }

LABEL_22:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = self->_personalOutputDevices;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v14 = a3;
  if (self->_name)
  {
    [v14 setName:?];
  }

  if (self->_uniqueIdentifier)
  {
    [v14 setUniqueIdentifier:?];
  }

  if ([(_MRAVEndpointDescriptorProtobuf *)self outputDevicesCount])
  {
    [v14 clearOutputDevices];
    v4 = [(_MRAVEndpointDescriptorProtobuf *)self outputDevicesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(_MRAVEndpointDescriptorProtobuf *)self outputDevicesAtIndex:i];
        [v14 addOutputDevices:v7];
      }
    }
  }

  if (self->_designatedGroupLeader)
  {
    [v14 setDesignatedGroupLeader:?];
  }

  v8 = v14;
  if ((*&self->_has & 4) != 0)
  {
    v14[65] = self->_isLocalEndpoint;
    v14[68] |= 4u;
  }

  if (self->_instanceIdentifier)
  {
    [v14 setInstanceIdentifier:?];
    v8 = v14;
  }

  has = self->_has;
  if ((has & 8) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_27:
    *(v8 + 2) = self->_connectionType;
    v8[68] |= 1u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v8[66] = self->_isProxyGroupPlayer;
  v8[68] |= 8u;
  has = self->_has;
  if (has)
  {
    goto LABEL_27;
  }

LABEL_17:
  if ((has & 2) != 0)
  {
LABEL_18:
    v8[64] = self->_canModifyGroupMembership;
    v8[68] |= 2u;
  }

LABEL_19:
  if ([(_MRAVEndpointDescriptorProtobuf *)self personalOutputDevicesCount])
  {
    [v14 clearPersonalOutputDevices];
    v10 = [(_MRAVEndpointDescriptorProtobuf *)self personalOutputDevicesCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(_MRAVEndpointDescriptorProtobuf *)self personalOutputDevicesAtIndex:j];
        [v14 addPersonalOutputDevices:v13];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_uniqueIdentifier copyWithZone:a3];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = self->_outputDevices;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v33 + 1) + 8 * i) copyWithZone:a3];
        [v5 addOutputDevices:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v12);
  }

  v16 = [(_MRAVOutputDeviceDescriptorProtobuf *)self->_designatedGroupLeader copyWithZone:a3];
  v17 = *(v5 + 16);
  *(v5 + 16) = v16;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 65) = self->_isLocalEndpoint;
    *(v5 + 68) |= 4u;
  }

  v18 = [(NSString *)self->_instanceIdentifier copyWithZone:a3];
  v19 = *(v5 + 24);
  *(v5 + 24) = v18;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 66) = self->_isProxyGroupPlayer;
    *(v5 + 68) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_12:
      if ((has & 2) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

  *(v5 + 8) = self->_connectionType;
  *(v5 + 68) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_13:
    *(v5 + 64) = self->_canModifyGroupMembership;
    *(v5 + 68) |= 2u;
  }

LABEL_14:
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = self->_personalOutputDevices;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v30;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v29 + 1) + 8 * j) copyWithZone:{a3, v29}];
        [v5 addPersonalOutputDevices:v26];
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v23);
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  name = self->_name;
  if (name | *(v4 + 4))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_39;
    }
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier | *(v4 + 7))
  {
    if (![(NSString *)uniqueIdentifier isEqual:?])
    {
      goto LABEL_39;
    }
  }

  outputDevices = self->_outputDevices;
  if (outputDevices | *(v4 + 5))
  {
    if (![(NSMutableArray *)outputDevices isEqual:?])
    {
      goto LABEL_39;
    }
  }

  designatedGroupLeader = self->_designatedGroupLeader;
  if (designatedGroupLeader | *(v4 + 2))
  {
    if (![(_MRAVOutputDeviceDescriptorProtobuf *)designatedGroupLeader isEqual:?])
    {
      goto LABEL_39;
    }
  }

  has = self->_has;
  v10 = *(v4 + 68);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 68) & 4) == 0)
    {
      goto LABEL_39;
    }

    v13 = *(v4 + 65);
    if (self->_isLocalEndpoint)
    {
      if ((*(v4 + 65) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (*(v4 + 65))
    {
      goto LABEL_39;
    }
  }

  else if ((*(v4 + 68) & 4) != 0)
  {
    goto LABEL_39;
  }

  instanceIdentifier = self->_instanceIdentifier;
  if (instanceIdentifier | *(v4 + 3))
  {
    if (![(NSString *)instanceIdentifier isEqual:?])
    {
      goto LABEL_39;
    }

    has = self->_has;
  }

  v12 = *(v4 + 68);
  if ((has & 8) != 0)
  {
    if ((*(v4 + 68) & 8) == 0)
    {
      goto LABEL_39;
    }

    v14 = *(v4 + 66);
    if (self->_isProxyGroupPlayer)
    {
      if ((*(v4 + 66) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (*(v4 + 66))
    {
      goto LABEL_39;
    }
  }

  else if ((*(v4 + 68) & 8) != 0)
  {
    goto LABEL_39;
  }

  if (has)
  {
    if ((*(v4 + 68) & 1) == 0 || self->_connectionType != *(v4 + 2))
    {
      goto LABEL_39;
    }
  }

  else if (*(v4 + 68))
  {
    goto LABEL_39;
  }

  if ((has & 2) == 0)
  {
    if ((*(v4 + 68) & 2) == 0)
    {
      goto LABEL_34;
    }

LABEL_39:
    v16 = 0;
    goto LABEL_40;
  }

  if ((*(v4 + 68) & 2) == 0)
  {
    goto LABEL_39;
  }

  v18 = *(v4 + 64);
  if (self->_canModifyGroupMembership)
  {
    if ((*(v4 + 64) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_39;
  }

LABEL_34:
  personalOutputDevices = self->_personalOutputDevices;
  if (personalOutputDevices | *(v4 + 6))
  {
    v16 = [(NSMutableArray *)personalOutputDevices isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_40:

  return v16;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_uniqueIdentifier hash];
  v5 = [(NSMutableArray *)self->_outputDevices hash];
  v6 = [(_MRAVOutputDeviceDescriptorProtobuf *)self->_designatedGroupLeader hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_isLocalEndpoint;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_instanceIdentifier hash];
  if ((*&self->_has & 8) == 0)
  {
    v9 = 0;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_9:
    v10 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSMutableArray *)self->_personalOutputDevices hash];
  }

  v9 = 2654435761 * self->_isProxyGroupPlayer;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v10 = 2654435761 * self->_connectionType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v11 = 2654435761 * self->_canModifyGroupMembership;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSMutableArray *)self->_personalOutputDevices hash];
}

- (void)mergeFrom:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 4))
  {
    [(_MRAVEndpointDescriptorProtobuf *)self setName:?];
  }

  if (*(v4 + 7))
  {
    [(_MRAVEndpointDescriptorProtobuf *)self setUniqueIdentifier:?];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = *(v4 + 5);
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(_MRAVEndpointDescriptorProtobuf *)self addOutputDevices:*(*(&v23 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  designatedGroupLeader = self->_designatedGroupLeader;
  v11 = *(v4 + 2);
  if (designatedGroupLeader)
  {
    if (v11)
    {
      [(_MRAVOutputDeviceDescriptorProtobuf *)designatedGroupLeader mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(_MRAVEndpointDescriptorProtobuf *)self setDesignatedGroupLeader:?];
  }

  if ((*(v4 + 68) & 4) != 0)
  {
    self->_isLocalEndpoint = *(v4 + 65);
    *&self->_has |= 4u;
  }

  if (*(v4 + 3))
  {
    [(_MRAVEndpointDescriptorProtobuf *)self setInstanceIdentifier:?];
  }

  v12 = *(v4 + 68);
  if ((v12 & 8) != 0)
  {
    self->_isProxyGroupPlayer = *(v4 + 66);
    *&self->_has |= 8u;
    v12 = *(v4 + 68);
    if ((v12 & 1) == 0)
    {
LABEL_23:
      if ((v12 & 2) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*(v4 + 68) & 1) == 0)
  {
    goto LABEL_23;
  }

  self->_connectionType = *(v4 + 2);
  *&self->_has |= 1u;
  if ((*(v4 + 68) & 2) != 0)
  {
LABEL_24:
    self->_canModifyGroupMembership = *(v4 + 64);
    *&self->_has |= 2u;
  }

LABEL_25:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = *(v4 + 6);
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(_MRAVEndpointDescriptorProtobuf *)self addPersonalOutputDevices:*(*(&v19 + 1) + 8 * j), v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end