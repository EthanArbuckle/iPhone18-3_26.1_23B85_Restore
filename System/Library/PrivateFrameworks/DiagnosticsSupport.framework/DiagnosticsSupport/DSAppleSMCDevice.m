@interface DSAppleSMCDevice
- (BOOL)closeAppleSMC;
- (BOOL)openAppleSMC:(int)a3;
- (BOOL)writeDataFor:(id)a3 value:(void *)a4 size:(unint64_t)a5;
- (BOOL)writeValueFor:(id)a3 andValue:(id)a4;
- (DSAppleSMCDevice)init;
- (double)readValueFor:(id)a3;
- (int)readDataFor:(id)a3 value:(void *)a4 size:(unint64_t)a5;
- (void)closeAppleSMC;
@end

@implementation DSAppleSMCDevice

- (DSAppleSMCDevice)init
{
  v3.receiver = self;
  v3.super_class = DSAppleSMCDevice;
  result = [(DSAppleSMCDevice *)&v3 init];
  if (result)
  {
    result->_dataPort = 0;
    result->_isConnectionOpen = 0;
  }

  return result;
}

- (BOOL)openAppleSMC:(int)a3
{
  *existing = 0;
  connect = 0;
  if (self->_isConnectionOpen)
  {
    v5 = [(DSAppleSMCDevice *)self closeAppleSMC];
    v6 = DiagnosticLogHandleForCategory(6);
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [DSAppleSMCDevice openAppleSMC:];
      }

      return 0;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_248BD5000, v7, OS_LOG_TYPE_DEFAULT, "Closed an existing SMC connection.", v16, 2u);
    }
  }

  if (MEMORY[0x24C1E68A0](0, &existing[1]))
  {
    v9 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DSAppleSMCDevice openAppleSMC:];
    }

LABEL_16:

    result = 0;
    self->_dataPort = 0;
    return result;
  }

  v10 = existing[1];
  v11 = IOServiceMatching("AppleSMC");
  if (IOServiceGetMatchingServices(v10, v11, existing))
  {
    v9 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DSAppleSMCDevice openAppleSMC:];
    }

    goto LABEL_16;
  }

  v12 = IOIteratorNext(existing[0]);
  IOObjectRelease(existing[0]);
  if (v12)
  {
    if (IOServiceOpen(v12, *MEMORY[0x277D85F48], a3, &connect))
    {
      v13 = DiagnosticLogHandleForCategory(6);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [DSAppleSMCDevice openAppleSMC:];
      }

      return 0;
    }

    v15 = connect;
  }

  else
  {
    v14 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [DSAppleSMCDevice openAppleSMC:];
    }

    v15 = 0;
  }

  self->_dataPort = v15;
  result = 1;
  self->_isConnectionOpen = 1;
  return result;
}

- (BOOL)closeAppleSMC
{
  if (IOConnectCallScalarMethod(self->_dataPort, 1u, 0, 0, 0, 0))
  {
    v3 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [DSAppleSMCDevice closeAppleSMC];
    }

LABEL_7:

    return 0;
  }

  if (IOServiceClose(self->_dataPort))
  {
    v3 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [DSAppleSMCDevice closeAppleSMC];
    }

    goto LABEL_7;
  }

  self->_dataPort = 0;
  self->_isConnectionOpen = 0;
  return 1;
}

- (double)readValueFor:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  memset(v22, 0, sizeof(v22));
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  if (![(DSAppleSMCDevice *)self isConnectionOpen])
  {
    v5 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [DSAppleSMCDevice readValueFor:];
    }
  }

  v6 = [v4 cStringUsingEncoding:4];
  v49 = smckSMCMakeUInt32Key(v6);
  BYTE6(v52) = 9;
  v7 = callIOFunction(2, [(DSAppleSMCDevice *)self dataPort], &v49, &v26);
  if (v7 || BYTE8(v28))
  {
    v12 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315650;
      v17 = v6;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = BYTE8(v28);
      v15 = "Could not retrieve Key info from AppleSMC for key: %s (0x%X, 0x%X)";
      goto LABEL_18;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (HIDWORD(v27) > 0x78)
  {
LABEL_13:
    v11 = NAN;
    goto LABEL_14;
  }

  BYTE4(v40) = 0;
  v37 = smckSMCMakeUInt32Key(v6);
  DWORD2(v39) = HIDWORD(v27);
  BYTE6(v40) = 5;
  v8 = callIOFunction(2, [(DSAppleSMCDevice *)self dataPort], &v37, v22);
  if (v8 || BYTE8(v23))
  {
    v12 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315650;
      v17 = v6;
      v18 = 1024;
      v19 = v8;
      v20 = 1024;
      v21 = BYTE8(v23);
      v15 = "Could not read data value from AppleSMC for key: %s (0x%X, 0x%X)";
LABEL_18:
      _os_log_error_impl(&dword_248BD5000, v12, OS_LOG_TYPE_ERROR, v15, &v16, 0x18u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v9 = returnEnumForDataTypeStr(v28);
  v11 = convertKeyToValueMiniT(v9, DWORD2(v39), v24, v10);
LABEL_14:

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int)readDataFor:(id)a3 value:(void *)a4 size:(unint64_t)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  *__n = 0u;
  memset(v24, 0, sizeof(v24));
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  if (![(DSAppleSMCDevice *)self isConnectionOpen])
  {
    v9 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DSAppleSMCDevice readValueFor:];
    }
  }

  v10 = [v8 cStringUsingEncoding:4];
  v51 = smckSMCMakeUInt32Key(v10);
  BYTE6(v54) = 9;
  v11 = callIOFunction(2, [(DSAppleSMCDevice *)self dataPort], &v51, &v28);
  if (v11 || BYTE8(v30))
  {
    v14 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315650;
      v19 = v10;
      v20 = 1024;
      v21 = v11;
      v22 = 1024;
      v23 = BYTE8(v30);
      v17 = "Could not retrieve Key info from AppleSMC for key: %s (0x%X, 0x%X)";
      goto LABEL_18;
    }

