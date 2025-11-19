@interface NGMECDHPublicPreKey
- (BOOL)isValidlySignedBy:(id)a3 error:(id *)a4;
- (NGMECDHPublicPreKey)initWithPublicKey:(id)a3 signature:(id)a4 timestamp:(double)a5;
- (id)description;
- (id)initRemotePrekeyWithPublicPrekeyPB:(id)a3 signedBy:(id)a4 error:(id *)a5;
@end

@implementation NGMECDHPublicPreKey

- (id)initRemotePrekeyWithPublicPrekeyPB:(id)a3 signedBy:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [DHPublicKey alloc];
  v11 = [v8 prekey];
  v12 = [(PublicKey *)v10 initWithData:v11 error:a5];

  if (!v12)
  {
    MPLogAndAssignError(100, a5, @"Failed to initialize the DHPublicKey for the prekey.");
    goto LABEL_5;
  }

  v13 = [v8 prekeySignature];
  [v8 timestamp];
  self = [(NGMECDHPublicPreKey *)self initWithPublicKey:v12 signature:v13 timestamp:?];

  if (![(NGMECDHPublicPreKey *)self isValidlySignedBy:v9 error:a5])
  {
LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  self = self;
  v14 = self;
LABEL_6:

  return v14;
}

- (NGMECDHPublicPreKey)initWithPublicKey:(id)a3 signature:(id)a4 timestamp:(double)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = NGMECDHPublicPreKey;
  v11 = [(NGMECDHPublicPreKey *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dhKey, a3);
    objc_storeStrong(&v12->_signature, a4);
    v12->_timestamp = a5;
  }

  return v12;
}

- (BOOL)isValidlySignedBy:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NGMECDHPublicPreKey *)self signature];
  v8 = [[NGMPrekeySignatureFormatter alloc] initWithPublicPrekey:self];
  v9 = [v6 verifySignature:v7 formatter:v8];

  if (v9)
  {
    [(NGMECDHPublicPreKey *)self timestamp];
    if ([NGMTimeBasedEvaluations validateFetchedPrekeyTimestamp:2 forEvaluationType:?])
    {
      return 1;
    }

    [(NGMECDHPublicPreKey *)self timestamp];
    v11 = @"The ephemeral prekey has expired.";
    if (v13 >= 1554681600.0)
    {
      v12 = 102;
    }

    else
    {
      v12 = 103;
    }
  }

  else
  {
    v11 = @"The prekey was incorrectly signed, rejecting.";
    v12 = 101;
  }

  MPLogAndAssignError(v12, a4, v11);
  return 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NGMECDHPublicPreKey *)self dhKey];
  v5 = [v4 description];
  [(NGMECDHPublicPreKey *)self timestamp];
  v7 = v6;
  v8 = [(NGMECDHPublicPreKey *)self signature];
  v9 = [v3 stringWithFormat:@"NGMPublicPreKey with DHKey: %@\n Timestamp:%f \n Signature: %@.", v5, v7, v8];

  return v9;
}

@end