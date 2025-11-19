uint64_t nsheim_decode_ContentInfo(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];

  return _asn1_decode_top();
}

id NSDataFromIntegerArray(_DWORD *a1, unint64_t a2)
{
  if (a2 >= 2 && *a1 <= 6u && (v3 = a1[1], v3 <= 0x27))
  {
    v14 = v3 + 40 * *a1;
    v4 = [MEMORY[0x277CBEB28] dataWithBytes:&v14 length:1];
    if (a2 != 2)
    {
      v7 = 2;
      do
      {
        v8 = 0;
        v9 = a1[v7];
        v13 = v9 & 0x7F;
        v10 = *&vmovn_s32(vshlq_u32(vdupq_n_s32(v9), xmmword_258CC16A0)) | 0x80008000800080;
        v12 = vuzp1_s8(v10, v10).u32[0];
        do
        {
          v11 = *(&v12 + v8++);
        }

        while (v11 == 128);
        [v4 appendBytes:&v12 + v8 - 1 length:6 - v8];
        v7 = (v7 + 1);
      }

      while (v7 < a2);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id NSStringFromOIDData(void *a1)
{
  v1 = a1;
  if (![v1 length] || objc_msgSend(v1, "length") > 0x20)
  {
    v2 = 0;
    goto LABEL_20;
  }

  v3 = *[v1 bytes];
  v4 = *[v1 bytes] % 0x28u;
  v5 = 40 * (v3 / 0x28) - 80;
  if (v3 <= 0x77)
  {
    v6 = v3 / 0x28;
  }

  else
  {
    v6 = 2;
  }

  if (v3 <= 0x77)
  {
    v5 = 0;
  }

  v7 = [MEMORY[0x277CCAB68] stringWithFormat:@"%u.%u", v6, v5 + v4];
  if ([v1 length] < 2)
  {
LABEL_17:
    v2 = v7;
    goto LABEL_19;
  }

  v8 = 0;
  v9 = 0;
  v10 = 2;
  v11 = 1;
  v12 = 2;
  while (1)
  {
    v13 = *([v1 bytes] + v11) & 0x7F | (v9 << 7);
    if (*([v1 bytes] + v11) < 0)
    {
      break;
    }

    [v7 appendFormat:@".%u", v13];
    if (v12 > 0x13)
    {
      goto LABEL_18;
    }

    v8 = 0;
    v9 = 0;
    ++v12;
LABEL_16:
    v11 = v10;
    if ([v1 length] <= v10++)
    {
      goto LABEL_17;
    }
  }

  if (++v8 != 4)
  {
    v9 = v13;
    goto LABEL_16;
  }

LABEL_18:
  v2 = 0;
LABEL_19:

LABEL_20:

  return v2;
}

void *NSDataFromAny(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x277CBEA90] dataWithBytes:a1[1] length:*a1];
    v1 = vars8;
  }

  return a1;
}

id decodeEmbeddedCMSContent(void *a1, void *a2, void *a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (!v8)
  {
    goto LABEL_23;
  }

  if ([v7 isEqualToString:@"1.2.840.113549.1.7.2"])
  {
    v10 = MSCMSSignedData;
LABEL_6:
    v11 = [(__objc2_class *)v10 decodeMessageSecurityObject:v8 options:v9 error:a4];
    goto LABEL_24;
  }

  if ([v7 isEqualToString:@"1.2.840.113549.1.7.3"])
  {
    v10 = MSCMSEnvelopedData;
    goto LABEL_6;
  }

  if ([v7 isEqualToString:@"1.2.840.113549.1.7.5"])
  {
    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      dispatch_once(&MS_DEFAULT_LOG_BLOCK, &__block_literal_global_6);
    }

    v12 = MS_DEFAULT_LOG_INTERNAL;
    if (!OUTLINED_FUNCTION_3_0())
    {
      goto LABEL_23;
    }

    LOWORD(v19) = 0;
    v13 = "Found unsupported content type: DigestedData";
    goto LABEL_22;
  }

  if ([v7 isEqualToString:@"1.2.840.113549.1.7.6"])
  {
    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      dispatch_once(&MS_DEFAULT_LOG_BLOCK, &__block_literal_global_6_1);
    }

    v12 = MS_DEFAULT_LOG_INTERNAL;
    if (!OUTLINED_FUNCTION_3_0())
    {
      goto LABEL_23;
    }

    LOWORD(v19) = 0;
    v13 = "Found unimplemented contented type: EncryptedData";
    goto LABEL_22;
  }

  if ([v7 isEqualToString:@"1.2.840.113549.1.9.16.1.2"])
  {
    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      dispatch_once(&MS_DEFAULT_LOG_BLOCK, &__block_literal_global_9);
    }

    v12 = MS_DEFAULT_LOG_INTERNAL;
    if (!OUTLINED_FUNCTION_3_0())
    {
      goto LABEL_23;
    }

    LOWORD(v19) = 0;
    v13 = "Found unsupported content type: AuthenticatedData";
LABEL_22:
    _os_log_impl(&dword_258C80000, v12, OS_LOG_TYPE_ERROR, v13, &v19, 2u);
    goto LABEL_23;
  }

  if ([v7 isEqualToString:@"1.2.840.113549.1.9.16.1.23"])
  {
    v10 = MSCMSAuthEnvelopedData;
    goto LABEL_6;
  }

  if ([v7 isEqualToString:@"1.2.840.113549.1.9.16.1.9"])
  {
    v10 = MSCMSCompressedData;
    goto LABEL_6;
  }

  if (MS_DEFAULT_LOG_BLOCK != -1)
  {
    dispatch_once(&MS_DEFAULT_LOG_BLOCK, &__block_literal_global_14_0);
  }

  v16 = MS_DEFAULT_LOG_INTERNAL;
  if (OUTLINED_FUNCTION_3_0())
  {
    v17 = v16;
    v18 = [v7 OIDString];
    v19 = 138412290;
    v20 = v18;
    _os_log_impl(&dword_258C80000, v17, OS_LOG_TYPE_ERROR, "Found unknown content type: %@", &v19, 0xCu);
  }

LABEL_23:
  v11 = 0;
LABEL_24:

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t nsheim_decode_CMSSignedData(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];

  return _asn1_decode_top();
}

id CertificateSerialNumberData(uint64_t a1)
{
  if (a1)
  {
    v1 = der_length_heim_integer();
    if (v1)
    {
      v2 = v1;
      v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v1];
      v4 = v3;
      if (!v3)
      {
        goto LABEL_9;
      }

      [v3 mutableBytes];
      if (!der_put_heim_integer() && v2 == 0)
      {
        goto LABEL_9;
      }
    }
  }

  v4 = 0;
LABEL_9:

  return v4;
}

uint64_t findCertificateForIdentifier(uint64_t a1, void *a2, void *a3, id *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [MSCMSIdentifier decodeIdentifier:a1 error:a4];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  v11 = [v9 type];
  if (v11 == 2)
  {
    CertificateBySubjectKeyID = findCertificateBySubjectKeyID([v10 subjectKeyId], v7, v8, a4);
    goto LABEL_6;
  }

  if (v11 != 1)
  {
    if (a4)
    {
      [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:*a4 description:@"unable to find certificate by identifier; invalid choice in encoding"];
      *a4 = v13 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  CertificateBySubjectKeyID = findCertificateByIssuerAndSerialNumber([v10 issuerAndSerialNumber], v7, v8, a4);
LABEL_6:
  v13 = CertificateBySubjectKeyID;
LABEL_10:

  return v13;
}

uint64_t findCertificateByIssuerAndSerialNumber(void *a1, void *a2, void *a3, id *a4)
{
  v74 = *MEMORY[0x277D85DE8];
  v41 = a2;
  v39 = a3;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v36 = a4;
  if (a4)
  {
    if (*a4)
    {
      a4 = [*a4 copy];
    }

    else
    {
      a4 = 0;
    }
  }

  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__3;
  v63 = __Block_byref_object_dispose__3;
  v64 = NSDataFromInteger(a1 + 2);
  [MEMORY[0x277CBEA90] dataWithBytes:a1[1] length:*a1];
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__3;
  v37 = v57 = __Block_byref_object_dispose__3;
  v58 = SecDistinguishedNameCopyNormalizedSequence();
  v38 = [MEMORY[0x277CBEB18] array];
  if (v41 && [v41 count])
  {
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __findCertificateByIssuerAndSerialNumber_block_invoke;
    v48[3] = &unk_2798BE598;
    v50 = &v53;
    v51 = &v59;
    v52 = &v65;
    v49 = v38;
    [v41 enumerateObjectsUsingBlock:v48];
  }

  v7 = v66[3];
  if (v7)
  {
    v40 = a4;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    [v8 setObject:*MEMORY[0x277CDC230] forKey:*MEMORY[0x277CDC228]];
    if (v54[5])
    {
      v9 = v54[5];
    }

    else
    {
      v9 = v37;
    }

    [v8 setObject:v9 forKey:*MEMORY[0x277CDBFD8]];
    [v8 setObject:v60[5] forKey:*MEMORY[0x277CDC110]];
    [v8 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC568]];
    if (v39)
    {
      [v8 setObject:v39 forKey:*MEMORY[0x277CDC5A0]];
    }

    v47 = a4;
    v35 = v8;
    ItemInAllAvailableKeychains = findItemInAllAvailableKeychains(v8);
    v40 = a4;

    if (ItemInAllAvailableKeychains)
    {
      v11 = CFGetTypeID(ItemInAllAvailableKeychains);
      if (v11 == SecCertificateGetTypeID())
      {
        v66[3] = ItemInAllAvailableKeychains;
      }

      else
      {
        CFRelease(ItemInAllAvailableKeychains);
      }
    }

    if (!v66[3])
    {
      if (MS_DEFAULT_LOG_BLOCK != -1)
      {
        findCertificateByIssuerAndSerialNumber_cold_1();
      }

      v12 = MS_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v60[5] asMessageSecurityHexString];
        *buf = 141558274;
        v71 = 1752392040;
        v72 = 2112;
        v73 = v13;
        _os_log_impl(&dword_258C80000, v12, OS_LOG_TYPE_INFO, "QuerySN = %{mask.hash}@", buf, 0x16u);
      }

      if (MS_DEFAULT_LOG_BLOCK != -1)
      {
        findCertificateByIssuerAndSerialNumber_cold_2();
      }

      v14 = MS_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v54[5] asMessageSecurityHexString];
        *buf = 141558274;
        v71 = 1752392040;
        v72 = 2112;
        v73 = v15;
        _os_log_impl(&dword_258C80000, v14, OS_LOG_TYPE_INFO, "QueryIssuer = %{mask.hash}@", buf, 0x16u);
      }

      dumpNSData("QuerySN", v60[5]);
      dumpNSData("QueryIssuer", v54[5]);
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = v38;
      v16 = [obj countByEnumeratingWithState:&v43 objects:v69 count:16];
      if (v16)
      {
        v17 = *v44;
        do
        {
          v18 = 0;
          do
          {
            if (*v44 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v43 + 1) + 8 * v18);
            if (MS_DEFAULT_LOG_BLOCK != -1)
            {
              findCertificateByIssuerAndSerialNumber_cold_3();
            }

            v20 = MS_DEFAULT_LOG_INTERNAL;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = [v19 objectAtIndexedSubscript:0];
              v22 = [v21 asMessageSecurityHexString];
              *buf = 141558274;
              v71 = 1752392040;
              v72 = 2112;
              v73 = v22;
              _os_log_impl(&dword_258C80000, v20, OS_LOG_TYPE_INFO, "BundledSN = %{mask.hash}@", buf, 0x16u);
            }

            if (MS_DEFAULT_LOG_BLOCK != -1)
            {
              findCertificateByIssuerAndSerialNumber_cold_4();
            }

            v23 = MS_DEFAULT_LOG_INTERNAL;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = [v19 objectAtIndexedSubscript:1];
              v25 = [v24 asMessageSecurityHexString];
              *buf = 141558274;
              v71 = 1752392040;
              v72 = 2112;
              v73 = v25;
              _os_log_impl(&dword_258C80000, v23, OS_LOG_TYPE_INFO, "BundledIssuer = %{mask.hash}@", buf, 0x16u);
            }

            v26 = [v19 objectAtIndexedSubscript:0];
            dumpNSData("BundledSN", v26);

            v27 = [v19 objectAtIndexedSubscript:1];
            dumpNSData("BundledIssuer", v27);

            ++v18;
          }

          while (v16 != v18);
          v16 = [obj countByEnumeratingWithState:&v43 objects:v69 count:16];
        }

        while (v16);
      }

      v28 = MSErrorKeychainDomain[0];
      v29 = NSStringFromDERIntegerData(v60[5]);
      v30 = NSSStringFromIssuerName(v54[5]);
      v31 = [MSError MSErrorWithDomain:v28 code:-25300 errorLevel:1 underlyingError:v40 description:@"%s did not find IssuerAndSerialNumber %@ %@", "findCertificateByIssuerAndSerialNumber", v29, v30];

      v40 = v31;
    }

    if (v36 && v40)
    {
      v32 = v40;
      *v36 = v40;
    }

    v7 = v66[3];
  }

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);

  _Block_object_dispose(&v65, 8);
  v33 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_258C827AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

void *NSDataFromInteger(void *a1)
{
  v1 = a1;
  if (a1)
  {
    if (*a1 && !*(a1 + 4) && *a1[1] < 0)
    {
      v4 = 0;
      v3 = [MEMORY[0x277CBEB28] dataWithBytes:&v4 length:1];
      [v3 appendBytes:v1[1] length:*v1];
      v1 = [MEMORY[0x277CBEA90] dataWithData:v3];
    }

    else
    {
      v1 = [MEMORY[0x277CBEA90] dataWithBytes:a1[1] length:?];
    }
  }

  return v1;
}

void __findCertificateByIssuerAndSerialNumber_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  certificate = a2;
  v6 = SecCertificateCopyNormalizedIssuerSequence(certificate);
  v7 = SecCertificateCopySerialNumberData(certificate, 0);
  if (![*(*(*(a1 + 40) + 8) + 40) isEqualToData:v6] || !objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "isEqualToData:", v7))
  {
    v9 = [MEMORY[0x277CBEB18] array];
    v10 = v9;
    if (v7)
    {
      [v9 addObject:v7];
      if (v6)
      {
LABEL_8:
        [v10 addObject:v6];
LABEL_11:
        [*(a1 + 32) addObject:v10];

        goto LABEL_12;
      }
    }

    else
    {
      v11 = [MEMORY[0x277CBEA90] data];
      [v10 addObject:v11];

      if (v6)
      {
        goto LABEL_8;
      }
    }

    v12 = [MEMORY[0x277CBEA90] data];
    [v10 addObject:v12];

    goto LABEL_11;
  }

  v8 = certificate;
  if (certificate)
  {
    CFRetain(certificate);
    v8 = certificate;
  }

  *(*(*(a1 + 56) + 8) + 24) = v8;
  *a4 = 1;
LABEL_12:
}

void *NSDataFromOctetString(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x277CBEA90] dataWithBytes:a1[1] length:*a1];
    v1 = vars8;
  }

  return a1;
}

