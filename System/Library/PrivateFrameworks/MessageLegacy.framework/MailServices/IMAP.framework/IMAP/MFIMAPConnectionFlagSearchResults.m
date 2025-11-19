@interface MFIMAPConnectionFlagSearchResults
- (MFIMAPConnectionFlagSearchResults)init;
- (id)_indexSetFromUIDs:(id)a3;
- (id)copyResponseForUID:(unint64_t)a3;
- (id)description;
- (unint64_t)_flagsForUID:(unint64_t)a3;
- (void)cacheStateForUIDs:(id)a3 mask:(unint64_t)a4 existenceSetsFlag:(BOOL)a5;
- (void)dealloc;
@end

@implementation MFIMAPConnectionFlagSearchResults

- (MFIMAPConnectionFlagSearchResults)init
{
  v4.receiver = self;
  v4.super_class = MFIMAPConnectionFlagSearchResults;
  v2 = [(MFIMAPConnectionFlagSearchResults *)&v4 init];
  if (v2)
  {
    v2->_uidsWithFlagMaskSet = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2->_uidsWithoutFlagMaskSet = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFIMAPConnectionFlagSearchResults;
  [(MFIMAPConnectionFlagSearchResults *)&v3 dealloc];
}

- (id)description
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p>", objc_opt_class(), self];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  uidsWithFlagMaskSet = self->_uidsWithFlagMaskSet;
  v5 = [(NSMutableDictionary *)uidsWithFlagMaskSet countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(uidsWithFlagMaskSet);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_uidsWithFlagMaskSet objectForKey:v9];
        [v9 unsignedLongLongValue];
        [v3 appendFormat:@"\n\t%@ set %@", MFDescriptionForMessageFlags(), v10];
      }

      v6 = [(NSMutableDictionary *)uidsWithFlagMaskSet countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  uidsWithoutFlagMaskSet = self->_uidsWithoutFlagMaskSet;
  v12 = [(NSMutableDictionary *)uidsWithoutFlagMaskSet countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(uidsWithoutFlagMaskSet);
        }

        v16 = *(*(&v20 + 1) + 8 * j);
        v17 = [(NSMutableDictionary *)self->_uidsWithoutFlagMaskSet objectForKey:v16];
        [v16 unsignedLongLongValue];
        [v3 appendFormat:@"\n\t%@ unset %@", MFDescriptionForMessageFlags(), v17];
      }

      v13 = [(NSMutableDictionary *)uidsWithoutFlagMaskSet countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v3;
}

- (unint64_t)_flagsForUID:(unint64_t)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  uidsWithFlagMaskSet = self->_uidsWithFlagMaskSet;
  v6 = [(NSMutableDictionary *)uidsWithFlagMaskSet countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(uidsWithFlagMaskSet);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_uidsWithFlagMaskSet objectForKey:v11];
        v13 = [v11 unsignedLongLongValue];
        if ([v12 containsIndex:a3])
        {
          v8 |= v13;
        }

        else
        {
          v8 &= ~v13;
        }
      }

      v7 = [(NSMutableDictionary *)uidsWithFlagMaskSet countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  uidsWithoutFlagMaskSet = self->_uidsWithoutFlagMaskSet;
  v15 = [(NSMutableDictionary *)uidsWithoutFlagMaskSet countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(uidsWithoutFlagMaskSet);
        }

        v19 = *(*(&v24 + 1) + 8 * j);
        v20 = [(NSMutableDictionary *)self->_uidsWithoutFlagMaskSet objectForKey:v19];
        v21 = [v19 unsignedLongLongValue];
        if ([v20 containsIndex:a3])
        {
          v8 &= ~v21;
        }

        else
        {
          v8 |= v21;
        }
      }

      v16 = [(NSMutableDictionary *)uidsWithoutFlagMaskSet countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_indexSetFromUIDs:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAB58] indexSet];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a3);
        }

        [v4 addIndex:{objc_msgSend(*(*(&v11 + 1) + 8 * v8++), "integerValue")}];
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)cacheStateForUIDs:(id)a3 mask:(unint64_t)a4 existenceSetsFlag:(BOOL)a5
{
  v5 = a5;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
  v9 = [(MFIMAPConnectionFlagSearchResults *)self _indexSetFromUIDs:a3];
  v10 = 16;
  if (v5)
  {
    v10 = 8;
  }

  v11 = *(&self->super.isa + v10);
  v12 = [v11 objectForKeyedSubscript:v8];
  if (v12)
  {
    [v12 addIndexes:v9];
  }

  else
  {
    [v11 setObject:v9 forKeyedSubscript:v8];
  }

  v13 = 8;
  if (v5)
  {
    v13 = 16;
  }

  v14 = *(&self->super.isa + v13);

  [v14 removeObjectForKey:v8];
}

- (id)copyResponseForUID:(unint64_t)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MFIMAPResponse);
  [(MFIMAPResponse *)v5 setResponseType:17];
  v6 = [[MFIMAPFetchResult alloc] initWithType:8];
  v7 = [[MFIMAPFetchResult alloc] initWithType:10];
  [(MFIMAPFetchResult *)v6 setUid:a3];
  [(MFIMAPFetchResult *)v7 setMessageFlags:[(MFIMAPConnectionFlagSearchResults *)self _flagsForUID:a3]];
  v10[0] = v6;
  v10[1] = v7;
  -[MFIMAPResponse setFetchResults:](v5, "setFetchResults:", [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2]);

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

@end