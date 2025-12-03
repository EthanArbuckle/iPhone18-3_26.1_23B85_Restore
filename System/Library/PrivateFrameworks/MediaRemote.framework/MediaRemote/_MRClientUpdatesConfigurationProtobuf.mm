@interface _MRClientUpdatesConfigurationProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSubscribedPlayerPaths:(id)paths;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasKeyboardUpdates:(BOOL)updates;
- (void)setHasNowPlayingUpdates:(BOOL)updates;
- (void)setHasOutputDeviceUpdates:(BOOL)updates;
- (void)setHasSystemEndpointUpdates:(BOOL)updates;
- (void)setHasVolumeUpdates:(BOOL)updates;
- (void)writeTo:(id)to;
@end

@implementation _MRClientUpdatesConfigurationProtobuf

- (void)setHasNowPlayingUpdates:(BOOL)updates
{
  if (updates)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasVolumeUpdates:(BOOL)updates
{
  if (updates)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasKeyboardUpdates:(BOOL)updates
{
  if (updates)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasOutputDeviceUpdates:(BOOL)updates
{
  if (updates)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSystemEndpointUpdates:(BOOL)updates
{
  if (updates)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)addSubscribedPlayerPaths:(id)paths
{
  pathsCopy = paths;
  subscribedPlayerPaths = self->_subscribedPlayerPaths;
  v8 = pathsCopy;
  if (!subscribedPlayerPaths)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_subscribedPlayerPaths;
    self->_subscribedPlayerPaths = v6;

    pathsCopy = v8;
    subscribedPlayerPaths = self->_subscribedPlayerPaths;
  }

  [(NSMutableArray *)subscribedPlayerPaths addObject:pathsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRClientUpdatesConfigurationProtobuf;
  v4 = [(_MRClientUpdatesConfigurationProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRClientUpdatesConfigurationProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_nowPlayingUpdates];
    [dictionary setObject:v15 forKey:@"nowPlayingUpdates"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_artworkUpdates];
  [dictionary setObject:v16 forKey:@"artworkUpdates"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_volumeUpdates];
  [dictionary setObject:v17 forKey:@"volumeUpdates"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_keyboardUpdates];
  [dictionary setObject:v18 forKey:@"keyboardUpdates"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_24:
  v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_outputDeviceUpdates];
  [dictionary setObject:v19 forKey:@"outputDeviceUpdates"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_systemEndpointUpdates];
    [dictionary setObject:v5 forKey:@"systemEndpointUpdates"];
  }

LABEL_8:
  if ([(NSMutableArray *)self->_subscribedPlayerPaths count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_subscribedPlayerPaths, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = self->_subscribedPlayerPaths;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"subscribedPlayerPaths"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v24 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    nowPlayingUpdates = self->_nowPlayingUpdates;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  artworkUpdates = self->_artworkUpdates;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  volumeUpdates = self->_volumeUpdates;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  keyboardUpdates = self->_keyboardUpdates;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_20:
  outputDeviceUpdates = self->_outputDeviceUpdates;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    systemEndpointUpdates = self->_systemEndpointUpdates;
    PBDataWriterWriteBOOLField();
  }

LABEL_8:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_subscribedPlayerPaths;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[18] = self->_nowPlayingUpdates;
    toCopy[24] |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[16] = self->_artworkUpdates;
  toCopy[24] |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  toCopy[21] = self->_volumeUpdates;
  toCopy[24] |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_19:
    toCopy[19] = self->_outputDeviceUpdates;
    toCopy[24] |= 8u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_18:
  toCopy[17] = self->_keyboardUpdates;
  toCopy[24] |= 2u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_6:
  if ((has & 0x10) != 0)
  {
LABEL_7:
    toCopy[20] = self->_systemEndpointUpdates;
    toCopy[24] |= 0x10u;
  }

LABEL_8:
  v10 = toCopy;
  if ([(_MRClientUpdatesConfigurationProtobuf *)self subscribedPlayerPathsCount])
  {
    [v10 clearSubscribedPlayerPaths];
    subscribedPlayerPathsCount = [(_MRClientUpdatesConfigurationProtobuf *)self subscribedPlayerPathsCount];
    if (subscribedPlayerPathsCount)
    {
      v7 = subscribedPlayerPathsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(_MRClientUpdatesConfigurationProtobuf *)self subscribedPlayerPathsAtIndex:i];
        [v10 addSubscribedPlayerPaths:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5[18] = self->_nowPlayingUpdates;
    v5[24] |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v5[16] = self->_artworkUpdates;
  v5[24] |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v5[21] = self->_volumeUpdates;
  v5[24] |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5[17] = self->_keyboardUpdates;
  v5[24] |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_20:
  v5[19] = self->_outputDeviceUpdates;
  v5[24] |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    v5[20] = self->_systemEndpointUpdates;
    v5[24] |= 0x10u;
  }

LABEL_8:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_subscribedPlayerPaths;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) copyWithZone:{zone, v16}];
        [v6 addSubscribedPlayerPaths:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  v5 = *(equalCopy + 24);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 24) & 4) == 0)
    {
      goto LABEL_52;
    }

    v8 = *(equalCopy + 18);
    if (self->_nowPlayingUpdates)
    {
      if ((*(equalCopy + 18) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (*(equalCopy + 18))
    {
      goto LABEL_52;
    }
  }

  else if ((*(equalCopy + 24) & 4) != 0)
  {
    goto LABEL_52;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0)
    {
      goto LABEL_52;
    }

    v9 = *(equalCopy + 16);
    if (self->_artworkUpdates)
    {
      if ((*(equalCopy + 16) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (*(equalCopy + 16))
    {
      goto LABEL_52;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 24) & 0x20) == 0)
    {
      goto LABEL_52;
    }

    v10 = *(equalCopy + 21);
    if (self->_volumeUpdates)
    {
      if ((*(equalCopy + 21) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (*(equalCopy + 21))
    {
      goto LABEL_52;
    }
  }

  else if ((*(equalCopy + 24) & 0x20) != 0)
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0)
    {
      goto LABEL_52;
    }

    v11 = *(equalCopy + 17);
    if (self->_keyboardUpdates)
    {
      if ((*(equalCopy + 17) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (*(equalCopy + 17))
    {
      goto LABEL_52;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 24) & 8) == 0)
    {
      goto LABEL_52;
    }

    v12 = *(equalCopy + 19);
    if (self->_outputDeviceUpdates)
    {
      if ((*(equalCopy + 19) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (*(equalCopy + 19))
    {
      goto LABEL_52;
    }
  }

  else if ((*(equalCopy + 24) & 8) != 0)
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 0x10) == 0)
  {
    if ((*(equalCopy + 24) & 0x10) == 0)
    {
      goto LABEL_14;
    }

LABEL_52:
    v7 = 0;
    goto LABEL_53;
  }

  if ((*(equalCopy + 24) & 0x10) == 0)
  {
    goto LABEL_52;
  }

  v13 = *(equalCopy + 20);
  if (self->_systemEndpointUpdates)
  {
    if ((*(equalCopy + 20) & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (*(equalCopy + 20))
  {
    goto LABEL_52;
  }

LABEL_14:
  subscribedPlayerPaths = self->_subscribedPlayerPaths;
  if (subscribedPlayerPaths | *(equalCopy + 1))
  {
    v7 = [(NSMutableArray *)subscribedPlayerPaths isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_53:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_nowPlayingUpdates;
    if (*&self->_has)
    {
LABEL_3:
      v7 = 2654435761 * self->_artworkUpdates;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v8 = 2654435761 * self->_volumeUpdates;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v8 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v9 = 2654435761 * self->_keyboardUpdates;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v10 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v11 = 0;
    return v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSMutableArray *)self->_subscribedPlayerPaths hash:v3];
  }

LABEL_11:
  v9 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v10 = 2654435761 * self->_outputDeviceUpdates;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v11 = 2654435761 * self->_systemEndpointUpdates;
  return v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSMutableArray *)self->_subscribedPlayerPaths hash:v3];
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 24);
  if ((v6 & 4) != 0)
  {
    self->_nowPlayingUpdates = *(fromCopy + 18);
    *&self->_has |= 4u;
    v6 = *(fromCopy + 24);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*(fromCopy + 24) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_artworkUpdates = *(fromCopy + 16);
  *&self->_has |= 1u;
  v6 = *(fromCopy + 24);
  if ((v6 & 0x20) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_volumeUpdates = *(fromCopy + 21);
  *&self->_has |= 0x20u;
  v6 = *(fromCopy + 24);
  if ((v6 & 2) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_keyboardUpdates = *(fromCopy + 17);
  *&self->_has |= 2u;
  v6 = *(fromCopy + 24);
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_20:
  self->_outputDeviceUpdates = *(fromCopy + 19);
  *&self->_has |= 8u;
  if ((*(fromCopy + 24) & 0x10) != 0)
  {
LABEL_7:
    self->_systemEndpointUpdates = *(fromCopy + 20);
    *&self->_has |= 0x10u;
  }

LABEL_8:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(fromCopy + 1);
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

        [(_MRClientUpdatesConfigurationProtobuf *)self addSubscribedPlayerPaths:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end