uint64_t nsheim_decode_Time(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_ContentType(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_MessageDigest(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_AppleHashAgilityValue(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_AppleAgileHash(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t sub_258C83B8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258C83BAC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_258C83BD4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258C83BF4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_258C83C28(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258C83C48(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

id findBestMutuallySupportedSignatureAlgorithm(__SecCertificate *a1, void *a2)
{
  v3 = a2;
  KeyTypeForCertificate = getKeyTypeForCertificate(a1);
  if (KeyTypeForCertificate == 1)
  {
    v8 = findBestMutuallySupportedRSASignatureAlgorithm_onceToken;
    v9 = v3;
    if (v8 != -1)
    {
      findBestMutuallySupportedSignatureAlgorithm_cold_1();
    }

    v7 = &findBestMutuallySupportedRSASignatureAlgorithm_rsaPreferences;
    goto LABEL_9;
  }

  if (KeyTypeForCertificate == 3)
  {
    v5 = findBestMutuallySupportedECSignatureAlgorithm_onceToken;
    v6 = v3;
    if (v5 != -1)
    {
      findBestMutuallySupportedSignatureAlgorithm_cold_2();
    }

    v7 = &findBestMutuallySupportedECSignatureAlgorithm_ecPreferences;
LABEL_9:
    v10 = findBestMutuallySupportAlgorithm(*v7, v3);

    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

uint64_t getKeyTypeForCertificate(__SecCertificate *a1)
{
  if (!a1)
  {
    return -1;
  }

  v1 = SecCertificateCopyKey(a1);
  if (!v1)
  {
    return -1;
  }

  v2 = v1;
  AlgorithmId = SecKeyGetAlgorithmId();
  CFRelease(v2);
  return AlgorithmId;
}

id findBestMutuallySupportedKeyEncryptionAlgorithm(void *a1)
{
  v1 = findBestMutuallySupportedKeyEncryptionAlgorithm_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    findBestMutuallySupportedKeyEncryptionAlgorithm_cold_1();
  }

  v3 = findBestMutuallySupportAlgorithm(findBestMutuallySupportedKeyEncryptionAlgorithm_keyEncryptionPreferences, v2);

  return v3;
}

void __findBestMutuallySupportedKeyEncryptionAlgorithm_block_invoke()
{
  v0 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  v1 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.1.45" error:0];
  [v0 addObject:v1];

  v2 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.1.25" error:0];
  [v0 addObject:v2];

  v3 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.1.5" error:0];
  [v0 addObject:v3];

  v4 = [MSOID OIDWithString:@"1.2.840.113549.1.9.16.3.7" error:0];
  [v0 addObject:v4];

  v5 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.1.42" error:0];
  [v0 addObject:v5];

  v6 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.1.22" error:0];
  [v0 addObject:v6];

  v7 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.1.2" error:0];
  [v0 addObject:v7];

  v8 = [MSOID OIDWithString:@"1.2.840.113549.3.7" error:0];
  [v0 addObject:v8];

  v9 = [MSOID OIDWithString:@"1.2.840.113549.3.2" error:0];
  [v0 addObject:v9];

  v10 = findBestMutuallySupportedKeyEncryptionAlgorithm_keyEncryptionPreferences;
  findBestMutuallySupportedKeyEncryptionAlgorithm_keyEncryptionPreferences = v0;
}

id findBestMutuallySupportAlgorithm(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy_;
    v17 = __Block_byref_object_dispose_;
    v18 = 0;
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __findBestMutuallySupportAlgorithm_block_invoke;
    v8[3] = &unk_2798BE010;
    v9 = v4;
    v10 = &v13;
    v11 = v12;
    [v3 enumerateObjectsUsingBlock:v8];
    v6 = v14[5];

    _Block_object_dispose(v12, 8);
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v6 = [v3 objectAtIndex:0];
  }

  return v6;
}

void sub_258C84158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

id findBestMutuallySupportedEncryptionAlgorithm(void *a1)
{
  v1 = findBestMutuallySupportedEncryptionAlgorithm_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    findBestMutuallySupportedEncryptionAlgorithm_cold_1();
  }

  v3 = findBestMutuallySupportAlgorithm(findBestMutuallySupportedEncryptionAlgorithm_keyEncryptionPreferences, v2);

  return v3;
}

void __findBestMutuallySupportedEncryptionAlgorithm_block_invoke()
{
  v0 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  v1 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.1.42" error:0];
  [v0 addObject:v1];

  v2 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.1.22" error:0];
  [v0 addObject:v2];

  v3 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.1.2" error:0];
  [v0 addObject:v3];

  v4 = [MSOID OIDWithString:@"1.2.840.113549.3.7" error:0];
  [v0 addObject:v4];

  v5 = [MSOID OIDWithString:@"1.2.840.113549.3.2" error:0];
  [v0 addObject:v5];

  v6 = findBestMutuallySupportedEncryptionAlgorithm_keyEncryptionPreferences;
  findBestMutuallySupportedEncryptionAlgorithm_keyEncryptionPreferences = v0;
}

id MSDecryptGCMOneShot(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CBEB28];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = [v9 dataWithLength:{objc_msgSend(v10, "length")}];
  [v13 bytes];
  [v13 length];

  [v12 bytes];
  [v12 length];

  [v10 bytes];
  v15 = [v10 length];

  v16 = [v14 mutableBytes];
  v17 = [v11 bytes];
  v18 = [v11 length];

  v26 = v17;
  v19 = CCCryptorGCMOneshotDecrypt();
  if (v19)
  {
    v20 = v19;
    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      MSDecryptGCMOneShot_cold_1();
    }

    v21 = MS_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v29 = v20;
      _os_log_impl(&dword_258C80000, v21, OS_LOG_TYPE_ERROR, "Error decrypting underlying crypto error %d", buf, 8u);
    }

    if (a6)
    {
      v22 = [MSError MSErrorWithDomain:MSErrorCryptoDomain[0] code:v20 underlyingError:*a6 description:@"MSDecryptGCM error: %d", v20, v16, v26, v18];
      *a6 = v22;
    }

    else
    {
      v22 = [MSError MSErrorWithDomain:MSErrorCryptoDomain[0] code:v20 underlyingError:0 description:@"MSDecryptGCM error: %d", v20, v16, v26, v18];
    }

    v23 = 0;
  }

  else
  {
    v23 = [MEMORY[0x277CBEA90] dataWithData:{v14, v15, v16, v17, v18}];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

uint64_t __MSDecryptGCMOneShot_block_invoke()
{
  MS_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.MessageSecurity", "default");

  return MEMORY[0x2821F96F8]();
}

void __findBestMutuallySupportedECSignatureAlgorithm_block_invoke()
{
  v0 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  v1 = [MSOID OIDWithString:@"1.2.840.10045.4.3.3" error:0];
  [v0 addObject:v1];

  v2 = [MSOID OIDWithString:@"1.2.840.10045.4.3.2" error:0];
  [v0 addObject:v2];

  v3 = [MSOID OIDWithString:@"1.2.840.10045.4.3.4" error:0];
  [v0 addObject:v3];

  v4 = [MSOID OIDWithString:@"1.2.840.10045.4.3.1" error:0];
  [v0 addObject:v4];

  v5 = [MSOID OIDWithString:@"1.2.840.10045.4.1" error:0];
  [v0 addObject:v5];

  v6 = findBestMutuallySupportedECSignatureAlgorithm_ecPreferences;
  findBestMutuallySupportedECSignatureAlgorithm_ecPreferences = v0;
}

void __findBestMutuallySupportedRSASignatureAlgorithm_block_invoke()
{
  v0 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  v1 = [MSOID OIDWithString:@"1.2.840.113549.1.1.12" error:0];
  [v0 addObject:v1];

  v2 = [MSOID OIDWithString:@"1.2.840.113549.1.1.11" error:0];
  [v0 addObject:v2];

  v3 = [MSOID OIDWithString:@"1.2.840.113549.1.1.13" error:0];
  [v0 addObject:v3];

  v4 = [MSOID OIDWithString:@"1.2.840.113549.1.1.14" error:0];
  [v0 addObject:v4];

  v5 = [MSOID OIDWithString:@"1.2.840.113549.1.1.5" error:0];
  [v0 addObject:v5];

  v6 = findBestMutuallySupportedRSASignatureAlgorithm_rsaPreferences;
  findBestMutuallySupportedRSASignatureAlgorithm_rsaPreferences = v0;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __findBestMutuallySupportAlgorithm_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v8 = *(a1 + 32);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __findBestMutuallySupportAlgorithm_block_invoke_2;
  v16 = &unk_2798BDFE8;
  v9 = v7;
  v17 = v9;
  v18 = &v19;
  [v8 enumerateObjectsUsingBlock:&v13];
  v10 = v20[3];
  if (v10 == [*(a1 + 32) count])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }

  v11 = v20[3];
  v12 = *(*(a1 + 48) + 8);
  if (v11 > *(v12 + 24))
  {
    *(v12 + 24) = v11;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  _Block_object_dispose(&v19, 8);
}

void sub_258C849F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __findBestMutuallySupportAlgorithm_block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 containsObject:*(a1 + 32)];
  if (result)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

void __algorithmOIDToParameters_block_invoke()
{
  v4[27] = *MEMORY[0x277D85DE8];
  v3[0] = @"1.2.840.113549.2.5";
  v3[1] = @"1.3.14.3.2.26";
  v4[0] = MEMORY[0x277CBEC28];
  v4[1] = MEMORY[0x277CBEC38];
  v3[2] = @"2.16.840.1.101.3.4.2.4";
  v3[3] = @"2.16.840.1.101.3.4.2.1";
  v4[2] = MEMORY[0x277CBEC38];
  v4[3] = MEMORY[0x277CBEC38];
  v3[4] = @"2.16.840.1.101.3.4.2.2";
  v3[5] = @"2.16.840.1.101.3.4.2.3";
  v4[4] = MEMORY[0x277CBEC38];
  v4[5] = MEMORY[0x277CBEC38];
  v3[6] = @"1.2.840.113549.1.1.4";
  v3[7] = @"1.2.840.113549.1.1.5";
  v4[6] = MEMORY[0x277CBEC28];
  v4[7] = MEMORY[0x277CBEC28];
  v3[8] = @"1.2.840.113549.1.1.14";
  v3[9] = @"1.2.840.113549.1.1.11";
  v4[8] = MEMORY[0x277CBEC28];
  v4[9] = MEMORY[0x277CBEC28];
  v3[10] = @"1.2.840.113549.1.1.12";
  v3[11] = @"1.2.840.113549.1.1.13";
  v4[10] = MEMORY[0x277CBEC28];
  v4[11] = MEMORY[0x277CBEC28];
  v3[12] = @"1.2.840.10045.4.1";
  v3[13] = @"1.2.840.10045.4.3.1";
  v4[12] = MEMORY[0x277CBEC38];
  v4[13] = MEMORY[0x277CBEC38];
  v3[14] = @"1.2.840.10045.4.3.2";
  v3[15] = @"1.2.840.10045.4.3.3";
  v4[14] = MEMORY[0x277CBEC38];
  v4[15] = MEMORY[0x277CBEC38];
  v3[16] = @"1.2.840.10045.4.3.4";
  v3[17] = @"1.2.840.113549.1.1.1";
  v4[16] = MEMORY[0x277CBEC38];
  v4[17] = MEMORY[0x277CBEC28];
  v3[18] = @"2.16.840.1.101.3.4.1.2";
  v3[19] = @"2.16.840.1.101.3.4.1.22";
  v4[18] = MEMORY[0x277CBEC28];
  v4[19] = MEMORY[0x277CBEC28];
  v3[20] = @"2.16.840.1.101.3.4.1.42";
  v3[21] = @"2.16.840.1.101.3.4.1.6";
  v4[20] = MEMORY[0x277CBEC28];
  v4[21] = MEMORY[0x277CBEC28];
  v3[22] = @"2.16.840.1.101.3.4.1.26";
  v3[23] = @"2.16.840.1.101.3.4.1.46";
  v4[22] = MEMORY[0x277CBEC28];
  v4[23] = MEMORY[0x277CBEC28];
  v3[24] = @"2.16.840.1.101.3.4.1.5";
  v3[25] = @"2.16.840.1.101.3.4.1.25";
  v4[24] = MEMORY[0x277CBEC38];
  v4[25] = MEMORY[0x277CBEC38];
  v3[26] = @"2.16.840.1.101.3.4.1.45";
  v4[26] = MEMORY[0x277CBEC38];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:27];
  v1 = algorithmOIDToParameters_sAlgorithmOIDStringIsAbsentParameters;
  algorithmOIDToParameters_sAlgorithmOIDStringIsAbsentParameters = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void *NSDataFromBaseData(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x277CBEA90] dataWithBytes:a1[1] length:*a1];
    v1 = vars8;
  }

  return a1;
}

void *NSDataFromBitString(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x277CBEA90] dataWithBytes:a1[1] length:(*a1 + 7) >> 3];
    v1 = vars8;
  }

  return a1;
}

void *NSDataFromAnySet(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x277CBEA90] dataWithBytes:a1[1] length:*a1];
    v1 = vars8;
  }

  return a1;
}

void *NSStringFromUTF8String(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x277CCACA8] stringWithUTF8String:*a1];
    v1 = vars8;
  }

  return a1;
}

void sub_258C8C390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_258C8C52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258C8C6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258C8CBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258C8E0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_258C8E324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258C8F760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_258C8FC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_258C90094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id generalizedTimeStringFromDate(void *a1)
{
  v1 = MEMORY[0x277CCA968];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v3 setLocale:v4];

  [v3 setDateFormat:@"yyyyMMddHHmmss'Z'"];
  v5 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v5];

  v6 = [v3 stringFromDate:v2];

  return v6;
}

id UTCStringFromDate(void *a1)
{
  v1 = MEMORY[0x277CCA968];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v3 setLocale:v4];

  [v3 setDateFormat:@"yyMMddHHmmss'Z'"];
  v5 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v5];

  v6 = [v3 stringFromDate:v2];

  return v6;
}

void sub_258C9273C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _MSLog(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      if (MS_DEFAULT_LOG_BLOCK != -1)
      {
        _MSLog_cold_2();
      }

      v8 = MS_DEFAULT_LOG_INTERNAL;
      if (!os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v11 = 138543362;
      v12 = v3;
    }

    else
    {
      if (a1 != 4)
      {
        if (a1 == 5)
        {
          if (MS_DEFAULT_LOG_BLOCK != -1)
          {
            _MSLog_cold_5();
          }

          v4 = MS_DEFAULT_LOG_INTERNAL;
          if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
          {
            v11 = 138543362;
            v12 = v3;
            v5 = v4;
            v6 = OS_LOG_TYPE_ERROR;
LABEL_25:
            _os_log_impl(&dword_258C80000, v5, v6, "%{public}@", &v11, 0xCu);
            goto LABEL_26;
          }
        }

        goto LABEL_26;
      }

      if (MS_DEFAULT_LOG_BLOCK != -1)
      {
        _MSLog_cold_1();
      }

      v8 = MS_DEFAULT_LOG_INTERNAL;
      if (!os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v11 = 138543362;
      v12 = v3;
    }

    v5 = v8;
    v6 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_25;
  }

  if (a1 == 1)
  {
    if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
    {
      if (MS_DEFAULT_LOG_BLOCK != -1)
      {
        _MSLog_cold_4();
      }

      v10 = MS_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
      {
        v11 = 138543362;
        v12 = v3;
        v5 = v10;
        v6 = OS_LOG_TYPE_DEBUG;
        goto LABEL_25;
      }
    }
  }

  else if (a1 == 2 && os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_INFO))
  {
    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      _MSLog_cold_3();
    }

    v7 = MS_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_INFO))
    {
      v11 = 138543362;
      v12 = v3;
      v5 = v7;
      v6 = OS_LOG_TYPE_INFO;
      goto LABEL_25;
    }
  }

LABEL_26:

  v9 = *MEMORY[0x277D85DE8];
}

void sub_258C94FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_258C958B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258C95A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258C95D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_258C9610C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_258C96474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __decodeEmbeddedCMSContent_block_invoke()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __decodeEmbeddedCMSContent_block_invoke_4()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __decodeEmbeddedCMSContent_block_invoke_7()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __decodeEmbeddedCMSContent_block_invoke_12()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

