@interface _MPCProtoTracklist
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)addAccountInfo:(uint64_t)a1;
- (uint64_t)addContainer:(uint64_t)a1;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _MPCProtoTracklist

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_accountInfos hash];
  v4 = [(NSMutableArray *)self->_containers hash];
  v5 = [(_MPCProtoTracklistIndexPath *)self->_startingItemIndexPath hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_shuffleMode;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  accountInfos = self->_accountInfos;
  if (accountInfos | *(v4 + 1))
  {
    if (![(NSMutableArray *)accountInfos isEqual:?])
    {
      goto LABEL_12;
    }
  }

  containers = self->_containers;
  if (containers | *(v4 + 2))
  {
    if (![(NSMutableArray *)containers isEqual:?])
    {
      goto LABEL_12;
    }
  }

  startingItemIndexPath = self->_startingItemIndexPath;
  if (startingItemIndexPath | *(v4 + 4))
  {
    if (![(_MPCProtoTracklistIndexPath *)startingItemIndexPath isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) != 0 && self->_shuffleMode == *(v4 + 6))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = self->_accountInfos;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v25 + 1) + 8 * v10) copyWithZone:a3];
        [(_MPCProtoTracklist *)v5 addAccountInfo:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = self->_containers;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v21 + 1) + 8 * v16) copyWithZone:{a3, v21}];
        [(_MPCProtoTracklist *)v5 addContainer:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }

  v18 = [(_MPCProtoTracklistIndexPath *)self->_startingItemIndexPath copyWithZone:a3];
  v19 = *(v5 + 32);
  *(v5 + 32) = v18;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_shuffleMode;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (uint64_t)addAccountInfo:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 8);
      *(a1 + 8) = v6;

      v5 = *(a1 + 8);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)addContainer:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 16);
      *(a1 + 16) = v6;

      v5 = *(a1 + 16);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)writeTo:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_accountInfos;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_containers;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  if (self->_startingItemIndexPath)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        return [a3 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v25) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v25 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v25 & 0x7F) << v6;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) > 2)
      {
        if (v14 == 3)
        {
          v15 = objc_alloc_init(_MPCProtoTracklistIndexPath);
          objc_storeStrong(&self->_startingItemIndexPath, v15);
          v25 = 0;
          v26 = 0;
          if (!PBReaderPlaceMark() || !_MPCProtoTracklistIndexPathReadFrom(v15, a3))
          {
LABEL_48:

            return 0;
          }

          goto LABEL_41;
        }

        if (v14 == 4)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *&self->_has |= 1u;
          while (1)
          {
            LOBYTE(v25) = 0;
            v19 = [a3 position] + 1;
            if (v19 >= [a3 position] && (v20 = objc_msgSend(a3, "position") + 1, v20 <= objc_msgSend(a3, "length")))
            {
              v21 = [a3 data];
              [v21 getBytes:&v25 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v18 |= (v25 & 0x7F) << v16;
            if ((v25 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v12 = v17++ >= 9;
            if (v12)
            {
              v22 = 0;
              goto LABEL_45;
            }
          }

          if ([a3 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_45:
          self->_shuffleMode = v22;
          goto LABEL_46;
        }
      }

      else
      {
        if (v14 == 1)
        {
          v15 = objc_alloc_init(_MPCProtoDelegateInfo);
          [(_MPCProtoTracklist *)self addAccountInfo:v15];
          v25 = 0;
          v26 = 0;
          if (!PBReaderPlaceMark() || !_MPCProtoDelegateInfoReadFrom(v15, a3))
          {
            goto LABEL_48;
          }

          goto LABEL_41;
        }

        if (v14 == 2)
        {
          v15 = objc_alloc_init(_MPCProtoContainer);
          [(_MPCProtoTracklist *)self addContainer:v15];
          v25 = 0;
          v26 = 0;
          if (!PBReaderPlaceMark() || !_MPCProtoContainerReadFrom(v15, a3))
          {
            goto LABEL_48;
          }

LABEL_41:
          PBReaderRecallMark();

          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v23 = [a3 position];
    }

    while (v23 < [a3 length]);
  }

  return [a3 hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_accountInfos count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_accountInfos, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = self->_accountInfos;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"accountInfo"];
  }

  if ([(NSMutableArray *)self->_containers count])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_containers, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = self->_containers;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v22 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"container"];
  }

  startingItemIndexPath = self->_startingItemIndexPath;
  if (startingItemIndexPath)
  {
    v19 = [(_MPCProtoTracklistIndexPath *)startingItemIndexPath dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"startingItemIndexPath"];
  }

  if (*&self->_has)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithInt:self->_shuffleMode];
    [v3 setObject:v20 forKey:@"shuffleMode"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MPCProtoTracklist;
  v4 = [(_MPCProtoTracklist *)&v8 description];
  v5 = [(_MPCProtoTracklist *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end