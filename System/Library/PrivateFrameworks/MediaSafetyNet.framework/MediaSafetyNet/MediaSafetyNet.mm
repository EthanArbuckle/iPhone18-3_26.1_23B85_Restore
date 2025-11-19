id MSNLog()
{
  if (MSNLog_once != -1)
  {
    MSNLog_cold_1();
  }

  v1 = MSNLog_log;

  return v1;
}

void __MSNMonitorStartServerMode_block_invoke_15(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = s_mediaSafetyNetQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __MSNMonitorStartServerMode_block_invoke_2;
  block[3] = &unk_2798A3D68;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __MSNMonitorStartServerMode_block_invoke_2(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (!v1)
  {
    g_uiState = 3;
    goto LABEL_43;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v2 = [v1 elements];
  v3 = [v2 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (!v3)
  {

    v5 = 0;
    v19 = 0;
    v6 = 0;
    goto LABEL_29;
  }

  v4 = v3;
  v5 = 0;
  v39 = 0;
  v6 = 0;
  v7 = *v42;
  v8 = *MEMORY[0x277D66F20];
  v38 = *MEMORY[0x277D0ABA0];
  obj = v2;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v42 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v41 + 1) + 8 * i);
      v11 = [v10 identifier];
      v12 = [v11 isEqualToString:v8];

      if (v12)
      {
        v13 = v6;
        v14 = v5;
        v6 = v10;
LABEL_15:
        v18 = v10;

        v5 = v14;
        continue;
      }

      v15 = [v10 identifier];
      v16 = [v15 isEqualToString:v38];

      if (v16)
      {
        v13 = v39;
        v14 = v5;
        v39 = v10;
        goto LABEL_15;
      }

      if (!v5)
      {
        v13 = 0;
        v14 = v10;
        goto LABEL_15;
      }

      v17 = [v10 level];
      v13 = v5;
      v14 = v10;
      if (v17 > [v5 level])
      {
        goto LABEL_15;
      }
    }

    v4 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  }

  while (v4);

  v19 = v39;
  if (v39 || !v6)
  {
    if (v39)
    {
      if (!v5 || (v21 = [v39 level], v21 > objc_msgSend(v5, "level")))
      {
        v22 = 1;
        goto LABEL_32;
      }
    }

    goto LABEL_29;
  }

  if (!v5)
  {
    v19 = 0;
    goto LABEL_31;
  }

  v20 = [v6 level];
  v19 = 0;
  if (v20 <= [v5 level])
  {
LABEL_29:
    v22 = 3;
    goto LABEL_32;
  }

LABEL_31:
  v22 = 2;
LABEL_32:
  g_uiState = v22;
  v23 = MSNLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    if (g_uiState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v30 = MSNLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        __MSNMonitorStartServerMode_block_invoke_cold_1(v30, v31, v32, v33, v34, v35, v36, v37);
      }

      abort();
    }

    v24 = off_2798A3F28[g_uiState];
    *buf = 136315138;
    v46 = v24;
    _os_log_impl(&dword_258731000, v23, OS_LOG_TYPE_INFO, "Updated view state: %s", buf, 0xCu);
  }

  if (g_uiState == 2)
  {
    if (s_pillDataSource_block_invoke_once != -1)
    {
      __MSNMonitorStartServerMode_block_invoke_2_cold_2();
    }

    v25 = +[MSNTTR sharedInstance];
    v26 = [v25 pendedTTR];

    if (v26)
    {
      v27 = MSNLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_258731000, v27, OS_LOG_TYPE_INFO, "Home, continuing TTR.", buf, 2u);
      }

      v28 = +[MSNTTR sharedInstance];
      [v28 continueTTR];
    }
  }

LABEL_43:
  v29 = *MEMORY[0x277D85DE8];
}

void __MSNMonitorStartServerMode_block_invoke_49()
{
  v155[7] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  if (s_lockPill)
  {
    if ((os_variant_allows_internal_security_policies() & 1) == 0)
    {
      __MSNMonitorStartServerMode_block_invoke_49_cold_1();
    }

    v1 = MSNLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_258731000, v1, OS_LOG_TYPE_INFO, "Overriding pill state. This is not a production configuration.", buf, 2u);
    }
  }

  else if (g_microphoneState == 1)
  {
    v2 = s_pillDataSource;
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:g_microphoneClient];
    [v2 fetchPillRegistrationForProcess:v3 withCompletion:&__block_literal_global_87];
  }

  else
  {
    g_pillState = 0;
  }

  v4 = g_microphoneState;
  if (g_uiState)
  {
    v5 = g_microphoneState == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || g_cameraState == 0 || g_keyboardState == 0)
  {
    v8 = MSNLog();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
LABEL_40:

      goto LABEL_68;
    }

    v9 = "";
    if (g_production)
    {
      v10 = "";
    }

    else
    {
      v10 = "Testing: ";
    }

    if (g_uiState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v123 = MSNLog();
      if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_239;
      }
    }

    else if (g_cameraState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v123 = MSNLog();
      if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_239;
      }
    }

    else
    {
      v11 = ":";
      v12 = g_cameraClient;
      if (g_cameraClient)
      {
        v13 = ":";
      }

      else
      {
        v13 = "";
      }

      if (!g_cameraClient)
      {
        v12 = "";
      }

      if (g_microphoneState >= 4)
      {
        qword_27F958928 = "Unknown state";
        v123 = MSNLog();
        if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_239;
        }
      }

      else
      {
        if (g_microphoneClient)
        {
          v9 = g_microphoneClient;
        }

        else
        {
          v11 = "";
        }

        if (g_pillState >= 3)
        {
          qword_27F958928 = "Unknown state";
          v123 = MSNLog();
          if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_239;
          }
        }

        else
        {
          if (g_keyboardState < 3)
          {
            v14 = off_2798A3F28[g_uiState];
            v15 = off_2798A3F48[g_cameraState];
            v16 = off_2798A3F48[g_microphoneState];
            v17 = off_2798A3F68[g_pillState];
            v18 = off_2798A3F10[g_keyboardState];
            v19 = g_cameraExceptionState;
            *buf = 136317698;
            if (!g_cameraExceptionState)
            {
              v19 = "None";
            }

            *&buf[4] = v10;
            *&buf[12] = 2080;
            *&buf[14] = v14;
            *&buf[22] = 2080;
            v139 = v15;
            *v140 = 2080;
            *&v140[2] = v13;
            *&v140[10] = 2080;
            *&v140[12] = v12;
            *&v140[20] = 2080;
            *&v140[22] = v16;
            v141 = 2080;
            v142 = v11;
            v143 = 2080;
            v144 = v9;
            v145 = 2080;
            v146 = v17;
            v147 = 2080;
            v148 = v18;
            v149 = 2080;
            v150 = v19;
            _os_log_impl(&dword_258731000, v8, OS_LOG_TYPE_INFO, "MediaSafetyNet state: %sUI(%s) Cam(%s%s%s) Mic(%s%s%s) Pill(%s) Kbd(%s) CameraException(%s) unknown.", buf, 0x70u);
            goto LABEL_40;
          }

          qword_27F958928 = "Unknown state";
          v123 = MSNLog();
          if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_239;
          }
        }
      }
    }

