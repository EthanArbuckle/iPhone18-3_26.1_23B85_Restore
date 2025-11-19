@interface NGMMessageHasher
+ (id)computeHashForMessage:(id)a3;
@end

@implementation NGMMessageHasher

+ (id)computeHashForMessage:(id)a3
{
  v3 = a3;
  v4 = [[NGMPBOuterMessage alloc] initWithData:v3];

  if (!v4)
  {
    goto LABEL_15;
  }

  if ([(NGMPBOuterMessage *)v4 hasEncryptedPayload])
  {
    v5 = [(NGMPBOuterMessage *)v4 encryptedPayload];
    if (v5 && [(NGMPBOuterMessage *)v4 hasEphemeralPubKey])
    {
      v6 = [(NGMPBOuterMessage *)v4 ephemeralPubKey];
      if (v6 && [(NGMPBOuterMessage *)v4 hasSignature])
      {
        v7 = [(NGMPBOuterMessage *)v4 signature];

        if (v7)
        {
          v8 = objc_alloc_init(MEMORY[0x277CBEB28]);
          v9 = [(NGMPBOuterMessage *)v4 encryptedPayload];
          [v8 appendData:v9];

          v10 = [(NGMPBOuterMessage *)v4 ephemeralPubKey];
          [v8 appendData:v10];

          v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
          CC_SHA256([v8 bytes], objc_msgSend(v8, "length"), objc_msgSend(v11, "bytes"));
LABEL_14:

          goto LABEL_16;
        }

        goto LABEL_11;
      }
    }
  }

LABEL_11:
  if ([(NGMPBOuterMessage *)v4 hasTetraMessage])
  {
    v12 = [(NGMPBOuterMessage *)v4 tetraMessage];

    if (v12)
    {
      v8 = [(NGMPBOuterMessage *)v4 tetraMessage];
      v11 = [_TtC17MessageProtection18TetraMessageHasher hashMessage:v8];
      goto LABEL_14;
    }
  }

LABEL_15:
  v11 = 0;
LABEL_16:

  return v11;
}

@end