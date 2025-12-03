@interface EDPUtilities
+ (id)createSignature:(id)signature withCertChain:(id)chain withTime:(id)time withRemoteHandler:(id)handler withError:(id *)error;
+ (id)getCertificateChain:(__SecIdentity *)chain withError:(id *)error;
+ (id)validateSignature:(id)signature requireTrust:(BOOL)trust withError:(id *)error;
@end

@implementation EDPUtilities

+ (id)getCertificateChain:(__SecIdentity *)chain withError:(id *)error
{
  trust = 0;
  certificateRef = 0;
  SecIdentityCopyCertificate(chain, &certificateRef);
  BasicX509 = SecPolicyCreateBasicX509();
  if (BasicX509)
  {
    Mutable = CFArrayCreateMutable(0, 3, 0);
    CFArraySetValueAtIndex(Mutable, 0, certificateRef);
    v7 = SecTrustCreateWithCertificates(Mutable, BasicX509, &trust);
    if (v7)
    {
      if (error)
      {
        errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"Security" code:v7 userInfo:0];
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

      if (error)
      {
        errorCopy = error;
LABEL_13:
        v9 = 0;
        *error = errorCopy;
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

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"Security" code:-67672 userInfo:0];
    *error = v9 = 0;
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

+ (id)createSignature:(id)signature withCertChain:(id)chain withTime:(id)time withRemoteHandler:(id)handler withError:(id *)error
{
  signatureCopy = signature;
  chainCopy = chain;
  timeCopy = time;
  handlerCopy = handler;
  v15 = [chainCopy objectAtIndexedSubscript:0];

  v51 = 0;
  v16 = [objc_alloc(MEMORY[0x277D28628]) initWithCertificate:v15 signatureAlgorithm:0 error:&v51];
  v17 = v51;
  v18 = v17;
  if (v16)
  {
    v50 = v17;
    v19 = [objc_alloc(MEMORY[0x277D28620]) initWithDataContent:signatureCopy isDetached:0 signer:v16 additionalCertificates:chainCopy error:&v50];
    v20 = v50;

    if (!v19)
    {
      if (error)
      {
        v35 = v20;
        v32 = 0;
        *error = v20;
      }

      else
      {
        v32 = 0;
      }

      v18 = v20;
      goto LABEL_37;
    }

    v45 = [objc_alloc(MEMORY[0x277D285F8]) initWithEmbeddedContent:v19];
    v44 = [objc_alloc(MEMORY[0x277D28630]) initWithSigningTime:timeCopy];
    [v16 addProtectedAttribute:?];
    v49 = v20;
    v21 = [v16 calculateSignerInfoDigest:&v49];
    v18 = v49;

    v46 = v21;
    if (v21)
    {
      v22 = MEMORY[0x277D285E0];
      signatureAlgorithm = [v16 signatureAlgorithm];
      v48 = v18;
      v24 = [v22 digestAlgorithmWithSignatureAlgorithm:signatureAlgorithm error:&v48];
      v43 = v48;

      if (v24)
      {
        v42 = handlerCopy;
        algorithm = [v24 algorithm];
        oIDString = [algorithm OIDString];
        v27 = mapDigestAlgorithm(oIDString);

        if (v27)
        {
          v28 = v42[2](v42, v46, v27);
          v29 = v28;
          v41 = v28;
          if (v28 && ([v28 signature], v30 = objc_claimAutoreleasedReturnValue(), v30, v30))
          {
            signature = [v29 signature];
            [v16 setSignature:signature];

            v47 = v43;
            v32 = [v45 encodeMessageSecurityObject:&v47];
            v18 = v47;

            if (v32)
            {
              v33 = v32;
            }

            else if (error && v18)
            {
              v39 = v18;
              *error = v18;
            }
          }

          else if (error && ([v29 error], v37 = objc_claimAutoreleasedReturnValue(), v37, v37))
          {
            v18 = v43;
            v38 = v43;
            v32 = 0;
            *error = v43;
          }

          else
          {
            v32 = 0;
            v18 = v43;
          }

          handlerCopy = v42;

          goto LABEL_36;
        }

        handlerCopy = v42;
        if (error)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:@"Security" code:-67747 userInfo:0];
          *error = v32 = 0;
LABEL_30:
          v18 = v43;
          goto LABEL_36;
        }

LABEL_29:
        v32 = 0;
        goto LABEL_30;
      }

      if (!error)
      {
        v24 = 0;
        goto LABEL_29;
      }

      v18 = v43;
    }

    else if (!error)
    {
      v24 = 0;
      v32 = 0;
LABEL_36:

      goto LABEL_37;
    }

    v36 = v18;
    v24 = 0;
    v32 = 0;
    *error = v18;
    goto LABEL_36;
  }

  if (error)
  {
    v34 = v17;
    v32 = 0;
    *error = v18;
  }

  else
  {
    v32 = 0;
  }

LABEL_37:

  return v32;
}

+ (id)validateSignature:(id)signature requireTrust:(BOOL)trust withError:(id *)error
{
  trustCopy = trust;
  signatureCopy = signature;
  v8 = objc_alloc_init(MEMORY[0x277D28638]);
  Mutable = CFArrayCreateMutable(0, 1, 0);
  if (!Mutable)
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"Security" code:-67672 userInfo:0];
      v20 = 0;
      v14 = 0;
      *error = v12 = 0;
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
    v12 = [MEMORY[0x277D285F8] decodeMessageSecurityObject:signatureCopy options:v8 error:&v33];
    v13 = v33;
    v14 = v13;
    if (v12)
    {
      v15 = 1;
    }

    else
    {
      v15 = trustCopy;
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
      domain = [v13 domain];
      if ([domain isEqualToString:@"MSErrorTrustDomain"])
      {
        code = [v14 code];

        if (code == -67808)
        {
          [v8 setVerifySigners:0];
          [v8 setSignerPolicies:0];

          v32 = 0;
          v12 = [MEMORY[0x277D285F8] decodeMessageSecurityObject:signatureCopy options:v8 error:&v32];
          v14 = v32;
          if (v12)
          {
LABEL_8:
            embeddedContent = [v12 embeddedContent];
            signers = [embeddedContent signers];
            firstObject = [signers firstObject];

            v28 = embeddedContent;
            if (firstObject)
            {
              v18 = [firstObject createTrustObjectWithPolicies:0 error:0];
              v19 = v18;
              if (v18)
              {
                v29 = SecTrustCopyCertificateChain(v18);
LABEL_28:
                v20 = objc_opt_new();
                reverseObjectEnumerator = [(__CFArray *)v29 reverseObjectEnumerator];
                allObjects = [reverseObjectEnumerator allObjects];
                [v20 setCertificateChain:allObjects];

                dataContent = [v28 dataContent];
                [v20 setValidatedData:dataContent];

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

    if (error)
    {
      v23 = v14;
      v19 = 0;
      v12 = 0;
      v20 = 0;
      *error = v14;
      goto LABEL_29;
    }

    v19 = 0;
    v12 = 0;
LABEL_25:
    v20 = 0;
    goto LABEL_29;
  }

  if (!error)
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
  *error = v20 = 0;
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