LABEL_238:
    __MSNMonitorStartServerMode_block_invoke_cold_1(v123, v116, v117, v118, v119, v120, v121, v122);
    goto LABEL_239;
  }

  v21 = (g_cameraState & 0xFFFFFFFE) == 2 && (g_microphoneState & 0xFFFFFFFE) == 2;
  if (g_uiState == 3 || v21)
  {
    goto LABEL_59;
  }

  if (g_microphoneState != 1 && g_cameraState != 1)
  {
    qword_27F958928 = "Expected at least one hot sensor.";
    v123 = MSNLog();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
      __MSNMonitorStartServerMode_block_invoke_49_cold_2(v123, v125, v126, v127, v128, v129, v130, v131);
    }

    goto LABEL_239;
  }

  if (g_cameraState == 1)
  {
    if (!HotCameraAllowed())
    {
      goto LABEL_69;
    }

    v4 = g_microphoneState;
  }

  if (v4 != 1 || (HotMicAllowed() & 1) != 0)
  {
LABEL_59:
    if (MSNValidateState_inconsistencyDuration)
    {
      v23 = MSNLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = MSNValidateState_inconsistencyDuration;
        _os_log_impl(&dword_258731000, v23, OS_LOG_TYPE_INFO, "MediaSafetyNet inconsistency ended after: %u", buf, 8u);
      }
    }

    s_inconsistentCount = 0;
    v24 = 2;
    v25 = &MSNValidateState_inconsistencyDuration;
    goto LABEL_64;
  }

LABEL_69:
  v28 = ++s_inconsistentCount;
  if (MSNValidateState_inconsistencyDuration != -1)
  {
    ++MSNValidateState_inconsistencyDuration;
  }

  if (v28 < 0xA)
  {
    if (!v28)
    {
      v24 = 1;
      goto LABEL_65;
    }

    v8 = MSNLog();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    v46 = "";
    if (g_production)
    {
      v47 = "";
    }

    else
    {
      v47 = "Testing: ";
    }

    if (g_uiState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v123 = MSNLog();
      if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_239;
      }
    }

    else if (g_cameraState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v123 = MSNLog();
      if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_239;
      }
    }

    else
    {
      v48 = ":";
      v49 = g_cameraClient;
      if (g_cameraClient)
      {
        v50 = ":";
      }

      else
      {
        v50 = "";
      }

      if (!g_cameraClient)
      {
        v49 = "";
      }

      if (g_microphoneState >= 4)
      {
        qword_27F958928 = "Unknown state";
        v123 = MSNLog();
        if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_239;
        }
      }

      else
      {
        if (g_microphoneClient)
        {
          v46 = g_microphoneClient;
        }

        else
        {
          v48 = "";
        }

        if (g_pillState >= 3)
        {
          qword_27F958928 = "Unknown state";
          v123 = MSNLog();
          if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_239;
          }
        }

        else
        {
          if (g_keyboardState < 3)
          {
            v51 = off_2798A3F28[g_uiState];
            v52 = off_2798A3F48[g_cameraState];
            v53 = off_2798A3F48[g_microphoneState];
            v54 = off_2798A3F68[g_pillState];
            v55 = off_2798A3F10[g_keyboardState];
            v56 = g_cameraExceptionState;
            if (!g_cameraExceptionState)
            {
              v56 = "None";
            }

            *buf = 136318210;
            *&buf[4] = v47;
            *&buf[12] = 2080;
            *&buf[14] = v51;
            *&buf[22] = 2080;
            v139 = v52;
            *v140 = 2080;
            *&v140[2] = v50;
            *&v140[10] = 2080;
            *&v140[12] = v49;
            *&v140[20] = 2080;
            *&v140[22] = v53;
            v141 = 2080;
            v142 = v48;
            v143 = 2080;
            v144 = v46;
            v145 = 2080;
            v146 = v54;
            v147 = 2080;
            v148 = v55;
            v149 = 2080;
            v150 = v56;
            v151 = 2080;
            v152 = "Inconsistent";
            v153 = 1024;
            v154 = s_inconsistentCount;
            _os_log_error_impl(&dword_258731000, v8, OS_LOG_TYPE_ERROR, "MediaSafetyNet temporarily inconsistent state: %sUI(%s) Cam(%s%s%s) Mic(%s%s%s) Pill(%s) Kbd(%s) CameraException(%s) consistency: %s inconsistentCount: %i", buf, 0x80u);
            goto LABEL_40;
          }

          qword_27F958928 = "Unknown state";
          v123 = MSNLog();
          if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_239;
          }
        }
      }
    }

    goto LABEL_238;
  }

  if (MSNFailureMode_defaultOnce != -1)
  {
    MSNMonitorStartServerMode_cold_2();
  }

  v29 = "com.apple.MediaSafetyNet";
  v30 = &g_cameraClient;
  v31 = MSNFailureMode_failureMode;
  v32 = 0x277CCA000uLL;
  while (v31 > 3)
  {
    if (v31 == 4)
    {
      v36 = v30;
      v37 = v29;
      log = os_variant_allows_internal_security_policies();
      v38 = g_microphoneState;
      v39 = g_microphoneClient;
      v41 = g_microphoneState == 1 && g_microphoneClient != 0 && strcmp(g_microphoneClient, "corespeechd") == 0;
      v42 = v38 != 1 || g_pillState == 2;
      if (!v42 && !strcmp(v39, "callservicesd"))
      {
        v31 = 3;
        v30 = v36;
      }

      else
      {
        v30 = v36;
        if (g_cameraState == 1)
        {
          if (!strcmp(*v36, "com.apple.callservicesd"))
          {
            v31 = 3;
          }

          else
          {
            v31 = 2;
          }
        }

        else
        {
          v31 = 2;
        }
      }

      v32 = 0x277CCA000;
      v29 = v37;
      if (!v41 && (log & 1) != 0)
      {
        v31 = 3;
      }
    }

    else
    {
      if (v31 != 5)
      {
        goto LABEL_168;
      }

      if (g_cameraState == 1)
      {
        v33 = 0;
        if ((HotCameraAllowed() & 1) == 0 && *v30)
        {
          if (MSNStateFailureWithMode_onceToken != -1)
          {
            __MSNMonitorStartServerMode_block_invoke_49_cold_9();
          }

          v34 = MSNStateFailureWithMode_terminatingProcesses;
          v35 = [*(v32 + 3240) stringWithUTF8String:*v30];
          v33 = [v34 containsObject:v35];

          v29 = "com.apple.MediaSafetyNet";
        }
      }

      else
      {
        v33 = 0;
      }

      if ((v33 & 1) != 0 || g_microphoneState != 1)
      {
        v31 = 2;
        if (v33)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v43 = HotMicAllowed();
        v31 = 2;
        if ((v43 & 1) == 0 && g_microphoneClient)
        {
          if (MSNStateFailureWithMode_onceToken_168 != -1)
          {
            __MSNMonitorStartServerMode_block_invoke_49_cold_10();
          }

          v44 = MSNStateFailureWithMode_terminatingProcesses_167;
          v45 = [*(v32 + 3240) stringWithUTF8String:g_microphoneClient];
          LOBYTE(v44) = [v44 containsObject:v45];

          v31 = 2;
          v29 = "com.apple.MediaSafetyNet";
          if (v44)
          {
LABEL_109:
            v31 = 3;
          }
        }
      }
    }
  }

  if (v31 == 1)
  {
    v57 = MSNLog();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_166;
    }

    goto LABEL_167;
  }

  if (v31 != 2)
  {
    if (v31 != 3)
    {
      goto LABEL_168;
    }

    if (g_production == 1)
    {
      v155[0] = @"Mic";
      v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:MicrophoneStateDescription(g_microphoneState)];
      *buf = v74;
      v155[1] = @"Cam";
      v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:MicrophoneStateDescription(g_cameraState)];
      *&buf[8] = v75;
      v155[2] = @"MicClient";
      if (g_microphoneClient)
      {
        v76 = g_microphoneClient;
      }

      else
      {
        v76 = "None";
      }

      v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:v76];
      *&buf[16] = v77;
      v155[3] = @"CamClient";
      if (g_cameraClient)
      {
        v78 = g_cameraClient;
      }

      else
      {
        v78 = "None";
      }

      v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:v78];
      v139 = v79;
      v155[4] = @"Pill";
      v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:PillStateDescription(g_pillState)];
      *v140 = v80;
      v155[5] = @"UI";
      v81 = [MEMORY[0x277CCACA8] stringWithUTF8String:UIStateDescription(g_uiState)];
      *&v140[8] = v81;
      v155[6] = @"Kbd";
      v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:KeyboardStateDescription(g_keyboardState)];
      *&v140[16] = v82;
      v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v155 count:7];
      AnalyticsSendEvent();
    }

    v84 = MSNLog();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      __MSNMonitorStartServerMode_block_invoke_49_cold_11(v84);
    }

    v137 = 0;
    if (g_production)
    {
      v85 = "";
    }

    else
    {
      v85 = "Testing: ";
    }

    v86 = UIStateDescription(g_uiState);
    v87 = MicrophoneStateDescription(g_cameraState);
    if (g_cameraClient)
    {
      v88 = ":";
    }

    else
    {
      v88 = "";
    }

    if (g_cameraClient)
    {
      v89 = g_cameraClient;
    }

    else
    {
      v89 = "";
    }

    v90 = MicrophoneStateDescription(g_microphoneState);
    if (g_microphoneClient)
    {
      v91 = ":";
    }

    else
    {
      v91 = "";
    }

    if (g_microphoneClient)
    {
      v92 = g_microphoneClient;
    }

    else
    {
      v92 = "";
    }

    v93 = PillStateDescription(g_pillState);
    v94 = KeyboardStateDescription(g_keyboardState);
    v95 = g_cameraExceptionState;
    if (!g_cameraExceptionState)
    {
      v95 = "None";
    }

    if (asprintf(&v137, "MediaSafetyNet failure with states: %sUI(%s) Cam(%s%s%s) Mic(%s%s%s) Pill(%s) Kbd(%s) CameraException(%s)", v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95) < 0)
    {
      v137 = 0;
    }

    v96 = MEMORY[0x277CCACA8];
    if (g_production)
    {
      v97 = "";
    }

    else
    {
      v97 = "Testing: ";
    }

    v98 = UIStateDescription(g_uiState);
    v99 = MicrophoneStateDescription(g_cameraState);
    v100 = ":";
    if (g_cameraClient)
    {
      v101 = ":";
    }

    else
    {
      v101 = "";
    }

    if (g_cameraClient)
    {
      v102 = g_cameraClient;
    }

    else
    {
      v102 = "";
    }

    v103 = MicrophoneStateDescription(g_microphoneState);
    if (g_microphoneClient)
    {
      v104 = g_microphoneClient;
    }

    else
    {
      v100 = "";
      v104 = "";
    }

    v105 = PillStateDescription(g_pillState);
    v106 = KeyboardStateDescription(g_keyboardState);
    v107 = g_cameraExceptionState;
    if (!g_cameraExceptionState)
    {
      v107 = "None";
    }

    v108 = [v96 stringWithFormat:@"MediaSafetyNet: %sUI(%s) Cam(%s%s%s) Mic(%s%s%s) Pill(%s) Kbd(%s) CameraException(%s)", v97, v98, v99, v101, v102, v103, v100, v104, v105, v106, v107];
    CFPreferencesSetAppValue(@"MediaSafetyNetWaitingTTR", v108, @"com.apple.mediaserverd");

    v109 = [MEMORY[0x277CBEAA8] date];
    CFPreferencesSetAppValue(@"MediaSafetyNetWaitingTTRDate", v109, @"com.apple.mediaserverd");

    CFPreferencesAppSynchronize(@"com.apple.mediaserverd");
    qword_27F958928 = v137;
    v123 = MSNLog();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
      __MSNMonitorStartServerMode_block_invoke_49_cold_12(&v137, v123, v110, v111, v112, v113, v114, v115);
    }

