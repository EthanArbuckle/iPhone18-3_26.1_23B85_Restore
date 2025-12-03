@interface IMKeyValueCollection
- (BOOL)BOOLForKey:(id)key withDefault:(BOOL)default;
- (IMKeyValueCollection)init;
- (IMKeyValueCollection)initWithKeyValueStorage:(id)storage;
- (IMKeyValueCollectionDelegate)delegate;
- (NSString)description;
- (double)doubleForKey:(id)key withDefault:(double)default;
- (id)copyWithZone:(_NSZone *)zone;
- (id)errorArrayForKey:(id)key;
- (id)errorForKey:(id)key;
- (id)objectForKey:(id)key;
- (id)objectForKey:(id)key withDefault:(id)default;
- (int64_t)int64ForKey:(id)key withDefault:(int64_t)default;
- (int64_t)integerForKey:(id)key withDefault:(int64_t)default;
- (unint64_t)uint64ForKey:(id)key withDefault:(unint64_t)default;
- (void)_broadcastIfNeeded;
- (void)_commitBatchWrite;
- (void)_notifyListeners;
- (void)_recordChange:(id)change forKey:(id)key;
- (void)_setObject:(id)object forKey:(id)key;
- (void)_startBatchWrite;
- (void)addErrorToArray:(id)array forKey:(id)key;
- (void)setBool:(BOOL)bool forKey:(id)key;
- (void)setDouble:(double)double forKey:(id)key;
- (void)setError:(id)error forKey:(id)key;
- (void)setInt64:(int64_t)int64 forKey:(id)key;
- (void)setInteger:(int64_t)integer forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)setUint64:(int64_t)uint64 forKey:(id)key;
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

- (void)setError:(id)error forKey:(id)key
{
  keyCopy = key;
  serializedError_im = [error serializedError_im];
  [(IMKeyValueCollection *)self setObject:serializedError_im forKey:keyCopy];
}

- (id)errorForKey:(id)key
{
  v3 = [(IMKeyValueCollection *)self objectForKey:key];
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

- (void)addErrorToArray:(id)array forKey:(id)key
{
  v38 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  keyCopy = key;
  if (arrayCopy)
  {
    v8 = [(IMKeyValueCollection *)self objectForKey:keyCopy];
    v9 = v8;
    if (!v8)
    {
      goto LABEL_16;
    }

    selfCopy = self;
    v30 = v8;
    v31 = keyCopy;
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
          domain = [arrayCopy domain];
          v18 = [v16 objectForKeyedSubscript:v14];
          if ([domain isEqualToString:v18])
          {
            code = [arrayCopy code];
            v20 = arrayCopy;
            v21 = v14;
            v22 = code;
            v23 = [v16 objectForKeyedSubscript:@"IMSerializedErrorCodeKey"];
            v24 = v10;
            integerValue = [v23 integerValue];

            v26 = v22 == integerValue;
            v14 = v21;
            arrayCopy = v20;
            v12 = v32;
            v10 = v24;
            if (v26)
            {
              v9 = v30;
              keyCopy = v31;
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

    array = [v10 mutableCopy];
    v9 = v30;
    keyCopy = v31;
    self = selfCopy;
    if (!array)
    {
LABEL_16:
      array = [MEMORY[0x1E695DF70] array];
    }

    serializedError_im = [arrayCopy serializedError_im];
    [array addObject:serializedError_im];

    v10 = array;
    [(IMKeyValueCollection *)self setObject:array forKey:keyCopy];
LABEL_18:
  }
}

- (id)errorArrayForKey:(id)key
{
  v3 = [(IMKeyValueCollection *)self objectForKey:key];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  keyValueStorage = [(IMKeyValueCollection *)self keyValueStorage];
  v6 = [keyValueStorage copy];
  v7 = [v4 initWithKeyValueStorage:v6];

  return v7;
}

- (IMKeyValueCollection)initWithKeyValueStorage:(id)storage
{
  storageCopy = storage;
  v9.receiver = self;
  v9.super_class = IMKeyValueCollection;
  v6 = [(IMKeyValueCollection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyValueStorage, storage);
  }

  return v7;
}

- (void)_notifyListeners
{
  delegate = [(IMKeyValueCollection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(NSMutableDictionary *)self->_recordedChanges copy];
    [delegate keyValueCollection:self willUpdateValues:v3];
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [(NSMutableDictionary *)self->_recordedChanges copy];
    [delegate keyValueCollection:self didUpdateValues:v4];
  }
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  keyValueStorage = [(IMKeyValueCollection *)selfCopy keyValueStorage];
  v7 = [keyValueStorage objectForKey:keyCopy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)objectForKey:(id)key withDefault:(id)default
{
  defaultCopy = default;
  v7 = [(IMKeyValueCollection *)self objectForKey:key];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = defaultCopy;
  }

  v10 = v9;

  return v9;
}

- (void)_setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (objectCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    keyValueStorage = [(IMKeyValueCollection *)self keyValueStorage];
    [keyValueStorage setObject:objectCopy forKey:keyCopy];
  }

  else
  {
    keyValueStorage = [(IMKeyValueCollection *)self keyValueStorage];
    [keyValueStorage removeObjectForKey:keyCopy];
  }
}

- (void)_recordChange:(id)change forKey:(id)key
{
  changeCopy = change;
  keyCopy = key;
  if (!self->_recordedChanges)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    recordedChanges = self->_recordedChanges;
    self->_recordedChanges = dictionary;
  }

  v9 = self->_recordedChanges;
  if (changeCopy)
  {
    [(NSMutableDictionary *)v9 setObject:changeCopy forKey:keyCopy];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [(NSMutableDictionary *)v9 setObject:null forKey:keyCopy];
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  keyValueStorage = [(IMKeyValueCollection *)selfCopy keyValueStorage];
  v9 = [keyValueStorage objectForKey:keyCopy];

  if (objectCopy | v9 && (!objectCopy && v9 || objectCopy && !v9 || objectCopy && v9 && ([objectCopy isEqual:v9] & 1) == 0))
  {
    [(IMKeyValueCollection *)selfCopy _setObject:objectCopy forKey:keyCopy];
    [(IMKeyValueCollection *)selfCopy _recordChange:objectCopy forKey:keyCopy];
    if (!selfCopy->_batchCount)
    {
      [(IMKeyValueCollection *)selfCopy _broadcastIfNeeded];
    }
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)BOOLForKey:(id)key withDefault:(BOOL)default
{
  defaultCopy = default;
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithBool:defaultCopy];
  v9 = [(IMKeyValueCollection *)self objectForKey:keyCopy withDefault:v8];

  LOBYTE(v6) = [v9 BOOLValue];
  return v6;
}

- (void)setBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithBool:boolCopy];
  [(IMKeyValueCollection *)self setObject:v8 forKey:keyCopy];
}