SecCertificateRef MSSecIdentityCopyCertificateWithError(__SecIdentity *a1, void *a2)
{
  certificateRef = 0;
  v3 = SecIdentityCopyCertificate(a1, &certificateRef);
  if (!v3)
  {
    return certificateRef;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = [MSError MSErrorWithDomain:*MEMORY[0x277CCA590] code:v3 underlyingError:*a2 description:@"unable to get certificate from provided identity"];
  v5 = v4;
  result = 0;
  *a2 = v4;
  return result;
}

SecKeyRef MSSecIdentityCopyKeyWithError(__SecIdentity *a1, void *a2)
{
  privateKeyRef = 0;
  v3 = SecIdentityCopyPrivateKey(a1, &privateKeyRef);
  if (!v3)
  {
    return privateKeyRef;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = [MSError MSErrorWithDomain:*MEMORY[0x277CCA590] code:v3 underlyingError:*a2 description:@"unable to get private key from provided identity"];
  v5 = v4;
  result = 0;
  *a2 = v4;
  return result;
}

SecTrustRef MSSecTrustCreateWithError(uint64_t a1, void *a2, void *a3, void *a4, id *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  trust = 0;
  if (a5 && *a5)
  {
    v12 = [*a5 copy];
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    [MEMORY[0x277CBEB18] arrayWithArray:v9];
  }

  else
  {
    [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  }
  v13 = ;
  [v13 insertObject:a1 atIndex:0];
  v14 = SecTrustCreateWithCertificates(v13, v11, &trust);
  if (v14)
  {
    v18 = @"unable to create trust object";
  }

  else
  {
    if (!v10 || (v14 = SecTrustSetVerifyDate(trust, v10)) == 0)
    {
      if (!a5)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    v18 = @"unable to set verify date on trust object";
  }

  v19 = [MSError MSErrorWithDomain:*MEMORY[0x277CCA590] code:v14 underlyingError:v12 description:v18];

  v12 = v19;
  if (!a5)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v12)
  {
    v15 = v12;
    *a5 = v12;
  }

LABEL_14:
  v16 = trust;

  return v16;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __findCertificateByIssuerAndSerialNumber_block_invoke_2()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __findCertificateByIssuerAndSerialNumber_block_invoke_47()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void dumpNSData(const char *a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5 = os_variant_allows_internal_security_policies();
    v6 = CFPreferencesCopyValue(@"logCMSDecodingFailures", @"com.apple.messagesecurity", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);
    v7 = *MEMORY[0x277CBF008];
    v8 = CFPreferencesCopyAppValue(@"logCMSDecodingFailures", *MEMORY[0x277CBF008]);
    IsForced = CFPreferencesAppValueIsForced(@"logCMSDecodingFailures", v7);
    if (v5 && v6 && (v10 = CFGetTypeID(v6), TypeID = CFBooleanGetTypeID(), v12 = v6, v10 == TypeID) || (IsForced ? (v13 = v8 == 0) : (v13 = 1), !v13 && (v14 = CFGetTypeID(v8), v15 = CFBooleanGetTypeID(), v12 = v8, v14 == v15)))
    {
      Value = CFBooleanGetValue(v12);
    }

    else
    {
      Value = 0;
    }

    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      dumpNSData_cold_1();
    }

    v17 = MS_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
    {
      v18 = v17;
      v19 = [@"logCMSDecodingFailures" cString];
      *buf = 136316674;
      v36 = "valueForBooleanDefault";
      v20 = "NULL";
      v37 = 2080;
      v38 = v19;
      if (v6)
      {
        v21 = "NOT_NULL";
      }

      else
      {
        v21 = "NULL";
      }

      *v40 = v5;
      v39 = 1024;
      if (v8)
      {
        v20 = "NOT_NULL";
      }

      *&v40[4] = 2080;
      *&v40[6] = v21;
      *&v40[14] = 1024;
      *&v40[16] = IsForced;
      *v41 = 2080;
      *&v41[2] = v20;
      LOWORD(v42) = 1024;
      *(&v42 + 2) = Value;
      _os_log_impl(&dword_258C80000, v18, OS_LOG_TYPE_DEBUG, "%s %s isInternal: %d val: %s isForced: %d appVal: %s result: %d", buf, 0x3Cu);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (Value)
    {
      v22 = [v4 bytes];
      v23 = [v4 length];
      bzero(log_buffer, 0x2711uLL);
      if (v23)
      {
        v24 = 0;
        v25 = 0;
        v26 = v22 + 1;
        do
        {
          v27 = *v22++;
          v28 = snprintf(&log_buffer[v24], 10001 - v24, "0x%02x,", v27);
          if (!--v23 || (v24 += v28, (v24 - 9996) <= 5))
          {
            if (MS_DEFAULT_LOG_BLOCK != -1)
            {
              dumpNSData_cold_2();
            }

            v29 = MS_DEFAULT_LOG_INTERNAL;
            v30 = v26;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v31 = [v4 bytes];
              v32 = &v26[-[v4 bytes]];
              v33 = [v4 length];
              *buf = 136316418;
              v36 = a1;
              v37 = 2048;
              v38 = v31;
              v39 = 2048;
              *v40 = v25;
              *&v40[8] = 2048;
              *&v40[10] = v32;
              *&v40[18] = 2048;
              *v41 = v33;
              *&v41[8] = 2080;
              v42 = log_buffer;
              _os_log_impl(&dword_258C80000, v29, OS_LOG_TYPE_ERROR, "logging %s 0x%zx [%ld-%ld)/%ld %s", buf, 0x3Eu);
              v30 = v22;
            }

            v25 = &v30[-[v4 bytes]];
            bzero(log_buffer, 0x2711uLL);
            v24 = 0;
          }

          ++v26;
        }

        while (v23);
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __findCertificateByIssuerAndSerialNumber_block_invoke_52()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __findCertificateByIssuerAndSerialNumber_block_invoke_55()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

__CFString *NSStringFromDERIntegerData(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 bytes];
    [v2 length];
    if (der_get_integer() || [v2 length])
    {
      v3 = [v2 asMessageSecurityHexString];
    }

    else
    {
      v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", 0];
    }

    v4 = v3;
  }

  else
  {
    v4 = @"NULL";
  }

  return v4;
}

__CFString *NSSStringFromIssuerName(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = @"NULL";
    goto LABEL_34;
  }

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v24 = v1;
  v2 = @"INVALID_ISSUER";
  if (nsheim_decode_Name(v1) || v30 != 1)
  {
    goto LABEL_33;
  }

  v3 = DWORD2(v30);
  if (!DWORD2(v30))
  {
    v2 = &stru_286A08A88;
    goto LABEL_33;
  }

  v4 = 0;
  v2 = &stru_286A08A88;
  do
  {
    v5 = (v31 + 16 * v4);
    v6 = *v5;
    if (!v6)
    {
      goto LABEL_27;
    }

    v25 = v4;
    v7 = *(v5 + 1);
    do
    {
      v8 = v2;
      v28 = 0;
      v26 = 0u;
      *__s = 0u;
      v9 = *v7;
      v10 = v7[1];
      v28 = *(v7 + 4);
      v26 = v9;
      *__s = v10;
      v11 = [[MSOID alloc] initWithAsn1OID:&v26 error:0];
      v12 = v11;
      if (v11)
      {
        v13 = [(MSOID *)v11 OIDString];
      }

      else
      {
        v13 = @"INVALID_OID";
      }

      if (SLODWORD(__s[0]) > 3)
      {
        if (LODWORD(__s[0]) == 4)
        {
          v15 = objc_alloc(MEMORY[0x277CCACA8]);
          v17 = __s[1];
          v16 = v28;
          v18 = 2348810496;
          goto LABEL_21;
        }

        if (LODWORD(__s[0]) != 5)
        {
          v14 = @"UNEXPECTED_VALUE";
          if (LODWORD(__s[0]) != 6)
          {
            goto LABEL_23;
          }

          v15 = objc_alloc(MEMORY[0x277CCACA8]);
          v17 = __s[1];
          v16 = v28;
          v18 = 10;
          goto LABEL_21;
        }

        v21 = objc_alloc(MEMORY[0x277CCACA8]);
        v19 = [v21 initWithUTF8String:__s[1]];
LABEL_22:
        v14 = v19;
        goto LABEL_23;
      }

      if (LODWORD(__s[0]) == 1)
      {
        goto LABEL_15;
      }

      if (LODWORD(__s[0]) != 2)
      {
        v14 = @"UNEXPECTED_VALUE";
        if (LODWORD(__s[0]) != 3)
        {
          goto LABEL_23;
        }

LABEL_15:
        v15 = objc_alloc(MEMORY[0x277CCACA8]);
        v17 = __s[1];
        v16 = v28;
        v18 = 1;
LABEL_21:
        v19 = [v15 initWithBytes:v16 length:v17 encoding:v18];
        goto LABEL_22;
      }

      v20 = [MEMORY[0x277CBEA90] dataWithBytes:__s[1] length:strlen(__s[1])];
      v14 = [v20 asMessageSecurityHexString];

LABEL_23:
      v2 = [(__CFString *)v8 stringByAppendingFormat:@"%@:%@ ", v13, v14];

      v7 = (v7 + 40);
      --v6;
    }

    while (v6);
    v3 = DWORD2(v30);
    v4 = v25;
LABEL_27:
    if (++v4 < v3)
    {
      v22 = [(__CFString *)v2 stringByAppendingFormat:@"| "];

      v3 = DWORD2(v30);
      v2 = v22;
    }
  }

  while (v4 < v3);
LABEL_33:
  v1 = v24;
LABEL_34:

  return v2;
}

uint64_t findCertificateBySubjectKeyID(void *a1, void *a2, void *a3, id *a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v32 = a2;
  v31 = a3;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__3;
  v46 = __Block_byref_object_dispose__3;
  v47 = NSDataFromOctetString(a1);
  v29 = a4;
  if (a4 && *a4)
  {
    v7 = [*a4 copy];
  }

  else
  {
    v7 = 0;
  }

  v30 = [MEMORY[0x277CBEB18] array];
  if (v32 && [v32 count])
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __findCertificateBySubjectKeyID_block_invoke;
    v38[3] = &unk_2798BE5C0;
    v40 = &v42;
    v41 = &v48;
    v39 = v30;
    [v32 enumerateObjectsUsingBlock:v38];
  }

  v8 = v49[3];
  if (!v8)
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
    [v9 setObject:*MEMORY[0x277CDC230] forKey:*MEMORY[0x277CDC228]];
    [v9 setObject:v43[5] forKey:*MEMORY[0x277CDC130]];
    [v9 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC568]];
    if (v31)
    {
      [v9 setObject:v31 forKey:*MEMORY[0x277CDC5A0]];
    }

    v37 = v7;
    v27 = v9;
    ItemInAllAvailableKeychains = findItemInAllAvailableKeychains(v9);
    v28 = v7;

    if (ItemInAllAvailableKeychains)
    {
      v11 = CFGetTypeID(ItemInAllAvailableKeychains);
      if (v11 == SecCertificateGetTypeID())
      {
        v49[3] = ItemInAllAvailableKeychains;
      }

      else
      {
        CFRelease(ItemInAllAvailableKeychains);
      }
    }

    if (v49[3])
    {
      v7 = v28;
    }

    else
    {
      if (MS_DEFAULT_LOG_BLOCK != -1)
      {
        findCertificateBySubjectKeyID_cold_1();
      }

      v12 = MS_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v43[5] asMessageSecurityHexString];
        *buf = 141558274;
        v54 = 1752392040;
        v55 = 2112;
        v56 = v13;
        _os_log_impl(&dword_258C80000, v12, OS_LOG_TYPE_INFO, "QuerySKID = %{mask.hash}@", buf, 0x16u);
      }

      dumpNSData("QuerySKID", v43[5]);
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v14 = v30;
      v15 = [v14 countByEnumeratingWithState:&v33 objects:v52 count:16];
      if (v15)
      {
        v16 = *v34;
        do
        {
          v17 = 0;
          do
          {
            if (*v34 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v33 + 1) + 8 * v17);
            if (MS_DEFAULT_LOG_BLOCK != -1)
            {
              findCertificateBySubjectKeyID_cold_2();
            }

            v19 = MS_DEFAULT_LOG_INTERNAL;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = [v18 asMessageSecurityHexString];
              *buf = 141558274;
              v54 = 1752392040;
              v55 = 2112;
              v56 = v20;
              _os_log_impl(&dword_258C80000, v19, OS_LOG_TYPE_INFO, "BundledSKID = %{mask.hash}@", buf, 0x16u);
            }

            dumpNSData("BundledSKID", v18);
            ++v17;
          }

          while (v15 != v17);
          v15 = [v14 countByEnumeratingWithState:&v33 objects:v52 count:16];
        }

        while (v15);
      }

      v21 = MSErrorKeychainDomain[0];
      v22 = v43[5];
      if (v22)
      {
        v23 = [v43[5] asMessageSecurityHexString];
      }

      else
      {
        v23 = @"NULL";
      }

      v7 = [MSError MSErrorWithDomain:v21 code:-25300 errorLevel:1 underlyingError:v28 description:@"%s did not find SubjectKeyIdentifier %@", "findCertificateBySubjectKeyID", v23, v9];

      if (v22)
      {
      }
    }

    if (v29 && v7)
    {
      v24 = v7;
      *v29 = v7;
    }

    v8 = v49[3];
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);

  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_258C97BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void __findCertificateBySubjectKeyID_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  cf = a2;
  SubjectKeyID = SecCertificateGetSubjectKeyID();
  v7 = SubjectKeyID;
  if (SubjectKeyID)
  {
    CFRetain(SubjectKeyID);
  }

  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (v8 && [v8 isEqualToData:v7])
  {
    v9 = cf;
    if (cf)
    {
      CFRetain(cf);
      v9 = cf;
    }

    *(*(*(a1 + 48) + 8) + 24) = v9;
    *a4 = 1;
  }

  else
  {
    v10 = *(a1 + 32);
    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    else
    {
      v11 = [MEMORY[0x277CBEA90] data];
      [v10 addObject:v11];
    }
  }
}

uint64_t __findCertificateBySubjectKeyID_block_invoke_2()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __findCertificateBySubjectKeyID_block_invoke_66()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t findCertificateByEmailAddress(void *a1, void *a2, void **a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__3;
  v52 = __Block_byref_object_dispose__3;
  if (a3)
  {
    v7 = *a3;
    if (*a3)
    {
      v7 = [v7 copy];
    }
  }

  else
  {
    v7 = 0;
  }

  v53 = v7;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__3;
  v46 = __Block_byref_object_dispose__3;
  v47 = 0;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:*MEMORY[0x277CDC230] forKey:*MEMORY[0x277CDC228]];
  [v8 setObject:*MEMORY[0x277CDC430] forKey:*MEMORY[0x277CDC428]];
  [v8 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC568]];
  if (v6)
  {
    [v8 setObject:v6 forKey:*MEMORY[0x277CDC5A0]];
  }

  v9 = (v49 + 5);
  obj = v49[5];
  ItemInAllAvailableKeychains = findItemInAllAvailableKeychains(v8);
  objc_storeStrong(v9, obj);
  if (ItemInAllAvailableKeychains)
  {
    v11 = CFGetTypeID(ItemInAllAvailableKeychains);
    if (v11 == SecCertificateGetTypeID())
    {
      v12 = [MEMORY[0x277CBEB18] arrayWithObject:ItemInAllAvailableKeychains];
    }

    else
    {
      v15 = CFGetTypeID(ItemInAllAvailableKeychains);
      if (v15 != CFArrayGetTypeID())
      {
        v16 = 0;
LABEL_16:
        CFRelease(ItemInAllAvailableKeychains);
        if (MS_DEFAULT_LOG_BLOCK != -1)
        {
          findCertificateByEmailAddress_cold_1();
        }

        v17 = MS_DEFAULT_LOG_INTERNAL;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = [v16 count];
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v18;
          _os_log_impl(&dword_258C80000, v17, OS_LOG_TYPE_DEBUG, "found %lu candidate email certs from keychain", &buf, 0xCu);
        }

        v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v16, "count")}];
        v20 = v43[5];
        v43[5] = v19;

        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __findCertificateByEmailAddress_block_invoke_85;
        v38[3] = &unk_2798BE610;
        v21 = v5;
        v39 = v21;
        v40 = &v42;
        [v16 enumerateObjectsUsingBlock:v38];
        if (MS_DEFAULT_LOG_BLOCK != -1)
        {
          findCertificateByEmailAddress_cold_2();
        }

        v22 = MS_DEFAULT_LOG_INTERNAL;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = [v16 count];
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v23;
          _os_log_impl(&dword_258C80000, v22, OS_LOG_TYPE_DEBUG, "found %lu candidate certs from keychain with matching email addresses", &buf, 0xCu);
        }

        v13 = v43[5];
        if ([v13 count] == 1)
        {
          v24 = [v13 objectAtIndex:0];
          v55[3] = v24;
        }

        else
        {
          if (![v13 count])
          {
            if (a3)
            {
              [MSError MSErrorWithDomain:MSErrorKeychainDomain[0] code:-25300 errorLevel:1 underlyingError:v49[5] description:@"unable to find any certificates with email address %@", v21];
              *a3 = v14 = 0;
            }

            else
            {
              v14 = 0;
            }

            goto LABEL_34;
          }

          v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
          v26 = v43[5];
          v43[5] = v25;

          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __findCertificateByEmailAddress_block_invoke_92;
          v37[3] = &unk_2798BE638;
          v37[4] = &v48;
          v37[5] = &v42;
          [v13 enumerateObjectsUsingBlock:v37];
          if (MS_DEFAULT_LOG_BLOCK != -1)
          {
            findCertificateByEmailAddress_cold_3();
          }

          v27 = MS_DEFAULT_LOG_INTERNAL;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v28 = [v13 count];
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v28;
            _os_log_impl(&dword_258C80000, v27, OS_LOG_TYPE_DEBUG, "found %lu valid email candidate certs", &buf, 0xCu);
          }

          v29 = [v43[5] count];
          v30 = v43[5];
          if (v29 != 1)
          {
            if ([v30 count])
            {
              v34 = v43[5];

              v13 = v34;
            }

            *&buf = 0;
            *(&buf + 1) = &buf;
            v59 = 0x2020000000;
            v60 = 0;
            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v36[2] = __findCertificateByEmailAddress_block_invoke_96;
            v36[3] = &unk_2798BE638;
            v36[4] = &buf;
            v36[5] = &v54;
            [v13 enumerateObjectsUsingBlock:v36];
            if (a3)
            {
              v35 = v49[5];
              if (v35)
              {
                *a3 = v35;
              }
            }

            v14 = v55[3];
            _Block_object_dispose(&buf, 8);
            goto LABEL_34;
          }

          v31 = [v30 objectAtIndex:0];
          v55[3] = v31;
        }

        v14 = v55[3];
LABEL_34:

        goto LABEL_35;
      }

      v12 = [MEMORY[0x277CBEB18] arrayWithArray:ItemInAllAvailableKeychains];
    }

    v16 = v12;
    goto LABEL_16;
  }

  if (a3)
  {
    [MSError MSErrorWithDomain:MSErrorKeychainDomain[0] code:-25300 errorLevel:1 underlyingError:v49[5] description:@"unable to find any certificates in keychain"];
    v13 = 0;
    *a3 = v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

LABEL_35:

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(&v54, 8);
  v32 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_258C98498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose((v35 - 160), 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __findCertificateByEmailAddress_block_invoke()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __findCertificateByEmailAddress_block_invoke_85(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SecCertificateCopyRFC822Names();
    if (v4)
    {
      v5 = v4;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __findCertificateByEmailAddress_block_invoke_2;
      v6[3] = &unk_2798BE5E8;
      v7 = *(a1 + 32);
      if ([v5 indexOfObjectPassingTest:v6] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
      }
    }
  }
}

uint64_t __findCertificateByEmailAddress_block_invoke_3()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __findCertificateByEmailAddress_block_invoke_2_93()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __findCertificateByEmailAddress_block_invoke_96(uint64_t a1, void *a2)
{
  cf = a2;
  SecCertificateNotValidAfter();
  v4 = cf;
  v5 = *(*(a1 + 32) + 8);
  if (v3 > *(v5 + 24))
  {
    *(v5 + 24) = v3;
    v6 = *(*(*(a1 + 40) + 8) + 24);
    if (v6)
    {
      CFRelease(v6);
      v4 = cf;
    }

    if (v4)
    {
      CFRetain(v4);
      v4 = cf;
    }

    *(*(*(a1 + 40) + 8) + 24) = v4;
  }

  return MEMORY[0x2821F96F8]();
}

const void *findIdentityByCertificate(__SecCertificate *a1, void *a2, id *a3)
{
  v5 = a2;
  error = 0;
  if (a3 && *a3)
  {
    v6 = [*a3 copy];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = SecCertificateCopySerialNumberData(a1, &error);
  v9 = v8;
  v10 = error;
  if (error || !v8)
  {

    v6 = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:-26275 underlyingError:v10 description:@"Unable to get serial number from certificate"];

    v11 = 0;
  }

  else
  {
    v11 = SecCertificateCopyNormalizedIssuerSequence(a1);
    if (v11)
    {
      [v7 setObject:*MEMORY[0x277CDC240] forKey:*MEMORY[0x277CDC228]];
      [v7 setObject:v11 forKey:*MEMORY[0x277CDBFD8]];
      [v7 setObject:v9 forKey:*MEMORY[0x277CDC110]];
      [v7 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC568]];
      if (v5)
      {
        [v7 setObject:v5 forKey:*MEMORY[0x277CDC5A0]];
      }

      ItemInAllAvailableKeychains = findItemInAllAvailableKeychains(v7);
      if (ItemInAllAvailableKeychains)
      {
        v17 = ItemInAllAvailableKeychains;
        v21 = CFGetTypeID(ItemInAllAvailableKeychains);
        if (v21 == SecIdentityGetTypeID())
        {
          goto LABEL_13;
        }

        CFRelease(v17);
      }
    }

    else
    {
      v12 = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:-26275 underlyingError:v6 description:@"Unable to get issuer sequence from certificate"];

      v6 = v12;
    }
  }

  v13 = v6;
  v14 = MSErrorKeychainDomain[0];
  v15 = NSStringFromDERIntegerData(v9);
  v16 = NSSStringFromIssuerName(v11);
  v6 = [MSError MSErrorWithDomain:v14 code:-25300 errorLevel:1 underlyingError:v6 description:@"%s did not find IssuerAndSerialNumber %@ %@", "findIdentityByCertificate", v15, v16];

  v17 = 0;
  if (a3 && v6)
  {
    v18 = v6;
    v17 = 0;
    *a3 = v6;
  }

LABEL_13:

  return v17;
}

