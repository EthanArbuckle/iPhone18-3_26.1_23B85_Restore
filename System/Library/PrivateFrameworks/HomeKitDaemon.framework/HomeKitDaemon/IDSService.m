@interface IDSService
@end

@implementation IDSService

uint64_t __53__IDSService_HMDAccounts__hmd_preferredDisplayHandle__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqual:*(a1 + 32)])
  {
    v4 = [v3 isLocal] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __53__IDSService_HMDAccounts__hmd_preferredDisplayHandle__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 isLocal];
  if (v6 == [v5 isLocal])
  {
    v8 = [v4 type];
    if (v8 != [v5 type])
    {
      if ([v4 type] == 1)
      {
        v7 = 1;
        goto LABEL_11;
      }

      if ([v5 type] == 1)
      {
        v7 = -1;
        goto LABEL_11;
      }
    }

    v7 = 0;
  }

  else if ([v4 isLocal])
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

LABEL_11:

  return v7;
}

uint64_t __46__IDSService_HMDAccounts__hmd_preferredHandle__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 URI];
  v4 = [v3 prefixedURI];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

id __46__IDSService_HMDAccounts__hmd_preferredHandle__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 URI];
  v3 = [v2 unprefixedURI];

  return v3;
}

@end