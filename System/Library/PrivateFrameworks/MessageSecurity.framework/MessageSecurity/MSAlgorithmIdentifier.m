@interface MSAlgorithmIdentifier
+ (MSAlgorithmIdentifier)algorithmIdentifierWithAsn1AlgId:(AlgorithmIdentifier *)a3 error:(id *)a4;
+ (MSAlgorithmIdentifier)algorithmIdentifierWithOID:(id)a3;
+ (id)digestAlgorithmWithSignatureAlgorithm:(id)a3 error:(id *)a4;
- (AlgorithmIdentifier)encode;
- (BOOL)isEqual:(id)a3;
- (MSAlgorithmIdentifier)initWithAsn1AlgId:(AlgorithmIdentifier *)a3 error:(id *)a4;
- (MSAlgorithmIdentifier)initWithOID:(id)a3;
- (MSAlgorithmIdentifier)initWithOID:(id)a3 parameters:(id)a4;
- (id)decode:(id)a3 error:(id *)a4;
- (id)initDigestAlgorithmWithSignatureAlgorithm:(id)a3 error:(id *)a4;
- (id)signatureAlgorithmWithDigestAlgorithm:(id)a3 error:(id *)a4;
- (unint64_t)blockSize:(id *)a3;
- (unint64_t)hash;
- (unint64_t)keySize:(id *)a3;
- (unsigned)ccAlgorithm:(id *)a3;
- (unsigned)ccMode:(id *)a3;
- (void)dealloc;
@end

@implementation MSAlgorithmIdentifier

- (unint64_t)hash
{
  parameters = self->_parameters;
  v4 = [(MSAlgorithmIdentifier *)self algorithm];
  v5 = [v4 hash];
  if (parameters)
  {
    v6 = [(MSAlgorithmIdentifier *)self parameters];
    v5 += [v6 hash];
  }

  return v5;
}

- (void)dealloc
{
  if (self->_asn1AlgId)
  {
    free_AlgorithmIdentifier();
    free(self->_asn1AlgId);
    self->_asn1AlgId = 0;
  }

  v3.receiver = self;
  v3.super_class = MSAlgorithmIdentifier;
  [(MSAlgorithmIdentifier *)&v3 dealloc];
}

- (AlgorithmIdentifier)encode
{
  v3 = malloc_type_malloc(0x18uLL, 0x10300406712BA52uLL);
  if (v3)
  {
    v4 = [(MSAlgorithmIdentifier *)self algorithm];
    v14 = [v4 Asn1OID];
    v15 = v5;

    der_copy_oid();
    v6 = [(MSAlgorithmIdentifier *)self parameters];

    if (v6)
    {
      v3->var1 = malloc_type_malloc(0x10uLL, 0x108004057E67DB5uLL);
      v7 = [(MSAlgorithmIdentifier *)self parameters:0];
      v8 = [v7 length];

      if (v8)
      {
        v9 = [(MSAlgorithmIdentifier *)self parameters];
        v12 = [v9 length];

        v10 = [(MSAlgorithmIdentifier *)self parameters];
        v13 = [v10 bytes];
      }

      else
      {
        v12 = 2;
        v13 = &asn1NULL;
      }

      MEMORY[0x259C98440](&v12, v3->var1);
    }

    else
    {
      v3->var1 = 0;
    }
  }

  return v3;
}

+ (MSAlgorithmIdentifier)algorithmIdentifierWithOID:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithOID:v4];

  return v5;
}

+ (MSAlgorithmIdentifier)algorithmIdentifierWithAsn1AlgId:(AlgorithmIdentifier *)a3 error:(id *)a4
{
  v4 = [[a1 alloc] initWithAsn1AlgId:a3 error:a4];

  return v4;
}

+ (id)digestAlgorithmWithSignatureAlgorithm:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initDigestAlgorithmWithSignatureAlgorithm:v6 error:a4];

  return v7;
}

- (MSAlgorithmIdentifier)initWithOID:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEA90] data];
  if (algorithmOIDToParameters_onceToken != -1)
  {
    [MSAlgorithmIdentifier initWithOID:];
  }

  v6 = [v4 OIDString];
  v7 = [algorithmOIDToParameters_sAlgorithmOIDStringIsAbsentParameters objectForKeyedSubscript:v6];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  v10 = [(MSAlgorithmIdentifier *)self initWithOID:v4 parameters:v9];
  return v10;
}

