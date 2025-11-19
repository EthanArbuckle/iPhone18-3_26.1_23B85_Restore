@interface AppleIDVClient
+ (id)prepareUnboundACLForBinding:(__SecAccessControl *)a3 withConstraints:(id)a4;
+ (unsigned)appleIDVAuthorizePresentment:(id)a3 withLAContextData:(id)a4 onSESlot:(int64_t)a5 andPayloadDigest:(id)a6;
+ (unsigned)appleIDVAuthorizePresentment:(id)a3 withLAContextData:(id)a4 onSESlot:(int64_t)a5 andPublicKey:(id)a6;
+ (unsigned)appleIDVCredentialAuthenticationTokenStatus;
+ (unsigned)appleIDVEstablishPrearmTrustWithCertificate:(id)a3 protectedPublicKey:(id *)a4;
+ (unsigned)appleIDVGenerateNonceOnWatch:(id *)a3;
+ (unsigned)appleIDVGeneratePhoneTokenWithNonce:(id)a3 withReferenceACLBlob:(id)a4 keyBlob:(id)a5 keyAttestation:(id)a6 casdCertificate:(id)a7 phoneToken:(id *)a8;
+ (unsigned)appleIDVGeneratePrearmTrustKeyForWatchAndCopyPrivateKey:(id)a3 progenitorPublicKey:(id)a4 encryptedPrivateKey:(id *)a5 attestation:(id *)a6 publicKey:(id *)a7 keyBlob:(id *)a8;
+ (unsigned)appleIDVGetPrearmTrustKeyFromExistingKeyBlob:(id)a3 nonce:(id)a4 progenitorPublicKey:(id)a5 encryptedPrivateKey:(id *)a6 attestation:(id *)a7 publicKey:(id *)a8 keyBlob:(id *)a9;
+ (unsigned)appleIDVGetStatus:(int64_t *)a3 andSIDVVersion:(id *)a4 andAppleIDVVersion:(id *)a5;
+ (unsigned)appleIDVGetStatus:(int64_t *)a3 andVersion:(id *)a4;
+ (unsigned)appleIDVPersistACLBlob:(id)a3 intoBlob:(id *)a4 returnBioUUIDs:(id *)a5 andRequireDoublePress:(unsigned __int8)a6;
+ (unsigned)appleIDVPersistModifiedACLBlob:(id)a3 withReferenceACLBlob:(id)a4 withLAContextData:(id)a5 intoBlob:(id *)a6 returnBioUUIDs:(id *)a7;
+ (unsigned)appleIDVPersistModifiedSESlot:(int64_t)a3 withReferenceBlob:(id)a4 withLAContextData:(id)a5 intoBlob:(id *)a6;
+ (unsigned)appleIDVRecoverPersistedACLBlob:(id)a3 intoBlob:(id *)a4;
+ (unsigned)appleIDVRevokeCredentialAuthorizationToken;
+ (unsigned)appleIDVUpdatePrearmTrustKeyForWatch:(id)a3 progenitorPublicKey:(id)a4 encryptedPrivateKey:(id *)a5 attestation:(id *)a6 publicKey:(id *)a7 keyBlob:(id *)a8;
+ (unsigned)getUUIDsFromACL:(id)a3 intoArray:(id *)a4;
+ (unsigned)prepareACL:(id *)a3 aclType:(unsigned int)a4 forAclUsage:(unsigned int)a5 forBioUUID:(id)a6;
+ (unsigned)prepareACLForPhoneDecryption:(id *)a3 withSubType:(unsigned int)a4 forBioUUID:(id)a5;
+ (unsigned)prepareACLForWatchDecryption:(id *)a3 withSubType:(unsigned int)a4 forAclUsage:(unsigned int)a5;
+ (unsigned)prepareUnboundACLForBioBinding:(id *)a3;
+ (unsigned)prepareUnboundACLForPasscodeBinding:(id *)a3;
+ (unsigned)prepareUnboundACLForWatch:(id *)a3 withAccessibilityEnabled:(BOOL)a4;
+ (unsigned)removeDoublePressOnACL:(id)a3 intoACL:(id *)a4;
+ (unsigned)requireDoublePressOnACL:(id)a3 intoACL:(id *)a4;
+ (void)appleIDVCredentialAuthenticationTokenStatus;
+ (void)appleIDVRevokeCredentialAuthorizationToken;
@end

@implementation AppleIDVClient

+ (unsigned)getUUIDsFromACL:(id)a3 intoArray:(id *)a4
{
  v5 = a3;
  v24 = 0;
  v6 = objc_opt_new();
  if (a4)
  {
    v7 = SecAccessControlCreateFromData();
    if (v7)
    {
      v8 = v7;
      v9 = SecAccessControlGetConstraints();
      v10 = [v9 objectForKey:@"osgn"];
      v11 = [v10 objectForKey:@"cbio"];

      if (v11)
      {
        v12 = [v9 objectForKeyedSubscript:@"osgn"];
        v13 = [v12 objectForKeyedSubscript:@"cbio"];
        v14 = [v13 objectForKeyedSubscript:@"pbiou"];

        if (v14)
        {
          v15 = [v14 bytes];
          if ([v14 length])
          {
            v16 = 0;
            do
            {
              v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v15];
              [v6 addObject:v17];

              v16 += 16;
              v15 += 16;
            }

            while ([v14 length] > v16);
          }

          v18 = v6;

          v19 = 0;
          goto LABEL_15;
        }

        v19 = 14;
      }

      else
      {
        v19 = 0;
      }

      v22 = v6;
LABEL_15:
      *a4 = v6;
      CFRelease(v8);

      goto LABEL_16;
    }

    v20 = APPLEIDV_LOG_CLIENT();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [AppleIDVClient getUUIDsFromACL:v5 intoArray:&v24];
    }

    v19 = 13;
  }

  else
  {
    v19 = 5;
  }

  v21 = v6;
  *a4 = v6;
LABEL_16:

  return v19;
}

+ (unsigned)prepareACL:(id *)a3 aclType:(unsigned int)a4 forAclUsage:(unsigned int)a5 forBioUUID:(id)a6
{
  v7 = *&a4;
  v9 = a6;
  v10 = v9;
  if (a5 == 2)
  {
    if ((v7 - 2) >= 2)
    {
      if (v7 != 1 && (v7 || !v9))
      {
        goto LABEL_17;
      }

      v13 = a3;
      v14 = v7;
      v15 = v9;
      goto LABEL_16;
    }

    v18 = a3;
    v19 = v7;
    v20 = 2;
LABEL_23:
    v12 = [AppleIDVClient prepareACLForWatchDecryption:v18 withSubType:v19 forAclUsage:v20];
    goto LABEL_27;
  }

  if (a5 == 1)
  {
    if ((v7 - 2) >= 2)
    {
      if (v7 > 1)
      {
        goto LABEL_17;
      }

      v13 = a3;
      v14 = v7;
      v15 = 0;
LABEL_16:
      v12 = [AppleIDVClient prepareACLForPhoneDecryption:v13 withSubType:v14 forBioUUID:v15];
      goto LABEL_27;
    }

    v18 = a3;
    v19 = v7;
    v20 = 1;
    goto LABEL_23;
  }

  if (a5)
  {
LABEL_17:
    v11 = 1;
    goto LABEL_28;
  }

  v11 = 1;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v16 = a3;
      v17 = 0;
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_28;
      }

      v16 = a3;
      v17 = 1;
    }

    v12 = [AppleIDVClient prepareUnboundACLForWatch:v16 withAccessibilityEnabled:v17];
    goto LABEL_27;
  }

  if (!v7)
  {
    v12 = [AppleIDVClient prepareUnboundACLForBioBinding:a3];
    goto LABEL_27;
  }

  if (v7 == 1)
  {
    v12 = [AppleIDVClient prepareUnboundACLForPasscodeBinding:a3];
LABEL_27:
    v11 = v12;
  }

LABEL_28:

  return v11;
}

+ (unsigned)prepareACLForPhoneDecryption:(id *)a3 withSubType:(unsigned int)a4 forBioUUID:(id)a5
{
  v7 = a5;
  error = 0;
  if (a4)
  {
    v8 = 16;
  }

  else
  {
    v8 = 2;
  }

  v9 = SecAccessControlCreateWithFlags(*MEMORY[0x277CBECE8], *MEMORY[0x277CDBEE8], v8, &error);
  if (v9)
  {
    v10 = v9;
    v11 = SecAccessControlGetConstraints();
    if (!v11)
    {
      v12 = APPLEIDV_LOG_CLIENT();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[AppleIDVClient prepareACLForPhoneDecryption:withSubType:forBioUUID:];
      }

      v20 = 15;
      goto LABEL_27;
    }

    v12 = v11;
    if (v7)
    {
      v13 = [v11 objectForKeyedSubscript:@"od"];
      v14 = [v13 mutableCopy];

      if (!v14)
      {
        v26 = APPLEIDV_LOG_CLIENT();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          +[AppleIDVClient prepareACLForPhoneDecryption:withSubType:forBioUUID:];
        }

        v20 = 17;
        goto LABEL_27;
      }

      v15 = [v12 objectForKeyedSubscript:@"od"];
      v16 = [v15 objectForKeyedSubscript:@"cbio"];

      if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v25 = APPLEIDV_LOG_CLIENT();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          +[AppleIDVClient prepareACLForPhoneDecryption:withSubType:forBioUUID:];
        }

        v20 = 18;
        goto LABEL_27;
      }

      [v16 setObject:v7 forKey:@"pbiou"];
      [v14 setObject:v16 forKey:@"cbio"];
      v17 = [v12 mutableCopy];
      [v17 setObject:v14 forKey:@"od"];
      v18 = v17;

      v12 = v18;
    }

    else
    {
      v16 = 0;
      v14 = 0;
      v18 = 0;
    }

    v21 = v12;
    v22 = [v12 mutableCopy];

    v23 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v22 setObject:v23 forKey:@"ock"];

    v12 = v22;
    v24 = APPLEIDV_LOG_CLIENT();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      +[AppleIDVClient prepareACLForPhoneDecryption:withSubType:forBioUUID:];
    }

    SecAccessControlSetConstraints();
    *a3 = SecAccessControlCopyData();

    v20 = 0;
