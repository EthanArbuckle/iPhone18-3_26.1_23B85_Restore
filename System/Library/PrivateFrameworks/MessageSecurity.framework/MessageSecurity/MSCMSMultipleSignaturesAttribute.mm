@interface MSCMSMultipleSignaturesAttribute
- (MSCMSMultipleSignaturesAttribute)init;
- (MSCMSMultipleSignaturesAttribute)initWithAttribute:(id)a3 error:(id *)a4;
- (MSCMSSignerInfo)containingSignerInfo;
- (NSData)signedAttrsHash;
- (id)encodeAttributeWithError:(id *)a3;
- (void)setBodyHashAlgorithm:(id)a3;
- (void)setSignatureAlgorithm:(id)a3;
- (void)setSignedAttrsHashAlgorithm:(id)a3;
@end

@implementation MSCMSMultipleSignaturesAttribute

- (void)setBodyHashAlgorithm:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_bodyHashAlgorithm, a3);
    v5 = v6;
  }
}

- (void)setSignatureAlgorithm:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_signatureAlgorithm, a3);
    v5 = v6;
  }
}

- (void)setSignedAttrsHashAlgorithm:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_signedAttrsHashAlgorithm, a3);
    v5 = v6;
  }
}

- (MSCMSMultipleSignaturesAttribute)init
{
  v13.receiver = self;
  v13.super_class = MSCMSMultipleSignaturesAttribute;
  v2 = [(MSCMSMultipleSignaturesAttribute *)&v13 init];
  v3 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.2.1" error:0];
  v4 = [MSAlgorithmIdentifier algorithmIdentifierWithOID:v3];
  bodyHashAlgorithm = v2->_bodyHashAlgorithm;
  v2->_bodyHashAlgorithm = v4;

  v6 = [MSOID OIDWithString:@"1.2.840.10045.4.3.2" error:0];
  v7 = [MSAlgorithmIdentifier algorithmIdentifierWithOID:v6];
  signatureAlgorithm = v2->_signatureAlgorithm;
  v2->_signatureAlgorithm = v7;

  v9 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.2.1" error:0];
  v10 = [MSAlgorithmIdentifier algorithmIdentifierWithOID:v9];
  signedAttrsHashAlgorithm = v2->_signedAttrsHashAlgorithm;
  v2->_signedAttrsHashAlgorithm = v10;

  objc_storeWeak(&v2->_signedAttrsHash, 0);
  return v2;
}