LABEL_239:

    abort();
  }

  if (MSNStateFailureWithMode_once != -1)
  {
    __MSNMonitorStartServerMode_block_invoke_49_cold_14();
  }

  v57 = MSNLog();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
LABEL_166:
    __MSNMonitorStartServerMode_block_invoke_49_cold_11(v57);
  }

LABEL_167:

LABEL_168:
  v24 = 1;
  v25 = &s_inconsistentCount;
LABEL_64:
  *v25 = 0;
LABEL_65:
  if (MSNPeriodicLog_once != -1)
  {
    __MSNMonitorStartServerMode_block_invoke_49_cold_16();
  }

  v26 = MSNPeriodicLog_log;
  if (os_log_type_enabled(MSNPeriodicLog_log, OS_LOG_TYPE_DEBUG))
  {
    if (g_production)
    {
      v58 = "";
    }

    else
    {
      v58 = "Testing: ";
    }

    v59 = g_uiState;
    v60 = v26;
    if (v59 >= 4)
    {
      qword_27F958928 = "Unknown state";
      v123 = MSNLog();
      if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_239;
      }
    }

    else if (g_cameraState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v123 = MSNLog();
      if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_239;
      }
    }

    else
    {
      if (g_cameraClient)
      {
        v61 = ":";
      }

      else
      {
        v61 = "";
      }

      if (g_cameraClient)
      {
        v62 = g_cameraClient;
      }

      else
      {
        v62 = "";
      }

      if (g_microphoneState >= 4)
      {
        qword_27F958928 = "Unknown state";
        v123 = MSNLog();
        if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_239;
        }
      }

      else
      {
        v63 = g_microphoneClient;
        if (g_microphoneClient)
        {
          v64 = ":";
        }

        else
        {
          v64 = "";
        }

        if (!g_microphoneClient)
        {
          v63 = "";
        }

        if (g_pillState >= 3)
        {
          qword_27F958928 = "Unknown state";
          v123 = MSNLog();
          if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_239;
          }
        }

        else
        {
          v132 = v64;
          v133 = v63;
          v134 = v62;
          loga = v60;
          if (g_keyboardState < 3)
          {
            v65 = v61;
            v66 = v58;
            v67 = off_2798A3F28[v59];
            v68 = off_2798A3F48[g_cameraState];
            v69 = off_2798A3F48[g_microphoneState];
            v70 = off_2798A3F68[g_pillState];
            v71 = off_2798A3F10[g_keyboardState];
            if (g_cameraExceptionState)
            {
              v72 = g_cameraExceptionState;
            }

            else
            {
              v72 = "None";
            }

            v73 = ConsistencyDescription(v24);
            *buf = 136317954;
            *&buf[4] = v66;
            *&buf[12] = 2080;
            *&buf[14] = v67;
            *&buf[22] = 2080;
            v139 = v68;
            *v140 = 2080;
            *&v140[2] = v65;
            *&v140[10] = 2080;
            *&v140[12] = v134;
            *&v140[20] = 2080;
            *&v140[22] = v69;
            v141 = 2080;
            v142 = v132;
            v143 = 2080;
            v144 = v133;
            v145 = 2080;
            v146 = v70;
            v147 = 2080;
            v148 = v71;
            v149 = 2080;
            v150 = v72;
            v151 = 2080;
            v152 = v73;
            v8 = loga;
            _os_log_debug_impl(&dword_258731000, loga, OS_LOG_TYPE_DEBUG, "MediaSafetyNet state: %sUI(%s) Cam(%s%s%s) Mic(%s%s%s) Pill(%s) Kbd(%s) CameraException(%s) consistency: %s", buf, 0x7Au);
            goto LABEL_40;
          }

          qword_27F958928 = "Unknown state";
          v123 = MSNLog();
          if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_239;
          }
        }
      }
    }

    goto LABEL_238;
  }

