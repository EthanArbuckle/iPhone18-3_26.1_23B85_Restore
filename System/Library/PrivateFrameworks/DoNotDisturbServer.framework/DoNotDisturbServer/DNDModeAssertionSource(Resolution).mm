@interface DNDModeAssertionSource(Resolution)
- (id)resolveWithExpectedRemoteDeviceIdentifier:()Resolution localDeviceIdentifier:remoteDeviceIdentifier:;
@end

@implementation DNDModeAssertionSource(Resolution)

- (id)resolveWithExpectedRemoteDeviceIdentifier:()Resolution localDeviceIdentifier:remoteDeviceIdentifier:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = [v11 deviceIdentifier];
  v13 = v12;
  if (!v12)
  {
    v15 = v9;
    if (!v9)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v12 == v8)
  {
    if (v8 == v10)
    {
      goto LABEL_15;
    }

LABEL_10:
    if (v10)
    {
      v16 = [v13 isEqual:v10];
      v15 = v10;
      if (v16)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = 0;
    }

LABEL_14:
    v17 = MEMORY[0x277D05988];
    v18 = v15;
    v19 = [v17 alloc];
    v20 = [v11 clientIdentifier];
    v21 = [v19 initWithClientIdentifier:v20 deviceIdentifier:v18];

    v11 = v21;
    goto LABEL_15;
  }

  if (v8)
  {
    v14 = [v12 isEqual:v8];
    if (v13 != v10 && (v14 & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_15:

  return v11;
}

@end