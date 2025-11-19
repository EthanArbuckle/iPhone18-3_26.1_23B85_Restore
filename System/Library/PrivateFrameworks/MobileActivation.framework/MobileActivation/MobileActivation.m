id getActivationState(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 getActivationState:a1];

  return v3;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __copy_helper_block_e8_32r40r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

id isNSString(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __destroy_helper_block_e8_32r40r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

uint64_t createTunnel1SessionRequestFromMAD(void *a1, id a2, void *a3)
{
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:@"BasebandWaitCount"];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 objectForKeyedSubscript:@"BasebandWaitCount"];
    v9 = isNSNumber(v8);

    if (!v9)
    {
      v18 = [v5 objectForKeyedSubscript:@"BasebandWaitCount"];
      MobileActivationError = createMobileActivationError("createTunnel1SessionRequestFromMAD", 192, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): %@", @"BasebandWaitCount", v18);
      goto LABEL_11;
    }
  }

  v10 = [v5 objectForKeyedSubscript:@"WaitForBasebandReady"];
  if (v10)
  {
    v11 = v10;
    v12 = [v5 objectForKeyedSubscript:@"WaitForBasebandReady"];
    v13 = isNSNumber(v12);

    if (!v13)
    {
      v22 = [v5 objectForKeyedSubscript:@"WaitForBasebandReady"];
      v20 = createMobileActivationError("createTunnel1SessionRequestFromMAD", 197, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): %@", @"WaitForBasebandReady", v22);
      v21 = v22;
      goto LABEL_13;
    }
  }

  v14 = [v5 objectForKeyedSubscript:@"WaitForBasebandReady"];
  if ([v14 BOOLValue])
  {
  }

  else
  {
    v15 = [v5 objectForKeyedSubscript:@"BasebandWaitCount"];
    v16 = [v15 BOOLValue];

    if (!v16)
    {
      v18 = 0;
      goto LABEL_17;
    }
  }

  v35 = 0;
  v17 = waitForBaseband(&v35);
  v18 = v35;
  if ((v17 & 1) == 0)
  {
    MobileActivationError = createMobileActivationError("createTunnel1SessionRequestFromMAD", 204, @"com.apple.MobileActivation.ErrorDomain", -12, v18, @"Waiting for baseband failed.");
LABEL_11:
    v20 = MobileActivationError;
    v21 = v18;
LABEL_13:

    v23 = 0;
    goto LABEL_14;
  }

LABEL_17:
  v34 = v18;
  v23 = createTunnel1SessionInfo(&v34);
  v20 = v34;

  if (!v23)
  {
LABEL_14:
    v24 = 0;
    if (a3)
    {
LABEL_15:
      v25 = v20;
      v26 = 0;
      *a3 = v20;
LABEL_24:
      v28 = v20;
      goto LABEL_25;
    }

LABEL_23:
    v26 = 0;
    goto LABEL_24;
  }

  v32 = v20;
  v33 = 0;
  v27 = createXMLRequest(v23, &v33, &v32);
  v24 = v33;
  v28 = v32;

  if (!v27)
  {
    v20 = v28;
    if (a3)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  [v24 setValue:@"iOS Device Activator (MobileActivation-1068.42.2)" forHTTPHeaderField:@"User-Agent"];
  [v24 setValue:@"application/xml" forHTTPHeaderField:@"Accept"];
  v29 = [MEMORY[0x277CBEBC0] URLWithString:@"https://albert.apple.com/deviceservices/drmHandshake"];
  [v24 setURL:v29];

  if (a1)
  {
    v30 = v24;
    *a1 = v24;
  }

  v26 = 1;
LABEL_25:

  return v26;
}

