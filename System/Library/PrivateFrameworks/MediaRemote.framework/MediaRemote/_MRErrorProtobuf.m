@interface _MRErrorProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addUnderlyingErrors:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRErrorProtobuf

- (void)addUnderlyingErrors:(id)a3
{
  v4 = a3;
  underlyingErrors = self->_underlyingErrors;
  v8 = v4;
  if (!underlyingErrors)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_underlyingErrors;
    self->_underlyingErrors = v6;

    v4 = v8;
    underlyingErrors = self->_underlyingErrors;
  }

  [(NSMutableArray *)underlyingErrors addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRErrorProtobuf;
  v4 = [(_MRErrorProtobuf *)&v8 description];
  v5 = [(_MRErrorProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  domain = self->_domain;
  if (domain)
  {
    [v3 setObject:domain forKey:@"domain"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_code];
    [v4 setObject:v6 forKey:@"code"];
  }

  localizedDescription = self->_localizedDescription;
  if (localizedDescription)
  {
    [v4 setObject:localizedDescription forKey:@"localizedDescription"];
  }

  localizedFailureReason = self->_localizedFailureReason;
  if (localizedFailureReason)
  {
    [v4 setObject:localizedFailureReason forKey:@"localizedFailureReason"];
  }

  if ([(NSMutableArray *)self->_underlyingErrors count])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_underlyingErrors, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = self->_underlyingErrors;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:v15];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    [v4 setObject:v9 forKey:@"underlyingErrors"];
  }

  debugMessage = self->_debugMessage;
  if (debugMessage)
  {
    [v4 setObject:debugMessage forKey:@"debugMessage"];
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    v18 = [(_MRDictionaryProtobuf *)userInfo dictionaryRepresentation];
    [v4 setObject:v18 forKey:@"userInfo"];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_domain)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    code = self->_code;
    PBDataWriterWriteInt32Field();
  }

  if (self->_localizedDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localizedFailureReason)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_underlyingErrors;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (self->_debugMessage)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_domain)
  {
    [v4 setDomain:?];
    v4 = v10;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_code;
    *(v4 + 64) |= 1u;
  }

  if (self->_localizedDescription)
  {
    [v10 setLocalizedDescription:?];
  }

  if (self->_localizedFailureReason)
  {
    [v10 setLocalizedFailureReason:?];
  }

  if ([(_MRErrorProtobuf *)self underlyingErrorsCount])
  {
    [v10 clearUnderlyingErrors];
    v5 = [(_MRErrorProtobuf *)self underlyingErrorsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(_MRErrorProtobuf *)self underlyingErrorsAtIndex:i];
        [v10 addUnderlyingErrors:v8];
      }
    }
  }

  if (self->_debugMessage)
  {
    [v10 setDebugMessage:?];
  }

  v9 = v10;
  if (self->_userInfo)
  {
    [v10 setUserInfo:?];
    v9 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_domain copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_code;
    *(v5 + 64) |= 1u;
  }

  v8 = [(NSString *)self->_localizedDescription copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_localizedFailureReason copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = self->_underlyingErrors;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v24 + 1) + 8 * v16) copyWithZone:{a3, v24}];
        [v5 addUnderlyingErrors:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v18 = [(NSString *)self->_debugMessage copyWithZone:a3];
  v19 = *(v5 + 16);
  *(v5 + 16) = v18;

  v20 = [(_MRDictionaryProtobuf *)self->_userInfo copyWithZone:a3];
  v21 = *(v5 + 56);
  *(v5 + 56) = v20;

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  domain = self->_domain;
  if (domain | *(v4 + 3))
  {
    if (![(NSString *)domain isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v6 = *(v4 + 64);
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_code != *(v4 + 2))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  localizedDescription = self->_localizedDescription;
  if (localizedDescription | *(v4 + 4) && ![(NSString *)localizedDescription isEqual:?])
  {
    goto LABEL_19;
  }

  localizedFailureReason = self->_localizedFailureReason;
  if (localizedFailureReason | *(v4 + 5))
  {
    if (![(NSString *)localizedFailureReason isEqual:?])
    {
      goto LABEL_19;
    }
  }

  underlyingErrors = self->_underlyingErrors;
  if (underlyingErrors | *(v4 + 6))
  {
    if (![(NSMutableArray *)underlyingErrors isEqual:?])
    {
      goto LABEL_19;
    }
  }

  debugMessage = self->_debugMessage;
  if (debugMessage | *(v4 + 2))
  {
    if (![(NSString *)debugMessage isEqual:?])
    {
      goto LABEL_19;
    }
  }

  userInfo = self->_userInfo;
  if (userInfo | *(v4 + 7))
  {
    v12 = [(_MRDictionaryProtobuf *)userInfo isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_20:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_code;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSString *)self->_localizedDescription hash];
  v7 = v5 ^ v6 ^ [(NSString *)self->_localizedFailureReason hash];
  v8 = [(NSMutableArray *)self->_underlyingErrors hash];
  v9 = v8 ^ [(NSString *)self->_debugMessage hash];
  return v7 ^ v9 ^ [(_MRDictionaryProtobuf *)self->_userInfo hash];
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 3))
  {
    [(_MRErrorProtobuf *)self setDomain:?];
  }

  if (*(v4 + 64))
  {
    self->_code = *(v4 + 2);
    *&self->_has |= 1u;
  }

  if (*(v4 + 4))
  {
    [(_MRErrorProtobuf *)self setLocalizedDescription:?];
  }

  if (*(v4 + 5))
  {
    [(_MRErrorProtobuf *)self setLocalizedFailureReason:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(v4 + 6);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(_MRErrorProtobuf *)self addUnderlyingErrors:*(*(&v13 + 1) + 8 * i), v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (*(v4 + 2))
  {
    [(_MRErrorProtobuf *)self setDebugMessage:?];
  }

  userInfo = self->_userInfo;
  v11 = *(v4 + 7);
  if (userInfo)
  {
    if (v11)
    {
      [(_MRDictionaryProtobuf *)userInfo mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(_MRErrorProtobuf *)self setUserInfo:?];
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end