- (MSAlgorithmIdentifier)initWithOID:(id)a3 parameters:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MSAlgorithmIdentifier;
  v9 = [(MSAlgorithmIdentifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_algorithm, a3);
    objc_storeStrong(&v10->_parameters, a4);
    v10->_asn1AlgId = [(MSAlgorithmIdentifier *)v10 encode];
  }

  return v10;
}

- (id)decode:(id)a3 error:(id *)a4
{
  memset(v8, 0, sizeof(v8));
  if (nsheim_decode_AlgorithmIdentifier(a3))
  {
    if (a4)
    {
      [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:-26275 underlyingError:*a4 description:@"unable to decode Algorithm Identifier"];
      *a4 = v6 = 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [(MSAlgorithmIdentifier *)self initWithAsn1AlgId:v8 error:a4];
    free_AlgorithmIdentifier();
  }

  return v6;
}

- (id)initDigestAlgorithmWithSignatureAlgorithm:(id)a3 error:(id *)a4
{
  v6 = [a3 algorithm];
  v7 = [MSOID digestOIDWithSignatureAlgorithm:v6 error:a4];

  if (v7)
  {
    self = [(MSAlgorithmIdentifier *)self initWithOID:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MSAlgorithmIdentifier)initWithAsn1AlgId:(AlgorithmIdentifier *)a3 error:(id *)a4
{
  v17.receiver = self;
  v17.super_class = MSAlgorithmIdentifier;
  v6 = [(MSAlgorithmIdentifier *)&v17 init];
  if (!v6)
  {
LABEL_14:
    v9 = v6;
    goto LABEL_16;
  }

  v7 = malloc_type_malloc(0x18uLL, 0x10300406712BA52uLL);
  v6->_asn1AlgId = v7;
  if (!v7)
  {
    if (a4)
    {
      [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:-108 underlyingError:*a4 description:@"unable to allocate Algorithm Identifier"];
      *a4 = v9 = 0;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v8 = copy_AlgorithmIdentifier();
  if (!v8)
  {
    v10 = [MSOID OIDWithAsn1OID:v6->_asn1AlgId error:a4];
    algorithm = v6->_algorithm;
    v6->_algorithm = v10;

    if (v6->_algorithm)
    {
      var1 = v6->_asn1AlgId->var1;
      if (var1)
      {
        if (var1->var0)
        {
          v13 = var1->var1;
          if (v13)
          {
            v14 = [MEMORY[0x277CBEA90] dataWithBytes:v13 length:a3->var1->var0];
            parameters = v6->_parameters;
            v6->_parameters = v14;
          }
        }
      }

      goto LABEL_14;
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  if (a4)
  {
    *a4 = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:v8 underlyingError:*a4 description:@"unable to copy Algorithm Identifier"];
  }

  free(v6->_asn1AlgId);
  v9 = 0;
  v6->_asn1AlgId = 0;
LABEL_16:

  return v9;
}

- (id)signatureAlgorithmWithDigestAlgorithm:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MSAlgorithmIdentifier *)self algorithm];
  v8 = [v7 isEqualToString:@"1.2.840.113549.1.1.1"];

  if (v8)
  {
    v9 = [v6 algorithm];
    v10 = [MSOID RSASignatureOIDWithDigestAlgorithm:v9 error:a4];
LABEL_5:
    a4 = v10;
LABEL_6:

    goto LABEL_7;
  }

  v11 = [(MSAlgorithmIdentifier *)self algorithm];
  v12 = [v11 isEqualToString:@"1.2.840.10045.2.1"];

  if (v12)
  {
    v9 = [v6 algorithm];
    v10 = [MSOID ECSignatureOIDWithDigestAlgorithm:v9 error:a4];
    goto LABEL_5;
  }

  if (a4)
  {
    v14 = MSErrorCryptoDomain[0];
    v15 = *a4;
    v9 = [(MSAlgorithmIdentifier *)self algorithm];
    v16 = [v9 OIDString];
    *a4 = [MSError MSErrorWithDomain:v14 code:-50 underlyingError:v15 description:@"Algorithm Identifier %@ does not indicate a public key algorithm", v16];

    a4 = 0;
    goto LABEL_6;
  }

LABEL_7:

  return a4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 algorithm];
    if (![v6 isEqual:self->_algorithm])
    {
      v11 = 0;
      goto LABEL_16;
    }

    parameters = self->_parameters;
    if (parameters)
    {
LABEL_4:
      v8 = [v5 parameters];
      if (v8)
      {
        v9 = v8;
        v10 = [v5 parameters];
        v11 = [v10 isEqualToData:self->_parameters];

        if (!parameters)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v11 = 0;
        if (!parameters)
        {
          goto LABEL_15;
        }
      }

LABEL_16:

      goto LABEL_17;
    }

    v3 = [v5 parameters];
    if (v3)
    {
      if (self->_parameters)
      {
        goto LABEL_4;
      }

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

LABEL_15:

    goto LABEL_16;
  }

  v11 = 0;
LABEL_17:

  return v11;
}

- (unsigned)ccAlgorithm:(id *)a3
{
  if (a3 && *a3)
  {
    v5 = [*a3 copy];
  }

  else
  {
    v5 = 0;
  }

  if (ccAlgorithm__onceToken != -1)
  {
    [MSAlgorithmIdentifier ccAlgorithm:];
  }

  v6 = [(MSAlgorithmIdentifier *)self algorithm];
  v7 = [v6 OIDString];

  v8 = ccAlgorithm__knownEncryptionAlgs;
  v9 = [(MSAlgorithmIdentifier *)self algorithm];
  v10 = [v9 OIDString];
  v11 = [v8 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = [v11 unsignedIntValue];
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:v5 description:@"unknown ccAlg -- unexpected encryption algorithm: %@", v7];

    v12 = 0;
    v5 = v13;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  if (v5)
  {
    v14 = v5;
    *a3 = v5;
  }

LABEL_13:

  return v12;
}

void __37__MSAlgorithmIdentifier_ccAlgorithm___block_invoke()
{
  v23[19] = *MEMORY[0x277D85DE8];
  v22[0] = @"1.3.14.3.2.6";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v23[0] = v21;
  v22[1] = @"1.3.14.3.2.7";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v23[1] = v20;
  v22[2] = @"1.2.840.113549.3.7";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
  v23[2] = v19;
  v22[3] = @"1.2.840.113549.3.2";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:5];
  v23[3] = v18;
  v22[4] = @"2.16.840.1.101.3.4.1.1";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v23[4] = v17;
  v22[5] = @"2.16.840.1.101.3.4.1.2";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v23[5] = v16;
  v22[6] = @"2.16.840.1.101.3.4.1.21";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v23[6] = v15;
  v22[7] = @"2.16.840.1.101.3.4.1.22";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v23[7] = v14;
  v22[8] = @"2.16.840.1.101.3.4.1.41";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v23[8] = v13;
  v22[9] = @"2.16.840.1.101.3.4.1.42";
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v23[9] = v0;
  v22[10] = @"2.16.840.1.101.3.4.1.7";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v23[10] = v1;
  v22[11] = @"2.16.840.1.101.3.4.1.6";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v23[11] = v2;
  v22[12] = @"2.16.840.1.101.3.4.1.47";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v23[12] = v3;
  v22[13] = @"2.16.840.1.101.3.4.1.46";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v23[13] = v4;
  v22[14] = @"2.16.840.1.101.3.4.1.27";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v23[14] = v5;
  v22[15] = @"2.16.840.1.101.3.4.1.26";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v23[15] = v6;
  v22[16] = @"2.16.840.1.101.3.4.1.5";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v23[16] = v7;
  v22[17] = @"2.16.840.1.101.3.4.1.25";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v23[17] = v8;
  v22[18] = @"2.16.840.1.101.3.4.1.45";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v23[18] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:19];
  v11 = ccAlgorithm__knownEncryptionAlgs;
  ccAlgorithm__knownEncryptionAlgs = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (unsigned)ccMode:(id *)a3
{
  if (a3 && *a3)
  {
    v5 = [*a3 copy];
  }

  else
  {
    v5 = 0;
  }

  if (ccMode__onceToken != -1)
  {
    [MSAlgorithmIdentifier ccMode:];
  }

  v6 = [(MSAlgorithmIdentifier *)self algorithm];
  v7 = [v6 OIDString];

  v8 = [ccMode__knownEncryptionAlgs objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 unsignedIntValue];
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:v5 description:@"unknown ccMode -- unexpected encryption algorithm: %@", v7];

    v10 = 0;
    v5 = v11;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  if (v5)
  {
    v12 = v5;
    *a3 = v5;
  }

LABEL_13:

  return v10;
}