uint64_t waitForBaseband(void *a1)
{
  v2 = +[GestaltHlprMobileActivation getSharedInstance];
  v3 = [v2 copyAnswer:@"HasBaseband"];

  v4 = isNSNumber(v3);
  if (!v4)
  {
    MobileActivationError = createMobileActivationError("waitForBaseband", 145, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve HasBaseband.");
LABEL_12:
    v9 = MobileActivationError;
    if (a1)
    {
LABEL_13:
      v9 = v9;
      v10 = 0;
      *a1 = v9;
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if ([v3 BOOLValue])
  {
    v4 = 0;
    v5 = 30;
    do
    {
      v6 = v4;
      v7 = +[GestaltHlprMobileActivation getSharedInstance];
      v4 = [v7 copyAnswer:@"BasebandStatus"];

      v8 = isNSString(v4);
      if (!v8)
      {
        MobileActivationError = createMobileActivationError("waitForBaseband", 157, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve BasebandStatus.");
        goto LABEL_12;
      }

      if (![v4 isEqualToString:@"BBNotReady"])
      {
        v9 = 0;
        goto LABEL_15;
      }

      sleep(2u);
      --v5;
    }

    while (v5);
    v9 = 0;
    if (a1)
    {
      goto LABEL_13;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_16;
  }

  v9 = 0;
  v4 = 0;
LABEL_15:
  v10 = 1;
LABEL_16:

  return v10;
}

uint64_t createTunnel1ActivationRequestFromMAD(void *a1, id a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 objectForKeyedSubscript:@"BasebandWaitCount"];
  if (v9)
  {
    v10 = v9;
    v11 = [v8 objectForKeyedSubscript:@"BasebandWaitCount"];
    v12 = isNSNumber(v11);

    if (!v12)
    {
      v21 = [v8 objectForKeyedSubscript:@"BasebandWaitCount"];
      MobileActivationError = createMobileActivationError("createTunnel1ActivationRequestFromMAD", 246, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): %@", @"BasebandWaitCount", v21);
      goto LABEL_11;
    }
  }

  v13 = [v8 objectForKeyedSubscript:@"WaitForBasebandReady"];
  if (v13)
  {
    v14 = v13;
    v15 = [v8 objectForKeyedSubscript:@"WaitForBasebandReady"];
    v16 = isNSNumber(v15);

    if (!v16)
    {
      v25 = [v8 objectForKeyedSubscript:@"WaitForBasebandReady"];
      v23 = createMobileActivationError("createTunnel1ActivationRequestFromMAD", 251, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): %@", @"WaitForBasebandReady", v25);
      v24 = v25;
      goto LABEL_13;
    }
  }

  v17 = [v8 objectForKeyedSubscript:@"WaitForBasebandReady"];
  if ([v17 BOOLValue])
  {
  }

  else
  {
    v18 = [v8 objectForKeyedSubscript:@"BasebandWaitCount"];
    v19 = [v18 BOOLValue];

    if (!v19)
    {
      v21 = 0;
      goto LABEL_17;
    }
  }

  v37 = 0;
  v20 = waitForBaseband(&v37);
  v21 = v37;
  if ((v20 & 1) == 0)
  {
    MobileActivationError = createMobileActivationError("createTunnel1ActivationRequestFromMAD", 258, @"com.apple.MobileActivation.ErrorDomain", -12, v21, @"Waiting for baseband failed.");
LABEL_11:
    v23 = MobileActivationError;
    v24 = v21;
LABEL_13:

    v26 = 0;
    goto LABEL_14;
  }

LABEL_17:
  v36 = v21;
  v26 = createTunnel1ActivationInfo(v7, v8, &v36);
  v23 = v36;

  if (!v26)
  {
LABEL_14:
    v27 = 0;
    if (a4)
    {
LABEL_15:
      v28 = v23;
      v29 = 0;
      *a4 = v23;
LABEL_24:
      v31 = v23;
      goto LABEL_25;
    }

LABEL_23:
    v29 = 0;
    goto LABEL_24;
  }

  v34 = v23;
  v35 = 0;
  v30 = createActivationRequest(v26, &v35, 0, &v34);
  v27 = v35;
  v31 = v34;

  if (!v30)
  {
    v23 = v31;
    if (a4)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  if (a1)
  {
    v32 = v27;
    *a1 = v27;
  }

  v29 = 1;
LABEL_25:

  return v29;
}

uint64_t createFactoryActivationRequestFromMAD(void *a1, id a2, void *a3)
{
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:@"BasebandWaitCount"];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 objectForKeyedSubscript:@"BasebandWaitCount"];
    v9 = isNSNumber(v8);

    if (!v9)
    {
      v18 = [v5 objectForKeyedSubscript:@"BasebandWaitCount"];
      MobileActivationError = createMobileActivationError("createFactoryActivationRequestFromMAD", 296, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): %@", @"BasebandWaitCount", v18);
      goto LABEL_11;
    }
  }

  v10 = [v5 objectForKeyedSubscript:@"WaitForBasebandReady"];
  if (v10)
  {
    v11 = v10;
    v12 = [v5 objectForKeyedSubscript:@"WaitForBasebandReady"];
    v13 = isNSNumber(v12);

    if (!v13)
    {
      v22 = [v5 objectForKeyedSubscript:@"WaitForBasebandReady"];
      v20 = createMobileActivationError("createFactoryActivationRequestFromMAD", 301, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): %@", @"WaitForBasebandReady", v22);
      v21 = v22;
      goto LABEL_13;
    }
  }

  v14 = [v5 objectForKeyedSubscript:@"WaitForBasebandReady"];
  if ([v14 BOOLValue])
  {
  }

  else
  {
    v15 = [v5 objectForKeyedSubscript:@"BasebandWaitCount"];
    v16 = [v15 BOOLValue];

    if (!v16)
    {
      v18 = 0;
      goto LABEL_17;
    }
  }

  v35 = 0;
  v17 = waitForBaseband(&v35);
  v18 = v35;
  if ((v17 & 1) == 0)
  {
    MobileActivationError = createMobileActivationError("createFactoryActivationRequestFromMAD", 308, @"com.apple.MobileActivation.ErrorDomain", -12, v18, @"Waiting for baseband failed.");
LABEL_11:
    v20 = MobileActivationError;
    v21 = v18;
LABEL_13:

    v23 = 0;
    goto LABEL_14;
  }

LABEL_17:
  v34 = v18;
  v23 = createActivationInfo(&v34);
  v20 = v34;

  if (!v23)
  {
LABEL_14:
    v24 = 0;
    if (a3)
    {
LABEL_15:
      v25 = v20;
      v26 = 0;
      *a3 = v20;
LABEL_24:
      v28 = v20;
      goto LABEL_25;
    }

LABEL_23:
    v26 = 0;
    goto LABEL_24;
  }

  v32 = v20;
  v33 = 0;
  v27 = createXMLRequest(v23, &v33, &v32);
  v24 = v33;
  v28 = v32;

  if (!v27)
  {
    v20 = v28;
    if (a3)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  [v24 setValue:@"iOS Device Activator (MobileActivation-1068.42.2)" forHTTPHeaderField:@"User-Agent"];
  v29 = [MEMORY[0x277CBEBC0] URLWithString:@"http://raptor-dr.apple.com:8080/raptor/processor"];
  [v24 setURL:v29];

  if (a1)
  {
    v30 = v24;
    *a1 = v24;
  }

  v26 = 1;
LABEL_25:

  return v26;
}

uint64_t deactivateThroughMAD(void *a1)
{
  v5 = 0;
  v2 = deactivateDevice(&v5);
  v3 = v5;
  if (a1 && (v2 & 1) == 0)
  {
    v3 = v3;
    *a1 = v3;
  }

  return v2;
}

uint64_t activateThroughMAD(void *a1, void *a2, void *a3)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v30 = a3;
  if (!v5)
  {
    v15 = createMobileActivationError("activateThroughMAD", 373, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v16 = 0;
    v14 = 0;
    v9 = 0;
LABEL_18:
    v20 = 0;
    v19 = 0;
    goto LABEL_26;
  }

  v8 = [v6 objectForKeyedSubscript:@"ActivationResponseHeaders"];
  v9 = v8;
  if (v8)
  {
    v10 = isNSDictionary(v8);

    if (!v10)
    {
      v15 = createMobileActivationError("activateThroughMAD", 379, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
      v16 = 0;
      v14 = 0;
      goto LABEL_18;
    }
  }

  v29 = v7;
  v34 = 0;
  v11 = getActivationRecordFromData(v5, &v34);
  v12 = v34;
  v13 = v12;
  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v33 = v12;
    v14 = getSessionActivationRecordFromData(v5, &v33);
    v17 = v33;

    if (!v14)
    {
      v15 = createMobileActivationError("activateThroughMAD", 387, @"com.apple.MobileActivation.ErrorDomain", -1, v17, @"Failed to extract activation record.");

      v16 = 0;
      v20 = 0;
      v19 = 0;
      goto LABEL_25;
    }

    v13 = v17;
  }

  v18 = [v9 objectForCaseInsensitiveKey:@"ARS"];
  v19 = v18;
  if (!v18)
  {
    v20 = 0;
    goto LABEL_14;
  }

  v20 = isNSString(v18);

  if (!v20)
  {
    MobileActivationError = createMobileActivationError("activateThroughMAD", 400, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid activation signature");
    goto LABEL_20;
  }

  v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v19 options:1];
  if (v20)
  {
LABEL_14:
    if (v11)
    {
      v35 = @"ActivationRecord";
      v36[0] = v14;
      v22 = 1;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v31 = v13;
      v23 = handleActivationInfo(v16, &v31);
      v15 = v31;

      v7 = v29;
      if (v23)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    v32 = v13;
    v24 = handleActivationInfoWithSession(v5, v20, &v32);
    v15 = v32;

    if (v24)
    {
      v16 = 0;
      v22 = 1;
      v7 = v29;
      goto LABEL_29;
    }

    v25 = createMobileActivationError("activateThroughMAD", 415, @"com.apple.MobileActivation.ErrorDomain", -1, v15, @"Failed to activate device.");

    v16 = 0;
    v15 = v25;
    goto LABEL_25;
  }

  MobileActivationError = createMobileActivationError("activateThroughMAD", 406, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid activation signature");
LABEL_20:
  v15 = MobileActivationError;

  v16 = 0;
LABEL_25:
  v7 = v29;
LABEL_26:
  if (v30)
  {
    v26 = v15;
    v22 = 0;
    *v30 = v15;
  }

  else
  {
    v22 = 0;
  }

LABEL_29:

  v27 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t mobileactivationErrorHasDomainAndErrorCode(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = *MEMORY[0x277CCA7E8];
    do
    {
      v10 = [v5 domain];
      if ([v10 isEqualToString:v7])
      {
        v11 = [v5 code];

        if (v11 == a3)
        {
          v8 = 1;
          goto LABEL_10;
        }
      }

      else
      {
      }

      v12 = [v5 userInfo];
      v13 = [v12 objectForKeyedSubscript:v9];

      v5 = v13;
    }

    while (v13);
    v8 = 0;
  }

LABEL_10:

  return v8;
}

BOOL is_virtual_machine()
{
  v3 = 0;
  v2 = 4;
  return !sysctlbyname("kern.hv_vmm_present", &v3, &v2, 0, 0) && v3 == 1;
}

uint64_t createActivationRequest(void *a1, void *a2, int a3, void *a4)
{
  v7 = a1;
  if (!v7)
  {
    v9 = createMobileActivationError("createActivationRequest", 36, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v8 = 0;
    v10 = 0;
    v16 = 0;
    v17 = 0;
    v11 = 0;
    if (a4)
    {
LABEL_18:
      v26 = v9;
      v24 = 0;
      v19 = 0;
      *a4 = v9;
      goto LABEL_19;
    }

LABEL_13:
    v24 = 0;
    v19 = 0;
    goto LABEL_19;
  }

  v29 = 0;
  v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:v7 format:100 options:0 error:&v29];
  v9 = v29;
  if (!v8)
  {
    v25 = createMobileActivationError("createActivationRequest", 45, @"com.apple.MobileActivation.ErrorDomain", -1, v9, @"Failed to convert dictionary to data.");

    v10 = 0;
LABEL_16:
    v16 = 0;
    v17 = 0;
    v11 = 0;
    goto LABEL_17;
  }

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
  if (!v10)
  {
    v25 = createMobileActivationError("createActivationRequest", 51, @"com.apple.MobileActivation.ErrorDomain", -1, v9, @"Failed to convert data to string.");

    goto LABEL_16;
  }

  v11 = [MEMORY[0x277CCAB50] alphanumericCharacterSet];
  [v11 addCharactersInString:@"*-._"];
  [v11 addCharactersInString:@" "];
  v12 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:v11];

  v10 = [v12 stringByReplacingOccurrencesOfString:@" " withString:@"+"];
  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  v14 = @"activation-info";
  if (a3)
  {
    v14 = @"certify-me-info";
  }

  v15 = [v13 initWithFormat:@"%@=%@", v14, v10];
  v16 = v15;
  if (!v15)
  {
    v25 = createMobileActivationError("createActivationRequest", 64, @"com.apple.MobileActivation.ErrorDomain", -1, v9, @"Failed to convert dictionary to URL encoding.");

    v17 = 0;
    goto LABEL_17;
  }

  v17 = [v15 dataUsingEncoding:4 allowLossyConversion:0];
  if (!v17)
  {
    MobileActivationError = createMobileActivationError("createActivationRequest", 70, @"com.apple.MobileActivation.ErrorDomain", -1, v9, @"Failed to convert string to data.");
LABEL_23:
    v25 = MobileActivationError;

LABEL_17:
    v9 = v25;
    if (a4)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v18 = objc_alloc_init(MEMORY[0x277CCAB70]);
  if (!v18)
  {
    MobileActivationError = createMobileActivationError("createActivationRequest", 76, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate request.");
    goto LABEL_23;
  }

  v19 = v18;
  [v18 setCachePolicy:0];
  [v19 setTimeoutInterval:60.0];
  [v19 setHTTPMethod:@"POST"];
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"application/x-www-form-urlencoded"];
  [v19 setValue:v20 forHTTPHeaderField:@"Content-Type"];

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v17, "length")];
  [v19 setValue:v21 forHTTPHeaderField:@"Content-Length"];

  [v19 setHTTPBody:v17];
  [v19 setValue:@"iOS Device Activator (MobileActivation-1068.42.2)" forHTTPHeaderField:@"User-Agent"];
  v22 = [MEMORY[0x277CBEBC0] URLWithString:@"https://albert.apple.com/deviceservices/deviceActivation"];
  [v19 setURL:v22];

  if (a2)
  {
    v23 = v19;
    *a2 = v19;
  }

  v24 = 1;
LABEL_19:

  return v24;
}

id getSessionActivationRecordFromData(void *a1, void *a2)
{
  v3 = a1;
  if (v3)
  {
    v12 = 0;
    v4 = [MEMORY[0x277CCAC58] propertyListWithData:v3 options:0 format:0 error:&v12];
    v5 = v12;
    v6 = isNSDictionary(v4);

    if (v6)
    {
      v6 = [v4 objectForKeyedSubscript:@"ActivationRecord"];
      v7 = isNSDictionary(v6);

      if (v7)
      {
        v7 = v6;
        v6 = v7;
        if (!a2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v8 = createMobileActivationError("getSessionActivationRecordFromData", 124, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Input data is missing activation record.");

        v5 = v8;
        if (!a2)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      v7 = 0;
      if (!a2)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v5 = createMobileActivationError("getSessionActivationRecordFromData", 113, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v7 = 0;
    v4 = 0;
    v6 = 0;
    if (!a2)
    {
      goto LABEL_13;
    }
  }

  if (!v7)
  {
    v9 = v5;
    *a2 = v5;
  }

LABEL_13:
  v10 = v7;

  return v7;
}

id getActivationRecordFromData(uint64_t a1, void *a2)
{
  v22 = 0;
  v3 = [MEMORY[0x277CCAC58] propertyListWithData:a1 options:0 format:0 error:&v22];
  v4 = v22;
  v5 = isNSDictionary(v3);

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:@"AccountToken"];
    if (v6)
    {
      v7 = v6;
      v8 = [v3 objectForKeyedSubscript:@"AccountTokenSignature"];
      if (v8)
      {
        v9 = v8;
        v10 = [v3 objectForKeyedSubscript:@"DeviceCertificate"];

        if (v10)
        {
          v11 = v3;
          v5 = 0;
          if (!a2)
          {
            goto LABEL_22;
          }

          goto LABEL_20;
        }
      }

      else
      {
      }
    }

    v12 = @"device-activation";
    v13 = [v3 objectForKeyedSubscript:@"device-activation"];

    if (v13 || (v12 = @"iphone-activation", v14 = [v3 objectForKeyedSubscript:@"iphone-activation"], v14, v14))
    {
      v5 = [v3 objectForKeyedSubscript:v12];
    }

    else
    {
      v5 = 0;
    }

    v11 = isNSDictionary(v5);

    if (v11)
    {
      v15 = [v5 objectForKeyedSubscript:@"activation-record"];

      v16 = isNSDictionary(v15);
      if (v16)
      {
        v11 = v15;
        v5 = v11;
        if (!a2)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v18 = createMobileActivationError("getActivationRecordFromData", 173, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Input data is missing activation record.");

        v11 = 0;
        v4 = v18;
        v5 = v15;
        if (!a2)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v17 = createMobileActivationError("getActivationRecordFromData", 167, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Input data is missing activation ticket.");

      v4 = v17;
      if (!a2)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_22;
    }
  }

LABEL_20:
  if (!v11)
  {
    v19 = v4;
    *a2 = v4;
  }

LABEL_22:
  v20 = v11;

  return v11;
}

id createMobileActivationError(uint64_t a1, uint64_t a2, id a3, uint64_t a4, void *a5, void *a6, ...)
{
  va_start(va, a6);
  v11 = a3;
  v12 = a5;
  v13 = MEMORY[0x277CCAB68];
  v14 = a6;
  v15 = [[v13 alloc] initWithFormat:v14 arguments:va];

  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = v16;
  if (v15)
  {
    [v16 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (v12)
  {
    [v17 setObject:v12 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  if (os_variant_allows_internal_security_policies())
  {
    if (a1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
      [v17 setObject:v18 forKeyedSubscript:@"FunctionName"];
    }

    if (a2)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
      [v17 setObject:v19 forKeyedSubscript:@"SourceLine"];
    }
  }

  v20 = [MEMORY[0x277CCA9B8] errorWithDomain:v11 code:a4 userInfo:v17];

  return v20;
}

id isNSNumber(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSDictionary(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSData(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_259A63E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_259A64264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_259A64630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_259A649DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_259A64DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_259A651A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_259A65580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_259A6590C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_259A65C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259A65F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259A661EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259A66498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259A667A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_259A66B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_259A66E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259A670E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259A6742C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_259A677A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_259A67DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32b40r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 7);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

void __destroy_helper_block_e8_32s40r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);
}

void __copy_helper_block_e8_32s40b48r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  _Block_object_assign((a1 + 40), *(a2 + 40), 7);
  v5 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v5, 8);
}

void __destroy_helper_block_e8_32s40s48r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 48), 8);

  v2 = *(a1 + 32);
}

void sub_259A683D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_259A687E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_259A68B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32s40b48r56r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  _Block_object_assign((a1 + 40), *(a2 + 40), 7);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  v5 = *(a2 + 56);

  _Block_object_assign((a1 + 56), v5, 8);
}

void __destroy_helper_block_e8_32s40s48r56r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);

  v2 = *(a1 + 32);
}

void sub_259A69188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259A693DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259A696B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_259A69CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 192), 8);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32r40r48r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  v4 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v4, 8);
}

