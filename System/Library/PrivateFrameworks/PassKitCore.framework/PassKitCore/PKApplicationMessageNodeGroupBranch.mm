@interface PKApplicationMessageNodeGroupBranch
- (id)_primaryRegistration;
@end

@implementation PKApplicationMessageNodeGroupBranch

- (id)_primaryRegistration
{
  if (!a1)
  {
    return 0;
  }

  v1 = [*(a1 + 40) objectAtIndexedSubscript:0];
  v2 = v1;
  if (v1 && (v3 = *(v1 + 40)) != 0)
  {
    v4 = v3;
    v5 = v3[1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __53__PKApplicationMessageNodeGroupBranch__sortWithDate___block_invoke(uint64_t a1, id *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = a2[5];
    a2 = v6;
    if (v6)
    {
      v7 = v6[1];
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = 0;
      goto LABEL_9;
    }
  }

  v7 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = v5[5];
  v9 = v8;
  if (!v8)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_6;
  }

  v10 = v8[1];
LABEL_6:
  v11 = PKApplicationMessageRegistrationComparison(v7, v10, *(a1 + 32));

  return v11;
}

@end