LABEL_68:
  objc_autoreleasePoolPop(v0);
  v27 = *MEMORY[0x277D85DE8];
}

void MSNMonitorSetCameraState(char a1)
{
  if (MediaSafetyNetIsLocalMonitor())
  {
    if (MediaSafetyNetActive())
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __MSNMonitorSetCameraState_block_invoke;
      block[3] = &__block_descriptor_33_e5_v8__0l;
      v4 = a1;
      dispatch_sync(s_mediaSafetyNetQueue, block);
    }
  }

  else
  {
    v2 = MSNLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      MSNMonitorSetCameraState_cold_1();
    }
  }
}

void MSNMonitorStartingCamera()
{
  v0 = MSNLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_258731000, v0, OS_LOG_TYPE_INFO, "Starting cam.", v1, 2u);
  }
}

void __MSNMonitorSetCameraState_block_invoke(uint64_t a1)
{
  switch(g_cameraState)
  {
    case 1:
      if ((*(a1 + 32) & 1) == 0)
      {
        MSNMonitorStoppingCamera();
      }

      break;
    case 2:
      if (*(a1 + 32) == 1)
      {
        MSNMonitorStartingCamera();
      }

      break;
    case 3:
      v2 = MSNLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        __MSNMonitorSetCameraState_block_invoke_cold_1();
      }

      return;
  }

  if (*(a1 + 32))
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  g_cameraState = v3;
}

void MSNMonitorSetCameraNonStandardCameraClient(uint64_t a1)
{
  if (MediaSafetyNetIsLocalMonitor())
  {
    if (MediaSafetyNetActive())
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __MSNMonitorSetCameraNonStandardCameraClient_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_sync(s_mediaSafetyNetQueue, block);
    }
  }

  else
  {
    v2 = MSNLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      MSNMonitorSetCameraState_cold_1();
    }
  }
}

void MSNMonitorSetXCTestExceptionState(int a1)
{
  if (a1)
  {
    MSNMonitorSetCameraNonStandardCameraClient("xctest");
  }

  else
  {
    MSNMonitorSetCameraNonStandardCameraClient(0);
  }
}

char *__MSNMonitorSetCameraNonStandardCameraClient_block_invoke(uint64_t a1)
{
  free(g_cameraExceptionState);
  result = *(a1 + 32);
  if (result)
  {
    result = strdup(result);
  }

  g_cameraExceptionState = result;
  return result;
}

void __MSNMonitorSetLastCameraClient_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    free(g_cameraClient);
    g_cameraClient = strdup(*(a1 + 32));
    v2 = MSNLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __MSNMonitorSetLastCameraClient_block_invoke_cold_1(v2);
    }
  }
}

void MSNMonitorSetLastCameraClient(uint64_t a1)
{
  if (MediaSafetyNetIsLocalMonitor())
  {
    if (MediaSafetyNetActive())
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __MSNMonitorSetLastCameraClient_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_sync(s_mediaSafetyNetQueue, block);
    }
  }

  else
  {
    v2 = MSNLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      MSNMonitorSetCameraState_cold_1();
    }
  }
}

void __MSNMonitorStartServerMode_block_invoke(int a1, int token)
{
  v18 = *MEMORY[0x277D85DE8];
  state64 = 0;
  state = notify_get_state(token, &state64);
  if (state64)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (state)
  {
    v3 = 0;
  }

  g_keyboardState = v3;
  v4 = MSNLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (g_keyboardState >= 3)
    {
      qword_27F958928 = "Unknown state";
      v7 = MSNLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __MSNMonitorStartServerMode_block_invoke_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
      }

      abort();
    }

    v5 = off_2798A3F10[g_keyboardState];
    *buf = 136315138;
    v17 = v5;
    _os_log_impl(&dword_258731000, v4, OS_LOG_TYPE_INFO, "Updated keyboard state: %s", buf, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

const char *ConsistencyDescription(int a1)
{
  if (a1 == 1)
  {
    return "Inconsistent";
  }

  if (a1 != 2)
  {
    qword_27F958928 = "Unknown state";
    v2 = MSNLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __MSNMonitorStartServerMode_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    abort();
  }

  return "Consistent";
}

void MSNMonitorSetLastMicrophoneClient(uint64_t a1)
{
  if (MediaSafetyNetIsLocalMonitor())
  {
    if (MediaSafetyNetActive())
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __MSNMonitorSetLastMicrophoneClient_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_sync(s_mediaSafetyNetQueue, block);
    }
  }

  else
  {
    v2 = MSNLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      MSNMonitorSetCameraState_cold_1();
    }
  }
}

void __MSNMonitorSetLastMicrophoneClient_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    free(g_microphoneClient);
    g_microphoneClient = strdup(*(a1 + 32));
    v2 = MSNLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __MSNMonitorSetLastMicrophoneClient_block_invoke_cold_1(v2);
    }
  }
}

void MSNMonitorSetMicrophoneState(char a1)
{
  if (MediaSafetyNetIsLocalMonitor())
  {
    if (MediaSafetyNetActive())
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __MSNMonitorSetMicrophoneState_block_invoke;
      block[3] = &__block_descriptor_33_e5_v8__0l;
      v4 = a1;
      dispatch_sync(s_mediaSafetyNetQueue, block);
    }
  }

  else
  {
    v2 = MSNLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      MSNMonitorSetCameraState_cold_1();
    }
  }
}

void MSNMonitorStartingMicrophone()
{
  v0 = MSNLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_258731000, v0, OS_LOG_TYPE_INFO, "Starting mic.", v1, 2u);
  }
}

void __MSNMonitorSetMicrophoneState_block_invoke(uint64_t a1)
{
  switch(g_microphoneState)
  {
    case 1:
      if ((*(a1 + 32) & 1) == 0)
      {
        MSNMonitorStoppingMicrophone();
      }

      break;
    case 2:
      if (*(a1 + 32) == 1)
      {
        MSNMonitorStartingMicrophone();
      }

      break;
    case 3:
      v2 = MSNLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        __MSNMonitorSetMicrophoneState_block_invoke_cold_1();
      }

      return;
  }

  if (*(a1 + 32))
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  g_microphoneState = v3;
}