LABEL_27:

    CFRelease(v10);
    goto LABEL_28;
  }

  v19 = APPLEIDV_LOG_CLIENT();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    +[AppleIDVClient prepareACLForPhoneDecryption:withSubType:forBioUUID:];
  }

  v20 = 13;
LABEL_28:

  return v20;
}

+ (unsigned)prepareACLForWatchDecryption:(id *)a3 withSubType:(unsigned int)a4 forAclUsage:(unsigned int)a5
{
  v8 = SecAccessControlCreate();
  if (v8)
  {
    v9 = v8;
    if (SecAccessControlSetProtection())
    {
      if (a4 == 2 && a5 == 1 || a4 == 3 && a5 == 1 || a4 == 2 && a5 == 2 || a4 == 3 && a5 == 2)
      {
        v13 = APPLEIDV_LOG_CLIENT();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          +[AppleIDVClient prepareACLForWatchDecryption:withSubType:forAclUsage:];
        }

        SecAccessControlSetConstraints();
        v11 = 0;
        *a3 = SecAccessControlCopyData();
        goto LABEL_21;
      }

      v12 = APPLEIDV_LOG_CLIENT();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[AppleIDVClient prepareACLForWatchDecryption:withSubType:forAclUsage:];
      }
    }

    else
    {
      v12 = APPLEIDV_LOG_CLIENT();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[AppleIDVClient prepareACLForWatchDecryption:withSubType:forAclUsage:];
      }
    }

    v11 = 13;
LABEL_21:
    CFRelease(v9);
    return v11;
  }

  v10 = APPLEIDV_LOG_CLIENT();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    +[AppleIDVClient prepareACLForWatchDecryption:withSubType:forAclUsage:];
  }

  return 13;
}

+ (unsigned)prepareUnboundACLForBioBinding:(id *)a3
{
  v29 = *MEMORY[0x277D85DE8];
  error = 0;
  v27 = 0;
  v28 = 0;
  v5 = objc_opt_new();
  v6 = SecAccessControlCreateWithFlags(*MEMORY[0x277CBECE8], *MEMORY[0x277CDBEE8], 2uLL, &error);
  if (v6)
  {
    v7 = v6;
    v8 = SecAccessControlGetConstraints();
    if (v8)
    {
      v9 = v8;
      v25 = 0;
      v10 = [v5 evaluateAccessControl:v7 operation:0 options:0 error:&v25];
      v11 = v25;

      if (v10)
      {
        v12 = SecAccessControlGetConstraints();

        v13 = [v12 objectForKeyedSubscript:@"od"];
        v14 = [v13 mutableCopy];

        if (v14)
        {
          v15 = [v12 objectForKeyedSubscript:@"od"];
          v16 = [v15 objectForKeyedSubscript:@"cbio"];

          if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v27 = -1;
            v28 = -1;
            v17 = [MEMORY[0x277CBEA90] dataWithBytes:&v27 length:16];
            [v16 setObject:v17 forKey:@"pbiou"];

            [v14 setObject:v16 forKey:@"cbio"];
            v18 = [v12 mutableCopy];
            [v18 setObject:v14 forKey:@"od"];
            SecAccessControlSetConstraints();
            *a3 = [a1 prepareUnboundACLForBinding:v7 withConstraints:v18];

            v19 = 0;
          }

          else
          {
            v22 = APPLEIDV_LOG_CLIENT();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              +[AppleIDVClient prepareUnboundACLForBioBinding:];
            }

            v19 = 18;
          }
        }

        else
        {
          v23 = APPLEIDV_LOG_CLIENT();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            +[AppleIDVClient prepareUnboundACLForBioBinding:];
          }

          v19 = 17;
        }
      }

      else
      {
        v21 = APPLEIDV_LOG_CLIENT();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          +[AppleIDVClient prepareUnboundACLForBioBinding:];
        }

        v19 = 16;
      }
    }

    else
    {
      v11 = APPLEIDV_LOG_CLIENT();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[AppleIDVClient prepareUnboundACLForBioBinding:];
      }

      v19 = 15;
    }

    CFRelease(v7);
  }

  else
  {
    v20 = APPLEIDV_LOG_CLIENT();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[AppleIDVClient prepareUnboundACLForBioBinding:];
    }

    v19 = 13;
  }

  return v19;
}

+ (unsigned)prepareUnboundACLForPasscodeBinding:(id *)a3
{
  error = 0;
  v5 = objc_opt_new();
  v6 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0x10uLL, &error);
  if (v6)
  {
    v7 = v6;
    v8 = SecAccessControlGetConstraints();
    if (v8)
    {
      v9 = v8;
      v23 = 0;
      v10 = [v5 evaluateAccessControl:v7 operation:0 options:0 error:&v23];
      v11 = v23;

      if (v10)
      {
        v12 = SecAccessControlGetConstraints();

        v13 = [v12 objectForKeyedSubscript:@"od"];
        v14 = [v13 mutableCopy];

        if (v14)
        {
          v15 = [v12 objectForKeyedSubscript:@"od"];
          v16 = [v15 objectForKeyedSubscript:@"cup"];

          if (v16)
          {
            *a3 = [a1 prepareUnboundACLForBinding:v7 withConstraints:v12];

            v17 = 0;
          }

          else
          {
            v21 = APPLEIDV_LOG_CLIENT();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              +[AppleIDVClient prepareUnboundACLForPasscodeBinding:];
            }

            v17 = 19;
          }
        }

        else
        {
          v20 = APPLEIDV_LOG_CLIENT();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            +[AppleIDVClient prepareUnboundACLForPasscodeBinding:];
          }

          v17 = 17;
        }
      }

      else
      {
        v19 = APPLEIDV_LOG_CLIENT();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          +[AppleIDVClient prepareUnboundACLForPasscodeBinding:];
        }

        v17 = 16;
      }
    }

    else
    {
      v11 = APPLEIDV_LOG_CLIENT();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[AppleIDVClient prepareUnboundACLForPasscodeBinding:];
      }

      v17 = 15;
    }

    CFRelease(v7);
  }

  else
  {
    v18 = APPLEIDV_LOG_CLIENT();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[AppleIDVClient prepareUnboundACLForPasscodeBinding:];
    }

    v17 = 13;
  }

  return v17;
}

+ (id)prepareUnboundACLForBinding:(__SecAccessControl *)a3 withConstraints:(id)a4
{
  v4 = a4;
  v5 = [v4 mutableCopy];
  v6 = [v4 objectForKeyedSubscript:@"od"];

  v7 = [v6 mutableCopy];
  [v5 setObject:v7 forKey:@"osgn"];
  [v5 removeObjectForKey:@"od"];
  [v5 removeObjectForKey:@"oe"];
  [v5 removeObjectForKey:@"odel"];
  SecAccessControlSetConstraints();
  v8 = SecAccessControlCopyData();

  return v8;
}

+ (unsigned)appleIDVRevokeCredentialAuthorizationToken
{
  v2 = DIV_LOG_KEXT();
  v3 = os_signpost_id_generate(v2);

  v4 = DIV_LOG_KEXT();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2259A7000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "appleIDV.revokeCredential", "enableTelemetry=YES", buf, 2u);
  }

  v15 = 0;
  v6 = GenericAppleIDVCall(9u, 0, 0, &v16, &v15);
  v7 = APPLEIDV_LOG_CLIENT();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[(AppleIDVClient *)v6];
  }

  if (v6 == -536870208)
  {
    v8 = 11;
  }

  else
  {
    v8 = v6;
  }

  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = DIV_LOG_KEXT();
  v11 = v10;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_2259A7000, v11, OS_SIGNPOST_INTERVAL_END, v3, "appleIDV.revokeCredential", "", v13, 2u);
  }

  return v9;
}

+ (unsigned)appleIDVCredentialAuthenticationTokenStatus
{
  error = 0;
  v2 = objc_opt_new();
  v3 = SecAccessControlCreateWithFlags(*MEMORY[0x277CBECE8], *MEMORY[0x277CDBEE8], 0x40000000uLL, &error);
  if (v3)
  {
    v4 = v3;
    SecAccessControlSetConstraints();
    v10 = 0;
    v5 = [v2 evaluateAccessControl:v4 operation:3 options:0 error:&v10];
    v6 = v10;

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v8 = APPLEIDV_LOG_CLIENT();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[AppleIDVClient appleIDVCredentialAuthenticationTokenStatus];
      }

      v7 = 21;
    }

    CFRelease(v4);
  }

  else
  {
    v6 = APPLEIDV_LOG_CLIENT();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[AppleIDVClient appleIDVCredentialAuthenticationTokenStatus];
    }

    v7 = 13;
  }

  return v7;
}

+ (unsigned)requireDoublePressOnACL:(id)a3 intoACL:(id *)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = OUTLINED_FUNCTION_62();
    if (v7)
    {
      v8 = v7;
      v9 = SecAccessControlGetConstraints();
      v10 = [v9 mutableCopy];
      v11 = [v9 objectForKeyedSubscript:@"osgn"];
      v12 = [v11 mutableCopy];

      [v12 setObject:MEMORY[0x277CBEC38] forKey:@"cbtn"];
      if (v12)
      {
        [v10 setObject:v12 forKey:@"od"];
      }

      *a4 = [a1 prepareUnboundACLForBinding:v8 withConstraints:v10];
      CFRelease(v8);

      v13 = 0;
    }

    else
    {
      v9 = APPLEIDV_LOG_CLIENT();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_13();
        OUTLINED_FUNCTION_60(&dword_2259A7000, v15, v16, "%s:%d, failed to create ACL from input %@, error: (%@)", v17, v18, v19, v20, v21, 0, 2u);
      }

      v13 = 13;
    }
  }

  else
  {
    v13 = 5;
  }

  return v13;
}

