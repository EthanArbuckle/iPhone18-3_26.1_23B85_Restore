@interface EDPUtilities
+ (id)createSignature:(id)a3 withCertChain:(id)a4 withTime:(id)a5 withRemoteHandler:(id)a6 withError:(id *)a7;
+ (id)getCertificateChain:(__SecIdentity *)a3 withError:(id *)a4;
+ (id)validateSignature:(id)a3 requireTrust:(BOOL)a4 withError:(id *)a5;
@end

@implementation EDPUtilities

+ (id)getCertificateChain:(__SecIdentity *)a3 withError:(id *)a4
{
  trust = 0;
  certificateRef = 0;
  SecIdentityCopyCertificate(a3, &certificateRef);
  BasicX509 = SecPolicyCreateBasicX509();
  if (BasicX509)
  {
    Mutable = CFArrayCreateMutable(0, 3, 0);
    CFArraySetValueAtIndex(Mutable, 0, certificateRef);
    v7 = SecTrustCreateWithCertificates(Mutable, BasicX509, &trust);
    if (v7)
    {
      if (a4)
      {
        v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Security" code:v7 userInfo:0];
        goto LABEL_13;
      }
    }

    else
    {
      error = 0;
      if (SecTrustEvaluateWithError(trust, &error))
      {
        v9 = SecTrustCopyCertificateChain(trust);
        if (!Mutable)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      if (a4)
      {
        v8 = error;
LABEL_13:
        v9 = 0;
        *a4 = v8;
        if (!Mutable)
        {
          goto LABEL_17;
        }

LABEL_16:
        CFRelease(Mutable);
        goto LABEL_17;
      }
    }

    v9 = 0;
    if (!Mutable)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"Security" code:-67672 userInfo:0];
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

LABEL_17:
  if (trust)
  {
    CFRelease(trust);
  }

  if (BasicX509)
  {
    CFRelease(BasicX509);
  }

  if (certificateRef)
  {
    CFRelease(certificateRef);
  }

  return v9;
}

+ (id)createSignature:(id)a3 withCertChain:(id)a4 withTime:(id)a5 withRemoteHandler:(id)a6 withError:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v12 objectAtIndexedSubscript:0];

  v51 = 0;
  v16 = [objc_alloc(MEMORY[0x277D28628]) initWithCertificate:v15 signatureAlgorithm:0 error:&v51];
  v17 = v51;
  v18 = v17;
  if (v16)
  {
    v50 = v17;
    v19 = [objc_alloc(MEMORY[0x277D28620]) initWithDataContent:v11 isDetached:0 signer:v16 additionalCertificates:v12 error:&v50];
    v20 = v50;

    if (!v19)
    {
      if (a7)
      {
        v35 = v20;
        v32 = 0;
        *a7 = v20;
      }

      else
      {
        v32 = 0;
      }

      v18 = v20;
      goto LABEL_37;
    }

    v45 = [objc_alloc(MEMORY[0x277D285F8]) initWithEmbeddedContent:v19];
    v44 = [objc_alloc(MEMORY[0x277D28630]) initWithSigningTime:v13];
    [v16 addProtectedAttribute:?];
    v49 = v20;
    v21 = [v16 calculateSignerInfoDigest:&v49];
    v18 = v49;

    v46 = v21;
    if (v21)
    {
      v22 = MEMORY[0x277D285E0];
      v23 = [v16 signatureAlgorithm];
      v48 = v18;
      v24 = [v22 digestAlgorithmWithSignatureAlgorithm:v23 error:&v48];
      v43 = v48;

      if (v24)
      {
        v42 = v14;
        v25 = [v24 algorithm];
        v26 = [v25 OIDString];
        v27 = mapDigestAlgorithm(v26);

        if (v27)
        {
          v28 = v42[2](v42, v46, v27);
          v29 = v28;
          v41 = v28;
          if (v28 && ([v28 signature], v30 = objc_claimAutoreleasedReturnValue(), v30, v30))
          {
            v31 = [v29 signature];
            [v16 setSignature:v31];

            v47 = v43;
            v32 = [v45 encodeMessageSecurityObject:&v47];
            v18 = v47;

            if (v32)
            {
              v33 = v32;
            }

            else if (a7 && v18)
            {
              v39 = v18;
              *a7 = v18;
            }
          }

          else if (a7 && ([v29 error], v37 = objc_claimAutoreleasedReturnValue(), v37, v37))
          {
            v18 = v43;
            v38 = v43;
            v32 = 0;
            *a7 = v43;
          }

          else
          {
            v32 = 0;
            v18 = v43;
          }

          v14 = v42;

          goto LABEL_36;
        }

        v14 = v42;
        if (a7)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:@"Security" code:-67747 userInfo:0];
          *a7 = v32 = 0;
LABEL_30:
          v18 = v43;
          goto LABEL_36;
        }

LABEL_29:
        v32 = 0;
        goto LABEL_30;
      }

      if (!a7)
      {
        v24 = 0;
        goto LABEL_29;
      }

      v18 = v43;
    }

    else if (!a7)
    {
      v24 = 0;
      v32 = 0;
LABEL_36:

      goto LABEL_37;
    }

    v36 = v18;
    v24 = 0;
    v32 = 0;
    *a7 = v18;
    goto LABEL_36;
  }

  if (a7)
  {
    v34 = v17;
    v32 = 0;
    *a7 = v18;
  }

  else
  {
    v32 = 0;
  }

