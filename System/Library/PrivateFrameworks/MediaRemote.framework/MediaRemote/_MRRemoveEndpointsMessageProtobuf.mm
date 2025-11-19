@interface _MRRemoveEndpointsMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addEndpointUIDs:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRRemoveEndpointsMessageProtobuf

- (void)addEndpointUIDs:(id)a3
{
  v4 = a3;
  endpointUIDs = self->_endpointUIDs;
  v8 = v4;
  if (!endpointUIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_endpointUIDs;
    self->_endpointUIDs = v6;

    v4 = v8;
    endpointUIDs = self->_endpointUIDs;
  }

  [(NSMutableArray *)endpointUIDs addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRRemoveEndpointsMessageProtobuf;
  v4 = [(_MRRemoveEndpointsMessageProtobuf *)&v8 description];
  v5 = [(_MRRemoveEndpointsMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  endpointUIDs = self->_endpointUIDs;
  if (endpointUIDs)
  {
    [v3 setObject:endpointUIDs forKey:@"endpointUIDs"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_endpointUIDs;
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

  v11 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if ([(_MRRemoveEndpointsMessageProtobuf *)self endpointUIDsCount])
  {
    [v8 clearEndpointUIDs];
    v4 = [(_MRRemoveEndpointsMessageProtobuf *)self endpointUIDsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(_MRRemoveEndpointsMessageProtobuf *)self endpointUIDsAtIndex:i];
        [v8 addEndpointUIDs:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_endpointUIDs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:{a3, v14}];
        [v5 addEndpointUIDs:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    endpointUIDs = self->_endpointUIDs;
    if (endpointUIDs | v4[1])
    {
      v6 = [(NSMutableArray *)endpointUIDs isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a3 + 1);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(_MRRemoveEndpointsMessageProtobuf *)self addEndpointUIDs:*(*(&v10 + 1) + 8 * v8++), v10];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end