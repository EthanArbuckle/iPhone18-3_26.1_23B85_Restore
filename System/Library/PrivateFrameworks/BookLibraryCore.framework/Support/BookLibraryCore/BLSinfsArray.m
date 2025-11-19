@interface BLSinfsArray
- (BLSinfsArray)initWithSINFs:(id)a3;
- (BOOL)_isRecognizedProperty:(id)a3;
- (id)_copyValueForSINF:(id)a3 property:(id)a4 error:(id *)a5;
- (id)copyValueForField:(int64_t)a3 error:(id *)a4;
- (id)copyValueForProperty:(id)a3 error:(id *)a4;
@end

@implementation BLSinfsArray

- (BLSinfsArray)initWithSINFs:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BLSinfsArray;
  v5 = [(BLSinfsArray *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    sinfs = v5->_sinfs;
    v5->_sinfs = v6;
  }

  return v5;
}

- (id)copyValueForField:(int64_t)a3 error:(id *)a4
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_sinfs;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v7)
  {
LABEL_9:

LABEL_13:
    v14 = sub_1000A91BC(@"FairPlayErrorDomain", 3, 0, 0);
    v13 = 0;
    if (!a4)
    {
      goto LABEL_15;
    }

LABEL_14:
    v14 = v14;
    *a4 = v14;
    goto LABEL_15;
  }

  v8 = v7;
  v9 = *v18;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v18 != v9)
    {
      objc_enumerationMutation(v6);
    }

    v11 = *(*(&v17 + 1) + 8 * v10);
    v16 = 0;
    if (!sub_1000AA8E8(v11, a3, &v16))
    {
      break;
    }

    if (v8 == ++v10)
    {
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        goto LABEL_3;
      }

      goto LABEL_9;
    }
  }

  v12 = [NSNumber alloc];
  v13 = [v12 initWithUnsignedLongLong:v16];

  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = 0;
  if (a4)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v13;
}

- (id)copyValueForProperty:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![(BLSinfsArray *)self _isRecognizedProperty:v6])
  {
    v16 = 2;
LABEL_15:
    v15 = sub_1000A91BC(@"FairPlayErrorDomain", v16, 0, 0);
    v13 = 0;
    goto LABEL_16;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_sinfs;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v19 = 0;
        v13 = [(BLSinfsArray *)self _copyValueForSINF:v12 property:v6 error:&v19];
        v14 = v19;
        if (v13 | v14)
        {
          v15 = v14;
          goto LABEL_13;
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
  v13 = 0;
LABEL_13:

  if (!(v13 | v15))
  {
    v16 = 3;
    goto LABEL_15;
  }

LABEL_16:
  if (a4)
  {
    v17 = v15;
    *a4 = v15;
  }

  return v13;
}

- (id)_copyValueForSINF:(id)a3 property:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if ([v8 isEqualToString:@"SinfPropertyAccountIdentifier"])
  {
    v15 = 0;
    v9 = v7;
    v10 = 2;
  }

  else
  {
    if (![v8 isEqualToString:@"SinfPropertyFairPlayKeyIdentifier"])
    {
      v12 = 0;
      goto LABEL_11;
    }

    v15 = 0;
    v9 = v7;
    v10 = 5;
  }

  v11 = sub_1000AA8E8(v9, v10, &v15);
  v12 = 0;
  if (!v11)
  {
    v13 = [NSNumber alloc];
    v12 = [v13 initWithUnsignedLongLong:v15];
  }

  if (a5 && v11)
  {
    *a5 = sub_1000A91BC(@"FairPlayErrorDomain", v11, 0, 0);
  }

LABEL_11:

  return v12;
}

- (BOOL)_isRecognizedProperty:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SinfPropertyAccountIdentifier"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"SinfPropertyFairPlayKeyIdentifier"];
  }

  return v4;
}

@end