@interface CPLUnionCKRecordBuilder
- (CPLUnionCKRecordBuilder)initWithRecordBuilders:(id)builders;
- (id)recordIDForResourcesOfRecordWithScopedIdentifier:(id)identifier cloudKitScope:(id *)scope error:(id *)error;
- (void)requestRecordWithID:(id)d cloudKitScope:(id)scope forKey:(id)key completionHandler:(id)handler;
- (void)setCKAsset:(id)asset forKey:(id)key;
- (void)setCKReferenceWithScopedIdentifier:(id)identifier forKey:(id)key referenceAction:(unint64_t)action;
- (void)setEncryptedObject:(id)object forKey:(id)key validateClass:(Class)class;
- (void)setLegacyEncryptedObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation CPLUnionCKRecordBuilder

- (CPLUnionCKRecordBuilder)initWithRecordBuilders:(id)builders
{
  buildersCopy = builders;
  if (![buildersCopy count])
  {
    sub_100198490(a2, self);
  }

  v10.receiver = self;
  v10.super_class = CPLUnionCKRecordBuilder;
  v6 = [(CPLUnionCKRecordBuilder *)&v10 init];
  if (v6)
  {
    v7 = [buildersCopy copy];
    builders = v6->_builders;
    v6->_builders = v7;
  }

  return v6;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
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

        [*(*(&v13 + 1) + 8 * v12) setObject:objectCopy forKey:{keyCopy, v13}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)setEncryptedObject:(id)object forKey:(id)key validateClass:(Class)class
{
  objectCopy = object;
  keyCopy = key;
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

        [*(*(&v15 + 1) + 8 * v14) setEncryptedObject:objectCopy forKey:keyCopy validateClass:{class, v15}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)setLegacyEncryptedObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
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

        [*(*(&v13 + 1) + 8 * v12) setLegacyEncryptedObject:objectCopy forKey:{keyCopy, v13}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)setCKAsset:(id)asset forKey:(id)key
{
  assetCopy = asset;
  keyCopy = key;
  if ([(NSArray *)self->_builders count]> 1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    firstObject = self->_builders;
    v9 = [(NSArray *)firstObject countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(firstObject);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          cplCopyCleanAsset = [assetCopy cplCopyCleanAsset];
          [v13 setCKAsset:cplCopyCleanAsset forKey:keyCopy];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [(NSArray *)firstObject countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  else
  {
    firstObject = [(NSArray *)self->_builders firstObject];
    [(NSArray *)firstObject setCKAsset:assetCopy forKey:keyCopy];
  }
}

- (void)setCKReferenceWithScopedIdentifier:(id)identifier forKey:(id)key referenceAction:(unint64_t)action
{
  identifierCopy = identifier;
  keyCopy = key;
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

        [*(*(&v15 + 1) + 8 * v14) setCKReferenceWithScopedIdentifier:identifierCopy forKey:keyCopy referenceAction:{action, v15}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)requestRecordWithID:(id)d cloudKitScope:(id)scope forKey:(id)key completionHandler:(id)handler
{
  dCopy = d;
  scopeCopy = scope;
  keyCopy = key;
  handlerCopy = handler;
  v15 = +[NSAssertionHandler currentHandler];
  v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKRecordBuilder.m"];
  v17 = NSStringFromSelector(a2);
  [v15 handleFailureInMethod:a2 object:self file:v16 lineNumber:146 description:{@"%@ is not supported by %@", v17, objc_opt_class()}];

  abort();
}

- (id)recordIDForResourcesOfRecordWithScopedIdentifier:(id)identifier cloudKitScope:(id *)scope error:(id *)error
{
  builders = self->_builders;
  identifierCopy = identifier;
  firstObject = [(NSArray *)builders firstObject];
  v10 = [firstObject recordIDForResourcesOfRecordWithScopedIdentifier:identifierCopy cloudKitScope:scope error:error];

  return v10;
}

@end