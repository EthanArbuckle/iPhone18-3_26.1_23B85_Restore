@interface MFIMAPConnectionFlagSearchResults
- (MFIMAPConnectionFlagSearchResults)init;
- (id)_indexSetFromUIDs:(id)ds;
- (id)copyResponseForUID:(unint64_t)d;
- (id)description;
- (unint64_t)_flagsForUID:(unint64_t)d;
- (void)cacheStateForUIDs:(id)ds mask:(unint64_t)mask existenceSetsFlag:(BOOL)flag;
@end

@implementation MFIMAPConnectionFlagSearchResults

- (MFIMAPConnectionFlagSearchResults)init
{
  v9.receiver = self;
  v9.super_class = MFIMAPConnectionFlagSearchResults;
  v2 = [(MFIMAPConnectionFlagSearchResults *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    uidsWithFlagMaskSet = v2->_uidsWithFlagMaskSet;
    v2->_uidsWithFlagMaskSet = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    uidsWithoutFlagMaskSet = v2->_uidsWithoutFlagMaskSet;
    v2->_uidsWithoutFlagMaskSet = v5;

    v7 = v2;
  }

  return v2;
}

- (id)description
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p>", objc_opt_class(), self];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = self->_uidsWithFlagMaskSet;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_uidsWithFlagMaskSet objectForKey:v8];
        v10 = MFDescriptionForMessageFlags([v8 unsignedLongLongValue]);
        [v3 appendFormat:@"\n\t%@ set %@", v10, v9];
      }

      v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_uidsWithoutFlagMaskSet;
  v12 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = *v21;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v20 + 1) + 8 * j);
        v16 = [(NSMutableDictionary *)self->_uidsWithoutFlagMaskSet objectForKey:v15];
        v17 = MFDescriptionForMessageFlags([v15 unsignedLongLongValue]);
        [v3 appendFormat:@"\n\t%@ unset %@", v17, v16, v20];
      }

      v12 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v12);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)_flagsForUID:(unint64_t)d
{
  v32 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_uidsWithFlagMaskSet;
  v6 = 0;
  v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_uidsWithFlagMaskSet objectForKey:v10];
        unsignedLongLongValue = [v10 unsignedLongLongValue];
        if ([v11 containsIndex:d])
        {
          v6 |= unsignedLongLongValue;
        }

        else
        {
          v6 &= ~unsignedLongLongValue;
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = self->_uidsWithoutFlagMaskSet;
  v14 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = *v23;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v22 + 1) + 8 * j);
        v18 = [(NSMutableDictionary *)self->_uidsWithoutFlagMaskSet objectForKey:v17, v22];
        unsignedLongLongValue2 = [v17 unsignedLongLongValue];
        if ([v18 containsIndex:d])
        {
          v6 &= ~unsignedLongLongValue2;
        }

        else
        {
          v6 |= unsignedLongLongValue2;
        }
      }

      v14 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)_indexSetFromUIDs:(id)ds
{
  v16 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = dsCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [indexSet addIndex:{objc_msgSend(*(*(&v11 + 1) + 8 * i), "integerValue", v11)}];
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return indexSet;
}

- (void)cacheStateForUIDs:(id)ds mask:(unint64_t)mask existenceSetsFlag:(BOOL)flag
{
  flagCopy = flag;
  dsCopy = ds;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:mask];
  v9 = [(MFIMAPConnectionFlagSearchResults *)self _indexSetFromUIDs:dsCopy];
  v10 = 16;
  if (flagCopy)
  {
    v10 = 8;
  }

  v11 = *(&self->super.isa + v10);
  v12 = [v11 objectForKeyedSubscript:v8];
  v13 = v12;
  if (v12)
  {
    [v12 addIndexes:v9];
  }

  else
  {
    [v11 setObject:v9 forKeyedSubscript:v8];
  }

  v14 = 8;
  if (flagCopy)
  {
    v14 = 16;
  }

  [*(&self->super.isa + v14) removeObjectForKey:v8];
}

- (id)copyResponseForUID:(unint64_t)d
{
  v11[2] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MFIMAPResponse);
  [(MFIMAPResponse *)v5 setResponseType:17];
  v6 = [[MFIMAPFetchResult alloc] initWithType:8];
  v7 = [[MFIMAPFetchResult alloc] initWithType:10];
  [(MFIMAPFetchResult *)v6 setUid:d];
  [(MFIMAPFetchResult *)v7 setMessageFlags:[(MFIMAPConnectionFlagSearchResults *)self _flagsForUID:d]];
  v11[0] = v6;
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  [(MFIMAPResponse *)v5 setFetchResults:v8];

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

@end