+ (unsigned)removeDoublePressOnACL:(id)a3 intoACL:(id *)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = OUTLINED_FUNCTION_62();
    if (v7)
    {
      v8 = v7;
      v9 = SecAccessControlGetConstraints();
      v10 = [v9 mutableCopy];
      v11 = [v9 objectForKeyedSubscript:@"osgn"];
      v12 = [v11 mutableCopy];

      [v12 removeObjectForKey:@"cbtn"];
      if (v12)
      {
        [v10 setObject:v12 forKey:@"od"];
      }

      *a4 = [a1 prepareUnboundACLForBinding:v8 withConstraints:v10];
      CFRelease(v8);

      v13 = 0;
    }

    else
    {
      v9 = APPLEIDV_LOG_CLIENT();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_13();
        OUTLINED_FUNCTION_60(&dword_2259A7000, v15, v16, "%s:%d, failed to create ACL from input %@, error: (%@)", v17, v18, v19, v20, v21, 0, 2u);
      }

      v13 = 13;
    }
  }

  else
  {
    v13 = 5;
  }

  return v13;
}

+ (unsigned)appleIDVGetStatus:(int64_t *)a3 andVersion:(id *)a4
{
  if (a4)
  {
    v11 = 0;
    v12 = 0;
    v5 = [AppleIDVClient appleIDVGetStatus:a3 andSIDVVersion:&v12 andAppleIDVVersion:&v11];
    v6 = v12;
    v7 = v11;
    if (!v5)
    {
      v8 = [MEMORY[0x277CBEB28] dataWithCapacity:{objc_msgSend(v6, "length") + objc_msgSend(v7, "length") + 3}];
      [v8 appendData:v6];
      v9 = [@" - " dataUsingEncoding:4];
      [v8 appendData:v9];

      [v8 appendData:v7];
      *a4 = [MEMORY[0x277CBEA90] dataWithData:v8];

      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v5 = 5;
  }

  return v5;
}

+ (unsigned)appleIDVGetStatus:(int64_t *)a3 andSIDVVersion:(id *)a4 andAppleIDVVersion:(id *)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v9 = DIV_LOG_KEXT();
  v10 = os_signpost_id_generate(v9);

  v11 = DIV_LOG_KEXT();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v41 = 0;
    OUTLINED_FUNCTION_66(&dword_2259A7000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "appleIDV.getStatus", "enableTelemetry=YES", v41);
  }

  v14 = 5;
  if (a3 && a4 && a5)
  {
    v40 = 256;
    OUTLINED_FUNCTION_0();
    v16 = malloc_type_malloc(0x100uLL, v15);
    if (v16)
    {
      v17 = v16;
      v18 = GenericAppleIDVCall(0, 0, 0, v16, &v40);
      v19 = APPLEIDV_LOG_CLIENT();
      if (OUTLINED_FUNCTION_37(v19))
      {
        *v41 = 67109632;
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_21();
        _os_log_debug_impl(v34, v35, v36, v37, v38, 0x18u);
      }

      if (!v18)
      {
        if (v40 < 4 || (v20 = *v17, v20 + 1 >= v40) || v20 + 2 >= v40 || (v20 + 6 < v40 ? (v21 = v17[v20 + 1] - 4 + v20 + 6 > v40) : (v21 = 1), v21))
        {
          v18 = 5;
        }

        else
        {
          *a3 = *&v17[v20 + 2];
          *a4 = [MEMORY[0x277CBEA90] dataWithBytes:&v17[v20 + 6] length:?];
          [MEMORY[0x277CBEA90] dataWithBytes:v17 + 1 length:v20];
          *a5 = v18 = 0;
        }
      }

      free(v17);
    }

    else
    {
      v18 = 9;
    }

    v22 = APPLEIDV_LOG_CLIENT();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *v41 = 67109632;
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_25(&dword_2259A7000, v22, v33, "[line %d] kret = %d 0x%lx", v41);
    }

    if (v18)
    {
      OUTLINED_FUNCTION_12();
      if (v18 == v39)
      {
        v14 = 11;
      }

      else
      {
        v14 = v18;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  v23 = DIV_LOG_KEXT();
  v24 = v23;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *v41 = 0;
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_66(v25, v26, v27, v28, v29, v30, v31);
  }

  return v14;
}

+ (unsigned)appleIDVAuthorizePresentment:(id)a3 withLAContextData:(id)a4 onSESlot:(int64_t)a5 andPayloadDigest:(id)a6
{
  v61 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  *&v13 = OUTLINED_FUNCTION_35();
  *v49 = v13;
  v50 = v13;
  v14 = DIV_LOG_KEXT();
  v15 = os_signpost_id_generate(v14);

  v16 = DIV_LOG_KEXT();
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    OUTLINED_FUNCTION_47(&dword_2259A7000, v18, v19, v20, "appleIDV.authorizePresentment", "enableTelemetry=YES", v21, v22, v49[0], v49[1], v50, *(&v50 + 1), v51, v52, v53, v54, v55, v56, v57, v58, 0);
  }

  if (v10)
  {
    v23 = v10;
    v53 = 0;
    v54 = 0;
    v49[1] = [v23 length];
    v24 = APPLEIDV_LOG_CLIENT();
    if (OUTLINED_FUNCTION_37(v24))
    {
      *buf = 138412290;
      v60 = v23;
      OUTLINED_FUNCTION_21();
      _os_log_debug_impl(v37, v38, v39, v40, v41, 0xCu);
    }

    *(&v50 + 1) = [v11 bytes];
    v51 = [v11 length];
    if (v51 >> 31)
    {
      v26 = 10;
    }

    else
    {
      v52 = a5;
      v25 = buildMetadataBuffer(v49, v12, 1);
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = AuthorizePresentmentFromAppleIDV(v49);
        v27 = APPLEIDV_LOG_CLIENT();
        if (OUTLINED_FUNCTION_46(v27))
        {
          *buf = 67109632;
          OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_19();
          _os_log_debug_impl(v42, v43, v44, v45, v46, 0x18u);
        }

        if (v26)
        {
          OUTLINED_FUNCTION_5();
          if (v48)
          {
            v26 = v47;
          }
        }
      }
    }
  }

  else
  {
    v26 = 5;
  }

  v28 = DIV_LOG_KEXT();
  v29 = v28;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    OUTLINED_FUNCTION_19();
    _os_signpost_emit_with_name_impl(v30, v31, v32, v15, v33, v34, v35, 2u);
  }

  if (v53)
  {
    free(v53);
  }

  return v26;
}

+ (unsigned)appleIDVAuthorizePresentment:(id)a3 withLAContextData:(id)a4 onSESlot:(int64_t)a5 andPublicKey:(id)a6
{
  v62 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  *&v13 = OUTLINED_FUNCTION_35();
  *v50 = v13;
  v51 = v13;
  v14 = DIV_LOG_KEXT();
  v15 = os_signpost_id_generate(v14);

  v16 = DIV_LOG_KEXT();
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    OUTLINED_FUNCTION_47(&dword_2259A7000, v18, v19, v20, "appleIDV.authorizePresentment", "enableTelemetry=YES", v21, v22, v50[0], v50[1], v51, *(&v51 + 1), v52, v53, v54, v55, v56, v57, v58, v59, 0);
  }

  if (v10)
  {
    v23 = v10;
    v54 = 0;
    v55 = 0;
    v50[1] = [v23 length];
    v24 = APPLEIDV_LOG_CLIENT();
    if (OUTLINED_FUNCTION_37(v24))
    {
      *buf = 138412290;
      v61 = v23;
      OUTLINED_FUNCTION_21();
      _os_log_debug_impl(v38, v39, v40, v41, v42, 0xCu);
    }

    *(&v51 + 1) = [v11 bytes];
    v52 = [v11 length];
    if (v52 >> 31)
    {
      v28 = 10;
    }

    else
    {
      v25 = buildMetadataBuffer(v50, v12, 2);
      if (v25)
      {
        v28 = v25;
      }

      else
      {
        v53 = a5;
        v26 = AuthorizePresentmentFromAppleIDV(v50);
        v27 = APPLEIDV_LOG_CLIENT();
        if (OUTLINED_FUNCTION_46(v27))
        {
          *buf = 67109632;
          OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_19();
          _os_log_debug_impl(v43, v44, v45, v46, v47, 0x18u);
        }

        if (v26)
        {
          OUTLINED_FUNCTION_5();
          if (v49)
          {
            v28 = v48;
          }

          else
          {
            v28 = v26;
          }
        }

        else
        {
          v28 = 0;
        }
      }
    }
  }

  else
  {
    v28 = 5;
  }

  v29 = DIV_LOG_KEXT();
  v30 = v29;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    *buf = 0;
    OUTLINED_FUNCTION_32();
    _os_signpost_emit_with_name_impl(v31, v32, v33, v15, v34, v35, v36, 2u);
  }

  if (v54)
  {
    free(v54);
  }

  return v28;
}

