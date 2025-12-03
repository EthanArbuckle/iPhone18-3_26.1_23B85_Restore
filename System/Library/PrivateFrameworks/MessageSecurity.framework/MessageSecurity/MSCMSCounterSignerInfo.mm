@interface MSCMSCounterSignerInfo
- (BOOL)createRequiredAttributes:(id *)attributes;
- (BOOL)verifyContentTypeAttribute:(id *)attribute;
- (MSCMSSignerInfo)containingSignerInfo;
- (id)calculateSignerInfoDigest:(id *)digest;
- (id)certificates;
- (void)setContainingSignerInfo:(id)info;
@end

@implementation MSCMSCounterSignerInfo

- (id)certificates
{
  containingSignerInfo = [(MSCMSCounterSignerInfo *)self containingSignerInfo];

  if (containingSignerInfo)
  {
    containingSignerInfo2 = [(MSCMSCounterSignerInfo *)self containingSignerInfo];
    certificates = [containingSignerInfo2 certificates];
  }

  else
  {
    certificates = 0;
  }

  return certificates;
}

- (void)setContainingSignerInfo:(id)info
{
  obj = info;
  WeakRetained = objc_loadWeakRetained(&self->_containingSignerInfo);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_containingSignerInfo, 0);
    objc_storeWeak(&self->_containingSignerInfo, obj);
    [(MSCMSSignerInfo *)self setContentChanged:1];
  }
}

- (BOOL)verifyContentTypeAttribute:(id *)attribute
{
  if (attribute && *attribute)
  {
    v5 = [*attribute copy];
  }

  else
  {
    v5 = 0;
  }

  v12 = v5;
  v6 = [MSOID OIDWithString:@"1.2.840.113549.1.9.3" error:&v12];
  v7 = v12;

  v8 = [(MSCMSSignerInfo *)self getAttributesWithType:v6];

  if (v8 && [v8 count])
  {
    [(MSCMSCounterSignerInfo *)v7 verifyContentTypeAttribute:?];
    v9 = 0;
    v7 = v13;
    if (!attribute)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 1;
    if (!attribute)
    {
      goto LABEL_10;
    }
  }

  if (v7)
  {
    v10 = v7;
    *attribute = v7;
  }

LABEL_10:

  return v9;
}

- (BOOL)createRequiredAttributes:(id *)attributes
{
  protectedAttributes = [(MSCMSSignerInfo *)self protectedAttributes];
  if (!protectedAttributes || (v6 = protectedAttributes, -[MSCMSSignerInfo protectedAttributes](self, "protectedAttributes"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v6, !v8))
  {
    v13 = 0;
    v22 = 1;
    goto LABEL_12;
  }

  containingSignerInfo = [(MSCMSCounterSignerInfo *)self containingSignerInfo];
  digestAlgorithm = [(MSCMSSignerInfo *)self digestAlgorithm];
  algorithm = [digestAlgorithm algorithm];
  v27 = 0;
  v12 = [containingSignerInfo calculateSignatureDigestWithAlgorithm:algorithm error:&v27];
  v13 = v27;

  if (![(MSCMSCounterSignerInfo *)self verifyContentTypeAttribute:0]|| ![(MSCMSSignerInfo *)self verifyMessageDigestAttribute:v12 error:0])
  {
    protectedAttributes2 = [(MSCMSSignerInfo *)self protectedAttributes];
    v26 = v13;
    v15 = [MSOID OIDWithString:@"1.2.840.113549.1.9.3" error:&v26];
    v16 = v26;

    [protectedAttributes2 removeAttributes:v15];
    protectedAttributes3 = [(MSCMSSignerInfo *)self protectedAttributes];
    v25 = v16;
    v18 = [MSOID OIDWithString:@"1.2.840.113549.1.9.4" error:&v25];
    v13 = v25;

    [protectedAttributes3 removeAttributes:v18];
    v19 = [MSCMSMessageDigestAttribute messageDigestAttributeWithDigest:v12];
    if (!v19)
    {
      v22 = 0;
      goto LABEL_8;
    }

    v20 = v19;
    protectedAttributes4 = [(MSCMSSignerInfo *)self protectedAttributes];
    [protectedAttributes4 addObject:v20];
  }

  v22 = 1;
LABEL_8:

  if (attributes && v13)
  {
    v23 = v13;
    *attributes = v13;
  }

LABEL_12:

  return v22;
}

- (MSCMSSignerInfo)containingSignerInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_containingSignerInfo);

  return WeakRetained;
}