void __destroy_helper_block_e8_32r40r48r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

void sub_259A6A1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259A6A4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t isInFieldCollected(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 isInFieldCollected:a1];

  return v3;
}

uint64_t isUCRTAvailable(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 isUCRTAvailable:a1];

  return v3;
}

id copyPCRTToken(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 copyPCRTToken:a1];

  return v3;
}

uint64_t isDeviceABrick(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 isDeviceABrick:a1];

  return v3;
}

id getUCRTActivationLockState(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 getUCRTActivationLockState:a1];

  return v3;
}

id getActivationBuild(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 getActivationBuild:a1];

  return v3;
}

id createTunnel1SessionInfo(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 createTunnel1SessionInfo:a1];

  return v3;
}

id createTunnel1ActivationInfo(void *a1, id a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v7 = objc_opt_new();
  v8 = [v7 createTunnel1ActivationInfo:v6 options:v5 error:a3];

  return v8;
}

id createActivationInfo(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 createActivationInfo:a1];

  return v3;
}

uint64_t handleActivationInfo(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_opt_new();
  v5 = [v4 handleActivationInfo:v3 withError:a2];

  return v5;
}

uint64_t handleActivationInfoWithSession(void *a1, id a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v7 = objc_opt_new();
  v8 = [v7 handleActivationInfoWithSession:v6 activationSignature:v5 error:a3];

  return v8;
}

uint64_t deactivateDevice(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 deactivateDevice:a1];

  return v3;
}

uint64_t reactivateDevice(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 reactivateDevice:a1];

  return v3;
}

uint64_t unbrickDevice(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 unbrickDevice:a1];

  return v3;
}

uint64_t recertifyDevice(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 recertifyDeviceWithError:a1];

  return v3;
}

id copyActivationRecord(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 copyActivationRecord:a1];

  return v3;
}

id copyRegionDataForGestalt(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 copyRegionDataForGestalt:a1];

  return v3;
}

id issueClientCertificateLegacy(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_opt_new();
  v5 = [v4 issueClientCertificateLegacy:v3 error:a2];

  return v5;
}

void updateBasebandTicket(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a6;
  v13 = a5;
  v14 = objc_opt_new();
  if (!v11)
  {
    v11 = dispatch_get_global_queue(0, 0);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3254779904;
  v17[2] = __updateBasebandTicket_block_invoke;
  v17[3] = &__block_descriptor_48_e8_32s40bs_e34_v24__0__NSDictionary_8__NSError_16l;
  v18 = v11;
  v19 = v12;
  v15 = v12;
  v16 = v11;
  [v14 updateBasebandTicket:a2 baaCert:a3 baaIntermediateCert:a4 options:v13 withCompletion:v17];
}

void __updateBasebandTicket_block_invoke(uint64_t a1, int a2, id a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3254779904;
  v8[2] = __updateBasebandTicket_block_invoke_2;
  v8[3] = &__block_descriptor_48_e8_32s40bs_e5_v8__0l;
  v9 = v4;
  v10 = v5;
  v7 = v4;
  dispatch_async(v6, v8);
}

uint64_t __updateBasebandTicket_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __copy_helper_block_e8_32s40b(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v5, 7);
}

void __destroy_helper_block_e8_32s40s(uint64_t a1)
{
  v2 = *(a1 + 32);
}

id getDCRTState(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_opt_new();
  v5 = [v4 getDCRTState:v3 withError:a2];

  return v5;
}

id copyDCRT(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_opt_new();
  v5 = [v4 copyDCRT:v3 withError:a2];

  return v5;
}

void issueDCRT(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = a2;
  v8 = objc_opt_new();
  if (!v5)
  {
    v5 = dispatch_get_global_queue(0, 0);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3254779904;
  v11[2] = __issueDCRT_block_invoke;
  v11[3] = &__block_descriptor_48_e8_32s40bs_e28_v24__0__NSData_8__NSError_16l;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  [v8 issueDCRT:v7 withCompletion:v11];
}

void __issueDCRT_block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3254779904;
  block[2] = __issueDCRT_block_invoke_2;
  block[3] = &__block_descriptor_56_e8_32s40s48bs_e5_v8__0l;
  v13 = v6;
  v14 = v7;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

uint64_t __issueDCRT_block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void __copy_helper_block_e8_32s40s48b(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v6, 7);
}

void __destroy_helper_block_e8_32s40s48s(uint64_t a1)
{
  v2 = *(a1 + 32);
}

uint64_t issueUCRT(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_opt_new();
  v5 = [v4 issueUCRT:v3 withError:a2];

  return v5;
}

