@interface KCAESGCMDuplexSession
+ (id)sessionAsReceiver:(id)receiver context:(unint64_t)context;
+ (id)sessionAsSender:(id)sender context:(unint64_t)context;
- (BOOL)GCM:(const ccmode_gcm *)m context:(id *)context iv:(id)iv size:(unint64_t)size data:(const char *)data processed:(char *)processed tag:(char *)tag error:(id *)self0;
- (KCAESGCMDuplexSession)initWithCoder:(id)coder;
- (id)decryptAndVerify:(id)verify error:(id *)error;
- (id)encrypt:(id)encrypt error:(id *)error;
- (unint64_t)encryptCapsuleSize:(id)size IV:(id)v;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KCAESGCMDuplexSession

- (void)dealloc
{
  if ([(KCAESGCMDuplexSession *)self send])
  {
    ccaes_gcm_encrypt_mode();
    ccgcm_context_size();
    [(KCAESGCMDuplexSession *)self send];
    cc_clear();
    free([(KCAESGCMDuplexSession *)self send]);
  }

  if ([(KCAESGCMDuplexSession *)self receive])
  {
    ccaes_gcm_decrypt_mode();
    ccgcm_context_size();
    [(KCAESGCMDuplexSession *)self receive];
    cc_clear();
    free([(KCAESGCMDuplexSession *)self receive]);
  }

  v3.receiver = self;
  v3.super_class = KCAESGCMDuplexSession;
  [(KCAESGCMDuplexSession *)&v3 dealloc];
}

- (id)decryptAndVerify:(id)verify error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  verifyCopy = verify;
  verifyCopy2 = verify;
  bytes = [verifyCopy2 bytes];
  v10 = [verifyCopy2 length];

  v11 = bytes + v10;
  v38 = 0;
  v12 = ccder_decode_constructed_tl();
  if (!v12 || v38 != v11)
  {
    KCJoiningErrorCreate(1, error, @"decode failed", v13, v14, v15, v16, v17, v36);
    v29 = 0;
    goto LABEL_18;
  }

  v37 = 0;
  v18 = kcder_decode_data_internal(&v37, 1, error, v12, v11);
  v19 = v37;
  v39 = v18;
  if (v18)
  {
    v20 = ccder_decode_constructed_tl();
    v21 = v39;
    v22 = ccder_decode_constructed_tl();
    if (v39)
    {
      if (v39 == v11)
      {
        v30 = v22;
        if (v11 - v22 == 16)
        {
          v31 = v21 - v20;
          v32 = [MEMORY[0x277CBEB28] dataWithLength:v21 - v20];
          v40 = *v30;
          if (-[KCAESGCMDuplexSession GCM:context:iv:size:data:processed:tag:error:](self, "GCM:context:iv:size:data:processed:tag:error:", ccaes_gcm_decrypt_mode(), -[KCAESGCMDuplexSession receive](self, "receive"), v19, v31, v20, [v32 mutableBytes], &v40, error))
          {
            v33 = v32;
          }

          else
          {
            v33 = 0;
          }

          v29 = v33;

          goto LABEL_17;
        }

        v36 = v11 - v22;
        v28 = @"Unexpected tag size: %ld";
      }

      else
      {
        v28 = @"Extra space";
      }
    }

    else
    {
      v28 = @"Decode failure";
    }

    KCJoiningErrorCreate(1, error, v28, v23, v24, v25, v26, v27, v36);
  }

  v29 = 0;
LABEL_17:

LABEL_18:
  v34 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)encrypt:(id)encrypt error:(id *)error
{
  encryptCopy = encrypt;
  v7 = [MEMORY[0x277CBEB28] dataWithRandomBytes:16];
  v8 = [MEMORY[0x277CBEB28] dataWithLength:{-[KCAESGCMDuplexSession encryptCapsuleSize:IV:](self, "encryptCapsuleSize:IV:", encryptCopy, v7)}];
  [v8 mutableBytes];
  [v8 length];
  bytes = [v8 bytes];
  v24 = 0;
  v25 = 0;
  v10 = [encryptCopy length];
  kcder_encode_raw_octet_space(16, &v25);
  kcder_encode_raw_octet_space(v10, &v24);
  kcder_encode_data(v7);
  if (ccder_encode_constructed_tl() == bytes)
  {
    v17 = ccaes_gcm_encrypt_mode();
    send = [(KCAESGCMDuplexSession *)self send];
    v19 = [encryptCopy length];
    bytes2 = [encryptCopy bytes];
    if ([(KCAESGCMDuplexSession *)self GCM:v17 context:send iv:v7 size:v19 data:bytes2 processed:v24 tag:v25 error:error])
    {
      v21 = v8;
    }

    else
    {
      v21 = 0;
    }

    v16 = v21;
  }

  else
  {
    KCJoiningErrorCreate(0, error, @"Failed to allocate space for der", v11, v12, v13, v14, v15, v23);
    v16 = 0;
  }

  return v16;
}

