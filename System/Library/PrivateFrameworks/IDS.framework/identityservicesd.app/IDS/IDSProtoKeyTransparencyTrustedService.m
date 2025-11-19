@interface IDSProtoKeyTransparencyTrustedService
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)keyIndexAsString:(int)a3;
- (int)StringAsKeyIndex:(id)a3;
- (int)keyIndex;
- (unint64_t)hash;
- (void)addUris:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSProtoKeyTransparencyTrustedService

- (void)addUris:(id)a3
{
  v4 = a3;
  uris = self->_uris;
  v8 = v4;
  if (!uris)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_uris;
    self->_uris = v6;

    v4 = v8;
    uris = self->_uris;
  }

  [(NSMutableArray *)uris addObject:v4];
}

- (int)keyIndex
{
  if (*&self->_has)
  {
    return self->_keyIndex;
  }

  else
  {
    return 0;
  }
}

- (id)keyIndexAsString:(int)a3
{
  if (a3 >= 4)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = *(&off_100BE19D0 + a3);
  }

  return v4;
}

- (int)StringAsKeyIndex:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"iMessage"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"FaceTime"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Multiplex"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = IDSProtoKeyTransparencyTrustedService;
  v3 = [(IDSProtoKeyTransparencyTrustedService *)&v7 description];
  v4 = [(IDSProtoKeyTransparencyTrustedService *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  serviceIdentifier = self->_serviceIdentifier;
  if (serviceIdentifier)
  {
    [v3 setObject:serviceIdentifier forKey:@"service_identifier"];
  }

  uris = self->_uris;
  if (uris)
  {
    [v4 setObject:uris forKey:@"uris"];
  }

  ktLoggableData = self->_ktLoggableData;
  if (ktLoggableData)
  {
    v8 = [(IDSProtoKeyTransparencyLoggableData *)ktLoggableData dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"kt_loggable_data"];
  }

  deviceSignature = self->_deviceSignature;
  if (deviceSignature)
  {
    [v4 setObject:deviceSignature forKey:@"device_signature"];
  }

  if (*&self->_has)
  {
    keyIndex = self->_keyIndex;
    if (keyIndex >= 4)
    {
      v11 = [NSString stringWithFormat:@"(unknown: %i)", self->_keyIndex];
    }

    else
    {
      v11 = *(&off_100BE19D0 + keyIndex);
    }

    [v4 setObject:v11 forKey:@"key_index"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_serviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_uris;
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

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_ktLoggableData)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_deviceSignature)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if (self->_serviceIdentifier)
  {
    [v9 setServiceIdentifier:?];
  }

  if ([(IDSProtoKeyTransparencyTrustedService *)self urisCount])
  {
    [v9 clearUris];
    v4 = [(IDSProtoKeyTransparencyTrustedService *)self urisCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(IDSProtoKeyTransparencyTrustedService *)self urisAtIndex:i];
        [v9 addUris:v7];
      }
    }
  }

  if (self->_ktLoggableData)
  {
    [v9 setKtLoggableData:?];
  }

  v8 = v9;
  if (self->_deviceSignature)
  {
    [v9 setDeviceSignature:?];
    v8 = v9;
  }

  if (*&self->_has)
  {
    v8[4] = self->_keyIndex;
    *(v8 + 48) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_serviceIdentifier copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_uris;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v19 + 1) + 8 * v12) copyWithZone:{a3, v19}];
        [v5 addUris:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v14 = [(IDSProtoKeyTransparencyLoggableData *)self->_ktLoggableData copyWithZone:a3];
  v15 = v5[3];
  v5[3] = v14;

  v16 = [(NSData *)self->_deviceSignature copyWithZone:a3];
  v17 = v5[1];
  v5[1] = v16;

  if (*&self->_has)
  {
    *(v5 + 4) = self->_keyIndex;
    *(v5 + 48) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  serviceIdentifier = self->_serviceIdentifier;
  if (serviceIdentifier | *(v4 + 4))
  {
    if (![(NSString *)serviceIdentifier isEqual:?])
    {
      goto LABEL_14;
    }
  }

  uris = self->_uris;
  if (uris | *(v4 + 5))
  {
    if (![(NSMutableArray *)uris isEqual:?])
    {
      goto LABEL_14;
    }
  }

  ktLoggableData = self->_ktLoggableData;
  if (ktLoggableData | *(v4 + 3))
  {
    if (![(IDSProtoKeyTransparencyLoggableData *)ktLoggableData isEqual:?])
    {
      goto LABEL_14;
    }
  }

  deviceSignature = self->_deviceSignature;
  if (deviceSignature | *(v4 + 1))
  {
    if (![(NSData *)deviceSignature isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v9 = (*(v4 + 48) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) != 0 && self->_keyIndex == *(v4 + 4))
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
  v3 = [(NSString *)self->_serviceIdentifier hash];
  v4 = [(NSMutableArray *)self->_uris hash];
  v5 = [(IDSProtoKeyTransparencyLoggableData *)self->_ktLoggableData hash];
  v6 = [(NSData *)self->_deviceSignature hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_keyIndex;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 4))
  {
    [(IDSProtoKeyTransparencyTrustedService *)self setServiceIdentifier:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(v4 + 5);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(IDSProtoKeyTransparencyTrustedService *)self addUris:*(*(&v12 + 1) + 8 * i), v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  ktLoggableData = self->_ktLoggableData;
  v11 = *(v4 + 3);
  if (ktLoggableData)
  {
    if (v11)
    {
      [(IDSProtoKeyTransparencyLoggableData *)ktLoggableData mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(IDSProtoKeyTransparencyTrustedService *)self setKtLoggableData:?];
  }

  if (*(v4 + 1))
  {
    [(IDSProtoKeyTransparencyTrustedService *)self setDeviceSignature:?];
  }

  if (*(v4 + 48))
  {
    self->_keyIndex = *(v4 + 4);
    *&self->_has |= 1u;
  }
}

@end