uint64_t findIdentityByEmailAddress(void *a1, void *a2, void **a3)
{
  v5 = a1;
  v6 = a2;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__3;
  v47 = __Block_byref_object_dispose__3;
  if (a3)
  {
    v7 = *a3;
    if (*a3)
    {
      v7 = [v7 copy];
    }
  }

  else
  {
    v7 = 0;
  }

  v48 = v7;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__3;
  v41 = __Block_byref_object_dispose__3;
  v42 = 0;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:*MEMORY[0x277CDC240] forKey:*MEMORY[0x277CDC228]];
  [v8 setObject:*MEMORY[0x277CDC430] forKey:*MEMORY[0x277CDC428]];
  [v8 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC568]];
  if (v6)
  {
    [v8 setObject:v6 forKey:*MEMORY[0x277CDC5A0]];
  }

  v9 = v44;
  obj = v44[5];
  ItemInAllAvailableKeychains = findItemInAllAvailableKeychains(v8);
  objc_storeStrong(v9 + 5, obj);
  if (ItemInAllAvailableKeychains)
  {
    v11 = CFGetTypeID(ItemInAllAvailableKeychains);
    if (v11 == SecIdentityGetTypeID())
    {
      v12 = [MEMORY[0x277CBEB18] arrayWithObject:ItemInAllAvailableKeychains];
    }

    else
    {
      v15 = CFGetTypeID(ItemInAllAvailableKeychains);
      if (v15 != CFArrayGetTypeID())
      {
        v16 = 0;
LABEL_16:
        CFRelease(ItemInAllAvailableKeychains);
        v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v16, "count")}];
        v18 = v38[5];
        v38[5] = v17;

        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __findIdentityByEmailAddress_block_invoke;
        v32[3] = &unk_2798BE660;
        v34 = &v43;
        v19 = v5;
        v33 = v19;
        v35 = &v37;
        [v16 enumerateObjectsUsingBlock:v32];
        v13 = v38[5];

        if ([v13 count] == 1)
        {
          v20 = [v13 objectAtIndex:0];
        }

        else
        {
          if (![v13 count])
          {
            if (a3)
            {
              [MSError MSErrorWithDomain:MSErrorKeychainDomain[0] code:-25300 errorLevel:1 underlyingError:v44[5] description:@"unable to find any identities with email address %@", v19];
              *a3 = v14 = 0;
            }

            else
            {
              v14 = 0;
            }

            goto LABEL_22;
          }

          v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
          v22 = v38[5];
          v38[5] = v21;

          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __findIdentityByEmailAddress_block_invoke_3;
          v31[3] = &unk_2798BE638;
          v31[4] = &v43;
          v31[5] = &v37;
          [v13 enumerateObjectsUsingBlock:v31];
          v23 = [v38[5] count];
          v24 = v38[5];
          if (v23 != 1)
          {
            if ([v24 count])
            {
              v27 = v38[5];

              v13 = v27;
            }

            v30[0] = 0;
            v30[1] = v30;
            v30[2] = 0x2020000000;
            v30[3] = 0;
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __findIdentityByEmailAddress_block_invoke_4;
            v29[3] = &unk_2798BE688;
            v29[4] = &v43;
            v29[5] = v30;
            v29[6] = &v49;
            [v13 enumerateObjectsUsingBlock:v29];
            if (a3)
            {
              v28 = v44[5];
              if (v28)
              {
                *a3 = v28;
              }
            }

            v14 = v50[3];
            _Block_object_dispose(v30, 8);
            goto LABEL_22;
          }

          v20 = [v24 objectAtIndex:0];
        }

        v25 = v20;
        v50[3] = v25;

        v14 = v50[3];
LABEL_22:

        goto LABEL_23;
      }

      v12 = [MEMORY[0x277CBEB18] arrayWithArray:ItemInAllAvailableKeychains];
    }

    v16 = v12;
    goto LABEL_16;
  }

  if (a3)
  {
    [MSError MSErrorWithDomain:MSErrorKeychainDomain[0] code:-25300 errorLevel:1 underlyingError:v44[5] description:@"unable to find any identities in keychain"];
    v13 = 0;
    *a3 = v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

LABEL_23:

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
  return v14;
}

void sub_258C98F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Block_object_dispose((v35 - 128), 8);
  _Unwind_Resume(a1);
}

void __findIdentityByEmailAddress_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = MSSecIdentityCopyCertificateWithError(v3, &obj);
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    v6 = SecCertificateCopyRFC822Names();
    if (v6)
    {
      v7 = v6;
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = __findIdentityByEmailAddress_block_invoke_2;
      v11 = &unk_2798BE5E8;
      v12 = *(a1 + 32);
      if ([v7 indexOfObjectPassingTest:&v8] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [*(*(*(a1 + 48) + 8) + 40) addObject:{v3, v8, v9, v10, v11}];
      }

      CFRelease(v5);
    }

    else
    {
      CFRelease(v5);
    }
  }
}

void __findIdentityByEmailAddress_block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[4] + 8);
  obj = *(v4 + 40);
  v5 = MSSecIdentityCopyCertificateWithError(v3, &obj);
  objc_storeStrong((v4 + 40), obj);
  SecCertificateNotValidAfter();
  v7 = *(a1[5] + 8);
  if (v6 > *(v7 + 24))
  {
    *(v7 + 24) = v6;
    v8 = *(*(a1[6] + 8) + 24);
    if (v8)
    {
      CFRelease(v8);
    }

    *(*(a1[6] + 8) + 24) = CFRetain(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

id asn1ErrorToNSError(id result, void *a2)
{
  v3 = @"ASN1_BAD_TIMEFORMAT";
  switch(result)
  {
    case 1859794432:
      break;
    case 1859794433:
      v3 = @"ASN1_MISSING_FIELD";
      break;
    case 1859794434:
      v3 = @"ASN1_MISPLACED_FIELD";
      break;
    case 1859794435:
      v3 = @"ASN1_TYPE_MISMATCH";
      break;
    case 1859794436:
      v3 = @"ASN1_OVERFLOW";
      break;
    case 1859794437:
      v3 = @"ASN1_OVERRUN";
      break;
    case 1859794438:
      v3 = @"ASN1_BAD_ID";
      break;
    case 1859794439:
      v3 = @"ASN1_BAD_LENGTH";
      break;
    case 1859794440:
      v3 = @"ASN1_BAD_FORMAT";
      break;
    case 1859794441:
      v3 = @"ASN1_PARSE_ERROR";
      break;
    case 1859794442:
      v3 = @"ASN1_EXTRA_DATA";
      break;
    case 1859794443:
      v3 = @"ASN1_BAD_CHARACTER";
      break;
    case 1859794444:
      v3 = @"ASN1_MIN_CONSTRAINT";
      break;
    case 1859794445:
      v3 = @"ASN1_MAX_CONSTRAINT";
      break;
    case 1859794446:
      v3 = @"ASN1_EXACT_CONSTRAINT";
      break;
    case 1859794447:
      v3 = @"ASN1_INDEF_OVERRUN";
      break;
    case 1859794448:
      v3 = @"ASN1_INDEF_UNDERRUN";
      break;
    case 1859794449:
      v3 = @"ASN1_GOT_BER";
      break;
    case 1859794450:
      v3 = @"ASN1_INDEF_EXTRA_DATA";
      break;
    case 1859794451:
      v3 = @"ASN1_INVALID_CHOICE";
      break;
    case 1859794452:
      v3 = @"ASN1_GOT_INDEFINITE";
      break;
    default:
      v3 = @"Unknown ASN1 error";
      if (!result)
      {
        v3 = @"ASN1 success";
      }

      break;
  }

  if (a2)
  {
    result = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:result underlyingError:*a2 description:@"%@", v3];
    *a2 = result;
  }

  return result;
}

uint64_t uint32ToNetworkByteOrder(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    *(a2 - 1 + a3) = result;
    result = result >> 8;
  }

  return result;
}

uint64_t __dumpNSData_block_invoke()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __valueForBooleanDefault_block_invoke()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t OUTLINED_FUNCTION_2_0()
{
  v3 = *(*(*(v1 + 40) + 8) + 40);

  return [v3 addObject:v0];
}