void issueCollection(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = a2;
  v8 = objc_opt_new();
  if (!v5)
  {
    v5 = dispatch_get_global_queue(0, 0);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3254779904;
  v11[2] = __issueCollection_block_invoke;
  v11[3] = &__block_descriptor_48_e8_32s40bs_e17_v16__0__NSError_8l;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  [v8 issueCollection:v7 withCompletion:v11];
}

void __issueCollection_block_invoke(uint64_t a1, id a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3254779904;
  v7[2] = __issueCollection_block_invoke_2;
  v7[3] = &__block_descriptor_48_e8_32s40bs_e5_v8__0l;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __issueCollection_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

uint64_t ucrtUpgradeRequired(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 ucrtUpgradeRequired:a1];

  return v3;
}

uint64_t copyLegacyDeviceIdentity(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 copyLegacyDeviceIdentity:a1];

  return v3;
}

uint64_t deleteLegacyDeviceIdentity(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 deleteLegacyDeviceIdentity:a1];

  return v3;
}

id copyUCRTVersionInfo(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 copyUCRTVersionInfo:a1];

  return v3;
}

uint64_t MAGetActivationState()
{
  v0 = getActivationState(0);
  if ([v0 isEqual:@"Activated"])
  {
    v1 = 1;
  }

  else
  {
    v1 = [v0 isEqual:@"FactoryActivated"];
  }

  return v1;
}

uint64_t MAUCRTActivationLocked()
{
  v0 = getUCRTActivationLockState(0);
  v1 = [v0 isEqualToString:@"UCRTActivationLocked"];

  return v1;
}

