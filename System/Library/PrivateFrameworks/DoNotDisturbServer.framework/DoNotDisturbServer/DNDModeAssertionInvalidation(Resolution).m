@interface DNDModeAssertionInvalidation(Resolution)
- (id)resolveWithExpectedRemoteDeviceIdentifier:()Resolution localDeviceIdentifier:remoteDeviceIdentifier:;
@end

@implementation DNDModeAssertionInvalidation(Resolution)

- (id)resolveWithExpectedRemoteDeviceIdentifier:()Resolution localDeviceIdentifier:remoteDeviceIdentifier:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 assertion];
  v12 = [v11 resolveWithExpectedRemoteDeviceIdentifier:v8 localDeviceIdentifier:v9 remoteDeviceIdentifier:v10];
  v13 = v12;
  if (v11 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = 1;
    if (v11 && v12)
    {
      v14 = [v11 isEqual:v12] ^ 1;
    }
  }

  v33 = v11;
  v15 = [a1 source];
  v16 = [v15 resolveWithExpectedRemoteDeviceIdentifier:v8 localDeviceIdentifier:v9 remoteDeviceIdentifier:v10];
  v17 = v16;
  if (v15 == v16)
  {
    v18 = 0;
  }

  else
  {
    if (!v15 || !v16)
    {
      goto LABEL_12;
    }

    v18 = [v15 isEqual:v16] ^ 1;
  }

  if ((v14 | v18))
  {
LABEL_12:
    v19 = v10;
    v20 = v8;
    v21 = objc_alloc(MEMORY[0x277D05968]);
    v22 = [a1 invalidationDate];
    v23 = [a1 details];
    v24 = v9;
    v25 = [a1 reason];
    v26 = [a1 reasonOverride];
    v27 = v21;
    v8 = v20;
    v10 = v19;
    v28 = v32;
    v29 = v25;
    v9 = v24;
    v30 = [v27 initWithAssertion:v32 invalidationDate:v22 details:v23 source:v17 reason:v29 reasonOverride:v26];

    goto LABEL_14;
  }

  v30 = a1;
  v28 = v32;
LABEL_14:

  return v30;
}

@end