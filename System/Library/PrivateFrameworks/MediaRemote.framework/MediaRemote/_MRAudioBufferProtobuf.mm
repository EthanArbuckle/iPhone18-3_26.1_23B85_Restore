@interface _MRAudioBufferProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPacketDescriptions:(id)descriptions;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPacketCapacity:(BOOL)capacity;
- (void)setHasPacketCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation _MRAudioBufferProtobuf

- (void)setHasPacketCapacity:(BOOL)capacity
{
  if (capacity)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasPacketCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addPacketDescriptions:(id)descriptions
{
  descriptionsCopy = descriptions;
  packetDescriptions = self->_packetDescriptions;
  v8 = descriptionsCopy;
  if (!packetDescriptions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_packetDescriptions;
    self->_packetDescriptions = v6;

    descriptionsCopy = v8;
    packetDescriptions = self->_packetDescriptions;
  }

  [(NSMutableArray *)packetDescriptions addObject:descriptionsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRAudioBufferProtobuf;
  v4 = [(_MRAudioBufferProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRAudioBufferProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  formatSettings = self->_formatSettings;
  if (formatSettings)
  {
    dictionaryRepresentation = [(_MRAudioFormatSettingsProtobuf *)formatSettings dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"formatSettings"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_packetCapacity];
    [dictionary setObject:v18 forKey:@"packetCapacity"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_maximumPacketSize];
  [dictionary setObject:v19 forKey:@"maximumPacketSize"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_packetCount];
    [dictionary setObject:v7 forKey:@"packetCount"];
  }

LABEL_7:
  contents = self->_contents;
  if (contents)
  {
    [dictionary setObject:contents forKey:@"contents"];
  }

  if ([(NSMutableArray *)self->_packetDescriptions count])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_packetDescriptions, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = self->_packetDescriptions;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation2 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation2];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    [dictionary setObject:v9 forKey:@"packetDescriptions"];
  }

  v16 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_formatSettings)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    packetCapacity = self->_packetCapacity;
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  maximumPacketSize = self->_maximumPacketSize;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    packetCount = self->_packetCount;
    PBDataWriterWriteInt64Field();
  }

LABEL_7:
  if (self->_contents)
  {
    PBDataWriterWriteDataField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_packetDescriptions;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_formatSettings)
  {
    [toCopy setFormatSettings:?];
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_packetCapacity;
    *(toCopy + 56) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 1) = self->_maximumPacketSize;
  *(toCopy + 56) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    *(toCopy + 3) = self->_packetCount;
    *(toCopy + 56) |= 4u;
  }

LABEL_7:
  if (self->_contents)
  {
    [v10 setContents:?];
  }

  if ([(_MRAudioBufferProtobuf *)self packetDescriptionsCount])
  {
    [v10 clearPacketDescriptions];
    packetDescriptionsCount = [(_MRAudioBufferProtobuf *)self packetDescriptionsCount];
    if (packetDescriptionsCount)
    {
      v7 = packetDescriptionsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(_MRAudioBufferProtobuf *)self packetDescriptionsAtIndex:i];
        [v10 addPacketDescriptions:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRAudioFormatSettingsProtobuf *)self->_formatSettings copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_packetCapacity;
    *(v5 + 56) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_maximumPacketSize;
  *(v5 + 56) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 24) = self->_packetCount;
    *(v5 + 56) |= 4u;
  }

LABEL_5:
  v9 = [(NSData *)self->_contents copyWithZone:zone];
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_packetDescriptions;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{zone, v19}];
        [v5 addPacketDescriptions:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  formatSettings = self->_formatSettings;
  if (formatSettings | *(equalCopy + 5))
  {
    if (![(_MRAudioFormatSettingsProtobuf *)formatSettings isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v6 = *(equalCopy + 56);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_packetCapacity != *(equalCopy + 2))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_maximumPacketSize != *(equalCopy + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_packetCount != *(equalCopy + 3))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
    goto LABEL_23;
  }

  contents = self->_contents;
  if (contents | *(equalCopy + 4) && ![(NSData *)contents isEqual:?])
  {
    goto LABEL_23;
  }

  packetDescriptions = self->_packetDescriptions;
  if (packetDescriptions | *(equalCopy + 6))
  {
    v9 = [(NSMutableArray *)packetDescriptions isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_24:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(_MRAudioFormatSettingsProtobuf *)self->_formatSettings hash];
  if ((*&self->_has & 2) == 0)
  {
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v4 = 2654435761 * self->_packetCapacity;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_maximumPacketSize;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_packetCount;
LABEL_8:
  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(NSData *)self->_contents hash];
  return v7 ^ [(NSMutableArray *)self->_packetDescriptions hash];
}

- (void)mergeFrom:(id)from
{
  v19 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  formatSettings = self->_formatSettings;
  v6 = *(fromCopy + 5);
  if (formatSettings)
  {
    if (v6)
    {
      [(_MRAudioFormatSettingsProtobuf *)formatSettings mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(_MRAudioBufferProtobuf *)self setFormatSettings:?];
  }

  v7 = *(fromCopy + 56);
  if ((v7 & 2) != 0)
  {
    self->_packetCapacity = *(fromCopy + 2);
    *&self->_has |= 2u;
    v7 = *(fromCopy + 56);
    if ((v7 & 1) == 0)
    {
LABEL_8:
      if ((v7 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*(fromCopy + 56) & 1) == 0)
  {
    goto LABEL_8;
  }

  self->_maximumPacketSize = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 56) & 4) != 0)
  {
LABEL_9:
    self->_packetCount = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

LABEL_10:
  if (*(fromCopy + 4))
  {
    [(_MRAudioBufferProtobuf *)self setContents:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(fromCopy + 6);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(_MRAudioBufferProtobuf *)self addPacketDescriptions:*(*(&v14 + 1) + 8 * i), v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end