- (id)calculateSignerInfoDigest:(id *)digest
{
  if (digest && *digest)
  {
    v5 = [*digest copy];
  }

  else
  {
    v5 = 0;
  }

  containingSignerInfo = [(MSCMSCounterSignerInfo *)self containingSignerInfo];
  if (!containingSignerInfo)
  {
    goto LABEL_18;
  }

  v7 = containingSignerInfo;
  containingSignerInfo2 = [(MSCMSCounterSignerInfo *)self containingSignerInfo];
  signature = [containingSignerInfo2 signature];

  if (!signature)
  {
LABEL_18:
    v27 = MSErrorCMSDomain[0];
    v28 = @"counter signer has no reference to a signer with a signature";
LABEL_19:
    v20 = [MSError MSErrorWithDomain:v27 code:-50 underlyingError:v5 description:v28];

    v19 = 0;
    goto LABEL_20;
  }

  digestAlgorithm = [(MSCMSSignerInfo *)self digestAlgorithm];

  if (!digestAlgorithm)
  {
    signatureAlgorithm = [(MSCMSSignerInfo *)self signatureAlgorithm];

    if (!signatureAlgorithm)
    {
      v27 = MSErrorCMSDomain[0];
      v28 = @"signer has no signature algorithm";
      goto LABEL_19;
    }

    signatureAlgorithm2 = [(MSCMSSignerInfo *)self signatureAlgorithm];
    v35 = v5;
    v13 = [MSAlgorithmIdentifier digestAlgorithmWithSignatureAlgorithm:signatureAlgorithm2 error:&v35];
    v14 = v35;

    [(MSCMSSignerInfo *)self setDigestAlgorithm:v13];
    v5 = v14;
  }

  digestAlgorithm2 = [(MSCMSSignerInfo *)self digestAlgorithm];

  if (!digestAlgorithm2)
  {
    v27 = MSErrorCMSDomain[0];
    v28 = @"No digest algorithm specified";
    goto LABEL_19;
  }

  containingSignerInfo3 = [(MSCMSCounterSignerInfo *)self containingSignerInfo];
  digestAlgorithm3 = [(MSCMSSignerInfo *)self digestAlgorithm];
  algorithm = [digestAlgorithm3 algorithm];
  v34 = v5;
  v19 = [containingSignerInfo3 calculateSignatureDigestWithAlgorithm:algorithm error:&v34];
  v20 = v34;

  if (!v19)
  {
    goto LABEL_20;
  }

  protectedAttributes = [(MSCMSSignerInfo *)self protectedAttributes];
  v22 = [protectedAttributes count];

  if (v22)
  {
    v33 = v20;
    v23 = [(MSCMSCounterSignerInfo *)self verifyContentTypeAttribute:&v33];
    v24 = v33;

    if (!v23)
    {
      v26 = 0;
LABEL_16:
      v20 = v24;
      if (!digest)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    v32 = v24;
    v25 = [(MSCMSSignerInfo *)self verifyMessageDigestAttribute:v19 error:&v32];
    v20 = v32;

    if (v25)
    {
      v31 = v20;
      v26 = [(MSCMSSignerInfo *)self calculateSignedAttributesDigest:&v31];
      v24 = v31;

      goto LABEL_16;
    }

LABEL_20:
    v26 = 0;
    if (!digest)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v19 = v19;
  v26 = v19;
  if (!digest)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (v20)
  {
    v29 = v20;
    *digest = v20;
  }

LABEL_25:

  return v26;
}

- (void)verifyContentTypeAttribute:(void *)a1 .cold.1(void *a1, uint64_t *a2)
{
  *a2 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:a1 description:@"Content-type attribute must not be present in Countersignature"];
}

@end