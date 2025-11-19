@interface MPCPIACountFailedStoreIDs
@end

@implementation MPCPIACountFailedStoreIDs

uint64_t ___MPCPIACountFailedStoreIDs_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [(_MPCAccumulatorProgressiveResult *)v9 isResolved];
  if (v5)
  {
    v5 = [*(a1 + 32) numberOfItemsInSection:a3];
    v6 = v9;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v9 == 0;
    }

    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = v9;
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  v5 = [v6[11] count];
  v6 = v9;
  if (v5)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

LABEL_10:

  return MEMORY[0x1EEE66BB8](v5, v6);
}

uint64_t ___MPCPIACountFailedStoreIDs_block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [(_MPCAccumulatorProgressiveResult *)v6 isResolved];
  v4 = v6;
  if ((v3 & 1) == 0)
  {
    if (v6)
    {
      v3 = [v6[11] count];
      v4 = v6;
      if (v3)
      {
        ++*(*(*(a1 + 32) + 8) + 24);
      }
    }
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

@end