+ (unsigned)appleIDVPersistACLBlob:(id)a3 intoBlob:(id *)a4 returnBioUUIDs:(id *)a5 andRequireDoublePress:(unsigned __int8)a6
{
  v6 = a6;
  v140 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v130 = 0;
  v10 = DIV_LOG_KEXT();
  v11 = os_signpost_id_generate(v10);

  v12 = DIV_LOG_KEXT();
  v13 = v12;
  v14 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    OUTLINED_FUNCTION_43();
    _os_signpost_emit_with_name_impl(v15, v16, v17, v11, v18, v19, v20, 2u);
  }

  spid = v11;

  v21 = 0;
  v22 = 5;
  v23 = 0;
  if (v9 && a4)
  {
    v23 = [MEMORY[0x277CBEB28] dataWithLength:0x4000];
    v130 = [v23 length];
    v24 = [AppleIDVClient getUUIDsFromACL:v9 intoArray:a5];
    if (v24)
    {
      v22 = v24;
      v21 = 0;
      goto LABEL_37;
    }

    v129 = 0;
    *&v25 = OUTLINED_FUNCTION_35();
    v120 = v25;
    if (v6)
    {
      v119 = 0;
      v22 = [AppleIDVClient requireDoublePressOnACL:v9 intoACL:&v119, spid];
      v21 = v119;
      if (v22)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v21 = v9;
    }

    *&v120 = [v21 bytes];
    *(&v120 + 1) = [v21 length];
    v26 = extractACLForSCRD(v120, *(&v120 + 1), &v121, &v122);
    if (v26 || (v123 = [v9 bytes], v124 = objc_msgSend(v9, "length"), (v26 = extractACLForSCRD(v123, v124, &v125, &v126)) != 0))
    {
      v22 = v26;
      goto LABEL_37;
    }

    v128 = 0;
    v129 = 0;
    v127 = 255;
    v27 = [v23 mutableBytes];
    v132 = 0;
    if (v120)
    {
      OUTLINED_FUNCTION_33();
      if (!v29 & v28)
      {
        goto LABEL_45;
      }

      if (v123)
      {
        OUTLINED_FUNCTION_33();
        if (!(!v29 & v28))
        {
          a5 = 4096;
          OUTLINED_FUNCTION_0();
          v6 = malloc_type_malloc(0x1000uLL, v30);
          if (v6)
          {
            a5 = 4096;
            v131 = 4096;
            OUTLINED_FUNCTION_18();
            v35 = tlvEncodeWithCheck(v6, 32, v31, v32, v33, v34);
            if (v35)
            {
              v92 = v35;
            }

            else
            {
              OUTLINED_FUNCTION_52(v35, v36, v37, v38, v39, v40, v41, v42, spid, v119, v120, *(&v120 + 1), v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
              OUTLINED_FUNCTION_18();
              v47 = tlvEncodeWithCheck(v43, 33, v44, 8u, v45, v46);
              if (v47 || (OUTLINED_FUNCTION_52(v47, v48, v49, v50, v51, v52, v53, v54, spid, v119, v120, *(&v120 + 1), v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132), OUTLINED_FUNCTION_18(), LODWORD(v47) = tlvEncodeWithCheck(v55, 34, v56, 8u, v57, v58), v47) || (OUTLINED_FUNCTION_18(), v47 = tlvEncodeWithCheck(v59, 35, v60, v61, v62, v63), v47) || (OUTLINED_FUNCTION_52(v47, v64, v65, v66, v67, v68, v69, v70, spid, v119, v120, *(&v120 + 1), v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132), OUTLINED_FUNCTION_18(), v47 = tlvEncodeWithCheck(v71, 36, v72, 8u, v73, v74), v47) || (OUTLINED_FUNCTION_52(v47, v75, v76, v77, v78, v79, v80, v81, spid, v119, v120, *(&v120 + 1), v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132), OUTLINED_FUNCTION_18(), LODWORD(v47) = tlvEncodeWithCheck(v82, 37, v83, 8u, v84, v85), v47) || (OUTLINED_FUNCTION_18(), LODWORD(v47) = tlvEncodeWithCheck(v86, 31, v87, 8u, v88, v89), v47))
              {
                v92 = v47;
                a5 = 4096;
              }

              else
              {
                v90 = APPLEIDV_LOG_CLIENT();
                v91 = os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG);
                a5 = v132;
                if (v91)
                {
                  *buf = 136315906;
                  *v134 = "serializePersistACLBlobStruct";
                  *&v134[8] = 1024;
                  v135 = 319;
                  v136 = 2048;
                  v137 = 4096;
                  v138 = 2048;
                  v139 = v132;
                  _os_log_debug_impl(&dword_2259A7000, v90, OS_LOG_TYPE_DEBUG, "[%s:%d] allocated %zu and used %zu", buf, 0x26u);
                }

                v92 = 0;
              }
            }
          }

          else
          {
            v92 = 9;
          }

LABEL_26:
          v93 = APPLEIDV_LOG_CLIENT();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109376;
            *v134 = 823;
            *&v134[4] = 1024;
            *&v134[6] = v92;
            _os_log_debug_impl(&dword_2259A7000, v93, OS_LOG_TYPE_DEBUG, "[%d] err = %d", buf, 0xEu);
          }

          if (v92)
          {
            v22 = 5;
            if (!v6)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v22 = GenericAppleIDVCall(1u, v6, a5, v27, &v130);
            if (!v6)
            {
LABEL_31:
              v94 = APPLEIDV_LOG_CLIENT();
              if (OUTLINED_FUNCTION_37(v94))
              {
                *buf = 67109632;
                OUTLINED_FUNCTION_24();
                *&v134[6] = v22;
                OUTLINED_FUNCTION_23();
                OUTLINED_FUNCTION_21();
                _os_log_debug_impl(v107, v108, v109, v110, v111, 0x18u);
              }

              v95 = APPLEIDV_LOG_CLIENT();
              if (OUTLINED_FUNCTION_37(v95))
              {
                *buf = 67109632;
                OUTLINED_FUNCTION_24();
                *&v134[6] = v22;
                OUTLINED_FUNCTION_23();
                OUTLINED_FUNCTION_21();
                _os_log_debug_impl(v112, v113, v114, v115, v116, 0x18u);
              }

              if (v22)
              {
                OUTLINED_FUNCTION_12();
                if (v22 == v117)
                {
                  v22 = 11;
                }
              }

              else
              {
                v96 = MEMORY[0x277CBEA90];
                v97 = [v23 mutableBytes];
                [v96 dataWithBytes:v97 length:v130];
                *a4 = v22 = 0;
              }

              goto LABEL_37;
            }
          }

          free(v6);
          goto LABEL_31;
        }

LABEL_45:
        OUTLINED_FUNCTION_55();
        v92 = -75;
        goto LABEL_26;
      }
    }

    OUTLINED_FUNCTION_55();
    v92 = -6;
    goto LABEL_26;
  }

LABEL_37:
  v98 = DIV_LOG_KEXT();
  v99 = v98;
  if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v98))
  {
    *buf = 0;
    OUTLINED_FUNCTION_17();
    _os_signpost_emit_with_name_impl(v100, v101, v102, spid, v103, v104, v105, 2u);
  }

  return v22;
}

+ (unsigned)appleIDVRecoverPersistedACLBlob:(id)a3 intoBlob:(id *)a4
{
  OUTLINED_FUNCTION_58();
  v62 = v4;
  v63 = v5;
  v7 = v6;
  v61 = *MEMORY[0x277D85DE8];
  v9 = v8;
  v10 = DIV_LOG_KEXT();
  v11 = os_signpost_id_generate(v10);

  v12 = DIV_LOG_KEXT();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v60 = 0;
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_63(v14, v15, v16, v17, v18, v19, v20);
  }

  if (v9 && v7)
  {
    v21 = [MEMORY[0x277CBEB28] dataWithLength:0x4000];
    v22 = [v9 bytes];
    v23 = [v9 length];
    v24 = [v21 mutableBytes];
    v58 = v24;
    v59 = 0x4000;
    if (v24)
    {
      v25 = 5;
      if (v22 && v23 <= 0xFFFFFFFE)
      {
        v26 = v24;
        OUTLINED_FUNCTION_0();
        v28 = malloc_type_malloc(0x1000uLL, v27);
        if (v28)
        {
          v29 = v28;
          *v28 = 60;
          *(v28 + 1) = v23;
          v28[3] = BYTE2(v23);
          v28[4] = BYTE3(v23);
          __memcpy_chk();
          v25 = GenericAppleIDVCall(2u, v29, (v23 + 5), v26, &v59);
          free(v29);
        }

        else
        {
          v25 = 5;
        }
      }
    }

    else
    {
      v25 = 18;
    }

    v30 = APPLEIDV_LOG_CLIENT();
    if (OUTLINED_FUNCTION_46(v30))
    {
      *v60 = 67109632;
      *&v60[4] = 938;
      *&v60[8] = 1024;
      *&v60[10] = v25;
      *&v60[14] = 1024;
      *&v60[16] = v25;
      OUTLINED_FUNCTION_19();
      _os_log_debug_impl(v43, v44, v45, v46, v47, 0x14u);
    }

    v31 = APPLEIDV_LOG_CLIENT();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *v60 = 136315650;
      *&v60[4] = "+[AppleIDVClient appleIDVRecoverPersistedACLBlob:intoBlob:]";
      *&v60[12] = 1024;
      *&v60[14] = 2076;
      *&v60[18] = 1024;
      *&v60[20] = 2;
      OUTLINED_FUNCTION_19();
      _os_log_debug_impl(v48, v49, v50, v51, v52, 0x18u);
    }

    v32 = APPLEIDV_LOG_CLIENT();
    if (OUTLINED_FUNCTION_46(v32))
    {
      *v60 = 67109632;
      *&v60[4] = 2077;
      *&v60[8] = 1024;
      *&v60[10] = v25;
      *&v60[14] = 2048;
      *&v60[16] = v25;
      OUTLINED_FUNCTION_19();
      _os_log_debug_impl(v53, v54, v55, v56, v57, 0x18u);
    }

    if (v25)
    {
      OUTLINED_FUNCTION_5();
    }

    else
    {
      *v7 = [MEMORY[0x277CBEA90] dataWithBytes:v58 length:v59];
    }
  }

  v33 = DIV_LOG_KEXT();
  v34 = v33;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
  {
    *v60 = 0;
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_63(v35, v36, v37, v38, v39, v40, v41);
  }

  OUTLINED_FUNCTION_59();
  return result;
}

