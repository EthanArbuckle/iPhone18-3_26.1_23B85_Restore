@interface MSCMSMultipleSignaturesAttribute
- (MSCMSMultipleSignaturesAttribute)init;
- (MSCMSMultipleSignaturesAttribute)initWithAttribute:(id)attribute error:(id *)error;
- (MSCMSSignerInfo)containingSignerInfo;
- (NSData)signedAttrsHash;
- (id)encodeAttributeWithError:(id *)error;
- (void)setBodyHashAlgorithm:(id)algorithm;
- (void)setSignatureAlgorithm:(id)algorithm;
- (void)setSignedAttrsHashAlgorithm:(id)algorithm;
@end

@implementation MSCMSMultipleSignaturesAttribute

- (void)setBodyHashAlgorithm:(id)algorithm
{
  algorithmCopy = algorithm;
  if (algorithmCopy)
  {
    v6 = algorithmCopy;
    objc_storeStrong(&self->_bodyHashAlgorithm, algorithm);
    algorithmCopy = v6;
  }
}

- (void)setSignatureAlgorithm:(id)algorithm
{
  algorithmCopy = algorithm;
  if (algorithmCopy)
  {
    v6 = algorithmCopy;
    objc_storeStrong(&self->_signatureAlgorithm, algorithm);
    algorithmCopy = v6;
  }
}

- (void)setSignedAttrsHashAlgorithm:(id)algorithm
{
  algorithmCopy = algorithm;
  if (algorithmCopy)
  {
    v6 = algorithmCopy;
    objc_storeStrong(&self->_signedAttrsHashAlgorithm, algorithm);
    algorithmCopy = v6;
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

- (id)encodeAttributeWithError:(id *)error
{
  v42[1] = *MEMORY[0x277D85DE8];
  v39 = 0;
  bytes = 0;
  asn1AlgId = [(MSAlgorithmIdentifier *)self->_bodyHashAlgorithm asn1AlgId];
  var1 = asn1AlgId->var1;
  var0 = asn1AlgId->var0;
  v34 = var1;
  asn1AlgId2 = [(MSAlgorithmIdentifier *)self->_signatureAlgorithm asn1AlgId];
  v8 = asn1AlgId2->var1;
  v35 = asn1AlgId2->var0;
  v36 = v8;
  asn1AlgId3 = [(MSAlgorithmIdentifier *)self->_signedAttrsHashAlgorithm asn1AlgId];
  v10 = asn1AlgId3->var1;
  v37 = asn1AlgId3->var0;
  v38 = v10;
  WeakRetained = objc_loadWeakRetained(&self->_signedAttrsHash);

  if (WeakRetained)
  {
    v12 = objc_loadWeakRetained(&self->_signedAttrsHash);
    v39 = [v12 length];

    v13 = objc_loadWeakRetained(&self->_signedAttrsHash);
    bytes = [v13 bytes];
  }

  v32 = 0;
  v14 = length_MultipleSignatures(&var0);
  v15 = [MEMORY[0x277CBEB28] dataWithLength:v14];
  if (!v15)
  {
    v19 = 12;
    if (!error)
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
    if (!error)
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
    *error = [v20 errorWithDomain:@"com.apple.HeimASN1" code:v19 userInfo:v21];

    goto LABEL_7;
  }

  if (v14 != v32)
  {
    v28 = asn1_abort();
    return [(MSCMSMultipleSignaturesAttribute *)v28 initWithAttribute:v29 error:v30, v31];
  }

LABEL_11:
  v22 = [MSCMSAttribute alloc];
  v23 = [MSOID OIDWithString:@"1.2.840.113549.1.9.2.51" error:error];
  v24 = [MEMORY[0x277CBEA60] arrayWithObject:v16];
  v25 = [(MSCMSAttribute *)v22 initWithAttributeType:v23 values:v24];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (MSCMSMultipleSignaturesAttribute)initWithAttribute:(id)attribute error:(id *)error
{
  attributeCopy = attribute;
  v36.receiver = self;
  v36.super_class = MSCMSMultipleSignaturesAttribute;
  v7 = [(MSCMSMultipleSignaturesAttribute *)&v36 init];
  attributeType = [attributeCopy attributeType];
  v9 = [attributeType isEqualToString:@"1.2.840.113549.1.9.2.51"];

  if ((v9 & 1) == 0)
  {
    if (error)
    {
      v15 = MSErrorCMSDomain[0];
      v17 = *error;
      v18 = @"Not a Multiple Signatures attribute according to AttributeType";
      v16 = -26275;
      goto LABEL_10;
    }

LABEL_11:
    v19 = 0;
    goto LABEL_20;
  }

  attributeValues = [attributeCopy attributeValues];
  v11 = [attributeValues count];

  if (!v11)
  {
    if (error)
    {
      v15 = MSErrorCMSDomain[0];
      v17 = *error;
      v18 = @"Missing value for Multiple Signatures attribute";
      v16 = -50;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v35 = 0;
  memset(v34, 0, sizeof(v34));
  memset(v33, 0, sizeof(v33));
  attributeValues2 = [attributeCopy attributeValues];
  v13 = [attributeValues2 objectAtIndex:0];
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
        if (error)
        {
LABEL_17:
          if (v21)
          {
            v28 = v21;
            *error = v21;
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

    if (error)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (!error)
  {
    goto LABEL_11;
  }

  asn1ErrorToNSError(v14, error);
  v15 = MSErrorASN1Domain[0];
  v16 = v14;
  v17 = *error;
  v18 = @"unable to decode Multiple Signatures attribute";
LABEL_10:
  [MSError MSErrorWithDomain:v15 code:v16 underlyingError:v17 description:v18];
  *error = v19 = 0;
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