id parseDERCertificatesFromChain(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  memset(v16, 0, sizeof(v16));
  v15 = 0;
  if (!v3)
  {
    MobileActivationError = createMobileActivationError("parseDERCertificatesFromChain", 106, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
LABEL_11:
    v7 = MobileActivationError;
    v8 = 0;
    goto LABEL_12;
  }

  v5 = [v3 bytes];
  v6 = CTParseCertificateSet(v5, v5 + [v4 length], v16, 3, &v15);
  if (v6 || !v15)
  {
    MobileActivationError = createMobileActivationError("parseDERCertificatesFromChain", 115, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to parse certificate set: 0x%08x", v6);
    goto LABEL_11;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = v7;
  if (v7)
  {
    if (v15)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:*&v16[v9] length:*(&v16[v9] + 1)];
        [v8 setObject:v11 atIndexedSubscript:v9];

        v9 = ++v10;
      }

      while (v15 > v10);
    }

    v8 = v8;
    v7 = 0;
  }

LABEL_12:
  if (a2 && !v8)
  {
    v7 = v7;
    *a2 = v7;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t MAECreateStorebagRequest(void *a1)
{
  v2 = objc_alloc(MEMORY[0x277CCAB70]);
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"https://init.itunes.apple.com/bag.xml?ix=5"];
  LODWORD(v4) = NETWORK_TIMEOUT_SECONDS;
  v5 = [v2 initWithURL:v3 cachePolicy:0 timeoutInterval:v4];

  if (v5)
  {
    [v5 setValue:@"iOS Device Activator (MobileActivation-1068.42.2)" forHTTPHeaderField:@"User-Agent"];
    if (a1)
    {
      v6 = v5;
      v7 = 0;
      *a1 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  return v7;
}

id MAEGetActivationURLFromStorebagWithError(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (!v5)
  {
    v11 = createMobileActivationError("MAEGetActivationURLFromStorebagWithError", 84, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v13 = 0;
    v7 = 0;
    v9 = 0;
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v19 = 0;
  v7 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:0 error:&v19];
  v8 = v19;
  v9 = isNSDictionary(v7);

  if (!v9)
  {
    v11 = createMobileActivationError("MAEGetActivationURLFromStorebagWithError", 93, @"com.apple.MobileActivation.ErrorDomain", -1, v8, @"Failed to create dictionary from data.");

    v13 = 0;
    goto LABEL_10;
  }

  v9 = [v7 objectForKey:@"bag"];
  v10 = isNSData(v9);

  if (!v10)
  {
    v11 = createMobileActivationError("MAEGetActivationURLFromStorebagWithError", 99, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Storebag data is missing bag key.");

    v13 = 0;
LABEL_11:
    v12 = 0;
    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v18 = 0;
  v10 = [MEMORY[0x277CCAC58] propertyListWithData:v9 options:0 format:0 error:&v18];
  v11 = v18;

  v12 = isNSDictionary(v10);
  if (v12)
  {
    v12 = [v10 objectForKey:@"device-activation"];
    v13 = isNSString(v12);

    if (v13)
    {
      v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
      if (!a3)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    v17 = createMobileActivationError("MAEGetActivationURLFromStorebagWithError", 114, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Storebag data is missing device-activation key.");
  }

  else
  {
    v17 = createMobileActivationError("MAEGetActivationURLFromStorebagWithError", 108, @"com.apple.MobileActivation.ErrorDomain", -1, v11, @"Failed to create dictionary from data");

    v13 = 0;
  }

  v11 = v17;
  if (!a3)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (!v13)
  {
    v14 = v11;
    *a3 = v11;
  }

LABEL_14:
  v15 = v13;

  return v15;
}

uint64_t MAEActivateDeviceWithError(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    v10 = 0;
    v7 = activateThroughMAD(v5, v6, &v10);
    v8 = v10;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = createMobileActivationError("MAEActivateDeviceWithError", 170, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v7 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if ((v7 & 1) == 0)
  {
    v8 = v8;
    *a3 = v8;
  }

LABEL_7:

  return v7;
}

uint64_t MAETryActivate(void *a1, _BYTE *a2, void *a3)
{
  v4 = MAEActivateDeviceWithError(a1, a3, 0);
  if (a2)
  {
    *a2 = v4;
  }

  return (v4 - 1);
}

uint64_t MAECreateActivationRequestWithError(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = v8;
  if (v8 && (v10 = [v8 objectForKeyedSubscript:@"FactoryActivation"], v11 = isNSNumber(v10), v11, v10, v11) && (v12 = objc_msgSend(v9, "objectForKeyedSubscript:", @"FactoryActivation"), v13 = objc_msgSend(v12, "BOOLValue"), v12, v13))
  {
    v26 = 0;
    v27 = 0;
    v14 = createFactoryActivationRequestFromMAD(&v27, v9, &v26);
    v15 = v27;
    v16 = v26;
    if ((v14 & 1) == 0)
    {
      MobileActivationError = createMobileActivationError("MAECreateActivationRequestWithError", 223, @"com.apple.MobileActivation.ErrorDomain", -1, v16, @"Failed to create activation request.");
      goto LABEL_11;
    }
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v18 = createTunnel1ActivationRequestFromMAD(&v25, v7, v9, &v24);
    v15 = v25;
    v16 = v24;
    if ((v18 & 1) == 0)
    {
      MobileActivationError = createMobileActivationError("MAECreateActivationRequestWithError", 228, @"com.apple.MobileActivation.ErrorDomain", -1, v16, @"Failed to create activation request.");
LABEL_11:
      v19 = MobileActivationError;

      if (a4)
      {
        v22 = v19;
        v21 = 0;
        *a4 = v19;
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_14;
    }
  }

  v19 = v16;
  if (a2)
  {
    v20 = v15;
    *a2 = v15;
  }

  v21 = 1;
LABEL_14:

  return v21;
}

uint64_t MAECreateSessionRequestWithError(void *a1, void *a2, void *a3)
{
  v12 = 0;
  v13 = 0;
  LODWORD(v5) = createTunnel1SessionRequestFromMAD(&v13, a2, &v12);
  v6 = v13;
  v7 = v12;
  if (v6)
  {
    v5 = v5;
  }

  else
  {
    v5 = 0;
  }

  if (a1 && v5)
  {
    v8 = v6;
    *a1 = v6;
  }

  if (a3)
  {
    v9 = v5;
  }

  else
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    v10 = v7;
    *a3 = v7;
  }

  return v5;
}

uint64_t MAECreateActivationRequest(void *a1, id *a2, void *a3)
{
  v5 = a1;
  if (MAECreateActivationRequestWithError(0, a2, a3, 0))
  {
    if (v5)
    {
      v6 = MAEGetActivationURLFromStorebagWithError(v5, 0, 0);
      v7 = v6;
      v8 = 0;
      if (a2 && v6)
      {
        [*a2 setURL:v6];
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0xFFFFFFFFLL;
  }

  return v8;
}

BOOL MAEGetActivationBuild()
{
  v0 = getActivationBuild(0);
  v1 = [v0 compare:@"12A" options:64] > 0;

  return v1;
}

id MAEHandleActivationInfo(void *a1)
{
  v1 = MEMORY[0x277CBEB38];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = handleActivationInfo(v2, 0);

  if ((v4 & 1) == 0)
  {
    [v3 setObject:@"InvalidActivationRecord" forKeyedSubscript:@"Error"];
  }

  return v3;
}

void MAEIssueDCRTWithCallback(void *a1, void *a2, id a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3254779904;
  v7[2] = __MAEIssueDCRTWithCallback_block_invoke;
  v7[3] = &__block_descriptor_40_e8_32bs_e28_v24__0__NSData_8__NSError_16l;
  v8 = v5;
  v6 = v5;
  issueDCRT(a1, a2, v7);
}

void MAEIssueDCRTWithCompletion(void *a1, void *a2, id a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3254779904;
  v7[2] = __MAEIssueDCRTWithCompletion_block_invoke;
  v7[3] = &__block_descriptor_40_e8_32bs_e28_v24__0__NSData_8__NSError_16l;
  v8 = v5;
  v6 = v5;
  issueDCRT(a1, a2, v7);
}

void __MAEIssueDCRTWithCompletion_block_invoke(uint64_t a1, id a2, void *a3)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_11;
  }

  v18 = 0;
  v9 = parseDERCertificatesFromChain(v5, &v18);
  v8 = v18;
  if (!v9)
  {
    v16 = createMobileActivationError("MAEIssueDCRTWithCompletion_block_invoke", 450, @"com.apple.MobileActivation.ErrorDomain", -1, v8, @"Failed to query certificate(s) from DER data.");

    v10 = 0;
    v11 = 0;
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v13 = *MEMORY[0x277CBECE8];
  v14 = [v9 objectAtIndexedSubscript:0];
  v11 = SecCertificateCreateWithData(v13, v14);

  if (!v11)
  {
    v16 = createMobileActivationError("MAEIssueDCRTWithCompletion_block_invoke", 456, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create certificate from pem data.");

    v10 = 0;
    goto LABEL_9;
  }

  v15 = [v9 objectAtIndexedSubscript:1];
  v12 = SecCertificateCreateWithData(v13, v15);

  if (v12)
  {
    v19[0] = v11;
    v19[1] = v12;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    goto LABEL_11;
  }

  v16 = createMobileActivationError("MAEIssueDCRTWithCompletion_block_invoke", 462, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create certificate from pem data.");

  v10 = 0;
LABEL_10:
  v8 = v16;
LABEL_11:
  (*(*(a1 + 32) + 16))();
  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void MAEPerformCollectionWithCompletion(void *a1, void *a2, id a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3254779904;
  v7[2] = __MAEPerformCollectionWithCompletion_block_invoke;
  v7[3] = &__block_descriptor_40_e8_32bs_e17_v16__0__NSError_8l;
  v8 = v5;
  v6 = v5;
  issueCollection(a1, a2, v7);
}

BOOL MAEGetUCRTOSVersionInfoWithError(void *a1, void *a2, void *a3)
{
  v17 = 0;
  v6 = copyUCRTVersionInfo(&v17);
  v7 = v17;
  v8 = v7;
  if (v6)
  {
    v9 = [v6 objectForKeyedSubscript:@"ProductVersion"];
    v10 = isNSString(v9);

    v11 = [v6 objectForKeyedSubscript:@"BuildVersion"];
    v12 = isNSString(v11);

    if (a1 && [v10 length])
    {
      v13 = v10;
      *a1 = v10;
    }

    if (a2 && [v12 length])
    {
      v14 = v12;
      *a2 = v12;
    }
  }

  else if (a3)
  {
    v15 = v7;
    v12 = 0;
    v10 = 0;
    *a3 = v8;
  }

  else
  {
    v12 = 0;
    v10 = 0;
  }

  return v6 != 0;
}

uint64_t createXMLRequest(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!v5)
  {
    v7 = createMobileActivationError("createXMLRequest", 57, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v6 = 0;
    if (a3)
    {
LABEL_12:
      v17 = v7;
      v14 = 0;
      v9 = 0;
      *a3 = v7;
      goto LABEL_13;
    }

LABEL_8:
    v14 = 0;
    v9 = 0;
    goto LABEL_13;
  }

  v19 = 0;
  v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:v5 format:100 options:0 error:&v19];
  v7 = v19;
  if (!v6)
  {
    MobileActivationError = createMobileActivationError("createXMLRequest", 67, @"com.apple.MobileActivation.ErrorDomain", -1, v7, @"Failed to convert dictionary to data");
    goto LABEL_11;
  }

  v8 = objc_alloc_init(MEMORY[0x277CCAB70]);
  if (!v8)
  {
    MobileActivationError = createMobileActivationError("createXMLRequest", 74, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate request.");
LABEL_11:
    v16 = MobileActivationError;

    v7 = v16;
    if (a3)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v9 = v8;
  [v8 setCachePolicy:0];
  LODWORD(v10) = NETWORK_TIMEOUT_SECONDS;
  [v9 setTimeoutInterval:v10];
  [v9 setHTTPMethod:@"POST"];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"application/xml"];
  [v9 setValue:v11 forHTTPHeaderField:@"Content-Type"];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v6, "length")];
  [v9 setValue:v12 forHTTPHeaderField:@"Content-Length"];

  [v9 setHTTPBody:v6];
  if (a2)
  {
    v13 = v9;
    *a2 = v9;
  }

  v14 = 1;
LABEL_13:

  return v14;
}

id security_create_external_representation(__SecKey *a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    a2 = createMobileActivationError("security_create_external_representation", 328, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.");
    v6 = 0;
    if (a3)
    {
LABEL_11:
      v14 = a2;
      v11 = 0;
      *a3 = a2;
      goto LABEL_12;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_12;
  }

  v5 = SecKeyCopyAttributes(a1);
  v6 = v5;
  if (!v5)
  {
    MobileActivationError = createMobileActivationError("security_create_external_representation", 334, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy RK attributes.");
    goto LABEL_10;
  }

  v7 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CDC178]];
  if (!v7)
  {
    MobileActivationError = createMobileActivationError("security_create_external_representation", 340, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to encode RK as data.");
LABEL_10:
    a2 = MobileActivationError;
    if (a3)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v8 = v7;
  v9 = *MEMORY[0x277CDC5D0];
  v10 = [(__CFDictionary *)v6 objectForKeyedSubscript:*MEMORY[0x277CDC5D0]];

  v11 = v8;
  if (a2)
  {
    v17 = v9;
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v10 != 0];
    v18[0] = v12;
    *a2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

    a2 = 0;
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

unint64_t X509PolicyCheckForBlockedKeys(uint64_t a1)
{
  result = a1 + 88;
  if (result > a1 + 104)
  {
    __break(0x5519u);
  }

  else
  {
    result = compare_octet_string(result, &BlockedYonkersSPKI);
    if (!result)
    {
      *(a1 + 240) &= 0xFFFFFFFFFFF3FFFFLL;
    }
  }

  return result;
}

uint64_t compare_octet_string(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return memcmp(*a1, *a2, v2);
  }

  if (v2 > v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_raw(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 8);
  if (v3 == a3)
  {
    return memcmp(*a1, a2, a3);
  }

  if (v3 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t ccder_blob_decode_AlgorithmIdentifierNULL(unint64_t *a1, unint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 > a1[1])
    {
      goto LABEL_20;
    }

    v6 = *a1;
    v7 = *a1;
    result = ccder_blob_decode_tl();
    if (result)
    {
      if (a2)
      {
        if (v7 < v6)
        {
          goto LABEL_20;
        }

        *a2 = v6;
        a2[1] = 0;
      }

      if (v6 == v7)
      {
        if (v6 <= a1[1] && *a1 <= v6)
        {
          *a1 = v6;
LABEL_18:
          result = 1;
          goto LABEL_19;
        }

LABEL_20:
        __break(0x5519u);
      }

      if (v6 > v7)
      {
        goto LABEL_20;
      }

      result = ccder_blob_decode_tl();
      if (result)
      {
        if (v6 != v7)
        {
          result = 0;
          goto LABEL_19;
        }

        if (v6 <= a1[1] && *a1 <= v6)
        {
          *a1 = v6;
          goto LABEL_18;
        }

        goto LABEL_20;
      }
    }
  }

LABEL_19:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ccder_blob_check_null()
{
  v2 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CTParseCertificateSet(unint64_t a1, unint64_t a2, _OWORD *a3, uint64_t a4, void *a5)
{
  v6 = 0;
  v19 = *MEMORY[0x277D85DE8];
  if (a1 < a2 && a4)
  {
    v8 = 0;
    v9 = a4 - 1;
    v10 = a3;
    v11 = &a3[a4];
    while (1)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v18[17] = v12;
      v18[18] = v12;
      v18[15] = v12;
      v18[16] = v12;
      v18[13] = v12;
      v18[14] = v12;
      v18[11] = v12;
      v18[12] = v12;
      v18[9] = v12;
      v18[10] = v12;
      v18[7] = v12;
      v18[8] = v12;
      v18[5] = v12;
      v18[6] = v12;
      v18[3] = v12;
      v18[4] = v12;
      v18[1] = v12;
      v18[2] = v12;
      v18[0] = v12;
      v16 = a1;
      v17 = a2;
      result = X509CertificateParse(v18, &v16);
      if (result)
      {
        break;
      }

      a1 = v16;
      a2 = v17;
      if (v16 > v17 || v10 < a3 || (v10 + 1) > v11 || v10 > v10 + 1)
      {
        __break(0x5519u);
      }

      *v10 = v18[0];
      v6 = v8 + 1;
      if (a1 < a2)
      {
        ++v10;
        if (v9 != v8++)
        {
          continue;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
LABEL_12:
    result = 0;
    if (a5)
    {
      *a5 = v6;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509CertificateParseImplicit(unint64_t a1, unint64_t *a2, const void *a3, size_t a4)
{
  v72 = *MEMORY[0x277D85DE8];
  v69 = 0;
  v70 = 0;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  v68 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 > v5)
  {
    goto LABEL_189;
  }

  v67 = *a2;
  v68 = v5;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  if (a1 + 304 < a1)
  {
    goto LABEL_189;
  }

  v10 = 720915;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_56;
  }

  v12 = v70;
  v13 = v67;
  v14 = v70 + v67 - v4;
  if (__CFADD__(v70, v67 - v4))
  {
    goto LABEL_191;
  }

  if (v14 > v5 - v4)
  {
    goto LABEL_189;
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  v65 = 0xAAAAAAAAAAAAAAAALL;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v13, v12))
  {
    goto LABEL_190;
  }

  v15 = v13 + v12;
  if (v13 > v15 || v15 > v68)
  {
    goto LABEL_189;
  }

  v65 = v13;
  v66 = v15;
  v63 = v13;
  v64 = v15;
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (__CFADD__(v63, v69))
    {
      goto LABEL_190;
    }

    if (!ccder_blob_decode_uint64() || v63 != v63 + v69)
    {
      v10 = 720916;
      goto LABEL_56;
    }

    if (v63 + v69 > v64)
    {
      goto LABEL_189;
    }

    v65 = v63;
    v66 = v64;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720917;
    goto LABEL_56;
  }

  v16 = v65;
  v17 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v18 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 136) = v65;
  *(a1 + 144) = v18;
  if (__CFADD__(v16, v18))
  {
    goto LABEL_190;
  }

  v19 = v16 + v18;
  if (v19 > v17)
  {
    goto LABEL_189;
  }

  if (v16 > v19)
  {
    goto LABEL_189;
  }

  v65 = v19;
  if (a1 + 152 > a1 + 168)
  {
    goto LABEL_189;
  }

  if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v65, (a1 + 152)))
  {
    v10 = 720918;
    goto LABEL_56;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720919;
    goto LABEL_56;
  }

  v20 = v65;
  v21 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v22 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 120) = v65;
  *(a1 + 128) = v22;
  if (__CFADD__(v20, v22))
  {
    goto LABEL_190;
  }

  v23 = v20 + v22;
  if (v23 > v21 || v20 > v23)
  {
    goto LABEL_189;
  }

  v65 = v23;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720920;
    goto LABEL_56;
  }

  v24 = v65;
  v25 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v26 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 72) = v65;
  *(a1 + 80) = v26;
  if (__CFADD__(v24, v26))
  {
    goto LABEL_190;
  }

  v27 = v24 + v26;
  if (v27 > v25 || v24 > v27)
  {
    goto LABEL_189;
  }

  v65 = v27;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720921;
    goto LABEL_56;
  }

  v28 = v65;
  v29 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v30 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 104) = v65;
  *(a1 + 112) = v30;
  if (__CFADD__(v28, v30))
  {
    goto LABEL_190;
  }

  v31 = v28 + v30;
  if (v28 + v30 > v29 || v28 > v31)
  {
    goto LABEL_189;
  }

  v65 = v28 + v30;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720922;
    goto LABEL_56;
  }

  v32 = v65;
  v33 = v69;
  v34 = v65 - v31 + v69;
  if (__CFADD__(v65 - v31, v69))
  {
    goto LABEL_191;
  }

  if (v34 > v29 - v31)
  {
    goto LABEL_189;
  }

  *(a1 + 88) = v31;
  *(a1 + 96) = v34;
  if (__CFADD__(v32, v33))
  {
LABEL_190:
    __break(0x5513u);
    goto LABEL_191;
  }

  v35 = v32 + v33;
  if (v32 > v35 || v35 > v66)
  {
    goto LABEL_189;
  }

  v64 = v66;
  v65 = v35;
  v63 = v35;
  if (ccder_blob_decode_tl())
  {
    v10 = 720923;
    goto LABEL_56;
  }

  if (v65 > v66)
  {
    goto LABEL_189;
  }

  v63 = v65;
  v64 = v66;
  if (ccder_blob_decode_tl())
  {
    v10 = 720924;
    goto LABEL_56;
  }

  if (v65 > v66)
  {
    goto LABEL_189;
  }

  v63 = v65;
  v64 = v66;
  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_167:
    if (*(a1 + 32) < 3uLL)
    {
      if (v65 != v66)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v66 > a2[1] || *a2 > v66)
      {
        goto LABEL_189;
      }

      *a2 = v66;
    }

    if (!__CFADD__(v67, v70))
    {
      if (v67 > v67 + v70 || v67 + v70 > v68)
      {
        goto LABEL_189;
      }

      v67 += v70;
      if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v67, (a1 + 40)))
      {
        v10 = 720937;
        goto LABEL_56;
      }

      *&v71[0] = 0xAAAAAAAAAAAAAAAALL;
      *(&v71[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v61 = 0;
      result = ccder_blob_decode_bitstring();
      if (!result)
      {
        v10 = 720938;
        goto LABEL_56;
      }

      if (v61 < 0xFFFFFFFFFFFFFFF9)
      {
        if (*(&v71[0] + 1) >= *&v71[0])
        {
          v52 = (v61 + 7) >> 3;
          if (v52 <= *(&v71[0] + 1) - *&v71[0])
          {
            *(a1 + 56) = *&v71[0];
            *(a1 + 64) = v52;
            v53 = v68;
            if (v67 <= v68)
            {
              v10 = 0;
              *a2 = v67;
              a2[1] = v53;
              goto LABEL_56;
            }
          }
        }

        goto LABEL_189;
      }

LABEL_191:
      __break(0x5500u);
LABEL_192:
      __break(0x5507u);
      return result;
    }

    goto LABEL_190;
  }

  v61 = 0xAAAAAAAAAAAAAAAALL;
  v62 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v63, v69))
  {
    goto LABEL_190;
  }

  if (v63 > v63 + v69 || v63 + v69 > v64)
  {
    goto LABEL_189;
  }

  v61 = v63;
  v62 = v63 + v69;
  result = ccder_blob_decode_tl();
  if (!result || !v69)
  {
    goto LABEL_163;
  }

  v37 = v61;
  if (__CFADD__(v61, v69))
  {
    goto LABEL_190;
  }

  v38 = v61 + v69;
  if (v61 > v61 + v69 || v38 > v62)
  {
    goto LABEL_189;
  }

  v62 = v61 + v69;
  *(a1 + 266) = 0;
  memset(&v71[2], 0, 128);
  if (a3)
  {
    v39 = a4 == 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = !v39;
  memset(v71, 0, 32);
  if (v37 >= v38)
  {
LABEL_162:
    if (v37 != v38)
    {
LABEL_163:
      v10 = 720925;
      goto LABEL_56;
    }

    if (v37 > v66 || v65 > v37)
    {
LABEL_189:
      __break(0x5519u);
    }

    v65 = v38;
    goto LABEL_167;
  }

  v54 = 0;
  v41 = 0;
  while (1)
  {
    v59 = 0xAAAAAAAAAAAAAAAALL;
    v60 = 0xAAAAAAAAAAAAAAAALL;
    v58 = 0;
    v57 = 0;
    result = ccder_blob_decode_tl();
    if ((result & 1) == 0)
    {
LABEL_184:
      v10 = 720926;
      goto LABEL_56;
    }

    v55 = 0xAAAAAAAAAAAAAAAALL;
    v56 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v61, v57))
    {
      goto LABEL_190;
    }

    if (v61 > v61 + v57 || v61 + v57 > v62)
    {
      goto LABEL_189;
    }

    v55 = v61;
    v56 = v61 + v57;
    result = ccder_blob_decode_tl();
    if (!result)
    {
      v10 = 720927;
      goto LABEL_56;
    }

    if (v56 < v55 || v69 > v56 - v55)
    {
      goto LABEL_189;
    }

    v59 = v55;
    v60 = v69;
    if (__CFADD__(v55, v69))
    {
      goto LABEL_190;
    }

    if (v55 + v69 > v56 || v55 > v55 + v69)
    {
      goto LABEL_189;
    }

    v55 += v69;
    if (!der_get_BOOLean(&v55, 1, &v58))
    {
      break;
    }

    result = ccder_blob_decode_tl();
    if (!result)
    {
      goto LABEL_185;
    }

    if (__CFADD__(v55, v69))
    {
      goto LABEL_190;
    }

    if (v56 != v55 + v69)
    {
LABEL_185:
      v10 = 720929;
      goto LABEL_56;
    }

    if (v40)
    {
      result = compare_octet_string_raw(&v59, a3, a4);
      if (!result)
      {
        if (v56 < v55)
        {
          goto LABEL_189;
        }

        v43 = v69;
        if (v69 > v56 - v55)
        {
          goto LABEL_189;
        }

        *(a1 + 248) = v55;
        *(a1 + 256) = v43;
      }
    }

    if (v60 == 3)
    {
      if (*v59 == 7509 && *(v59 + 2) == 15)
      {
        v50 = 720930;
        if (v41)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseKeyUsage(&v55);
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 1u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 19)
      {
        v50 = 720931;
        if ((v41 & 2) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseBasicConstraints(&v55, (a1 + 200), (a1 + 265));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 2u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 35)
      {
        v50 = 720932;
        if ((v41 & 4) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseAuthorityKeyIdentifier(&v55, (a1 + 168), (a1 + 176));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 4u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 14)
      {
        v50 = 720933;
        if ((v41 & 8) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseSubjectKeyIdentifier(&v55, (a1 + 184), (a1 + 192));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 8u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 37)
      {
        v50 = 720934;
        if ((v41 & 0x10) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseExtendedKeyUsage(&v55, (a1 + 208), (a1 + 216));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 0x10u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 17)
      {
        v50 = 720935;
        if ((v41 & 0x20) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseSubjectAltName(&v55, (a1 + 224), (a1 + 232));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 0x20u;
        goto LABEL_157;
      }

LABEL_133:
      if (__CFADD__(v55, v69))
      {
        goto LABEL_190;
      }

      if (v55 > v55 + v69 || v55 + v69 > v56)
      {
        goto LABEL_189;
      }

      v55 += v69;
      if (v58 == 1)
      {
        *(a1 + 266) = v58;
      }

      goto LABEL_157;
    }

    if (v60 < 8)
    {
      goto LABEL_133;
    }

    if (*v59 != -2042067414 || *(v59 + 3) != 1684273030)
    {
      goto LABEL_133;
    }

    v50 = 720936;
    if (!X509CertificateVerifyOnlyOneAppleExtension(&v59, v71, v54) || (result = X509ExtensionParseAppleExtension(&v55, v59, v60, (a1 + 240), (a1 + 248), v40), !result))
    {
LABEL_187:
      v10 = v50;
      goto LABEL_56;
    }

    if (v54 == 0xFF)
    {
      goto LABEL_192;
    }

    ++v54;
LABEL_157:
    if (v55 != v56)
    {
      goto LABEL_184;
    }

    if (__CFADD__(v61, v57))
    {
      goto LABEL_190;
    }

    v37 = v61 + v57;
    if (v61 > v61 + v57)
    {
      goto LABEL_189;
    }

    v38 = v62;
    if (v37 > v62)
    {
      goto LABEL_189;
    }

    v61 += v57;
    if (v37 >= v62)
    {
      goto LABEL_162;
    }
  }

  v10 = 720928;
LABEL_56:
  v36 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t der_get_BOOLean(uint64_t *a1, int a2, _BYTE *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*a1 > a1[1])
  {
    __break(0x5519u);
  }

  v7 = *a1;
  v8 = a1[1];
  if ((ccder_blob_decode_tl() & 1) != 0 || !a2)
  {
    result = 0;
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    result = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509ExtensionParseKeyUsage(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_bitstring();
  if (result)
  {
    *(a1 + 8);
    result = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509ExtensionParseBasicConstraints(uint64_t *a1, void *a2, _BYTE *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (result)
  {
    result = der_get_BOOLean(a1, 1, a3);
    if (result)
    {
      if (ccder_blob_decode_uint64())
      {
        if (*a3 != 1)
        {
          result = 0;
          goto LABEL_8;
        }

        *a2 = 0xAAAAAAAAAAAAAAAALL;
        *a2 = 0xAAAAAAAAAAAAAAABLL;
      }

      result = 1;
    }
  }

LABEL_8:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509ExtensionParseAuthorityKeyIdentifier(unint64_t *a1, unint64_t *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_14;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    goto LABEL_15;
  }

  if (v7 - 0x5555555555555556 != a1[1])
  {
    result = 0;
LABEL_14:
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (v7 <= v7 - 0x5555555555555556)
  {
    v11 = *a1;
    v12 = a1[1];
    result = ccder_blob_decode_tl();
    if (result)
    {
      if (v12 < v11 || v12 - v11 < 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_16;
      }

      *a2 = v11;
      *a3 = 0xAAAAAAAAAAAAAAAALL;
    }

    v8 = *a1;
    if (*a1 < 0x5555555555555556)
    {
      v9 = v8 - 0x5555555555555556;
      if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
      {
        *a1 = v9;
        result = 1;
        goto LABEL_14;
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(0x5513u);
  }

LABEL_16:
  __break(0x5519u);
  return result;
}

uint64_t X509ExtensionParseSubjectKeyIdentifier(unint64_t *a1, unint64_t *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_12;
  }

  v7 = a1[1];
  v8 = v7 >= *a1;
  v9 = v7 - *a1;
  if (!v8 || v9 < 0xAAAAAAAAAAAAAAAALL)
  {
LABEL_13:
    __break(0x5519u);
  }

  *a2 = *a1;
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v11 = *a1;
  if (*a1 < 0x5555555555555556)
  {
    v12 = v11 - 0x5555555555555556;
    if (v11 <= v11 - 0x5555555555555556 && v12 <= a1[1])
    {
      *a1 = v12;
LABEL_12:
      v14 = *MEMORY[0x277D85DE8];
      return result;
    }

    goto LABEL_13;
  }

  __break(0x5513u);
  return result;
}

uint64_t X509ExtensionParseExtendedKeyUsage(unint64_t *a1, unint64_t *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = ccder_blob_decode_tl();
  result = 0;
  if (!v6)
  {
    goto LABEL_10;
  }

  if (*a1 > a1[1])
  {
    goto LABEL_11;
  }

  v11 = *a1;
  v12 = a1[1];
  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_10:
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (v12 < v11 || v12 - v11 < 0xAAAAAAAAAAAAAAAALL)
  {
LABEL_11:
    __break(0x5519u);
  }

  *a2 = v11;
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v8 = *a1;
  if (*a1 < 0x5555555555555556)
  {
    v9 = v8 - 0x5555555555555556;
    if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
    {
      *a1 = v9;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  __break(0x5513u);
  return result;
}

uint64_t X509ExtensionParseSubjectAltName(unint64_t *a1, unint64_t *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (result != 1)
  {
    goto LABEL_12;
  }

  v7 = a1[1];
  v8 = v7 >= *a1;
  v9 = v7 - *a1;
  if (!v8 || v9 < 0xAAAAAAAAAAAAAAAALL)
  {
LABEL_13:
    __break(0x5519u);
  }

  *a2 = *a1;
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v11 = *a1;
  if (*a1 < 0x5555555555555556)
  {
    v12 = v11 - 0x5555555555555556;
    if (v11 <= v11 - 0x5555555555555556 && v12 <= a1[1])
    {
      *a1 = v12;
LABEL_12:
      v14 = *MEMORY[0x277D85DE8];
      return result;
    }

    goto LABEL_13;
  }

  __break(0x5513u);
  return result;
}

uint64_t X509CertificateVerifyOnlyOneAppleExtension(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 > 9)
  {
    return 0;
  }

  v5 = result;
  v6 = 0;
  v7 = ~a2;
  while (v7 >= 16 * v6)
  {
    result = compare_octet_string(v5, a2 + 16 * v6);
    if (!result)
    {
      return result;
    }

    if (a3 <= v6++)
    {
      v9 = v5[1];
      v10 = (a2 + 16 * a3);
      *v10 = *v5;
      v10[1] = v9;
      return 1;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t X509ExtensionParseAppleExtension(uint64_t result, unint64_t a2, unint64_t a3, uint64_t *a4, unint64_t *a5, int a6)
{
  v67 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    a5 = 0;
  }

  if (a3 == 9)
  {
    if (*a2 == 0xB6463F78648862ALL && *(a2 + 8) == 1)
    {
      v57 = *MEMORY[0x277D85DE8];

      return X509ExtensionParseComponentAuth(result, a4, a5);
    }

    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 49)
    {
      v66 = 0;
      result = der_get_BOOLean(result, 0, &v66);
      if (result)
      {
        v58 = 0x20000040001;
        if (v66)
        {
          v58 = 0x10000080002;
        }

        *a4 |= v58;
      }

      goto LABEL_284;
    }

    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 44)
    {
      v60 = *MEMORY[0x277D85DE8];

      return X509ExtensionParseCertifiedChipIntermediate(result, a4, a5);
    }

    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 36)
    {
      v61 = *MEMORY[0x277D85DE8];

      return X509ExtensionParseMFIAuthv3Leaf(result);
    }

    if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 22)
    {
      if (*a2 == 0xC6463F78648862ALL && *(a2 + 8) == 19)
      {
        result = ccder_blob_check_null();
        if (result)
        {
          v14 = *a4 | 0x8000000000;
          goto LABEL_282;
        }

        goto LABEL_284;
      }

      if (*a2 != 0xA6463F78648862ALL || *(a2 + 8) != 1)
      {
        if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 29)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x2000000;
            goto LABEL_282;
          }
        }

        else
        {
          if (*a2 != 0xC6463F78648862ALL || *(a2 + 8) != 14)
          {
            if (*a2 != 0x86463F78648862ALL || *(a2 + 8) != 3)
            {
              goto LABEL_249;
            }

            v46 = *MEMORY[0x277D85DE8];

            return X509ExtensionParseDeviceAttestationIdentity(result, a4, a5);
          }

          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x4000000;
            goto LABEL_282;
          }
        }

        goto LABEL_284;
      }

      *a4 |= 0x1000000uLL;
LABEL_249:
      v54 = *result;
      v53 = *(result + 8);
LABEL_250:
      if (v54 <= v53)
      {
        *result = v53;
LABEL_283:
        result = 1;
        goto LABEL_284;
      }

      goto LABEL_288;
    }

    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 1048584;
LABEL_204:
    v14 = v55 | v56;
    goto LABEL_282;
  }

  if (a3 != 10)
  {
    if (a3 == 11)
    {
      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10901066463F786)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          goto LABEL_284;
        }

        v14 = *a4 | 0x400000000000;
      }

      else
      {
        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10301066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x200;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10601066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x800;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11801066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x2000;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x12401066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x100000000000;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11901066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x4000;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 != 0x66463F78648862ALL || *(a2 + 3) != 0x21901066463F786)
        {
LABEL_164:
          v35 = 0;
          goto LABEL_165;
        }

        result = ccder_blob_check_null();
        if (!result)
        {
          goto LABEL_284;
        }

        v14 = *a4 | 0x8000;
      }

LABEL_282:
      *a4 = v14;
      goto LABEL_283;
    }

    if (a3 < 0xA)
    {
      goto LABEL_249;
    }

    if ((a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_288;
    }

    goto LABEL_164;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 5122)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 0x800000100000;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 258)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 0x58600003F0D0;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1538)
  {
    goto LABEL_214;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4610)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0xF00;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 278)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x800000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3073)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x10;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1793)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x20000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3329)
  {
LABEL_214:
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x20;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 2305)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x40;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 513)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x80;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1025)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x10000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 769)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x100;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1537)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x400;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 6145)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x1000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 9217)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x80000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8193)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x2000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8705)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x4000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 315)
  {
    v63 = *MEMORY[0x277D85DE8];

    return X509ExtensionParseMFISWAuth(result, a4, a5);
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3074)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x300000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 304)
  {
    v65 = *MEMORY[0x277D85DE8];

    return X509ExtensionParseGenericSSLMarker();
  }

  v35 = 1;
