const __CFData *CentauriAlphaPatchBayCopyData()
{
  v39 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  *bytes = 767;
  v0 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 512);
  if (v0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315394;
      v4 = "CentauriAlphaPatchBayCopyData";
      v5 = 2048;
      Length = CFDataGetLength(v0);
      _os_log_impl(&dword_243383000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: returning %ld bytes", &v3, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    CentauriAlphaPatchBayCopyData_cold_1();
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void CentauriAlphaPatchBayCopyData_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "CentauriAlphaPatchBayCopyData";
  _os_log_error_impl(&dword_243383000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: failed to create CF data", &v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}