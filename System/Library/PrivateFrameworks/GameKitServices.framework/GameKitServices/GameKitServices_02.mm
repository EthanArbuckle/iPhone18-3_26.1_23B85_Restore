void __SendUDPPacketCList_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *__error();
  v6 = 136315906;
  v7 = a1;
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  _os_log_error_impl(&dword_24E50C000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d sendmsg error: errno = %d", &v6, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void attempt_failover_cold_1(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 116);
  v3 = *(a2 + 408);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x28u);
  v9 = *MEMORY[0x277D85DE8];
}

void gckSessionLocalServerProc_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionLocalServerProc_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionLocalServerProc_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionLocalServerProc_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionLocalServerProc_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionLocalServerProc_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionLocalServerProc_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionLocalServerProc_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionProcessHello_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionProcessHello_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19(&dword_24E50C000, v0, v1, " [%s] %s:%d FLOW CONTROL enabled.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void OSPFParse_ParsePacketHeader_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_7_1();
      _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
    }
  }

  *a3 = a1;
  OUTLINED_FUNCTION_21_0();
  v5 = *MEMORY[0x277D85DE8];
}

void OSPFParse_ParsePacketHeader_cold_2()
{
  OUTLINED_FUNCTION_10_2();
  v10 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      v4 = *v2;
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_7_1();
      _os_log_error_impl(v5, v6, v7, v8, v9, 0x22u);
    }
  }

  *v0 = v1;
  OUTLINED_FUNCTION_21_0();
  v3 = *MEMORY[0x277D85DE8];
}

void OSPFParse_ParsePacketHeader_cold_3()
{
  OUTLINED_FUNCTION_10_2();
  v10 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      v4 = *v2;
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_7_1();
      _os_log_error_impl(v5, v6, v7, v8, v9, 0x22u);
    }
  }

  *v0 = v1;
  OUTLINED_FUNCTION_21_0();
  v3 = *MEMORY[0x277D85DE8];
}

void OSPFParse_ParsePacketHeader_cold_4(int a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_5_0();
      v7 = 1103;
      v8 = v4;
      v9 = a1;
      OUTLINED_FUNCTION_20_1(&dword_24E50C000, v2, v5, " [%s] %s:%d bufferLength=%d is too small", v6);
    }
  }

  OUTLINED_FUNCTION_21_0();
  v3 = *MEMORY[0x277D85DE8];
}

void OSPFParse_ParsePacketHeader_cold_5(_BYTE *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      v5 = *a1 & 0xF;
      v7 = 136315906;
      v8 = v2;
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_20_1(&dword_24E50C000, v3, v6, " [%s] %s:%d Bad destination count=%d", &v7);
    }
  }

  OUTLINED_FUNCTION_21_0();
  v4 = *MEMORY[0x277D85DE8];
}

void OSPFParse_ParsePacketHeader_cold_6(int a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_5_0();
      v7 = 1082;
      v8 = v4;
      v9 = a1;
      OUTLINED_FUNCTION_20_1(&dword_24E50C000, v2, v5, " [%s] %s:%d bufferLength=%d is too small for header", v6);
    }
  }

  OUTLINED_FUNCTION_21_0();
  v3 = *MEMORY[0x277D85DE8];
}

void OSPFParse_ParsePacketHeader_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      v3 = 136315650;
      v4 = v0;
      OUTLINED_FUNCTION_10();
      v5 = 1081;
      _os_log_error_impl(&dword_24E50C000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Buffer is NULL", &v3, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_21_0();
  v2 = *MEMORY[0x277D85DE8];
}

