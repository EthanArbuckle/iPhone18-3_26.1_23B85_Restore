@interface NGMECDHPublicPreKey
- (BOOL)isValidlySignedBy:(id)by error:(id *)error;
- (NGMECDHPublicPreKey)initWithPublicKey:(id)key signature:(id)signature timestamp:(double)timestamp;
- (id)description;
- (id)initRemotePrekeyWithPublicPrekeyPB:(id)b signedBy:(id)by error:(id *)error;
@end

@implementation NGMECDHPublicPreKey

- (id)initRemotePrekeyWithPublicPrekeyPB:(id)b signedBy:(id)by error:(id *)error
{
  bCopy = b;
  byCopy = by;
  v10 = [DHPublicKey alloc];
  prekey = [bCopy prekey];
  v12 = [(PublicKey *)v10 initWithData:prekey error:error];

  if (!v12)
  {
    MPLogAndAssignError(100, error, @"Failed to initialize the DHPublicKey for the prekey.");
    goto LABEL_5;
  }

  prekeySignature = [bCopy prekeySignature];
  [bCopy timestamp];
  self = [(NGMECDHPublicPreKey *)self initWithPublicKey:v12 signature:prekeySignature timestamp:?];

  if (![(NGMECDHPublicPreKey *)self isValidlySignedBy:byCopy error:error])
  {
LABEL_5:
    selfCopy = 0;
    goto LABEL_6;
  }

  self = self;
  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (NGMECDHPublicPreKey)initWithPublicKey:(id)key signature:(id)signature timestamp:(double)timestamp
{
  keyCopy = key;
  signatureCopy = signature;
  v14.receiver = self;
  v14.super_class = NGMECDHPublicPreKey;
  v11 = [(NGMECDHPublicPreKey *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dhKey, key);
    objc_storeStrong(&v12->_signature, signature);
    v12->_timestamp = timestamp;
  }

  return v12;
}

- (BOOL)isValidlySignedBy:(id)by error:(id *)error
{
  byCopy = by;
  signature = [(NGMECDHPublicPreKey *)self signature];
  v8 = [[NGMPrekeySignatureFormatter alloc] initWithPublicPrekey:self];
  v9 = [byCopy verifySignature:signature formatter:v8];

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

  MPLogAndAssignError(v12, error, v11);
  return 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  dhKey = [(NGMECDHPublicPreKey *)self dhKey];
  v5 = [dhKey description];
  [(NGMECDHPublicPreKey *)self timestamp];
  v7 = v6;
  signature = [(NGMECDHPublicPreKey *)self signature];
  v9 = [v3 stringWithFormat:@"NGMPublicPreKey with DHKey: %@\n Timestamp:%f \n Signature: %@.", v5, v7, signature];

  return v9;
}

@end