@interface PKProtobufShareableCredentialMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addShareableCredentials:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufShareableCredentialMessage

- (void)addShareableCredentials:(id)a3
{
  v4 = a3;
  shareableCredentials = self->_shareableCredentials;
  v8 = v4;
  if (!shareableCredentials)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_shareableCredentials;
    self->_shareableCredentials = v6;

    v4 = v8;
    shareableCredentials = self->_shareableCredentials;
  }

  [(NSMutableArray *)shareableCredentials addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufShareableCredentialMessage;
  v4 = [(PKProtobufShareableCredentialMessage *)&v8 description];
  v5 = [(PKProtobufShareableCredentialMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [v3 setObject:v4 forKey:@"version"];

  if ([(NSMutableArray *)self->_shareableCredentials count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_shareableCredentials, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = self->_shareableCredentials;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"shareableCredentials"];
  }

  messageCaption = self->_messageCaption;
  if (messageCaption)
  {
    [v3 setObject:messageCaption forKey:@"messageCaption"];
  }

  dataString = self->_dataString;
  if (dataString)
  {
    [v3 setObject:dataString forKey:@"dataString"];
  }

  policyIdentifier = self->_policyIdentifier;
  if (policyIdentifier)
  {
    [v3 setObject:policyIdentifier forKey:@"policyIdentifier"];
  }

  passThumbnailImage = self->_passThumbnailImage;
  if (passThumbnailImage)
  {
    [v3 setObject:passThumbnailImage forKey:@"passThumbnailImage"];
  }

  if (*&self->_has)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPassInLibrary];
    [v3 setObject:v16 forKey:@"isPassInLibrary"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  PBDataWriterWriteUint32Field();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_shareableCredentials;
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

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_messageCaption)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_dataString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_policyIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_passThumbnailImage)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  v9[12] = self->_version;
  if ([(PKProtobufShareableCredentialMessage *)self shareableCredentialsCount])
  {
    [v9 clearShareableCredentials];
    v4 = [(PKProtobufShareableCredentialMessage *)self shareableCredentialsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PKProtobufShareableCredentialMessage *)self shareableCredentialsAtIndex:i];
        [v9 addShareableCredentials:v7];
      }
    }
  }

  if (self->_messageCaption)
  {
    [v9 setMessageCaption:?];
  }

  v8 = v9;
  if (self->_dataString)
  {
    [v9 setDataString:?];
    v8 = v9;
  }

  if (self->_policyIdentifier)
  {
    [v9 setPolicyIdentifier:?];
    v8 = v9;
  }

  if (self->_passThumbnailImage)
  {
    [v9 setPassThumbnailImage:?];
    v8 = v9;
  }

  if (*&self->_has)
  {
    v8[52] = self->_isPassInLibrary;
    v8[56] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 48) = self->_version;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_shareableCredentials;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v21 + 1) + 8 * i) copyWithZone:{a3, v21}];
        [v5 addShareableCredentials:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_messageCaption copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(NSString *)self->_dataString copyWithZone:a3];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  v16 = [(NSString *)self->_policyIdentifier copyWithZone:a3];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  v18 = [(NSData *)self->_passThumbnailImage copyWithZone:a3];
  v19 = *(v5 + 24);
  *(v5 + 24) = v18;

  if (*&self->_has)
  {
    *(v5 + 52) = self->_isPassInLibrary;
    *(v5 + 56) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (self->_version != *(v4 + 12))
  {
    goto LABEL_15;
  }

  shareableCredentials = self->_shareableCredentials;
  if (shareableCredentials | *(v4 + 5))
  {
    if (![(NSMutableArray *)shareableCredentials isEqual:?])
    {
      goto LABEL_15;
    }
  }

  messageCaption = self->_messageCaption;
  if (messageCaption | *(v4 + 2))
  {
    if (![(NSString *)messageCaption isEqual:?])
    {
      goto LABEL_15;
    }
  }

  dataString = self->_dataString;
  if (dataString | *(v4 + 1))
  {
    if (![(NSString *)dataString isEqual:?])
    {
      goto LABEL_15;
    }
  }

  policyIdentifier = self->_policyIdentifier;
  if (policyIdentifier | *(v4 + 4))
  {
    if (![(NSString *)policyIdentifier isEqual:?])
    {
      goto LABEL_15;
    }
  }

  passThumbnailImage = self->_passThumbnailImage;
  if (passThumbnailImage | *(v4 + 3))
  {
    if (![(NSData *)passThumbnailImage isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v10 = (*(v4 + 56) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0)
    {
LABEL_15:
      v10 = 0;
      goto LABEL_16;
    }

    if (self->_isPassInLibrary)
    {
      if ((*(v4 + 52) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (*(v4 + 52))
    {
      goto LABEL_15;
    }

    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  version = self->_version;
  v4 = [(NSMutableArray *)self->_shareableCredentials hash];
  v5 = [(NSString *)self->_messageCaption hash];
  v6 = [(NSString *)self->_dataString hash];
  v7 = [(NSString *)self->_policyIdentifier hash];
  v8 = [(NSData *)self->_passThumbnailImage hash];
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_isPassInLibrary;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v5 ^ v6 ^ v7 ^ (2654435761 * version) ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_version = *(v4 + 12);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(v4 + 5);
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

        [(PKProtobufShareableCredentialMessage *)self addShareableCredentials:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(v4 + 2))
  {
    [(PKProtobufShareableCredentialMessage *)self setMessageCaption:?];
  }

  if (*(v4 + 1))
  {
    [(PKProtobufShareableCredentialMessage *)self setDataString:?];
  }

  if (*(v4 + 4))
  {
    [(PKProtobufShareableCredentialMessage *)self setPolicyIdentifier:?];
  }

  if (*(v4 + 3))
  {
    [(PKProtobufShareableCredentialMessage *)self setPassThumbnailImage:?];
  }

  if (*(v4 + 56))
  {
    self->_isPassInLibrary = *(v4 + 52);
    *&self->_has |= 1u;
  }
}

@end