+ (unsigned)appleIDVPersistModifiedSESlot:(int64_t)a3 withReferenceBlob:(id)a4 withLAContextData:(id)a5 intoBlob:(id *)a6
{
  v76 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = DIV_LOG_KEXT();
  v12 = os_signpost_id_generate(v11);

  v13 = DIV_LOG_KEXT();
  v14 = v13;
  v15 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(v73) = 0;
    OUTLINED_FUNCTION_43();
    _os_signpost_emit_with_name_impl(v16, v17, v18, v12, v19, v20, v21, 2u);
  }

  v22 = 5;
  if (v9 && v10 && a6)
  {
    v67 = a6;
    v68 = v12 - 1;
    v23 = [MEMORY[0x277CBEB28] dataWithLength:0x4000];
    v24 = [v9 bytes];
    v69[1] = v24;
    v25 = [v9 length];
    v69[2] = v25;
    v26 = [v23 mutableBytes];
    v70 = v26;
    v71[0] = 0x4000;
    v27 = [v10 bytes];
    v71[1] = v27;
    v28 = [v10 length];
    v71[2] = v28;
    v69[0] = a3;
    if (!v26)
    {
      v38 = 18;
      v15 = v12 - 1;
LABEL_26:
      v39 = APPLEIDV_LOG_CLIENT();
      if (OUTLINED_FUNCTION_36(v39))
      {
        LODWORD(v73) = 67109632;
        OUTLINED_FUNCTION_24();
        v75 = v38;
        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_16();
        _os_log_debug_impl(v50, v51, v52, v53, v54, 0x18u);
      }

      v40 = APPLEIDV_LOG_CLIENT();
      if (OUTLINED_FUNCTION_36(v40))
      {
        LODWORD(v73) = 67109632;
        OUTLINED_FUNCTION_24();
        v75 = v38;
        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_16();
        _os_log_debug_impl(v55, v56, v57, v58, v59, 0x18u);
      }

      if (v38)
      {
        OUTLINED_FUNCTION_12();
        if (v38 == v65)
        {
          v22 = 11;
        }

        else
        {
          v22 = v38;
        }
      }

      else
      {
        [MEMORY[0x277CBEA90] dataWithBytes:v70 length:v71[0]];
        *v67 = v22 = 0;
      }

      goto LABEL_33;
    }

    v73 = 0;
    v66 = v12;
    if (v24)
    {
      if (!v25)
      {
        goto LABEL_38;
      }

      if (v27)
      {
        v29 = v28;
        OUTLINED_FUNCTION_26();
        if (!(!v31 & v30))
        {
          v12 = 4096;
          OUTLINED_FUNCTION_0();
          v33 = malloc_type_malloc(0x1000uLL, v32);
          a3 = v33;
          if (v33)
          {
            v12 = 4096;
            v72 = 4096;
            v34 = tlvEncodeWithCheck(v33, 21, v27, v29, &v72, &v73);
            if (!v34)
            {
              v35 = tlvEncodeWithCheck(a3 + v73, 70, v24, v25, &v72, &v73);
              if (v35)
              {
                v36 = v35;
                v12 = 4096;
              }

              else
              {
                v36 = tlvEncodeWithCheck(a3 + v73, 31, v69, 8u, &v72, &v73);
                if (v36)
                {
                  v12 = 4096;
                }

                else
                {
                  v12 = v73;
                }
              }

              v15 = v68;
              goto LABEL_19;
            }

            v36 = v34;
          }

          else
          {
            v36 = 9;
          }

LABEL_45:
          v15 = v68;
LABEL_19:
          v37 = APPLEIDV_LOG_CLIENT();
          if (OUTLINED_FUNCTION_36(v37))
          {
            v73 = 0x35904000200;
            v74 = 1024;
            v75 = v36;
            OUTLINED_FUNCTION_16();
            _os_log_debug_impl(v60, v61, v62, v63, v64, 0xEu);
          }

          if (v36)
          {
            v38 = 5;
          }

          else
          {
            v38 = GenericAppleIDVCall(0xBu, a3, v12, v26, v71);
          }

          v12 = v66;
          if (a3)
          {
            free(a3);
          }

          goto LABEL_26;
        }

LABEL_38:
        OUTLINED_FUNCTION_55();
        v36 = -75;
        goto LABEL_45;
      }
    }

    OUTLINED_FUNCTION_55();
    v36 = -6;
    goto LABEL_45;
  }

LABEL_33:
  v41 = DIV_LOG_KEXT();
  v42 = v41;
  if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    LOWORD(v73) = 0;
    OUTLINED_FUNCTION_17();
    _os_signpost_emit_with_name_impl(v43, v44, v45, v12, v46, v47, v48, 2u);
  }

  return v22;
}

+ (unsigned)appleIDVPersistModifiedACLBlob:(id)a3 withReferenceACLBlob:(id)a4 withLAContextData:(id)a5 intoBlob:(id *)a6 returnBioUUIDs:(id *)a7
{
  v86 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = DIV_LOG_KEXT();
  v15 = os_signpost_id_generate(v14);

  v16 = DIV_LOG_KEXT();
  v17 = v16;
  v18 = v15 - 1;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2259A7000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "appleIDV.persistModifiedACL", "enableTelemetry=YES", buf, 2u);
  }

  v19 = 0;
  v20 = 5;
  if (v11 && v12 && v13 && a6 && a7)
  {
    v19 = [MEMORY[0x277CBEB28] dataWithLength:0x4000];
    v21 = [AppleIDVClient getUUIDsFromACL:v11 intoArray:a7];
    if (v21 || (v79 = 0, v78 = 0u, v77 = 0u, v76 = 0u, v75 = 0u, v73 = [v11 bytes], v74 = objc_msgSend(v11, "length"), (v21 = extractACLForSCRD(v73, v74, &v75, &v75 + 1)) != 0))
    {
      v20 = v21;
      goto LABEL_34;
    }

    v72 = v15 - 1;
    *(&v76 + 1) = [v12 bytes];
    *&v77 = [v12 length];
    *(&v77 + 1) = [v19 mutableBytes];
    *&v78 = 0x4000;
    *(&v78 + 1) = [v13 bytes];
    v79 = [v13 length];
    v22 = *(&v77 + 1);
    v23 = 18;
    if (!*(&v77 + 1) || v78 < 0x4000)
    {
      goto LABEL_27;
    }

    v71 = v15;
    if (*(&v76 + 1))
    {
      OUTLINED_FUNCTION_33();
      if (!v25 & v24)
      {
        goto LABEL_40;
      }

      if (v73)
      {
        OUTLINED_FUNCTION_33();
        if (!v25 & v24)
        {
          goto LABEL_40;
        }

        if (*(&v78 + 1))
        {
          OUTLINED_FUNCTION_26();
          if (!(!v25 & v24))
          {
            v26 = 4096;
            OUTLINED_FUNCTION_0();
            v28 = malloc_type_malloc(0x1000uLL, v27);
            v29 = v28;
            if (v28)
            {
              *v28 = 20;
              *(v28 + 1) = v74;
              __memcpy_chk();
              v30 = (v74 + 5);
              v31 = &v29[v30];
              *v31 = 2112;
              v31[4] = 0;
              v32 = *(&v75 + 1);
              *(v31 + 5) = v75;
              *(v31 + 13) = 2113;
              v31[17] = 0;
              *(v31 + 18) = v32;
              v33 = v30 + 26;
              v34 = &v29[v30 + 26];
              v35 = v79;
              *v34 = 21;
              OUTLINED_FUNCTION_29(v34);
              *(v36 + 1) = v35;
              memcpy((v36 + 5), v37, v38);
              v39 = (v35 + 5) + v33;
              v40 = &v29[v39];
              v41 = v77;
              *v40 = 70;
              v40[1] = v41;
              OUTLINED_FUNCTION_29(&v29[v39]);
              memcpy((v42 + 5), v43, v44);
              v70 = 0;
              v26 = (v41 + 5) + v39;
              v45 = 1;
LABEL_21:
              v46 = APPLEIDV_LOG_CLIENT();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67109376;
                v81 = 893;
                v82 = 1024;
                v83 = v70;
                _os_log_debug_impl(&dword_2259A7000, v46, OS_LOG_TYPE_DEBUG, "[%d] err = %d", buf, 0xEu);
              }

              if (v45)
              {
                v23 = GenericAppleIDVCall(4u, v29, v26, v22, &v78);
              }

              else
              {
                v23 = 5;
              }

              v15 = v71;
              if (v29)
              {
                free(v29);
              }

LABEL_27:
              v47 = APPLEIDV_LOG_CLIENT();
              if (OUTLINED_FUNCTION_37(v47))
              {
                *buf = 67109632;
                v81 = 902;
                v82 = 1024;
                v83 = v23;
                v84 = 2048;
                v85 = v23;
                OUTLINED_FUNCTION_21();
                _os_log_debug_impl(v58, v59, v60, v61, v62, 0x18u);
              }

              v48 = APPLEIDV_LOG_CLIENT();
              if (OUTLINED_FUNCTION_37(v48))
              {
                *buf = 67109632;
                v81 = 2170;
                v82 = 1024;
                v83 = v23;
                v84 = 1024;
                LODWORD(v85) = v23;
                OUTLINED_FUNCTION_21();
                _os_log_debug_impl(v63, v64, v65, v66, v67, 0x14u);
              }

              if (v23)
              {
                OUTLINED_FUNCTION_10();
                if (v25)
                {
                  v20 = v69;
                }

                else
                {
                  v20 = v23;
                }
              }

              else
              {
                [MEMORY[0x277CBEA90] dataWithBytes:*(&v77 + 1) length:v78];
                *a6 = v20 = 0;
              }

              v18 = v72;
              goto LABEL_34;
            }

            v45 = 0;
            v68 = 9;
LABEL_46:
            v70 = v68;
            goto LABEL_21;
          }

LABEL_40:
          v29 = 0;
          v26 = 0;
          v45 = 0;
          v68 = -75;
          goto LABEL_46;
        }
      }
    }

    v29 = 0;
    v26 = 0;
    v45 = 0;
    v68 = -6;
    goto LABEL_46;
  }

