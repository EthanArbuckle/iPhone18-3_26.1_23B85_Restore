@interface PQLResultSet
- (BOOL)checkSuccessWithError:(id *)a3;
- (BOOL)enumerateWithError:(id *)a3 block:(id)a4;
- (id)_expandedSQL;
- (id)_failureAtIndex:(unsigned int *)a3 childFailures:(id)a4;
- (id)assetMetadataFromIndex:(unsigned int *)a3;
- (id)fileWithDomain:(id)a3 fromIndex:(unsigned int *)a4;
- (id)xattrsFromIndex:(unsigned int *)a3;
- (void)getNode:(id *)a3 fromIndex:(unsigned int *)a4;
@end

@implementation PQLResultSet

- (void)getNode:(id *)a3 fromIndex:(unsigned int *)a4
{
  v7 = *a4;
  a3->var8 = [(PQLResultSet *)self unsignedLongLongAtIndex:*a4];
  a3->var7 = [(PQLResultSet *)self unsignedLongLongAtIndex:v7 + 1];
  a3->var4 = [(PQLResultSet *)self unsignedLongLongAtIndex:v7 + 2];
  a3->var5 = [(PQLResultSet *)self unsignedLongLongAtIndex:v7 + 3];
  a3->var6 = [(PQLResultSet *)self unsignedLongLongAtIndex:v7 + 4];
  a3->var1 = [(PQLResultSet *)self unsignedIntAtIndex:v7 + 5];
  a3->var2 = [(PQLResultSet *)self unsignedIntAtIndex:v7 + 6];
  WORD2(a3->var10) = [(PQLResultSet *)self unsignedShortAtIndex:v7 + 7];
  a3->var3 = [(PQLResultSet *)self unsignedIntAtIndex:v7 + 8];
  BYTE6(a3->var10) = [(PQLResultSet *)self unsignedCharAtIndex:v7 + 9];
  *a4 = v7 + 10;
}

- (id)assetMetadataFromIndex:(unsigned int *)a3
{
  ++*a3;
  v5 = [(PQLResultSet *)self stringAtIndex:?];
  ++*a3;
  v6 = [(PQLResultSet *)self dataAtIndex:?];
  ++*a3;
  v7 = [(PQLResultSet *)self unsignedIntegerAtIndex:?];
  ++*a3;
  v8 = [(PQLResultSet *)self unsignedIntegerAtIndex:?];
  ++*a3;
  v9 = [(PQLResultSet *)self unsignedLongLongAtIndex:?];
  ++*a3;
  v10 = [(PQLResultSet *)self dataAtIndex:?];
  v11 = [MBAssetMetadata assetMetadataFromRecordIDSuffix:v5 signature:v10 size:v9 type:v8 compressionMethod:v7 encryptionKey:v6];

  return v11;
}

- (id)xattrsFromIndex:(unsigned int *)a3
{
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v5 = [NSArray arrayWithObjects:&v9 count:3];
  v6 = [NSSet setWithArray:v5, v9, v10];

  ++*a3;
  v7 = [(PQLResultSet *)self unarchivedObjectOfClasses:v6 atIndex:?];

  return v7;
}

- (id)fileWithDomain:(id)a3 fromIndex:(unsigned int *)a4
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = a3;
  [(PQLResultSet *)self getNode:&v11 fromIndex:a4];
  v7 = [(PQLResultSet *)self xattrsFromIndex:a4, v11, v12, v13, v14, v15];
  ++*a4;
  v8 = [(PQLResultSet *)self stringAtIndex:?];
  v9 = [MBFile fileWithDomain:v6 relativePath:v8];

  [v9 setNode:&v11];
  [v9 setExtendedAttributes:v7];

  return v9;
}

- (BOOL)checkSuccessWithError:(id *)a3
{
  v5 = [(PQLResultSet *)self error];
  if (v5)
  {
    if (MBIsInternalInstall())
    {
      v6 = [(PQLResultSet *)self _expandedSQL];
      v7 = [v5 _errorWithSQL:v6];

      if (!a3)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v7 = v5;
    if (a3)
    {
LABEL_7:
      v8 = v7;
      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_8:

  return v5 == 0;
}

- (BOOL)enumerateWithError:(id *)a3 block:(id)a4
{
  v6 = a4;
  v7 = 0;
  while ([(PQLResultSet *)self next])
  {
    v8 = objc_autoreleasePoolPush();
    v17 = v7;
    v9 = v6[2](v6, self, &v17);
    v10 = v17;

    objc_autoreleasePoolPop(v8);
    v7 = v10;
    if ((v9 & 1) == 0)
    {
      [(PQLResultSet *)self close];
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  v10 = v7;
  if (v7)
  {
    goto LABEL_8;
  }

LABEL_7:
  v11 = [(PQLResultSet *)self error];
  v10 = [v11 excludingNotFound];

  if (!v10)
  {
    v13 = 0;
    v15 = 1;
    goto LABEL_12;
  }

LABEL_8:
  v12 = [(PQLResultSet *)self _expandedSQL];
  v13 = [v10 _errorWithSQL:v12];

  if (a3)
  {
    v14 = v13;
    v15 = 0;
    *a3 = v13;
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
  v2 = [(PQLResultSet *)self stmt];
  if (v2)
  {
    v3 = sqlite3_expanded_sql(v2);
    v4 = [NSString stringWithUTF8String:v3];
    free(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_failureAtIndex:(unsigned int *)a3 childFailures:(id)a4
{
  v6 = a4;
  ++*a3;
  v7 = [(PQLResultSet *)self stringAtIndex:?];
  ++*a3;
  v8 = [(PQLResultSet *)self integerAtIndex:?];
  ++*a3;
  v9 = [(PQLResultSet *)self stringAtIndex:?];
  ++*a3;
  [(PQLResultSet *)self doubleAtIndex:?];
  v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v11 = [v6 count];
  v12 = [NSError alloc];
  if (v11 == 1)
  {
    v22[0] = NSLocalizedDescriptionKey;
    v22[1] = @"kMBErrorDateKey";
    v23[0] = v9;
    v23[1] = v10;
    v22[2] = NSUnderlyingErrorKey;
    v16 = [v6 firstObject];
    v23[2] = v16;
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
      v21[2] = v6;
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

    v16 = [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:v15];
    v18 = [v12 initWithDomain:v7 code:v8 userInfo:v16];
  }

  return v18;
}

@end