- (int64_t)integerForKey:(id)key withDefault:(int64_t)default
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithInteger:default];
  v9 = [(IMKeyValueCollection *)self objectForKey:keyCopy withDefault:v8];

  integerValue = [v9 integerValue];
  return integerValue;
}

- (void)setInteger:(int64_t)integer forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithInteger:integer];
  [(IMKeyValueCollection *)self setObject:v8 forKey:keyCopy];
}

- (int64_t)int64ForKey:(id)key withDefault:(int64_t)default
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithLongLong:default];
  v9 = [(IMKeyValueCollection *)self objectForKey:keyCopy withDefault:v8];

  longValue = [v9 longValue];
  return longValue;
}

- (void)setInt64:(int64_t)int64 forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithLongLong:int64];
  [(IMKeyValueCollection *)self setObject:v8 forKey:keyCopy];
}

- (unint64_t)uint64ForKey:(id)key withDefault:(unint64_t)default
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithUnsignedLongLong:default];
  v9 = [(IMKeyValueCollection *)self objectForKey:keyCopy withDefault:v8];

  unsignedLongValue = [v9 unsignedLongValue];
  return unsignedLongValue;
}

- (void)setUint64:(int64_t)uint64 forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithLongLong:uint64];
  [(IMKeyValueCollection *)self setObject:v8 forKey:keyCopy];
}

- (double)doubleForKey:(id)key withDefault:(double)default
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithDouble:default];
  v9 = [(IMKeyValueCollection *)self objectForKey:keyCopy withDefault:v8];

  [v9 doubleValue];
  v11 = v10;

  return v11;
}

- (void)setDouble:(double)double forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithDouble:double];
  [(IMKeyValueCollection *)self setObject:v8 forKey:keyCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IMKeyValueCollection;
  v4 = [(IMKeyValueCollection *)&v8 description];
  keyValueStorage = [(IMKeyValueCollection *)self keyValueStorage];
  v6 = [v3 stringWithFormat:@"%@ storage:%@, recorded changes: %@, batch count: %zd]", v4, keyValueStorage, self->_recordedChanges, self->_batchCount];

  return v6;
}

- (IMKeyValueCollectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end