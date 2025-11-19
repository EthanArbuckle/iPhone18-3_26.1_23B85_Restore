@interface _MRGroupSessionJoinRequestProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addOobKeys:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRGroupSessionJoinRequestProtobuf

- (void)addOobKeys:(id)a3
{
  v4 = a3;
  oobKeys = self->_oobKeys;
  v8 = v4;
  if (!oobKeys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_oobKeys;
    self->_oobKeys = v6;

    v4 = v8;
    oobKeys = self->_oobKeys;
  }

  [(NSMutableArray *)oobKeys addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGroupSessionJoinRequestProtobuf;
  v4 = [(_MRGroupSessionJoinRequestProtobuf *)&v8 description];
  v5 = [(_MRGroupSessionJoinRequestProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  identity = self->_identity;
  if (identity)
  {
    v5 = [(_MRUserIdentityProtobuf *)identity dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"identity"];
  }

  oobKeys = self->_oobKeys;
  if (oobKeys)
  {
    [v3 setObject:oobKeys forKey:@"oobKeys"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_identity)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_oobKeys;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_identity)
  {
    [v8 setIdentity:?];
  }

  if ([(_MRGroupSessionJoinRequestProtobuf *)self oobKeysCount])
  {
    [v8 clearOobKeys];
    v4 = [(_MRGroupSessionJoinRequestProtobuf *)self oobKeysCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(_MRGroupSessionJoinRequestProtobuf *)self oobKeysAtIndex:i];
        [v8 addOobKeys:v7];
      }
    }
  }

  if (self->_identifier)
  {
    [v8 setIdentifier:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRUserIdentityProtobuf *)self->_identity copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_oobKeys;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * v12) copyWithZone:{a3, v18}];
        [v5 addOobKeys:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [(NSString *)self->_identifier copyWithZone:a3];
  v15 = v5[1];
  v5[1] = v14;

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((identity = self->_identity, !(identity | v4[2])) || -[_MRUserIdentityProtobuf isEqual:](identity, "isEqual:")) && ((oobKeys = self->_oobKeys, !(oobKeys | v4[3])) || -[NSMutableArray isEqual:](oobKeys, "isEqual:")))
  {
    identifier = self->_identifier;
    if (identifier | v4[1])
    {
      v8 = [(NSString *)identifier isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(_MRUserIdentityProtobuf *)self->_identity hash];
  v4 = [(NSMutableArray *)self->_oobKeys hash]^ v3;
  return v4 ^ [(NSString *)self->_identifier hash];
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  identity = self->_identity;
  v6 = *(v4 + 2);
  if (identity)
  {
    if (v6)
    {
      [(_MRUserIdentityProtobuf *)identity mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(_MRGroupSessionJoinRequestProtobuf *)self setIdentity:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v4 + 3);
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

        [(_MRGroupSessionJoinRequestProtobuf *)self addOobKeys:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  if (*(v4 + 1))
  {
    [(_MRGroupSessionJoinRequestProtobuf *)self setIdentifier:?];
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end