LABEL_165:
  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 27)
  {
    v59 = *MEMORY[0x277D85DE8];

    return X509ExtensionParseServerAuthMarker(result, a2, a3, a4, a5);
  }

  if (!v35)
  {
    goto LABEL_249;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 832)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x400000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3586)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 37748736;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4354)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v55 = *a4;
      v56 = 0x8004000000;
      goto LABEL_204;
    }

LABEL_284:
    v64 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 327)
  {
    if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 3841)
    {
      goto LABEL_249;
    }

    v54 = *result;
    v53 = *(result + 8);
    if (!a5)
    {
LABEL_194:
      *a4 |= 0x80000000uLL;
      goto LABEL_250;
    }

    if (v54 <= v53)
    {
      *a5 = v54;
      a5[1] = v53 - v54;
      goto LABEL_194;
    }

LABEL_288:
    __break(0x5519u);
    return result;
  }

  v62 = *MEMORY[0x277D85DE8];

  return X509ExtensionParseMFI4Properties(result, a4, a5);
}

uint64_t X509CertificateParseWithExtension(unint64_t *a1, unint64_t *a2, const void *a3, size_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = 720939;
  v9 = *a2;
  v10 = a2[1];
  if (!ccder_blob_decode_tl())
  {
    goto LABEL_9;
  }

  v11 = *a2;
  result = X509CertificateParseImplicit(a1, a2, a3, a4);
  v8 = result;
  if (result)
  {
    goto LABEL_9;
  }

  if (v11 >= 0x5555555555555556)
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5500u);
    goto LABEL_12;
  }

  v8 = 720939;
  if (*a2 != v11 - 0x5555555555555556)
  {
LABEL_9:
    v14 = *MEMORY[0x277D85DE8];
    return v8;
  }

  v13 = v11 - v9 - 0x5555555555555556;
  if (v11 - v9 >= 0x5555555555555556)
  {
    goto LABEL_11;
  }

  if (v10 >= v9 && v13 <= v10 - v9)
  {
    *a1 = v9;
    a1[1] = v13;
    X509PolicyCheckForBlockedKeys(a1);
    v8 = 0;
    goto LABEL_9;
  }