void __MSNMonitorSetLastMicrophoneClient_block_invoke_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = g_microphoneClient;
  _os_log_debug_impl(&dword_258731000, log, OS_LOG_TYPE_DEBUG, "Last microphone client: %s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __MSNPollStates_block_invoke(uint64_t a1, int a2)
{
  v2 = a2 == 3;
  if (a2 == 2)
  {
    v2 = 2;
  }

  g_pillState = v2;
}

uint64_t HotMicAllowed()
{
  if ((g_pillState & 0xFFFFFFFD) == 0)
  {
    return 1;
  }

  v12 = v0;
  v13 = v1;
  if (_AXSCommandAndControlEnabled())
  {
    v2 = MSNLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v8 = 0;
      v3 = "Command and Control enabled.";
      v4 = &v8;
LABEL_12:
      _os_log_impl(&dword_258731000, v2, OS_LOG_TYPE_INFO, v3, v4, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (_AXSSoundDetectionRunning())
  {
    v2 = MSNLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v9 = 0;
      v3 = "Sound Detection enabled.";
      v4 = &v9;
      goto LABEL_12;
    }

LABEL_13:

    return 1;
  }

  if (_AXSSwitchControlEnabledAndNeedsMicrophoneOnLockScreen())
  {
    v2 = MSNLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v3 = "Switch Control sound triggers enabled.";
      v4 = buf;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (_AXSLiveTranscriptionEnabled() && _AXSLiveTranscriptionMicOn())
  {
    v2 = MSNLog();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v11 = 0;
    v3 = "LiveTranscription enabled.";
    v4 = &v11;
    goto LABEL_12;
  }

  v6 = [s_carplay carplayConnected];
  result = 1;
  if ((v6 & 1) == 0 && g_keyboardState != 2)
  {
    if (([s_exceptions isExceptionInEffect:0x2869B3A88] & 1) == 0 && (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B39C8) & 1) == 0 && (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B39E8) & 1) == 0 && (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B3A08) & 1) == 0 && (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B3A28) & 1) == 0 && (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B3A48) & 1) == 0 && (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B3A68) & 1) == 0 && (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B3AC8) & 1) == 0 && (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B3AE8) & 1) == 0)
    {
      if (!os_variant_allows_internal_security_policies())
      {
        return 0;
      }

      v7 = g_microphoneClient;
      if (!g_microphoneClient || strcmp(g_microphoneClient, "qrecord") && strcmp(v7, "auriotest") && strcmp(v7, "minilab") && strcmp(v7, "xctest") && strcmp(v7, "avcapture") && strcmp(v7, "halperformancemetrics") && strcmp(v7, "avvctest") && strcmp(v7, "audioloopback") && strcmp(v7, "algen") && strcmp(v7, "austriptool") && strcmp(v7, "dspprocess") && strcmp(v7, "auprocess") && strcmp(v7, "ssplay") && strcmp(v7, "vpiotest") && strcmp(v7, "multiroutetest") && strcmp(v7, "afinfo") && strcmp(v7, "afconvert") && strcmp(v7, "audiodetect") && strcmp(v7, "avrecord") && strcmp(v7, "qplay") && strcmp(v7, "auval") && strcmp(v7, "auvaltool") && strcmp(v7, "sounddiff") && strcmp(v7, "afmetadata") && strcmp(v7, "audioperftest") && strcmp(v7, "attentiond") && strcmp(v7, "audiotest") && strcmp(v7, "AVAudioDeviceTes") && strcmp(v7, "CoreContextAmbie"))
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

void MSNMonitorBeginException(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v11 = v16 = 0u;
  v2 = [MSNScopedExceptionsServer proxiesForException:?];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = MSNLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v18 = a1;
          v19 = 2112;
          v20 = v7;
          _os_log_debug_impl(&dword_258731000, v8, OS_LOG_TYPE_DEBUG, "Begin exception %s with proxy %@", buf, 0x16u);
        }

        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
        [v7 beginException:v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v4);
  }

  objc_autoreleasePoolPop(context);
  v10 = *MEMORY[0x277D85DE8];
}

void MSNMonitorEndException(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v11 = v16 = 0u;
  v2 = [MSNScopedExceptionsServer proxiesForException:?];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = MSNLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v18 = a1;
          v19 = 2112;
          v20 = v7;
          _os_log_debug_impl(&dword_258731000, v8, OS_LOG_TYPE_DEBUG, "End exception %s with proxy %@", buf, 0x16u);
        }

        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
        [v7 endException:v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v4);
  }

  objc_autoreleasePoolPop(context);
  v10 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_258735120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  _Block_object_dispose((v15 - 80), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __getSTDynamicActivityAttributionMonitorClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("STDynamicActivityAttributionMonitor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSTDynamicActivityAttributionMonitorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSTDynamicActivityAttributionMonitorClass_block_invoke_cold_1();
    SystemStatusLibrary();
  }
}

void SystemStatusLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!SystemStatusLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __SystemStatusLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2798A3E28;
    v4 = 0;
    SystemStatusLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!SystemStatusLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __SystemStatusLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SystemStatusLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

MSNPillDataSourceController *__getSTCallingStatusDomainClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STCallingStatusDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSTCallingStatusDomainClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSTCallingStatusDomainClass_block_invoke_cold_1();
    return [(MSNPillDataSourceController *)v3 initWithQueue:v4, v5];
  }

  return result;
}

void sub_2587362D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __MSNLog_block_invoke()
{
  MSNLog_log = os_log_create("com.apple.MediaSafetyNet", "state");

  return MEMORY[0x2821F96F8]();
}

void MSNMonitorStoppingCamera()
{
  v0 = MSNLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_258731000, v0, OS_LOG_TYPE_INFO, "Stopping cam.", v1, 2u);
  }
}

void MSNMonitorStoppingMicrophone()
{
  v0 = MSNLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_258731000, v0, OS_LOG_TYPE_INFO, "Stopping mic.", v1, 2u);
  }
}

void MSNMonitorStart()
{
  if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
  {
    if ((_os_feature_enabled_impl() & 1) != 0 || (v0 = _os_feature_enabled_impl()) != 0)
    {
      if (_os_feature_enabled_impl())
      {
        v0 = 2;
      }

      else
      {
        if ((_os_feature_enabled_impl() & 1) == 0)
        {
          qword_27F958928 = "Not reachable";
          v1 = MSNLog();
          if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
          {
            MSNMonitorStart_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
          }

          abort();
        }

        v0 = 1;
      }
    }

    MSNMonitorStartServerMode(v0);
  }
}