void _OSPFParse_ParseExtractOptions_cold_1()
{
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  v6 = v0;
  OUTLINED_FUNCTION_5_0();
  v7 = 1203;
  v8 = v1;
  v9 = 1203;
  OUTLINED_FUNCTION_20_1(&dword_24E50C000, v2, v3, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/OSPF.c:%d: malloc failed", v5);
  v4 = *MEMORY[0x277D85DE8];
}

void OSPFParse_cold_1(uint64_t a1, unsigned __int8 **a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = **a2 >> 4;
  v7 = 136316162;
  v8 = a1;
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  v9 = 1577;
  v10 = v3;
  v11 = 12;
  v12 = v3;
  v13 = v4;
  _os_log_error_impl(&dword_24E50C000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d OSPF version mismatch: expected %d, got %d\n", &v7, 0x28u);
  v6 = *MEMORY[0x277D85DE8];
}

void _OSPFParse_ParsePacketHeartbeat_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d payload=NULL", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _OSPFParse_ParsePacketDD_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d payload=NULL", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _OSPFParse_ParsePacketLSA_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d payload=NULL", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _OSPFParse_ParsePacketLSAAck_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d payload=NULL", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void GCK_BWE_CalcRxEstimate_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void GCK_BWE_CalcRxEstimate_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void GCK_BWE_CalcRxEstimate_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void GCK_BWE_CalcRxEstimate_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void BWEstCheckIfLargeFrameNeeded_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void GCK_BWE_TrackLargeFrameState_cold_1(uint64_t a1, _DWORD *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = *a2 / 0x3E8u;
  v9 = a2[2];
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x28u);
  v7 = *MEMORY[0x277D85DE8];
}

void GCK_BWE_TrackLargeFrameState_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void GCK_BWE_CreateHandle_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  v4 = 2049;
  v5 = v0;
  v6 = 2049;
  _os_log_error_impl(&dword_24E50C000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/BWE/BWE_GCK.c:%d: GCK_BWE_CreateHandle failed", v3, 0x22u);
  v2 = *MEMORY[0x277D85DE8];
}

void GCK_BWE_CreateHandle_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5_2();
  _os_log_fault_impl(&dword_24E50C000, v0, OS_LOG_TYPE_FAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/BWE/BWE_GCK.c:%d: calloc(%d) failed", v2, 0x28u);
  v1 = *MEMORY[0x277D85DE8];
}

void GCK_BWE_CreateHandle_cold_3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5_2();
  _os_log_error_impl(&dword_24E50C000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/BWE/BWE_GCK.c:%d: calloc(%d) failed", v2, 0x28u);
  v1 = *MEMORY[0x277D85DE8];
}

void GCK_BWE_CloseHandle_cold_1(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 440);
  v9 = *(a2 + 448);
  v10 = *(a2 + 444);
  v11 = *(a2 + 452);
  v12 = *(a2 + 460);
  v13 = *(a2 + 456);
  v14 = *(a2 + 464) / *(a2 + 472);
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x50u);
  v7 = *MEMORY[0x277D85DE8];
}

double machTimeScale_cold_1()
{
  info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  qword_27F20E558 = *&result;
  __dmb(0xBu);
  _MergedGlobals_0 = 1;
  return result;
}

void gkDiscoveryBrowseCallback_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d browse callback called with error [%d] - ignoring.", v3, v4, v5, v6);
  v2 = *MEMORY[0x277D85DE8];
}

void gkDiscoveryBrowseCallback_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d gkDiscovery: failed to generate fullname, invalid inputs", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void gkDiscoveryBrowseCallback_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d service query record failed with error [%d]", v3, v4, v5, v6);
  v2 = *MEMORY[0x277D85DE8];
}

void gkDiscoveryBrowseCallback_cold_4()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d set dispatch queue failed with error [%d]", v3, v4, v5, v6);
  v2 = *MEMORY[0x277D85DE8];
}

void gkDiscoveryBrowseCallback_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d cannot resolve full name!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void gkDiscoveryBrowseCallback_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d context == NULL!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void gkDiscoveryResolveCallback_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d getAddrCallback called with error [%d]", v3, v4, v5, v6);
  v2 = *MEMORY[0x277D85DE8];
}

void gkDiscoveryResolveCallback_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d set dispatch queue failed with error [%d]", v3, v4, v5, v6);
  v2 = *MEMORY[0x277D85DE8];
}

void gkDiscoveryResolveCallback_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d service get addr info failed with error [%d]", v3, v4, v5, v6);
  v2 = *MEMORY[0x277D85DE8];
}

void gkDiscoveryResolveCallback_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d context == NULL!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void gkDiscoveryRegisterCallback_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d discovery register callback called with error [%d]", v3, v4, v5, v6);
  v2 = *MEMORY[0x277D85DE8];
}

void gkDiscoveryTxtCallback_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d txtCallback called with error [%d]", v3, v4, v5, v6);
  v2 = *MEMORY[0x277D85DE8];
}

void gkDiscoveryTxtCallback_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d context == NULL!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void gkDiscoveryGetAddrCallback_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_1_1(&dword_24E50C000, v0, v1, " [%s] %s:%d getAddrCallback called with error [%d]", v3, v4, v5, v6);
  v2 = *MEMORY[0x277D85DE8];
}

void gkDiscoveryGetAddrCallback_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d context == NULL!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void CheckInHandleDebug()
{
    ;
  }
}

void CheckOutHandleDebug()
{
    ;
  }
}

void CreateHandle()
{
    ;
  }
}

void GKSConnectivitySettings_GetICETimeout()
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}