@interface MSVXPCTransactionsGet
@end

@implementation MSVXPCTransactionsGet

uint64_t ___MSVXPCTransactionsGet_block_invoke()
{
  v0 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
  v1 = _MSVXPCTransactionsGet___MSVXPCTransactions;
  _MSVXPCTransactionsGet___MSVXPCTransactions = v0;

  return os_state_add_handler();
}

_DWORD *___MSVXPCTransactionsGet_block_invoke_2()
{
  os_unfair_lock_lock(&_MSVXPCTransactionLock);
  v0 = [_MSVXPCTransactionsGet___MSVXPCTransactions allObjects];
  os_unfair_lock_unlock(&_MSVXPCTransactionLock);
  v1 = [v0 valueForKey:@"description"];
  v12 = 0;
  v2 = [MEMORY[0x1E696AE40] dataWithPropertyList:v1 format:200 options:0 error:&v12];
  v3 = v2;
  if (v12)
  {
    v4 = 0;
  }

  else
  {
    v5 = malloc_type_calloc(1uLL, [v2 length] + 200, 0x1000040BEF03554uLL);
    v4 = v5;
    if (v5)
    {
      *v5 = 1;
      v5[1] = [v3 length];
      v6 = [@"MSVXPCTransaction" dataUsingEncoding:4];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 bytes];
        v9 = [v7 length];
        if (v9 >= 0x3F)
        {
          v10 = 63;
        }

        else
        {
          v10 = v9;
        }

        memcpy(v4 + 34, v8, v10);
      }

      memcpy(v4 + 50, [v3 bytes], objc_msgSend(v3, "length"));
    }
  }

  return v4;
}

@end