void MSNMonitorStartServerMode(int a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  g_serverMode = a1;
  v3 = MSNLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    MSNMonitorStartServerMode_cold_1(v3);
  }

  if (s_mediaSafetyNetQueue)
  {
    v4 = 0;
  }

  else
  {
    v4 = s_mediaSafetyNetDisabledOnThisHardware == 0;
  }

  if (!v4)
  {
    v5 = MSNLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_258731000, v5, OS_LOG_TYPE_INFO, "MediaSafetyNet already initialized.", buf, 2u);
    }

    goto LABEL_47;
  }

  if (os_variant_has_factory_content())
  {
    v6 = MSNLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "Not using MediaSafetyNet on NonUI.";
LABEL_50:
      _os_log_impl(&dword_258731000, v6, OS_LOG_TYPE_INFO, v7, buf, 2u);
    }
  }

  else
  {
    v8 = MGCopyAnswer();
    v9 = [v8 intValue];
    if (v8)
    {
      CFRelease(v8);
    }

    if (v9 == 1)
    {
      goto LABEL_19;
    }

    if (v9 != 2)
    {
      v6 = MSNLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v7 = "Not using MediaSafetyNet on devices of this type (not an iPhone/iPod).";
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    if (MGGetProductType() != 3460419847)
    {
LABEL_19:
      v10 = MSNLog();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

      if (v11)
      {
        v12 = MSNLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v35 = ServerModeDescription(g_serverMode);
          if (MSNFailureMode_defaultOnce != -1)
          {
            MSNMonitorStartServerMode_cold_2();
          }

          *buf = 136315394;
          *&buf[4] = v35;
          v55 = 2080;
          v56 = FailureModeDescription(MSNFailureMode_failureMode);
          _os_log_debug_impl(&dword_258731000, v12, OS_LOG_TYPE_DEBUG, "Starting MediaSafetyNet in server mode: %s failure mode: %s", buf, 0x16u);
        }
      }

      out_token = 0;
      notify_register_check("com.apple.MediaSafetyNet.connectionrequest", &out_token);
      notify_set_state(out_token, 1uLL);
      notify_post("com.apple.MediaSafetyNet.connectionrequest");
      v13 = dispatch_queue_create("MediaSafetyNet", 0);
      v14 = s_mediaSafetyNetQueue;
      s_mediaSafetyNetQueue = v13;

      if (s_mediaSafetyNetQueue)
      {
        g_uiState = 0;
        if (a1 == 1)
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        g_cameraState = v15;
        if (a1 == 2)
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        g_microphoneState = v16;
        g_pillState = 0;
        g_keyboardState = 0;
        v52 = -1;
        if (!notify_register_dispatch("com.apple.keyboard.isOnScreen", &v52, s_mediaSafetyNetQueue, &__block_literal_global_13))
        {
          __MSNMonitorStartServerMode_block_invoke(0, v52);
        }

        v5 = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
        [v5 setNeedsUserInteractivePriority:1];
        [v5 setTransitionHandler:&__block_literal_global_18];
        v17 = [MEMORY[0x277D0AD08] monitorWithConfiguration:v5];
        v18 = s_monitor;
        s_monitor = v17;

        if (g_serverMode <= 1)
        {
          v19 = objc_opt_new();
          v20 = s_carplay;
          s_carplay = v19;
        }

        v21 = [MSNScopedExceptionsServer alloc];
        v22 = [(MSNScopedExceptionsServer *)v21 initWithQueue:s_mediaSafetyNetQueue];
        v23 = s_exceptions;
        s_exceptions = v22;

        v24 = [MSNPillDataSourceServer alloc];
        v25 = [(MSNPillDataSourceServer *)v24 initWithQueue:s_mediaSafetyNetQueue];
        v26 = s_pillDataSource;
        s_pillDataSource = v25;

        if (os_variant_allows_internal_security_policies())
        {
          *buf = 0;
          if (g_microphoneState != 3)
          {
            v27 = MSNLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              LOWORD(token) = 0;
              _os_log_impl(&dword_258731000, v27, OS_LOG_TYPE_INFO, "Installing internal microphone override", &token, 2u);
            }

            token = -1;
            if (notify_register_dispatch("com.apple.mediasafetynet.simulate_microphone", &token, s_mediaSafetyNetQueue, &__block_literal_global_36))
            {
              MSNMonitorStartServerMode_cold_3();
            }

            notify_get_state(token, buf);
          }

          if (g_cameraState != 3)
          {
            v28 = MSNLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              LOWORD(token) = 0;
              _os_log_impl(&dword_258731000, v28, OS_LOG_TYPE_INFO, "Installing internal camera override", &token, 2u);
            }

            token = -1;
            if (notify_register_dispatch("com.apple.mediasafetynet.simulate_camera", &token, s_mediaSafetyNetQueue, &__block_literal_global_42))
            {
              MSNMonitorStartServerMode_cold_4();
            }

            notify_get_state(token, buf);
          }

          token = -1;
          if (notify_register_dispatch("com.apple.mediasafetynet.pill_state", &token, s_mediaSafetyNetQueue, &__block_literal_global_46))
          {
            MSNMonitorStartServerMode_cold_5();
          }
        }

        v29 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, s_mediaSafetyNetQueue);
        v30 = s_timer;
        s_timer = v29;

        v31 = s_timer;
        if (s_timer)
        {
          v32 = dispatch_time(0, 1000000000);
          dispatch_source_set_timer(v31, v32, 0x3B9ACA00uLL, 0x5F5E100uLL);
          dispatch_source_set_event_handler(s_timer, &__block_literal_global_51);
          dispatch_resume(s_timer);
LABEL_47:

          goto LABEL_54;
        }

        qword_27F958928 = "Failed to create timer";
        v36 = MSNLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          MSNMonitorStartServerMode_cold_6(v36, v44, v45, v46, v47, v48, v49, v50);
        }
      }

      else
      {
        qword_27F958928 = "Unexpected NULL dispatch queue.";
        v36 = MSNLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          MSNMonitorStartServerMode_cold_7(v36, v37, v38, v39, v40, v41, v42, v43);
        }
      }

      abort();
    }

    v6 = MSNLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "Not using MediaSafetyNet on specific devices.";
      goto LABEL_50;
    }
  }

LABEL_51:

  v33 = MSNLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258731000, v33, OS_LOG_TYPE_INFO, "Not using MediaSafetyNet on this device.", buf, 2u);
  }

  s_mediaSafetyNetDisabledOnThisHardware = 1;
LABEL_54:
  objc_autoreleasePoolPop(v2);
  v34 = *MEMORY[0x277D85DE8];
}

char *ServerModeDescription(unsigned int a1)
{
  if (a1 >= 3)
  {
    qword_27F958928 = "Unknown mode";
    v2 = MSNLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ServerModeDescription_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    abort();
  }

  return off_2798A3EC8[a1];
}

char *FailureModeDescription(unsigned int a1)
{
  if (a1 >= 6)
  {
    qword_27F958928 = "Unknown mode";
    v2 = MSNLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ServerModeDescription_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    abort();
  }

  return off_2798A3EE0[a1];
}

char *KeyboardStateDescription(unsigned int a1)
{
  if (a1 >= 3)
  {
    qword_27F958928 = "Unknown state";
    v2 = MSNLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __MSNMonitorStartServerMode_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    abort();
  }

  return off_2798A3F10[a1];
}

char *UIStateDescription(unsigned int a1)
{
  if (a1 >= 4)
  {
    qword_27F958928 = "Unknown state";
    v2 = MSNLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __MSNMonitorStartServerMode_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    abort();
  }

  return off_2798A3F28[a1];
}

void __MSNMonitorStartServerMode_block_invoke_19()
{
  v0 = CFPreferencesCopyAppValue(@"MediaSafetyNetWaitingTTR", @"com.apple.mediaserverd");
  if (v0)
  {
    v1 = v0;
    v2 = CFPreferencesCopyAppValue(@"MediaSafetyNetWaitingTTRDate", @"com.apple.mediaserverd");
    v3 = +[MSNTTR sharedInstance];
    [v3 beginTTRWithTitle:v1 date:v2];

    if (v2)
    {
      CFRelease(v2);
    }

    CFRelease(v1);
  }
}

void __MSNMonitorStartServerMode_block_invoke_34(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  g_production = 0;
  v3 = MSNLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258731000, v3, OS_LOG_TYPE_INFO, "Microphone override changed", buf, 2u);
  }

  state64 = 0;
  state = notify_get_state(a2, &state64);
  if (state64)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (state)
  {
    v5 = 0;
  }

  g_microphoneState = v5;
  v6 = MSNLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (g_microphoneState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v9 = MSNLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __MSNMonitorStartServerMode_block_invoke_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
      }

      abort();
    }

    v7 = off_2798A3F48[g_microphoneState];
    *buf = 136315138;
    v19 = v7;
    _os_log_impl(&dword_258731000, v6, OS_LOG_TYPE_INFO, "Updated microphone state: %s", buf, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

char *MicrophoneStateDescription(unsigned int a1)
{
  if (a1 >= 4)
  {
    qword_27F958928 = "Unknown state";
    v2 = MSNLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __MSNMonitorStartServerMode_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    abort();
  }

  return off_2798A3F48[a1];
}

void __MSNMonitorStartServerMode_block_invoke_40(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  g_production = 0;
  v3 = MSNLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258731000, v3, OS_LOG_TYPE_INFO, "Camera override changed", buf, 2u);
  }

  state64 = 0;
  state = notify_get_state(a2, &state64);
  if (state64)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (state)
  {
    v5 = 0;
  }

  g_cameraState = v5;
  v6 = MSNLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (g_cameraState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v9 = MSNLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __MSNMonitorStartServerMode_block_invoke_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
      }

      abort();
    }

    v7 = off_2798A3F48[g_cameraState];
    *buf = 136315138;
    v19 = v7;
    _os_log_impl(&dword_258731000, v6, OS_LOG_TYPE_INFO, "Updated camera state: %s", buf, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __MSNMonitorStartServerMode_block_invoke_44(int a1, int token)
{
  v18 = *MEMORY[0x277D85DE8];
  g_production = 0;
  state64 = 0;
  if (!notify_get_state(token, &state64))
  {
    if (state64)
    {
      g_pillState = state64;
      s_lockPill = 1;
      v2 = MSNLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        if (g_pillState < 3)
        {
          v3 = off_2798A3F68[g_pillState];
          *buf = 136315138;
          v17 = v3;
          v4 = "Updated pill state: %s";
LABEL_9:
          _os_log_impl(&dword_258731000, v2, OS_LOG_TYPE_INFO, v4, buf, 0xCu);
          goto LABEL_10;
        }

        qword_27F958928 = "Unknown state";
        v7 = MSNLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
LABEL_15:
          __MSNMonitorStartServerMode_block_invoke_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
        }

LABEL_16:

        abort();
      }
    }

    else
    {
      s_lockPill = 0;
      g_pillState = 0;
      v2 = MSNLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        if (g_pillState < 3)
        {
          v5 = off_2798A3F68[g_pillState];
          *buf = 136315138;
          v17 = v5;
          v4 = "Reset pill state: %s";
          goto LABEL_9;
        }

        qword_27F958928 = "Unknown state";
        v7 = MSNLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        goto LABEL_16;
      }
    }

