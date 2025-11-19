id coreDAVValidationErrorFromRawError(void *a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v17 = *MEMORY[0x277CCA7E8];
    v18[0] = v1;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEC10];
  }

  v4 = [v2 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277CCA738]];

  if (!v5)
  {
    v9 = [v2 domain];
    v10 = [v9 isEqualToString:*MEMORY[0x277CFDB80]];

    v6 = v2;
    if (!v10)
    {
      goto LABEL_20;
    }

    if ([v2 code] == 401)
    {
      goto LABEL_14;
    }

    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, v12))
    {
      *v16 = 134217984;
      *&v16[4] = [v2 code];
      v13 = "Unhandled CoreDAVHTTP error code of %ldd";
LABEL_17:
      _os_log_impl(&dword_248521000, v11, v12, v13, v16, 0xCu);
    }

LABEL_18:

    v8 = 100;
    goto LABEL_19;
  }

  v6 = v2;
  if ([v2 cal_isCertificateError])
  {
    goto LABEL_20;
  }

  v7 = [v2 code];
  if ((v7 + 1012) > 0xC)
  {
LABEL_15:
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, v12))
    {
      *v16 = 134217984;
      *&v16[4] = [v2 code];
      v13 = "Unhandled url error code of %ld";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (((1 << (v7 - 12)) & 0x1A08) == 0)
  {
    if (v7 == -1012)
    {
LABEL_14:
      v8 = 102;
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v8 = 101;
LABEL_19:
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D03700] code:v8 userInfo:{v3, *v16}];

LABEL_20:
  v14 = *MEMORY[0x277D85DE8];

  return v6;
}