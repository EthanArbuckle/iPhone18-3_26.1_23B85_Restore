@interface MSCMSCounterSignerInfo
- (BOOL)createRequiredAttributes:(id *)a3;
- (BOOL)verifyContentTypeAttribute:(id *)a3;
- (MSCMSSignerInfo)containingSignerInfo;
- (id)calculateSignerInfoDigest:(id *)a3;
- (id)certificates;
- (void)setContainingSignerInfo:(id)a3;
@end

@implementation MSCMSCounterSignerInfo

- (id)certificates
{
  v3 = [(MSCMSCounterSignerInfo *)self containingSignerInfo];

  if (v3)
  {
    v4 = [(MSCMSCounterSignerInfo *)self containingSignerInfo];
    v5 = [v4 certificates];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setContainingSignerInfo:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_containingSignerInfo);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_containingSignerInfo, 0);
    objc_storeWeak(&self->_containingSignerInfo, obj);
    [(MSCMSSignerInfo *)self setContentChanged:1];
  }
}

- (BOOL)verifyContentTypeAttribute:(id *)a3
{
  if (a3 && *a3)
  {
    v5 = [*a3 copy];
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
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 1;
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  if (v7)
  {
    v10 = v7;
    *a3 = v7;
  }

LABEL_10:

  return v9;
}

- (BOOL)createRequiredAttributes:(id *)a3
{
  v5 = [(MSCMSSignerInfo *)self protectedAttributes];
  if (!v5 || (v6 = v5, -[MSCMSSignerInfo protectedAttributes](self, "protectedAttributes"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v6, !v8))
  {
    v13 = 0;
    v22 = 1;
    goto LABEL_12;
  }

  v9 = [(MSCMSCounterSignerInfo *)self containingSignerInfo];
  v10 = [(MSCMSSignerInfo *)self digestAlgorithm];
  v11 = [v10 algorithm];
  v27 = 0;
  v12 = [v9 calculateSignatureDigestWithAlgorithm:v11 error:&v27];
  v13 = v27;

  if (![(MSCMSCounterSignerInfo *)self verifyContentTypeAttribute:0]|| ![(MSCMSSignerInfo *)self verifyMessageDigestAttribute:v12 error:0])
  {
    v14 = [(MSCMSSignerInfo *)self protectedAttributes];
    v26 = v13;
    v15 = [MSOID OIDWithString:@"1.2.840.113549.1.9.3" error:&v26];
    v16 = v26;

    [v14 removeAttributes:v15];
    v17 = [(MSCMSSignerInfo *)self protectedAttributes];
    v25 = v16;
    v18 = [MSOID OIDWithString:@"1.2.840.113549.1.9.4" error:&v25];
    v13 = v25;

    [v17 removeAttributes:v18];
    v19 = [MSCMSMessageDigestAttribute messageDigestAttributeWithDigest:v12];
    if (!v19)
    {
      v22 = 0;
      goto LABEL_8;
    }

    v20 = v19;
    v21 = [(MSCMSSignerInfo *)self protectedAttributes];
    [v21 addObject:v20];
  }

  v22 = 1;
LABEL_8:

  if (a3 && v13)
  {
    v23 = v13;
    *a3 = v13;
  }

LABEL_12:

  return v22;
}

- (MSCMSSignerInfo)containingSignerInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_containingSignerInfo);

  return WeakRetained;
}

- (id)calculateSignerInfoDigest:(id *)a3
{
  if (a3 && *a3)
  {
    v5 = [*a3 copy];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(MSCMSCounterSignerInfo *)self containingSignerInfo];
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  v8 = [(MSCMSCounterSignerInfo *)self containingSignerInfo];
  v9 = [v8 signature];

  if (!v9)
  {
LABEL_18:
    v27 = MSErrorCMSDomain[0];
    v28 = @"counter signer has no reference to a signer with a signature";
LABEL_19:
    v20 = [MSError MSErrorWithDomain:v27 code:-50 underlyingError:v5 description:v28];

    v19 = 0;
    goto LABEL_20;
  }

  v10 = [(MSCMSSignerInfo *)self digestAlgorithm];

  if (!v10)
  {
    v11 = [(MSCMSSignerInfo *)self signatureAlgorithm];

    if (!v11)
    {
      v27 = MSErrorCMSDomain[0];
      v28 = @"signer has no signature algorithm";
      goto LABEL_19;
    }

    v12 = [(MSCMSSignerInfo *)self signatureAlgorithm];
    v35 = v5;
    v13 = [MSAlgorithmIdentifier digestAlgorithmWithSignatureAlgorithm:v12 error:&v35];
    v14 = v35;

    [(MSCMSSignerInfo *)self setDigestAlgorithm:v13];
    v5 = v14;
  }

  v15 = [(MSCMSSignerInfo *)self digestAlgorithm];

  if (!v15)
  {
    v27 = MSErrorCMSDomain[0];
    v28 = @"No digest algorithm specified";
    goto LABEL_19;
  }

  v16 = [(MSCMSCounterSignerInfo *)self containingSignerInfo];
  v17 = [(MSCMSSignerInfo *)self digestAlgorithm];
  v18 = [v17 algorithm];
  v34 = v5;
  v19 = [v16 calculateSignatureDigestWithAlgorithm:v18 error:&v34];
  v20 = v34;

  if (!v19)
  {
    goto LABEL_20;
  }

  v21 = [(MSCMSSignerInfo *)self protectedAttributes];
  v22 = [v21 count];

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
      if (!a3)
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
    if (!a3)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v19 = v19;
  v26 = v19;
  if (!a3)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (v20)
  {
    v29 = v20;
    *a3 = v20;
  }

LABEL_25:

  return v26;
}

- (void)verifyContentTypeAttribute:(void *)a1 .cold.1(void *a1, uint64_t *a2)
{
  *a2 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:a1 description:@"Content-type attribute must not be present in Countersignature"];
}

@end