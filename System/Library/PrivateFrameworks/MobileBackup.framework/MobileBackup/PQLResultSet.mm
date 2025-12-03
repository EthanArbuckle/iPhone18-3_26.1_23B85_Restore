@interface PQLResultSet
- (BOOL)checkSuccessWithError:(id *)error;
- (BOOL)enumerateWithError:(id *)error block:(id)block;
- (id)_expandedSQL;
- (id)_failureAtIndex:(unsigned int *)index childFailures:(id)failures;
- (id)assetMetadataFromIndex:(unsigned int *)index;
- (id)fileWithDomain:(id)domain fromIndex:(unsigned int *)index;
- (id)xattrsFromIndex:(unsigned int *)index;
- (void)getNode:(id *)node fromIndex:(unsigned int *)index;
@end

@implementation PQLResultSet

- (void)getNode:(id *)node fromIndex:(unsigned int *)index
{
  v7 = *index;
  node->var8 = [(PQLResultSet *)self unsignedLongLongAtIndex:*index];
  node->var7 = [(PQLResultSet *)self unsignedLongLongAtIndex:v7 + 1];
  node->var4 = [(PQLResultSet *)self unsignedLongLongAtIndex:v7 + 2];
  node->var5 = [(PQLResultSet *)self unsignedLongLongAtIndex:v7 + 3];
  node->var6 = [(PQLResultSet *)self unsignedLongLongAtIndex:v7 + 4];
  node->var1 = [(PQLResultSet *)self unsignedIntAtIndex:v7 + 5];
  node->var2 = [(PQLResultSet *)self unsignedIntAtIndex:v7 + 6];
  WORD2(node->var10) = [(PQLResultSet *)self unsignedShortAtIndex:v7 + 7];
  node->var3 = [(PQLResultSet *)self unsignedIntAtIndex:v7 + 8];
  BYTE6(node->var10) = [(PQLResultSet *)self unsignedCharAtIndex:v7 + 9];
  *index = v7 + 10;
}

- (id)assetMetadataFromIndex:(unsigned int *)index
{
  ++*index;
  v5 = [(PQLResultSet *)self stringAtIndex:?];
  ++*index;
  v6 = [(PQLResultSet *)self dataAtIndex:?];
  ++*index;
  v7 = [(PQLResultSet *)self unsignedIntegerAtIndex:?];
  ++*index;
  v8 = [(PQLResultSet *)self unsignedIntegerAtIndex:?];
  ++*index;
  v9 = [(PQLResultSet *)self unsignedLongLongAtIndex:?];
  ++*index;
  v10 = [(PQLResultSet *)self dataAtIndex:?];
  v11 = [MBAssetMetadata assetMetadataFromRecordIDSuffix:v5 signature:v10 size:v9 type:v8 compressionMethod:v7 encryptionKey:v6];

  return v11;
}

- (id)xattrsFromIndex:(unsigned int *)index
{
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v5 = [NSArray arrayWithObjects:&v9 count:3];
  v6 = [NSSet setWithArray:v5, v9, v10];

  ++*index;
  v7 = [(PQLResultSet *)self unarchivedObjectOfClasses:v6 atIndex:?];

  return v7;
}

- (id)fileWithDomain:(id)domain fromIndex:(unsigned int *)index
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  domainCopy = domain;
  [(PQLResultSet *)self getNode:&v11 fromIndex:index];
  v7 = [(PQLResultSet *)self xattrsFromIndex:index, v11, v12, v13, v14, v15];
  ++*index;
  v8 = [(PQLResultSet *)self stringAtIndex:?];
  v9 = [MBFile fileWithDomain:domainCopy relativePath:v8];

  [v9 setNode:&v11];
  [v9 setExtendedAttributes:v7];

  return v9;
}

- (BOOL)checkSuccessWithError:(id *)error
{
  error = [(PQLResultSet *)self error];
  if (error)
  {
    if (MBIsInternalInstall())
    {
      _expandedSQL = [(PQLResultSet *)self _expandedSQL];
      v7 = [error _errorWithSQL:_expandedSQL];

      if (!error)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v7 = error;
    if (error)
    {
LABEL_7:
      v8 = v7;
      *error = v7;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_8:

  return error == 0;
}

- (BOOL)enumerateWithError:(id *)error block:(id)block
{
  blockCopy = block;
  v7 = 0;
  while ([(PQLResultSet *)self next])
  {
    v8 = objc_autoreleasePoolPush();
    v17 = v7;
    v9 = blockCopy[2](blockCopy, self, &v17);
    excludingNotFound = v17;

    objc_autoreleasePoolPop(v8);
    v7 = excludingNotFound;
    if ((v9 & 1) == 0)
    {
      [(PQLResultSet *)self close];
      if (excludingNotFound)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  excludingNotFound = v7;
  if (v7)
  {
    goto LABEL_8;
  }

LABEL_7:
  error = [(PQLResultSet *)self error];
  excludingNotFound = [error excludingNotFound];

  if (!excludingNotFound)
  {
    v13 = 0;
    v15 = 1;
    goto LABEL_12;
  }

LABEL_8:
  _expandedSQL = [(PQLResultSet *)self _expandedSQL];
  v13 = [excludingNotFound _errorWithSQL:_expandedSQL];

  if (error)
  {
    v14 = v13;
    v15 = 0;
    *error = v13;
  }

  else
  {
    v15 = 0;
  }

LABEL_12:

  return v15;
}

- (id)_expandedSQL
{
  stmt = [(PQLResultSet *)self stmt];
  if (stmt)
  {
    v3 = sqlite3_expanded_sql(stmt);
    v4 = [NSString stringWithUTF8String:v3];
    free(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_failureAtIndex:(unsigned int *)index childFailures:(id)failures
{
  failuresCopy = failures;
  ++*index;
  v7 = [(PQLResultSet *)self stringAtIndex:?];
  ++*index;
  v8 = [(PQLResultSet *)self integerAtIndex:?];
  ++*index;
  v9 = [(PQLResultSet *)self stringAtIndex:?];
  ++*index;
  [(PQLResultSet *)self doubleAtIndex:?];
  v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v11 = [failuresCopy count];
  v12 = [NSError alloc];
  if (v11 == 1)
  {
    v22[0] = NSLocalizedDescriptionKey;
    v22[1] = @"kMBErrorDateKey";
    v23[0] = v9;
    v23[1] = v10;
    v22[2] = NSUnderlyingErrorKey;
    firstObject = [failuresCopy firstObject];
    v23[2] = firstObject;
    v17 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
    v18 = [v12 initWithDomain:v7 code:v8 userInfo:v17];
  }

  else
  {
    if (v11)
    {
      v20[0] = NSLocalizedDescriptionKey;
      v20[1] = @"kMBErrorDateKey";
      v21[0] = v9;
      v21[1] = v10;
      v20[2] = @"kMBUnderlyingErrorsKey";
      v21[2] = failuresCopy;
      v13 = v21;
      v14 = v20;
      v15 = 3;
    }

    else
    {
      v24[0] = NSLocalizedDescriptionKey;
      v24[1] = @"kMBErrorDateKey";
      v25[0] = v9;
      v25[1] = v10;
      v13 = v25;
      v14 = v24;
      v15 = 2;
    }

    firstObject = [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:v15];
    v18 = [v12 initWithDomain:v7 code:v8 userInfo:firstObject];
  }

  return v18;
}

@end