LABEL_37:

  return v32;
}

+ (id)validateSignature:(id)a3 requireTrust:(BOOL)a4 withError:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x277D28638]);
  Mutable = CFArrayCreateMutable(0, 1, 0);
  if (!Mutable)
  {
    if (a5)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"Security" code:-67672 userInfo:0];
      v20 = 0;
      v14 = 0;
      *a5 = v12 = 0;
    }

    else
    {
      v20 = 0;
      v14 = 0;
      v12 = 0;
    }

    goto LABEL_33;
  }

  v10 = Mutable;
  EDPSigning = SecPolicyCreateEDPSigning();
  if (EDPSigning)
  {
    CFArrayAppendValue(v10, EDPSigning);
    [v8 setVerifySignatures:1];
    [v8 setVerifySigners:1];
    [v8 setSignerPolicies:v10];
    v33 = 0;
    v12 = [MEMORY[0x277D285F8] decodeMessageSecurityObject:v7 options:v8 error:&v33];
    v13 = v33;
    v14 = v13;
    if (v12)
    {
      v15 = 1;
    }

    else
    {
      v15 = v6;
    }

    v31 = v15;
    if (v15)
    {
      if (v12)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v21 = [v13 domain];
      if ([v21 isEqualToString:@"MSErrorTrustDomain"])
      {
        v22 = [v14 code];

        if (v22 == -67808)
        {
          [v8 setVerifySigners:0];
          [v8 setSignerPolicies:0];

          v32 = 0;
          v12 = [MEMORY[0x277D285F8] decodeMessageSecurityObject:v7 options:v8 error:&v32];
          v14 = v32;
          if (v12)
          {
LABEL_8:
            v16 = [v12 embeddedContent];
            v17 = [v16 signers];
            v30 = [v17 firstObject];

            v28 = v16;
            if (v30)
            {
              v18 = [v30 createTrustObjectWithPolicies:0 error:0];
              v19 = v18;
              if (v18)
              {
                v29 = SecTrustCopyCertificateChain(v18);
LABEL_28:
                v20 = objc_opt_new();
                v24 = [(__CFArray *)v29 reverseObjectEnumerator];
                v25 = [v24 allObjects];
                [v20 setCertificateChain:v25];

                v26 = [v28 dataContent];
                [v20 setValidatedData:v26];

                [v20 setIsTrusted:v31];
                goto LABEL_29;
              }
            }

            else
            {
              v19 = 0;
            }

            v29 = 0;
            goto LABEL_28;
          }
        }
      }

      else
      {
      }
    }

    if (a5)
    {
      v23 = v14;
      v19 = 0;
      v12 = 0;
      v20 = 0;
      *a5 = v14;
      goto LABEL_29;
    }

    v19 = 0;
    v12 = 0;
LABEL_25:
    v20 = 0;
    goto LABEL_29;
  }

  if (!a5)
  {
    v19 = 0;
    v12 = 0;
    v14 = 0;
    goto LABEL_25;
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:@"Security" code:-25241 userInfo:0];
  v19 = 0;
  v12 = 0;
  v14 = 0;
  *a5 = v20 = 0;
LABEL_29:
  CFRelease(v10);
  if (EDPSigning)
  {
    CFRelease(EDPSigning);
  }

  if (v19)
  {
    CFRelease(v19);
  }

LABEL_33:

  return v20;
}

@end