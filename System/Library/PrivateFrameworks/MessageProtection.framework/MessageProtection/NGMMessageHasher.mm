@interface NGMMessageHasher
+ (id)computeHashForMessage:(id)message;
@end

@implementation NGMMessageHasher

+ (id)computeHashForMessage:(id)message
{
  messageCopy = message;
  v4 = [[NGMPBOuterMessage alloc] initWithData:messageCopy];

  if (!v4)
  {
    goto LABEL_15;
  }

  if ([(NGMPBOuterMessage *)v4 hasEncryptedPayload])
  {
    encryptedPayload = [(NGMPBOuterMessage *)v4 encryptedPayload];
    if (encryptedPayload && [(NGMPBOuterMessage *)v4 hasEphemeralPubKey])
    {
      ephemeralPubKey = [(NGMPBOuterMessage *)v4 ephemeralPubKey];
      if (ephemeralPubKey && [(NGMPBOuterMessage *)v4 hasSignature])
      {
        signature = [(NGMPBOuterMessage *)v4 signature];

        if (signature)
        {
          tetraMessage2 = objc_alloc_init(MEMORY[0x277CBEB28]);
          encryptedPayload2 = [(NGMPBOuterMessage *)v4 encryptedPayload];
          [tetraMessage2 appendData:encryptedPayload2];

          ephemeralPubKey2 = [(NGMPBOuterMessage *)v4 ephemeralPubKey];
          [tetraMessage2 appendData:ephemeralPubKey2];

          v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
          CC_SHA256([tetraMessage2 bytes], objc_msgSend(tetraMessage2, "length"), objc_msgSend(v11, "bytes"));
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
    tetraMessage = [(NGMPBOuterMessage *)v4 tetraMessage];

    if (tetraMessage)
    {
      tetraMessage2 = [(NGMPBOuterMessage *)v4 tetraMessage];
      v11 = [_TtC17MessageProtection18TetraMessageHasher hashMessage:tetraMessage2];
      goto LABEL_14;
    }
  }

LABEL_15:
  v11 = 0;
LABEL_16:

  return v11;
}

@end