LABEL_34:
  v49 = DIV_LOG_KEXT();
  v50 = v49;
  if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
  {
    *buf = 0;
    OUTLINED_FUNCTION_32();
    _os_signpost_emit_with_name_impl(v51, v52, v53, v15, v54, v55, v56, 2u);
  }

  return v20;
}

+ (unsigned)appleIDVGeneratePrearmTrustKeyForWatchAndCopyPrivateKey:(id)a3 progenitorPublicKey:(id)a4 encryptedPrivateKey:(id *)a5 attestation:(id *)a6 publicKey:(id *)a7 keyBlob:(id *)a8
{
  OUTLINED_FUNCTION_48();
  MEMORY[0x28223BE20](v13, v14);
  v92 = v15;
  OUTLINED_FUNCTION_50();
  v101 = *MEMORY[0x277D85DE8];
  v17 = v16;
  v18 = v8;
  OUTLINED_FUNCTION_56();
  v19 = DIV_LOG_KEXT();
  v20 = os_signpost_id_generate(v19);

  v21 = DIV_LOG_KEXT();
  v22 = v21;
  v23 = v20 - 1;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    LOWORD(v97) = 0;
    OUTLINED_FUNCTION_43();
    _os_signpost_emit_with_name_impl(v24, v25, v26, v20, v27, v28, v29, 2u);
  }

  spid = v20;
  if (v17)
  {
    if (v10)
    {
      if (v9)
      {
        v91 = v11;
        if (v11)
        {
          v30 = [v17 bytes];
          v31 = [v17 length];
          v32 = [v8 bytes];
          [v8 length];
          OUTLINED_FUNCTION_44();
          if (v30 && v31 <= 0xFFFFFFFE && (v12 = v33, OUTLINED_FUNCTION_0(), malloc_type_malloc(0x1000uLL, v34)))
          {
            OUTLINED_FUNCTION_41();
            v38 = tlvEncodeWithCheck(v35, 130, v30, v31, v36, v37);
            if (v38 || (v46 = OUTLINED_FUNCTION_57(v38, v39, v40, v41, v42, v43, v44, v45, v89, spid, v91, v92, v30, v31, v32, v93, v94, v95[0], v95[1], v96), tlvEncodeWithCheck(v46, 131, v32, v12, v47, v48)))
            {
              v50 = 5;
            }

            else
            {
              v49 = APPLEIDV_LOG_CLIENT();
              v31 = v96;
              if (OUTLINED_FUNCTION_37(v49))
              {
                OUTLINED_FUNCTION_15("serializeGeneratePrearmTrustKeyStruct", 4.8153e-34);
                OUTLINED_FUNCTION_9(477);
                *(v83 + 30) = v96;
                OUTLINED_FUNCTION_21();
                _os_log_debug_impl(v84, v85, v86, v87, v88, 0x26u);
              }

              v50 = GenericAppleIDVCall(6u, 5, v31, &v97, v95);
            }

            free(5);
          }

          else
          {
            v50 = 5;
          }

          v51 = APPLEIDV_LOG_CLIENT();
          if (OUTLINED_FUNCTION_36(v51))
          {
            v100 = 67109632;
            OUTLINED_FUNCTION_7(v50);
            OUTLINED_FUNCTION_16();
            _os_log_debug_impl(v73, v74, v75, v76, v77, 0x18u);
          }

          v52 = APPLEIDV_LOG_CLIENT();
          if (OUTLINED_FUNCTION_36(v52))
          {
            v100 = 67109632;
            OUTLINED_FUNCTION_8(2214);
            OUTLINED_FUNCTION_16();
            _os_log_debug_impl(v78, v79, v80, v81, v82, 0x14u);
          }

          if (v50)
          {
            OUTLINED_FUNCTION_10();
          }

          else
          {
            v53 = v97;
            v54 = v98;
            v55 = v99;
            v56 = v97 + v98;
            v57 = __CFADD__(v97, v98);
            v58 = __CFADD__(v99, v56);
            v59 = v99 + v56;
            v60 = v58;
            if (!v57 && (v60 & 1) == 0 && v59 <= 0xFF4)
            {
              *v92 = [OUTLINED_FUNCTION_45() dataWithBytes:? length:?];
              *v10 = [*(v12 + 2704) dataWithBytes:2 length:v53];
              v61 = v53 + 2;
              *v9 = [*(v12 + 2704) dataWithBytes:v61 length:v54];
              *v91 = [*(v12 + 2704) dataWithBytes:v61 + v54 length:v55];
            }
          }
        }
      }
    }
  }

  v62 = DIV_LOG_KEXT();
  v63 = v62;
  if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v62))
  {
    LOWORD(v100) = 0;
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_64(v64, v65, v66, v67, v68, v69, v70, v71, v89, spid);
  }

  OUTLINED_FUNCTION_49();
  return result;
}

+ (unsigned)appleIDVGetPrearmTrustKeyFromExistingKeyBlob:(id)a3 nonce:(id)a4 progenitorPublicKey:(id)a5 encryptedPrivateKey:(id *)a6 attestation:(id *)a7 publicKey:(id *)a8 keyBlob:(id *)a9
{
  OUTLINED_FUNCTION_48();
  MEMORY[0x28223BE20](v9, v10);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v106 = *MEMORY[0x277D85DE8];
  v22 = v21;
  v23 = v20;
  v24 = v18;
  v98 = 0u;
  v25 = DIV_LOG_KEXT();
  v26 = os_signpost_id_generate(v25);

  v27 = DIV_LOG_KEXT();
  v28 = v27;
  v29 = v26 - 1;
  if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    LOWORD(v101) = 0;
    OUTLINED_FUNCTION_39();
    _os_signpost_emit_with_name_impl(v30, v31, v32, v26, v33, v34, v35, 2u);
  }

  spid = v26;
  if (v22)
  {
    if (v23)
    {
      if (v16)
      {
        if (v14)
        {
          if (v12)
          {
            v96 = v16;
            v97 = v14;
            if (v107)
            {
              v94 = v12;
              v95 = v26 - 1;
              v36 = [v22 bytes];
              v37 = [v22 length];
              v38 = [v23 bytes];
              v39 = [v23 length];
              v40 = [v24 bytes];
              v41 = [v24 length];
              *&v98 = &v101;
              *(&v98 + 1) = 4096;
              v100 = 0;
              if (v36 && v37 <= 0xFFFFFFFE && v38 && v39 <= 0xFFFFFFFE && v40 && (v28 = v41, OUTLINED_FUNCTION_26(), v43 || !v42) && (OUTLINED_FUNCTION_0(), (v45 = malloc_type_malloc(0x1000uLL, v44)) != 0))
              {
                v46 = v45;
                v99 = 4096;
                OUTLINED_FUNCTION_18();
                if (tlvEncodeWithCheck(v47, 151, v36, v37, v48, v49) || (OUTLINED_FUNCTION_18(), tlvEncodeWithCheck(v50, 152, v38, v39, v51, v52)) || (OUTLINED_FUNCTION_18(), tlvEncodeWithCheck(v53, 153, v40, v28, v54, v55)))
                {
                  v57 = 5;
                }

                else
                {
                  v56 = APPLEIDV_LOG_CLIENT();
                  v28 = v100;
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                  {
                    OUTLINED_FUNCTION_15("serializeGetPrearmTrustKeyStruct", 4.8153e-34);
                    OUTLINED_FUNCTION_9(531);
                    *(v87 + 30) = v100;
                    OUTLINED_FUNCTION_32();
                    _os_log_debug_impl(v88, v89, v90, v91, v92, 0x26u);
                  }

                  v57 = GenericAppleIDVCall(0xDu, v46, v28, &v101, &v98 + 1);
                }

                v29 = v95;
                free(v46);
              }

              else
              {
                v57 = 5;
                v29 = v95;
              }

              v58 = APPLEIDV_LOG_CLIENT();
              if (OUTLINED_FUNCTION_38(v58))
              {
                v105 = 67109632;
                OUTLINED_FUNCTION_7(v57);
                OUTLINED_FUNCTION_17();
                _os_log_debug_impl(v77, v78, v79, v80, v81, 0x18u);
              }

              v59 = APPLEIDV_LOG_CLIENT();
              if (OUTLINED_FUNCTION_38(v59))
              {
                v105 = 67109632;
                OUTLINED_FUNCTION_8(2282);
                OUTLINED_FUNCTION_17();
                _os_log_debug_impl(v82, v83, v84, v85, v86, 0x14u);
              }

              if (v57)
              {
                OUTLINED_FUNCTION_10();
              }

              else
              {
                v61 = v101;
                v60 = v102;
                v62 = v103;
                v63 = v101 + v102;
                v64 = __CFADD__(v101, v102);
                v42 = __CFADD__(v103, v63);
                v65 = v103 + v63;
                v66 = v42;
                if (!v64 && (v66 & 1) == 0 && v65 <= 0xFF4)
                {
                  *v107 = [MEMORY[0x277CBEA90] dataWithBytes:v98 length:?];
                  *v96 = [MEMORY[0x277CBEA90] dataWithBytes:v104 length:v61];
                  v67 = &v104[v61];
                  *v97 = [MEMORY[0x277CBEA90] dataWithBytes:v67 length:v60];
                  *v94 = [MEMORY[0x277CBEA90] dataWithBytes:&v67[v60] length:v62];
                }
              }
            }
          }
        }
      }
    }
  }

  v68 = DIV_LOG_KEXT();
  v69 = v68;
  if (v29 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v68))
  {
    LOWORD(v105) = 0;
    OUTLINED_FUNCTION_17();
    _os_signpost_emit_with_name_impl(v70, v71, v72, spid, v73, v74, v75, 2u);
  }

  OUTLINED_FUNCTION_49();
  return result;
}

