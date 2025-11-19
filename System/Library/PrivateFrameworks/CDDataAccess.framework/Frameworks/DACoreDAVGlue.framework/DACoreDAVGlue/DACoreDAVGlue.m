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
    v8 = [v2 domain];
    v9 = [v8 isEqualToString:*MEMORY[0x277CFDB80]];

    v10 = v2;
    if (!v9)
    {
      goto LABEL_19;
    }

    if ([v2 code] == 401)
    {
      goto LABEL_13;
    }

    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v11, v12))
    {
      *v16 = 134217984;
      *&v16[4] = [v2 code];
      v13 = "Unhandled CoreDAVHTTP error code of %ldd";
LABEL_16:
      _os_log_impl(&dword_2424DC000, v11, v12, v13, v16, 0xCu);
    }

LABEL_17:

    v7 = 100;
    goto LABEL_18;
  }

  v6 = [v2 code];
  if ((v6 + 1012) > 0xC)
  {
LABEL_14:
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v11, v12))
    {
      *v16 = 134217984;
      *&v16[4] = [v2 code];
      v13 = "Unhandled url error code of %ld";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (((1 << (v6 - 12)) & 0x1A08) == 0)
  {
    if (v6 == -1012)
    {
LABEL_13:
      v7 = 102;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v7 = 101;
LABEL_18:
  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF39F0] code:v7 userInfo:{v3, *v16}];

LABEL_19:
  v14 = *MEMORY[0x277D85DE8];

  return v10;
}