BOOL OUTLINED_FUNCTION_3_0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t nsheim_decode_CMSVersion(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_DigestAlgorithmIdentifier(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_DigestAlgorithmIdentifiers(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t add_DigestAlgorithmIdentifiers(unsigned int *a1)
{
  v2 = malloc_type_realloc(*(a1 + 1), 24 * *a1 + 24, 0xE0607598uLL);
  if (!v2)
  {
    return 12;
  }

  *(a1 + 1) = v2;
  v3 = *a1;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

uint64_t remove_DigestAlgorithmIdentifiers(uint64_t a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    return 1859794437;
  }

  v4 = *(a1 + 8);
  _asn1_free_top();
  v5 = *a1 - 1;
  *a1 = v5;
  if (v5 > a2)
  {
    memmove((*(a1 + 8) + 24 * a2), (*(a1 + 8) + 24 * (a2 + 1)), 24 * (v5 - a2));
    v5 = *a1;
  }

  v6 = malloc_type_realloc(*(a1 + 8), 24 * v5, 0xBA00BB5BuLL);
  if (!v6 && *a1)
  {
    return 0;
  }

  result = 0;
  *(a1 + 8) = v6;
  return result;
}

uint64_t nsheim_decode_SignatureAlgorithmIdentifier(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_DataContent(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_EncapsulatedContentInfo(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_CertificateChoices(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_CertificateSet(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_CertificateList(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_CertificateRevocationLists(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_IssuerAndSerialNumber(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_CMSIdentifier(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_SignerIdentifier(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_RecipientIdentifier(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_CMSAttributes(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_CMSOrderedAttributes(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_SignatureValue(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_SignerInfo(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_SignerInfos(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_OriginatorInfo(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_KeyEncryptionAlgorithmIdentifier(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_ContentEncryptionAlgorithmIdentifier(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_EncryptedKey(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_KeyTransRecipientInfo(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_SecCMS_ECC_CMS_SharedInfo(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_ECC_CMS_SharedInfo(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_OtherKeyAttribute(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_RecipientKeyIdentifier(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_KeyAgreeRecipientIdentifier(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_RecipientEncryptedKey(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_RecipientEncryptedKeys(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_UserKeyingMaterial(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_OriginatorPublicKey(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_SecCMS_OriginatorIdentifierOrKey(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_OriginatorIdentifierOrKey(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_SecCMS_KeyAgreeRecipientInfo(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_KeyAgreeRecipientInfo(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_SecCMS_RecipientInfo(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_RecipientInfo(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_SecCMS_RecipientInfos(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_RecipientInfos(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_EncryptedContent(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_EncryptedContentInfo(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_UnprotectedAttributes(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_CMSEncryptedData(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_SecCMS_EnvelopedData(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_EnvelopedData(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_MessageAuthenticationCode(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_AuthEnvelopedData(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_AES_CCM_ICVlen(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_CCMParameters(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_AES_GCM_ICVlen(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_GCMParameters(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_CMSRC2CBCParameter(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_CMSCBCParameter(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_CompressionAlgorithmIdentifier(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_CompressedData(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_SecCMS_SMIMEEncryptionKeyPreference(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_SMIMEEncryptionKeyPreference(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_SMIMECapability(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_SMIMECapabilities(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_SignAttrsHash(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_MultipleSignatures(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_MessageImprint(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_TSAPolicyId(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_TimeStampReq(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_PKIStatus(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_PKIFailureInfo(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_PKIFreeText(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_PKIStatusInfo(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_TimeStampToken(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_Accuracy(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_TSTInfo(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_TimeStampResp(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_Version(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_AlgorithmIdentifier(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_AttributeType(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_AttributeValue(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_DirectoryString(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_Attribute(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_AttributeTypeAndValue(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_RelativeDistinguishedName(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_RDNSequence(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_Name(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_CertificateSerialNumber(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_Validity(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_UniqueIdentifier(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_SubjectPublicKeyInfo(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_Extension(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_Extensions(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t add_Extensions(unsigned int *a1)
{
  v2 = malloc_type_realloc(*(a1 + 1), 40 * *a1 + 40, 0xAAB73518uLL);
  if (!v2)
  {
    return 12;
  }

  *(a1 + 1) = v2;
  v3 = *a1;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

uint64_t remove_Extensions(uint64_t a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    return 1859794437;
  }

  v4 = *(a1 + 8);
  _asn1_free_top();
  v5 = *a1 - 1;
  *a1 = v5;
  if (v5 > a2)
  {
    memmove((*(a1 + 8) + 40 * a2), (*(a1 + 8) + 40 * (a2 + 1)), 40 * (v5 - a2));
    v5 = *a1;
  }

  v6 = malloc_type_realloc(*(a1 + 8), 40 * v5, 0x47F39A81uLL);
  if (!v6 && *a1)
  {
    return 0;
  }

  result = 0;
  *(a1 + 8) = v6;
  return result;
}

uint64_t nsheim_decode_TBSCertificate(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_Certificate(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_Certificates(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_ValidationParms(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_DomainParameters(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_DHParameter(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_DHPublicKey(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_OtherName(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_GeneralName(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_GeneralNames(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t add_GeneralNames(unsigned int *a1)
{
  v2 = malloc_type_realloc(*(a1 + 1), 40 * *a1 + 40, 0x2FD9CE44uLL);
  if (!v2)
  {
    return 12;
  }

  *(a1 + 1) = v2;
  v3 = *a1;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

uint64_t remove_GeneralNames(uint64_t a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    return 1859794437;
  }

  v4 = *(a1 + 8);
  _asn1_free_top();
  v5 = *a1 - 1;
  *a1 = v5;
  if (v5 > a2)
  {
    memmove((*(a1 + 8) + 40 * a2), (*(a1 + 8) + 40 * (a2 + 1)), 40 * (v5 - a2));
    v5 = *a1;
  }

  v6 = malloc_type_realloc(*(a1 + 8), 40 * v5, 0x372F3127uLL);
  if (!v6 && *a1)
  {
    return 0;
  }

  result = 0;
  *(a1 + 8) = v6;
  return result;
}

uint64_t nsheim_decode_KeyUsage(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_KeyIdentifier(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_AuthorityKeyIdentifier(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_SubjectKeyIdentifier(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_BasicConstraints(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_BaseDistance(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_GeneralSubtree(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_GeneralSubtrees(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_NameConstraints(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_ExtKeyUsage(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_DistributionPointReasonFlags(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_DistributionPointName(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_DistributionPoint(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_CRLDistributionPoints(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t add_CRLDistributionPoints(unsigned int *a1)
{
  v2 = malloc_type_realloc(*(a1 + 1), 24 * *a1 + 24, 0x6C1C57E3uLL);
  if (!v2)
  {
    return 12;
  }

  *(a1 + 1) = v2;
  v3 = *a1;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

uint64_t remove_CRLDistributionPoints(uint64_t a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    return 1859794437;
  }

  v4 = *(a1 + 8);
  _asn1_free_top();
  v5 = *a1 - 1;
  *a1 = v5;
  if (v5 > a2)
  {
    memmove((*(a1 + 8) + 24 * a2), (*(a1 + 8) + 24 * (a2 + 1)), 24 * (v5 - a2));
    v5 = *a1;
  }

  v6 = malloc_type_realloc(*(a1 + 8), 24 * v5, 0xCD3F0232uLL);
  if (!v6 && *a1)
  {
    return 0;
  }

  result = 0;
  *(a1 + 8) = v6;
  return result;
}

uint64_t nsheim_decode_DSASigValue(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_DSAPublicKey(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_DSAParams(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_ECPoint(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_ECParameters(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_ECDSA_Sig_Value(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_RSAPublicKey(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_RSAPrivateKey(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_DigestInfo(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_TBSCRLCertList(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_CRLCertificateList(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_CRLReason(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_PKIXXmppAddr(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_AccessDescription(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_AuthorityInfoAccessSyntax(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_ProxyPolicy(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t nsheim_decode_ProxyCertInfo(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = _asn1_decode_top();
  if (!v2)
  {
    if ([v1 length])
    {
      v2 = 1859794442;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t sub_258CA80DC()
{
  v0 = sub_258CBEAB0();
  __swift_allocate_value_buffer(v0, qword_27F97DBE8);
  __swift_project_value_buffer(v0, qword_27F97DBE8);
  return sub_258CBEAA0();
}

uint64_t sub_258CA815C(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = sub_258CBEA60();
  v3 = sub_258CBEA60();
  v4 = sub_258CBEA60();
  v5 = sub_258CBEA60();
  v13[0] = 0;
  v6 = MSDecryptGCMOneShot(a1, v2, v3, v4, v5, v13);

  v7 = v13[0];
  v8 = sub_258CBEA80();
  v10 = v9;

  if (v7)
  {
    swift_willThrow();
    sub_258CA82B8(v8, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_258CA82B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id MSCMSAuthEnvelopedData.type.getter()
{
  v1 = OBJC_IVAR___MSCMSAuthEnvelopedData_type;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MSCMSAuthEnvelopedData.type.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MSCMSAuthEnvelopedData_type;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MSCMSAuthEnvelopedData.dataContent.getter()
{
  v1 = v0 + OBJC_IVAR___MSCMSAuthEnvelopedData_dataContent;
  swift_beginAccess();
  v2 = *v1;
  sub_258CA85CC(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_258CA85CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_258CA85E0(a1, a2);
  }

  return a1;
}

uint64_t sub_258CA85E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t MSCMSAuthEnvelopedData.dataContent.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___MSCMSAuthEnvelopedData_dataContent);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_258CA8728(v6, v7);
}

uint64_t sub_258CA8728(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_258CA82B8(a1, a2);
  }

  return a1;
}

id MSCMSAuthEnvelopedData.encryptionAlgorithm.getter()
{
  v1 = OBJC_IVAR___MSCMSAuthEnvelopedData_encryptionAlgorithm;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MSCMSAuthEnvelopedData.encryptionAlgorithm.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MSCMSAuthEnvelopedData_encryptionAlgorithm;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_258CA8A30(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v8 = *a3;
  swift_beginAccess();
  v9 = *(a1 + v8);
  sub_258CB0458(0, a4, a5);

  v10 = sub_258CBEB20();

  return v10;
}

uint64_t sub_258CA8AF0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_258CB0458(0, a4, a5);
  v8 = sub_258CBEB30();
  v9 = *a6;
  swift_beginAccess();
  v10 = *(a1 + v9);
  *(a1 + v9) = v8;
}

uint64_t sub_258CA8D18(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_258CA8DDC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id MSCMSAuthEnvelopedData.contentType.getter()
{
  v1 = OBJC_IVAR___MSCMSAuthEnvelopedData_contentType;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MSCMSAuthEnvelopedData.contentType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MSCMSAuthEnvelopedData_contentType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MSCMSAuthEnvelopedData.embeddedContent.getter()
{
  v1 = OBJC_IVAR___MSCMSAuthEnvelopedData_embeddedContent;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t MSCMSAuthEnvelopedData.embeddedContent.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MSCMSAuthEnvelopedData_embeddedContent;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id MSCMSAuthEnvelopedData.__allocating_init(encryptionAlgorithm:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_258CAF340(a1);

  return v4;
}

id MSCMSAuthEnvelopedData.init(encryptionAlgorithm:)(void *a1)
{
  v2 = sub_258CAF340(a1);

  return v2;
}

id MSCMSAuthEnvelopedData.__allocating_init(dataContent:recipient:)(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_258CAF4E4(a1, a2, a3);

  sub_258CA82B8(a1, a2);
  return v8;
}

id MSCMSAuthEnvelopedData.init(dataContent:recipient:)(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_258CAF4E4(a1, a2, a3);

  sub_258CA82B8(a1, a2);
  return v6;
}

id MSCMSAuthEnvelopedData.__allocating_init(dataContent:recipient:encryptionAlgorithm:)(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_258CAF7BC(a1, a2, a3, a4);

  sub_258CA82B8(a1, a2);
  return v10;
}

id MSCMSAuthEnvelopedData.init(dataContent:recipient:encryptionAlgorithm:)(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v8 = sub_258CAF7BC(a1, a2, a3, a4);

  sub_258CA82B8(a1, a2);
  return v8;
}

id MSCMSAuthEnvelopedData.__allocating_init(embeddedContent:recipient:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = @"2.16.840.1.101.3.4.1.46";
  sub_258CBEAE0();
  v7 = objc_allocWithZone(MSOID);
  v8 = sub_258CAEABC();
  v9 = [v5 initWithEmbeddedContent:a1 recipient:a2 encryptionAlgorithm:v8];
  swift_unknownObjectRelease();

  return v9;
}

id MSCMSAuthEnvelopedData.init(embeddedContent:recipient:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = @"2.16.840.1.101.3.4.1.46";
  sub_258CBEAE0();
  v7 = objc_allocWithZone(MSOID);
  v8 = sub_258CAEABC();
  v9 = [v3 initWithEmbeddedContent:a1 recipient:a2 encryptionAlgorithm:v8];
  swift_unknownObjectRelease();

  return v9;
}

id MSCMSAuthEnvelopedData.__allocating_init(embeddedContent:recipient:encryptionAlgorithm:)(uint64_t a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_258CAFA50(a1, a2, a3);
  swift_unknownObjectRelease();

  return v8;
}

id MSCMSAuthEnvelopedData.init(embeddedContent:recipient:encryptionAlgorithm:)(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_258CAFA50(a1, a2, a3);
  swift_unknownObjectRelease();

  return v5;
}

Swift::OpaquePointer_optional __swiftcall MSCMSAuthEnvelopedData.getAttributes(OID:)(MSOID *OID)
{
  v13 = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR___MSCMSAuthEnvelopedData_unprotectedAttributes;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OID;

  sub_258CAFC54(v6, v5, &v13);

  v7 = OBJC_IVAR___MSCMSAuthEnvelopedData_protectedAttributes;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = v5;

  sub_258CAFC54(v10, v9, &v13);

  v12 = v13;
  result.value._rawValue = v12;
  result.is_nil = v11;
  return result;
}

uint64_t sub_258CA9B1C(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  swift_beginAccess();
  v6 = a1;
  MEMORY[0x259C97D40]();
  if (*((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v8 = *((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_258CBEB40();
  }

  sub_258CBEB60();
  return swift_endAccess();
}

void sub_258CA9BDC(void *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = a3;
  v8 = a1;
  MEMORY[0x259C97D40]();
  if (*((*(a1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v9 = *((*(a1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_258CBEB40();
  }

  sub_258CBEB60();
  swift_endAccess();
}

Swift::Void __swiftcall MSCMSAuthEnvelopedData.setContentType(type:)(MSOID *type)
{
  v3 = OBJC_IVAR___MSCMSAuthEnvelopedData_contentType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = type;
  v5 = type;
}

void MSCMSAuthEnvelopedData.encodeSecurityObject()()
{
  v2 = v1;
  v268 = *MEMORY[0x277D85DE8];
  v266 = 0u;
  v267 = 0u;
  v264 = 0u;
  v265 = 0u;
  v262 = 0u;
  v263 = 0u;
  v261 = 0u;
  v3 = 0x2798BD000uLL;
  v247 = [objc_allocWithZone(MSAlgorithmIdentifier) init];
  v260 = 0;
  memset(v259, 0, sizeof(v259));
  v258[0] = 0;
  v258[1] = 0;
  v4 = OBJC_IVAR___MSCMSAuthEnvelopedData_recipients;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (v5 >> 62)
  {
    goto LABEL_167;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    do
    {
      v241 = v4;
      v257[0] = 0;
      v255 = 0uLL;
      *&v256 = 0;
      v6 = OBJC_IVAR___MSCMSAuthEnvelopedData_contentType;
      swift_beginAccess();
      v242 = v6;
      *&v254 = [*(v0 + v6) Asn1OID];
      *(&v254 + 1) = v7;
      v243 = swift_slowAlloc();
      *(&v256 + 1) = v243;
      v8 = OBJC_IVAR___MSCMSAuthEnvelopedData_encryptionAlgorithm;
      swift_beginAccess();
      v9 = [objc_allocWithZone(*(v3 + 3144)) initWithOID_];
      v10 = [v9 keySize_];

      v252 = sub_258CAFE7C(v10);
      v253 = v11;
      v12 = v2;
      sub_258CAEB88(&v252, 0);
      v14 = v252;
      v13 = v253;
      v15 = [objc_allocWithZone(*(v3 + 3144)) initWithOID_];
      v16 = [v15 blockSize_];

      v17 = swift_slowAlloc();
      *&v259[0] = v16;
      *(&v259[0] + 1) = v17;
      v18 = swift_allocObject();
      v19 = SecRandomCopyBytes(*MEMORY[0x277CDC540], v16, v17);
      v18[4] = v19;
      if (v19)
      {
        v20 = v19;
        if (qword_27F97DBE0 != -1)
        {
          swift_once();
        }

        v21 = sub_258CBEAB0();
        __swift_project_value_buffer(v21, qword_27F97DBE8);
        v22 = sub_258CBEA90();
        v23 = sub_258CBEB70();
        v16 = v13;
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 67109120;
          *(v24 + 4) = v20;
          _os_log_impl(&dword_258C80000, v22, v23, "Unable to generate nonce underlying crypto error %d", v24, 8u);
          MEMORY[0x259C98B10](v24, -1, -1);
        }

        v0 = v20;
        sub_258CAFE28();
        v13 = swift_allocError();
        *v25 = v20;
        *(v25 + 8) = 0;
        *(v25 + 16) = 0;
        swift_willThrow();

        v26 = *(&v259[0] + 1);
        if (*(&v259[0] + 1))
        {
          MEMORY[0x259C98B10](*(&v259[0] + 1), -1, -1);
          v27 = v14;
LABEL_17:
          v35 = v16;
LABEL_18:
          sub_258CA82B8(v27, v35);
          MEMORY[0x259C98B10](v243, -1, -1);
          goto LABEL_173;
        }

        __break(1u);
        goto LABEL_267;
      }

      v28 = v242;
      v239 = v12;
      v240 = v14;
      v29 = length_GCMParameters(v259);
      v14 = swift_slowAlloc();
      v246 = 0;
      v30 = encode_GCMParameters(&v14[v29 - 1], v29, v259, &v246);
      v18[4] = v30;
      if (v30)
      {
        v16 = v13;
        if (qword_27F97DBE0 != -1)
        {
          swift_once();
        }

        v31 = sub_258CBEAB0();
        __swift_project_value_buffer(v31, qword_27F97DBE8);
        v0 = sub_258CBEA90();
        v32 = sub_258CBEB70();
        if (os_log_type_enabled(v0, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_258C80000, v0, v32, "Invalid data - Error encoding GCM parameters", v33, 2u);
          MEMORY[0x259C98B10](v33, -1, -1);
        }

        sub_258CAFE28();
        v13 = swift_allocError();
        *v34 = xmmword_258CC1CE0;
        *(v34 + 16) = 48;
        swift_willThrow();
        MEMORY[0x259C98B10](v14, -1, -1);

        v26 = *(&v259[0] + 1);
        if (*(&v259[0] + 1))
        {
          MEMORY[0x259C98B10](*(&v259[0] + 1), -1, -1);
          v27 = v240;
          goto LABEL_17;
        }

LABEL_267:
        __break(1u);
        goto LABEL_268;
      }

      v36 = sub_258CAFFD4(v14, v246);
      v237 = v37;
      v238 = v36;
      v38 = v0;
      if ([*(v0 + v28) isEqualToString_])
      {
        v39 = v0 + OBJC_IVAR___MSCMSAuthEnvelopedData_dataContent;
        swift_beginAccess();
        v40 = *(v39 + 8);
        v242 = v13;
        if (v40 >> 60 != 15)
        {
          v236 = *v39;
          sub_258CA85E0(v236, v40);
          goto LABEL_27;
        }

        sub_258CAFE28();
        v13 = swift_allocError();
        *v41 = 0;
        *(v41 + 8) = 0;
        *(v41 + 16) = 48;
        swift_willThrow();
        sub_258CA82B8(v238, v237);
        MEMORY[0x259C98B10](v14, -1, -1);

        v26 = *(&v259[0] + 1);
        if (*(&v259[0] + 1))
        {
          goto LABEL_40;
        }

        __break(1u);
      }

      v42 = OBJC_IVAR___MSCMSAuthEnvelopedData_embeddedContent;
      swift_beginAccess();
      v43 = *(v0 + v42);
      v44 = v13;
      if (!v43)
      {
        goto LABEL_34;
      }

      v242 = v13;
      *&v250 = 0;
      v39 = [v43 encodeMessageSecurityObject_];
      v45 = v250;
      if (!v39)
      {
        v0 = v45;
        v13 = sub_258CBEA10();

        swift_willThrow();
        sub_258CA82B8(v238, v237);
        MEMORY[0x259C98B10](v14, -1, -1);

        v26 = *(&v259[0] + 1);
        if (*(&v259[0] + 1))
        {
LABEL_40:
          MEMORY[0x259C98B10](v26, -1, -1);
          v27 = v240;
          v35 = v242;
          goto LABEL_18;
        }

LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
LABEL_276:
        __break(1u);
LABEL_277:
        __break(1u);
LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        __break(1u);
LABEL_281:
        __break(1u);
        goto LABEL_282;
      }

      v236 = sub_258CBEA80();
      v40 = v46;

LABEL_27:
      v47 = v40 >> 62;
      v243 = v40;
      if ((v40 >> 62) > 1)
      {
        if (v47 == 2)
        {
          v49 = *(v236 + 16);
          v44 = *(v236 + 24);
          v48 = v44 - v49;
          if (__OFSUB__(v44, v49))
          {
            __break(1u);
LABEL_34:
            v16 = v44;
            v50 = v240;
            if (qword_27F97DBE0 != -1)
            {
              goto LABEL_177;
            }

            goto LABEL_35;
          }
        }

        else
        {
          v48 = 0;
        }
      }

      else if (v47)
      {
        if (__OFSUB__(HIDWORD(v236), v236))
        {
          goto LABEL_180;
        }

        v48 = HIDWORD(v236) - v236;
      }

      else
      {
        v48 = BYTE6(v40);
      }

      v245 = swift_slowAlloc();
      *(&v266 + 1) = 16;
      v57 = swift_slowAlloc();
      *&v267 = v57;
      v58 = v242 >> 62;
      v235 = v14;
      if ((v242 >> 62) > 1)
      {
        if (v58 == 2)
        {
          v232 = v48;
          v73 = v242 & 0x3FFFFFFFFFFFFFFFLL;
          v234 = v0;
          v74 = v0;
          *&v250 = v240;
          *(&v250 + 1) = v73;
          v76 = v237;
          v75 = v238;
          sub_258CA85E0(v238, v237);
          v77 = v74;
          sub_258CA85E0(v75, v76);

          v13 = v77;
          sub_258CA85E0(v75, v76);

          sub_258CBEA30();
          v0 = *(&v250 + 1);
          v240 = v250;
          v14 = v18;
          v78 = *(v250 + 16);
          v18 = *(v250 + 24);
          v242 = v13;
          sub_258CA85E0(v75, v76);
          v233 = v14;

          v26 = sub_258CBE980();
          if (!v26)
          {
            goto LABEL_273;
          }

          v39 = v26;
          v13 = v0;
          v79 = sub_258CBE9B0();
          v14 = (v78 - v79);
          if (__OFSUB__(v78, v79))
          {
            goto LABEL_181;
          }

          v80 = __OFSUB__(v18, v78);
          v18 = (v18 - v78);
          v72 = v238;
          if (v80)
          {
            goto LABEL_183;
          }

          v231 = v0;
          v81 = sub_258CBE9A0();
          v230 = v219;
          MEMORY[0x28223BE20](v81);
          v82 = v242;
          v205 = &v247;
          v206 = v242;
          v69 = v236;
          v83 = v237;
          v207 = v72;
          v208 = v237;
          v209 = v257;
          v210 = &v254;
          v18 = v233;
          v211 = v233;
          v212 = v84;
          v213 = v85;
          v214 = v259;
          v215 = v16;
          v216 = &v245;
          v217 = &v261;
          v218 = v232;
          v86 = v243;
          sub_258CA85CC(v236, v243);
          v87 = v239;
          sub_258CAC73C(v69, v86, sub_258CB0084);
          v239 = v87;
          if (v87)
          {
            sub_258CA8728(v69, v86);

            v88 = v83;
            sub_258CA82B8(v72, v83);

            sub_258CA82B8(v72, v83);

            sub_258CA82B8(v72, v83);

            sub_258CA82B8(v72, v83);
            v13 = (v231 | 0x8000000000000000);
            v0 = v234;
            v16 = v240;
            v14 = v88;
            goto LABEL_71;
          }

          sub_258CA8728(v69, v86);

          v102 = v83;
          sub_258CA82B8(v72, v83);

          sub_258CA82B8(v72, v83);

          sub_258CA82B8(v72, v83);

          sub_258CA82B8(v72, v83);
          v16 = v231 | 0x8000000000000000;
          v0 = v234;
          v18 = v240;
          v14 = v102;
        }

        else
        {
          v232 = v219;
          *(&v250 + 7) = 0;
          *&v250 = 0;
          MEMORY[0x28223BE20](v57);
          v242 = v204;
          v205 = &v247;
          v206 = v0;
          v14 = v237;
          v95 = v238;
          v207 = v238;
          v208 = v237;
          v209 = v257;
          v210 = &v254;
          v211 = v18;
          v212 = &v250;
          v213 = &v250;
          v214 = v259;
          v215 = v16;
          v216 = &v245;
          v217 = &v261;
          v218 = v48;
          v96 = v0;
          sub_258CA85E0(v95, v14);
          v97 = v96;
          sub_258CA85E0(v95, v14);

          v98 = v97;
          sub_258CA85E0(v95, v14);

          v69 = v236;
          v99 = v243;
          sub_258CA85CC(v236, v243);
          v100 = v239;
          sub_258CAC73C(v69, v99, sub_258CB04A0);
          v239 = v100;
          if (v100)
          {
            sub_258CA8728(v69, v99);

            sub_258CA82B8(v95, v14);

            sub_258CA82B8(v95, v14);

            sub_258CA82B8(v95, v14);
            goto LABEL_70;
          }

          sub_258CA8728(v69, v99);

          sub_258CA82B8(v95, v14);

          sub_258CA82B8(v95, v14);
          v233 = v18;

          sub_258CA82B8(v95, v14);
          v18 = v240;
          v16 = v13;
        }
      }

      else
      {
        v232 = v48;
        v233 = v18;
        if (v58)
        {
          v13 = (v242 & 0x3FFFFFFFFFFFFFFFLL);
          v89 = v0;
          v14 = v237;
          v90 = v238;
          sub_258CA85E0(v238, v237);
          v91 = v89;
          sub_258CA85E0(v90, v14);

          v0 = v91;
          sub_258CA85E0(v90, v14);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v93 = v38;
          v39 = v240;
          v50 = v240 >> 32;
          v69 = v236;
          v234 = v93;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v242 = v0;
            v231 = v50 - v240;
            if (v50 < v240)
            {
              goto LABEL_193;
            }

            v94 = sub_258CBE980();
            if (v94)
            {
              v14 = v94;
              v0 = v13;
              if (__OFSUB__(v39, sub_258CBE9B0()))
              {
                __break(1u);
LABEL_198:
                v155 = sub_258CBEBE0();
                if ((v155 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_200:
                  __break(1u);
LABEL_201:
                  v26 = sub_258CBEBE0();
                  if ((v26 & 0x8000000000000000) != 0)
                  {
                    __break(1u);
                  }

                  goto LABEL_292;
                }

LABEL_144:
                if (HIDWORD(v155))
                {
                  goto LABEL_200;
                }

                LODWORD(v262) = v155;
                *(&v262 + 1) = v227;
                v156 = swift_slowAlloc();
                v157 = OBJC_IVAR___MSCMSAuthEnvelopedData_unprotectedAttributes;
                swift_beginAccess();
                v158 = *(v0 + v157);
                v231 = v157;
                v232 = v156;
                if (!(v158 >> 62))
                {
                  v26 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (HIDWORD(v26))
                  {
                    goto LABEL_293;
                  }

                  goto LABEL_147;
                }

                goto LABEL_201;
              }
            }

            v103 = sub_258CBE9C0();
            v104 = *(v103 + 48);
            v105 = *(v103 + 52);
            swift_allocObject();
            v106 = sub_258CBE960();

            v13 = v106;
            v14 = v237;
            v0 = v242;
          }

          v18 = (v50 - v39);
          if (v50 < v39)
          {
            goto LABEL_182;
          }

          v107 = v0;
          sub_258CA85E0(v238, v14);

          v0 = v13;
          v26 = sub_258CBE980();
          if (!v26)
          {
            goto LABEL_274;
          }

          v14 = v26;
          v0 = v13;
          v108 = sub_258CBE9B0();
          v80 = __OFSUB__(v39, v108);
          v39 -= v108;
          if (v80)
          {
            goto LABEL_184;
          }

          v109 = sub_258CBE9A0();
          v242 = v219;
          MEMORY[0x28223BE20](v109);
          v205 = &v247;
          v206 = v107;
          v14 = v237;
          v95 = v238;
          v207 = v238;
          v208 = v237;
          v209 = v257;
          v210 = &v254;
          v18 = v233;
          v211 = v233;
          v212 = v110;
          v213 = v111;
          v214 = v259;
          v215 = v16;
          v216 = &v245;
          v217 = &v261;
          v218 = v232;
          v112 = v13;
          v113 = v243;
          sub_258CA85CC(v69, v243);
          v114 = v239;
          sub_258CAC73C(v69, v113, sub_258CB04A0);
          v239 = v114;
          if (v114)
          {
            sub_258CA8728(v69, v113);

            sub_258CA82B8(v95, v14);

            sub_258CA82B8(v95, v14);

            sub_258CA82B8(v95, v14);

            sub_258CA82B8(v95, v14);
            v13 = (v112 | 0x4000000000000000);
            v0 = v234;
LABEL_70:
            v16 = v240;
            v72 = v95;
LABEL_71:

            v26 = v267;
            v0 = v235;
            if (v267)
            {
              MEMORY[0x259C98B10](v267, -1, -1);
              MEMORY[0x259C98B10](v245, -1, -1);
              sub_258CA82B8(v72, v14);
              sub_258CA8728(v69, v243);
              MEMORY[0x259C98B10](v0, -1, -1);

              v26 = *(&v259[0] + 1);
              if (*(&v259[0] + 1))
              {
                MEMORY[0x259C98B10](*(&v259[0] + 1), -1, -1);
                sub_258CA82B8(v16, v13);
                v26 = *(&v256 + 1);
                if (*(&v256 + 1))
                {
                  MEMORY[0x259C98B10](*(&v256 + 1), -1, -1);

                  goto LABEL_173;
                }

                goto LABEL_270;
              }

LABEL_269:
              __break(1u);
LABEL_270:
              __break(1u);
              goto LABEL_271;
            }

LABEL_268:
            __break(1u);
            goto LABEL_269;
          }

          sub_258CA8728(v69, v113);

          sub_258CA82B8(v95, v14);

          sub_258CA82B8(v95, v14);

          sub_258CA82B8(v95, v14);

          sub_258CA82B8(v95, v14);
          v16 = v112 | 0x4000000000000000;
          v0 = v234;
          v18 = v240;
        }

        else
        {
          v59 = v240;
          v60 = v242;
          v220 = v240 >> 8;
          v221 = v240 >> 16;
          v61 = v240 >> 24;
          v222 = HIDWORD(v240);
          v223 = v240 >> 40;
          v224 = HIWORD(v240);
          v225 = HIBYTE(v240);
          v226 = v242 >> 8;
          v227 = (v242 >> 16);
          v230 = HIDWORD(v242);
          v228 = v242 >> 24;
          v229 = (v242 >> 40);
          v62 = HIWORD(v242);
          v231 = v0;
          v14 = v237;
          v63 = v238;
          v64 = sub_258CA85E0(v238, v237);
          v219[1] = v219;
          LOBYTE(v250) = v59;
          BYTE1(v250) = v220;
          BYTE2(v250) = v221;
          BYTE3(v250) = v61;
          v18 = v233;
          BYTE4(v250) = v222;
          BYTE5(v250) = v223;
          BYTE6(v250) = v224;
          BYTE7(v250) = v225;
          BYTE8(v250) = v60;
          BYTE9(v250) = v226;
          BYTE10(v250) = v227;
          BYTE11(v250) = v228;
          BYTE12(v250) = v230;
          BYTE13(v250) = v229;
          BYTE14(v250) = v62;
          MEMORY[0x28223BE20](v64);
          v205 = &v247;
          v206 = v231;
          v207 = v63;
          v208 = v14;
          v209 = v257;
          v210 = &v254;
          v211 = v18;
          v212 = v65;
          v213 = v66;
          v214 = v259;
          v215 = v16;
          v216 = &v245;
          v217 = &v261;
          v218 = v232;
          v67 = v231;
          sub_258CA85E0(v63, v14);

          v68 = v67;
          sub_258CA85E0(v63, v14);

          v69 = v236;
          v70 = v243;
          sub_258CA85CC(v236, v243);
          v71 = v239;
          sub_258CAC73C(v69, v70, sub_258CB04A0);
          v239 = v71;
          if (v71)
          {
            sub_258CA8728(v69, v70);
            v16 = v250;
            v13 = (DWORD2(v250) | ((WORD6(v250) | (BYTE14(v250) << 16)) << 32));

            v72 = v238;
            sub_258CA82B8(v238, v14);

            sub_258CA82B8(v72, v14);

            sub_258CA82B8(v72, v14);
            goto LABEL_71;
          }

          sub_258CA8728(v69, v70);
          v18 = v250;
          v16 = DWORD2(v250) | ((WORD6(v250) | (BYTE14(v250) << 16)) << 32);

          v101 = v238;
          sub_258CA82B8(v238, v14);

          sub_258CA82B8(v101, v14);

          sub_258CA82B8(v101, v14);
        }
      }

      v234 = v0;

      LODWORD(v261) = 0;
      v263 = v254;
      v264 = v255;
      v265 = v256;
      v228 = *(&v256 + 1);
      *(&v261 + 1) = 0;
      v251 = xmmword_258CC1CF0;
      v39 = v241;
      swift_beginAccess();
      v115 = *(v0 + v39);
      if ((v115 & 0xC000000000000001) != 0)
      {
        v116 = MEMORY[0x259C97E00](0);
        v13 = v235;
      }

      else
      {
        v13 = v235;
        if (!*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
          goto LABEL_187;
        }

        v116 = *(v115 + 32);
      }

      swift_endAccess();
      v39 = [v116 originatorIdentity];

      if (!v39)
      {
        goto LABEL_89;
      }

      v0 = v16;
      v117 = v241;
      v16 = v234;
      swift_beginAccess();
      v118 = *&v117[v16];
      if ((v118 & 0xC000000000000001) == 0)
      {
        if (!*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_189:
          v123 = MEMORY[0x259C97E00](0);
          goto LABEL_92;
        }

        v16 = v0;
        v119 = *(v118 + 32);
        goto LABEL_83;
      }

LABEL_187:
      v119 = MEMORY[0x259C97E00](0);
      v16 = v0;
LABEL_83:
      swift_endAccess();
      v120 = v239;
      v26 = sub_258CB240C(v39);
      v239 = v120;
      if (v120)
      {

        sub_258CA82B8(0, 0xC000000000000000);
        v26 = v267;
        if (!v267)
        {
          goto LABEL_275;
        }

        MEMORY[0x259C98B10](v267, -1, -1);
        MEMORY[0x259C98B10](v245, -1, -1);
        sub_258CA82B8(v238, v14);
        sub_258CA8728(v236, v243);
        MEMORY[0x259C98B10](v13, -1, -1);

        v26 = *(&v259[0] + 1);
        if (!*(&v259[0] + 1))
        {
          goto LABEL_276;
        }

        MEMORY[0x259C98B10](*(&v259[0] + 1), -1, -1);
        sub_258CA82B8(v18, v16);
        v13 = v239;
        v26 = v228;
        if (v228)
        {
          goto LABEL_229;
        }

        __break(1u);
      }

      v121 = v26;
      [v119 setOriginator_];

LABEL_89:
      v14 = v241;
      v39 = v234;
      swift_beginAccess();
      v122 = *&v14[v39];
      if ((v122 & 0xC000000000000001) != 0)
      {
        goto LABEL_189;
      }

      if (!*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_191:
        v126 = MEMORY[0x259C97E00](0);
        goto LABEL_96;
      }

      v123 = *(v122 + 32);
LABEL_92:
      v124 = v123;
      swift_endAccess();
      v13 = &unk_2798C2000;
      v50 = [v124 originator];

      if (!v50)
      {
        goto LABEL_117;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F97D840, &unk_258CC1E60);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_258CC1D00;
      v50 = v234;
      swift_beginAccess();
      v125 = *&v14[v50];
      if ((v125 & 0xC000000000000001) != 0)
      {
        goto LABEL_191;
      }

      if (!*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_193:
        __break(1u);
        goto LABEL_194;
      }

      v126 = *(v125 + 32);
LABEL_96:
      v127 = v126;
      swift_endAccess();
      v14 = [v127 *(v13 + 182)];

      if (!v14)
      {
        goto LABEL_277;
      }

      v128 = objc_opt_self();
      type metadata accessor for SecCertificate();
      *(v39 + 56) = v129;
      *(v39 + 32) = v14;
      v14 = sub_258CBEB20();

      *&v250 = 0;
      v130 = [v128 encodeOriginatorInfoCertificates:v14 error:&v250];

      v131 = v250;
      if (!v130)
      {
        v0 = v131;
        v13 = sub_258CBEA10();

        swift_willThrow();
        sub_258CA82B8(0, 0xC000000000000000);
        v26 = v267;
        if (!v267)
        {
          goto LABEL_280;
        }

        MEMORY[0x259C98B10](v267, -1, -1);
        MEMORY[0x259C98B10](v245, -1, -1);
        sub_258CA82B8(v238, v237);
        sub_258CA8728(v236, v243);
        MEMORY[0x259C98B10](v235, -1, -1);

        v26 = *(&v259[0] + 1);
        if (!*(&v259[0] + 1))
        {
          goto LABEL_281;
        }

        MEMORY[0x259C98B10](*(&v259[0] + 1), -1, -1);
        sub_258CA82B8(v18, v16);
        v26 = v228;
        if (v228)
        {
          goto LABEL_229;
        }

        __break(1u);
LABEL_105:
        v135 = 0;
        v13 = v235;
        v50 = v237;
        v14 = v241;
        if (v134 != 2)
        {
          goto LABEL_112;
        }

        v137 = *(v39 + 16);
        v136 = *(v39 + 24);
        v135 = v136 - v137;
        if (!__OFSUB__(v136, v137))
        {
          goto LABEL_112;
        }

        __break(1u);
        goto LABEL_109;
      }

      v39 = sub_258CBEA80();
      v133 = v132;

      sub_258CA82B8(0, 0xC000000000000000);
      *&v251 = v39;
      *(&v251 + 1) = v133;
      v134 = v133 >> 62;
      if ((v133 >> 62) > 1)
      {
        goto LABEL_105;
      }

      if (!v134)
      {
        v135 = BYTE6(v133);
LABEL_111:
        v13 = v235;
        v50 = v237;
        v14 = v241;
LABEL_112:
        v138 = v239;
        sub_258CAEDF0(&v251, v258, v135, &v261);
        v239 = v138;
        if (v138)
        {
          sub_258CA82B8(v251, *(&v251 + 1));
          v26 = v267;
          if (!v267)
          {
            goto LABEL_278;
          }

          MEMORY[0x259C98B10](v267, -1, -1);
          MEMORY[0x259C98B10](v245, -1, -1);
          sub_258CA82B8(v238, v50);
          sub_258CA8728(v236, v243);
          MEMORY[0x259C98B10](v13, -1, -1);

          v26 = *(&v259[0] + 1);
          if (!*(&v259[0] + 1))
          {
            goto LABEL_279;
          }

          MEMORY[0x259C98B10](*(&v259[0] + 1), -1, -1);
          sub_258CA82B8(v18, v16);
          v13 = v239;
          v26 = v228;
          if (v228)
          {
            goto LABEL_229;
          }

          __break(1u);
        }

LABEL_117:
        v39 = v234;
        v139 = *&v14[v234];
        if (!(v139 >> 62))
        {
          v140 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_119;
        }

LABEL_194:
        v140 = sub_258CBEBE0();
LABEL_119:
        if ((v140 * 112) >> 64 == (112 * v140) >> 63)
        {
          v227 = swift_slowAlloc();
          v50 = *&v14[v39];
          if (!(v50 >> 62))
          {
            v141 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_122;
          }
        }

        else
        {
          __break(1u);
        }

        v141 = sub_258CBEBE0();
LABEL_122:
        v240 = v18;

        v242 = v16;
        if (!v141)
        {
LABEL_142:

          v0 = v234;
          v154 = *&v241[v234];
          if (v154 >> 62)
          {
            goto LABEL_198;
          }

          v155 = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_144;
        }

        v142 = 0;
        v230 = (v50 & 0xFFFFFFFFFFFFFF8);
        v231 = v50 & 0xC000000000000001;
        v14 = v227;
        v229 = v141;
        while (1)
        {
          if (v231)
          {
            v143 = MEMORY[0x259C97E00](v142, v50);
          }

          else
          {
            if (v142 >= v230[2])
            {
              goto LABEL_176;
            }

            v143 = *(v50 + 8 * v142 + 32);
          }

          v18 = v143;
          v232 = v142;
          v0 = v142 + 1;
          if (__OFADD__(v142, 1))
          {
            break;
          }

          v144 = sub_258CBEA60();
          v145 = [v18 encryptBulkKey_];

          v146 = sub_258CBEA80();
          v39 = v147;

          v148 = v39 >> 62;
          if ((v39 >> 62) > 1)
          {
            if (v148 != 2)
            {
              goto LABEL_156;
            }

            v151 = *(v146 + 16);
            v150 = *(v146 + 24);
            v80 = __OFSUB__(v150, v151);
            v149 = v150 - v151;
            if (v80)
            {
              goto LABEL_185;
            }
          }

          else if (v148)
          {
            LODWORD(v149) = HIDWORD(v146) - v146;
            if (__OFSUB__(HIDWORD(v146), v146))
            {
              goto LABEL_186;
            }

            v149 = v149;
          }

          else
          {
            v149 = BYTE6(v39);
          }

          if (v149 < 1)
          {
LABEL_156:

            sub_258CAFE28();
            v165 = swift_allocError();
            *v166 = xmmword_258CC1D10;
            *(v166 + 16) = 48;
            v239 = v165;
            swift_willThrow();
            sub_258CA82B8(v146, v39);

            v167 = *&v241[v234];
            if (v167 >> 62)
            {
              if (v167 < 0)
              {
                v201 = *&v241[v234];
              }

              sub_258CBEBE0();
            }

            MEMORY[0x259C98B10](v227, -1, -1);
            sub_258CA82B8(v251, *(&v251 + 1));
            v26 = v267;
            v14 = v240;
            v168 = v235;
            v16 = v236;
            v169 = v237;
            v13 = v238;
            v170 = v242;
            if (!v267)
            {
              goto LABEL_285;
            }

            MEMORY[0x259C98B10](v267, -1, -1);
            MEMORY[0x259C98B10](v245, -1, -1);
            sub_258CA82B8(v13, v169);
            sub_258CA8728(v16, v243);
            MEMORY[0x259C98B10](v168, -1, -1);

            v26 = *(&v259[0] + 1);
            if (*(&v259[0] + 1))
            {
              MEMORY[0x259C98B10](*(&v259[0] + 1), -1, -1);
              sub_258CA82B8(v14, v170);
              v26 = v228;
              if (!v228)
              {
                __break(1u);
                goto LABEL_161;
              }

              goto LABEL_229;
            }

            while (2)
            {
              __break(1u);
LABEL_287:
              __break(1u);
LABEL_288:
              __break(1u);
LABEL_289:
              __break(1u);
LABEL_290:
              __break(1u);
LABEL_291:
              __break(1u);
LABEL_292:
              v157 = v231;
              v156 = v232;
              if (HIDWORD(v26))
              {
LABEL_293:
                __break(1u);
LABEL_294:
                v157 = v231;
                if (HIDWORD(v26))
                {
LABEL_295:
                  __break(1u);
                  return;
                }

LABEL_210:
                *v13 = v26;
                v230 = v156;
                if (!v26)
                {
                  v18 = v16;
                  v156 = v0;
                  goto LABEL_222;
                }

                v16 = swift_slowAlloc();
                v182 = *(v0 + v156);
                v18 = v182;
                if (!(v182 >> 62))
                {
                  v157 = *((v182 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v157)
                  {
                    goto LABEL_213;
                  }

LABEL_220:
                  v156 = v0;
                  *(v13 + 1) = v16;
                  v18 = v242;
                  v157 = v231;
LABEL_222:
                  v14 = v13;
                  *&v266 = v13;
                  v188 = length_AuthEnvelopedData(&v261);
                  v248 = sub_258CAFE7C(v188);
                  v249 = v189;
                  v244 = 0;
                  MEMORY[0x28223BE20](v248);
                  *&v204[-32] = v188;
                  *&v204[-24] = &v261;
                  *&v204[-16] = &v244;
                  v190 = v239;
                  sub_258CBEA70();
                  v16 = v190;
                  if (v190)
                  {
                    sub_258CA82B8(v248, v249);
                    v191 = *(v230 + v156);
                    if (v191 >> 62)
                    {
                      if (v191 < 0)
                      {
                        v198 = *(v230 + v156);
                      }

                      sub_258CBEBE0();
                    }

                    MEMORY[0x259C98B10](v13, -1, -1);
                    v192 = *(v156 + v157);
                    v14 = v240;
                    v0 = v238;
                    v13 = v190;
                    v193 = v235;
                    if (v192 >> 62)
                    {
                      if (v192 < 0)
                      {
                        v199 = *(v156 + v157);
                      }

                      sub_258CBEBE0();
                    }

                    MEMORY[0x259C98B10](v232, -1, -1);
                    v194 = *&v241[v156];
                    if (v194 >> 62)
                    {
                      if (v194 < 0)
                      {
                        v200 = *&v241[v156];
                      }

                      sub_258CBEBE0();
                    }

                    MEMORY[0x259C98B10](v227, -1, -1);
                    sub_258CA82B8(v251, *(&v251 + 1));
                    v26 = v267;
                    if (v267)
                    {
                      MEMORY[0x259C98B10](v267, -1, -1);
                      MEMORY[0x259C98B10](v245, -1, -1);
                      sub_258CA82B8(v0, v237);
                      sub_258CA8728(v236, v243);
                      MEMORY[0x259C98B10](v193, -1, -1);

                      v26 = *(&v259[0] + 1);
                      if (!*(&v259[0] + 1))
                      {
                        goto LABEL_283;
                      }

                      MEMORY[0x259C98B10](*(&v259[0] + 1), -1, -1);
                      sub_258CA82B8(v14, v18);
                      v26 = v228;
                      if (v228)
                      {
LABEL_229:
                        MEMORY[0x259C98B10](v26, -1, -1);

                        goto LABEL_173;
                      }

LABEL_284:
                      __break(1u);
LABEL_285:
                      __break(1u);
                      continue;
                    }

LABEL_282:
                    __break(1u);
LABEL_283:
                    __break(1u);
                    goto LABEL_284;
                  }

                  v0 = v248;
                  if (!(*(v230 + v156) >> 62))
                  {
LABEL_231:
                    MEMORY[0x259C98B10](v14, -1, -1);
                    v195 = *(v156 + v157);
                    v13 = v16;
                    if (v195 >> 62)
                    {
                      if (v195 < 0)
                      {
                        v202 = *(v156 + v157);
                      }

                      sub_258CBEBE0();
                    }

                    MEMORY[0x259C98B10](v232, -1, -1);
                    v196 = *&v241[v156];
                    if (v196 >> 62)
                    {
                      if (v196 < 0)
                      {
                        v203 = *&v241[v156];
                      }

                      sub_258CBEBE0();
                    }

                    MEMORY[0x259C98B10](v227, -1, -1);
                    sub_258CA82B8(v251, *(&v251 + 1));
                    v26 = v267;
                    if (!v267)
                    {
                      goto LABEL_287;
                    }

                    MEMORY[0x259C98B10](v267, -1, -1);
                    MEMORY[0x259C98B10](v245, -1, -1);
                    sub_258CA82B8(v238, v237);
                    sub_258CA8728(v236, v243);
                    MEMORY[0x259C98B10](v235, -1, -1);

                    v26 = *(&v259[0] + 1);
                    if (!*(&v259[0] + 1))
                    {
                      goto LABEL_288;
                    }

                    MEMORY[0x259C98B10](*(&v259[0] + 1), -1, -1);
                    sub_258CA82B8(v240, v18);
                    v26 = v228;
                    if (v228)
                    {
                      MEMORY[0x259C98B10](v228, -1, -1);

                      goto LABEL_174;
                    }

                    goto LABEL_289;
                  }

LABEL_257:
                  sub_258CBEBE0();
                  goto LABEL_231;
                }

LABEL_241:
                v182 = v18;
                v157 = sub_258CBEBE0();
                if (!v157)
                {
                  goto LABEL_220;
                }

LABEL_213:
                v229 = v13;
                if (v157 >= 1)
                {
                  v183 = v182 & 0xC000000000000001;

                  v184 = 0;
                  v226 = v16;
                  v185 = v16;
                  do
                  {
                    if (v183)
                    {
                      v186 = MEMORY[0x259C97E00](v184, v182);
                    }

                    else
                    {
                      v186 = *(v182 + 8 * v184 + 32);
                    }

                    v187 = v186;
                    ++v184;
                    [v186 generateAttributeStruct];
                    copy_Attribute();
                    free_Attribute();

                    v185 += 32;
                    v182 = v18;
                  }

                  while (v157 != v184);

                  v13 = v229;
                  v16 = v226;
                  goto LABEL_220;
                }

LABEL_256:
                __break(1u);
                goto LABEL_257;
              }

              break;
            }

LABEL_147:
            *v156 = v26;
            if (v26)
            {
              v159 = v16;
              v14 = swift_slowAlloc();
              v160 = *(v0 + v157);
              v18 = v160;
              if (v160 >> 62)
              {
                if (v160 < 0)
                {
                  v180 = *(v0 + v157);
                }

                v160 = *(v0 + v157);
                v16 = sub_258CBEBE0();
                if (!v16)
                {
                  goto LABEL_206;
                }

LABEL_150:
                if (v16 < 1)
                {
                  __break(1u);
                  goto LABEL_256;
                }

                v0 = v159;
                v161 = v160 & 0xC000000000000001;

                v162 = 0;
                v230 = v14;
                do
                {
                  if (v161)
                  {
                    v163 = MEMORY[0x259C97E00](v162, v160);
                  }

                  else
                  {
                    v163 = *(v160 + 8 * v162 + 32);
                  }

                  v164 = v163;
                  ++v162;
                  [v163 generateAttributeStruct];
                  copy_Attribute();
                  free_Attribute();

                  v14 += 32;
                  v160 = v18;
                }

                while (v16 != v162);
LABEL_161:

                v16 = v0;
                v0 = v234;
                v157 = v231;
                v156 = v232;
                v14 = v230;
              }

              else
              {
                v16 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v16)
                {
                  goto LABEL_150;
                }

LABEL_206:
                v16 = v159;
              }

              *(v156 + 8) = v14;
            }

            *(&v267 + 1) = v156;
            v13 = swift_slowAlloc();
            v156 = OBJC_IVAR___MSCMSAuthEnvelopedData_protectedAttributes;
            swift_beginAccess();
            v181 = *(v0 + v156);
            if (!(v181 >> 62))
            {
              v26 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (HIDWORD(v26))
              {
                goto LABEL_295;
              }

              goto LABEL_210;
            }

            if (v181 < 0)
            {
              v197 = *(v0 + v156);
            }

            v26 = sub_258CBEBE0();
            if ((v26 & 0x8000000000000000) == 0)
            {
              goto LABEL_294;
            }

            __break(1u);
            goto LABEL_241;
          }

          v152 = sub_258CBEA60();
          *&v250 = 0;
          v13 = [v18 encodeRecipientInfo:v152 recipientInfo:v14 error:&v250];

          if (!v13)
          {
            v171 = v250;

            v172 = sub_258CBEA10();

            v239 = v172;
            swift_willThrow();
            sub_258CA82B8(v146, v39);

            if (!(*&v241[v234] >> 62))
            {
              goto LABEL_163;
            }

            goto LABEL_265;
          }

          v153 = v250;
          sub_258CA82B8(v146, v39);

          v142 = v232 + 1;
          v14 += 112;
          v16 = v242;
          if (v0 == v229)
          {
            goto LABEL_142;
          }
        }

        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        swift_once();
LABEL_35:
        v51 = sub_258CBEAB0();
        __swift_project_value_buffer(v51, qword_27F97DBE8);
        v0 = sub_258CBEA90();
        v52 = sub_258CBEB70();
        if (os_log_type_enabled(v0, v52))
        {
          v53 = v50;
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_258C80000, v0, v52, "Invalid input data/embedded data", v54, 2u);
          v55 = v54;
          v50 = v53;
          MEMORY[0x259C98B10](v55, -1, -1);
        }

        sub_258CAFE28();
        v13 = swift_allocError();
        *v56 = 0;
        *(v56 + 8) = 0;
        *(v56 + 16) = 48;
        swift_willThrow();
        sub_258CA82B8(v238, v237);
        MEMORY[0x259C98B10](v14, -1, -1);

        v26 = *(&v259[0] + 1);
        if (*(&v259[0] + 1))
        {
          MEMORY[0x259C98B10](*(&v259[0] + 1), -1, -1);
          v27 = v50;
          goto LABEL_17;
        }

LABEL_271:
        __break(1u);
        goto LABEL_272;
      }

LABEL_109:
      if (!__OFSUB__(HIDWORD(v39), v39))
      {
        v135 = HIDWORD(v39) - v39;
        goto LABEL_111;
      }

      __break(1u);
LABEL_265:
      sub_258CBEBE0();
LABEL_163:
      MEMORY[0x259C98B10](v227, -1, -1);
      sub_258CA82B8(v251, *(&v251 + 1));
      v26 = v267;
      v14 = v240;
      v3 = v235;
      v16 = v236;
      v2 = v237;
      v13 = v238;
      v173 = v242;
      if (!v267)
      {
        goto LABEL_290;
      }

      MEMORY[0x259C98B10](v267, -1, -1);
      MEMORY[0x259C98B10](v245, -1, -1);
      sub_258CA82B8(v13, v2);
      sub_258CA8728(v16, v243);
      MEMORY[0x259C98B10](v3, -1, -1);

      v26 = *(&v259[0] + 1);
      if (!*(&v259[0] + 1))
      {
        goto LABEL_291;
      }

      MEMORY[0x259C98B10](*(&v259[0] + 1), -1, -1);
      sub_258CA82B8(v14, v173);
      v4 = v239;
      v26 = v228;
      if (v228)
      {
        goto LABEL_229;
      }

      __break(1u);
LABEL_167:
      ;
    }

    while (sub_258CBEBE0() >= 1);
  }

  if (qword_27F97DBE0 != -1)
  {
    swift_once();
  }

  v174 = sub_258CBEAB0();
  __swift_project_value_buffer(v174, qword_27F97DBE8);
  v175 = sub_258CBEA90();
  v176 = sub_258CBEB70();
  if (os_log_type_enabled(v175, v176))
  {
    v177 = swift_slowAlloc();
    *v177 = 0;
    _os_log_impl(&dword_258C80000, v175, v176, "No recipient found", v177, 2u);
    MEMORY[0x259C98B10](v177, -1, -1);
  }

  sub_258CAFE28();
  swift_allocError();
  *v178 = xmmword_258CC1CD0;
  *(v178 + 16) = 48;
  swift_willThrow();
LABEL_173:

LABEL_174:
  v179 = *MEMORY[0x277D85DE8];
}

void *sub_258CAC1C4(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16)
{
  v62[6] = *MEMORY[0x277D85DE8];
  v20 = OBJC_IVAR___MSCMSAuthEnvelopedData_encryptionAlgorithm;
  swift_beginAccess();
  v21 = *(a4 + v20);
  v22 = objc_allocWithZone(MSAlgorithmIdentifier);
  v23 = v21;
  v24 = sub_258CBEA60();
  v25 = [v22 initWithOID:v23 parameters:v24];

  v26 = *a3;
  *a3 = v25;
  v27 = v25;

  v62[0] = *a7;
  v28 = [v27 ccAlgorithm_];

  v29 = v62[0];
  v30 = *a7;
  *a7 = v62[0];
  v31 = v29;

  v32 = *a3;
  v62[0] = *a7;
  v33 = [v32 ccMode_];
  v34 = v62[0];
  v35 = *a7;
  *a7 = v62[0];
  v36 = v34;

  if (v28 || v33 != 11)
  {
    if (qword_27F97DBE0 != -1)
    {
      swift_once();
    }

    v44 = sub_258CBEAB0();
    __swift_project_value_buffer(v44, qword_27F97DBE8);
    v45 = sub_258CBEA90();
    v46 = sub_258CBEB70();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 67109120;
      *(v47 + 4) = v28;
      _os_log_impl(&dword_258C80000, v45, v46, "Invalid input algorithm %u", v47, 8u);
      MEMORY[0x259C98B10](v47, -1, -1);
    }

    sub_258CAFE28();
    swift_allocError();
    *v48 = 0;
    *(v48 + 8) = 0;
    *(v48 + 16) = 48;
    goto LABEL_23;
  }

  result = [*a3 asn1AlgId];
  v38 = result[2];
  *(a8 + 16) = *result;
  *(a8 + 32) = v38;
  if (!a10)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v39 = SecRandomCopyBytes(*MEMORY[0x277CDC540], a11 - a10, a10);
  swift_beginAccess();
  *(a9 + 16) = v39;
  if (v39)
  {
    if (qword_27F97DBE0 != -1)
    {
      swift_once();
    }

    v40 = sub_258CBEAB0();
    __swift_project_value_buffer(v40, qword_27F97DBE8);

    v41 = sub_258CBEA90();
    v42 = sub_258CBEB70();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 67109120;
      swift_beginAccess();
      *(v43 + 4) = *(a9 + 16);

      _os_log_impl(&dword_258C80000, v41, v42, "Unable to generate key underlying crypto error %d", v43, 8u);
      MEMORY[0x259C98B10](v43, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v55 = *(a9 + 16);
LABEL_22:
    sub_258CAFE28();
    swift_allocError();
    *v56 = v55;
    *(v56 + 8) = 0;
    *(v56 + 16) = 0;
LABEL_23:
    result = swift_willThrow();
LABEL_24:
    v57 = *MEMORY[0x277D85DE8];
    return result;
  }

  v49 = *(a12 + 8);
  v61 = *(a15 + 96);
  v60 = *a14;
  result = CCCryptorGCMOneshotEncrypt();
  if (result)
  {
    v50 = result;
    if (qword_27F97DBE0 != -1)
    {
      swift_once();
    }

    v51 = sub_258CBEAB0();
    __swift_project_value_buffer(v51, qword_27F97DBE8);
    v52 = sub_258CBEA90();
    v53 = sub_258CBEB70();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 67109120;
      *(v54 + 4) = v50;
      _os_log_impl(&dword_258C80000, v52, v53, "Error encrypting underlying crypto error %d", v54, 8u);
      MEMORY[0x259C98B10](v54, -1, -1);
    }

    v55 = v50;
    goto LABEL_22;
  }

  v58 = *(a8 + 40);
  if (!v58)
  {
    goto LABEL_29;
  }

  *(v58 + 8) = *a14;
  v59 = *(a8 + 40);
  if (v59)
  {
    *v59 = a16;
    goto LABEL_24;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_258CAC73C(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v9[2] = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v9[0] = a1;
      LOWORD(v9[1]) = a2;
      BYTE2(v9[1]) = BYTE2(a2);
      BYTE3(v9[1]) = BYTE3(a2);
      BYTE4(v9[1]) = BYTE4(a2);
      BYTE5(v9[1]) = BYTE5(a2);
      result = (a3)(v9, v9 + BYTE6(a2));
      if (v3)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_8:
    result = sub_258CB02AC(v6, v7, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
    if (v3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v4 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    goto LABEL_8;
  }

  memset(v9, 0, 14);
  result = (a3)(v9, v9);
  if (v3)
  {
    goto LABEL_14;
  }

LABEL_12:
  LOBYTE(result) = 0;
LABEL_13:
  result &= 1u;
LABEL_14:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static MSCMSAuthEnvelopedData.decodeMessageSecurityObject(_:options:)(uint64_t a1, void *a2)
{
  v3 = sub_258CBEA80();
  v5 = v4;
  static MSCMSAuthEnvelopedData.decodeSecurityObject(_:options:)(v3, v4, a2);
  v7 = v6;
  sub_258CA82B8(v3, v5);
  return v7;
}

void static MSCMSAuthEnvelopedData.decodeSecurityObject(_:options:)(uint64_t a1, uint64_t a2, void *a3)
{
  v281 = *MEMORY[0x277D85DE8];
  v6 = [objc_allocWithZone(MSCMSRecipientInfo) init];
  v249 = [objc_allocWithZone(MSAlgorithmIdentifier) init];
  v7 = [objc_allocWithZone(MSOID) init];
  v279 = 0u;
  v280 = 0u;
  v277 = 0u;
  v278 = 0u;
  v275 = 0u;
  v276 = 0u;
  v274 = 0u;
  v8 = sub_258CBEA60();
  v9 = nsheim_decode_AuthEnvelopedData(v8);

  if (v9)
  {
    if (qword_27F97DBE0 != -1)
    {
      goto LABEL_170;
    }

    goto LABEL_3;
  }

  v247 = v4;
  v245 = a3;
  v17 = objc_allocWithZone(v3);
  v18 = v7;
  v19 = sub_258CAF340(v18);

  v20 = MEMORY[0x277D84F90];
  v256 = v19;
  if (!*(&v274 + 1))
  {
    v33 = 0x2798BD000;
    goto LABEL_35;
  }

  v21 = NSDataFromAny(*(&v274 + 1));
  v22 = sub_258CBEA80();
  v24 = v23;

  __dst = 0uLL;
  v25 = sub_258CBEA60();
  v26 = nsheim_decode_OriginatorInfo(v25);

  if (v26)
  {
    if (qword_27F97DBE0 != -1)
    {
      swift_once();
    }

    v27 = sub_258CBEAB0();
    __swift_project_value_buffer(v27, qword_27F97DBE8);
    v28 = sub_258CBEA90();
    v29 = sub_258CBEB70();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_14;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v30 = "Invalid data - error decoding OriginatorInfo";
    goto LABEL_13;
  }

  if (__dst)
  {
    v34 = *(__dst + 8);
    v35 = *__dst;
    v273 = v20;
    if (v34)
    {
      if (v35)
      {
        v36 = 24 * v35;
        v37 = (v34 + 8);
        v38 = MEMORY[0x277D84F90];
        do
        {
          v40 = *v37;
          v39 = v37[1];
          if (SecCertificateCreateWithBytes())
          {
            MEMORY[0x259C97D40]();
            if (*((v273 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v273 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v41 = *((v273 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_258CBEB40();
              v19 = v256;
            }

            sub_258CBEB60();
            v38 = v273;
          }

          v37 += 3;
          v36 -= 24;
        }

        while (v36);
      }

      else
      {
        v38 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v38 = v20;
    }

    v31 = v4;
    v20 = v38;
    goto LABEL_32;
  }

  if (qword_27F97DBE0 != -1)
  {
    swift_once();
  }

  v42 = sub_258CBEAB0();
  __swift_project_value_buffer(v42, qword_27F97DBE8);
  v28 = sub_258CBEA90();
  v29 = sub_258CBEB70();
  if (os_log_type_enabled(v28, v29))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v30 = "Invalid data - originatorInfo has no certificates";
LABEL_13:
    _os_log_impl(&dword_258C80000, v28, v29, v30, v20, 2u);
    MEMORY[0x259C98B10](v20, -1, -1);
  }

LABEL_14:

  sub_258CAFE28();
  v31 = swift_allocError();
  *v32 = xmmword_258CC1D30;
  *(v32 + 16) = 48;
  swift_willThrow();
LABEL_32:
  v247 = v31;
  v33 = 0x2798BD000uLL;
  if (v31)
  {

    sub_258CA82B8(v22, v24);
    goto LABEL_6;
  }

  sub_258CA82B8(v22, v24);
  v43 = OBJC_IVAR___MSCMSAuthEnvelopedData_originatorCertificates;
  swift_beginAccess();
  v44 = *(v19 + v43);
  *(v19 + v43) = v20;

LABEL_35:
  v246 = v18;
  v45 = v275;
  v46 = *(&v275 + 1);
  v47 = OBJC_IVAR___MSCMSAuthEnvelopedData_recipients;
  v254 = OBJC_IVAR___MSCMSAuthEnvelopedData_originatorCertificates;
  swift_beginAccess();
  v266 = v47;
  if (v275)
  {
    v7 = 0;
    v48 = v20 & 0xFFFFFFFFFFFFFF8;
    v264 = v20 & 0xFFFFFFFFFFFFFF8;
    if (v20 < 0)
    {
      v48 = v20;
    }

    v244 = v48;
    v248 = (v20 & 0xC000000000000001);
    v250 = v20 >> 62;
    v252 = *(&v275 + 1);
    while (1)
    {
      if (!v252)
      {
        __break(1u);
      }

      memmove(&__dst, v46, 0x70uLL);
      v49 = *(v33 + 3232);
      v50 = objc_opt_self();
      v51 = *(v19 + v254);

      sub_258CAE654(v52);

      v53 = sub_258CBEB20();

      v269[0] = v7;
      v54 = [v50 decodeRecipientInfo:&__dst certificates:v53 LAContext:0 error:v269];

      v55 = v269[0];
      if (v250)
      {
        v47 = v266;
        if (sub_258CBEBE0() < 1)
        {
          goto LABEL_48;
        }

        if (!sub_258CBEBE0())
        {
          v6 = v54;

          if (qword_27F97DBE0 == -1)
          {
LABEL_175:
            v221 = sub_258CBEAB0();
            __swift_project_value_buffer(v221, qword_27F97DBE8);
            v222 = sub_258CBEA90();
            v223 = sub_258CBEB70();
            if (os_log_type_enabled(v222, v223))
            {
              v224 = swift_slowAlloc();
              *v224 = 0;
              _os_log_impl(&dword_258C80000, v222, v223, "Invalid data - no certificate in originatorCertificates", v224, 2u);
              MEMORY[0x259C98B10](v224, -1, -1);
            }

            sub_258CAFE28();
            swift_allocError();
            *v225 = xmmword_258CC1D30;
            *(v225 + 16) = 48;
            swift_willThrow();

LABEL_81:
            v104 = v246;
LABEL_82:

            goto LABEL_6;
          }

LABEL_185:
          swift_once();
          goto LABEL_175;
        }
      }

      else
      {
        v47 = v266;
        if (!*(v264 + 16))
        {
          goto LABEL_48;
        }
      }

      if (v248)
      {
        v56 = MEMORY[0x259C97E00](0, v20);
      }

      else
      {
        if (!*(v264 + 16))
        {
          __break(1u);
LABEL_170:
          swift_once();
LABEL_3:
          v10 = sub_258CBEAB0();
          __swift_project_value_buffer(v10, qword_27F97DBE8);
          v11 = sub_258CBEA90();
          v12 = sub_258CBEB70();
          if (os_log_type_enabled(v11, v12))
          {
            v13 = swift_slowAlloc();
            *v13 = 0;
            _os_log_impl(&dword_258C80000, v11, v12, "Invalid data - error decoding AuthEnvelopedData", v13, 2u);
            MEMORY[0x259C98B10](v13, -1, -1);
          }

          v14 = sub_258CBEA60();
          dumpNSData("AuthEnvelopedData", v14);

          sub_258CAFE28();
          swift_allocError();
          *v15 = xmmword_258CC1D20;
          *(v15 + 16) = 48;
          swift_willThrow();

          goto LABEL_6;
        }

        v56 = *(v20 + 32);
      }

      v57 = v56;
      v58 = SecCertificateCopyKey(v56);
      if (!v58)
      {

        sub_258CAFE28();
        swift_allocError();
        *v102 = xmmword_258CC1D20;
        *(v102 + 16) = 48;
        swift_willThrow();

        goto LABEL_81;
      }

      v59 = v58;
      v262 = v55;
      v60 = SecKeyCopyExternalRepresentation(v58, 0);
      if (!v60)
      {

        sub_258CAFE28();
        swift_allocError();
        *v103 = xmmword_258CC1D20;
        *(v103 + 16) = 48;
        swift_willThrow();

        goto LABEL_81;
      }

      v61 = v60;
      v62 = v20;
      v63 = sub_258CBEA80();
      v65 = v64;
      v257 = v46;
      v66 = v57;
      v67 = sub_258CBEA60();
      v68 = v63;
      v20 = v62;
      v47 = v266;
      v69 = v65;
      v19 = v256;
      sub_258CA82B8(v68, v69);
      [v54 setOriginatorPubKey_];

      v46 = v257;
      v55 = v262;
LABEL_48:
      swift_beginAccess();
      v6 = v54;
      MEMORY[0x259C97D40]();
      if (*((*(v19 + v47) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v19 + v47) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v70 = *((*(v19 + v47) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_258CBEB40();
      }

      sub_258CBEB60();
      swift_endAccess();
      v46 += 112;
      v7 = v55;
      --v45;
      v33 = 0x2798BD000;
      if (!v45)
      {
        goto LABEL_57;
      }
    }
  }

  v55 = 0;
LABEL_57:
  swift_beginAccess();
  v71 = *(v19 + v47);
  if (v71 >> 62)
  {
LABEL_173:
    v72 = sub_258CBEBE0();
  }

  else
  {
    v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = v246;
  v74 = v247;
  if (v72 < 1)
  {

    if (qword_27F97DBE0 != -1)
    {
      swift_once();
    }

    v88 = sub_258CBEAB0();
    __swift_project_value_buffer(v88, qword_27F97DBE8);
    v89 = sub_258CBEA90();
    v90 = sub_258CBEB70();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_258C80000, v89, v90, "Invalid data - no recipients found", v91, 2u);
      MEMORY[0x259C98B10](v91, -1, -1);
    }

    sub_258CAFE28();
    swift_allocError();
    *v92 = xmmword_258CC1D20;
    *(v92 + 16) = 48;
    swift_willThrow();

    goto LABEL_6;
  }

  if (!*(&v278 + 1))
  {
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  v233 = *(&v276 + 1);
  v234 = v276;
  v75 = NSDataFromOctetString(*(&v278 + 1));
  v76 = sub_258CBEA80();
  v78 = v77;

  v79 = (v19 + OBJC_IVAR___MSCMSAuthEnvelopedData_encryptedContent);
  v80 = *(v19 + OBJC_IVAR___MSCMSAuthEnvelopedData_encryptedContent);
  v81 = *(v19 + OBJC_IVAR___MSCMSAuthEnvelopedData_encryptedContent + 8);
  *v79 = v76;
  v79[1] = v78;
  sub_258CA82B8(v80, v81);
  *&__dst = v55;
  v263 = [objc_allocWithZone(MSAlgorithmIdentifier) initWithAsn1AlgId:&v277 error:&__dst];

  v242 = __dst;
  v82 = NSDataFromOctetString(&v279 + 1);
  v83 = sub_258CBEA80();
  v85 = v84;

  v86 = v85 >> 62;
  v243 = v83;
  if ((v85 >> 62) > 1)
  {
    v87 = 0x2798BD000;
    if (v86 != 2 || *(v83 + 16) == *(v83 + 24))
    {
      goto LABEL_84;
    }
  }

  else
  {
    v87 = 0x2798BD000;
    if (v86)
    {
      if (v83 == v83 >> 32)
      {
LABEL_84:

        if (qword_27F97DBE0 != -1)
        {
          swift_once();
        }

        v105 = sub_258CBEAB0();
        __swift_project_value_buffer(v105, qword_27F97DBE8);
        v106 = sub_258CBEA90();
        v107 = sub_258CBEB70();
        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          *v108 = 0;
          _os_log_impl(&dword_258C80000, v106, v107, "Error extracting MAC", v108, 2u);
          MEMORY[0x259C98B10](v108, -1, -1);
        }

        sub_258CAFE28();
        swift_allocError();
        *v109 = 0;
        *(v109 + 8) = 0;
        *(v109 + 16) = 48;
        swift_willThrow();

        sub_258CA82B8(v243, v85);
        goto LABEL_6;
      }
    }

    else if ((v85 & 0xFF000000000000) == 0)
    {
      goto LABEL_84;
    }
  }

  v93 = v279;
  v241 = v85;
  if (!v279 || (v94 = *(v279 + 8)) == 0)
  {
    v231 = 0;
    goto LABEL_98;
  }

  v95 = *v279;
  if (!v95)
  {
    v231 = 0;
    v19 = v256;
    goto LABEL_98;
  }

  v55 = OBJC_IVAR___MSCMSAuthEnvelopedData_protectedAttributes;
  v96 = *(v94 + 4);
  v97 = *(v94 + 3);
  __dst = *v94;
  LODWORD(v271) = v96;
  *(&v271 + 1) = v97;
  v98 = objc_opt_self();
  v267[0] = v242;
  v99 = [v98 decodeAttribute:&__dst error:v267];
  v100 = v267[0];

  swift_beginAccess();
  v101 = v99;
  MEMORY[0x259C97D40]();
  if (*((*&v256[v55] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v256[v55] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v261 = *((*&v256[v55] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_258CBEB40();
  }

  sub_258CBEB60();
  swift_endAccess();
  v248 = v101;

  if (v95 == 1)
  {
    v231 = 1;
    v242 = v100;
    goto LABEL_97;
  }

  v110 = 0;
  v111 = v95 - 1;
  do
  {
    v112 = *(v93 + 8);
    if (!v112)
    {
      __break(1u);
LABEL_183:
      __break(1u);
      goto LABEL_184;
    }

    v113 = v112 + v110;
    v114 = *(v113 + 48);
    v115 = *(v113 + 56);
    __dst = *(v113 + 32);
    LODWORD(v271) = v114;
    *(&v271 + 1) = v115;
    v116 = objc_opt_self();
    v267[0] = v100;
    v117 = [v116 decodeAttribute:&__dst error:v267];
    v118 = v267[0];

    swift_beginAccess();
    v119 = v117;
    MEMORY[0x259C97D40]();
    if (*((*&v256[v55] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v256[v55] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v258 = *((*&v256[v55] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_258CBEB40();
    }

    sub_258CBEB60();
    swift_endAccess();
    v248 = v119;

    v110 += 32;
    v100 = v118;
    --v111;
  }

  while (v111);
  v242 = v118;
  v231 = 1;
LABEL_97:
  v19 = v256;
  v73 = v246;
  v74 = v247;
  v87 = 0x2798BD000;
LABEL_98:
  v120 = *(&v280 + 1);
  if (*(&v280 + 1) && (v121 = *(*(&v280 + 1) + 8)) != 0)
  {
    v122 = **(&v280 + 1);
    if (v122)
    {
      v247 = v74;
      v55 = OBJC_IVAR___MSCMSAuthEnvelopedData_unprotectedAttributes;
      v123 = *(v121 + 4);
      v124 = *(v121 + 3);
      __dst = *v121;
      LODWORD(v271) = v123;
      *(&v271 + 1) = v124;
      v125 = objc_opt_self();
      v267[0] = v242;
      v126 = [v125 decodeAttribute:&__dst error:v267];
      v127 = v267[0];

      swift_beginAccess();
      v128 = v126;
      MEMORY[0x259C97D40]();
      if (*((*&v256[v55] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v256[v55] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v227 = *((*&v256[v55] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_258CBEB40();
      }

      sub_258CBEB60();
      swift_endAccess();
      v244 = v128;

      if (v122 == 1)
      {
        v230 = 1;
        v242 = v127;
      }

      else
      {
        v129 = 0;
        v130 = v122 - 1;
        do
        {
          v131 = *(v120 + 8);
          if (!v131)
          {
            goto LABEL_183;
          }

          v132 = v131 + v129;
          v133 = *(v132 + 48);
          v134 = *(v132 + 56);
          __dst = *(v132 + 32);
          LODWORD(v271) = v133;
          *(&v271 + 1) = v134;
          v135 = objc_opt_self();
          v267[0] = v127;
          v136 = [v135 decodeAttribute:&__dst error:v267];
          v137 = v267[0];

          swift_beginAccess();
          v138 = v136;
          MEMORY[0x259C97D40]();
          if (*((*&v256[v55] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v256[v55] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v259 = *((*&v256[v55] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_258CBEB40();
          }

          sub_258CBEB60();
          swift_endAccess();
          v244 = v138;

          v129 += 32;
          v127 = v137;
          --v130;
        }

        while (v130);
        v242 = v137;
        v230 = 1;
      }

      v19 = v256;
      v73 = v246;
      v74 = v247;
      v87 = 0x2798BD000uLL;
    }

    else
    {
      v230 = 0;
      v19 = v256;
    }
  }

  else
  {
    v230 = 0;
  }

  v139 = *&v266[v19];
  if (v139 >> 62)
  {
    if (v139 < 0)
    {
      v226 = *&v266[v19];
    }

    v140 = sub_258CBEBE0();
  }

  else
  {
    v140 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v140)
  {
LABEL_150:

    if (qword_27F97DBE0 != -1)
    {
      swift_once();
    }

    v201 = sub_258CBEAB0();
    __swift_project_value_buffer(v201, qword_27F97DBE8);
    v202 = sub_258CBEA90();
    v203 = sub_258CBEB70();
    if (os_log_type_enabled(v202, v203))
    {
      v204 = swift_slowAlloc();
      *v204 = 0;
      _os_log_impl(&dword_258C80000, v202, v203, "Error decrypting encoded content", v204, 2u);
      MEMORY[0x259C98B10](v204, -1, -1);
    }

    sub_258CAFE28();
    swift_allocError();
    *v205 = xmmword_258CC1D20;
    *(v205 + 16) = 48;
    swift_willThrow();

    sub_258CA82B8(v243, v241);
LABEL_155:

    if (v231)
    {
    }

    if (!v230)
    {
      goto LABEL_6;
    }

    v104 = v244;
    goto LABEL_82;
  }

  v55 = 0;
  v253 = v139 & 0xFFFFFFFFFFFFFF8;
  v255 = v139 & 0xC000000000000001;
  v249 = v140;
  v251 = v139;
  while (2)
  {
    if (v255)
    {
      v141 = MEMORY[0x259C97E00](v55, v139);
      v142 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        goto LABEL_171;
      }
    }

    else
    {
      if (v55 >= *(v253 + 16))
      {
        goto LABEL_172;
      }

      v141 = *(v139 + 8 * v55 + 32);
      v142 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
        goto LABEL_173;
      }
    }

    v266 = v141;
    v260 = v142;
    *&__dst = 0;
    v143 = [v263 ccAlgorithm_];
    v144 = __dst;
    v145 = [v263 ccMode_];
    v265 = __dst;

    if (v143 || v145 != 11)
    {
      if (qword_27F97DBE0 != -1)
      {
        swift_once();
      }

      v153 = sub_258CBEAB0();
      __swift_project_value_buffer(v153, qword_27F97DBE8);
      v154 = sub_258CBEA90();
      v155 = sub_258CBEB70();
      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        *v156 = 67109120;
        *(v156 + 4) = v143;
        _os_log_impl(&dword_258C80000, v154, v155, "Invalid encryption algorithm %u", v156, 8u);
        MEMORY[0x259C98B10](v156, -1, -1);
      }

      sub_258CAFE28();
      v157 = swift_allocError();
      *v158 = 0;
      *(v158 + 8) = 0;
      *(v158 + 16) = 48;
      swift_willThrow();

      v19 = v256;
      goto LABEL_137;
    }

    v272 = 0;
    __dst = 0u;
    v271 = 0u;
    v146 = [v263 parameters];
    if (v146)
    {
      v147 = v146;
      v148 = sub_258CBEA80();
      v150 = v149;

      v151 = sub_258CBEA60();
      v152 = v150;
      v19 = v256;
      sub_258CA82B8(v148, v152);
    }

    else
    {
      v151 = 0;
    }

    v159 = nsheim_decode_GCMParameters(v151);

    if (v159)
    {
      if (qword_27F97DBE0 != -1)
      {
        swift_once();
      }

      v160 = sub_258CBEAB0();
      __swift_project_value_buffer(v160, qword_27F97DBE8);
      v161 = sub_258CBEA90();
      v162 = sub_258CBEB70();
      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        *v163 = 0;
        _os_log_impl(&dword_258C80000, v161, v162, "Invalid data - error decoding GCMParameters", v163, 2u);
        MEMORY[0x259C98B10](v163, -1, -1);
      }

      sub_258CAFE28();
      v157 = swift_allocError();
      *v164 = xmmword_258CC1D40;
      *(v164 + 16) = 48;
      swift_willThrow();

      goto LABEL_137;
    }

    v247 = v74;
    v166 = NSDataFromOctetString(&__dst);
    v167 = sub_258CBEA80();
    v169 = v168;

    v170 = [v266 key];
    v171 = sub_258CBEA80();
    v173 = v172;

    v174 = *(v19 + OBJC_IVAR___MSCMSAuthEnvelopedData_encryptedContent);
    v175 = *(v19 + OBJC_IVAR___MSCMSAuthEnvelopedData_encryptedContent + 8);
    v235 = (v19 + OBJC_IVAR___MSCMSAuthEnvelopedData_encryptedContent);
    sub_258CA85E0(v174, v175);
    v237 = v171;
    v238 = v173;
    v176 = v174;
    v177 = sub_258CBEA60();
    v239 = v167;
    v240 = v169;
    v178 = sub_258CBEA60();
    v179 = sub_258CBEA60();
    v180 = sub_258CBEA60();
    v267[0] = 0;
    v181 = MSDecryptGCMOneShot(0, v177, v178, v179, v180, v267);

    v182 = v267[0];
    v183 = sub_258CBEA80();
    v185 = v184;

    if (v182)
    {
      swift_willThrow();
      sub_258CA82B8(v176, v175);
      sub_258CA82B8(v183, v185);

      v186 = [v266 key_];
      v187 = sub_258CBEA80();
      v189 = v188;

      v190 = *v235;
      v191 = v235[1];
      sub_258CA85E0(*v235, v191);
      v232 = v187;
      v236 = v189;
      v192 = sub_258CBEA60();
      v193 = sub_258CBEA60();
      v194 = sub_258CBEA60();
      v247 = v190;
      v195 = sub_258CBEA60();
      v267[0] = 0;
      v196 = MSDecryptGCMOneShot(0, v192, v193, v194, v195, v267);

      v197 = v267[0];
      v198 = sub_258CBEA80();
      v200 = v199;

      if (v197)
      {
        swift_willThrow();
        v157 = v197;
        sub_258CA82B8(v237, v238);
        sub_258CA82B8(v239, v240);
        sub_258CA82B8(v232, v236);

        sub_258CA82B8(v247, v191);
        sub_258CA82B8(v198, v200);

        v19 = v256;
        v73 = v246;
        v87 = 0x2798BD000;
LABEL_137:
        v139 = v251;
        v165 = v266;
        if (!v157)
        {
          goto LABEL_159;
        }

LABEL_138:

        v74 = 0;
        ++v55;
        if (v260 == v140)
        {
          goto LABEL_150;
        }

        continue;
      }

      v228 = v198;
      v229 = v200;
      sub_258CA82B8(v237, v238);
      sub_258CA82B8(v239, v240);
      sub_258CA82B8(v232, v236);

      sub_258CA82B8(v247, v191);
      v157 = 0;
      v73 = v246;
    }

    else
    {
      v228 = v183;
      v229 = v185;
      sub_258CA82B8(v237, v238);
      sub_258CA82B8(v239, v240);
      sub_258CA82B8(v176, v175);
      v73 = v246;
      v157 = v247;
    }

    break;
  }

  v87 = 0x2798BD000;
  v139 = v251;
  v165 = v266;

  v19 = v256;
  if (v157)
  {
    goto LABEL_138;
  }

LABEL_159:

  v268[0] = v234;
  v268[1] = v233;
  *&__dst = v242;
  v206 = [objc_allocWithZone(*(v87 + 3272)) initWithAsn1OID:v268 error:&__dst];
  v207 = __dst;

  v208 = OBJC_IVAR___MSCMSAuthEnvelopedData_contentType;
  swift_beginAccess();
  v209 = *(v19 + v208);
  *(v19 + v208) = v206;
  v210 = v206;

  if ([v210 isEqualToString_])
  {

    sub_258CA82B8(v243, v241);
    v211 = (v19 + OBJC_IVAR___MSCMSAuthEnvelopedData_dataContent);
    swift_beginAccess();
    v212 = *v211;
    v213 = v211[1];
    *v211 = v228;
    v211[1] = v229;
    sub_258CA8728(v212, v213);
  }

  else
  {
    v214 = sub_258CBEA60();
    v267[0] = v207;
    v215 = decodeEmbeddedCMSContent(v210, v214, v245, v267);

    v216 = v267[0];
    if (!v215)
    {
      sub_258CAFE28();
      swift_allocError();
      *v220 = xmmword_258CC1D20;
      *(v220 + 16) = 48;
      swift_willThrow();

      sub_258CA82B8(v243, v241);
      sub_258CA82B8(v228, v229);

      goto LABEL_155;
    }

    sub_258CA82B8(v243, v241);
    sub_258CA82B8(v228, v229);

    v217 = OBJC_IVAR___MSCMSAuthEnvelopedData_embeddedContent;
    swift_beginAccess();
    v218 = v216;
    v219 = *(v19 + v217);
    *(v19 + v217) = v215;

    swift_unknownObjectRelease();
  }

  if (v231)
  {
  }

  if (v230)
  {
  }

  swift_dynamicCastClassUnconditional();
LABEL_6:
  v16 = *MEMORY[0x277D85DE8];
}