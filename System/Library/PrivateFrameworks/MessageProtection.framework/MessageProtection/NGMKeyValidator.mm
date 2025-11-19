@interface NGMKeyValidator
+ (BOOL)isValidKeyValidator:(id)a3 receiversIdentity:(id)a4 sendersIdentity:(id)a5 error:(id *)a6;
+ (_NSRange)rangeOnPublicKey;
+ (id)keyValidatorWithReceiversIdentity:(id)a3 sendersIdentity:(id)a4;
+ (id)versionByte;
+ (unint64_t)validatorLength;
@end

@implementation NGMKeyValidator

+ (unint64_t)validatorLength
{
  [a1 rangeOnPublicKey];
  v4 = 3 * v3;
  v5 = [a1 versionByte];
  v6 = [v5 length];

  return v6 + v4;
}

+ (_NSRange)rangeOnPublicKey
{
  v2 = 0;
  v3 = 2;
  result.length = v3;
  result.location = v2;
  return result;
}

+ (id)versionByte
{
  v4 = +[NGMProtocolVersion supportedVersion];
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:&v4 length:1];

  return v2;
}

+ (BOOL)isValidKeyValidator:(id)a3 receiversIdentity:(id)a4 sendersIdentity:(id)a5 error:(id *)a6
{
  v75 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v55 = a5;
  v11 = [a1 rangeOnPublicKey];
  v13 = v12;
  v14 = [v9 length];
  v15 = [a1 validatorLength];
  if (v14 == v15)
  {
    v16 = [v9 subdataWithRange:{0, 2}];
    v52 = [v9 subdataWithRange:{2, 2}];
    v51 = [v9 subdataWithRange:{4, 2}];
    v53 = [v9 subdataWithRange:{6, 1}];
    if (!+[NGMProtocolVersion isVersionSupported:](NGMProtocolVersion, "isVersionSupported:", *[v53 bytes]))
    {
      MPLogAndAssignError(900, a6, @"Discarding this payload because of bad NGM version.");
LABEL_42:

      goto LABEL_43;
    }

    v17 = [v55 signingKey];
    v18 = [v17 dataRepresentation];
    v50 = [v18 subdataWithRange:{v11, v13}];

    v48 = [v16 isEqualToData:v50];
    v19 = [v10 deviceSigningKey];
    v20 = [v19 publicKey];
    v21 = [v20 dataRepresentation];
    v49 = [v21 subdataWithRange:{v11, v13}];

    v47 = [v52 isEqualToData:v49];
    v65 = 0;
    v66 = &v65;
    v67 = 0x2020000000;
    v68 = 0;
    v22 = [v10 devicePrekeys];
    LODWORD(v19) = [v22 count] == 0;

    if (v19)
    {
      v36 = MessageProtectionLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        if (v48)
        {
          v40 = &stru_283F0C6E8;
        }

        else
        {
          v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"❌ The sender signing key's was incorrect. Found bytes: %@, expected %@ . \n", v50, v16];
        }

        if (v47)
        {
          v44 = &stru_283F0C6E8;
        }

        else
        {
          v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"❌ The receiver's signing key was incorrect. Found bytes: %@, expected %@. \n", v49, v52];
        }

        *buf = 138412802;
        v70 = v40;
        v71 = 2112;
        v72 = v44;
        v73 = 2112;
        v74 = @"No prekeys were found on the device";
        _os_log_error_impl(&dword_22B404000, v36, OS_LOG_TYPE_ERROR, "While checking the key validator, we found the following issues: \n %@%@%@", buf, 0x20u);
        if ((v47 & 1) == 0)
        {
        }

        if ((v48 & 1) == 0)
        {
        }
      }

      MPLogAndAssignError(807, a6, @"Sender and receiver's keys are incorrect.");
      goto LABEL_41;
    }

    v23 = [MEMORY[0x277CBEB18] array];
    v24 = [v10 devicePrekeys];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __79__NGMKeyValidator_isValidKeyValidator_receiversIdentity_sendersIdentity_error___block_invoke;
    v59[3] = &unk_2786FDD80;
    v63 = v11;
    v64 = v13;
    v25 = v23;
    v60 = v25;
    v26 = v51;
    v61 = v26;
    v62 = &v65;
    [v24 enumerateObjectsUsingBlock:v59];

    v27 = [MEMORY[0x277CCAB68] string];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __79__NGMKeyValidator_isValidKeyValidator_receiversIdentity_sendersIdentity_error___block_invoke_21;
    v56[3] = &unk_2786FDDA8;
    v28 = v27;
    v57 = v28;
    v29 = v25;
    v58 = v29;
    [v29 enumerateObjectsUsingBlock:v56];
    if ((v48 & v47) == 1 && *(v66 + 24) == 1)
    {
      if (!a6 || !*a6)
      {
        goto LABEL_40;
      }

      v30 = [*a6 code];
      v31 = [*a6 description];
      MPLogAndAssignError(v30 + 10000, a6, v31);
      goto LABEL_37;
    }

    v32 = MessageProtectionLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      if (v48)
      {
        v46 = &stru_283F0C6E8;
      }

      else
      {
        v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"❌ The sender signing key's was incorrect. Found bytes: %@, expected %@ . \n", v50, v16];
      }

      if (v47)
      {
        v41 = &stru_283F0C6E8;
      }

      else
      {
        v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"❌ The receiver's signing key was incorrect. Found bytes: %@, expected %@. \n", v49, v52];
      }

      v42 = *(v66 + 24);
      v45 = v41;
      if (v42)
      {
        v43 = &stru_283F0C6E8;
      }

      else
      {
        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"❌ No prekey was found that matches the one in the validator (%@). Was it already deleted? Prekeys on device are: %@. \n", v26, v28];
        v41 = v45;
      }

      *buf = 138412802;
      v70 = v46;
      v71 = 2112;
      v72 = v41;
      v73 = 2112;
      v74 = v43;
      _os_log_error_impl(&dword_22B404000, v32, OS_LOG_TYPE_ERROR, "While checking the key validator, we found the following issues: \n %@%@%@", buf, 0x20u);
      if ((v42 & 1) == 0)
      {
      }

      if ((v47 & 1) == 0)
      {
      }

      if ((v48 & 1) == 0)
      {
      }
    }

    if (((v48 | v47) & 1) != 0 || *(v66 + 24) == 1)
    {
      v33 = *(v66 + 24);
      if (v47)
      {
        if ((v33 | v48))
        {
          if (*(v66 + 24))
          {
            if (v48)
            {
              v34 = 806;
            }

            else
            {
              v34 = 801;
            }

            if (v48)
            {
              v35 = @"Unhandled key validator case.";
            }

            else
            {
              v35 = @"The sender key is incorrect.";
            }
          }

          else
          {
            v35 = @"The receiver's encryption key is incorrect.";
            v34 = 804;
          }

          goto LABEL_39;
        }

        v37 = @"encryption key";
      }

      else
      {
        if (*(v66 + 24))
        {
          v34 = 803;
        }

        else
        {
          v34 = 802;
        }

        if (*(v66 + 24))
        {
          v35 = @"The receiver's signing key is incorrect.";
        }

        else
        {
          v35 = @"Receiver's keys are incorrect.";
        }

        if (v48 & 1 | ((v33 & 1) == 0))
        {
          goto LABEL_39;
        }

        v37 = @"signing key";
      }

      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"The receiver's %@ and sender's identity keys are incorrect.", v37];
      MPLogAndAssignError(805, a6, v31);
