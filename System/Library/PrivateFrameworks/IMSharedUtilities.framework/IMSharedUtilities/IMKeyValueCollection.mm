@interface IMKeyValueCollection
- (BOOL)BOOLForKey:(id)a3 withDefault:(BOOL)a4;
- (IMKeyValueCollection)init;
- (IMKeyValueCollection)initWithKeyValueStorage:(id)a3;
- (IMKeyValueCollectionDelegate)delegate;
- (NSString)description;
- (double)doubleForKey:(id)a3 withDefault:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)errorArrayForKey:(id)a3;
- (id)errorForKey:(id)a3;
- (id)objectForKey:(id)a3;
- (id)objectForKey:(id)a3 withDefault:(id)a4;
- (int64_t)int64ForKey:(id)a3 withDefault:(int64_t)a4;
- (int64_t)integerForKey:(id)a3 withDefault:(int64_t)a4;
- (unint64_t)uint64ForKey:(id)a3 withDefault:(unint64_t)a4;
- (void)_broadcastIfNeeded;
- (void)_commitBatchWrite;
- (void)_notifyListeners;
- (void)_recordChange:(id)a3 forKey:(id)a4;
- (void)_setObject:(id)a3 forKey:(id)a4;
- (void)_startBatchWrite;
- (void)addErrorToArray:(id)a3 forKey:(id)a4;
- (void)setBool:(BOOL)a3 forKey:(id)a4;
- (void)setDouble:(double)a3 forKey:(id)a4;
- (void)setError:(id)a3 forKey:(id)a4;
- (void)setInt64:(int64_t)a3 forKey:(id)a4;
- (void)setInteger:(int64_t)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setUint64:(int64_t)a3 forKey:(id)a4;
@end

@implementation IMKeyValueCollection

- (void)_startBatchWrite
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_batchCount;
  objc_sync_exit(obj);
}

- (void)_commitBatchWrite
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj->_batchCount - 1;
  obj->_batchCount = v2;
  if (!v2)
  {
    [(IMKeyValueCollection *)obj _broadcastIfNeeded];
  }

  objc_sync_exit(obj);
}

- (void)_broadcastIfNeeded
{
  if ((byte_1EB3095F8 & 1) == 0)
  {
    recordedChanges = self->_recordedChanges;
    if (recordedChanges)
    {
      if ([(NSMutableDictionary *)recordedChanges count])
      {
        byte_1EB3095F8 = 1;
        v4 = objc_autoreleasePoolPush();
        [(IMKeyValueCollection *)self _notifyListeners];
        objc_autoreleasePoolPop(v4);
        v5 = self->_recordedChanges;
        self->_recordedChanges = 0;

        byte_1EB3095F8 = 0;
      }
    }
  }
}

- (void)setError:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [a3 serializedError_im];
  [(IMKeyValueCollection *)self setObject:v7 forKey:v6];
}

- (id)errorForKey:(id)a3
{
  v3 = [(IMKeyValueCollection *)self objectForKey:a3];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSerializedError_im:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addErrorToArray:(id)a3 forKey:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(IMKeyValueCollection *)self objectForKey:v7];
    v9 = v8;
    if (!v8)
    {
      goto LABEL_16;
    }

    v29 = self;
    v30 = v8;
    v31 = v7;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      v14 = @"IMSerializedErrorDomainKey";
      do
      {
        v15 = 0;
        v32 = v12;
        do
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v33 + 1) + 8 * v15);
          v17 = [v6 domain];
          v18 = [v16 objectForKeyedSubscript:v14];
          if ([v17 isEqualToString:v18])
          {
            v19 = [v6 code];
            v20 = v6;
            v21 = v14;
            v22 = v19;
            v23 = [v16 objectForKeyedSubscript:@"IMSerializedErrorCodeKey"];
            v24 = v10;
            v25 = [v23 integerValue];

            v26 = v22 == v25;
            v14 = v21;
            v6 = v20;
            v12 = v32;
            v10 = v24;
            if (v26)
            {
              v9 = v30;
              v7 = v31;
              goto LABEL_18;
            }
          }

          else
          {
          }

          ++v15;
        }

        while (v12 != v15);
        v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v12);
    }

    v27 = [v10 mutableCopy];
    v9 = v30;
    v7 = v31;
    self = v29;
    if (!v27)
    {
LABEL_16:
      v27 = [MEMORY[0x1E695DF70] array];
    }

    v28 = [v6 serializedError_im];
    [v27 addObject:v28];

    v10 = v27;
    [(IMKeyValueCollection *)self setObject:v27 forKey:v7];
LABEL_18:
  }
}

- (id)errorArrayForKey:(id)a3
{
  v3 = [(IMKeyValueCollection *)self objectForKey:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E696ABC0] errorArrayFromSerializedErrorArray_im:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (IMKeyValueCollection)init
{
  [(IMKeyValueCollection *)self doesNotRecognizeSelector:0];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(IMKeyValueCollection *)self keyValueStorage];
  v6 = [v5 copy];
  v7 = [v4 initWithKeyValueStorage:v6];

  return v7;
}

