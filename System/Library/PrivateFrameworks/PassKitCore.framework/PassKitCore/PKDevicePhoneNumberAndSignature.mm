@interface PKDevicePhoneNumberAndSignature
@end

@implementation PKDevicePhoneNumberAndSignature

uint64_t ___PKDevicePhoneNumberAndSignature_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 uuid];
  v8 = [v6 uuid];
  if (!*(a1 + 32))
  {
    goto LABEL_10;
  }

  v9 = [v7 isEqual:?];
  v10 = v9;
  if (!*(a1 + 32))
  {
    if (v9)
    {
      v12 = -1;
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v11 = v9 ^ [v8 isEqual:?];
  v12 = (v10 & 1) != 0 ? -1 : 1;
  if ((v11 & 1) == 0)
  {
LABEL_10:
    v13 = [v5 slotID];
    v14 = [v6 slotID] != 1;
    v15 = v13 == 1;
    if (v13 == 1)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v15 != v14)
    {
      v16 = [v7 UUIDString];
      v17 = [v8 UUIDString];
      v12 = [v16 compare:v17];
    }
  }

LABEL_15:

  return v12;
}

@end