- (id)encodeAttributeWithError:(id *)a3
{
  v42[1] = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = 0;
  v5 = [(MSAlgorithmIdentifier *)self->_bodyHashAlgorithm asn1AlgId];
  var1 = v5->var1;
  var0 = v5->var0;
  v34 = var1;
  v7 = [(MSAlgorithmIdentifier *)self->_signatureAlgorithm asn1AlgId];
  v8 = v7->var1;
  v35 = v7->var0;
  v36 = v8;
  v9 = [(MSAlgorithmIdentifier *)self->_signedAttrsHashAlgorithm asn1AlgId];
  v10 = v9->var1;
  v37 = v9->var0;
  v38 = v10;
  WeakRetained = objc_loadWeakRetained(&self->_signedAttrsHash);

  if (WeakRetained)
  {
    v12 = objc_loadWeakRetained(&self->_signedAttrsHash);
    v39 = [v12 length];

    v13 = objc_loadWeakRetained(&self->_signedAttrsHash);
    v40 = [v13 bytes];
  }

  v32 = 0;
  v14 = length_MultipleSignatures(&var0);
  v15 = [MEMORY[0x277CBEB28] dataWithLength:v14];
  if (!v15)
  {
    v19 = 12;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v16 = v15;
  v17 = encode_MultipleSignatures([v15 mutableBytes] + v14 - 1, v14, &var0, &v32);
  if (v17)
  {
    v18 = v17;

    v19 = v18;
    if (!a3)
    {
LABEL_7:
      v16 = 0;
      goto LABEL_11;
    }

LABEL_6:
    v20 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277CCA450];
    v42[0] = @"Failed encoding type MultipleSignatures";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    *a3 = [v20 errorWithDomain:@"com.apple.HeimASN1" code:v19 userInfo:v21];

    goto LABEL_7;
  }

  if (v14 != v32)
  {
    v28 = asn1_abort();
    return [(MSCMSMultipleSignaturesAttribute *)v28 initWithAttribute:v29 error:v30, v31];
  }

LABEL_11:
  v22 = [MSCMSAttribute alloc];
  v23 = [MSOID OIDWithString:@"1.2.840.113549.1.9.2.51" error:a3];
  v24 = [MEMORY[0x277CBEA60] arrayWithObject:v16];
  v25 = [(MSCMSAttribute *)v22 initWithAttributeType:v23 values:v24];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (MSCMSMultipleSignaturesAttribute)initWithAttribute:(id)a3 error:(id *)a4
{
  v6 = a3;
  v36.receiver = self;
  v36.super_class = MSCMSMultipleSignaturesAttribute;
  v7 = [(MSCMSMultipleSignaturesAttribute *)&v36 init];
  v8 = [v6 attributeType];
  v9 = [v8 isEqualToString:@"1.2.840.113549.1.9.2.51"];

  if ((v9 & 1) == 0)
  {
    if (a4)
    {
      v15 = MSErrorCMSDomain[0];
      v17 = *a4;
      v18 = @"Not a Multiple Signatures attribute according to AttributeType";
      v16 = -26275;
      goto LABEL_10;
    }

LABEL_11:
    v19 = 0;
    goto LABEL_20;
  }

  v10 = [v6 attributeValues];
  v11 = [v10 count];

  if (!v11)
  {
    if (a4)
    {
      v15 = MSErrorCMSDomain[0];
      v17 = *a4;
      v18 = @"Missing value for Multiple Signatures attribute";
      v16 = -50;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v35 = 0;
  memset(v34, 0, sizeof(v34));
  memset(v33, 0, sizeof(v33));
  v12 = [v6 attributeValues];
  v13 = [v12 objectAtIndex:0];
  v14 = nsheim_decode_MultipleSignatures(v13);

  if (!v14)
  {
    v32 = 0;
    v20 = [MSAlgorithmIdentifier algorithmIdentifierWithAsn1AlgId:v33 error:&v32];
    v21 = v32;
    bodyHashAlgorithm = v7->_bodyHashAlgorithm;
    v7->_bodyHashAlgorithm = v20;

    if (v7->_bodyHashAlgorithm)
    {
      v31 = v21;
      v23 = [MSAlgorithmIdentifier algorithmIdentifierWithAsn1AlgId:&v33[1] + 8 error:&v31];
      v24 = v31;

      signatureAlgorithm = v7->_signatureAlgorithm;
      v7->_signatureAlgorithm = v23;

      if (!v7->_signatureAlgorithm)
      {
        v21 = v24;
        if (a4)
        {
LABEL_17:
          if (v21)
          {
            v28 = v21;
            *a4 = v21;
          }
        }

LABEL_19:
        free_MultipleSignatures();
        v19 = v7;

        goto LABEL_20;
      }

      v30 = v24;
      v26 = [MSAlgorithmIdentifier algorithmIdentifierWithAsn1AlgId:v34 error:&v30];
      v21 = v30;

      signedAttrsHashAlgorithm = v7->_signedAttrsHashAlgorithm;
      v7->_signedAttrsHashAlgorithm = v26;

      if (v7->_signedAttrsHashAlgorithm)
      {
        objc_storeWeak(&v7->_signedAttrsHash, 0);
      }
    }

    if (a4)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (!a4)
  {
    goto LABEL_11;
  }

  asn1ErrorToNSError(v14, a4);
  v15 = MSErrorASN1Domain[0];
  v16 = v14;
  v17 = *a4;
  v18 = @"unable to decode Multiple Signatures attribute";
LABEL_10:
  [MSError MSErrorWithDomain:v15 code:v16 underlyingError:v17 description:v18];
  *a4 = v19 = 0;
LABEL_20:

  return v19;
}

- (MSCMSSignerInfo)containingSignerInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_containingSignerInfo);

  return WeakRetained;
}

- (NSData)signedAttrsHash
{
  WeakRetained = objc_loadWeakRetained(&self->_signedAttrsHash);

  return WeakRetained;
}

@end