void __32__MSAlgorithmIdentifier_ccMode___block_invoke()
{
  v20[16] = *MEMORY[0x277D85DE8];
  v19[0] = @"1.3.14.3.2.6";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v20[0] = v18;
  v19[1] = @"1.3.14.3.2.7";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
  v20[1] = v17;
  v19[2] = @"1.2.840.113549.3.7";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
  v20[2] = v16;
  v19[3] = @"1.2.840.113549.3.2";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
  v20[3] = v15;
  v19[4] = @"2.16.840.1.101.3.4.1.1";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v20[4] = v14;
  v19[5] = @"2.16.840.1.101.3.4.1.2";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
  v20[5] = v13;
  v19[6] = @"2.16.840.1.101.3.4.1.21";
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v20[6] = v0;
  v19[7] = @"2.16.840.1.101.3.4.1.22";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
  v20[7] = v1;
  v19[8] = @"2.16.840.1.101.3.4.1.41";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v20[8] = v2;
  v19[9] = @"2.16.840.1.101.3.4.1.42";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
  v20[9] = v3;
  v19[10] = @"2.16.840.1.101.3.4.1.7";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:12];
  v20[10] = v4;
  v19[11] = @"2.16.840.1.101.3.4.1.6";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:11];
  v20[11] = v5;
  v19[12] = @"2.16.840.1.101.3.4.1.47";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:12];
  v20[12] = v6;
  v19[13] = @"2.16.840.1.101.3.4.1.46";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:11];
  v20[13] = v7;
  v19[14] = @"2.16.840.1.101.3.4.1.27";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:12];
  v20[14] = v8;
  v19[15] = @"2.16.840.1.101.3.4.1.26";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:11];
  v20[15] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:16];
  v11 = ccMode__knownEncryptionAlgs;
  ccMode__knownEncryptionAlgs = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (unint64_t)blockSize:(id *)a3
{
  if (a3 && *a3)
  {
    v5 = [*a3 copy];
  }

  else
  {
    v5 = 0;
  }

  if (blockSize__onceToken != -1)
  {
    [MSAlgorithmIdentifier blockSize:];
  }

  v6 = [(MSAlgorithmIdentifier *)self algorithm];
  v7 = [v6 OIDString];

  v8 = [blockSize__knownEncryptionAlgs objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 unsignedIntValue];
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:v5 description:@"unknown blockSize -- unexpected encryption algorithm: %@", v7];

    v10 = 0;
    v5 = v11;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  if (v5)
  {
    v12 = v5;
    *a3 = v5;
  }