+ (unsigned)appleIDVUpdatePrearmTrustKeyForWatch:(id)a3 progenitorPublicKey:(id)a4 encryptedPrivateKey:(id *)a5 attestation:(id *)a6 publicKey:(id *)a7 keyBlob:(id *)a8
{
  OUTLINED_FUNCTION_48();
  MEMORY[0x28223BE20](v12, v13);
  v15 = v14;
  OUTLINED_FUNCTION_50();
  v100 = *MEMORY[0x277D85DE8];
  v17 = v16;
  v18 = v8;
  OUTLINED_FUNCTION_56();
  v19 = DIV_LOG_KEXT();
  v20 = os_signpost_id_generate(v19);

  v21 = DIV_LOG_KEXT();
  v22 = v21;
  v91 = v20 - 1;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    LOWORD(v96) = 0;
    OUTLINED_FUNCTION_43();
    _os_signpost_emit_with_name_impl(v23, v24, v25, v20, v26, v27, v28, 2u);
  }

  spid = v20;
  if (v17)
  {
    if (v10)
    {
      if (v9)
      {
        if (v11)
        {
          v90 = v11;
          if (v15)
          {
            v29 = [v17 bytes];
            v30 = [v17 length];
            v31 = [v8 bytes];
            [v8 length];
            OUTLINED_FUNCTION_44();
            if (v29 && v30 <= 0xFFFFFFFE && v31 && (v22 = v32, OUTLINED_FUNCTION_26(), v34 || !v33) && (OUTLINED_FUNCTION_0(), malloc_type_malloc(0x1000uLL, v35)))
            {
              OUTLINED_FUNCTION_41();
              v39 = tlvEncodeWithCheck(v36, 132, v29, v30, v37, v38);
              if (v39 || (v47 = OUTLINED_FUNCTION_57(v39, v40, v41, v42, v43, v44, v45, v46, v88, spid, v90, v91, v29, v30, v31, v92, v93, v94[0], v94[1], v95), tlvEncodeWithCheck(v47, 133, v31, v22, v48, v49)))
              {
                v51 = 5;
              }

              else
              {
                v50 = APPLEIDV_LOG_CLIENT();
                v22 = v95;
                if (OUTLINED_FUNCTION_38(v50))
                {
                  OUTLINED_FUNCTION_15("serializeUpdatePrearmTrustKeyStruct", 4.8153e-34);
                  OUTLINED_FUNCTION_9(567);
                  *(v82 + 30) = v95;
                  OUTLINED_FUNCTION_17();
                  _os_log_debug_impl(v83, v84, v85, v86, v87, 0x26u);
                }

                v51 = GenericAppleIDVCall(0xCu, 5, v22, &v96, v94);
              }

              free(5);
            }

            else
            {
              v51 = 5;
            }

            v52 = APPLEIDV_LOG_CLIENT();
            if (OUTLINED_FUNCTION_36(v52))
            {
              v99 = 67109632;
              OUTLINED_FUNCTION_7(v51);
              OUTLINED_FUNCTION_16();
              _os_log_debug_impl(v72, v73, v74, v75, v76, 0x18u);
            }

            v53 = APPLEIDV_LOG_CLIENT();
            if (OUTLINED_FUNCTION_36(v53))
            {
              v99 = 67109632;
              OUTLINED_FUNCTION_8(2345);
              OUTLINED_FUNCTION_16();
              _os_log_debug_impl(v77, v78, v79, v80, v81, 0x14u);
            }

            if (v51)
            {
              OUTLINED_FUNCTION_10();
            }

            else
            {
              v55 = v96;
              v54 = v97;
              v56 = v98;
              v57 = v96 + v97;
              v58 = __CFADD__(v96, v97);
              v33 = __CFADD__(v98, v57);
              v59 = v98 + v57;
              v60 = v33;
              if (!v58 && (v60 & 1) == 0 && v59 <= 0xFF4)
              {
                *v15 = [OUTLINED_FUNCTION_45() dataWithBytes:? length:?];
                *v10 = [v29[338] dataWithBytes:2 length:v55];
                *v9 = [v29[338] dataWithBytes:v55 + 2 length:v54];
                *v90 = [v29[338] dataWithBytes:v55 + 2 + v54 length:v56];
              }
            }
          }
        }
      }
    }
  }

  v61 = DIV_LOG_KEXT();
  v62 = v61;
  if (v91 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
  {
    LOWORD(v99) = 0;
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_64(v63, v64, v65, v66, v67, v68, v69, v70, v88, spid);
  }

  OUTLINED_FUNCTION_49();
  return result;
}

+ (unsigned)appleIDVGeneratePhoneTokenWithNonce:(id)a3 withReferenceACLBlob:(id)a4 keyBlob:(id)a5 keyAttestation:(id)a6 casdCertificate:(id)a7 phoneToken:(id *)a8
{
  OUTLINED_FUNCTION_48();
  MEMORY[0x28223BE20](v8, v9);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v111 = *MEMORY[0x277D85DE8];
  v21 = v20;
  v22 = v19;
  v23 = v17;
  v105 = v15;
  v24 = v13;
  v106 = 0u;
  v25 = DIV_LOG_KEXT();
  v26 = os_signpost_id_generate(v25);

  v27 = DIV_LOG_KEXT();
  v28 = v27;
  spid = v26;
  v29 = v26 - 1;
  if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *v108 = 0;
    OUTLINED_FUNCTION_64(&dword_2259A7000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v30, "appleIDV.generatePhoneToken", "enableTelemetry=YES", v108, v31, v92, v26);
  }

  if (v21 && v22 && v23 && v11 && (v105 == 0) == (v24 == 0))
  {
    v98 = v26 - 1;
    v99 = v11;
    v104 = v24;
    v97 = objc_opt_new();
    v32 = [v97 externalizedContext];
    *&v106 = v108;
    *(&v106 + 1) = 4096;
    v103 = [v32 bytes];
    v96 = v32;
    v33 = [v32 length];
    v34 = [v22 bytes];
    v101 = v22;
    v35 = [v22 length];
    v36 = [v21 bytes];
    v102 = v21;
    v37 = [v21 length];
    v38 = [v23 bytes];
    v39 = [v23 length];
    if (v105)
    {
      v95 = [v105 bytes];
      v40 = [v105 length];
    }

    else
    {
      v95 = 0;
      v40 = 0;
    }

    v100 = v23;
    if (v104)
    {
      v94 = [v104 bytes];
      v41 = [v104 length];
    }

    else
    {
      v94 = 0;
      v41 = 0;
    }

    v109 = 0;
    if (v36 && (!v34 ? (v42 = v35 == 0) : (v42 = 1), v42 && v103 && v38 && (v35 <= 0xFFFFFFFE ? (v43 = v37 > 0xFFFFFFFE) : (v43 = 1), !v43 ? (v44 = v33 > 0xFFFFFFFE) : (v44 = 1), !v44 ? (v45 = v39 > 0xFFFFFFFE) : (v45 = 1), !v45 ? (v46 = v40 > 0xFFFFFFFE) : (v46 = 1), !v46 ? (v47 = v41 > 0xFFFFFFFE) : (v47 = 1), !v47 && (OUTLINED_FUNCTION_0(), (v49 = malloc_type_malloc(0x1000uLL, v48)) != 0))))
    {
      v50 = v49;
      v107 = 4096;
      if (tlvEncodeWithCheck(v49, 100, v36, v37, &v107, &v109) || (v51 = OUTLINED_FUNCTION_6(), tlvEncodeWithCheck(v51, 101, v34, v35, v52, v53)) || (v54 = OUTLINED_FUNCTION_6(), tlvEncodeWithCheck(v54, 102, v103, v33, v55, v56)) || (v57 = OUTLINED_FUNCTION_6(), tlvEncodeWithCheck(v57, 103, v38, v39, v58, v59)) || (v60 = OUTLINED_FUNCTION_6(), tlvEncodeWithCheck(v60, 105, v95, v40, v61, v62)) || (v63 = OUTLINED_FUNCTION_6(), tlvEncodeWithCheck(v63, 106, v94, v41, v64, v65)))
      {
        v68 = 5;
      }

      else
      {
        v66 = v109;
        v67 = APPLEIDV_LOG_CLIENT();
        if (OUTLINED_FUNCTION_36(v67))
        {
          v109 = 0x2CC04000100;
          OUTLINED_FUNCTION_16();
          _os_log_debug_impl(v87, v88, v89, v90, v91, 8u);
        }

        v68 = GenericAppleIDVCall(5u, v50, v66, v108, &v106 + 1);
      }

      v21 = v102;
      v69 = v99;
      v23 = v100;
      v29 = v98;
      free(v50);
    }

    else
    {
      v68 = 5;
      v21 = v102;
      v69 = v99;
      v23 = v100;
      v29 = v98;
    }

    v70 = APPLEIDV_LOG_CLIENT();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v109) = 67109632;
      OUTLINED_FUNCTION_20();
      v110 = v68;
      OUTLINED_FUNCTION_22(v83);
      OUTLINED_FUNCTION_25(&dword_2259A7000, v70, v84, "[line %d] kret = %d 0x%lx", &v109);
    }

    v71 = APPLEIDV_LOG_CLIENT();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v109) = 67109632;
      OUTLINED_FUNCTION_20();
      v110 = v68;
      OUTLINED_FUNCTION_22(v85);
      OUTLINED_FUNCTION_25(&dword_2259A7000, v71, v86, "[line %d] kret = %d 0x%lx", &v109);
    }

    if (v68)
    {
      OUTLINED_FUNCTION_12();
    }

    else
    {
      *v69 = [MEMORY[0x277CBEA90] dataWithBytes:v106 length:?];
    }

    v22 = v101;
    v24 = v104;
  }

  v72 = DIV_LOG_KEXT();
  v73 = v72;
  if (v29 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
  {
    LOWORD(v109) = 0;
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_64(v74, v75, v76, v77, v78, v79, v80, v81, v92, spid);
  }

  OUTLINED_FUNCTION_49();
  return result;
}

