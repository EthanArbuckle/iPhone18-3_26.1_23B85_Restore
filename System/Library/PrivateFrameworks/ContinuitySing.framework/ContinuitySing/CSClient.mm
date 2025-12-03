@interface CSClient
- (CSClient)initWithHandshake:(id)handshake;
- (NSString)displayName;
- (NSString)socialProfileIdentifier;
- (id)description;
@end

@implementation CSClient

- (CSClient)initWithHandshake:(id)handshake
{
  handshakeCopy = handshake;
  v19.receiver = self;
  v19.super_class = CSClient;
  v5 = [(CSClient *)&v19 init];
  if (v5)
  {
    idsIdentifier = [handshakeCopy idsIdentifier];
    v7 = [idsIdentifier copy];
    v8 = *(v5 + 1);
    *(v5 + 1) = v7;

    sessionPairingIdentifier = [handshakeCopy sessionPairingIdentifier];
    v10 = [sessionPairingIdentifier copy];
    v11 = *(v5 + 2);
    *(v5 + 2) = v10;

    participantInfo = [handshakeCopy participantInfo];
    v13 = [participantInfo copy];
    v14 = *(v5 + 3);
    *(v5 + 3) = v13;

    if (handshakeCopy)
    {
      [handshakeCopy operatingSystemVersion];
    }

    else
    {
      v17 = 0uLL;
      v18 = 0;
    }

    *(v5 + 40) = v17;
    *(v5 + 7) = v18;
    [handshakeCopy protocolVersion];
    *(v5 + 4) = v15;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  idsIdentifier = [(CSClient *)self idsIdentifier];
  sessionPairingIdentifier = [(CSClient *)self sessionPairingIdentifier];
  participantInfo = [(CSClient *)self participantInfo];
  [(CSClient *)self protocolVersion];
  v8 = [v3 initWithFormat:@"<CSClient idsDeviceIdentifier:%@ sessionPairingIdentifier:%@ participantInfo:%@ protocolVersion:%f>", idsIdentifier, sessionPairingIdentifier, participantInfo, v7];

  return v8;
}

- (NSString)displayName
{
  participantInfo = [(CSClient *)self participantInfo];
  displayName = [participantInfo displayName];

  return displayName;
}

- (NSString)socialProfileIdentifier
{
  participantInfo = [(CSClient *)self participantInfo];
  socialProfileIdentifier = [participantInfo socialProfileIdentifier];

  return socialProfileIdentifier;
}

@end