LABEL_10:
  }

  v6 = *MEMORY[0x277D85DE8];
}

char *PillStateDescription(unsigned int a1)
{
  if (a1 >= 3)
  {
    qword_27F958928 = "Unknown state";
    v2 = MSNLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __MSNMonitorStartServerMode_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    abort();
  }

  return off_2798A3F68[a1];
}

void __MSNFailureMode_block_invoke()
{
  v17 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"MediaSafetyNetFailureMode", @"com.apple.mediaserverd", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = AppIntegerValue;
  }

  else
  {
    v1 = 2;
  }

  MSNFailureMode_failureMode = v1;
  if (os_variant_allows_internal_security_policies())
  {
    memset(&v16, 0, sizeof(v16));
    if (!stat("/var/db/internal_disable_mediasafetynet_cookie", &v16))
    {
      v2 = MSNLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        __MSNFailureMode_block_invoke_cold_1(v2);
      }

      MSNFailureMode_failureMode = 1;
    }
  }

  v3 = MSNLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    if (MSNFailureMode_failureMode >= 6)
    {
      qword_27F958928 = "Unknown mode";
      v7 = MSNLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        ServerModeDescription_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
      }

      abort();
    }

    v4 = "";
    v5 = off_2798A3EE0[MSNFailureMode_failureMode];
    if (!keyExistsAndHasValidFormat)
    {
      v4 = " default";
    }

    v16.st_dev = 136315394;
    *&v16.st_mode = v4;
    WORD2(v16.st_ino) = 2080;
    *(&v16.st_ino + 6) = v5;
    _os_log_impl(&dword_258731000, v3, OS_LOG_TYPE_INFO, "MediaSafetyNet%s failure mode: %s", &v16, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t HotCameraAllowed()
{
  if (_AXSSwitchControlEnabledAndNeedsCameraOnLockScreen())
  {
    v0 = MSNLog();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_258731000, v0, OS_LOG_TYPE_INFO, "Switch Control enabled.", v3, 2u);
    }

    return 1;
  }

  if (g_cameraExceptionState || ([s_exceptions isExceptionInEffect:0x2869B39E8] & 1) != 0 || (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B3AA8) & 1) != 0 || (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B3B28) & 1) != 0 || (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B3B48) & 1) != 0 || (objc_msgSend(s_exceptions, "isExceptionInEffect:", 0x2869B3AE8) & 1) != 0)
  {
    return 1;
  }

  v2 = s_exceptions;

  return [v2 isExceptionInEffect:0x2869B3B68];
}

void __MSNStateFailureWithMode_block_invoke()
{
  v82[7] = *MEMORY[0x277D85DE8];
  if (g_production == 1)
  {
    v81[0] = @"Mic";
    if (g_microphoneState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v37 = MSNLog();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_85;
      }
    }

    else
    {
      v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:off_2798A3F48[g_microphoneState]];
      v82[0] = v0;
      v81[1] = @"Cam";
      if (g_cameraState >= 4)
      {
        qword_27F958928 = "Unknown state";
        v37 = MSNLog();
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_85;
        }
      }

      else
      {
        v1 = v0;
        v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:off_2798A3F48[g_cameraState]];
        v82[1] = v2;
        v81[2] = @"MicClient";
        if (g_microphoneClient)
        {
          v3 = g_microphoneClient;
        }

        else
        {
          v3 = "None";
        }

        v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
        v82[2] = v4;
        v81[3] = @"CamClient";
        if (g_cameraClient)
        {
          v5 = g_cameraClient;
        }

        else
        {
          v5 = "None";
        }

        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
        v82[3] = v6;
        v81[4] = @"Pill";
        if (g_pillState >= 3)
        {
          qword_27F958928 = "Unknown state";
          v37 = MSNLog();
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_85;
          }
        }

        else
        {
          v7 = v6;
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:off_2798A3F68[g_pillState]];
          v82[4] = v8;
          v81[5] = @"UI";
          if (g_uiState >= 4)
          {
            qword_27F958928 = "Unknown state";
            v37 = MSNLog();
            if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_85;
            }
          }

          else
          {
            v9 = v8;
            v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:off_2798A3F28[g_uiState]];
            v82[5] = v10;
            v81[6] = @"Kbd";
            if (g_keyboardState < 3)
            {
              v11 = v10;
              v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:off_2798A3F10[g_keyboardState]];
              v82[6] = v12;
              v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:7];
              AnalyticsSendEvent();

              goto LABEL_14;
            }

            qword_27F958928 = "Unknown state";
            v37 = MSNLog();
            if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_85;
            }
          }
        }
      }
    }

    __MSNMonitorStartServerMode_block_invoke_cold_1(v37, v52, v53, v54, v55, v56, v57, v58);
    goto LABEL_85;
  }

LABEL_14:
  v14 = MSNLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    __MSNStateFailureWithMode_block_invoke_cold_6(v14);
  }

  v15 = MSNLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    if (g_production)
    {
      v26 = "";
    }

    else
    {
      v26 = "Testing: ";
    }

    if (g_uiState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v37 = MSNLog();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_85;
      }

      goto LABEL_74;
    }

    if (g_cameraState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v37 = MSNLog();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_85;
      }

      goto LABEL_74;
    }

    v27 = g_cameraClient;
    if (g_cameraClient)
    {
      v28 = ":";
    }

    else
    {
      v28 = "";
    }

    if (!g_cameraClient)
    {
      v27 = "";
    }

    if (g_microphoneState >= 4)
    {
      qword_27F958928 = "Unknown state";
      v37 = MSNLog();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_85;
      }

      goto LABEL_74;
    }

    v29 = g_microphoneClient;
    if (g_microphoneClient)
    {
      v30 = ":";
    }

    else
    {
      v30 = "";
    }

    if (!g_microphoneClient)
    {
      v29 = "";
    }

    if (g_pillState >= 3)
    {
      qword_27F958928 = "Unknown state";
      v37 = MSNLog();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_85;
      }

      goto LABEL_74;
    }

    if (g_keyboardState < 3)
    {
      v31 = off_2798A3F28[g_uiState];
      v32 = off_2798A3F48[g_cameraState];
      v33 = off_2798A3F48[g_microphoneState];
      v34 = off_2798A3F68[g_pillState];
      v35 = off_2798A3F10[g_keyboardState];
      v36 = g_cameraExceptionState;
      if (!g_cameraExceptionState)
      {
        v36 = "None";
      }

      *buf = 136317698;
      v60 = v26;
      v61 = 2080;
      v62 = v31;
      v63 = 2080;
      v64 = v32;
      v65 = 2080;
      v66 = v28;
      v67 = 2080;
      v68 = v27;
      v69 = 2080;
      v70 = v33;
      v71 = 2080;
      v72 = v30;
      v73 = 2080;
      v74 = v29;
      v75 = 2080;
      v76 = v34;
      v77 = 2080;
      v78 = v35;
      v79 = 2080;
      v80 = v36;
      _os_log_fault_impl(&dword_258731000, v15, OS_LOG_TYPE_FAULT, "MediaSafetyNet failure with states: %sUI(%s) Cam(%s%s%s) Mic(%s%s%s) Pill(%s) Kbd(%s) CameraException(%s)", buf, 0x70u);
      goto LABEL_17;
    }

    qword_27F958928 = "Unknown state";
    v37 = MSNLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
