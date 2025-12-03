@interface PKProtobufShareableCredentialMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addShareableCredentials:(id)credentials;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufShareableCredentialMessage

- (void)addShareableCredentials:(id)credentials
{
  credentialsCopy = credentials;
  shareableCredentials = self->_shareableCredentials;
  v8 = credentialsCopy;
  if (!shareableCredentials)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_shareableCredentials;
    self->_shareableCredentials = v6;

    credentialsCopy = v8;
    shareableCredentials = self->_shareableCredentials;
  }

  [(NSMutableArray *)shareableCredentials addObject:credentialsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufShareableCredentialMessage;
  v4 = [(PKProtobufShareableCredentialMessage *)&v8 description];
  dictionaryRepresentation = [(PKProtobufShareableCredentialMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v4 forKey:@"version"];

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

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"shareableCredentials"];
  }

  messageCaption = self->_messageCaption;
  if (messageCaption)
  {
    [dictionary setObject:messageCaption forKey:@"messageCaption"];
  }

  dataString = self->_dataString;
  if (dataString)
  {
    [dictionary setObject:dataString forKey:@"dataString"];
  }

  policyIdentifier = self->_policyIdentifier;
  if (policyIdentifier)
  {
    [dictionary setObject:policyIdentifier forKey:@"policyIdentifier"];
  }

  passThumbnailImage = self->_passThumbnailImage;
  if (passThumbnailImage)
  {
    [dictionary setObject:passThumbnailImage forKey:@"passThumbnailImage"];
  }

  if (*&self->_has)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPassInLibrary];
    [dictionary setObject:v16 forKey:@"isPassInLibrary"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[12] = self->_version;
  if ([(PKProtobufShareableCredentialMessage *)self shareableCredentialsCount])
  {
    [toCopy clearShareableCredentials];
    shareableCredentialsCount = [(PKProtobufShareableCredentialMessage *)self shareableCredentialsCount];
    if (shareableCredentialsCount)
    {
      v5 = shareableCredentialsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PKProtobufShareableCredentialMessage *)self shareableCredentialsAtIndex:i];
        [toCopy addShareableCredentials:v7];
      }
    }
  }

  if (self->_messageCaption)
  {
    [toCopy setMessageCaption:?];
  }

  v8 = toCopy;
  if (self->_dataString)
  {
    [toCopy setDataString:?];
    v8 = toCopy;
  }

  if (self->_policyIdentifier)
  {
    [toCopy setPolicyIdentifier:?];
    v8 = toCopy;
  }

  if (self->_passThumbnailImage)
  {
    [toCopy setPassThumbnailImage:?];
    v8 = toCopy;
  }

  if (*&self->_has)
  {
    v8[52] = self->_isPassInLibrary;
    v8[56] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

        v11 = [*(*(&v21 + 1) + 8 * i) copyWithZone:{zone, v21}];
        [v5 addShareableCredentials:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_messageCaption copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(NSString *)self->_dataString copyWithZone:zone];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  v16 = [(NSString *)self->_policyIdentifier copyWithZone:zone];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  v18 = [(NSData *)self->_passThumbnailImage copyWithZone:zone];
  v19 = *(v5 + 24);
  *(v5 + 24) = v18;

  if (*&self->_has)
  {
    *(v5 + 52) = self->_isPassInLibrary;
    *(v5 + 56) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (self->_version != *(equalCopy + 12))
  {
    goto LABEL_15;
  }

  shareableCredentials = self->_shareableCredentials;
  if (shareableCredentials | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)shareableCredentials isEqual:?])
    {
      goto LABEL_15;
    }
  }

  messageCaption = self->_messageCaption;
  if (messageCaption | *(equalCopy + 2))
  {
    if (![(NSString *)messageCaption isEqual:?])
    {
      goto LABEL_15;
    }
  }

  dataString = self->_dataString;
  if (dataString | *(equalCopy + 1))
  {
    if (![(NSString *)dataString isEqual:?])
    {
      goto LABEL_15;
    }
  }

  policyIdentifier = self->_policyIdentifier;
  if (policyIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)policyIdentifier isEqual:?])
    {
      goto LABEL_15;
    }
  }

  passThumbnailImage = self->_passThumbnailImage;
  if (passThumbnailImage | *(equalCopy + 3))
  {
    if (![(NSData *)passThumbnailImage isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v10 = (*(equalCopy + 56) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0)
    {
LABEL_15:
      v10 = 0;
      goto LABEL_16;
    }

    if (self->_isPassInLibrary)
    {
      if ((*(equalCopy + 52) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (*(equalCopy + 52))
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

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  self->_version = *(fromCopy + 12);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 5);
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

  if (*(fromCopy + 2))
  {
    [(PKProtobufShareableCredentialMessage *)self setMessageCaption:?];
  }

  if (*(fromCopy + 1))
  {
    [(PKProtobufShareableCredentialMessage *)self setDataString:?];
  }

  if (*(fromCopy + 4))
  {
    [(PKProtobufShareableCredentialMessage *)self setPolicyIdentifier:?];
  }

  if (*(fromCopy + 3))
  {
    [(PKProtobufShareableCredentialMessage *)self setPassThumbnailImage:?];
  }

  if (*(fromCopy + 56))
  {
    self->_isPassInLibrary = *(fromCopy + 52);
    *&self->_has |= 1u;
  }
}

@end