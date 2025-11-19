@interface CSClient
- (CSClient)initWithHandshake:(id)a3;
- (NSString)displayName;
- (NSString)socialProfileIdentifier;
- (id)description;
@end

@implementation CSClient

- (CSClient)initWithHandshake:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CSClient;
  v5 = [(CSClient *)&v19 init];
  if (v5)
  {
    v6 = [v4 idsIdentifier];
    v7 = [v6 copy];
    v8 = *(v5 + 1);
    *(v5 + 1) = v7;

    v9 = [v4 sessionPairingIdentifier];
    v10 = [v9 copy];
    v11 = *(v5 + 2);
    *(v5 + 2) = v10;

    v12 = [v4 participantInfo];
    v13 = [v12 copy];
    v14 = *(v5 + 3);
    *(v5 + 3) = v13;

    if (v4)
    {
      [v4 operatingSystemVersion];
    }

    else
    {
      v17 = 0uLL;
      v18 = 0;
    }

    *(v5 + 40) = v17;
    *(v5 + 7) = v18;
    [v4 protocolVersion];
    *(v5 + 4) = v15;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(CSClient *)self idsIdentifier];
  v5 = [(CSClient *)self sessionPairingIdentifier];
  v6 = [(CSClient *)self participantInfo];
  [(CSClient *)self protocolVersion];
  v8 = [v3 initWithFormat:@"<CSClient idsDeviceIdentifier:%@ sessionPairingIdentifier:%@ participantInfo:%@ protocolVersion:%f>", v4, v5, v6, v7];

  return v8;
}

- (NSString)displayName
{
  v2 = [(CSClient *)self participantInfo];
  v3 = [v2 displayName];

  return v3;
}

- (NSString)socialProfileIdentifier
{
  v2 = [(CSClient *)self participantInfo];
  v3 = [v2 socialProfileIdentifier];

  return v3;
}

@end