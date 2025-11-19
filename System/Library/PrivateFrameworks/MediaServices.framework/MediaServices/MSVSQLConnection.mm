@interface MSVSQLConnection
@end

@implementation MSVSQLConnection

void __45___MSVSQLConnection__cloneWithOptions_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 8);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  obj = v10;
  v11 = a3;
  v12 = a2;
  if (v7)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ATTACH %@ AS %@", v11, v12];
    if ([v7 executeStatementString:v13 error:&obj])
    {
      [v7[2] setObject:v11 forKeyedSubscript:v12];
    }
  }

  objc_storeStrong(v9, obj);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

BOOL __55___MSVSQLConnection_unregisterFunctionNamed_arguments___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3[1];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6 == *(a1 + 32) || [v6 isEqual:?])
  {
    if (v4)
    {
      v8 = v4[2];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8 == *(a1 + 40);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL __55___MSVSQLConnection_unregisterFunctionNamed_arguments___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3[1];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6 == *(a1 + 32) || [v6 isEqual:?])
  {
    if (v4)
    {
      v8 = v4[2];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8 == *(a1 + 40);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end