LABEL_13:

    v12 = 0;
    goto LABEL_14;
  }

  v12 = 0;
  if (HIDWORD(__n[1]) <= 0x78 && HIDWORD(__n[1]) <= a5)
  {
    BYTE4(v42) = 0;
    v39 = smckSMCMakeUInt32Key(v10);
    DWORD2(v41) = HIDWORD(__n[1]);
    BYTE6(v42) = 5;
    v13 = callIOFunction(2, [(DSAppleSMCDevice *)self dataPort], &v39, v24);
    if (!v13 && !BYTE8(v25))
    {
      memcpy(a4, v26, HIDWORD(__n[1]));
      v12 = 1;
      goto LABEL_14;
    }

    v14 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315650;
      v19 = v10;
      v20 = 1024;
      v21 = v13;
      v22 = 1024;
      v23 = BYTE8(v25);
      v17 = "Could not read data value from AppleSMC for key: %s (0x%X, 0x%X)";
LABEL_18:
      _os_log_error_impl(&dword_248BD5000, v14, OS_LOG_TYPE_ERROR, v17, &v18, 0x18u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

LABEL_14:

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)writeValueFor:(id)a3 andValue:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0;
  v38 = 0u;
  v39 = 0u;
  memset(v40, 0, sizeof(v40));
  v41 = 0;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  memset(v25, 0, sizeof(v25));
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  if (![(DSAppleSMCDevice *)self isConnectionOpen])
  {
    v8 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [DSAppleSMCDevice writeValueFor:andValue:];
    }
  }

  v9 = [v6 cStringUsingEncoding:4];
  v42 = smckSMCMakeUInt32Key(v9);
  BYTE6(v45) = 9;
  v10 = callIOFunction(2, [(DSAppleSMCDevice *)self dataPort], &v42, v35);
  if (v10 || BYTE8(v35[2]))
  {
    v15 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315650;
      v20 = v9;
      v21 = 1024;
      v22 = v10;
      v23 = 1024;
      v24 = BYTE8(v35[2]);
      v18 = "Could not retrieve Key info from AppleSMC for key: %s (0x%X, 0x%X)";
      goto LABEL_20;
    }

LABEL_13:

    v11 = 0;
    goto LABEL_14;
  }

  v40[4] = 0;
  v11 = 0;
  v37 = smckSMCMakeUInt32Key(v9);
  *(&v39 + 1) = *(&v35[1] + 12);
  v40[6] = 6;
  if (BYTE12(v35[1]) <= 0x78u)
  {
    v12 = returnEnumForDataTypeStr(v35[2]);
    [v7 floatValue];
    if (translateFloatToFixed(v12, &v40[12], HIDWORD(v35[1]), v13) != 1)
    {
      v15 = DiagnosticLogHandleForCategory(6);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [DSAppleSMCDevice writeValueFor:andValue:];
      }

      goto LABEL_13;
    }

    v14 = callIOFunction(2, [(DSAppleSMCDevice *)self dataPort], &v37, v25);
    if (!v14 && !BYTE8(v26))
    {
      v11 = 1;
      goto LABEL_14;
    }

    v15 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315650;
      v20 = v9;
      v21 = 1024;
      v22 = v14;
      v23 = 1024;
      v24 = BYTE8(v26);
      v18 = "Could not write data value from AppleSMC for key: %s (0x%X, 0x%X)";
LABEL_20:
      _os_log_error_impl(&dword_248BD5000, v15, OS_LOG_TYPE_ERROR, v18, &v19, 0x18u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)writeDataFor:(id)a3 value:(void *)a4 size:(unint64_t)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v36 = 0u;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  memset(v25, 0, sizeof(v25));
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  if (![(DSAppleSMCDevice *)self isConnectionOpen])
  {
    v9 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DSAppleSMCDevice writeValueFor:andValue:];
    }
  }

  v10 = [v8 cStringUsingEncoding:4];
  v38[6] = 6;
  v35 = smckSMCMakeUInt32Key(v10);
  DWORD2(v37) = a5;
  if (a5)
  {
    v11 = a5 - 1;
    if (a5 - 1 >= 0x1F)
    {
      v11 = 31;
    }

    memcpy(&v38[12], a4, v11 + 1);
  }

  v12 = callIOFunction(2, [(DSAppleSMCDevice *)self dataPort], &v35, v25);
  v13 = v12 | BYTE8(v26);
  v14 = v13 == 0;
  if (v13)
  {
    v15 = v12;
    v16 = DiagnosticLogHandleForCategory(6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315650;
      v20 = v10;
      v21 = 1024;
      v22 = v15;
      v23 = 1024;
      v24 = BYTE8(v26);
      _os_log_error_impl(&dword_248BD5000, v16, OS_LOG_TYPE_ERROR, "Failed to write AppleSMC data for key: %s (0x%X, 0x%X)", &v19, 0x18u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)openAppleSMC:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)openAppleSMC:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)openAppleSMC:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)openAppleSMC:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)closeAppleSMC
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)readValueFor:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeValueFor:andValue:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeValueFor:andValue:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end