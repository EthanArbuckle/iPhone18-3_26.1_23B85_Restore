@interface PKProtobufPaymentDeviceRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addKnownManifestHashes:(id)hashes;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasShouldAdvertise:(BOOL)advertise;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufPaymentDeviceRequest

- (void)setHasShouldAdvertise:(BOOL)advertise
{
  if (advertise)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addKnownManifestHashes:(id)hashes
{
  hashesCopy = hashes;
  knownManifestHashes = self->_knownManifestHashes;
  v8 = hashesCopy;
  if (!knownManifestHashes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_knownManifestHashes;
    self->_knownManifestHashes = v6;

    hashesCopy = v8;
    knownManifestHashes = self->_knownManifestHashes;
  }

  [(NSMutableArray *)knownManifestHashes addObject:hashesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPaymentDeviceRequest;
  v4 = [(PKProtobufPaymentDeviceRequest *)&v8 description];
  dictionaryRepresentation = [(PKProtobufPaymentDeviceRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  deviceName = self->_deviceName;
  if (deviceName)
  {
    [dictionary setObject:deviceName forKey:@"deviceName"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldAdvertise];
    [v4 setObject:v6 forKey:@"shouldAdvertise"];
  }

  knownManifestHashes = self->_knownManifestHashes;
  if (knownManifestHashes)
  {
    [v4 setObject:knownManifestHashes forKey:@"knownManifestHashes"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_protocolVersion];
    [v4 setObject:v8 forKey:@"protocolVersion"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_knownManifestHashes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteDataField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_deviceName)
  {
    [toCopy setDeviceName:?];
    toCopy = v9;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[28] = self->_shouldAdvertise;
    toCopy[32] |= 2u;
  }

  if ([(PKProtobufPaymentDeviceRequest *)self knownManifestHashesCount])
  {
    [v9 clearKnownManifestHashes];
    knownManifestHashesCount = [(PKProtobufPaymentDeviceRequest *)self knownManifestHashesCount];
    if (knownManifestHashesCount)
    {
      v6 = knownManifestHashesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PKProtobufPaymentDeviceRequest *)self knownManifestHashesAtIndex:i];
        [v9 addKnownManifestHashes:v8];
      }
    }
  }

  if (*&self->_has)
  {
    *(v9 + 6) = self->_protocolVersion;
    v9[32] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_deviceName copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 28) = self->_shouldAdvertise;
    *(v5 + 32) |= 2u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_knownManifestHashes;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) copyWithZone:{zone, v15}];
        [v5 addKnownManifestHashes:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if (*&self->_has)
  {
    *(v5 + 24) = self->_protocolVersion;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  deviceName = self->_deviceName;
  if (deviceName | *(equalCopy + 1))
  {
    if (![(NSString *)deviceName isEqual:?])
    {
      goto LABEL_14;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 32);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0)
    {
      goto LABEL_14;
    }

    if (self->_shouldAdvertise)
    {
      if ((*(equalCopy + 28) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (*(equalCopy + 28))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_14;
  }

  knownManifestHashes = self->_knownManifestHashes;
  if (knownManifestHashes | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)knownManifestHashes isEqual:?])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v7 = *(equalCopy + 32);
  }

  v9 = (v7 & 1) == 0;
  if (has)
  {
    if ((v7 & 1) != 0 && self->_protocolVersion == *(equalCopy + 6))
    {
      v9 = 1;
      goto LABEL_15;
    }

LABEL_14:
    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_deviceName hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_shouldAdvertise;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSMutableArray *)self->_knownManifestHashes hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_protocolVersion;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(PKProtobufPaymentDeviceRequest *)self setDeviceName:?];
  }

  if ((*(fromCopy + 32) & 2) != 0)
  {
    self->_shouldAdvertise = *(fromCopy + 28);
    *&self->_has |= 2u;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 2);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PKProtobufPaymentDeviceRequest *)self addKnownManifestHashes:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 32))
  {
    self->_protocolVersion = *(fromCopy + 6);
    *&self->_has |= 1u;
  }
}

@end