LABEL_37:

LABEL_40:
LABEL_41:
      _Block_object_dispose(&v65, 8);

      goto LABEL_42;
    }

    v35 = @"Sender and receiver's keys are incorrect.";
    v34 = 800;
LABEL_39:
    MPLogAndAssignError(v34, a6, v35);
    goto LABEL_40;
  }

  v16 = MessageProtectionLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [NGMKeyValidator isValidKeyValidator:v16 receiversIdentity:? sendersIdentity:? error:?];
  }

LABEL_43:

  v38 = *MEMORY[0x277D85DE8];
  return v14 == v15;
}

void __79__NGMKeyValidator_isValidKeyValidator_receiversIdentity_sendersIdentity_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 dhKey];
  v7 = [v6 publicKey];
  v8 = [v7 dataRepresentation];
  v9 = [v8 subdataWithRange:{*(a1 + 56), *(a1 + 64)}];

  if (v9)
  {
    [*(a1 + 32) addObject:v9];
    if ([*(a1 + 40) isEqualToData:v9])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  else
  {
    v10 = MessageProtectionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __79__NGMKeyValidator_isValidKeyValidator_receiversIdentity_sendersIdentity_error___block_invoke_cold_1(v10);
    }
  }
}

void __79__NGMKeyValidator_isValidKeyValidator_receiversIdentity_sendersIdentity_error___block_invoke_21(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  if ([v6 count] - 1 == a3)
  {
    v8 = &stru_283F0C6E8;
  }

  else
  {
    v8 = @",";
  }

  v9 = [v4 stringWithFormat:@"%@%@", v7, v8];

  [v5 appendString:v9];
}

+ (id)keyValidatorWithReceiversIdentity:(id)a3 sendersIdentity:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 rangeOnPublicKey];
  v10 = v9;
  v11 = [a1 validatorLength];
  v12 = [MEMORY[0x277CBEB28] dataWithCapacity:v11];
  v13 = [v6 deviceSigningKey];

  v14 = [v13 publicKey];
  v15 = [v14 dataRepresentation];
  v16 = [v15 subdataWithRange:{v8, v10}];

  v17 = [v7 signingKey];
  v18 = [v17 dataRepresentation];
  v19 = [v18 subdataWithRange:{v8, v10}];

  v20 = [v7 echnidaRegistration];

  v21 = [v20 dhKey];
  v22 = [v21 dataRepresentation];
  v23 = [v22 subdataWithRange:{v8, v10}];

  [v12 appendData:v16];
  [v12 appendData:v19];
  [v12 appendData:v23];
  v24 = [a1 versionByte];
  [v12 appendData:v24];

  if ([v12 length] == v11)
  {
    v25 = v12;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

@end