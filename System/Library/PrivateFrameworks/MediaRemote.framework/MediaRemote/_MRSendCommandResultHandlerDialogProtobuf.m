@interface _MRSendCommandResultHandlerDialogProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addActions:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRSendCommandResultHandlerDialogProtobuf

- (void)addActions:(id)a3
{
  v4 = a3;
  actions = self->_actions;
  v8 = v4;
  if (!actions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_actions;
    self->_actions = v6;

    v4 = v8;
    actions = self->_actions;
  }

  [(NSMutableArray *)actions addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSendCommandResultHandlerDialogProtobuf;
  v4 = [(_MRSendCommandResultHandlerDialogProtobuf *)&v8 description];
  v5 = [(_MRSendCommandResultHandlerDialogProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_actions count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_actions, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_actions;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"actions"];
  }

  localizedTitle = self->_localizedTitle;
  if (localizedTitle)
  {
    [v3 setObject:localizedTitle forKey:@"localizedTitle"];
  }

  localizedMessage = self->_localizedMessage;
  if (localizedMessage)
  {
    [v3 setObject:localizedMessage forKey:@"localizedMessage"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_actions;
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
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_localizedTitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localizedMessage)
  {
    PBDataWriterWriteStringField();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if ([(_MRSendCommandResultHandlerDialogProtobuf *)self actionsCount])
  {
    [v9 clearActions];
    v4 = [(_MRSendCommandResultHandlerDialogProtobuf *)self actionsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(_MRSendCommandResultHandlerDialogProtobuf *)self actionsAtIndex:i];
        [v9 addActions:v7];
      }
    }
  }

  if (self->_localizedTitle)
  {
    [v9 setLocalizedTitle:?];
  }

  v8 = v9;
  if (self->_localizedMessage)
  {
    [v9 setLocalizedMessage:?];
    v8 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_actions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * v10) copyWithZone:{a3, v18}];
        [v5 addActions:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_localizedTitle copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSString *)self->_localizedMessage copyWithZone:a3];
  v15 = v5[2];
  v5[2] = v14;

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((actions = self->_actions, !(actions | v4[1])) || -[NSMutableArray isEqual:](actions, "isEqual:")) && ((localizedTitle = self->_localizedTitle, !(localizedTitle | v4[3])) || -[NSString isEqual:](localizedTitle, "isEqual:")))
  {
    localizedMessage = self->_localizedMessage;
    if (localizedMessage | v4[2])
    {
      v8 = [(NSString *)localizedMessage isEqual:?];
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
  v3 = [(NSMutableArray *)self->_actions hash];
  v4 = [(NSString *)self->_localizedTitle hash]^ v3;
  return v4 ^ [(NSString *)self->_localizedMessage hash];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4[1];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(_MRSendCommandResultHandlerDialogProtobuf *)self addActions:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (v4[3])
  {
    [(_MRSendCommandResultHandlerDialogProtobuf *)self setLocalizedTitle:?];
  }

  if (v4[2])
  {
    [(_MRSendCommandResultHandlerDialogProtobuf *)self setLocalizedMessage:?];
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end