- (IMKeyValueCollection)initWithKeyValueStorage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMKeyValueCollection;
  v6 = [(IMKeyValueCollection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyValueStorage, a3);
  }

  return v7;
}

- (void)_notifyListeners
{
  v5 = [(IMKeyValueCollection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(NSMutableDictionary *)self->_recordedChanges copy];
    [v5 keyValueCollection:self willUpdateValues:v3];
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [(NSMutableDictionary *)self->_recordedChanges copy];
    [v5 keyValueCollection:self didUpdateValues:v4];
  }
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(IMKeyValueCollection *)v5 keyValueStorage];
  v7 = [v6 objectForKey:v4];

  objc_sync_exit(v5);

  return v7;
}

- (id)objectForKey:(id)a3 withDefault:(id)a4
{
  v6 = a4;
  v7 = [(IMKeyValueCollection *)self objectForKey:a3];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v9;
}

- (void)_setObject:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = [(IMKeyValueCollection *)self keyValueStorage];
    [v7 setObject:v8 forKey:v6];
  }

  else
  {
    v7 = [(IMKeyValueCollection *)self keyValueStorage];
    [v7 removeObjectForKey:v6];
  }
}

- (void)_recordChange:(id)a3 forKey:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (!self->_recordedChanges)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    recordedChanges = self->_recordedChanges;
    self->_recordedChanges = v7;
  }

  v9 = self->_recordedChanges;
  if (v11)
  {
    [(NSMutableDictionary *)v9 setObject:v11 forKey:v6];
  }

  else
  {
    v10 = [MEMORY[0x1E695DFB0] null];
    [(NSMutableDictionary *)v9 setObject:v10 forKey:v6];
  }
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(IMKeyValueCollection *)v7 keyValueStorage];
  v9 = [v8 objectForKey:v6];

  if (v10 | v9 && (!v10 && v9 || v10 && !v9 || v10 && v9 && ([v10 isEqual:v9] & 1) == 0))
  {
    [(IMKeyValueCollection *)v7 _setObject:v10 forKey:v6];
    [(IMKeyValueCollection *)v7 _recordChange:v10 forKey:v6];
    if (!v7->_batchCount)
    {
      [(IMKeyValueCollection *)v7 _broadcastIfNeeded];
    }
  }

  objc_sync_exit(v7);
}

- (BOOL)BOOLForKey:(id)a3 withDefault:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithBool:v4];
  v9 = [(IMKeyValueCollection *)self objectForKey:v7 withDefault:v8];

  LOBYTE(v6) = [v9 BOOLValue];
  return v6;
}

- (void)setBool:(BOOL)a3 forKey:(id)a4
{
  v4 = a3;
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithBool:v4];
  [(IMKeyValueCollection *)self setObject:v8 forKey:v7];
}

- (int64_t)integerForKey:(id)a3 withDefault:(int64_t)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  v9 = [(IMKeyValueCollection *)self objectForKey:v7 withDefault:v8];

  v10 = [v9 integerValue];
  return v10;
}

- (void)setInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  [(IMKeyValueCollection *)self setObject:v8 forKey:v7];
}

- (int64_t)int64ForKey:(id)a3 withDefault:(int64_t)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithLongLong:a4];
  v9 = [(IMKeyValueCollection *)self objectForKey:v7 withDefault:v8];

  v10 = [v9 longValue];
  return v10;
}

- (void)setInt64:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithLongLong:a3];
  [(IMKeyValueCollection *)self setObject:v8 forKey:v7];
}

- (unint64_t)uint64ForKey:(id)a3 withDefault:(unint64_t)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  v9 = [(IMKeyValueCollection *)self objectForKey:v7 withDefault:v8];

  v10 = [v9 unsignedLongValue];
  return v10;
}

- (void)setUint64:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithLongLong:a3];
  [(IMKeyValueCollection *)self setObject:v8 forKey:v7];
}

- (double)doubleForKey:(id)a3 withDefault:(double)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithDouble:a4];
  v9 = [(IMKeyValueCollection *)self objectForKey:v7 withDefault:v8];

  [v9 doubleValue];
  v11 = v10;

  return v11;
}

- (void)setDouble:(double)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithDouble:a3];
  [(IMKeyValueCollection *)self setObject:v8 forKey:v7];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IMKeyValueCollection;
  v4 = [(IMKeyValueCollection *)&v8 description];
  v5 = [(IMKeyValueCollection *)self keyValueStorage];
  v6 = [v3 stringWithFormat:@"%@ storage:%@, recorded changes: %@, batch count: %zd]", v4, v5, self->_recordedChanges, self->_batchCount];

  return v6;
}

- (IMKeyValueCollectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end