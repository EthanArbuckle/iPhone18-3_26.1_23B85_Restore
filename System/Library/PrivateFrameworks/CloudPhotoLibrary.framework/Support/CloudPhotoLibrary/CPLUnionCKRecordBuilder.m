@interface CPLUnionCKRecordBuilder
- (CPLUnionCKRecordBuilder)initWithRecordBuilders:(id)a3;
- (id)recordIDForResourcesOfRecordWithScopedIdentifier:(id)a3 cloudKitScope:(id *)a4 error:(id *)a5;
- (void)requestRecordWithID:(id)a3 cloudKitScope:(id)a4 forKey:(id)a5 completionHandler:(id)a6;
- (void)setCKAsset:(id)a3 forKey:(id)a4;
- (void)setCKReferenceWithScopedIdentifier:(id)a3 forKey:(id)a4 referenceAction:(unint64_t)a5;
- (void)setEncryptedObject:(id)a3 forKey:(id)a4 validateClass:(Class)a5;
- (void)setLegacyEncryptedObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation CPLUnionCKRecordBuilder

- (CPLUnionCKRecordBuilder)initWithRecordBuilders:(id)a3
{
  v5 = a3;
  if (![v5 count])
  {
    sub_100198490(a2, self);
  }

  v10.receiver = self;
  v10.super_class = CPLUnionCKRecordBuilder;
  v6 = [(CPLUnionCKRecordBuilder *)&v10 init];
  if (v6)
  {
    v7 = [v5 copy];
    builders = v6->_builders;
    v6->_builders = v7;
  }

  return v6;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_builders;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) setObject:v6 forKey:{v7, v13}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)setEncryptedObject:(id)a3 forKey:(id)a4 validateClass:(Class)a5
{
  v8 = a3;
  v9 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_builders;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

        [*(*(&v15 + 1) + 8 * v14) setEncryptedObject:v8 forKey:v9 validateClass:{a5, v15}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)setLegacyEncryptedObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_builders;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) setLegacyEncryptedObject:v6 forKey:{v7, v13}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)setCKAsset:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSArray *)self->_builders count]> 1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = self->_builders;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          v14 = [v6 cplCopyCleanAsset];
          [v13 setCKAsset:v14 forKey:v7];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v8 = [(NSArray *)self->_builders firstObject];
    [(NSArray *)v8 setCKAsset:v6 forKey:v7];
  }
}

- (void)setCKReferenceWithScopedIdentifier:(id)a3 forKey:(id)a4 referenceAction:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_builders;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

        [*(*(&v15 + 1) + 8 * v14) setCKReferenceWithScopedIdentifier:v8 forKey:v9 referenceAction:{a5, v15}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)requestRecordWithID:(id)a3 cloudKitScope:(id)a4 forKey:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = +[NSAssertionHandler currentHandler];
  v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKRecordBuilder.m"];
  v17 = NSStringFromSelector(a2);
  [v15 handleFailureInMethod:a2 object:self file:v16 lineNumber:146 description:{@"%@ is not supported by %@", v17, objc_opt_class()}];

  abort();
}

- (id)recordIDForResourcesOfRecordWithScopedIdentifier:(id)a3 cloudKitScope:(id *)a4 error:(id *)a5
{
  builders = self->_builders;
  v8 = a3;
  v9 = [(NSArray *)builders firstObject];
  v10 = [v9 recordIDForResourcesOfRecordWithScopedIdentifier:v8 cloudKitScope:a4 error:a5];

  return v10;
}

@end