LABEL_12:
  __break(0x5519u);
  return result;
}

BOOL X509ExtensionParseComponentAuth(unint64_t *a1, void *a2, unint64_t *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  if (*a1 > v3)
  {
    goto LABEL_19;
  }

  v14 = *a1;
  v15 = a1[1];
  v13 = v3 - *a1;
  if (ccder_blob_decode_tl())
  {
    goto LABEL_5;
  }

  if (*a1 > a1[1])
  {
    goto LABEL_19;
  }

  v14 = *a1;
  v15 = a1[1];
  if (ccder_blob_decode_tl())
  {
LABEL_5:
    v8 = v14;
    v7 = v15;
    if (v14 > v15)
    {
      goto LABEL_19;
    }

    *a1 = v14;
    a1[1] = v15;
    v9 = v13;
  }

  else
  {
    v8 = *a1;
    v7 = a1[1];
    v9 = v7 - *a1;
  }

  if (__CFADD__(v8, v9))
  {
    goto LABEL_20;
  }

  v10 = v8 + v9;
  if (v7 == v8 + v9)
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    if (!a3)
    {
LABEL_15:
      *a2 |= 0x40000000uLL;
LABEL_16:
      if (v8 <= v7)
      {
        *a1 = v10;
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (v8 <= v7 && v9 <= v7 - v8)
    {
      *a3 = v8;
      a3[1] = v9;
      goto LABEL_15;
    }

LABEL_19:
    __break(0x5519u);
LABEL_20:
    __break(0x5513u);
  }

LABEL_18:
  result = v7 == v10;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509ExtensionParseCertifiedChipIntermediate(unint64_t *a1, void *a2, unint64_t *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_10;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
    goto LABEL_12;
  }

  v8 = v7 - 0x5555555555555556;
  if (a1[1] != v7 - 0x5555555555555556)
  {
    result = 0;
LABEL_10:
    v9 = *MEMORY[0x277D85DE8];
    return result;
  }

  *a2 |= 0x30000000000uLL;
  if (a3)
  {
    if (v7 > v8)
    {
      goto LABEL_12;
    }

    *a3 = v7;
    a3[1] = 0xAAAAAAAAAAAAAAAALL;
  }

  if (v7 <= v8)
  {
    *a1 = v8;
    result = 1;
    goto LABEL_10;
  }

LABEL_12:
  __break(0x5519u);
  return result;
}

uint64_t X509ExtensionParseMFIAuthv3Leaf(unint64_t *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_7;
  }

  v3 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
  }

  else
  {
    v4 = a1[1];
    if (v4 != v3 - 0x5555555555555556)
    {
      result = 0;
LABEL_7:
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    if (v3 <= v4)
    {
      *a1 = v3 - 0x5555555555555556;
      result = 1;
      goto LABEL_7;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t X509ExtensionParseMFISWAuth(unint64_t *a1, void *a2, unint64_t *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_11;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
  }

  else
  {
    v8 = a1[1];
    if (v8 != v7 - 0x5555555555555556)
    {
      result = 0;
LABEL_11:
      v9 = *MEMORY[0x277D85DE8];
      return result;
    }

    if (a3)
    {
      if (v8 < v7 || v8 - v7 < 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_13;
      }

      *a3 = v7;
      a3[1] = 0xAAAAAAAAAAAAAAAALL;
    }

    *a2 |= 0x30000000uLL;
    if (v7 <= v8)
    {
      *a1 = v7 - 0x5555555555555556;
      result = 1;
      goto LABEL_11;
    }
  }

LABEL_13:
  __break(0x5519u);
  return result;
}

uint64_t X509ExtensionParseGenericSSLMarker()
{
  v2 = *MEMORY[0x277D85DE8];
  ccder_blob_decode_tl();
  result = 0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509ExtensionParseServerAuthMarker(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  result = ccder_blob_check_null();
  if (result)
  {
    if (a2 > 0xFFFFFFFFFFFFFFF6)
    {
      goto LABEL_26;
    }

    if (__CFADD__(a2, a3))
    {
      goto LABEL_26;
    }

    v10 = a2 + a3;
    if (a2 + a3 == -1)
    {
      goto LABEL_26;
    }

    v11 = a2 + 9;
    v12 = (a2 + 9);
    while (1)
    {
      v13 = v12 < v10 && v12 >= a2;
      v14 = v13;
      if (v12 >= v10 - 1)
      {
        break;
      }

      if (!v14)
      {
        goto LABEL_25;
      }

      v15 = *v12++;
      if ((v15 & 0x80000000) == 0)
      {
        return 0;
      }
    }

    if (!v14)
    {
LABEL_25:
      __break(0x5519u);
LABEL_26:
      __break(0x5513u);
      return result;
    }

    if ((*v12 & 0x80000000) == 0)
    {
      if (!a5)
      {
LABEL_22:
        *a4 |= 0x100000000uLL;
        return 1;
      }

      if (v11 >= a2 && v11 <= v10)
      {
        *a5 = v11;
        a5[1] = a3 - 9;
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    return 0;
  }

  return result;
}

uint64_t X509ExtensionParseDeviceAttestationIdentity(unint64_t *a1, void *a2, unint64_t *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_16;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    goto LABEL_17;
  }

  if (a1[1] != v7 - 0x5555555555555556)
  {
    result = 0;
LABEL_16:
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (v7 <= v7 - 0x5555555555555556)
  {
    v11 = *a1;
    v12 = a1[1];
    result = ccder_blob_decode_tl();
    if (!result)
    {
      goto LABEL_16;
    }

    result = ccder_blob_decode_tl();
    if (!result)
    {
      goto LABEL_16;
    }

    if (a3)
    {
      if (v12 < v11 || v12 - v11 < 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_18;
      }

      *a3 = v11;
      a3[1] = 0xAAAAAAAAAAAAAAAALL;
    }

    *a2 |= 0x240000800000uLL;
    v8 = *a1;
    if (*a1 < 0x5555555555555556)
    {
      v9 = v8 - 0x5555555555555556;
      if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
      {
        *a1 = v9;
        result = 1;
        goto LABEL_16;
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(0x5513u);
  }

LABEL_18:
  __break(0x5519u);
  return result;
}

unint64_t *X509ExtensionParseMFI4Properties(unint64_t *result, void *a2, unint64_t *a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = v3 - *result;
  if (v5 != 32)
  {
    return (v5 == 32);
  }

  if (a3)
  {
    if (v4 > v3)
    {
LABEL_12:
      __break(0x5519u);
      goto LABEL_13;
    }

    *a3 = v4;
    a3[1] = 32;
  }

  *a2 |= 0xC00000000uLL;
  if (v4 < 0xFFFFFFFFFFFFFFE0)
  {
    v6 = v4 + 32;
    if (v4 + 32 <= v3 && v4 <= v6)
    {
      *result = v6;
      return (v5 == 32);
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(0x5513u);
  return result;
}