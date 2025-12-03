@interface BLDownloadDRM
- (BLDownloadDRM)initWithSinfArray:(id)array;
- (BOOL)isDRMFree;
- (id)_sinfsArrayWithDataKey:(id)key;
- (id)firstDataForSinfDataKey:(id)key;
- (id)sinfForIdentifier:(int64_t)identifier;
@end

@implementation BLDownloadDRM

- (BLDownloadDRM)initWithSinfArray:(id)array
{
  arrayCopy = array;
  v21.receiver = self;
  v21.super_class = BLDownloadDRM;
  v5 = [(BLDownloadDRM *)&v21 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = arrayCopy;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          v13 = [BLDownloadSinf alloc];
          v14 = [(BLDownloadSinf *)v13 initWithDictionary:v12, v17];
          if (v14)
          {
            [(NSArray *)v6 addObject:v14];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }

    sinfs = v5->_sinfs;
    v5->_sinfs = v6;
  }

  return v5;
}

- (id)firstDataForSinfDataKey:(id)key
{
  keyCopy = key;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_sinfs;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) dataForSinfDataKey:{keyCopy, v13}];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (BOOL)isDRMFree
{
  v2 = [(BLDownloadDRM *)self firstDataForSinfDataKey:off_10013E028[0]];
  v3 = v2 != 0;

  return v3;
}

- (id)sinfForIdentifier:(int64_t)identifier
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_sinfs;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 identifier] == identifier)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)_sinfsArrayWithDataKey:(id)key
{
  keyCopy = key;
  v5 = objc_alloc_init(NSMutableArray);
  sinfs = [(BLDownloadDRM *)self sinfs];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [sinfs countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(sinfs);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) dataForSinfDataKey:keyCopy];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [sinfs countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = [[BLSinfsArray alloc] initWithSINFs:v5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end