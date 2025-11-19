@interface SYStoreResetSessionOwner
- (SYStoreResetSessionOwner)init;
- (unsigned)_sendBufferedChanges:(id)a3;
- (unsigned)syncSession:(id)a3 enqueueChanges:(id)a4 error:(id *)a5;
@end

@implementation SYStoreResetSessionOwner

- (SYStoreResetSessionOwner)init
{
  v7.receiver = self;
  v7.super_class = SYStoreResetSessionOwner;
  v2 = [(SYStoreResetSessionOwner *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
    buffer = v2->_buffer;
    v2->_buffer = v3;

    v5 = v2;
  }

  return v2;
}

- (unsigned)_sendBufferedChanges:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_buffer;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v20;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if (!v4[2](v4, *(*(&v19 + 1) + 8 * v10)))
        {
          v8 = v11;
          goto LABEL_12;
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_12:

  v12 = [(SYStoreSessionOwner *)self session];
  v13 = [v12 state];

  if (v13 == 5)
  {
    bufferedState = 5;
  }

  else
  {
    v15 = [(NSMutableArray *)self->_buffer count];
    buffer = self->_buffer;
    if (v8 >= v15)
    {
      [(NSMutableArray *)buffer removeAllObjects];
      bufferedState = self->_bufferedState;
    }

    else
    {
      [(NSMutableArray *)buffer removeObjectsInRange:0, v8];
      bufferedState = 1;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return bufferedState;
}

- (unsigned)syncSession:(id)a3 enqueueChanges:(id)a4 error:(id *)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([(NSMutableArray *)self->_buffer count])
  {
    v7 = [(SYStoreResetSessionOwner *)self _sendBufferedChanges:v6];
    goto LABEL_27;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
  v9 = (*(self->_fetchNextBatch + 2))();
  v10 = 1;
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v10 = 4;
      goto LABEL_23;
    }

    if (v9 == 4)
    {
      v10 = 5;
      goto LABEL_23;
    }

LABEL_11:
    if ([v8 count])
    {
      v22 = v10;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      obj = v8;
      v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v25;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v24 + 1) + 8 * i);
            v16 = [(SYStoreSessionOwner *)self store];
            v17 = [SYChange changeWithObject:v15 updateType:0 store:v16];

            if ((v6[2](v6, v17) & 1) == 0)
            {
              [(NSMutableArray *)self->_buffer addObject:v17];
            }
          }

          v12 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v12);
      }

      v10 = v22;
    }

    goto LABEL_23;
  }

  if (v9 == 1)
  {
    v10 = 2;
    goto LABEL_11;
  }

  if (v9 != 2)
  {
    goto LABEL_11;
  }

  v10 = 3;
LABEL_23:
  v18 = [(SYStoreSessionOwner *)self session];
  v19 = [v18 state];

  if (v19 == 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = v10;
  }

LABEL_27:
  v20 = *MEMORY[0x1E69E9840];
  return v7;
}

@end