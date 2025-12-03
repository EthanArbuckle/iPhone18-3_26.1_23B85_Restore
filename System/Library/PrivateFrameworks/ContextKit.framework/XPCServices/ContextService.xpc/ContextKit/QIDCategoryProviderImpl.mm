@interface QIDCategoryProviderImpl
- (QIDCategoryProviderImpl)initWithTreasureMap:(id)map;
- (id)categoryIdsForQIDWithNSString:(id)string;
@end

@implementation QIDCategoryProviderImpl

- (QIDCategoryProviderImpl)initWithTreasureMap:(id)map
{
  mapCopy = map;
  v9.receiver = self;
  v9.super_class = QIDCategoryProviderImpl;
  v6 = [(QIDCategoryProviderImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tsm, map);
  }

  return v7;
}

- (id)categoryIdsForQIDWithNSString:(id)string
{
  v3 = [(KeylessMap *)self->_tsm objectsForKey:string];
  if (v3)
  {
    v4 = -[JavaUtilArrayList initWithInt:]([JavaUtilArrayList alloc], "initWithInt:", [v3 count]);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(JavaUtilArrayList *)v4 addWithId:*(*(&v11 + 1) + 8 * i), v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end