LABEL_13:

  return v10;
}

void __35__MSAlgorithmIdentifier_blockSize___block_invoke()
{
  v23[19] = *MEMORY[0x277D85DE8];
  v22[0] = @"1.3.14.3.2.6";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:8];
  v23[0] = v21;
  v22[1] = @"1.3.14.3.2.7";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:8];
  v23[1] = v20;
  v22[2] = @"1.2.840.113549.3.7";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:8];
  v23[2] = v19;
  v22[3] = @"1.2.840.113549.3.2";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:8];
  v23[3] = v18;
  v22[4] = @"2.16.840.1.101.3.4.1.1";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v23[4] = v17;
  v22[5] = @"2.16.840.1.101.3.4.1.2";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v23[5] = v16;
  v22[6] = @"2.16.840.1.101.3.4.1.21";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v23[6] = v15;
  v22[7] = @"2.16.840.1.101.3.4.1.22";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v23[7] = v14;
  v22[8] = @"2.16.840.1.101.3.4.1.41";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v23[8] = v13;
  v22[9] = @"2.16.840.1.101.3.4.1.42";
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v23[9] = v0;
  v22[10] = @"2.16.840.1.101.3.4.1.7";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v23[10] = v1;
  v22[11] = @"2.16.840.1.101.3.4.1.6";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v23[11] = v2;
  v22[12] = @"2.16.840.1.101.3.4.1.47";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v23[12] = v3;
  v22[13] = @"2.16.840.1.101.3.4.1.46";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v23[13] = v4;
  v22[14] = @"2.16.840.1.101.3.4.1.27";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v23[14] = v5;
  v22[15] = @"2.16.840.1.101.3.4.1.26";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v23[15] = v6;
  v22[16] = @"2.16.840.1.101.3.4.1.5";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v23[16] = v7;
  v22[17] = @"2.16.840.1.101.3.4.1.25";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v23[17] = v8;
  v22[18] = @"2.16.840.1.101.3.4.1.45";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v23[18] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:19];
  v11 = blockSize__knownEncryptionAlgs;
  blockSize__knownEncryptionAlgs = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (unint64_t)keySize:(id *)a3
{
  if (a3 && *a3)
  {
    v5 = [*a3 copy];
  }

  else
  {
    v5 = 0;
  }

  if (keySize__onceToken != -1)
  {
    [MSAlgorithmIdentifier keySize:];
  }

  v6 = [(MSAlgorithmIdentifier *)self algorithm];
  v7 = [v6 OIDString];

  v8 = [keySize__knownEncryptionAlgs objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 unsignedIntValue];
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:v5 description:@"unknown keySize -- unexpected encryption algorithm: %@", v7];

    v10 = 0;
    v5 = v11;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  if (v5)
  {
    v12 = v5;
    *a3 = v5;
  }