+ (unsigned)appleIDVEstablishPrearmTrustWithCertificate:(id)a3 protectedPublicKey:(id *)a4
{
  OUTLINED_FUNCTION_48();
  MEMORY[0x28223BE20](v4, v5);
  v7 = v6;
  v65 = *MEMORY[0x277D85DE8];
  v9 = v8;
  v54 = 0u;
  v10 = DIV_LOG_KEXT();
  v11 = os_signpost_id_generate(v10);

  v12 = DIV_LOG_KEXT();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v57[0] = 0;
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_63(v14, v15, v16, v17, v18, v19, v20);
  }

  if (v9 && v7)
  {
    *&v54 = v57;
    *(&v54 + 1) = 4096;
    v21 = [v9 bytes];
    v22 = [v9 length];
    v56 = 0;
    if (v21 && (v23 = v22, OUTLINED_FUNCTION_26(), !(!v25 & v24)) && (OUTLINED_FUNCTION_0(), (v27 = malloc_type_malloc(0x1000uLL, v26)) != 0))
    {
      v28 = v27;
      v55 = 4096;
      if (tlvEncodeWithCheck(v27, 90, v21, v23, &v55, &v56))
      {
        v32 = 5;
      }

      else
      {
        v29 = APPLEIDV_LOG_CLIENT();
        v30 = OUTLINED_FUNCTION_46(v29);
        v31 = v56;
        if (v30)
        {
          v58 = 136315906;
          *v59 = "serializeEstablishPrearmTrustStruct";
          *&v59[8] = 1024;
          v60 = 1053;
          v61 = 2048;
          v62 = 4096;
          v63 = 2048;
          v64 = v56;
          OUTLINED_FUNCTION_19();
          _os_log_debug_impl(v49, v50, v51, v52, v53, 0x26u);
        }

        v32 = GenericAppleIDVCall(0xAu, v28, v31, v57, &v54 + 1);
      }

      free(v28);
    }

    else
    {
      v32 = 5;
    }

    v33 = APPLEIDV_LOG_CLIENT();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v58 = 67109632;
      OUTLINED_FUNCTION_20();
      *&v59[6] = v32;
      OUTLINED_FUNCTION_22(v45);
      OUTLINED_FUNCTION_25(&dword_2259A7000, v33, v46, "[line %d] kret = %d 0x%lx", &v58);
    }

    v34 = APPLEIDV_LOG_CLIENT();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v58 = 67109632;
      OUTLINED_FUNCTION_20();
      *&v59[6] = v32;
      OUTLINED_FUNCTION_22(v47);
      OUTLINED_FUNCTION_25(&dword_2259A7000, v34, v48, "[line %d] kret = %d 0x%lx", &v58);
    }

    if (v32)
    {
      OUTLINED_FUNCTION_12();
    }

    else
    {
      *v7 = [MEMORY[0x277CBEA90] dataWithBytes:v54 length:?];
    }
  }

  v35 = DIV_LOG_KEXT();
  v36 = v35;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    LOWORD(v58) = 0;
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_63(v37, v38, v39, v40, v41, v42, v43);
  }

  OUTLINED_FUNCTION_49();
  return result;
}

+ (unsigned)appleIDVGenerateNonceOnWatch:(id *)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v40 = 32;
  v5 = DIV_LOG_KEXT();
  v6 = os_signpost_id_generate(v5);

  v7 = DIV_LOG_KEXT();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v41[0] = 0;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_66(v9, v10, v11, v12, v13, v14, v15);
  }

  if (a3)
  {
    v16 = GenericAppleIDVCall(7u, 0, 0, v41, &v40);
    v17 = APPLEIDV_LOG_CLIENT();
    if (OUTLINED_FUNCTION_38(v17))
    {
      v42 = 67109632;
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_17();
      _os_log_debug_impl(v29, v30, v31, v32, v33, 0x18u);
    }

    v18 = APPLEIDV_LOG_CLIENT();
    if (OUTLINED_FUNCTION_38(v18))
    {
      v42 = 67109632;
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_17();
      _os_log_debug_impl(v34, v35, v36, v37, v38, 0x18u);
    }

    if (v16)
    {
      OUTLINED_FUNCTION_12();
      if (v16 == v39)
      {
        v16 = 11;
      }
    }

    else
    {
      *a3 = [MEMORY[0x277CBEA90] dataWithBytes:v41 length:v40];
    }
  }

  else
  {
    v16 = 5;
  }

  v19 = DIV_LOG_KEXT();
  v20 = v19;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    LOWORD(v42) = 0;
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_66(v21, v22, v23, v24, v25, v26, v27);
  }

  return v16;
}

+ (unsigned)prepareUnboundACLForWatch:(id *)a3 withAccessibilityEnabled:(BOOL)a4
{
  v4 = a4;
  v40[1] = *MEMORY[0x277D85DE8];
  error = 0;
  v6 = objc_opt_new();
  v39 = @"osgn";
  v37[0] = @"cpo";
  v37[1] = @"pidvaccess";
  v7 = MEMORY[0x277CBEC28];
  if (v4)
  {
    v7 = MEMORY[0x277CBEC38];
  }

  v38[0] = @"IDVPolicy";
  v38[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v40[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];

  if (a3)
  {
    v10 = SecAccessControlCreateWithFlags(*MEMORY[0x277CBECE8], *MEMORY[0x277CDBEE8], 0x10uLL, &error);
    if (v10)
    {
      v11 = v10;
      v33 = 0;
      v12 = [v6 evaluateAccessControl:v10 operation:0 options:0 error:&v33];
      v13 = v33;

      if (v12)
      {
        SecAccessControlSetConstraints();
        v14 = SecAccessControlCopyData();
        if (v14)
        {
          v15 = v14;
          v16 = 0;
          *a3 = v14;
        }

        else
        {
          v18 = APPLEIDV_LOG_CLIENT();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_13();
            v36 = v11;
            OUTLINED_FUNCTION_61(&dword_2259A7000, v27, v28, "%s:%d, failed to copy acl data from acl %@", v29, v30, v31, v32, v33, error, buf[0]);
          }

          v15 = 0;
          v16 = 13;
        }
      }

      else
      {
        v17 = APPLEIDV_LOG_CLIENT();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_13();
          v36 = v13;
          OUTLINED_FUNCTION_61(&dword_2259A7000, v21, v22, "%s:%d, failed to prepare ACL for item creation (%@)", v23, v24, v25, v26, v33, error, buf[0]);
        }

        v15 = 0;
        v16 = 16;
      }

      CFRelease(v11);
    }

    else
    {
      v15 = APPLEIDV_LOG_CLIENT();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v20 = error;
        *buf = 136315650;
        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_13();
        v36 = v20;
        _os_log_error_impl(&dword_2259A7000, v15, OS_LOG_TYPE_ERROR, "%s:%d, failed to create ACL (%@)", buf, 0x1Cu);
      }

      v16 = 13;
    }
  }

  else
  {
    v16 = 5;
  }

  return v16;
}

+ (void)getUUIDsFromACL:(uint64_t)a1 intoArray:(void *)a2 .cold.1(uint64_t a1, void **a2)
{
  v2 = *a2;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_51();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x26u);
}

+ (void)prepareACLForPhoneDecryption:withSubType:forBioUUID:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)prepareACLForPhoneDecryption:withSubType:forBioUUID:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)prepareACLForPhoneDecryption:withSubType:forBioUUID:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_51();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x26u);
}

+ (void)prepareACLForPhoneDecryption:withSubType:forBioUUID:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)prepareACLForPhoneDecryption:withSubType:forBioUUID:.cold.5()
{
  OUTLINED_FUNCTION_34(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

+ (void)prepareACLForWatchDecryption:withSubType:forAclUsage:.cold.1()
{
  OUTLINED_FUNCTION_34(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

+ (void)prepareACLForWatchDecryption:withSubType:forAclUsage:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_51();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x26u);
}

+ (void)prepareACLForWatchDecryption:withSubType:forAclUsage:.cold.4()
{
  OUTLINED_FUNCTION_34(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

+ (void)prepareUnboundACLForBioBinding:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)prepareUnboundACLForBioBinding:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)prepareUnboundACLForBioBinding:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

+ (void)prepareUnboundACLForBioBinding:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)prepareUnboundACLForBioBinding:.cold.5()
{
  OUTLINED_FUNCTION_34(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

+ (void)prepareUnboundACLForPasscodeBinding:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)prepareUnboundACLForPasscodeBinding:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)prepareUnboundACLForPasscodeBinding:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

+ (void)prepareUnboundACLForPasscodeBinding:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)prepareUnboundACLForPasscodeBinding:.cold.5()
{
  OUTLINED_FUNCTION_34(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

+ (void)appleIDVRevokeCredentialAuthorizationToken
{
  v7 = *MEMORY[0x277D85DE8];
  v2[0] = 67109632;
  v2[1] = 1198;
  v3 = 1024;
  v4 = a1;
  v5 = 1024;
  v6 = a1;
  _os_log_debug_impl(&dword_2259A7000, a2, OS_LOG_TYPE_DEBUG, "[line %d] kret = %d %x", v2, 0x14u);
}

+ (void)appleIDVCredentialAuthenticationTokenStatus
{
  OUTLINED_FUNCTION_34(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

@end