@interface HMFPairingIdentity(AppleMediaAccessory)
- (id)pbData;
- (id)protoPayload;
- (void)initWithProtoData:()AppleMediaAccessory;
@end

@implementation HMFPairingIdentity(AppleMediaAccessory)

- (id)pbData
{
  protoPayload = [self protoPayload];
  data = [protoPayload data];

  return data;
}

- (id)protoPayload
{
  v2 = objc_alloc_init(MEMORY[0x277CD1728]);
  identifier = [self identifier];
  [v2 setIdentifier:identifier];

  publicKey = [self publicKey];
  data = [publicKey data];
  [v2 setPublicPairingKeyData:data];

  return v2;
}

- (void)initWithProtoData:()AppleMediaAccessory
{
  v4 = MEMORY[0x277CD1728];
  v5 = a3;
  v6 = [[v4 alloc] initWithData:v5];

  if (!v6)
  {
    goto LABEL_5;
  }

  selfCopy = [v6 identifier];
  if (selfCopy)
  {
    publicPairingKeyData = [v6 publicPairingKeyData];

    if (publicPairingKeyData)
    {
      v9 = objc_alloc(MEMORY[0x277D0F8B0]);
      publicPairingKeyData2 = [v6 publicPairingKeyData];
      v11 = [v9 initWithPairingKeyData:publicPairingKeyData2];

      identifier = [v6 identifier];
      self = [self initWithIdentifier:identifier publicKey:v11 privateKey:0];

      selfCopy = self;
      goto LABEL_6;
    }

LABEL_5:
    selfCopy = 0;
  }

LABEL_6:

  return selfCopy;
}

@end