- (BOOL)GCM:(const ccmode_gcm *)m context:(id *)context iv:(id)iv size:(unint64_t)size data:(const char *)data processed:(char *)processed tag:(char *)tag error:(id *)self0
{
  ivCopy = iv;
  v11 = ccgcm_reset();
  if (CoreCryptoError(v11, error, @"ccgcm_reset failed: %d", v12, v13, v14, v15, v16, v11) && ([ivCopy length], objc_msgSend(ivCopy, "bytes"), v17 = ccgcm_set_iv(), CoreCryptoError(v17, error, @"ccgcm_set_iv failed: %d", v18, v19, v20, v21, v22, v17)) && (v23 = ccgcm_update(), CoreCryptoError(v23, error, @"ccgcm_update failed: %d", v24, v25, v26, v27, v28, v23)))
  {
    v29 = ccgcm_finalize();
    v35 = CoreCryptoError(v29, error, @"ccgcm_finalize failed: %d", v30, v31, v32, v33, v34, v29);
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (unint64_t)encryptCapsuleSize:(id)size IV:(id)v
{
  sizeCopy = size;
  [v length];
  v6 = ccder_sizeof_raw_octet_string();
  if (v6)
  {
    [sizeCopy length];
    if (ccder_sizeof_raw_octet_string() && ([MEMORY[0x277CBEB28] dataWithLength:16], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "length"), v8 = ccder_sizeof_raw_octet_string(), v7, v8))
    {
      v6 = ccder_sizeof();
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t __97__KCAESGCMDuplexSession_initWithSecret_context_as_altDSID_pairingUUID_piggybackingVersion_epoch___block_invoke()
{
  v0 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:"send->recv" length:10 freeWhenDone:0];
  v1 = kdfInfoSendToReceive;
  kdfInfoSendToReceive = v0;

  kdfInfoReceiveToSend = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:"recv->send" length:10 freeWhenDone:0];

  return MEMORY[0x2821F96F8]();
}

- (KCAESGCMDuplexSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"asSender"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secret"];
  v7 = [coderCopy decodeInt64ForKey:@"context"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v10 = [coderCopy decodeInt64ForKey:@"piggy"];
  v11 = [coderCopy decodeInt64ForKey:@"epoch"];

  v12 = [(KCAESGCMDuplexSession *)self initWithSecret:v6 context:v7 as:v5 altDSID:v8 pairingUUID:v9 piggybackingVersion:v10 epoch:v11];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[KCAESGCMDuplexSession asSender](self forKey:{"asSender"), @"asSender"}];
  secret = [(KCAESGCMDuplexSession *)self secret];
  [coderCopy encodeObject:secret forKey:@"secret"];

  [coderCopy encodeInt64:-[KCAESGCMDuplexSession context](self forKey:{"context"), @"context"}];
  altDSID = [(KCAESGCMDuplexSession *)self altDSID];
  [coderCopy encodeObject:altDSID forKey:@"altDSID"];

  pairingUUID = [(KCAESGCMDuplexSession *)self pairingUUID];
  [coderCopy encodeObject:pairingUUID forKey:@"uuid"];

  [coderCopy encodeInt64:-[KCAESGCMDuplexSession piggybackingVersion](self forKey:{"piggybackingVersion"), @"piggy"}];
  [coderCopy encodeInt64:-[KCAESGCMDuplexSession epoch](self forKey:{"epoch"), @"epoch"}];
}

+ (id)sessionAsReceiver:(id)receiver context:(unint64_t)context
{
  receiverCopy = receiver;
  v6 = [[KCAESGCMDuplexSession alloc] initAsReceiver:receiverCopy context:context];

  return v6;
}

+ (id)sessionAsSender:(id)sender context:(unint64_t)context
{
  senderCopy = sender;
  v6 = [[KCAESGCMDuplexSession alloc] initAsSender:senderCopy context:context];

  return v6;
}

@end