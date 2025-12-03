@interface DNDModeAssertionInvalidation(Resolution)
- (id)resolveWithExpectedRemoteDeviceIdentifier:()Resolution localDeviceIdentifier:remoteDeviceIdentifier:;
@end

@implementation DNDModeAssertionInvalidation(Resolution)

- (id)resolveWithExpectedRemoteDeviceIdentifier:()Resolution localDeviceIdentifier:remoteDeviceIdentifier:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  assertion = [self assertion];
  v12 = [assertion resolveWithExpectedRemoteDeviceIdentifier:v8 localDeviceIdentifier:v9 remoteDeviceIdentifier:v10];
  v13 = v12;
  if (assertion == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = 1;
    if (assertion && v12)
    {
      v14 = [assertion isEqual:v12] ^ 1;
    }
  }

  v33 = assertion;
  source = [self source];
  v16 = [source resolveWithExpectedRemoteDeviceIdentifier:v8 localDeviceIdentifier:v9 remoteDeviceIdentifier:v10];
  v17 = v16;
  if (source == v16)
  {
    v18 = 0;
  }

  else
  {
    if (!source || !v16)
    {
      goto LABEL_12;
    }

    v18 = [source isEqual:v16] ^ 1;
  }

  if ((v14 | v18))
  {
LABEL_12:
    v19 = v10;
    v20 = v8;
    v21 = objc_alloc(MEMORY[0x277D05968]);
    invalidationDate = [self invalidationDate];
    details = [self details];
    v24 = v9;
    reason = [self reason];
    reasonOverride = [self reasonOverride];
    v27 = v21;
    v8 = v20;
    v10 = v19;
    v28 = v32;
    v29 = reason;
    v9 = v24;
    selfCopy = [v27 initWithAssertion:v32 invalidationDate:invalidationDate details:details source:v17 reason:v29 reasonOverride:reasonOverride];

    goto LABEL_14;
  }

  selfCopy = self;
  v28 = v32;
LABEL_14:

  return selfCopy;
}

@end