LABEL_74:
      __MSNMonitorStartServerMode_block_invoke_cold_1(v37, v45, v46, v47, v48, v49, v50, v51);
    }

LABEL_85:

    abort();
  }

LABEL_17:

  v16 = +[MSNTTR sharedInstance];
  if (g_uiState >= 4)
  {
    qword_27F958928 = "Unknown state";
    v37 = MSNLog();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_85;
    }

LABEL_64:
    __MSNMonitorStartServerMode_block_invoke_cold_1(v37, v38, v39, v40, v41, v42, v43, v44);
    goto LABEL_85;
  }

  if (g_cameraState >= 4)
  {
    qword_27F958928 = "Unknown state";
    v37 = MSNLog();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_85;
    }

    goto LABEL_64;
  }

  if (g_microphoneState >= 4)
  {
    qword_27F958928 = "Unknown state";
    v37 = MSNLog();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_85;
    }

    goto LABEL_64;
  }

  if (g_pillState >= 3)
  {
    qword_27F958928 = "Unknown state";
    v37 = MSNLog();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_85;
    }

    goto LABEL_64;
  }

  if (g_keyboardState >= 3)
  {
    qword_27F958928 = "Unknown state";
    v37 = MSNLog();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_85;
    }

    goto LABEL_64;
  }

  v17 = v16;
  v18 = g_cameraClient;
  v19 = g_microphoneClient;
  if (g_microphoneClient)
  {
    v20 = ":";
  }

  else
  {
    v19 = "";
    v20 = "";
  }

  if (g_cameraClient)
  {
    v21 = ":";
  }

  else
  {
    v18 = "";
    v21 = "";
  }

  if (g_production)
  {
    v22 = "";
  }

  else
  {
    v22 = "Testing: ";
  }

  v23 = g_cameraExceptionState;
  if (!g_cameraExceptionState)
  {
    v23 = "None";
  }

  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"MediaSafetyNet: %sUI(%s) Cam(%s%s%s) Mic(%s%s%s) Pill(%s) Kbd(%s) CameraException(%s)", v22, off_2798A3F28[g_uiState], off_2798A3F48[g_cameraState], v21, v18, off_2798A3F48[g_microphoneState], v20, v19, off_2798A3F68[g_pillState], off_2798A3F10[g_keyboardState], v23];
  [v17 beginTTRWithTitle:v24];

  v25 = *MEMORY[0x277D85DE8];
}

void __MSNStateFailureWithMode_block_invoke_157()
{
  v0 = MEMORY[0x277CBEB98];
  v3 = [@"com.apple.mediaserverd|com.apple.callservicesd|com.apple.telephonyd|com.apple.CommCenter" componentsSeparatedByString:@"|"];
  v1 = [v0 setWithArray:v3];
  v2 = MSNStateFailureWithMode_terminatingProcesses;
  MSNStateFailureWithMode_terminatingProcesses = v1;
}

void __MSNStateFailureWithMode_block_invoke_2()
{
  v0 = MEMORY[0x277CBEB98];
  v3 = [@"callservicesd|mediaserverd|telephonyd|CommCenter" componentsSeparatedByString:@"|"];
  v1 = [v0 setWithArray:v3];
  v2 = MSNStateFailureWithMode_terminatingProcesses_167;
  MSNStateFailureWithMode_terminatingProcesses_167 = v1;
}

uint64_t __MSNPeriodicLog_block_invoke()
{
  MSNPeriodicLog_log = os_log_create("com.apple.MediaSafetyNet", "periodic");

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x70u);
}

void CarPlayNotificationCallback(int a1, uint64_t a2, int a3, int a4, CFTypeRef cf)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = CFGetTypeID(cf);
  if (v7 != CFDictionaryGetTypeID())
  {
    qword_27F958928 = "Unexpected notification payload type";
    v12 = MSNLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      CarPlayNotificationCallback_cold_1();
    }

LABEL_11:

    abort();
  }

  Value = CFDictionaryGetValue(cf, *MEMORY[0x277D26E80]);
  v9 = MSNLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v15 = CFBooleanGetValue(Value);
    _os_log_impl(&dword_258731000, v9, OS_LOG_TYPE_INFO, "Received notification of CarPlay status: %{BOOL}d", buf, 8u);
  }

  if (!Value || (v10 = CFGetTypeID(Value), v10 != CFBooleanGetTypeID()))
  {
    qword_27F958928 = "Unexpected notification payload type";
    v12 = MSNLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      CarPlayNotificationCallback_cold_1();
    }

    goto LABEL_11;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __CarPlayNotificationCallback_block_invoke;
  v13[3] = &__block_descriptor_48_e5_v8__0l;
  v13[4] = a2;
  v13[5] = Value;
  dispatch_async(s_mediaSafetyNetQueue, v13);
  v11 = *MEMORY[0x277D85DE8];
}

void __CarPlayNotificationCallback_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 8) = CFBooleanGetValue(*(a1 + 40)) != 0;
  v2 = MSNLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    Value = CFBooleanGetValue(*(a1 + 40));
    v5[0] = 67109120;
    v5[1] = Value;
    _os_log_impl(&dword_258731000, v2, OS_LOG_TYPE_INFO, "Updated CarPlay status to: %{BOOL}d", v5, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_258739700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MSNTTRUserNotificationCallback(uint64_t a1, uint64_t a2)
{
  v3 = +[MSNTTR sharedInstance];
  [v3 handleCallback:a2];
}

void *__getSBUserNotificationDismissOnLockSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2798A3FC0;
    v8 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
    if (SpringBoardServicesLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SBUserNotificationDismissOnLock");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBUserNotificationDismissOnLockSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getLSApplicationWorkspaceClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MobileCoreServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MobileCoreServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2798A3FD8;
    v7 = 0;
    MobileCoreServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (MobileCoreServicesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("LSApplicationWorkspace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLSApplicationWorkspaceClass_block_invoke_cold_1();
  }

  getLSApplicationWorkspaceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MobileCoreServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileCoreServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void __MSNMonitorSetLastCameraClient_block_invoke_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = g_cameraClient;
  _os_log_debug_impl(&dword_258731000, log, OS_LOG_TYPE_DEBUG, "Last camera client: %s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void MSNMonitorStart_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_258731000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void MSNMonitorStartServerMode_cold_1(NSObject *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = _os_feature_enabled_impl();
  v4 = 1024;
  v5 = _os_feature_enabled_impl();
  _os_log_debug_impl(&dword_258731000, a1, OS_LOG_TYPE_DEBUG, "Separate Cam: %i Separate Mic: %i", v3, 0xEu);
  v2 = *MEMORY[0x277D85DE8];
}

void MSNMonitorStartServerMode_cold_6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_258731000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void MSNMonitorStartServerMode_cold_7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_258731000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void ServerModeDescription_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_258731000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __MSNMonitorStartServerMode_block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_258731000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __MSNMonitorStartServerMode_block_invoke_49_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_258731000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __MSNMonitorStartServerMode_block_invoke_49_cold_12(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_1_0(&dword_258731000, a2, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void CarPlayNotificationCallback_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}