LABEL_13:

  return v10;
}

void __33__MSAlgorithmIdentifier_keySize___block_invoke()
{
  v23[19] = *MEMORY[0x277D85DE8];
  v22[0] = @"1.3.14.3.2.6";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:8];
  v23[0] = v21;
  v22[1] = @"1.3.14.3.2.7";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:8];
  v23[1] = v20;
  v22[2] = @"1.2.840.113549.3.7";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:24];
  v23[2] = v19;
  v22[3] = @"1.2.840.113549.3.2";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:128];
  v23[3] = v18;
  v22[4] = @"2.16.840.1.101.3.4.1.1";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v23[4] = v17;
  v22[5] = @"2.16.840.1.101.3.4.1.2";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v23[5] = v16;
  v22[6] = @"2.16.840.1.101.3.4.1.21";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:24];
  v23[6] = v15;
  v22[7] = @"2.16.840.1.101.3.4.1.22";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:24];
  v23[7] = v14;
  v22[8] = @"2.16.840.1.101.3.4.1.41";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:32];
  v23[8] = v13;
  v22[9] = @"2.16.840.1.101.3.4.1.42";
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:32];
  v23[9] = v0;
  v22[10] = @"2.16.840.1.101.3.4.1.7";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v23[10] = v1;
  v22[11] = @"2.16.840.1.101.3.4.1.6";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v23[11] = v2;
  v22[12] = @"2.16.840.1.101.3.4.1.47";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:32];
  v23[12] = v3;
  v22[13] = @"2.16.840.1.101.3.4.1.46";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:32];
  v23[13] = v4;
  v22[14] = @"2.16.840.1.101.3.4.1.27";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:24];
  v23[14] = v5;
  v22[15] = @"2.16.840.1.101.3.4.1.26";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:24];
  v23[15] = v6;
  v22[16] = @"2.16.840.1.101.3.4.1.5";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v23[16] = v7;
  v22[17] = @"2.16.840.1.101.3.4.1.25";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:24];
  v23[17] = v8;
  v22[18] = @"2.16.840.1.101.3.4.1.45";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:32];
  v23[18] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:19];
  v11 = keySize__knownEncryptionAlgs;
  keySize__knownEncryptionAlgs = v10;

  v12 = *MEMORY[0x277D85DE8];
}

@end