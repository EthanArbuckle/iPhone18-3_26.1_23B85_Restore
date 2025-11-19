void gckSessionRecvTCPMessage(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v88 = *MEMORY[0x277D85DE8];
  memset(v87, 170, sizeof(v87));
  v71 = v3;
  v5 = recv(*(v3 + 72), v87, 0x1000uLL, 0);
  v6 = v5;
  if (v5 == -1)
  {
    v10 = *__error();
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(v71 + 72);
        v82[0] = 136316418;
        *&v82[1] = v11;
        LOWORD(v82[3]) = 2080;
        *(&v82[3] + 2) = "gckSessionRecvTCPMessage";
        HIWORD(v82[5]) = 1024;
        v82[6] = 3158;
        LOWORD(v82[7]) = 1024;
        *(&v82[7] + 2) = 3158;
        HIWORD(v82[8]) = 1024;
        v82[9] = v13;
        LOWORD(v82[10]) = 1024;
        *(&v82[10] + 2) = v10 | 0xC01A0000;
        _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GCKSession.c:%d: recv(%d) failed(%X)", v82, 0x2Eu);
      }
    }

    goto LABEL_76;
  }

  if (!v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(v71 + 72);
        v82[0] = 136316162;
        *&v82[1] = v7;
        LOWORD(v82[3]) = 2080;
        *(&v82[3] + 2) = "gckSessionRecvTCPMessage";
        HIWORD(v82[5]) = 1024;
        v82[6] = 3149;
        LOWORD(v82[7]) = 1024;
        *(&v82[7] + 2) = 3149;
        HIWORD(v82[8]) = 1024;
        v82[9] = v9;
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GCKSession.c:%d: recv(%d) returned 0: Shutting down connection", v82, 0x28u);
      }
    }

    shutdown(*(v71 + 72), 2);
    close(*(v71 + 72));
    *(v71 + 72) = -1;
    goto LABEL_76;
  }

  v81 = 0xAAAAAAAAAAAAAAAALL;
  v14 = OSPFGetLength(v87, v5);
  if (v14 < 1)
  {
    goto LABEL_76;
  }

  v16 = v14;
  v17 = v87;
  *&v15 = 136317186;
  v66 = v15;
  v73 = v4;
  do
  {
    v80 = 0;
    if (*(v71 + 504))
    {
      v18 = &__block_literal_global;
    }

    else
    {
      v18 = 0;
    }

    ErrorLogLevelForModule = OSPFParse(&v81, &v80, v17, v16, 0, v18);
    if (ErrorLogLevelForModule < 1)
    {
      if (!ErrorLogLevelForModule)
      {
        v64 = v81;
        if (*(v81 + 1) != 1)
        {
LABEL_73:
          free(v64);
LABEL_74:
          if (v80)
          {
            free(v80);
          }

          break;
        }

        gckSessionProcessHello(v4, v71, v80, 0);
      }

      v64 = v81;
      if (!v81)
      {
        goto LABEL_74;
      }

      goto LABEL_73;
    }

    v20 = v81;
    v78 = *(v81 + 1);
    if (v78 != 6)
    {
      *&v86[14] = 0xAAAAAAAAAAAAAAAALL;
      *&v21 = 0xAAAAAAAAAAAAAAAALL;
      *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v86 = v21;
      v85[3] = v21;
      v85[2] = v21;
      *(v85 + 14) = 0xAAAAAAAAAAAAAAAALL;
      v85[0] = v21;
      v84 = v21;
      v83 = v21;
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (ErrorLogLevelForModule >= 8)
      {
        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x277CE5818];
        v24 = *MEMORY[0x277CE5818];
        if (*MEMORY[0x277CE5808] == 1)
        {
          ErrorLogLevelForModule = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
          if (ErrorLogLevelForModule)
          {
            v25 = IPPORTToStringWithSize();
            v26 = v17;
            v27 = v81[3];
            v28 = IPPORTToStringWithSize();
            v29 = v81[2];
            v82[0] = v66;
            *&v82[1] = v22;
            LOWORD(v82[3]) = 2080;
            *(&v82[3] + 2) = "gckSessionRecvTCPMessage";
            HIWORD(v82[5]) = 1024;
            v82[6] = 3196;
            LOWORD(v82[7]) = 2080;
            *(&v82[7] + 2) = v25;
            HIWORD(v82[9]) = 1024;
            v82[10] = v27;
            v17 = v26;
            LOWORD(v82[11]) = 2080;
            *(&v82[11] + 2) = v28;
            HIWORD(v82[13]) = 1024;
            v82[14] = v29;
            LOWORD(v82[15]) = 1024;
            *(&v82[15] + 2) = v6;
            HIWORD(v82[16]) = 1024;
            v82[17] = v78;
            _os_log_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d TCP: [%s] %08X <= [%s] %08X: %d bytes(%d)", v82, 0x48u);
          }
        }

        else
        {
          ErrorLogLevelForModule = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
          if (ErrorLogLevelForModule)
          {
            v59 = IPPORTToStringWithSize();
            v60 = v17;
            v61 = v81[3];
            v62 = IPPORTToStringWithSize();
            v63 = v81[2];
            v82[0] = v66;
            *&v82[1] = v22;
            LOWORD(v82[3]) = 2080;
            *(&v82[3] + 2) = "gckSessionRecvTCPMessage";
            HIWORD(v82[5]) = 1024;
            v82[6] = 3196;
            LOWORD(v82[7]) = 2080;
            *(&v82[7] + 2) = v59;
            HIWORD(v82[9]) = 1024;
            v82[10] = v61;
            v17 = v60;
            LOWORD(v82[11]) = 2080;
            *(&v82[11] + 2) = v62;
            HIWORD(v82[13]) = 1024;
            v82[14] = v63;
            LOWORD(v82[15]) = 1024;
            *(&v82[15] + 2) = v6;
            HIWORD(v82[16]) = 1024;
            v82[17] = v78;
            _os_log_debug_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEBUG, " [%s] %s:%d TCP: [%s] %08X <= [%s] %08X: %d bytes(%d)", v82, 0x48u);
          }
        }
      }

      v20 = v81;
    }

    v30 = (v20 + 3);
    v31 = 4 * (*v20 & 0xF);
    MEMORY[0x28223BE20](ErrorLogLevelForModule);
    v34 = (&v66 - v32);
    if (!v33)
    {
      goto LABEL_62;
    }

    v68 = v17;
    v70 = v6;
    v35 = v33;
    memset(&v66 - v32, 170, v31);
    v74 = 0;
    v76 = v20 + 3;
    v77 = v35;
    v75 = v34;
    do
    {
      v37 = *v30++;
      v36 = v37;
      if (v37 == *(v4 + 108))
      {
        v74 = 1;
        NextHop = 0xFFFFFFFFLL;
      }

      else
      {
        NextHop = gckSessionFindNextHop(v4, v36);
      }

      *v34++ = NextHop;
      --v35;
    }

    while (v35);
    v67 = &v66;
    v69 = v16;
    v39 = v78;
    v72 = v78 == 7;
    v40 = v20 + 4;
    v41 = v75;
    v42 = v76;
    v43 = v75 + 1;
    v44 = v77;
    v45 = v77 - 1;
    do
    {
      v46 = v41[v35];
      if (v46 == -1)
      {
        ++v35;
        goto LABEL_50;
      }

      v79 = &v66;
      MEMORY[0x28223BE20](NextHop);
      v48 = (&v66 - v47);
      NextHop = memset(&v66 - v47, 170, v31);
      v44 = v77;
      *v48 = *&v42[4 * v35++];
      v49 = 1;
      if (v35 >= v44)
      {
        v39 = v78;
      }

      else
      {
        v50 = v45;
        v51 = v43;
        v52 = v40;
        v39 = v78;
        do
        {
          if (*v51 == v46)
          {
            v48[v49] = *v52;
            v49 = (v49 + 1);
            *v51 = -1;
          }

          ++v52;
          ++v51;
          --v50;
        }

        while (v50);
      }

      switch(v39)
      {
        case 7:
LABEL_43:
          memset(v82, 170, sizeof(v82));
          v53 = v73;
          NextHop = OSPFMakeData(v82, 4096, v80, 0, v72, v81[2], v48, v49, *(*(v73 + 96) + 24), *(*(v73 + 96) + 32), 0x40u, 0, 0);
          if (NextHop >= 1)
          {
            NextHop = SendUDPPacketToParticipantChannelID(v53, v82, NextHop, v46, 0, -1, 1);
          }

LABEL_48:
          v39 = v78;
          v44 = v77;
          break;
        case 6:
          memset(v82, 170, sizeof(v82));
          NextHop = OSPFMakeAudio(v82, 4096, v80, 0, v81[2], v48, v49);
          if (NextHop >= 1)
          {
            NextHop = SendUDPPacketToParticipantChannelID(v73, v82, NextHop, v46, 0, -1, 2);
          }

          goto LABEL_48;
        case 5:
          goto LABEL_43;
      }

      v41 = v75;
      v42 = v76;
LABEL_50:
      ++v40;
      ++v43;
      --v45;
    }

    while (v35 != v44);
    v4 = v73;
    LODWORD(v6) = v70;
    v16 = v69;
    v17 = v68;
    if (v74)
    {
      switch(v39)
      {
        case 7:
          goto LABEL_55;
        case 6:
          v54 = *(v73 + 96);
          v55 = v81[2];
          v57 = *v80;
          v58 = v80[2];
          v56 = 5;
          goto LABEL_60;
        case 5:
LABEL_55:
          v54 = *(v73 + 96);
          v55 = v81[2];
          if (v39 == 7)
          {
            v56 = 6;
          }

          else
          {
            v56 = 4;
          }

          v57 = *v80;
          v58 = v80[2];
LABEL_60:
          PostEventCallback(v54, v55, v56, v57, v58, 0);
          break;
        default:
          gckSessionProcessOSPFPacket(v73, v71, v81, v80);
          break;
      }
    }

LABEL_62:
    if (v81)
    {
      free(v81);
    }

    if (v80)
    {
      free(v80);
    }

    v6 = (v6 - v16);
    if (v6 < 1)
    {
      break;
    }

    v17 += v16;
    v16 = OSPFGetLength(v17, v6);
  }

  while (v16 > 0);
LABEL_76:
  v65 = *MEMORY[0x277D85DE8];
}

uint64_t __gckSessionRecvMessage_block_invoke(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 32);
  ++*(v3 + 652);
  if (a3)
  {
    v6 = result;
    pthread_mutex_lock((v3 + 664));
    if (a3 >= 1)
    {
      v7 = 0;
      v8 = a3;
      do
      {
        v9 = *(a2 + 8 * v7);
        if (v9)
        {
          v10 = v9[1];
          v11 = *v9;
          if ((v11 - 13) >= 2)
          {
            if (v11 == 15)
            {
              v26 = *(v6 + 48);
              if ((*v26 & 1) == 0)
              {
                *v26 = 1;
                *(v26 + 8) = 4 * v10;
                *(v26 + 6) = bswap32(*(v9 + 1)) >> 16;
                *(v26 + 2) = bswap32(*(v9 + 2)) >> 16;
                *(v26 + 4) = bswap32(*(v9 + 3)) >> 16;
              }
            }
          }

          else
          {
            v12 = *(v6 + 32);
            v13 = v12[161];
            v14 = v12[165];
            if ((OSPFProcessDynamicOption(v12 + 156, v9, *(v6 + 40)) & 1) == 0)
            {
              v15 = *(v6 + 32);
              v16 = *(v15 + 644);
              v17 = v16 >= v13;
              v18 = v16 - v13;
              *(v15 + 604) = *(v15 + 604) + v18;
              if (v18 != 0 && v17)
              {
                *(v15 + 612) = *(v15 + 612) + (*(v15 + 660) - v14);
              }

              v19 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
              if (v19)
              {
                v20 = v19;
                v21 = 4 * v10;
                v22 = malloc_type_calloc(1uLL, v21 + 4, 0x100004052888210uLL);
                *v20 = v22;
                if (v22)
                {
                  memcpy(v22, *(a2 + 8 * v7), v21 + 4);
                  v23 = (*(v6 + 32) + 520);
                  do
                  {
                    v24 = v23;
                    v25 = *v23;
                    v23 = (*v23 + 8);
                  }

                  while (v25);
                  *v24 = v20;
                }

                else
                {
                  free(v20);
                }
              }
            }
          }
        }

        ++v7;
      }

      while (v7 != v8);
    }

    v27 = (*(v6 + 32) + 664);

    return pthread_mutex_unlock(v27);
  }

  return result;
}

void gckSessionProcessOSPFPacket(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 1);
  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      v26 = *MEMORY[0x277D85DE8];

      gckSessionProcessHello(a1, a2, a4, 1);
    }

    else
    {
      if (v7 != 2)
      {
        goto LABEL_36;
      }

      v16 = *MEMORY[0x277D85DE8];

      gckSessionProcessDD(a1, a2, a4);
    }
  }

  else
  {
    if (v7 != 3)
    {
      if (v7 == 4)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v18 = VRTraceErrorLogLevelToCSTR();
          v19 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v20 = *(a1 + 108);
            v21 = *(a2 + 116);
            *buf = 136316162;
            v45 = v18;
            v46 = 2080;
            v47 = "gckSessionProcessLSAACK";
            v48 = 1024;
            v49 = 3031;
            v50 = 1024;
            *v51 = v20;
            *&v51[4] = 1024;
            *&v51[6] = v21;
            _os_log_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d I am %08X ==================================== LSAACK from %08X", buf, 0x28u);
          }
        }

        pthread_mutex_lock((a2 + 664));
        v22 = *(a2 + 496);
        if (v22)
        {
          v23 = (a2 + 496);
          do
          {
            if (*v22 == 4 && *(v22 + 28) == *(a4 + 12))
            {
              *v23 = *(v22 + 8);
              v24 = *(v22 + 5);
              if (v24)
              {
                free(v24);
              }

              free(v22);
            }

            else
            {
              v23 = v22 + 64;
            }

            v22 = *v23;
          }

          while (*v23);
        }

LABEL_35:
        pthread_mutex_unlock((a2 + 664));
        goto LABEL_36;
      }

      if (v7 == 8)
      {
        v8 = micro();
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v11 = "request";
            v12 = *(a4 + 14);
            v13 = *(a2 + 116);
            if ((*(a4 + 12) & 2) == 0)
            {
              v11 = "response";
            }

            v14 = *(a2 + 100);
            *buf = 136316674;
            v45 = v9;
            v46 = 2080;
            v47 = "gckSessionProcessHeartbeat";
            v48 = 1024;
            v49 = 2594;
            v50 = 2080;
            *v51 = v11;
            *&v51[8] = 1024;
            *v52 = v12;
            *&v52[4] = 1024;
            v53 = v13;
            v54 = 1024;
            v55 = v14;
            _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received Heartbeat (%s) with SN [%d] from participant [%08X] over channel [%d]", buf, 0x38u);
          }
        }

        if ((*(a4 + 12) & 2) != 0)
        {
          v27 = *(a2 + 116);
          v28 = *(a4 + 14);
          v29 = *(a2 + 100);
          v43 = 0xAAAAAAAAAAAAAAAALL;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v30 = VRTraceErrorLogLevelToCSTR();
            v31 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v45 = v30;
              v46 = 2080;
              v47 = "gckSessionSendHeartbeat";
              v48 = 1024;
              v49 = 1689;
              v50 = 1024;
              *v51 = v27;
              _os_log_impl(&dword_24E50C000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending Heartbeat to [%08X]", buf, 0x22u);
            }
          }

          v32 = OSPFMakeHeartbeat(&v43, *(a1 + 108), v27, 0, v28);
          ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
          if ((v32 & 0x80000000) != 0)
          {
            if (ErrorLogLevelForModule >= 3)
            {
              v36 = VRTraceErrorLogLevelToCSTR();
              v37 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                *buf = 136316418;
                v45 = v36;
                v46 = 2080;
                v47 = "gckSessionSendHeartbeat";
                v48 = 1024;
                v49 = 1694;
                v50 = 1024;
                *v51 = v27;
                *&v51[4] = 1024;
                *&v51[6] = v28;
                *v52 = 1024;
                *&v52[2] = v29;
                _os_log_error_impl(&dword_24E50C000, v37, OS_LOG_TYPE_ERROR, " [%s] %s:%d OSPFMakeHeartbeat failed for participant [%08X], SN [%d], channel [%d]", buf, 0x2Eu);
              }
            }
          }

          else
          {
            if (ErrorLogLevelForModule >= 7)
            {
              v34 = VRTraceErrorLogLevelToCSTR();
              v35 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316674;
                v45 = v34;
                v46 = 2080;
                v47 = "gckSessionSendHeartbeat";
                v48 = 1024;
                v49 = 1698;
                v50 = 2080;
                *v51 = "response";
                *&v51[8] = 1024;
                *v52 = v28;
                *&v52[4] = 1024;
                v53 = v27;
                v54 = 1024;
                v55 = v29;
                _os_log_impl(&dword_24E50C000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending Heartbeat (%s) with SN [%d] to participant [%08X] over channel [%d]", buf, 0x38u);
              }
            }

            SendUDPPacketToParticipantChannelID(a1, v43, v32, v27, 0, v29, 0);
            free(v43);
          }

          goto LABEL_36;
        }

        pthread_mutex_lock((a2 + 664));
        v15 = *(a2 + 496);
        if (v15)
        {
          while (*v15 != 8)
          {
            v15 = *(v15 + 64);
            if (!v15)
            {
              goto LABEL_35;
            }
          }

          if (*(v15 + 56) == *(a4 + 14))
          {
            *(v15 + 8) = 0x3FC999999999999ALL;
            v38 = *(a2 + 392);
            *(v15 + 32) = v8 + v38;
            *(v15 + 16) = v8 + v38 * 0.5;
          }

          else if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v39 = VRTraceErrorLogLevelToCSTR();
            v40 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v41 = *(a4 + 14);
              v42 = *(v15 + 56);
              *buf = 136316162;
              v45 = v39;
              v46 = 2080;
              v47 = "gckSessionProcessHeartbeat";
              v48 = 1024;
              v49 = 2617;
              v50 = 1024;
              *v51 = v41;
              *&v51[4] = 1024;
              *&v51[6] = v42;
              _os_log_impl(&dword_24E50C000, v40, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received SN [%u] doesn't match the expected SN [%u]", buf, 0x28u);
            }
          }
        }

        goto LABEL_35;
      }

LABEL_36:
      v25 = *MEMORY[0x277D85DE8];
      return;
    }

    v17 = *MEMORY[0x277D85DE8];

    gckSessionProcessLSA(a1, a2, a4);
  }
}

uint64_t gckSessionProcessHello(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v77[2] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 408);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a2 + 116);
      v12 = *(a2 + 100);
      v13 = *(a3 + 16);
      *buf = 136316418;
      v70 = v9;
      v71 = 2080;
      v72 = "gckSessionProcessHello";
      v73 = 1024;
      v74 = 2423;
      v75 = 1024;
      *v76 = v11;
      *&v76[4] = 1024;
      *&v76[6] = v12;
      LOWORD(v77[0]) = 2048;
      *(v77 + 2) = v13;
      _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received Hello from participant [%08X] over channel [%d]. Hello Flags [%llX]", buf, 0x32u);
    }
  }

  v14 = micro();
  if (a4)
  {
    v15 = gckSessionChangeStateCList(a1, a2, 3);
    v16 = *(a3 + 12);
    v17 = *(a1 + 24);
    if (v17 < v16)
    {
      v16 = v17;
    }

    if (v16 <= 5)
    {
      v18 = 5;
    }

    else
    {
      v18 = v16;
    }
  }

  else
  {
    v18 = 0;
    v15 = 0;
  }

  v19 = *(a2 + 116);
  if (*(a1 + 108) > v19)
  {
    v20 = gckSessionSendHello(a1, v19, 0, 0, v18, *(a2 + 100));
    if (v20 < 0 && v20 != -1072037876)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
      {
        gckSessionProcessHello_cold_1();
        if (a4)
        {
          goto LABEL_17;
        }
      }

      else if (a4)
      {
LABEL_17:
        gckSessionChangeStateCList(a1, a2, 5);
        goto LABEL_19;
      }

LABEL_86:
      v15 = 0;
      goto LABEL_87;
    }
  }

  if (!a4)
  {
    goto LABEL_86;
  }

LABEL_19:
  pthread_mutex_lock((a2 + 664));
  v21 = *(a3 + 16);
  *(a2 + 56) = v21;
  if ((v21 & 2) != 0)
  {
    if ((v21 & 0x400) != 0 && *(a1 + 104) != 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x277CE5818];
        v27 = *MEMORY[0x277CE5818];
        if (*MEMORY[0x277CE5808] == 1)
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v70 = v25;
            v71 = 2080;
            v72 = "gckSessionProcessHello";
            v73 = 1024;
            v74 = 2467;
            _os_log_impl(&dword_24E50C000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d FLOW CONTROL enabled.", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          gckSessionProcessHello_cold_2();
        }
      }

      *(a2 + 504) = 1;
    }

    v67 = v8;
    v32 = (a2 + 496);
    v33 = *(a2 + 496);
    if (!v33)
    {
LABEL_49:
      v68 = 0xAAAAAAAAAAAAAAAALL;
      v41 = OSPFMakeHeartbeat(&v68, *(a1 + 108), *(a2 + 116), 1, 1u);
      if ((v41 & 0x80000000) == 0)
      {
        v42 = v41;
        v43 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
        *v43 = 8;
        v43[1] = 0.2;
        v44 = *(a2 + 392);
        v43[4] = v14 + v44;
        v43[2] = v14 + v44 * 0.5;
        *(v43 + 5) = v68;
        *(v43 + 12) = v42;
        *(v43 + 28) = 1;
        *(v43 + 13) = *(a2 + 116);
        *v32 = v43;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v45 = VRTraceErrorLogLevelToCSTR();
          v46 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v47 = *(v43 + 28);
            v48 = *(a2 + 116);
            v49 = *(a2 + 100);
            *buf = 136316418;
            v70 = v45;
            v71 = 2080;
            v72 = "gckSessionProcessHello";
            v73 = 1024;
            v74 = 2510;
            v75 = 1024;
            *v76 = v47;
            *&v76[4] = 1024;
            *&v76[6] = v48;
            LOWORD(v77[0]) = 1024;
            *(v77 + 2) = v49;
            _os_log_impl(&dword_24E50C000, v46, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Schedule a Heartbeat with SN [%d] for participant [%08X] over channel [%d].", buf, 0x2Eu);
          }
        }

        if (*(a2 + 504))
        {
          if (*(a2 + 528) == 0.0)
          {
            v50 = *(a2 + 536);
            if (v50 != 0.0)
            {
              ++*(a2 + 652);
              *(a2 + 528) = v14 + v50;
            }
          }
        }
      }

      v8 = v67;
      goto LABEL_63;
    }

    v34 = MEMORY[0x277CE5818];
    while (1)
    {
      v35 = *v33;
      if (v35 == 1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v36 = VRTraceErrorLogLevelToCSTR();
          v37 = *v34;
          if (os_log_type_enabled(*v34, OS_LOG_TYPE_DEFAULT))
          {
            v38 = *(a2 + 116);
            v39 = *(a2 + 100);
            *buf = 136316162;
            v70 = v36;
            v71 = 2080;
            v72 = "gckSessionProcessHello";
            v73 = 1024;
            v74 = 2474;
            v75 = 1024;
            *v76 = v38;
            *&v76[4] = 1024;
            *&v76[6] = v39;
            _os_log_impl(&dword_24E50C000, v37, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remove Hello from the retry list for participant [%08X] channel [%d]", buf, 0x28u);
          }
        }

        *v32 = *(v33 + 8);
        v40 = *(v33 + 5);
        if (v40)
        {
          free(v40);
        }

        free(v33);
      }

      else
      {
        if (v35 == 8)
        {
          v33[1] = 0.2;
          v51 = *(a2 + 392);
          v33[4] = v14 + v51;
          v33[2] = v14 + v51 * 0.5;
          v8 = v67;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v52 = VRTraceErrorLogLevelToCSTR();
            v53 = *v34;
            if (os_log_type_enabled(*v34, OS_LOG_TYPE_DEFAULT))
            {
              v54 = *(v33 + 2);
              v55 = *(v33 + 4);
              *buf = 136316162;
              v70 = v52;
              v71 = 2080;
              v72 = "gckSessionProcessHello";
              v73 = 1024;
              v74 = 2485;
              v75 = 2048;
              *v76 = v54;
              *&v76[8] = 2048;
              v77[0] = v55;
              _os_log_impl(&dword_24E50C000, v53, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Heartbeat queued. Updated state to: nextFire [%.1lf] waitUntil [%.1lf]", buf, 0x30u);
            }
          }

          goto LABEL_63;
        }

        v32 = (v33 + 8);
      }

      v33 = *v32;
      if (!*v32)
      {
        goto LABEL_49;
      }
    }
  }

  v22 = *(a2 + 496);
  if (v22)
  {
    while (1)
    {
      v23 = v22;
      if (*v22 == 1)
      {
        break;
      }

      v22 = *(v22 + 64);
      if (!v22)
      {
        v24 = (v23 + 64);
        goto LABEL_31;
      }
    }

    *(v22 + 8) = 0x3FB0A3D70A3D70A4;
    v30 = v14 + v18;
    *(v22 + 32) = v30;
    if (*(v22 + 40))
    {
      v31 = *(a1 + 32);
    }

    else
    {
      v31 = 0.0;
    }

    *(v22 + 16) = v30 - v31;
  }

  else
  {
    v24 = (a2 + 496);
LABEL_31:
    v28 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
    *v28 = 1;
    v28[1] = 0.065;
    v29 = v14 + v18;
    v28[4] = v29;
    v28[2] = v29;
    v28[5] = 0.0;
    *(v28 + 12) = 0;
    *(v28 + 13) = *(a2 + 116);
    *v24 = v28;
  }

LABEL_63:
  v56 = *(a1 + 12);
  if (v56 != -1)
  {
    *(a1 + 12) = -1;
    close(v56);
  }

  pthread_mutex_unlock((a2 + 664));
  if ((v15 & 0x80000000) == 0)
  {
    if (*(a1 + 104))
    {
      v57 = *(a2 + 84);
      if (*(a2 + 76))
      {
        if (!v57)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v58 = VRTraceErrorLogLevelToCSTR();
            v59 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v70 = v58;
              v71 = 2080;
              v72 = "gckSessionProcessHello";
              v73 = 1024;
              v74 = 2554;
              v75 = 2080;
              *v76 = a2 + 120;
              _os_log_impl(&dword_24E50C000, v59, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Invitation from %s", buf, 0x26u);
            }
          }

          PostEventCallback(*(a1 + 96), *(a2 + 116), 0, (a2 + 120), *(a2 + 376), 0);
        }

        goto LABEL_87;
      }

      if (v57)
      {
        goto LABEL_87;
      }

      if (v8 == 3)
      {
        goto LABEL_87;
      }

      if (*(a1 + 108) >= *(a2 + 116))
      {
        goto LABEL_87;
      }

      if (*(a2 + 108))
      {
        goto LABEL_87;
      }

      pthread_mutex_lock((a1 + 7800));
      v61 = *(a1 + 112);
      pthread_mutex_unlock((a1 + 7800));
      if (v61 < 2)
      {
        goto LABEL_87;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v62 = VRTraceErrorLogLevelToCSTR();
        v63 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v64 = *(a2 + 116);
          *buf = 136315906;
          v70 = v62;
          v71 = 2080;
          v72 = "gckSessionProcessHello";
          v73 = 1024;
          v74 = 2571;
          v75 = 1024;
          *v76 = v64;
          _os_log_impl(&dword_24E50C000, v63, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Send DD to %08X (local)", buf, 0x22u);
        }
      }

      v60 = *(a2 + 116);
    }

    else
    {
      if (v8 == 3)
      {
        goto LABEL_87;
      }

      v60 = *(a2 + 116);
      if (*(a1 + 108) >= v60)
      {
        goto LABEL_87;
      }
    }

    gckSessionSendDD(a1, v60, 1);
  }

LABEL_87:
  v65 = *MEMORY[0x277D85DE8];
  return v15;
}

void gckSessionProcessDD(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v108 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 112);
  v92 = a2;
  v93 = a1;
  if (v4 < 1)
  {
    v8 = 0;
  }

  else
  {
    v5 = (a1 + 396);
    v6 = 1;
    v7 = v4;
    v8 = 1;
    do
    {
      if (*(v5 - 1) && *v5 != *(a2 + 116))
      {
        break;
      }

      v8 = v6++ < v4;
      v5 += 120;
      --v7;
    }

    while (v7);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v93 + 108);
      v12 = *(v92 + 116);
      *buf = 136316162;
      v97 = v9;
      v98 = 2080;
      v99 = "gckSessionProcessDD";
      v100 = 1024;
      v101 = 2667;
      v102 = 1024;
      *v103 = v11;
      *&v103[4] = 1024;
      *&v103[6] = v12;
      _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d I am %08X ==================================== DD from %08X", buf, 0x28u);
    }
  }

  TracePrintNodes(*(a3 + 12), *(a3 + 16));
  v13 = v93;
  if (!*(v93 + 48) && !*(v93 + 104))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(v92 + 116);
        *buf = 136315906;
        v97 = v14;
        v98 = 2080;
        v99 = "gckSessionProcessDD";
        v100 = 1024;
        v101 = 2671;
        v102 = 1024;
        *v103 = v16;
        _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DD: STOP ICE check with peer %08X", buf, 0x22u);
      }
    }

    v13 = v93;
    v17 = *(v93 + 72);
    v18 = *(v92 + 116);
    ICEStopConnectivityCheck();
    v19 = *(v93 + 80);
    v20 = *(v92 + 116);
    ICEStopConnectivityCheck();
  }

  v21 = v13[26];
  if (v21 == 1)
  {
    if (*(v92 + 76))
    {
      goto LABEL_24;
    }

    v22 = *(v92 + 116);
    goto LABEL_23;
  }

  if (!v21)
  {
    v22 = *(v92 + 116);
    if (v13[27] > v22)
    {
LABEL_23:
      gckSessionSendDD(v13, v22, 0);
    }
  }

LABEL_24:
  v95 = (v13 + 29);
  pthread_mutex_lock((v92 + 664));
  v23 = *(v92 + 496);
  if (v23)
  {
    v24 = (v92 + 496);
    do
    {
      if (*v23 == 2)
      {
        *v24 = v23[8];
        v25 = v23[5];
        if (v25)
        {
          free(v25);
        }

        free(v23);
      }

      else
      {
        v24 = v23 + 8;
      }

      v23 = *v24;
    }

    while (*v24);
  }

  v26 = pthread_mutex_unlock((v92 + 664));
  v27 = *(a3 + 12);
  *&v91 = *(a3 + 16);
  MEMORY[0x28223BE20](v26);
  v94 = &v86 - ((v28 + 15) & 0x7FFFFFFF0);
  if (!v27)
  {
    v29 = v93;
    v87 = (v93 + 7800);
    pthread_mutex_lock((v93 + 7800));
    goto LABEL_65;
  }

  memset(&v86 - ((v28 + 15) & 0x7FFFFFFF0), 170, v28);
  v29 = v93;
  v87 = (v93 + 7800);
  pthread_mutex_lock((v93 + 7800));
  if (v27 < 1)
  {
LABEL_65:
    v32 = 0;
    goto LABEL_66;
  }

  v31 = 0;
  v32 = 0;
  *&v90 = v29 + 125;
  *&v30 = 136315906;
  v89 = v30;
  *&v30 = 136316162;
  v88 = v30;
  do
  {
    v33 = *(v29 + 112);
    if (v33 < 1)
    {
      LODWORD(v34) = 0;
    }

    else
    {
      v34 = 0;
      v35 = (v91 + 480 * v31);
      v36 = v90;
      v37 = v29;
      while (*v35 != *(v37 + 116))
      {
        ++v34;
        v37 += 480;
        v36 += 480;
        if (v33 == v34)
        {
          v29 = v93;
          goto LABEL_53;
        }
      }

      if (v35[136] <= *(v37 + 388) || (memcpy((v37 + 116), v35, 0x1E0uLL), *(v92 + 108)) || *(v92 + 116) != *(v37 + 116))
      {
        v29 = v93;
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v86 = VRTraceErrorLogLevelToCSTR();
          v38 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v89;
            v97 = v86;
            v98 = 2080;
            v99 = "gckSessionProcessDD";
            v100 = 1024;
            v101 = 2718;
            v102 = 2080;
            *v103 = v36;
            _os_log_impl(&dword_24E50C000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DD: Connected to %s (promote direct)", buf, 0x26u);
          }
        }

        v29 = v93;
        if (*(v93 + 104) == 1)
        {
          v39 = v92;
          if (!isInNeighbor(v95, 1, *(v92 + 116)) && (gckSessionAddNode(v29, *(v39 + 116), 255) & 0x80000000) == 0)
          {
            gckSessionUpdateNode(v29, *(v39 + 116), *(v39 + 560), 0);
            ++*(v29 + 388);
            v8 = 1;
            *(v29 + 392) = 1;
          }
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v86 = VRTraceErrorLogLevelToCSTR();
            v44 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v45 = *(v37 + 116);
              *buf = v89;
              v97 = v86;
              v98 = 2080;
              v99 = "gckSessionProcessDD";
              v100 = 1024;
              v101 = 2726;
              v102 = 1024;
              *v103 = v45;
              _os_log_impl(&dword_24E50C000, v44, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckSessionProcessDD: init RetryICE w/ remoteID %08X OOB", buf, 0x22u);
            }
          }

          GCKSessionSendDOOB(v29, *(v37 + 116), 0, 0, 1u, 0.0);
        }
      }
    }

    if (v34 == v33)
    {
LABEL_53:
      v40 = *(v29 + 112);
      if (v40 > 15)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v42 = VRTraceErrorLogLevelToCSTR();
          v43 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            v46 = *(v91 + 480 * v31);
            *buf = v88;
            v97 = v42;
            v98 = 2080;
            v99 = "gckSessionProcessDD";
            v100 = 1024;
            v101 = 2754;
            v102 = 1024;
            *v103 = 2754;
            *&v103[4] = 1024;
            *&v103[6] = v46;
            _os_log_error_impl(&dword_24E50C000, v43, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GCKSession.c:%d: Maximum # of nodes reached.  Ignoring node [%08X]\n", buf, 0x28u);
          }
        }
      }

      else
      {
        v41 = (v91 + 480 * v31);
        memcpy(&v95[480 * v40], v41, 0x1E0uLL);
        ++*(v29 + 112);
        *&v94[4 * v32++] = *v41;
      }
    }

    ++v31;
  }

  while (v31 != v27);
LABEL_66:
  gckSessionFindShortestPath(*(v29 + 112), v95);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v47 = VRTraceErrorLogLevelToCSTR();
    v48 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v97 = v47;
      v98 = 2080;
      v99 = "gckSessionProcessDD";
      v100 = 1024;
      v101 = 2760;
      _os_log_impl(&dword_24E50C000, v48, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====== After processing incoming DD", buf, 0x1Cu);
    }
  }

  v49 = v93;
  TracePrintNodes(*(v93 + 112), v95);
  if (v8)
  {
    v50 = -1;
  }

  else
  {
    v50 = *(v92 + 116);
  }

  gckSessionSendLSA(v49, *(v49 + 112), v95, v50, 0);
  gckSessionCleanupNodes(v49, -1, 0);
  v51 = *(v49 + 112);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v53 = VRTraceErrorLogLevelToCSTR();
    v54 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v97 = v53;
      v98 = 2080;
      v99 = "gckSessionProcessDD";
      v100 = 1024;
      v101 = 2770;
      v102 = 1024;
      *v103 = v32;
      *&v103[4] = 1024;
      *&v103[6] = v51;
      _os_log_impl(&dword_24E50C000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====== iNewNodeIDs = %d, iNodes = %d", buf, 0x28u);
    }
  }

  if (v32 >= 1)
  {
    v55 = 0;
    *&v88 = v32;
    *&v52 = 136316674;
    v91 = v52;
    *&v52 = 136315906;
    v90 = v52;
    *&v52 = 136315650;
    v89 = v52;
    while (v51 < 1)
    {
LABEL_116:
      if (++v55 == v88)
      {
        goto LABEL_117;
      }
    }

    v56 = 0;
    while (1)
    {
      if (VRTraceGetErrorLogLevelForModule() <= 6)
      {
        v60 = *&v94[4 * v55];
      }

      else
      {
        v57 = VRTraceErrorLogLevelToCSTR();
        v58 = *MEMORY[0x277CE5818];
        v59 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
        v60 = *&v94[4 * v55];
        if (v59)
        {
          v61 = *&v95[480 * v56];
          *buf = v91;
          v97 = v57;
          v98 = 2080;
          v99 = "gckSessionProcessDD";
          v100 = 1024;
          v101 = 2773;
          v102 = 1024;
          *v103 = v55;
          *&v103[4] = 1024;
          *&v103[6] = v56;
          v104 = 1024;
          v105 = v60;
          v106 = 1024;
          v107 = v61;
          _os_log_impl(&dword_24E50C000, v58, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====== @ %d (%08X), %d (%08X)", buf, 0x34u);
        }
      }

      v62 = &v95[480 * v56];
      if (v60 != *v62 || *(v62 + 1) == -1)
      {
        goto LABEL_115;
      }

      v63 = v92;
      *(v92 + 412);
      v64 = *(v93 + 56);
      v65 = *(v92 + 4);
      reportingGKLog();
      if (*(v63 + 108) || *(v63 + 116) != *v62)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v73 = VRTraceErrorLogLevelToCSTR();
          v74 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v90;
            v97 = v73;
            v98 = 2080;
            v99 = "gckSessionProcessDD";
            v100 = 1024;
            v101 = 2794;
            v102 = 2080;
            *v103 = v62 + 9;
            _os_log_impl(&dword_24E50C000, v74, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DD: Connected to %s (new connection)", buf, 0x26u);
          }
        }

        v68 = v92;
        v69 = v93;
        v75 = *(v93 + 7888);
        if (v75)
        {
          while (*(v75 + 116) != *v62)
          {
            v75 = *(v75 + 728);
            if (!v75)
            {
              goto LABEL_103;
            }
          }

          v76 = 0;
          atomic_compare_exchange_strong_explicit((v75 + 96), &v76, 2u, memory_order_relaxed, memory_order_relaxed);
        }
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v66 = VRTraceErrorLogLevelToCSTR();
          v67 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v90;
            v97 = v66;
            v98 = 2080;
            v99 = "gckSessionProcessDD";
            v100 = 1024;
            v101 = 2782;
            v102 = 2080;
            *v103 = v62 + 9;
            _os_log_impl(&dword_24E50C000, v67, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DD: Connected to %s (direct connection)", buf, 0x26u);
          }
        }

        v68 = v92;
        v69 = v93;
        if (*(v93 + 104) != 1)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v70 = VRTraceErrorLogLevelToCSTR();
            v71 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v72 = *v62;
              *buf = v90;
              v97 = v70;
              v98 = 2080;
              v99 = "gckSessionProcessDD";
              v100 = 1024;
              v101 = 2790;
              v102 = 1024;
              *v103 = v72;
              _os_log_impl(&dword_24E50C000, v71, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckSessionProcessDD: init RetryICE w/ remoteID %08X OOB", buf, 0x22u);
            }
          }

          v69 = v93;
          GCKSessionSendDOOB(v93, *v62, 0, 0, 1u, 0.0);
          v68 = v92;
        }
      }

LABEL_103:
      if (*(v68 + 4))
      {
        v77 = 13;
      }

      else
      {
        v77 = 1;
      }

      PostEventCallback(*(v69 + 96), *v62, v77, v62 + 9, v62[8], 0);
      v78 = *(v69 + 104);
      if (v78 == 1)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_115;
        }

        v83 = VRTraceErrorLogLevelToCSTR();
        v84 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_115;
        }

        *buf = v89;
        v97 = v83;
        v98 = 2080;
        v99 = "gckSessionProcessDD";
        v100 = 1024;
        v101 = 2817;
        v81 = v84;
        v82 = " [%s] %s:%d localscopeconnected";
      }

      else
      {
        if (v78)
        {
          goto LABEL_115;
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_115;
        }

        v79 = VRTraceErrorLogLevelToCSTR();
        v80 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_115;
        }

        *buf = v89;
        v97 = v79;
        v98 = 2080;
        v99 = "gckSessionProcessDD";
        v100 = 1024;
        v101 = 2813;
        v81 = v80;
        v82 = " [%s] %s:%d globalscopeconnected";
      }

      _os_log_impl(&dword_24E50C000, v81, OS_LOG_TYPE_DEFAULT, v82, buf, 0x1Cu);
LABEL_115:
      if (++v56 == v51)
      {
        goto LABEL_116;
      }
    }
  }

LABEL_117:
  *(v92 + 92) = 1;
  pthread_mutex_unlock(v87);
  gckSessionCheckPendingConnections(v93, 0);
  v85 = *MEMORY[0x277D85DE8];
}

void gckSessionProcessLSA(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v91 = a2;
  *(&v101[2] + 2) = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  MEMORY[0x28223BE20](a1);
  v8 = &v83 - ((v7 + 15) & 0x7FFFFFFF0);
  if (v5)
  {
    memset(&v83 - ((v7 + 15) & 0x7FFFFFFF0), 170, v7);
  }

  v9 = *(a1 + 112);
  if (v9 < 1)
  {
    v13 = 0;
  }

  else
  {
    v10 = (a1 + 396);
    v11 = 1;
    v12 = *(a1 + 112);
    v13 = 1;
    do
    {
      if (*(v10 - 1) && *v10 != v91[29])
      {
        break;
      }

      v13 = v11++ < v9;
      v10 += 120;
      --v12;
    }

    while (v12);
  }

  v14 = (a1 + 116);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 108);
      v18 = v91[29];
      *buf = 136316162;
      v95 = v15;
      v96 = 2080;
      v97 = "gckSessionProcessLSA";
      v98 = 1024;
      v99 = 2855;
      v100 = 1024;
      LODWORD(v101[0]) = v17;
      WORD2(v101[0]) = 1024;
      *(v101 + 6) = v18;
      _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d I am %08X ==================================== LSA from %08X", buf, 0x28u);
    }
  }

  TracePrintNodes(*(a3 + 16), *(a3 + 24));
  pthread_mutex_lock((a1 + 7800));
  v19 = isInNeighbor(v6, v5, *(a1 + 108));
  if (*(a3 + 16) == 1 && !((*v6 != v91[29]) | v19 & 1))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v95 = v24;
        v96 = 2080;
        v97 = "gckSessionProcessLSA";
        v98 = 1024;
        v99 = 2869;
        _os_log_impl(&dword_24E50C000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got declining LSA", buf, 0x1Cu);
      }
    }

    v26 = *(a1 + 112);
    v27 = *v6;
    if (v26 < 1)
    {
      goto LABEL_28;
    }

    if (*v14 != v27)
    {
      v28 = (a1 + 596);
      v29 = 1;
      do
      {
        v30 = v29;
        if (v26 == v29)
        {
          break;
        }

        v31 = *v28;
        ++v29;
        v28 += 120;
      }

      while (v31 != v27);
      if (v30 >= v26)
      {
LABEL_28:
        PostEventCallback(*(a1 + 96), v27, 3, (v6 + 9), *(v6 + 8), 0);
      }
    }

    v91[21] = 1;
    v32 = *(a1 + 12);
    if (v32 != -1)
    {
      *(a1 + 12) = -1;
      close(v32);
    }

    goto LABEL_31;
  }

  if (v91[23])
  {
LABEL_31:
    v84 = a3;
    v90 = (a1 + 116);
    v85 = v8;
    if (v5 >= 1)
    {
      v33 = 0;
      LODWORD(v89) = 0;
      *&v87 = a1 + 404;
      *&v20 = 136315650;
      v86 = v20;
      *&v20 = 136316162;
      v83 = v20;
      v88 = v5;
      while (1)
      {
        v34 = *(a1 + 112);
        if (v34 < 1)
        {
          LODWORD(v35) = 0;
        }

        else
        {
          v35 = 0;
          v36 = (v6 + 480 * v33);
          v37 = a1;
          while (*v36 != *(v37 + 116))
          {
            ++v35;
            v37 += 480;
            if (v34 == v35)
            {
              goto LABEL_42;
            }
          }

          if (v36[136] > *(v37 + 388))
          {
            memcpy((v37 + 116), v36, 0x1E0uLL);
            if (!*(v37 + 400))
            {
              v52 = *(a1 + 400);
              if (v52 > 0)
              {
                v53 = v52 - 1;
                v54 = v87;
                while (*v54 != *(v37 + 116))
                {
                  v54 += 3;
                  --v53;
                  if (!--v52)
                  {
                    goto LABEL_41;
                  }
                }

                memmove(v54, v54 + 3, 12 * v53);
                --*(a1 + 400);
                ++*(a1 + 388);
                *(a1 + 392) = 1;
              }
            }
          }
        }

LABEL_41:
        if (v35 != v34)
        {
          goto LABEL_63;
        }

LABEL_42:
        v38 = (v6 + 480 * v33);
        if (v38[71])
        {
          v39 = *(a1 + 112);
          if (v39 > 15)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v47 = VRTraceErrorLogLevelToCSTR();
              v48 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                v49 = *v38;
                *buf = v83;
                v95 = v47;
                v96 = 2080;
                v97 = "gckSessionProcessLSA";
                v98 = 1024;
                v99 = 2941;
                v100 = 1024;
                LODWORD(v101[0]) = 2941;
                WORD2(v101[0]) = 1024;
                *(v101 + 6) = v49;
                _os_log_error_impl(&dword_24E50C000, v48, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GCKSession.c:%d: Maximum # of nodes reached.  Ignoring node [%08X]\n", buf, 0x28u);
              }

              goto LABEL_61;
            }
          }

          else
          {
            memcpy(&v14[120 * v39], (v6 + 480 * v33), 0x1E0uLL);
            ++*(a1 + 112);
            v40 = v89 + 1;
            *&v85[4 * v89] = *v38;
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v41 = VRTraceErrorLogLevelToCSTR();
              v42 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                *buf = v86;
                v95 = v41;
                v96 = 2080;
                v97 = "gckSessionProcessLSA";
                v98 = 1024;
                v99 = 2937;
                _os_log_impl(&dword_24E50C000, v42, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Added one node", buf, 0x1Cu);
              }

              LODWORD(v89) = v40;
              goto LABEL_62;
            }

            LODWORD(v89) = v40;
          }
        }

        else
        {
          v43 = *(a1 + 400);
          if (v43 >= 1)
          {
            v44 = *v38;
            v45 = 1;
            v46 = v87;
            while (*v46 != v44)
            {
              v46 += 3;
              ++v45;
              if (!--v43)
              {
                goto LABEL_63;
              }
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v50 = VRTraceErrorLogLevelToCSTR();
              v51 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                *buf = v86;
                v95 = v50;
                v96 = 2080;
                v97 = "gckSessionProcessLSA";
                v98 = 1024;
                v99 = 2922;
                _os_log_impl(&dword_24E50C000, v51, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Removing Disconnecting Node", buf, 0x1Cu);
              }
            }

            memmove(v46, v46 + 3, 12 * (*(a1 + 400) - v45));
            --*(a1 + 400);
            ++*(a1 + 388);
            *(a1 + 392) = 1;
LABEL_61:
            v14 = v90;
LABEL_62:
            v5 = v88;
          }
        }

LABEL_63:
        if (++v33 == v5)
        {
          goto LABEL_72;
        }
      }
    }

    LODWORD(v89) = 0;
LABEL_72:
    gckSessionFindShortestPath(*(a1 + 112), v14);
    TracePrintNodes(*(a1 + 112), v14);
    v55 = v91[29];
    v56 = *(v84 + 12);
    *&v57 = 0xAAAAAAAAAAAAAAAALL;
    *(&v57 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v93[0] = v57;
    v93[1] = v57;
    v92 = 0xAAAAAAAAAAAAAAAALL;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v58 = VRTraceErrorLogLevelToCSTR();
      v59 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v95 = v58;
        v96 = 2080;
        v97 = "gckSessionSendLSAACK";
        v98 = 1024;
        v99 = 1906;
        v100 = 1024;
        LODWORD(v101[0]) = v55;
        _os_log_impl(&dword_24E50C000, v59, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending LSAACK to [%08X]", buf, 0x22u);
      }
    }

    WORD6(v93[0]) = v56;
    v60 = OSPFMakeLSAACK(&v92, v93, 0, *(a1 + 108), v55);
    if ((v60 & 0x80000000) == 0)
    {
      SendUDPPacketToParticipantChannelID(a1, v92, v60, v55, 0, -1, 0);
      free(v92);
    }

    if (v13)
    {
      v61 = -1;
    }

    else
    {
      v61 = v91[29];
    }

    gckSessionSendLSA(a1, *(a1 + 112), v14, v61, 0);
    gckSessionCleanupNodes(a1, -1, 0);
    if (v89 < 1)
    {
LABEL_111:
      pthread_mutex_unlock((a1 + 7800));
      goto LABEL_112;
    }

    v88 = 0;
    *&v86 = v89;
    v63 = *(a1 + 112);
    *&v62 = 136315906;
    v89 = v62;
    *&v62 = 136315650;
    v87 = v62;
    while (v63 < 1)
    {
LABEL_110:
      if (++v88 == v86)
      {
        goto LABEL_111;
      }
    }

    v64 = 0;
    v65 = *&v85[4 * v88];
    while (1)
    {
      v66 = &v14[120 * v64];
      if (v65 == *v66 && *(v66 + 1) != -1)
      {
        v91[103];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v67 = VRTraceErrorLogLevelToCSTR();
          v68 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v89;
            v95 = v67;
            v96 = 2080;
            v97 = "gckSessionProcessLSA";
            v98 = 1024;
            v99 = 2964;
            v100 = 2080;
            v101[0] = v66 + 9;
            _os_log_impl(&dword_24E50C000, v68, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d LSA: Connected to %s (new connection) ", buf, 0x26u);
          }
        }

        v69 = *(a1 + 56);
        v70 = v91[1];
        reportingGKLog();
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v71 = VRTraceErrorLogLevelToCSTR();
          v72 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v73 = *v66;
            *buf = v89;
            v95 = v71;
            v96 = 2080;
            v97 = "gckSessionProcessLSA";
            v98 = 1024;
            v99 = 2974;
            v100 = 1024;
            LODWORD(v101[0]) = v73;
            _os_log_impl(&dword_24E50C000, v72, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckSessionProcessLSA: async RetryICE w/ remoteID %08X OOB", buf, 0x22u);
          }
        }

        v74 = *(a1 + 7888);
        v14 = v90;
        if (v74)
        {
          while (*(v74 + 116) != *v66)
          {
            v74 = *(v74 + 728);
            if (!v74)
            {
              goto LABEL_95;
            }
          }

          v75 = 0;
          atomic_compare_exchange_strong_explicit((v74 + 96), &v75, 2u, memory_order_relaxed, memory_order_relaxed);
        }

        else
        {
LABEL_95:
          if (*(a1 + 104) != 1)
          {
            GCKSessionSendDOOB(a1, *(a1 + 108), v66, 4, 9u, 5.0);
          }
        }

        if (v91[1])
        {
          v76 = 13;
        }

        else
        {
          v76 = 1;
        }

        PostEventCallback(*(a1 + 96), *v66, v76, v66 + 9, v66[8], 0);
        v77 = *(a1 + 104);
        if (v77 == 1)
        {
          goto LABEL_106;
        }

        if (!v77)
        {
          break;
        }
      }

LABEL_109:
      if (++v64 == v63)
      {
        goto LABEL_110;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v78 = VRTraceErrorLogLevelToCSTR();
      v79 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = v87;
        v95 = v78;
        v96 = 2080;
        v97 = "gckSessionProcessLSA";
        v98 = 1024;
        v99 = 3013;
        _os_log_impl(&dword_24E50C000, v79, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d globalscopeconnected", buf, 0x1Cu);
      }
    }

LABEL_106:
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v80 = VRTraceErrorLogLevelToCSTR();
      v81 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = v87;
        v95 = v80;
        v96 = 2080;
        v97 = "gckSessionProcessLSA";
        v98 = 1024;
        v99 = 3015;
        _os_log_impl(&dword_24E50C000, v81, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d localscopeconnected", buf, 0x1Cu);
      }
    }

    goto LABEL_109;
  }

  pthread_mutex_unlock((a1 + 7800));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v23 = v91[29];
      *buf = 136315906;
      v95 = v21;
      v96 = 2080;
      v97 = "gckSessionProcessLSA";
      v98 = 1024;
      v99 = 2887;
      v100 = 1024;
      LODWORD(v101[0]) = v23;
      _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Premature LSA from %08X: ignoring...", buf, 0x22u);
    }
  }

LABEL_112:
  v82 = *MEMORY[0x277D85DE8];
}

void TracePrintNodes(int a1, uint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v32 = v3;
      v33 = 2080;
      v34 = "TracePrintNodes";
      v35 = 1024;
      v36 = 2382;
      v37 = 1024;
      v38 = a1;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====== %d nodes =====", buf, 0x22u);
    }
  }

  if (a1 >= 1)
  {
    v5 = 0;
    v6 = (a2 + 292);
    v7 = MEMORY[0x277CE5808];
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v10 = (a2 + 480 * v5);
          v11 = *v10;
          v12 = v10[1];
          v13 = v10[67];
          v14 = *(v10 + 136);
          v15 = v10[69];
          v16 = v10[70];
          v17 = v10[71];
          v18 = v10 + 9;
          LODWORD(v10) = *(v10 + 8);
          *buf = 136318210;
          v32 = v8;
          v33 = 2080;
          v34 = "TracePrintNodes";
          v35 = 1024;
          v36 = 2389;
          v37 = 1024;
          v38 = v5;
          v39 = 1024;
          v40 = v11;
          v41 = 1024;
          v42 = v12;
          v43 = 1024;
          v44 = v13;
          v45 = 1024;
          v46 = v14;
          v47 = 1024;
          v48 = v15;
          v49 = 1024;
          v50 = v16;
          v51 = 1024;
          v52 = v17;
          v53 = 2080;
          v54 = v18;
          v55 = 1024;
          v56 = v10;
          _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %d: %08X Next[%08X], dist[%u], SN[%u], New[%d], From[%08X], #NEIGHBOR[%d] %s[%u]\n", buf, 0x5Cu);
        }
      }

      v19 = a2 + 480 * v5;
      if (*(v19 + 284) >= 1)
      {
        v20 = 0;
        v21 = v6;
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v22 = VRTraceErrorLogLevelToCSTR();
            v23 = *MEMORY[0x277CE5818];
            v24 = *MEMORY[0x277CE5818];
            if (*v7 == 1)
            {
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = *(v21 - 1);
                v26 = *v21;
                *buf = 136316162;
                v32 = v22;
                v33 = 2080;
                v34 = "TracePrintNodes";
                v35 = 1024;
                v36 = 2392;
                v37 = 1024;
                v38 = v25;
                v39 = 1024;
                v40 = v26;
                _os_log_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d     %08X, RTT[%u]", buf, 0x28u);
              }
            }

            else if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              v27 = *(v21 - 1);
              v28 = *v21;
              *buf = 136316162;
              v32 = v22;
              v33 = 2080;
              v34 = "TracePrintNodes";
              v35 = 1024;
              v36 = 2392;
              v37 = 1024;
              v38 = v27;
              v39 = 1024;
              v40 = v28;
              _os_log_debug_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEBUG, " [%s] %s:%d     %08X, RTT[%u]", buf, 0x28u);
            }
          }

          ++v20;
          v21 += 3;
        }

        while (v20 < *(v19 + 284));
      }

      ++v5;
      v6 += 120;
    }

    while (v5 != a1);
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t isInNeighbor(uint64_t a1, int a2, int a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v4 = 0;
    v14 = 0;
    v16 = a2;
    v5 = (a1 + 288);
    v15 = a1;
    do
    {
      v6 = a1 + 480 * v4;
      if (*(v6 + 284) >= 1)
      {
        v7 = 0;
        v8 = v5;
        while (*v8 != a3)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v9 = VRTraceErrorLogLevelToCSTR();
            v10 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v11 = *v8;
              *buf = 136315906;
              v18 = v9;
              v19 = 2080;
              v20 = "isInNeighbor";
              v21 = 1024;
              v22 = 2652;
              v23 = 1024;
              v24 = v11;
              _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Neighbor %08X", buf, 0x22u);
            }
          }

          ++v7;
          v8 += 3;
          if (v7 >= *(v6 + 284))
          {
            goto LABEL_12;
          }
        }

        v14 = 1;
LABEL_12:
        a1 = v15;
      }

      ++v4;
      v5 += 120;
    }

    while (v4 != v16);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

void gckSessionFindShortestPath(int a1, _DWORD *a2)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = (MEMORY[0x28223BE20])();
  v7 = v36 - v6;
  v8 = 4 * v4;
  if (v5)
  {
    v9 = memset(v36 - v6, 170, 4 * v4);
    MEMORY[0x28223BE20](v9);
    v10 = v36 - ((v8 + 15) & 0x7FFFFFFF0);
    v11 = memset(v10, 170, 4 * v4);
    MEMORY[0x28223BE20](v11);
    v12 = v10;
    memset(v10, 170, 4 * v4);
  }

  else
  {
    v13 = (MEMORY[0x28223BE20])();
    v10 = v36 - ((v8 + 15) & 0x7FFFFFFF0);
    MEMORY[0x28223BE20](v13);
    v12 = (v36 - v14);
  }

  memset(v12, 255, 4 * a1);
  memset(v7, 255, 4 * a1);
  bzero(v10, 4 * a1);
  *v12 = 0;
  if (a1 >= 1)
  {
    v15 = 0;
    v16 = -1;
    for (i = -1; ; i = -1)
    {
      do
      {
        if (!*&v10[4 * v15] && v12[v15] < v16)
        {
          i = v15;
          v16 = v12[v15];
        }

        ++v15;
      }

      while (v15 != v4);
      if (i == -1)
      {
        break;
      }

      *&v10[4 * i] = 1;
      v18 = &a2[120 * i];
      v19 = v18[71];
      if (v19 >= 1)
      {
        v20 = 0;
        v21 = v18 + 72;
        do
        {
          v22 = 0;
          v23 = a2;
          while (*v23 != v21[3 * v20])
          {
            v23 += 120;
            if (v4 == ++v22)
            {
              goto LABEL_19;
            }
          }

          if (v22 != a1 && !*&v10[4 * v22])
          {
            v24 = v21[3 * v20 + 1];
            if (v24 != -1)
            {
              v25 = v24 + v16;
              if (v25 < v12[v22])
              {
                v12[v22] = v25;
                *&v7[4 * v22] = i;
              }
            }
          }

LABEL_19:
          ++v20;
        }

        while (v20 != v19);
      }

      v15 = 0;
      v16 = -1;
    }
  }

  v26 = a2[71];
  if (v26 >= 1)
  {
    v27 = 0;
    v28 = a2 + 72;
    do
    {
      if (a1 < 1)
      {
        LODWORD(v29) = 0;
      }

      else
      {
        v29 = 0;
        v30 = a2;
        while (*v30 != v28[3 * v27])
        {
          v30 += 120;
          if (v4 == ++v29)
          {
            goto LABEL_36;
          }
        }
      }

      if (v29 != a1 && v28[3 * v27 + 1] != -1)
      {
        *&v7[4 * v29] = 0;
      }

LABEL_36:
      ++v27;
    }

    while (v27 != v26);
  }

  if (a1 > 1)
  {
    v31 = 1;
    do
    {
      v32 = v31;
      while (1)
      {
        v33 = v32;
        v32 = *&v7[4 * v32];
        if (v32 == -1)
        {
          break;
        }

        if (!v32)
        {
          a2[120 * v31 + 1] = a2[120 * v33];
          v34 = v12[v31];
          goto LABEL_44;
        }
      }

      v34 = -1;
      a2[120 * v31 + 1] = -1;
LABEL_44:
      a2[120 * v31++ + 67] = v34;
    }

    while (v31 != v4);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void gckSessionSendLSA(uint64_t a1, int a2, void *a3, int a4, int a5)
{
  v44 = *MEMORY[0x277D85DE8];
  memset(v35, 170, 32);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v11 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 400);
      *buf = 136315906;
      v37 = v12;
      v38 = 2080;
      v39 = "gckSessionSendLSA";
      v40 = 1024;
      v41 = 1830;
      v42 = 1024;
      v43 = v14;
      _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending LSA to %2d neighbors", buf, 0x22u);
    }
  }

  LODWORD(v35[3]) = a2;
  v35[4] = a3;
  if (*(a1 + 400) >= 1)
  {
    v15 = 0;
    v34 = a5;
    do
    {
      v16 = *(a1 + 404 + 12 * v15);
      if (v16 != a4)
      {
        v17 = *(a1 + 20);
        *(a1 + 20) = v17 + 1;
        WORD2(v35[2]) = v17;
        v18 = OSPFMakeLSA(v35, &v35[1], 0, *(a1 + 108), v16, 0);
        if ((v18 & 0x80000000) == 0)
        {
          v19 = *(a1 + 7888);
          if (!v19)
          {
            goto LABEL_25;
          }

          v20 = v18;
          while (v16 != *(v19 + 116) || *(v19 + 108))
          {
            v19 = *(v19 + 728);
            if (!v19)
            {
              goto LABEL_25;
            }
          }

          if (!*(v19 + 88) && a5 == 0)
          {
LABEL_25:
            free(v35[0]);
          }

          else
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v22 = VRTraceErrorLogLevelToCSTR();
              v23 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v37 = v22;
                v38 = 2080;
                v39 = "gckSessionSendLSA";
                v40 = 1024;
                v41 = 1857;
                v42 = 1024;
                v43 = v16;
                _os_log_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending LSA to [%08X]", buf, 0x22u);
              }
            }

            pthread_mutex_lock((v19 + 664));
            v24 = (v19 + 496);
            do
            {
              v25 = v24;
              v26 = *v24;
              v24 = (*v24 + 64);
            }

            while (v26);
            v27 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
            *v27 = 4;
            *(v27 + 8) = xmmword_24E5907C0;
            v28 = v35[0];
            *(v27 + 4) = 0x4082BFEB851EB852;
            *(v27 + 5) = v28;
            *(v27 + 12) = v20;
            *(v27 + 13) = v16;
            *(v27 + 28) = WORD2(v35[2]);
            *v25 = v27;
            pthread_mutex_unlock((v19 + 664));
            v29 = *(a1 + 12);
            a5 = v34;
            if (v29 != -1)
            {
              *(a1 + 12) = -1;
              close(v29);
            }
          }
        }
      }

      ++v15;
    }

    while (v15 < *(a1 + 400));
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 108);
      *buf = 136315906;
      v37 = v30;
      v38 = 2080;
      v39 = "gckSessionSendLSA";
      v40 = 1024;
      v41 = 1894;
      v42 = 1024;
      v43 = v32;
      _os_log_impl(&dword_24E50C000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d I am %08X ========= After sending all LSAs...", buf, 0x22u);
    }
  }

  TracePrintNodes(*(a1 + 112), a1 + 116);
  v33 = *MEMORY[0x277D85DE8];
}

void gckSessionCleanupNodes(uint64_t a1, int a2, int a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 112);
  if (v5 < 1)
  {
    goto LABEL_48;
  }

  v6 = 0;
  v7 = 0;
  v8 = a1 + 116;
  v9 = a1 + 404;
  v10 = a3 ? -2145779689 : 0;
  v52 = v10;
  v53 = a1 + 116;
  do
  {
    v11 = (v8 + 480 * v6);
    if (v11[1] == -1)
    {
      v12 = *(a1 + 400);
      if (v12 >= 1)
      {
        for (i = 0; i < v12; ++i)
        {
          v14 = (v9 + 12 * i);
          if (*v14 == *v11)
          {
            memmove(v14, (v9 + 12 * i + 12), 12 * (v12 + ~i));
            v12 = *(a1 + 400) - 1;
            *(a1 + 400) = v12;
            --i;
          }
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v17 = *v11;
          *buf = 136316162;
          v57 = v15;
          v58 = 2080;
          v59 = "gckSessionCleanupNodes";
          v60 = 1024;
          v61 = 1320;
          v62 = 2080;
          v63 = v11 + 9;
          v64 = 1024;
          v65 = v17;
          _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Disconnected from %s[%08X]", buf, 0x2Cu);
        }
      }

      v18 = *(a1 + 96);
      v19 = *(v18 + 168);
      v20 = *v11;
      if (v19 < 1)
      {
        LODWORD(v21) = 0;
      }

      else
      {
        v21 = 0;
        while (*(v18 + 172 + 4 * v21) != v20)
        {
          if (v19 == ++v21)
          {
            LODWORD(v21) = *(v18 + 168);
            break;
          }
        }
      }

      if (v21 <= 0xF && v21 == v19)
      {
        *(v18 + 4 * v19 + 172) = v20;
        *(v18 + 168) = v19 + 1;
      }

      PostEventCallback(v18, v20, 3, v11 + 9, *(v11 + 8), v52);
      if (*v11 == a2)
      {
        v7 = 1;
      }

      v54 = v7;
      for (j = *(a1 + 7888); j; j = *(j + 728))
      {
        if (*(j + 116) == *v11)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v23 = VRTraceErrorLogLevelToCSTR();
            v24 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v25 = *(j + 116);
              *buf = 136315906;
              v57 = v23;
              v58 = 2080;
              v59 = "gckSessionCleanupNodes";
              v60 = 1024;
              v61 = 1357;
              v62 = 1024;
              LODWORD(v63) = v25;
              _os_log_impl(&dword_24E50C000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckSessionCleanupNodes closing invalid (%08X)", buf, 0x22u);
            }
          }

          *(j + 84) = 1;
          if (a3)
          {
            *(j + 24) = micro();
            if (VRTraceGetErrorLogLevelForModule() >= 6)
            {
              v26 = VRTraceErrorLogLevelToCSTR();
              v27 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v57 = v26;
                v58 = 2080;
                v59 = "gckSessionCleanupNodes";
                v60 = 1024;
                v61 = 1362;
                _os_log_impl(&dword_24E50C000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckSessionCleanupNodes: timed out, enforcing clean up", buf, 0x1Cu);
              }
            }
          }
        }
      }

      v8 = v53;
      memmove(v11, (v53 + 480 * v6 + 480), 480 * (*(a1 + 112) + ~v6));
      v5 = *(a1 + 112) - 1;
      *(a1 + 112) = v5;
      --v6;
      v7 = v54;
    }

    ++v6;
  }

  while (v6 < v5);
  if (v5 >= 1)
  {
    v28 = v5;
    v29 = (v5 + 3) & 0xFFFFFFFC;
    v30 = xmmword_24E5907E0;
    v31 = xmmword_24E5907F0;
    v32 = vdupq_n_s64(v28 - 1);
    v33 = vdupq_n_s64(4uLL);
    v34 = a1;
    do
    {
      v35 = vmovn_s64(vcgeq_u64(v32, v31));
      if (vuzp1_s16(v35, *v30.i8).u8[0])
      {
        v34[98] = 0;
      }

      if (vuzp1_s16(v35, *&v30).i8[2])
      {
        v34[218] = 0;
      }

      if (vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v32, *&v30))).i32[1])
      {
        v34[338] = 0;
        v34[458] = 0;
      }

      v30 = vaddq_s64(v30, v33);
      v31 = vaddq_s64(v31, v33);
      v34 += 480;
      v29 -= 4;
    }

    while (v29);
  }

  if (!v7)
  {
LABEL_48:
    v36 = *(a1 + 7888);
    if (v36)
    {
      v37 = 0;
      if (a3)
      {
        v38 = -2145779689;
      }

      else
      {
        v38 = 0;
      }

      do
      {
        if (*(v36 + 116) == a2)
        {
          if (!v37)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 6)
            {
              v39 = VRTraceErrorLogLevelToCSTR();
              v40 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                v41 = *(v36 + 116);
                *buf = 136316162;
                v57 = v39;
                v58 = 2080;
                v59 = "gckSessionCleanupNodes";
                v60 = 1024;
                v61 = 1384;
                v62 = 2080;
                v63 = (v36 + 120);
                v64 = 1024;
                v65 = v41;
                _os_log_impl(&dword_24E50C000, v40, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Disconnected from %s[%08X]", buf, 0x2Cu);
              }
            }

            v42 = *(a1 + 96);
            v43 = *(v42 + 168);
            v44 = *(v36 + 116);
            if (v43 < 1)
            {
              LODWORD(v45) = 0;
            }

            else
            {
              v45 = 0;
              while (*(v42 + 172 + 4 * v45) != v44)
              {
                if (v43 == ++v45)
                {
                  LODWORD(v45) = *(v42 + 168);
                  break;
                }
              }
            }

            if (v45 <= 0xF && v45 == v43)
            {
              *(v42 + 4 * v43 + 172) = v44;
              *(v42 + 168) = v43 + 1;
            }

            PostEventCallback(v42, v44, 3, (v36 + 120), *(v36 + 376), v38);
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v46 = VRTraceErrorLogLevelToCSTR();
            v47 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v48 = *(v36 + 116);
              *buf = 136315906;
              v57 = v46;
              v58 = 2080;
              v59 = "gckSessionCleanupNodes";
              v60 = 1024;
              v61 = 1416;
              v62 = 1024;
              LODWORD(v63) = v48;
              _os_log_impl(&dword_24E50C000, v47, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckSessionCleanupNodes closing disconnectID (%d)", buf, 0x22u);
            }
          }

          v37 = 1;
          *(v36 + 84) = 1;
          if (a3)
          {
            *(v36 + 24) = micro();
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v49 = VRTraceErrorLogLevelToCSTR();
              v50 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v57 = v49;
                v58 = 2080;
                v59 = "gckSessionCleanupNodes";
                v60 = 1024;
                v61 = 1421;
                _os_log_impl(&dword_24E50C000, v50, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckSessionCleanupNodes: timed out, enforcing clean up", buf, 0x1Cu);
              }
            }

            v37 = 1;
          }
        }

        v36 = *(v36 + 728);
      }

      while (v36);
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

uint64_t BWE_EndCurrentSequence(uint64_t result)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = result + 0x2000;
  v2 = *(result + 7888);
  if (v2)
  {
    while (*(v2 + 116) != *(result + 8468) || *(v2 + 100) != *(result + 8472))
    {
      v2 = *(v2 + 728);
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    result = *(v2 + 736);
    if (result != 0xFFFFFFFFLL)
    {
      v4 = *(v1 + 284);
      *(v2 + 412);
      GCK_BWE_CalcRxEstimate();
    }
  }

LABEL_5:
  *(v1 + 272) = 0;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __gckSessionRecvTCPMessage_block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315650;
      v4 = v0;
      v5 = 2080;
      v6 = "gckSessionRecvTCPMessage_block_invoke";
      v7 = 1024;
      v8 = 3179;
      _os_log_impl(&dword_24E50C000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckSessionRecvTCPMessage: optionHandler invoked...", &v3, 0x1Cu);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

void gckNetworkMonitorCallback()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v3 = v0;
      v4 = 2080;
      v5 = "gckNetworkMonitorCallback";
      v6 = 1024;
      v7 = 5500;
      _os_log_impl(&dword_24E50C000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckNetworkMonitorCallback: ...", buf, 0x1Cu);
    }
  }

  CheckInHandleDebug();
}

void gckDisplayNetworkState(uint64_t a1)
{
  values[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8296);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v2)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v41 = v4;
        v42 = 2080;
        v43 = "gckDisplayNetworkState";
        v44 = 1024;
        v45 = 1438;
        _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckDisplayNetworkState: ...", buf, 0x1Cu);
      }
    }

    v6 = *MEMORY[0x277CBECE8];
    v7 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], "State:/Network/Interface/[^/]+/Link", 0x8000100u);
    v8 = CFStringCreateWithCString(v6, "State:/Network/Interface/[^/]+/IPv4", 0x8000100u);
    values[0] = v7;
    values[1] = v8;
    v9 = CFArrayCreate(v6, values, 2, MEMORY[0x277CBF128]);
    v10 = SCDynamicStoreCopyMultiple(*(a1 + 8296), 0, v9);
    if (v10)
    {
      v11 = v10;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v41 = v12;
          v42 = 2080;
          v43 = "gckDisplayNetworkState";
          v44 = 1024;
          v45 = 1453;
          _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d first SCDynamicStoreCopyMultiple succeeded", buf, 0x1Cu);
        }
      }

      Count = CFDictionaryGetCount(v11);
      if (Count)
      {
        v15 = Count;
        v36 = v9;
        v37 = v8;
        v38 = v7;
        v35 = &v35;
        v16 = 8 * Count;
        MEMORY[0x28223BE20](Count);
        v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        v18 = memset(v17, 170, v16);
        MEMORY[0x28223BE20](v18);
        memset(v17, 170, v16);
        CFDictionaryGetKeysAndValues(v11, v17, v17);
        if (v15 >= 1)
        {
          v20 = 0;
          *&v19 = 136316162;
          v39 = v19;
          do
          {
            v21 = *&v17[8 * v20];
            if (v21)
            {
              Length = CFStringGetLength(*&v17[8 * v20]);
              MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
              v24 = MEMORY[0x28223BE20](MaximumSizeForEncoding);
              v26 = &v35 - v25;
              if (v24)
              {
                memset(&v35 - v25, 170, MaximumSizeForEncoding);
              }

              CStringPtr = CFStringGetCStringPtr(v21, 0x8000100u);
              if (!CStringPtr)
              {
                if (CFStringGetCString(v21, v26, MaximumSizeForEncoding, 0x8000100u))
                {
                  CStringPtr = v26;
                }

                else
                {
                  CStringPtr = 0;
                }
              }

              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v28 = VRTraceErrorLogLevelToCSTR();
                v29 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v39;
                  v41 = v28;
                  v42 = 2080;
                  v43 = "gckDisplayNetworkState";
                  v44 = 1024;
                  v45 = 1482;
                  v46 = 1024;
                  LODWORD(v47[0]) = v20;
                  WORD2(v47[0]) = 2080;
                  *(v47 + 6) = CStringPtr;
                  _os_log_impl(&dword_24E50C000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d key[%d] == %s", buf, 0x2Cu);
                }
              }
            }

            else if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v30 = VRTraceErrorLogLevelToCSTR();
              v31 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                *buf = v39;
                v41 = v30;
                v42 = 2080;
                v43 = "gckDisplayNetworkState";
                v44 = 1024;
                v45 = 1484;
                v46 = 1024;
                LODWORD(v47[0]) = v20;
                WORD2(v47[0]) = 2080;
                *(v47 + 6) = "NULL";
                _os_log_impl(&dword_24E50C000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d key[%d] == %s", buf, 0x2Cu);
              }
            }

            ++v20;
          }

          while (v15 != v20);
        }

        v9 = v36;
        v8 = v37;
        v7 = v38;
      }

      CFRelease(v11);
    }

    CFRelease(v8);
    CFRelease(v7);
    CFRelease(v9);
  }

  else if (ErrorLogLevelForModule >= 7)
  {
    v32 = VRTraceErrorLogLevelToCSTR();
    v33 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v41 = v32;
      v42 = 2080;
      v43 = "gckDisplayNetworkState";
      v44 = 1024;
      v45 = 1499;
      v46 = 2048;
      v47[0] = a1;
      _os_log_impl(&dword_24E50C000, v33, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckDisplayNetworkState: error %p", buf, 0x26u);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void freeOptionsList(uint64_t *a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    *a1 = *(i + 8);
    *(i + 8) = 0;
    if (*i)
    {
      free(*i);
    }

    free(i);
  }
}

void OUTLINED_FUNCTION_14_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

void OUTLINED_FUNCTION_23(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x30u);
}

BOOL OUTLINED_FUNCTION_29()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_2_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

void GCKEventListenerForGKConnection(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = v6;
      v12 = 2080;
      v13 = "GCKEventListenerForGKConnection";
      v14 = 1024;
      v15 = 158;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKEventListenerForGKConnection", &v10, 0x1Cu);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  [a1 addEvent:a3 remotePeer:a2];

  v9 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_8_1()
{
  *(v2 - 132) = 2080;
  *(v0 + 14) = v1;
  *(v2 - 122) = 1024;
}

void OUTLINED_FUNCTION_20_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x22u);
}

void OUTLINED_FUNCTION_24_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint8_t buf)
{

  _os_log_impl(a1, v23, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x26u);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x22u);
}

id GCKGameConnectivityKitBundle()
{
  result = GCKGameConnectivityKitBundle_cachedBundle;
  if (!GCKGameConnectivityKitBundle_cachedBundle)
  {
    result = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    GCKGameConnectivityKitBundle_cachedBundle = result;
  }

  return result;
}

void AGPNetworkEventListener(void *a1, uint64_t a2, __int128 *a3)
{
  v5 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v6 = a1;
  if (*a3 != 5)
  {
    if (*a3 == 7)
    {
      v9 = *a3;
      v10 = *(a3 + 2);
      v7 = objc_alloc_init(GCKOOBMessage);
      v7->type = 1000;
      v7->band = *(a3 + 5);
      v7->data = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:*(a3 + 1) length:{*(a3 + 4), v9, v10}];
      v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:0 error:0];
      [v8 length];
      [v8 bytes];
      [a1 agpSessionRef];
      AGPSessionEvent();
    }

    [a1 agpSessionRef];
    AGPSessionEvent();
  }
}

void GKNetworkEventListener(void *a1, uint64_t a2, __int128 *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v21 = *a3;
  v22 = *(a3 + 2);
  if (*a3 != 6)
  {
    v13 = 0;
    goto LABEL_9;
  }

  HIDWORD(v22) = 0;
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:*(a3 + 1) length:*(a3 + 4)];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7;
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0, v21, v22}];
  v12 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v8 error:0];
  v13 = [v12 decodeObjectOfClasses:v11 forKey:*MEMORY[0x277CCA308]];
  [v12 finishDecoding];

  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = objc_opt_class();
  if (v14 != objc_getClass("GCKOOBMessage") || ![v13 data])
  {
LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  if (v13[2] != 1000)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v24 = v19;
        v25 = 2080;
        v26 = "GKNetworkEventListener";
        v27 = 1024;
        v28 = 1428;
        _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNetworkEventListener: received oobMessage w/unrecognized type...", buf, 0x1Cu);
      }
    }

    goto LABEL_5;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v24 = v17;
      v25 = 2080;
      v26 = "GKNetworkEventListener";
      v27 = 1024;
      v28 = 1420;
      _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNetworkEventListener: received oobMessage of type GCKOOBInternal", buf, 0x1Cu);
    }
  }

  LODWORD(v22) = [objc_msgSend(v13 "data")];
  *(&v21 + 1) = [objc_msgSend(v13 "data")];
  HIDWORD(v22) = [v13 band];
LABEL_19:
  v15 = 1;
LABEL_6:
  if (v15)
  {
LABEL_9:
    [a1 sendCallbacksToDelegate:&v21 remotePeer:a2];
  }

  if (v13)
  {
  }

LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
}

void sub_24E549B48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

id NSStringCreateTruncatedStringWithMaxBytesInUTF8Encoding(void *a1)
{
  v1 = [a1 UTF8String];
  if (strlen(v1) >= 41)
  {
    v3 = 40;
    do
    {
      v4 = v1[v3--] & 0xC0;
    }

    while (v4 == 128);
    v5 = objc_alloc(MEMORY[0x277CCACA8]);

    return [v5 initWithBytes:v1 length:v3 + 1 encoding:4];
  }

  else
  {

    return a1;
  }
}

uint64_t gkResolveCallback(uint64_t a1, int a2, uint64_t a3, int a4, const char *a5, const char *a6, unsigned int a7, uint64_t a8, uint64_t a9, void *a10)
{
  v47 = *MEMORY[0x277D85DE8];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v18 = MEMORY[0x277CE5818];
  v28 = __rev16(a7);
  if (ErrorLogLevelForModule >= 7)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *v18;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317698;
      v31 = v19;
      v32 = 2080;
      v33 = "gkResolveCallback";
      v34 = 1024;
      v35 = 4442;
      v36 = 1024;
      *v37 = a1;
      *&v37[4] = 1024;
      *&v37[6] = a2;
      LOWORD(v38) = 1024;
      *(&v38 + 2) = a3;
      HIWORD(v38) = 1024;
      *v39 = a4;
      *&v39[4] = 2080;
      v40 = a5;
      v41 = 2080;
      v42 = a6;
      v43 = 1024;
      v44 = v28;
      v45 = 1024;
      v46 = a8;
      _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ~ DNSServiceResolve callback: Ref=%x, Flags=%x, IFIndex=%d, ErrorType=%d fullname=%s hosttarget=%s port=%u txtLen=%u", buf, 0x54u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *v18;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = "null";
      *buf = 136316674;
      if (a5)
      {
        v24 = a5;
      }

      else
      {
        v24 = "null";
      }

      v31 = v21;
      v32 = 2080;
      v33 = "gkResolveCallback";
      if (a6)
      {
        v23 = a6;
      }

      v34 = 1024;
      v35 = 4444;
      v36 = 2080;
      *v37 = v24;
      *&v37[8] = 2080;
      v38 = v23;
      *v39 = 1024;
      *&v39[2] = v28;
      LOWORD(v40) = 1024;
      *(&v40 + 2) = a4;
      _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ************* fullname: %s, hosttarget: %s port: %u error: %d", buf, 0x3Cu);
    }
  }

  BYTE4(v27) = a2 & 1;
  LODWORD(v27) = a4;
  result = [objc_msgSend(a10 "session")];
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gkRegisterCallback(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v36 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136317186;
      v19 = v14;
      v20 = 2080;
      v21 = "gkRegisterCallback";
      v22 = 1024;
      v23 = 3714;
      v24 = 1024;
      v25 = a1;
      v26 = 1024;
      v27 = a2;
      v28 = 1024;
      v29 = a3;
      v30 = 2080;
      v31 = a4;
      v32 = 2080;
      v33 = a5;
      v34 = 2080;
      v35 = a6;
      _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ~ DNSServiceRegister callback: Ref=%x, Flags=%x, ErrorType=%d name=%s regtype=%s domain=%s", &v18, 0x4Cu);
    }
  }

  result = [a7 didPublishWithError:a3];
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gkQueryRecordCallback(int a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, int a10, void *a11)
{
  v50 = *MEMORY[0x277D85DE8];
  memset(v49, 170, sizeof(v49));
  if (!if_indextoname(a3, v49))
  {
    v49[0] = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136318210;
      v24 = v17;
      v25 = 2080;
      v26 = "gkQueryRecordCallback";
      v27 = 1024;
      v28 = 3904;
      v29 = 1024;
      v30 = a1;
      v31 = 1024;
      v32 = a2;
      v33 = 1024;
      v34 = a3;
      v35 = 2080;
      v36 = v49;
      v37 = 1024;
      v38 = a4;
      v39 = 2080;
      v40 = a5;
      v41 = 1024;
      v42 = a6;
      v43 = 1024;
      v44 = a7;
      v45 = 1024;
      v46 = a8;
      v47 = 1024;
      v48 = a10;
      _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ~ DNSServiceQueryRecord callback: Ref=%x, Flags=%x, IFIndex=%d (name=[%s]), ErrorType=%d fullname=%s rrtype=%u rrclass=%u rdlen=%u ttl=%u", buf, 0x60u);
    }
  }

  result = [objc_msgSend(a11 "session")];
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gkBrowseCallback(int a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v41 = *MEMORY[0x277D85DE8];
  memset(v40, 170, sizeof(v40));
  if (!if_indextoname(a3, v40))
  {
    v40[0] = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136317698;
      v26 = v16;
      v27 = 2080;
      v28 = "gkBrowseCallback";
      v29 = 1024;
      v30 = 4106;
      v31 = 1024;
      *v32 = a1;
      *&v32[4] = 1024;
      *&v32[6] = a2;
      LOWORD(v33) = 1024;
      *(&v33 + 2) = a3;
      HIWORD(v33) = 2080;
      *v34 = v40;
      *&v34[8] = 1024;
      *v35 = a4;
      *&v35[4] = 2080;
      *v36 = a5;
      *&v36[8] = 2080;
      v37 = a6;
      v38 = 2080;
      v39 = a7;
      _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ~ DNSServiceBrowse callback: Ref=%x, Flags=%x, IFIndex=%d (name=[%s]), ErrorType=%d name=%s regtype=%s domain=%s", &v25, 0x5Cu);
    }
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if ((a2 & 2) != 0)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136317186;
        v26 = v22;
        v27 = 2080;
        v28 = "gkBrowseCallback";
        v29 = 1024;
        v30 = 4111;
        v31 = 2080;
        *v32 = a5;
        *&v32[8] = 2080;
        v33 = a6;
        *v34 = 2080;
        *&v34[2] = a7;
        *v35 = 1024;
        *&v35[2] = a3;
        *v36 = 2080;
        *&v36[2] = v40;
        LOWORD(v37) = 1024;
        *(&v37 + 2) = a4;
        _os_log_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d browse add: [%s][%s][%s] from %d [%s] (%d)", &v25, 0x50u);
      }
    }

    result = [a8 didFindService:a5 fromIF:v40 withError:a4 moreComing:a2 & 1];
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136317186;
        v26 = v19;
        v27 = 2080;
        v28 = "gkBrowseCallback";
        v29 = 1024;
        v30 = 4114;
        v31 = 2080;
        *v32 = a5;
        *&v32[8] = 2080;
        v33 = a6;
        *v34 = 2080;
        *&v34[2] = a7;
        *v35 = 1024;
        *&v35[2] = a3;
        *v36 = 2080;
        *&v36[2] = v40;
        LOWORD(v37) = 1024;
        *(&v37 + 2) = a4;
        _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d browse rmv: [%s][%s][%s] from %d [%s] (%d)", &v25, 0x50u);
      }
    }

    result = [a8 didRemoveService:a5 fromIF:v40 withError:a4 moreComing:a2 & 1];
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void hostnameLookupCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v35 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316930;
      v22 = v15;
      v23 = 2080;
      v24 = "hostnameLookupCallback";
      v25 = 1024;
      v26 = 4317;
      v27 = 1024;
      *v28 = a1;
      *&v28[4] = 1024;
      *&v28[6] = a2;
      v29 = 1024;
      v30 = a3;
      v31 = 1024;
      v32 = a4;
      v33 = 2080;
      v34 = a5;
      _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ~ DNSServiceGetAddrInfo callback: Ref=%x, Flags=%x, IFIndex=%d, ErrorType=%d hostname=%s", buf, 0x3Eu);
    }
  }

  if (*(a6 + 1) == 2)
  {
    LOBYTE(v20) = a2 & 1;
    [objc_msgSend(a8 "session")];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v22 = v17;
      v23 = 2080;
      v24 = "hostnameLookupCallback";
      v25 = 1024;
      v26 = 4320;
      v27 = 2080;
      *v28 = a5;
      _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d hostname lookup got non-AF_INET address for %s", buf, 0x26u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_24E55D324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x26u);
}

uint64_t OUTLINED_FUNCTION_5_1@<X0>(void **a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;
  v4 = *a1;

  return [v4 UTF8String];
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

uint64_t OSPFProcessDynamicOption(_DWORD *a1, unsigned __int8 *a2, timeval *a3)
{
  if (a2)
  {
    v4 = *a2;
    if (v4 == 13)
    {
      if (a2[3] == 1)
      {
        memset(v24, 170, sizeof(v24));
        v23 = 0xAAAAAAAAAAAAAAAALL;
        v10 = a2[2];
        if (v10 <= 5 && ((1 << v10) & 0x36) != 0)
        {
          if (!OSPFReadTimeval((a2 + 4), 4 * a2[1], &v24[1]))
          {
            goto LABEL_33;
          }

          if (!a3)
          {
            a3 = v24;
            if (gettimeofday(v24, 0))
            {
              goto LABEL_33;
            }
          }

          v13 = a3->tv_sec - v24[1].tv_sec;
          v22 = v13;
          v14 = a3->tv_usec - v24[1].tv_usec;
          LODWORD(v23) = v14;
          if (v14 < 0)
          {
            v22 = v13 - 1;
            LODWORD(v23) = v14 + 1000000;
          }

          if (!OSPFWriteTimeval(a2 + 4, 4 * a2[1], &v22))
          {
LABEL_33:
            v9 = 0;
            v6 = 1;
            goto LABEL_34;
          }

          v10 = a2[2];
        }

        if (v10 - 1 <= 4)
        {
          v6 = 0;
          v9 = v10 + 1;
          goto LABEL_34;
        }
      }

      return 0;
    }

    if (v4 != 14 || a2[3] != 1)
    {
      return 0;
    }

    v5 = a2[2];
    if (v5 != 2)
    {
      if (v5 == 1)
      {
        if (a2[1] >= 2u)
        {
          v6 = 0;
          v7 = a1[4];
          v8 = v7 - a1[6];
          a1[6] = v7;
          *(a2 + 1) = bswap32(v7);
          *(a2 + 2) = bswap32(v8);
          v9 = 2;
LABEL_34:
          a2[2] = v9;
          return v6;
        }

        return 1;
      }

      return 0;
    }

    if (a2[1] < 2u)
    {
      return 1;
    }

    v15 = bswap32(*(a2 + 1));
    v16 = bswap32(*(a2 + 2));
    v17 = a1[5];
    if (v15 - v16 != v17)
    {
      if (v15 - v16 <= v17)
      {
        v16 = 0;
        v20 = 0;
        goto LABEL_35;
      }

      v16 = v15 - v17;
    }

    v18 = a1[7];
    v19 = v15 >= v18;
    v20 = v15 - v18;
    if (!v19)
    {
      v20 = 0;
    }

    a1[7] = v15;
    a1[5] = v15;
LABEL_35:
    *(a2 + 1) = bswap32(v16);
    *(a2 + 2) = bswap32(v20);
    a2[2] = 3;
    if (v20)
    {
      v6 = 0;
      a1[9] += v20;
      return v6;
    }

    return 0;
  }

  return 0;
}

uint64_t OSPFReadTimeval(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  result = 0;
  v15 = 0;
  v16 = 0;
  if (a2 >= 0x10 && a1 && a3)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v14.x_public = v6;
    *&v14.x_base = v6;
    *&v14.x_op = v6;
    v12 = bswap64(*a1);
    xdrmem_create(&v14, &v12, 8u, XDR_DECODE);
    v7 = xdr_int64_t(&v14, &v16);
    x_destroy = v14.x_ops->x_destroy;
    if (x_destroy)
    {
      (x_destroy)(&v14);
    }

    *v13 = bswap64(a1[1]);
    xdrmem_create(&v14, v13, 8u, XDR_DECODE);
    v9 = xdr_int64_t(&v14, &v15);
    v10 = v14.x_ops->x_destroy;
    if (v10)
    {
      (v10)(&v14);
    }

    result = 0;
    if (v7)
    {
      if (v9)
      {
        v11 = v15;
        *a3 = v16;
        *(a3 + 8) = v11;
        return 1;
      }
    }
  }

  return result;
}

uint64_t OSPFWriteTimeval(void *a1, unint64_t a2, uint64_t a3)
{
  result = 0;
  v22 = *MEMORY[0x277D85DE8];
  *v19 = 0;
  *v20 = 0;
  if (a1 && a3)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v18.x_public = v6;
    *&v18.x_base = v6;
    *&v18.x_op = v6;
    v7 = *a3;
    v16 = *(a3 + 8);
    v17 = v7;
    xdrmem_create(&v18, v19, 8u, XDR_ENCODE);
    v8 = xdr_int64_t(&v18, &v17);
    x_destroy = v18.x_ops->x_destroy;
    if (x_destroy)
    {
      (x_destroy)(&v18);
    }

    memset(v21, 170, 17);
    if (v8)
    {
      v10 = v17;
      __sprintf_chk(v21, 0, 0x11uLL, "%02X", HIBYTE(v17));
      __sprintf_chk(&v21[2], 0, 0xFuLL, "%02X", BYTE6(v10));
      __sprintf_chk(&v21[4], 0, 0xDuLL, "%02X", BYTE5(v10));
      __sprintf_chk(&v21[6], 0, 0xBuLL, "%02X", BYTE4(v10));
      __sprintf_chk(&v21[8], 0, 9uLL, "%02X", BYTE3(v10));
      __sprintf_chk(&v21[10], 0, 7uLL, "%02X", BYTE2(v10));
      __sprintf_chk(&v21[12], 0, 5uLL, "%02X", BYTE1(v10));
      __sprintf_chk(&v21[14], 0, 3uLL, "%02X", v10);
      v21[16] = 0;
    }

    xdrmem_create(&v18, v20, 8u, XDR_ENCODE);
    v11 = xdr_int64_t(&v18, &v16);
    v12 = v18.x_ops->x_destroy;
    if (v12)
    {
      (v12)(&v18);
    }

    if (v11)
    {
      v13 = v16;
      __sprintf_chk(v21, 0, 0x11uLL, "%02X", HIBYTE(v16));
      __sprintf_chk(&v21[2], 0, 0xFuLL, "%02X", BYTE6(v13));
      __sprintf_chk(&v21[4], 0, 0xDuLL, "%02X", BYTE5(v13));
      __sprintf_chk(&v21[6], 0, 0xBuLL, "%02X", BYTE4(v13));
      __sprintf_chk(&v21[8], 0, 9uLL, "%02X", BYTE3(v13));
      __sprintf_chk(&v21[10], 0, 7uLL, "%02X", BYTE2(v13));
      __sprintf_chk(&v21[12], 0, 5uLL, "%02X", BYTE1(v13));
      __sprintf_chk(&v21[14], 0, 3uLL, "%02X", v13);
      result = 0;
      if (a2 >= 0x10 && v8)
      {
        v14 = bswap64(*v20);
        *a1 = bswap64(*v19);
        a1[1] = v14;
        result = 1;
      }
    }

    else
    {
      result = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OSPFMakeHello(void *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v8 = malloc_type_calloc(1uLL, 0x22uLL, 0x1000040451B5BE8uLL);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0;
  LOWORD(v10) = 0;
  *v8 = 449;
  *(v8 + 2) = 50340352;
  *(v8 + 2) = bswap32(a3);
  *(v8 + 3) = bswap32(a4);
  *(v8 + 8) = bswap32(*(a2 + 12)) >> 16;
  *(v8 + 18) = 268435960;
  *(v8 + 22) = 523;
  *(v8 + 26) = bswap64(*(a2 + 16));
  do
  {
    v10 = CRC16Table[(v8[v9++] ^ v10)] ^ ((v10 & 0xFF00) >> 8);
  }

  while (v9 != 34);
  *(v8 + 3) = bswap32(v10) >> 16;
  *a1 = v8;
  return 34;
}

uint64_t OSPFMakeHeartbeat(void *a1, unsigned int a2, unsigned int a3, int a4, unsigned int a5)
{
  v10 = malloc_type_calloc(1uLL, 0x14uLL, 0x1000040451B5BE8uLL);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 0;
  LOWORD(v12) = 0;
  *v10 = 2241;
  *(v10 + 2) = 5120;
  v10[2] = bswap32(a2);
  v10[3] = bswap32(a3);
  *(v10 + 8) = (a4 != 0) << 9;
  *(v10 + 9) = __rev16(a5);
  do
  {
    v12 = CRC16Table[(*(v10 + v11++) ^ v12)] ^ ((v12 & 0xFF00) >> 8);
  }

  while (v11 != 20);
  *(v10 + 3) = bswap32(v12) >> 16;
  *a1 = v10;
  return 20;
}

uint64_t OSPFMakeDD(Bytef **a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  v10 = *(a2 + 12);
  v11 = *(a2 + 16);
  if (v10 < 1)
  {
    v12 = 0;
    v16 = 18;
  }

  else
  {
    v12 = 0;
    v13 = 2;
    v14 = *(a2 + 12);
    v15 = *(a2 + 16);
    do
    {
      if (*v15 != a5)
      {
        v13 += *(v15 + 8) + 8 * *(v15 + 284) + 9;
        ++v12;
      }

      v15 += 480;
      --v14;
    }

    while (v14);
    v16 = (v13 + 16);
  }

  v17 = malloc_type_calloc(1uLL, v16, 0x1000040451B5BE8uLL);
  if (!v17)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = v17;
  v36 = a6;
  v37 = v16;
  v38 = a1;
  *v17 = 705;
  *(v17 + 1) = bswap32(v16) >> 16;
  *(v17 + 2) = bswap32(a4);
  *(v17 + 3) = bswap32(a5);
  *(v17 + 8) = bswap32(v12) >> 16;
  if (v10 >= 1)
  {
    v19 = 0;
    v20 = v17 + 18;
    v21 = (v11 + 292);
    do
    {
      v22 = v11 + 480 * v19;
      if (*v22 != a5)
      {
        v23 = *(v22 + 284);
        *v20 = bswap32(*v22);
        v20[2] = bswap32(*(v22 + 272)) >> 16;
        v24 = *(v22 + 8);
        *(v20 + 6) = v24;
        v25 = v20 + 7;
        memcpy(v20 + 7, (v22 + 9), v24);
        v26 = &v25[*(v22 + 8)];
        *v26 = bswap32(v23) >> 16;
        v20 = v26 + 2;
        if (v23 >= 1)
        {
          v27 = v21;
          do
          {
            *v20 = bswap32(*(v27 - 1));
            v28 = *v27;
            v27 += 3;
            *(v20 + 1) = bswap32(v28);
            v20 += 4;
            --v23;
          }

          while (v23);
        }
      }

      ++v19;
      v21 += 120;
    }

    while (v19 != v10);
  }

  if (v36)
  {
    v40 = 0xAAAAAAAAAAAAAAAALL;
    v39 = -1431655766;
    v29 = v37;
    v30 = v38;
    if (!ospfTryCompressPacket(&v40, &v39, v18, v37))
    {
      free(v18);
      v18 = v40;
      v29 = v39;
    }
  }

  else
  {
    v29 = v37;
    v30 = v38;
  }

  if (v29 < 1)
  {
    v31 = 0;
  }

  else
  {
    LOWORD(v31) = 0;
    v32 = v29;
    v33 = v18;
    do
    {
      v34 = *v33++;
      v31 = CRC16Table[(v34 ^ v31)] ^ ((v31 & 0xFF00) >> 8);
      --v32;
    }

    while (v32);
  }

  *(v18 + 3) = bswap32(v31) >> 16;
  *v30 = v18;
  return v29;
}

BOOL ospfTryCompressPacket(Bytef **a1, unsigned int *a2, uint64_t a3, signed int a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a4 - 16;
  v8 = compressBound(a4 - 16);
  destLen = v8;
  v9 = malloc_type_malloc(v8 + 18, 0x1000040451B5BE8uLL);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316930;
      v28 = v10;
      v29 = 2080;
      v30 = "ospfTryCompressPacket";
      v31 = 1024;
      v32 = 628;
      v33 = 1024;
      *v34 = 16;
      *&v34[4] = 1024;
      *&v34[6] = 2;
      *v35 = 2048;
      *&v35[2] = v8;
      v36 = 1024;
      v37 = v7;
      v38 = 2048;
      v39 = v8 + 18;
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ospfTryCompressPacket: %u + %u + %lu(%d) = %lu", buf, 0x42u);
    }
  }

  if (!v9)
  {
    goto LABEL_23;
  }

  if (compress2(v9 + 18, &destLen, (a3 + 16), v7, 9) || (v12 = destLen, destLen + 2 >= v7))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a3 + 1);
        v23 = "OSPF";
        if (v22 == 3)
        {
          v23 = "LSA";
        }

        *buf = 136316418;
        v28 = v20;
        v29 = 2080;
        v30 = "ospfTryCompressPacket";
        if (v22 == 2)
        {
          v23 = "DD";
        }

        v31 = 1024;
        v32 = 645;
        v33 = 2080;
        *v34 = v23;
        *&v34[8] = 1024;
        *v35 = v7;
        *&v35[4] = 1024;
        *&v35[6] = destLen;
        _os_log_impl(&dword_24E50C000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s compressed body %u => %u+2 (not performed)", buf, 0x32u);
      }
    }

    free(v9);
LABEL_23:
    result = 1;
    goto LABEL_24;
  }

  *v9 = *a3;
  *(v9 + 8) = bswap32(v7) >> 16;
  *(v9 + 2) = 256;
  v13 = v12 + 18;
  *(v9 + 1) = bswap32(v13) >> 16;
  *a1 = v9;
  *a2 = v13;
  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
LABEL_14:
    result = 0;
    goto LABEL_24;
  }

  v14 = VRTraceErrorLogLevelToCSTR();
  v15 = *MEMORY[0x277CE5818];
  result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v17 = "OSPF";
    v18 = *(a3 + 1);
    v19 = *a2;
    if (v18 == 3)
    {
      v17 = "LSA";
    }

    *buf = 136316930;
    v28 = v14;
    v29 = 2080;
    v30 = "ospfTryCompressPacket";
    if (v18 == 2)
    {
      v17 = "DD";
    }

    v31 = 1024;
    v32 = 642;
    v33 = 2080;
    *v34 = v17;
    *&v34[8] = 1024;
    *v35 = v7;
    *&v35[4] = 1024;
    *&v35[6] = v12;
    v36 = 1024;
    v37 = a4;
    v38 = 1024;
    LODWORD(v39) = v19;
    _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s compressed body %u => %u+2, total size: %d => %d", buf, 0x3Eu);
    goto LABEL_14;
  }

LABEL_24:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OSPFMakeLSA(Bytef **a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  v6 = *(a2 + 16);
  if (v6 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 0;
  v12 = *(a2 + 12);
  v13 = *(a2 + 24);
  v14 = 4;
  v15 = *(a2 + 16);
  v16 = v13;
  do
  {
    if (*v16 != a5 && *(v16 + 276) && *(v16 + 280) != a5)
    {
      v14 += *(v16 + 8) + 8 * *(v16 + 284) + 9;
      ++v11;
    }

    v16 += 480;
    --v15;
  }

  while (v15);
  if (!v11)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = (v14 + 16);
  v18 = malloc_type_calloc(1uLL, v17, 0x1000040451B5BE8uLL);
  if (!v18)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = v18;
  v36 = a6;
  v37 = v17;
  v38 = a1;
  v20 = 0;
  *v18 = 961;
  *(v18 + 1) = bswap32(v17) >> 16;
  *(v18 + 2) = bswap32(a4);
  *(v18 + 3) = bswap32(a5);
  *(v18 + 8) = __rev16(v12);
  *(v18 + 9) = bswap32(v11) >> 16;
  v21 = v18 + 20;
  v22 = (v13 + 292);
  do
  {
    v23 = v13 + 480 * v20;
    if (*v23 != a5)
    {
      if (*(v23 + 276))
      {
        if (*(v23 + 280) != a5)
        {
          v24 = *(v23 + 284);
          *v21 = bswap32(*v23);
          v21[2] = bswap32(*(v23 + 272)) >> 16;
          v25 = *(v23 + 8);
          *(v21 + 6) = v25;
          v26 = v21 + 7;
          memcpy(v21 + 7, (v23 + 9), v25);
          v27 = &v26[*(v23 + 8)];
          *v27 = bswap32(v24) >> 16;
          v21 = v27 + 2;
          if (v24 >= 1)
          {
            v28 = v22;
            do
            {
              *v21 = bswap32(*(v28 - 1));
              v29 = *v28;
              v28 += 3;
              *(v21 + 1) = bswap32(v29);
              v21 += 4;
              --v24;
            }

            while (v24);
          }
        }
      }
    }

    ++v20;
    v22 += 120;
  }

  while (v20 != v6);
  if (v36)
  {
    v40 = 0xAAAAAAAAAAAAAAAALL;
    v39 = -1431655766;
    v30 = v37;
    if (!ospfTryCompressPacket(&v40, &v39, v19, v37))
    {
      free(v19);
      v19 = v40;
      v30 = v39;
    }
  }

  else
  {
    v30 = v37;
  }

  if (v30 < 1)
  {
    v31 = 0;
  }

  else
  {
    LOWORD(v31) = 0;
    v32 = v30;
    v33 = v19;
    do
    {
      v34 = *v33++;
      v31 = CRC16Table[(v34 ^ v31)] ^ ((v31 & 0xFF00) >> 8);
      --v32;
    }

    while (v32);
  }

  *(v19 + 3) = bswap32(v31) >> 16;
  *v38 = v19;
  return v30;
}

uint64_t OSPFMakeLSAACK(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v9 = malloc_type_calloc(1uLL, 0x12uLL, 0x1000040451B5BE8uLL);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = 0;
  LOWORD(v11) = 0;
  *v9 = 301991105;
  v9[2] = bswap32(a4);
  v9[3] = bswap32(a5);
  *(v9 + 8) = bswap32(*(a2 + 12)) >> 16;
  do
  {
    v11 = CRC16Table[(*(v9 + v10++) ^ v11)] ^ ((v11 & 0xFF00) >> 8);
  }

  while (v10 != 18);
  *(v9 + 3) = bswap32(v11) >> 16;
  *a1 = v9;
  return 18;
}

uint64_t OSPFMakeData(char *a1, int a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, unsigned int *a7, uint64_t a8, uint64_t (*a9)(uint64_t, unsigned int *, uint64_t, char *, void, void, void, void, unsigned __int16), uint64_t a10, unsigned __int8 a11, unsigned __int8 a12, unsigned __int8 a13)
{
  v13 = a8;
  v14 = a7;
  v19 = a1;
  v20 = &a1[4 * a8];
  if (a9)
  {
    v21 = a9(a10, a7, a8, v20 + 12, (1488 - 4 * a8), *a3, *(a3 + 8), a11, __PAIR16__(a13, a12));
    if (v21 < 0)
    {
      v22 = 0;
      v23 = 0;
      *(v19 + 2) = 0;
      v24 = v19 + 6;
LABEL_18:
      *v24 = bswap32(v23) >> 16;
      return v22;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = (4 * v13 + *(a3 + 8) + v21 + 12);
  if (v22 <= a2)
  {
    *v19 = v13 & 0xF | 0xC0;
    if (a5)
    {
      v25 = 7;
    }

    else
    {
      v25 = 5;
    }

    v19[1] = v25;
    *(v19 + 1) = bswap32(v22) >> 16;
    *(v19 + 2) = bswap32(a6);
    if (v13 >= 1)
    {
      v26 = v19 + 12;
      v27 = v13;
      do
      {
        v28 = *v14++;
        *v26++ = bswap32(v28);
        --v27;
      }

      while (v27);
    }

    memcpy(&v20[v21 + 12], *a3, *(a3 + 8));
    *(v19 + 1) = 0;
    v24 = v19 + 6;
    if (v22 < 1)
    {
      v23 = 0;
    }

    else
    {
      LOWORD(v23) = 0;
      v29 = v22;
      do
      {
        v30 = *v19++;
        v23 = CRC16Table[(v30 ^ v23)] ^ ((v23 & 0xFF00) >> 8);
        --v29;
      }

      while (v29);
    }

    goto LABEL_18;
  }

  return 0xFFFFFFFFLL;
}

uint64_t OSPFMakeAudio(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int *a6, int a7)
{
  v7 = (*(a3 + 8) + 4 * a7 + 12);
  if (v7 > a2)
  {
    return 0xFFFFFFFFLL;
  }

  *a1 = a7 & 0xF | 0xC0;
  *(a1 + 1) = 6;
  *(a1 + 2) = bswap32(v7) >> 16;
  *(a1 + 8) = bswap32(a5);
  if (a7 >= 1)
  {
    v9 = (a1 + 12);
    v10 = a7;
    do
    {
      v11 = *a6++;
      *v9++ = bswap32(v11);
      --v10;
    }

    while (v10);
  }

  memcpy((a1 + 4 * a7 + 12), *a3, *(a3 + 8));
  *(a1 + 4) = 0;
  if (v7 < 1)
  {
    v12 = 0;
  }

  else
  {
    LOWORD(v12) = 0;
    v13 = a1;
    v14 = v7;
    do
    {
      v15 = *v13++;
      v12 = CRC16Table[(v15 ^ v12)] ^ ((v12 & 0xFF00) >> 8);
      --v14;
    }

    while (v14);
  }

  *(a1 + 6) = bswap32(v12) >> 16;
  return v7;
}

uint64_t OSPFGetLength(uint64_t a1, int a2)
{
  v42 = *MEMORY[0x277D85DE8];
  if (a2 <= 15)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_37;
    }

    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    v34 = 136315650;
    v35 = v2;
    v36 = 2080;
    v37 = "OSPFGetLength";
    v38 = 1024;
    v39 = 921;
    v4 = " [%s] %s:%d OSPFGetLength: buffer is too short...";
LABEL_5:
    _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, v4, &v34, 0x1Cu);
LABEL_37:
    result = 0xFFFFFFFFLL;
    goto LABEL_38;
  }

  v6 = (*a1 & 0xF0) != 0xC0 || (*a1 & 0xF) == 0;
  if (v6 || *(a1 + 1) - 1 > 8)
  {
    goto LABEL_37;
  }

  result = bswap32(*(a1 + 2)) >> 16;
  if (result > a2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_37;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    v34 = 136315650;
    v35 = v8;
    v36 = 2080;
    v37 = "OSPFGetLength";
    v38 = 1024;
    v39 = 941;
    v4 = " [%s] %s:%d OSPFGetLength: Length doesn't fit in buffer ...";
    goto LABEL_5;
  }

  LOWORD(v9) = 0;
  v10 = *(a1 + 6);
  *(a1 + 6) = 0;
  v11 = a2;
  v12 = a1;
  do
  {
    v13 = *v12++;
    v9 = CRC16Table[(v13 ^ v9)] ^ ((v9 & 0xFF00) >> 8);
    --v11;
  }

  while (v11);
  v14 = bswap32(v9) >> 16;
  *(a1 + 6) = v14;
  if (v14 != v10)
  {
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v16 = MEMORY[0x277CE5818];
    if (ErrorLogLevelForModule >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 136315650;
        v35 = v17;
        v36 = 2080;
        v37 = "OSPFGetLength";
        v38 = 1024;
        v39 = 948;
        _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OSPFGetLength: bad checksum...", &v34, 0x1Cu);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 136315906;
        v35 = v19;
        v36 = 2080;
        v37 = "OSPFGetLength";
        v38 = 1024;
        v39 = 949;
        v40 = 1024;
        v41 = v10;
        _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OSPFGetLength: checksum == %04X NO...", &v34, 0x22u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 6);
        v34 = 136315906;
        v35 = v21;
        v36 = 2080;
        v37 = "OSPFGetLength";
        v38 = 1024;
        v39 = 950;
        v40 = 1024;
        v41 = v23;
        _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OSPFGetLength: shouldbe == %04X OK...", &v34, 0x22u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 1);
        v34 = 136315906;
        v35 = v24;
        v36 = 2080;
        v37 = "OSPFGetLength";
        v38 = 1024;
        v39 = 951;
        v40 = 1024;
        v41 = v26;
        _os_log_impl(&dword_24E50C000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OSPFGetLength: pkttype == %d ...", &v34, 0x22u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
      {
        v29 = bswap32(*(a1 + 4)) >> 16;
        v34 = 136315906;
        v35 = v27;
        v36 = 2080;
        v37 = "OSPFGetLength";
        v38 = 1024;
        v39 = 952;
        v40 = 1024;
        v41 = v29;
        _os_log_impl(&dword_24E50C000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OSPFGetLength: flags == %04X ...", &v34, 0x22u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
      {
        v32 = bswap32(*(a1 + 2)) >> 16;
        v34 = 136315906;
        v35 = v30;
        v36 = 2080;
        v37 = "OSPFGetLength";
        v38 = 1024;
        v39 = 953;
        v40 = 1024;
        v41 = v32;
        _os_log_impl(&dword_24E50C000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OSPFGetLength: length == %d ...", &v34, 0x22u);
      }
    }

    *(a1 + 6) = v10;
    goto LABEL_37;
  }

LABEL_38:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OSPFParse_ParsePacketHeader(uint64_t a1, int a2, unsigned int **a3, _DWORD *a4)
{
  if (!a1)
  {
    OSPFParse_ParsePacketHeader_cold_7();
    return v23;
  }

  if (a2 <= 15)
  {
    OSPFParse_ParsePacketHeader_cold_6(a2);
    return v23;
  }

  v8 = 0;
  LOWORD(v9) = 0;
  v10 = *(a1 + 6);
  *(a1 + 6) = 0;
  do
  {
    v9 = CRC16Table[(*(a1 + v8++) ^ v9)] ^ ((v9 & 0xFF00) >> 8);
  }

  while (a2 != v8);
  *(a1 + 6) = v10;
  if (__rev16(v10) != v9)
  {
    return 0;
  }

  if ((*a1 & 0xF) == 0)
  {
    OSPFParse_ParsePacketHeader_cold_5(a1);
    return v23;
  }

  v11 = 4 * (*a1 & 0xF);
  v12 = v11 + 12;
  if (v11 + 12 > a2)
  {
    OSPFParse_ParsePacketHeader_cold_4(a2);
    return v23;
  }

  v13 = malloc_type_malloc(v11 + 12, 0x1000040451B5BE8uLL);
  memcpy(v13, a1, v12);
  v14 = *v13;
  v15 = *(v13 + 1);
  if ((*v13 & 0xF0) == 0xC0)
  {
    if ((v15 - 10) <= 0xFFFFFFF6)
    {
      OSPFParse_ParsePacketHeader_cold_3();
LABEL_31:
      v16 = v22;
      v13 = v23;
LABEL_22:
      free(v13);
      return v16;
    }
  }

  else if (v15 != 1)
  {
    OSPFParse_ParsePacketHeader_cold_1(v13, &v22, &v23);
    goto LABEL_31;
  }

  v17 = *(v13 + 1);
  *(v13 + 3) = bswap32(*(v13 + 3)) >> 16;
  v18 = bswap32(v17) >> 16;
  *(v13 + 1) = v18;
  if (v18 != a2)
  {
    OSPFParse_ParsePacketHeader_cold_2();
    goto LABEL_31;
  }

  *(v13 + 2) = bswap32(*(v13 + 2)) >> 16;
  v13[2] = bswap32(v13[2]);
  v19 = v14 & 0xF;
  if (v19)
  {
    for (i = 0; i < v19; ++i)
    {
      v13[i + 3] = bswap32(v13[i + 3]);
    }
  }

  if (a3)
  {
    *a3 = v13;
    v13 = 0;
  }

  if (a4)
  {
    *a4 = v12;
  }

  v16 = 1;
  if (v13)
  {
    goto LABEL_22;
  }

  return v16;
}

BOOL _OSPFParse_ParseDecompress(uint64_t a1, const Bytef *a2, unsigned int a3, Bytef **a4, _DWORD *a5, _BYTE *a6)
{
  v52 = *MEMORY[0x277D85DE8];
  if (!a2 || !a4 || !a5 || !a6)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
LABEL_13:
      result = 0;
      goto LABEL_14;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      goto LABEL_14;
    }

    *buf = 136315650;
    v39 = v11;
    v40 = 2080;
    v41 = "_OSPFParse_ParseDecompress";
    v42 = 1024;
    v43 = 1139;
    v13 = " [%s] %s:%d Invalid parameter...";
    goto LABEL_11;
  }

  *a6 = 0;
  if ((*(a1 + 1) & 0xFE) != 2 || (*(a1 + 4) & 1) == 0)
  {
    result = 1;
    goto LABEL_14;
  }

  if (a3 <= 2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_13;
    }

    v18 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      goto LABEL_14;
    }

    *buf = 136315650;
    v39 = v18;
    v40 = 2080;
    v41 = "_OSPFParse_ParseDecompress";
    v42 = 1024;
    v43 = 1153;
    v13 = " [%s] %s:%d Size is too small...";
LABEL_11:
    v14 = v12;
    v15 = 28;
LABEL_12:
    _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
    goto LABEL_13;
  }

  v20 = bswap32(*a2) >> 16;
  destLen = v20;
  v21 = malloc_type_malloc(v20, 0x100004077774924uLL);
  if (!v21)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_13;
    }

    v31 = VRTraceErrorLogLevelToCSTR();
    v32 = *MEMORY[0x277CE5818];
    result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      goto LABEL_14;
    }

    *buf = 136315906;
    v39 = v31;
    v40 = 2080;
    v41 = "_OSPFParse_ParseDecompress";
    v42 = 1024;
    v43 = 1166;
    v44 = 1024;
    LODWORD(v45) = v20;
    v13 = " [%s] %s:%d Failed to allocate packet size=%d";
    v14 = v32;
    v15 = 34;
    goto LABEL_12;
  }

  v22 = v21;
  v23 = a3 - 2;
  v24 = uncompress(v21, &destLen, a2 + 2, v23);
  v25 = destLen;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v24 || v25 != v20)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(a1 + 1);
        v36 = "OSPF";
        if (v35 == 3)
        {
          v36 = "LSA";
        }

        *buf = 136316674;
        v39 = v33;
        v40 = 2080;
        v41 = "_OSPFParse_ParseDecompress";
        if (v35 == 2)
        {
          v36 = "DD";
        }

        v42 = 1024;
        v43 = 1172;
        v44 = 2080;
        v45 = v36;
        v46 = 1024;
        v47 = destLen;
        v48 = 1024;
        v49 = v20;
        v50 = 1024;
        v51 = v24;
        _os_log_impl(&dword_24E50C000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s uncompressed body (real %u =? %u) failed (%d)", buf, 0x38u);
      }
    }

    free(v22);
    goto LABEL_13;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v27 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 1);
      v30 = "OSPF";
      if (v29 == 3)
      {
        v30 = "LSA";
      }

      *buf = 136316674;
      v39 = v27;
      v40 = 2080;
      v41 = "_OSPFParse_ParseDecompress";
      if (v29 == 2)
      {
        v30 = "DD";
      }

      v42 = 1024;
      v43 = 1176;
      v44 = 2080;
      v45 = v30;
      v46 = 1024;
      v47 = v23;
      v48 = 1024;
      v49 = destLen;
      v50 = 1024;
      v51 = v20;
      _os_log_impl(&dword_24E50C000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s uncompressed body %u+2 => %u (stated %u)", buf, 0x38u);
    }
  }

  *a4 = v22;
  *a5 = destLen;
  result = 1;
  *a6 = 1;
LABEL_14:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL _OSPFParse_ParseExtractOptions(uint64_t a1, unsigned __int8 *a2, int a3, void *a4, _DWORD *a5, _DWORD *a6)
{
  v6 = a1;
  v95 = *MEMORY[0x277D85DE8];
  *a6 = -1;
  if (a3 > 3)
  {
    if (*a2 == 248)
    {
      v13 = __rev16(*(a2 + 1));
      if (v13 <= a3)
      {
        v29 = (a2 + 4);
        if (a2[1])
        {
          v30 = 0;
          v31 = a2 + 4;
          while (1)
          {
            v32 = v31 - a2;
            v33 = v13 - (v31 - a2);
            if (v33 <= 3)
            {
              v49 = a2[1];
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v50 = VRTraceErrorLogLevelToCSTR();
                v51 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  v52 = *(a1 + 1);
                  *buf = 136316418;
                  v78 = v50;
                  v79 = 2080;
                  v80 = "ospfVerifyOptions";
                  v81 = 1024;
                  v82 = 1049;
                  v83 = 1024;
                  v84 = v52;
                  v85 = 1024;
                  v86 = v30;
                  v6 = a1;
                  v87 = 1024;
                  v88 = v49;
                  _os_log_impl(&dword_24E50C000, v51, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VerifyOptions: msg: %d: option %d of %d: not enough option header", buf, 0x2Eu);
                  v10 = 4;
                  goto LABEL_16;
                }
              }

              v10 = 4;
              goto LABEL_52;
            }

            v34 = 4 * v31[1] + 4;
            if (v33 < v34)
            {
              break;
            }

            v31 += v34;
            if (a2[1] == ++v30)
            {
              v6 = a1;
              goto LABEL_28;
            }
          }

          v53 = a2[1];
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v54 = VRTraceErrorLogLevelToCSTR();
            v55 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v56 = *(a1 + 1);
              *buf = 136317186;
              v78 = v54;
              v79 = 2080;
              v80 = "ospfVerifyOptions";
              v81 = 1024;
              v82 = 1055;
              v83 = 1024;
              v84 = v56;
              v85 = 1024;
              v86 = v30;
              v6 = a1;
              v87 = 1024;
              v88 = v53;
              v89 = 1024;
              v90 = v32;
              v91 = 1024;
              v92 = v13;
              v93 = 1024;
              v94 = v34;
              _os_log_impl(&dword_24E50C000, v55, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VerifyOptions: msg: %d: option %d of %d: @%d/%d, size=%d", buf, 0x40u);
              v10 = 5;
              goto LABEL_16;
            }
          }

          v10 = 5;
LABEL_52:
          v6 = a1;
        }

        else
        {
          v31 = a2 + 4;
LABEL_28:
          v35 = v31 - a2;
          if (v31 - a2 == v13)
          {
            v36 = a2[1];
            v37 = malloc_type_malloc(8 * v36, 0x2004093837F09uLL);
            if (v37)
            {
              v38 = v37;
              v39 = v36;
              if (!v36)
              {
LABEL_39:
                *a5 = v39;
                *a4 = v37;
                result = 1;
                *a6 = v13;
                goto LABEL_20;
              }

              v40 = v6;
              v41 = 0;
              v42 = a3 - 4;
              v43 = *(v40 + 4);
              while (1)
              {
                *(v37 + v41) = v29;
                if ((v43 & 2) == 0 || !v42)
                {
                  goto LABEL_59;
                }

                if (v42 <= 3)
                {
                  v57 = v39;
                  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
                  LODWORD(v39) = v57;
                  if (ErrorLogLevelForModule >= 7)
                  {
                    v59 = VRTraceErrorLogLevelToCSTR();
                    v60 = *MEMORY[0x277CE5818];
                    v61 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
                    LODWORD(v39) = v57;
                    if (v61)
                    {
                      v62 = *(v40 + 1);
                      *buf = 136316162;
                      v78 = v59;
                      v79 = 2080;
                      v80 = "ospfParseOption";
                      v81 = 1024;
                      v82 = 980;
                      v83 = 1024;
                      v84 = v62;
                      v85 = 1024;
                      v86 = v42;
                      _os_log_impl(&dword_24E50C000, v60, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ParseOption: msg: %d: option too small: %d", buf, 0x28u);
                      LODWORD(v39) = v57;
                    }
                  }

LABEL_59:
                  v63 = v39;
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v64 = VRTraceErrorLogLevelToCSTR();
                    v65 = *MEMORY[0x277CE5818];
                    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136316162;
                      v78 = v64;
                      v79 = 2080;
                      v80 = "_OSPFParse_ParseExtractOptions";
                      v81 = 1024;
                      v82 = 1211;
                      v83 = 1024;
                      v84 = v41;
                      v85 = 1024;
                      v86 = v63;
                      v66 = " [%s] %s:%d expecting option %d of %d";
                      v67 = v65;
                      goto LABEL_68;
                    }
                  }

                  goto LABEL_70;
                }

                v44 = 4 * v29[1] + 4;
                if (v42 < v44)
                {
                  break;
                }

                if (!*v29)
                {
                  goto LABEL_70;
                }

                if (*v29 < 0)
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v72 = VRTraceErrorLogLevelToCSTR();
                    v73 = *MEMORY[0x277CE5818];
                    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                    {
                      v74 = *(v40 + 1);
                      v75 = *v29;
                      *buf = 136316162;
                      v78 = v72;
                      v79 = 2080;
                      v80 = "ospfParseOption";
                      v81 = 1024;
                      v82 = 1001;
                      v83 = 1024;
                      v84 = v74;
                      v85 = 1024;
                      v86 = v75;
                      v66 = " [%s] %s:%d ParseOption: msg: %d: unsupported required option: %d";
                      v67 = v73;
LABEL_68:
                      v71 = 40;
LABEL_69:
                      _os_log_impl(&dword_24E50C000, v67, OS_LOG_TYPE_DEFAULT, v66, buf, v71);
                      goto LABEL_70;
                    }
                  }

                  goto LABEL_70;
                }

                v29 += v44;
                ++v41;
                v42 -= v44;
                if (v39 == v41)
                {
                  goto LABEL_39;
                }
              }

              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v68 = VRTraceErrorLogLevelToCSTR();
                v69 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  v70 = *(v40 + 1);
                  *buf = 136316418;
                  v78 = v68;
                  v79 = 2080;
                  v80 = "ospfParseOption";
                  v81 = 1024;
                  v82 = 988;
                  v83 = 1024;
                  v84 = v70;
                  v85 = 1024;
                  v86 = v44;
                  v87 = 1024;
                  v88 = v42;
                  v66 = " [%s] %s:%d ParseOption: msg: %d: incorrect option size: %d > %d";
                  v67 = v69;
                  v71 = 46;
                  goto LABEL_69;
                }
              }

LABEL_70:
              free(v38);
            }

            else if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
              if (!result)
              {
                goto LABEL_20;
              }

              _OSPFParse_ParseExtractOptions_cold_1();
            }

            goto LABEL_19;
          }

          v45 = a2[1];
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v46 = VRTraceErrorLogLevelToCSTR();
            v47 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v48 = *(v6 + 1);
              *buf = 136316674;
              v78 = v46;
              v79 = 2080;
              v80 = "ospfVerifyOptions";
              v81 = 1024;
              v82 = 1063;
              v83 = 1024;
              v84 = v48;
              v85 = 1024;
              v86 = v45;
              v87 = 1024;
              v88 = v35;
              v89 = 1024;
              v90 = v13;
              _os_log_impl(&dword_24E50C000, v47, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VerifyOptions: msg: %d: %d options used %d bytes != %d offset", buf, 0x34u);
            }
          }

          v10 = 6;
        }
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v16 = *(v6 + 1);
            *buf = 136316418;
            v78 = v14;
            v79 = 2080;
            v80 = "ospfVerifyOptions";
            v81 = 1024;
            v82 = 1037;
            v83 = 1024;
            v84 = v16;
            v85 = 1024;
            v86 = v13;
            v87 = 1024;
            v88 = a3;
            _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VerifyOptions: msg: %d: body offset %d > %d", buf, 0x2Eu);
          }
        }

        v10 = 3;
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(v6 + 1);
          v20 = *a2;
          *buf = 136316162;
          v78 = v17;
          v79 = 2080;
          v80 = "ospfVerifyOptions";
          v81 = 1024;
          v82 = 1032;
          v83 = 1024;
          v84 = v19;
          v85 = 1024;
          v86 = v20;
          _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VerifyOptions: msg: %d: expecting options info, got %d", buf, 0x28u);
        }
      }

      v10 = 2;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(v6 + 1);
        *buf = 136315906;
        v78 = v7;
        v79 = 2080;
        v80 = "ospfVerifyOptions";
        v81 = 1024;
        v82 = 1027;
        v83 = 1024;
        v84 = v9;
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VerifyOptions: msg: %d: missing options info", buf, 0x22u);
      }
    }

    v10 = 1;
  }

LABEL_16:
  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
LABEL_19:
    result = 0;
    goto LABEL_20;
  }

  v21 = VRTraceErrorLogLevelToCSTR();
  v22 = *MEMORY[0x277CE5818];
  result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v24 = *(v6 + 1);
    *buf = 136316162;
    v78 = v21;
    v79 = 2080;
    v80 = "_OSPFParse_ParseExtractOptions";
    v81 = 1024;
    v82 = 1193;
    v83 = 1024;
    v84 = v24;
    v85 = 1024;
    v86 = v10;
    _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d msg: %d: options verification failed (%d)", buf, 0x28u);
    goto LABEL_19;
  }

LABEL_20:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OSPFParse(void **a1, void *a2, uint64_t a3, int a4, Bytef **a5, uint64_t a6)
{
  v41 = *MEMORY[0x277D85DE8];
  v34 = 0xAAAAAAAAAAAAAAAALL;
  v33 = -1431655766;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v12 = 0xFFFFFFFFLL;
  v28 = -1;
  v29 = 0;
  if (!OSPFParse_ParsePacketHeader(a3, a4, &v31, &v28) || !v31)
  {
    goto LABEL_28;
  }

  if (!a2 && (*(v31 + 2) & 1) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v36 = v13;
        v37 = 2080;
        v38 = "OSPFParse";
        v39 = 1024;
        v40 = 1523;
        _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Flow control: returning -1 when message is compressed and ppOSPFBody is NULL", buf, 0x1Cu);
      }
    }

    goto LABEL_15;
  }

  v34 = (a3 + v28);
  v33 = a4 - v28;
  if (!_OSPFParse_ParseDecompress(v31, v34, a4 - v28, &v34, &v33, &v32))
  {
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v15 = v34;
  if (v32)
  {
    v16 = v34;
  }

  else
  {
    v16 = 0;
  }

  if (*(v31 + 1) == 1)
  {
    if (v33 <= 1)
    {
LABEL_16:
      v18 = 0;
LABEL_17:
      v19 = -1;
LABEL_18:
      v28 = v19;
      goto LABEL_19;
    }

    v15 = v34 + 2;
    v17 = bswap32(*v34) >> 16;
    v34 += 2;
    v33 -= 2;
  }

  else
  {
    LOWORD(v17) = 0;
  }

  if ((*(v31 + 2) & 2) == 0)
  {
LABEL_33:
    if (a5)
    {
      if (v16)
      {
        v23 = 0;
      }

      else
      {
        v23 = v15;
      }

      *a5 = v23;
    }

    if (a6)
    {
      (*(a6 + 16))(a6, v30, v29);
    }

    v18 = 0;
    if (!a2)
    {
      v25 = 0;
      goto LABEL_71;
    }

    v28 = -1;
    v20 = v31;
    v24 = *(v31 + 1);
    if (v24 <= 4)
    {
      if (*(v31 + 1) > 2u)
      {
        if (v24 == 3)
        {
          v26 = _OSPFParse_ParsePacketLSA(v31, v34, v33, &v28);
        }

        else
        {
          if (v24 != 4)
          {
            goto LABEL_20;
          }

          v26 = _OSPFParse_ParsePacketLSAAck(v34, v33, &v28);
        }
      }

      else
      {
        if (v24 == 1)
        {
          v18 = _OSPFParse_ParsePacketHello(v17, v30, v29);
          if ((*v31 & 0xF0) != 0xC0)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v27 = VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                OSPFParse_cold_1(v27, &v31);
              }
            }

            v25 = 1;
LABEL_69:
            if (*(v31 + 1) != 9 && !v18)
            {
              goto LABEL_17;
            }

LABEL_71:
            if (a1)
            {
              *a1 = v31;
              v31 = 0;
            }

            if (a2)
            {
              *a2 = v18;
              v18 = 0;
            }

            if (v25)
            {
              v19 = 0;
            }

            else
            {
              v19 = a4;
            }

            goto LABEL_18;
          }

LABEL_68:
          v25 = 0;
          goto LABEL_69;
        }

        if (v24 != 2)
        {
          goto LABEL_20;
        }

        v26 = _OSPFParse_ParsePacketDD(v31, v34, v33, &v28);
      }
    }

    else
    {
      if (*(v31 + 1) <= 6u)
      {
        if (v24 != 5)
        {
          if (v24 != 6)
          {
            goto LABEL_20;
          }

          v26 = _OSPFParse_ParsePacketAudio(v34, v33, &v28);
          goto LABEL_67;
        }
      }

      else if (v24 != 7)
      {
        if (v24 != 8)
        {
          if (v24 != 9)
          {
            goto LABEL_20;
          }

          goto LABEL_68;
        }

        v26 = _OSPFParse_ParsePacketHeartbeat(v34, v33, &v28);
        goto LABEL_67;
      }

      v26 = _OSPFParse_ParsePacketData(v34, v33, &v28);
    }

LABEL_67:
    v18 = v26;
    goto LABEL_68;
  }

  if (_OSPFParse_ParseExtractOptions(v31, v15, v33, &v30, &v29, &v28))
  {
    v15 = &v34[v28];
    v34 = v15;
    v33 -= v28;
    goto LABEL_33;
  }

  v18 = 0;
LABEL_19:
  v20 = v31;
  if (v31)
  {
LABEL_20:
    free(v20);
  }

  if (v18)
  {
    free(v18);
  }

  if (v16)
  {
    free(v16);
  }

  if (v30)
  {
    free(v30);
  }

  v12 = v28;
LABEL_28:
  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

_WORD *_OSPFParse_ParsePacketHello(__int16 a1, uint64_t a2, unsigned int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10300409059B04AuLL);
  v7 = v6;
  if (v6)
  {
    v6[6] = a1;
    *v6 = 0;
    *(v6 + 2) = 0;
    if (a3)
    {
      v8 = a3;
      do
      {
        if (**a2 == 11)
        {
          *(v6 + 2) = bswap64(*(*a2 + 4));
        }

        a2 += 8;
        --v8;
      }

      while (v8);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = v9;
      v15 = 2080;
      v16 = "_OSPFParse_ParsePacketHello";
      v17 = 1024;
      v18 = 1236;
      _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to allocate buffer", &v13, 0x1Cu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

_DWORD *_OSPFParse_ParsePacketHeartbeat(unsigned __int16 *a1, unsigned int a2, _DWORD *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        _OSPFParse_ParsePacketHeartbeat_cold_1();
      }
    }

    goto LABEL_15;
  }

  if (a2 <= 3)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_15;
    }

    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v15 = 136315906;
    v16 = v4;
    v17 = 2080;
    v18 = "_OSPFParse_ParsePacketHeartbeat";
    v19 = 1024;
    v20 = 1267;
    v21 = 1024;
    v22 = a2;
    v6 = " [%s] %s:%d Payload size=%d is too small";
    v7 = v5;
    v8 = 34;
LABEL_14:
    _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, v6, &v15, v8);
LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  result = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040FDD9F14CuLL);
  if (!result)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_15;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v15 = 136315650;
    v16 = v12;
    v17 = 2080;
    v18 = "_OSPFParse_ParsePacketHeartbeat";
    v19 = 1024;
    v20 = 1274;
    v6 = " [%s] %s:%d Failed to allocate buffer";
    v7 = v13;
    v8 = 28;
    goto LABEL_14;
  }

  *result = 0;
  result[2] = 0;
  *(result + 6) = bswap32(*a1) >> 16;
  *(result + 7) = bswap32(a1[1]) >> 16;
  *a3 = 4;
LABEL_16:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void *_OSPFParse_ParsePacketDD(uint64_t a1, unsigned __int16 *a2, unsigned int a3, _DWORD *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0;
  *a4 = 0;
  if (!a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        _OSPFParse_ParsePacketDD_cold_1();
      }
    }

    goto LABEL_13;
  }

  v4 = a3 - 2;
  if (a3 < 2)
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v6 = a2;
  v8 = a2 + 1;
  v9 = bswap32(*a2) >> 16;
  v10 = malloc_type_malloc((480 * v9) | 0x18, 0x1030040D5FA72FAuLL);
  if (!v10)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v18 = v12;
        v19 = 2080;
        v20 = "_OSPFParse_ParsePacketDD";
        v21 = 1024;
        v22 = 1479;
        _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to allocate buffer", buf, 0x1Cu);
      }
    }

    goto LABEL_13;
  }

  v11 = v10;
  *v10 = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = v9;
  *(v10 + 2) = v10 + 24;
  if (!_OSPFParse_ParseNodes(a1, (v10 + 24), v9, v8, v4, &v16))
  {
    free(v11);
    goto LABEL_13;
  }

  *a4 = v8 + v16 - v6;
LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

void *_OSPFParse_ParsePacketLSA(uint64_t a1, unsigned __int16 *a2, unsigned int a3, _DWORD *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0;
  *a4 = 0;
  if (!a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        _OSPFParse_ParsePacketLSA_cold_1();
      }
    }

    goto LABEL_13;
  }

  v4 = a3 - 4;
  if (a3 < 4)
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v8 = *a2;
  v9 = bswap32(a2[1]) >> 16;
  v10 = malloc_type_malloc(480 * v9 + 32, 0x1030040A19808B3uLL);
  if (!v10)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v18 = v12;
        v19 = 2080;
        v20 = "_OSPFParse_ParsePacketLSA";
        v21 = 1024;
        v22 = 1408;
        _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to allocate buffer", buf, 0x1Cu);
      }
    }

    goto LABEL_13;
  }

  v11 = v10;
  *v10 = 0;
  *(v10 + 2) = 0;
  *(v10 + 6) = __rev16(v8);
  *(v10 + 4) = v9;
  *(v10 + 3) = v10 + 32;
  if (!_OSPFParse_ParseNodes(a1, (v10 + 32), v9, a2 + 2, v4, &v16))
  {
    free(v11);
    goto LABEL_13;
  }

  *a4 = v16 + 4;
LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

_DWORD *_OSPFParse_ParsePacketLSAAck(unsigned __int16 *a1, unsigned int a2, _DWORD *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        _OSPFParse_ParsePacketLSAAck_cold_1();
      }
    }

    goto LABEL_11;
  }

  *a3 = 0;
  if (a2 < 2)
  {
LABEL_11:
    result = 0;
    goto LABEL_12;
  }

  result = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040F51ADB7CuLL);
  if (!result)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315650;
        v10 = v6;
        v11 = 2080;
        v12 = "_OSPFParse_ParsePacketLSAAck";
        v13 = 1024;
        v14 = 1443;
        _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to allocate buffer", &v9, 0x1Cu);
      }
    }

    goto LABEL_11;
  }

  *result = 0;
  result[2] = 0;
  *(result + 6) = bswap32(*a1) >> 16;
  *a3 = 2;
LABEL_12:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *_OSPFParse_ParsePacketData(uint64_t a1, int a2, _DWORD *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
  v7 = v6;
  if (v6)
  {
    *v6 = a1;
    v6[2] = a2;
    *a3 = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = v8;
      v14 = 2080;
      v15 = "_OSPFParse_ParsePacketData";
      v16 = 1024;
      v17 = 1298;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to allocate buffer", &v12, 0x1Cu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

_DWORD *_OSPFParse_ParsePacketAudio(uint64_t a1, int a2, _DWORD *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
  v7 = v6;
  if (v6)
  {
    *v6 = a1;
    v6[2] = a2;
    *a3 = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = v8;
      v14 = 2080;
      v15 = "_OSPFParse_ParsePacketAudio";
      v16 = 1024;
      v17 = 1312;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to allocate buffer", &v12, 0x1Cu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t OSPFAddDynamicOptions(unsigned __int8 ***a1, const void *a2, uint64_t a3, int a4, unsigned int a5, _DWORD *a6, unint64_t a7, uint64_t a8)
{
  v142 = a8;
  v132 = a7;
  v176 = *MEMORY[0x277D85DE8];
  v156 = 0;
  v151 = -21846;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  memset(v157, 0, sizeof(v157));
  v138 = a4;
  if (a4)
  {
    v151 = __rev16(a5);
    *&v157[0] = &v151;
    *(&v157[0] + 1) = 4;
    DWORD2(v154) = 1;
  }

  v152 = -21846;
  v147 = 0;
  v148 = &v147;
  v149 = 0x2000000000;
  v150 = 0;
  v145 = 0;
  v146[0] = MEMORY[0x277D85DD0];
  v146[1] = 0x40000000;
  v146[2] = __OSPFAddDynamicOptions_block_invoke;
  v146[3] = &unk_279683068;
  v146[4] = &v147;
  v140 = a2;
  v11 = OSPFGetLength(a2, a3);
  v12 = v11;
  v134 = a6;
  if (v11 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = 1238 - v11;
    ++a6[4];
  }

  MEMORY[0x28223BE20](v11);
  v15 = (&v122 - ((v14 + 15) & 0x1FFFFFFF0));
  v16 = memset(v15, 170, v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v122 - ((v17 + 15) & 0x1FFFFFFF0);
  if ((v19 & 1) == 0)
  {
    memset(&v122 - ((v17 + 15) & 0x1FFFFFFF0), 170, v17);
  }

  v144 = 0;
  if (v12 >= 1 && v13 >= 1 && a1)
  {
    v12 = OSPFParse(&v156, 0, v140, v12, &v144, v146);
    v21 = v148;
    if (v12 < 1)
    {
      v143 = -1431655766;
    }

    else
    {
      v143 = -1431655766;
      if ((v148[3] & 1) == 0 && v144)
      {
        v130 = v18;
        v22 = *a1;
        v141 = a3;
        if (v22)
        {
          if (v13 < 4)
          {
            v23 = 0;
          }

          else
          {
            v23 = 0;
            *&v20 = 136315906;
            v139 = v20;
            do
            {
              if (*v22)
              {
                v24 = 4 * (*v22)[1];
                if (v13 >= (v24 + 8))
                {
                  *a1 = v22[1];
                  v22[1] = 0;
                  if (OSPFProcessDynamicOption(v134, *v22, 0))
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 7)
                    {
                      v25 = VRTraceErrorLogLevelToCSTR();
                      v26 = *MEMORY[0x277CE5818];
                      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                      {
                        v27 = **v22;
                        *buf = v139;
                        v159 = v25;
                        v160 = 2080;
                        v161 = "OSPFAddDynamicOptions";
                        v162 = 1024;
                        v163 = 1795;
                        v164 = 1024;
                        v165 = v27;
                        _os_log_impl(&dword_24E50C000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OSPFAddOptions: error processing option node (type == %d)", buf, 0x22u);
                      }
                    }

                    if (*v22)
                    {
                      free(*v22);
                    }

                    free(v22);
                  }

                  else
                  {
                    v13 -= v24 + 4;
                    v28 = &v145;
                    do
                    {
                      v29 = v28;
                      v30 = *v28;
                      v28 = (*v28 + 8);
                    }

                    while (v30);
                    v23 += v24 + 4;
                    *v29 = v22;
                  }
                }

                else
                {
                  a1 = (v22 + 1);
                }
              }

              else
              {
                *a1 = v22[1];
                free(v22);
              }

              v22 = *a1;
              if (*a1)
              {
                v31 = v13 <= 3;
              }

              else
              {
                v31 = 1;
              }
            }

            while (!v31);
            if (v23)
            {
              v32 = v23 + 4;
LABEL_103:
              v84 = v132;
              v85 = v130;
              goto LABEL_106;
            }
          }

          v84 = v132;
          v85 = v130;
          v32 = 0;
LABEL_106:
          LODWORD(v139) = 43690;
          v127 = &v122;
          if (v84 && v13 >= 12)
          {
            if (*v84 != 0xFFFFFFFFLL && *(v84 + 8) && (v12 + v23 + 8 >= 196 ? (v86 = 8) : (v86 = ((191 - (v12 + v23)) & 0xFFFFFFFC) + 8), v13 - v86 >= 4))
            {
              v110 = v32;
              v111 = malloc_type_malloc(v86 + 4, 0x100004052888210uLL);
              v112 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
              v113 = v112;
              if (v111 && v112)
              {
                v114 = v132;
                v115 = *(v132 + 16);
                *v111 = 15;
                v111[1] = (v86 + 1020) >> 2;
                v111[2] = BYTE1(v115);
                v111[3] = v115;
                *(v111 + 3) = 0;
                *(v111 + 2) = bswap32(*(v114 + 12)) >> 16;
                *v112 = v111;
                v112[1] = 0;
                v116 = &v145;
                do
                {
                  v117 = v116;
                  v118 = *v116;
                  v116 = (*v116 + 8);
                }

                while (v118);
                *v117 = v112;
                v119 = *v111;
                v124 = *v111 >> 8;
                v128 = v119;
                buf[0] = 0;
                v120 = *v132;
                v121 = *(v132 + 8);
                GCK_BWE_TrackLargeFrameState();
              }

              free(v111);
              free(v113);
              v137 = 170;
              LODWORD(v139) = 43690;
              v136 = 170;
              v135 = 170;
              v128 = 170;
              v42 = 43690;
              v126 = 43690;
              v131 = 170;
              v125 = 170;
              v124 = 170;
              v85 = v130;
              v32 = v110;
            }

            else
            {
              v137 = 170;
              LODWORD(v139) = 43690;
              v136 = 170;
              v135 = 170;
              v128 = 170;
              v42 = 43690;
              v126 = 43690;
              v131 = 170;
              v125 = 170;
              v124 = 170;
            }
          }

          else
          {
            v135 = 170;
            v136 = 170;
            v128 = 170;
            v42 = 43690;
            v126 = 43690;
            v131 = 170;
            v125 = 170;
            v137 = 170;
            v124 = 170;
          }

          v141 = 0;
          LODWORD(v133) = 0;
          v47 = 0;
          if (v32)
          {
            v123 = 0;
            v129 = 43690;
            v87 = v145;
            if (v145)
            {
              v88 = 0;
              v89 = (v85 + 4);
              do
              {
                v90 = 4 * *(*v87 + 1) + 4;
                memcpy(v89, *v87, v90);
                v89 += v90;
                ++v88;
                v87 = *(v87 + 8);
              }

              while (v87);
            }

            else
            {
              v88 = 0;
            }

            v93 = v130;
            *v130 = -8;
            *(v93 + 1) = v88;
            *(v93 + 2) = bswap32(v32) >> 16;
            v94 = v144;
            v95 = v144 - v140;
            v96 = v144 - v140;
            memcpy(v15, v140, v96);
            v15[2] |= 0x200u;
            v15[1] = bswap32(v32 + (bswap32(v15[1]) >> 16)) >> 16;
            v15[3] = 0;
            if (v95 < 1)
            {
              v97 = 0;
              v37 = v127;
            }

            else
            {
              LOWORD(v97) = 0;
              v98 = v95 & 0x7FFFFFFF;
              v99 = v15;
              v37 = v127;
              do
              {
                v100 = *v99++;
                v97 = CRC16Table[(v100 ^ v97)] ^ ((v97 & 0xFF00) >> 8);
                --v98;
              }

              while (v98);
            }

            v101 = v12 - v95;
            if (v32 < 1)
            {
              v42 = v129;
            }

            else
            {
              v102 = v32;
              v42 = v129;
              v103 = v130;
              do
              {
                v104 = *v103++;
                v97 = CRC16Table[(v104 ^ v97)] ^ ((v97 & 0xFF00) >> 8);
                --v102;
              }

              while (v102);
            }

            if (v101 >= 1)
            {
              v105 = v94;
              v106 = (v12 - v95);
              do
              {
                v107 = *v105++;
                v97 = CRC16Table[(v107 ^ v97)] ^ ((v97 & 0xFF00) >> 8);
                --v106;
              }

              while (v106);
            }

            v15[3] = bswap32(v97) >> 16;
            v108 = DWORD2(v154);
            if (DWORD2(v154))
            {
              v152 = bswap32(v32 + v12) >> 16;
            }

            v109 = &v157[SDWORD2(v154)];
            *v109 = v15;
            v109[1] = v96;
            v44 = v131;
            v109[2] = v130;
            v109[3] = v32;
            v109[4] = v94;
            v109[5] = v101;
            DWORD2(v154) = v108 + 3;
            v40 = v140;
            v41 = v128;
            v45 = v125;
            v43 = v126;
            v46 = v124;
            v47 = v123;
          }

          else
          {
            v91 = DWORD2(v154);
            v46 = v124;
            v45 = v125;
            if (DWORD2(v154))
            {
              v152 = bswap32(v12) >> 16;
            }

            v92 = &v157[SDWORD2(v154)];
            v40 = v140;
            *v92 = v140;
            v92[1] = v12;
            DWORD2(v154) = v91 + 1;
            v37 = v127;
            v41 = v128;
            v43 = v126;
            v44 = v131;
          }

          goto LABEL_51;
        }

        v23 = 0;
        v32 = 0;
        goto LABEL_103;
      }
    }

    goto LABEL_41;
  }

  v143 = -1431655766;
  if (a1)
  {
    v21 = v148;
LABEL_41:
    if ((v21[3] & 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v33 = VRTraceErrorLogLevelToCSTR();
        v34 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v159 = v33;
          v160 = 2080;
          v161 = "OSPFAddDynamicOptions";
          v162 = 1024;
          v163 = 1754;
          v164 = 1024;
          v165 = v12;
          _os_log_impl(&dword_24E50C000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OSPFAddOptions: fail iOSPFLen == %d)", buf, 0x22u);
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v35 = VRTraceErrorLogLevelToCSTR();
        v36 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v159 = v35;
          v160 = 2080;
          v161 = "OSPFAddDynamicOptions";
          v162 = 1024;
          v163 = 1755;
          v164 = 1024;
          v165 = a3;
          _os_log_impl(&dword_24E50C000, v36, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d OSPFAddOptions: iLen == %d)", buf, 0x22u);
        }
      }
    }
  }

  v37 = &v122;
  v38 = DWORD2(v154);
  if (DWORD2(v154))
  {
    v152 = bswap32(a3) >> 16;
  }

  v141 = 0;
  LODWORD(v133) = 0;
  v39 = &v157[SDWORD2(v154)];
  v40 = v140;
  *v39 = v140;
  v39[1] = a3;
  DWORD2(v154) = v38 + 1;
  v137 = 170;
  LODWORD(v139) = 43690;
  v136 = 170;
  v135 = 170;
  v41 = 170;
  v42 = 43690;
  v43 = 43690;
  v44 = 170;
  v45 = -86;
  v46 = -86;
  v47 = -1431655766;
LABEL_51:
  *&v154 = v157;
  if (v156)
  {
    free(v156);
  }

  if (v142)
  {
    v128 = v41;
    v48 = (*(v142 + 16))();
    v49 = v133 ^ 1;
    if (!v48)
    {
      v49 = 1;
    }

    if ((v49 & 1) == 0)
    {
      v131 = v44;
      v129 = v42;
      LODWORD(v134) = v40[2];
      LODWORD(v126) = *(v132 + 20);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      v52 = v141;
      if (ErrorLogLevelForModule >= 8)
      {
        v53 = VRTraceErrorLogLevelToCSTR();
        v54 = *MEMORY[0x277CE5818];
        v55 = *MEMORY[0x277CE5818];
        if (*MEMORY[0x277CE5808] == 1)
        {
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136317186;
            v159 = v53;
            v160 = 2080;
            v161 = "BWE_SendProbePkts";
            v162 = 1024;
            v163 = 481;
            v164 = 1024;
            v165 = v126;
            v166 = 1024;
            v167 = v47;
            v168 = 1024;
            v169 = 4 * v46;
            v170 = 1024;
            v171 = v131 | (v45 << 8);
            v172 = 1024;
            v173 = bswap32(v43) >> 16;
            v174 = 1024;
            v175 = __rev16(v129);
            _os_log_impl(&dword_24E50C000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ****************************************************\nOSPFAddDynamicOption (to %d)  %d bytes optionDataLength: %d\n \t\t wRxEstimate_kbps: %d  wProbeSeqId: %d  wPktIndex: %x  \n****************************************************\n", buf, 0x40u);
          }
        }

        else if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136317186;
          v159 = v53;
          v160 = 2080;
          v161 = "BWE_SendProbePkts";
          v162 = 1024;
          v163 = 481;
          v164 = 1024;
          v165 = v126;
          v166 = 1024;
          v167 = v47;
          v168 = 1024;
          v169 = 4 * v46;
          v170 = 1024;
          v171 = v131 | (v45 << 8);
          v172 = 1024;
          v173 = bswap32(v43) >> 16;
          v174 = 1024;
          v175 = __rev16(v129);
          _os_log_debug_impl(&dword_24E50C000, v54, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ****************************************************\nOSPFAddDynamicOption (to %d)  %d bytes optionDataLength: %d\n \t\t wRxEstimate_kbps: %d  wProbeSeqId: %d  wPktIndex: %x  \n****************************************************\n", buf, 0x40u);
        }
      }

      v127 = v37;
      if (v52 < 1)
      {
        v58 = 0;
      }

      else
      {
        v58 = 0;
        LODWORD(v131) = bswap32(v126);
        v130 = &v157[v138 != 0];
        v129 = v130 | 8;
        v59 = 4 * v135;
        v60 = (v59 + 24);
        v133 = v139 << 32;
        v61 = v128;
        LODWORD(v140) = __rev16(v60);
        LODWORD(v125) = v59;
        LODWORD(v128) = __rev16(v59 + 8);
        LODWORD(v124) = v137 | (v136 << 8);
        v123 = bswap32(v139) >> 16;
        v62 = 1;
        v63 = 0xAAAAAAAAAAAAAAAALL;
        *&v51 = 136317186;
        v122 = v51;
        v132 = (v137 << 24) | (v136 << 16) | (v135 << 8) | v61;
        do
        {
          if (v62 == v52)
          {
            v64 = 61440;
          }

          else
          {
            v64 = 0;
          }

          v65 = v64 | v62;
          v66 = bswap32(v64 | v62) >> 16;
          if (v62 == 1)
          {
            v67 = malloc_type_calloc(1uLL, v60, 0x1000040451B5BE8uLL);
            if (!v67)
            {
              break;
            }

            v68 = 0;
            LOWORD(v69) = 0;
            v58 = v67;
            *v67 = 2497;
            *(v67 + 1) = v140;
            *(v67 + 2) = 512;
            v70 = v131;
            *(v67 + 2) = v134;
            *(v67 + 3) = v70;
            *(v67 + 8) = 504;
            *(v67 + 9) = v128;
            *(v67 + 13) = v66;
            v67[20] = 15;
            v63 = (v67 + 20);
            LOBYTE(v70) = v136;
            v67[21] = v135;
            v67[22] = v70;
            v67[23] = v137;
            *(v67 + 12) = v139;
            do
            {
              v69 = CRC16Table[(v67[v68++] ^ v69)] ^ ((v69 & 0xFF00) >> 8);
            }

            while (v60 != v68);
            *(v67 + 3) = bswap32(v69) >> 16;
            if (v138)
            {
              v152 = v140;
              v71 = 2;
            }

            else
            {
              v71 = 1;
            }

            v77 = v129;
            *v130 = v67;
            *v77 = v60;
            DWORD2(v154) = v71;
            v72 = v60;
            *&v154 = v157;
          }

          else
          {
            *v63 = v133 | (v66 << 48) | v132;
            *(v58 + 3) = 0;
            v72 = v143;
            if (v143 < 1)
            {
              v73 = 0;
            }

            else
            {
              LOWORD(v73) = 0;
              v74 = v143;
              v75 = v58;
              do
              {
                v76 = *v75++;
                v73 = CRC16Table[(v76 ^ v73)] ^ ((v73 & 0xFF00) >> 8);
                --v74;
              }

              while (v74);
            }

            *(v58 + 3) = bswap32(v73) >> 16;
          }

          if (!(*(v142 + 16))(v142, &v153))
          {
            break;
          }

          v143 = v72;
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v78 = VRTraceErrorLogLevelToCSTR();
            v79 = *MEMORY[0x277CE5818];
            v80 = *MEMORY[0x277CE5818];
            if (*MEMORY[0x277CE5808] == 1)
            {
              if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v122;
                v159 = v78;
                v160 = 2080;
                v161 = "BWE_SendProbePkts";
                v162 = 1024;
                v163 = 540;
                v164 = 1024;
                v165 = v126;
                v166 = 1024;
                v167 = v143;
                v168 = 1024;
                v169 = v125;
                v170 = 1024;
                v171 = v124;
                v172 = 1024;
                v173 = v123;
                v174 = 1024;
                v175 = v65;
                _os_log_impl(&dword_24E50C000, v79, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ****************************************************\nOSPFAddDynamicOption (to %d)  %d bytes optionDataLength: %d\n \t\t wRxEstimate_kbps: %d  wProbeSeqId: %d  wPktIndex: %x  \n****************************************************\n", buf, 0x40u);
              }
            }

            else if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
            {
              *buf = v122;
              v159 = v78;
              v160 = 2080;
              v161 = "BWE_SendProbePkts";
              v162 = 1024;
              v163 = 540;
              v164 = 1024;
              v165 = v126;
              v166 = 1024;
              v167 = v143;
              v168 = 1024;
              v169 = v125;
              v170 = 1024;
              v171 = v124;
              v172 = 1024;
              v173 = v123;
              v174 = 1024;
              v175 = v65;
              _os_log_debug_impl(&dword_24E50C000, v79, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ****************************************************\nOSPFAddDynamicOption (to %d)  %d bytes optionDataLength: %d\n \t\t wRxEstimate_kbps: %d  wProbeSeqId: %d  wPktIndex: %x  \n****************************************************\n", buf, 0x40u);
            }
          }

          v52 = v141;
        }

        while (v62++ != v141);
      }

      free(v58);
      goto LABEL_100;
    }

    if (v48)
    {
LABEL_100:
      v56 = v145;
      goto LABEL_101;
    }
  }

  ++v134[8];
  v56 = v145;
  if (v145)
  {
    do
    {
      v57 = *(v56 + 8);
      if (*v56)
      {
        free(*v56);
      }

      free(v56);
      v56 = v57;
    }

    while (v57);
  }

LABEL_101:
  _Block_object_dispose(&v147, 8);
  v82 = *MEMORY[0x277D85DE8];
  return v56;
}

uint64_t __OSPFAddDynamicOptions_block_invoke(uint64_t result, void *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      if (*a2)
      {
        *(*(*(result + 32) + 8) + 24) = 1;
      }

      ++a2;
      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL _OSPFParse_ParseNodes(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int16 *a4, unsigned int a5, _DWORD *a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v25 = a4;
  LODWORD(v6) = a4;
  if (a3)
  {
    v9 = 0;
    v10 = (a2 + 292);
    v6 = a4;
    v11 = a3;
    while (1)
    {
      v12 = a5 - 7;
      if (a5 < 7)
      {
        break;
      }

      v13 = a2 + 480 * v9;
      *v13 = bswap32(*v6);
      *(v13 + 4) = -1;
      *(v13 + 268) = -1;
      *(v13 + 272) = bswap32(v6[2]) >> 16;
      *(v13 + 276) = 1;
      *(v13 + 280) = *(a1 + 8);
      v14 = *(v6 + 6);
      *(v13 + 8) = v14;
      if (v12 < v14 + 2)
      {
        break;
      }

      v15 = v6 + 7;
      memcpy((v13 + 9), v6 + 7, v14);
      v16 = &v15[v14];
      *(v13 + 9 + v14) = 0;
      v17 = *v16;
      v18 = __rev16(v17);
      if (v18 >= 0x11)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v21 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x277CE5818];
          result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            goto LABEL_16;
          }

          *buf = 136315906;
          v27 = v21;
          v28 = 2080;
          v29 = "_OSPFParse_ParseNodes";
          v30 = 1024;
          v31 = 1360;
          v32 = 1024;
          v33 = v18;
          _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Too many neighbors. Count=%d", buf, 0x22u);
        }

        break;
      }

      a5 = v12 - v14 - 2;
      *(v13 + 284) = v18;
      if (a5 < 8 * v18)
      {
        break;
      }

      v6 = (v16 + 2);
      if (v17)
      {
        v19 = v10;
        do
        {
          *(v19 - 1) = bswap32(*v6);
          *v19 = bswap32(*(v6 + 1));
          v19 += 3;
          v6 += 4;
          a5 -= 8;
          --v18;
        }

        while (v18);
      }

      ++v9;
      v10 += 120;
      if (v9 == v11)
      {
        goto LABEL_11;
      }
    }

    result = 0;
  }

  else
  {
LABEL_11:
    *a6 = v6 - v25;
    result = 1;
  }

LABEL_16:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TimingLog(int a1, int a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = micro();
  v7 = v6;
  if (a2)
  {
    g_resetTime = *&v6;
    pthread_mutex_lock(&g_xTimingLog);
    if (a1 != 3)
    {
      if (a1 == 2)
      {
        fprintf(*MEMORY[0x277D85DF8], "**TIME** %0.3lf (T0 ---): %s\n");
      }

      else if (a1 == 1)
      {
        NSLog(&cfstr_Time03lfT0S.isa, *&v7, a3);
      }

      goto LABEL_16;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_16;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136316162;
    v18 = v8;
    v19 = 2080;
    v20 = "TimingLog";
    v21 = 1024;
    v22 = 28;
    v23 = 2048;
    v24 = v7;
    v25 = 2080;
    v26 = *&a3;
    v10 = " [%s] %s:%d **TIME** %0.3lf (T0 ---): %s";
    v11 = v9;
    v12 = 48;
LABEL_20:
    _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    goto LABEL_16;
  }

  pthread_mutex_lock(&g_xTimingLog);
  switch(a1)
  {
    case 3:
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        break;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        break;
      }

      *buf = 136316418;
      v18 = v15;
      v19 = 2080;
      v20 = "TimingLog";
      v21 = 1024;
      v22 = 45;
      v23 = 2048;
      v24 = v7;
      v25 = 2048;
      v26 = v7 - *&g_resetTime;
      v27 = 2080;
      v28 = a3;
      v10 = " [%s] %s:%d **TIME** %0.3lf (T+%0.3lf): %s";
      v11 = v16;
      v12 = 58;
      goto LABEL_20;
    case 2:
      fprintf(*MEMORY[0x277D85DF8], "**TIME** %0.3lf (T+%0.3lf): %s\n");
      break;
    case 1:
      NSLog(&cfstr_Time03lfT03lfS.isa, *&v7, v7 - *&g_resetTime, a3);
      break;
  }

LABEL_16:
  result = pthread_mutex_unlock(&g_xTimingLog);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void UpdateRxEstimate(uint64_t a1, int a2, int a3, int *a4, double a5, double a6, double a7)
{
  v73 = *MEMORY[0x277D85DE8];
  if (*(a1 + 356) == 1)
  {
    UpdateRxEstimate_v1(a1, a2, a3, a4, a5, a6, a7);
    *(a1 + 264) = *(a1 + 320);
    v14 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*(a1 + 357) == 1)
  {
    v59 = -1;
    UpdateRxEstimate_v1(a1, a2, a3, &v59, a5, a6, a7);
  }

  v15 = *(a1 + 92);
  if (v15 == 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = 3;
  }

  v17 = *(a1 + 264);
  if (v17 != 0.0)
  {
    if (!a2 || a3 < 250)
    {
      goto LABEL_98;
    }

    if (dbl_24E590AA0[v15 == 2] <= a6)
    {
      *(a1 + 296) = 0;
    }

    else
    {
      v23 = *(a1 + 296);
      if (v23 < v16)
      {
        *(a1 + 296) = ++v23;
      }

      if (v23 < v16)
      {
        goto LABEL_98;
      }
    }
  }

  if (a5 > 0.0)
  {
    if (dbl_24E590AB0[v15 == 2] >= a5)
    {
      v18 = a5;
    }

    else
    {
      v18 = dbl_24E590AB0[v15 == 2];
    }

    *(a1 + 464) = *(a1 + 464) + a5;
    ++*(a1 + 472);
    if (v15 == 2)
    {
      if ((*(a1 + 97) & 1) == 0)
      {
        v31 = 200000.0;
        if (v18 <= 200000.0)
        {
          v31 = v18;
        }

        v32 = v31 + *(a1 + 272);
        *(a1 + 272) = v32;
        v33 = *(a1 + 280);
        *(a1 + 280) = v33 + 1;
        if (v33 > 8 || a7 - *(a1 + 288) >= 7.0)
        {
          *(a1 + 97) = 1;
          *(a1 + 264) = v32 / (v33 + 1);
          *(a1 + 288) = 0;
          *(a1 + 280) = 0;
        }

        goto LABEL_98;
      }

      v19 = 6;
      v20 = 10.0;
      v21 = 7.0;
      v22 = 100000.0;
    }

    else
    {
      v22 = 0.0;
      v21 = 4.0;
      if (v15 == 1)
      {
        v19 = 4;
      }

      else
      {
        v21 = 0.0;
        v19 = 3;
      }

      v20 = v21;
    }

    v24 = v17 - v18 > 200000.0 || v18 <= v17 * 0.5;
    v25 = v18 - v17 > 200000.0 || v18 >= v17 * 1.5;
    v26 = v17 - v18 > v22 && v24;
    v27 = v18 - v17 > v22 && v25;
    if (v17 == 0.0)
    {
      v28 = 0;
      v29 = 100000.0;
      if (v18 >= 100000.0)
      {
        v29 = v18;
      }

      *(a1 + 264) = v29;
      goto LABEL_91;
    }

    if (!v26 && !v27)
    {
      if (v15 == 2)
      {
        v34 = *(a1 + 220);
        if (v34 >= 1)
        {
          v35 = (a1 + 100);
          do
          {
            v36 = *v35++;
            v17 = v36 * 0.05 + v17 * 0.95;
            --v34;
          }

          while (v34);
          *(a1 + 220) = 0;
        }

        v37 = v18 * 0.075;
        v38 = 0.925;
      }

      else
      {
        v37 = v18 * 0.1;
        v38 = 0.9;
      }

      *(a1 + 264) = v37 + v17 * v38;
      *(a1 + 280) = 0;
      v28 = 1;
      *(a1 + 272) = 0;
      goto LABEL_91;
    }

    if ((v15 - 1) > 1)
    {
      v30 = 0;
    }

    else
    {
      if (*(a1 + 280) >= 0)
      {
        v21 = v20;
      }

      v30 = a7 - *(a1 + 288) < v21;
    }

    if (v26)
    {
      v39 = *(a1 + 280);
      if (v39 < 0)
      {
        v40 = v39 - 1;
      }

      else
      {
        *(a1 + 272) = 0;
        *(a1 + 288) = a7;
        v40 = -1;
      }

      *(a1 + 280) = v40;
      v43 = -10;
    }

    else
    {
      if (!v27)
      {
LABEL_75:
        v44 = v18 + *(a1 + 272);
        *(a1 + 272) = v44;
        v45 = *(a1 + 280);
        if ((v45 & 0x80000000) != 0)
        {
          v45 = -v45;
        }

        if (*(a1 + 92) == 2)
        {
          v46 = *(a1 + 220);
          if (v46 <= 29)
          {
            *(a1 + 4 * v46 + 100) = v18;
            ++*(a1 + 220);
          }
        }

        if (v45 < v19 || v30)
        {
          goto LABEL_92;
        }

        if (*(a1 + 92) == 2)
        {
          v47 = v44 / v45;
          if ((*(a1 + 280) & 0x80000000) == 0)
          {
            v47 = v47 * 0.9 + v17 * 0.1;
          }
        }

        else
        {
          v47 = v44 / v45;
        }

        *(a1 + 264) = v47;
        *(a1 + 280) = 0;
        *(a1 + 272) = 0;
        if (*a4 == -10)
        {
          v48 = -100;
        }

        else
        {
          v48 = 200;
        }

        if (*a4 == 10)
        {
          v28 = 100;
        }

        else
        {
          v28 = v48;
        }

LABEL_91:
        *a4 = v28;
LABEL_92:
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v49 = VRTraceErrorLogLevelToCSTR();
          v50 = *MEMORY[0x277CE5818];
          v51 = *MEMORY[0x277CE5818];
          if (*MEMORY[0x277CE5808] == 1)
          {
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              v52 = *(a1 + 264);
              v53 = *a4;
              v54 = *(a1 + 280);
              v59 = 136316674;
              v60 = v49;
              v61 = 2080;
              v62 = "UpdateRxEstimate";
              v63 = 1024;
              v64 = 817;
              v65 = 1024;
              v66 = v18;
              v67 = 1024;
              v68 = v52;
              v69 = 1024;
              v70 = v53;
              v71 = 1024;
              v72 = v54;
              _os_log_impl(&dword_24E50C000, v50, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \t\t\t\t\t\t\t\t ------ dBWD: %d Rx: %d  \t %d %d", &v59, 0x34u);
            }
          }

          else if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            v56 = *(a1 + 264);
            v57 = *a4;
            v58 = *(a1 + 280);
            v59 = 136316674;
            v60 = v49;
            v61 = 2080;
            v62 = "UpdateRxEstimate";
            v63 = 1024;
            v64 = 817;
            v65 = 1024;
            v66 = v18;
            v67 = 1024;
            v68 = v56;
            v69 = 1024;
            v70 = v57;
            v71 = 1024;
            v72 = v58;
            _os_log_debug_impl(&dword_24E50C000, v50, OS_LOG_TYPE_DEBUG, " [%s] %s:%d \t\t\t\t\t\t\t\t ------ dBWD: %d Rx: %d  \t %d %d", &v59, 0x34u);
          }
        }

        goto LABEL_98;
      }

      v41 = *(a1 + 280);
      if (v41 <= 0)
      {
        *(a1 + 272) = 0;
        *(a1 + 288) = a7;
        v42 = 1;
      }

      else
      {
        v42 = v41 + 1;
      }

      *(a1 + 280) = v42;
      v43 = 10;
    }

    *a4 = v43;
    goto LABEL_75;
  }

LABEL_98:
  v55 = *MEMORY[0x277D85DE8];
}

uint64_t UpdateRxEstimate_v1(uint64_t result, int a2, int a3, int *a4, double a5, double a6, double a7)
{
  v8 = *(result + 320);
  if (v8 != 0.0)
  {
    if (!a2 || a3 < 250)
    {
      return result;
    }

    if (a6 >= 0.008)
    {
      *(result + 352) = 0;
    }

    else
    {
      v14 = *(result + 352);
      if (v14 <= 2)
      {
        *(result + 352) = v14 + 1;
        if (v14 != 2)
        {
          return result;
        }
      }
    }
  }

  if (a5 <= 0.0)
  {
    return result;
  }

  v9 = 2300000.0;
  if (a5 <= 2300000.0)
  {
    v9 = a5;
  }

  v10 = v9 <= v8 * 0.5;
  if (v8 - v9 > 200000.0)
  {
    v10 = 1;
  }

  v11 = v9 >= v8 * 1.5;
  if (v9 - v8 > 200000.0)
  {
    v11 = 1;
  }

  if (v8 == 0.0)
  {
    v12 = 0;
    v13 = 100000.0;
    if (v9 >= 100000.0)
    {
      v13 = v9;
    }

    *(result + 320) = v13;
    goto LABEL_43;
  }

  if (!v10 && !v11)
  {
    *(result + 320) = v9 * 0.1 + v8 * 0.9;
    *(result + 336) = 0;
    *(result + 328) = 0;
    v12 = 1;
LABEL_43:
    *a4 = v12;
    return result;
  }

  if (v10)
  {
    v15 = *(result + 336);
    if (v15 < 0)
    {
      v16 = v15 - 1;
    }

    else
    {
      *(result + 328) = 0;
      *(result + 344) = a7;
      v16 = -1;
    }

    *(result + 336) = v16;
    v19 = -10;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_34;
    }

    v17 = *(result + 336);
    if (v17 <= 0)
    {
      *(result + 328) = 0;
      *(result + 344) = a7;
      v18 = 1;
    }

    else
    {
      v18 = v17 + 1;
    }

    *(result + 336) = v18;
    v19 = 10;
  }

  *a4 = v19;
LABEL_34:
  v20 = v9 + *(result + 328);
  *(result + 328) = v20;
  v21 = *(result + 336);
  if (v21 < 0)
  {
    v21 = -v21;
  }

  if (v21 >= 3)
  {
    *(result + 320) = v20 / v21;
    *(result + 336) = 0;
    *(result + 328) = 0;
    if (*a4 == -10)
    {
      v22 = -100;
    }

    else
    {
      v22 = 200;
    }

    if (*a4 == 10)
    {
      v12 = 100;
    }

    else
    {
      v12 = v22;
    }

    goto LABEL_43;
  }

  return result;
}

uint64_t BWEstCheckIfLargeFrameNeeded(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = micro();
  if (*(a1 + 360) == 0.0)
  {
    *(a1 + 400) = v2;
    v3 = v2;
  }

  else
  {
    v3 = *(a1 + 400);
  }

  v4 = v2 - v3;
  v5 = 2.0;
  if (v4 >= 10.0 && *(a1 + 408) >= 5)
  {
    v5 = 10.0;
  }

  v6 = *(a1 + 416);
  if (v6 == 1)
  {
    LOBYTE(v6) = 0;
    *(a1 + 416) = 0;
  }

  v7 = 5 * *(a1 + 8);
  v8 = (v7 >> 1) & 0x1FFFFFFF;
  if (((v7 >> 2) & 0xFFFFFFF) < 0x55F)
  {
    v10 = 20 * *(a1 + 8);
    v11 = v10 >> 4;
    if (v10 <= 0x897)
    {
      v8 = 257;
    }

    if (v11 <= 0x100)
    {
      v12 = 256;
    }

    else
    {
      v12 = v10 >> 4;
    }

    if (v10 >= 0xFA0)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    if (v10 >= 0xFA0)
    {
      v8 = v12 + 1;
    }

    if (v11 >= 0x36B)
    {
      v9 = 3;
    }

    else
    {
      v9 = v13;
    }

    if (v11 >= 0x36B)
    {
      v8 = (20 * *(a1 + 8)) / 0x18u + 1;
    }
  }

  else
  {
    v9 = 2;
    do
    {
      ++v9;
    }

    while (v8 / v9 > *(a1 + 84));
    v8 = v8 / v9 + 1;
  }

  *(a1 + 388) = v8;
  *(a1 + 392) = v9;
  v14 = v8 * v9;
  *(a1 + 380) = v14;
  if ((v6 & 1) != 0 || v2 - *(a1 + 368) < v5)
  {
    v14 = 0;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x277CE5818];
    v19 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315906;
        v21 = v17;
        v22 = 2080;
        v23 = "BWEstCheckIfLargeFrameNeeded";
        v24 = 1024;
        v25 = 1730;
        v26 = 1024;
        v27 = v14;
        _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ^^^^^ LARGE frame req'd of %d ", &v20, 0x22u);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      BWEstCheckIfLargeFrameNeeded_cold_1();
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t GCK_BWE_CreateHandle()
{
  v4 = *MEMORY[0x277D85DE8];
  if (malloc_type_calloc(1uLL, 0x2B8uLL, 0x1000040040ACAD7uLL))
  {
    CreateHandle();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
    v1 = *MEMORY[0x277CE5818];
    if (IsOSFaultDisabled)
    {
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GCK_BWE_CreateHandle_cold_3();
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_FAULT))
    {
      GCK_BWE_CreateHandle_cold_2();
    }
  }

  v2 = *MEMORY[0x277D85DE8];
  return 2149908483;
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1)
{

  return [v1 serviceNameforDeviceID:v2 playerID:a1];
}

uint64_t OUTLINED_FUNCTION_7_2()
{
  v2 = *(v0 + 40);

  return [v2 playerID];
}

double machTimeScale()
{
  if ((_MergedGlobals_0 & 1) == 0)
  {
    machTimeScale_cold_1();
  }

  return *&qword_27F20E558;
}

void gkDiscoveryBrowseCallback(int a1, int a2, uint32_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = *MEMORY[0x277D85DE8];
  sdRef = 0xAAAAAAAAAAAAAAAALL;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317442;
      *&buf[4] = v15;
      *&buf[12] = 2080;
      *&buf[14] = "gkDiscoveryBrowseCallback";
      *&buf[22] = 1024;
      LODWORD(v33) = 253;
      WORD2(v33) = 1024;
      *(&v33 + 6) = a1;
      WORD5(v33) = 1024;
      HIDWORD(v33) = a2;
      LOWORD(v34) = 1024;
      *(&v34 + 2) = a3;
      HIWORD(v34) = 1024;
      v35 = a4;
      v36 = 2080;
      v37 = a5;
      v38 = 2080;
      v39 = a6;
      v40 = 2080;
      v41 = a7;
      _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d bonjour browse callback - sdRef=%x, flags=%x, interfaceIndex=%d, errorCode=%d, serviceName=%s, regtype=%s, replyDomain=%s", buf, 0x52u);
    }
  }

  if (a8)
  {
    if (a4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          gkDiscoveryBrowseCallback_cold_1();
        }
      }

      goto LABEL_44;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    *&v33 = __Block_byref_object_copy__0;
    *(&v33 + 1) = __Block_byref_object_dispose__0;
    v34 = a8;
    if (a5)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:a5];
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 & 2;
    if (!v18)
    {
      if ([*(*&buf[8] + 40) browseCallback])
      {
        v19 = [*(*&buf[8] + 40) browseCallback];
        (*(v19 + 16))(v19, 0, v17, a3, 0, 0);
      }

LABEL_43:
      _Block_object_dispose(buf, 8);
      goto LABEL_44;
    }

    if (a5 && a6 && a7)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s.%s%s", a5, a6, a7];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          if (v20)
          {
            v23 = [objc_msgSend(v20 "description")];
          }

          else
          {
            v23 = "<nil>";
          }

          *v42 = 136315906;
          v43 = v21;
          v44 = 2080;
          v45 = "generateFullName";
          v46 = 1024;
          v47 = 236;
          v48 = 2080;
          v49 = v23;
          _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gkDiscovery: generated fullname %s for TxT record", v42, 0x26u);
        }
      }

      if (v20)
      {
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __gkDiscoveryBrowseCallback_block_invoke;
        v27[3] = &unk_279683338;
        v30 = v18 >> 1;
        v27[4] = v17;
        v27[5] = buf;
        v28 = a3;
        v29 = 0;
        v24 = [v27 copy];
        if (DNSServiceQueryRecord(&sdRef, 0x20000u, a3, [v20 UTF8String], 0x10u, 1u, gkDiscoveryTxtCallback, v24))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              gkDiscoveryBrowseCallback_cold_3();
            }
          }
        }

        else if (DNSServiceSetDispatchQueue(sdRef, MEMORY[0x277D85CD0]))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              gkDiscoveryBrowseCallback_cold_4();
            }
          }
        }

        goto LABEL_43;
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        gkDiscoveryBrowseCallback_cold_2();
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        gkDiscoveryBrowseCallback_cold_5();
      }
    }

    goto LABEL_43;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      gkDiscoveryBrowseCallback_cold_6();
    }
  }

LABEL_44:
  v25 = *MEMORY[0x277D85DE8];
}

void sub_24E572E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void gkDiscoveryResolveCallback(int a1, int a2, uint32_t a3, uint64_t a4, uint64_t a5, const char *a6, unsigned int a7, int a8, uint64_t a9, void *a10)
{
  v54 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317698;
      *&buf[4] = v17;
      v34 = 2080;
      v35 = "gkDiscoveryResolveCallback";
      v36 = 1024;
      v37 = 401;
      v38 = 1024;
      v39 = a1;
      v40 = 1024;
      v41 = a2;
      v42 = 1024;
      v43 = a3;
      v44 = 1024;
      v45 = a4;
      v46 = 2080;
      v47 = a5;
      v48 = 2080;
      v49 = a6;
      v50 = 1024;
      v51 = __rev16(a7);
      v52 = 1024;
      v53 = a8;
      _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d bonjour resolve callback - sdRef=%x, flags=%x, interfaceIndex=%d, errorCode=%d, fullname=%s, hosttarget=%s, port=%d, txtLen=%d", buf, 0x54u);
    }
  }

  if (a10)
  {
    v19 = [objc_msgSend(a10 "context")];
    v20 = [a10 resolveCompletionHandler];
    v21 = v20;
    if (a4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          gkDiscoveryResolveCallback_cold_1();
        }
      }

      (*(v21 + 16))(v21, 0, 0, 0, a4);
      goto LABEL_29;
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __gkDiscoveryResolveCallback_block_invoke;
    v31[3] = &unk_279683360;
    v31[4] = v20;
    v32 = a7;
    v22 = [v31 copy];
    *buf = 0;
    AddrInfo = DNSServiceGetAddrInfo(buf, 0x20000u, a3, 0, a6, gkDiscoveryGetAddrCallback, v22);
    if (!AddrInfo)
    {
      v25 = DNSServiceSetDispatchQueue(*buf, v19);
      if (v25)
      {
        v26 = v25;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            gkDiscoveryResolveCallback_cold_2();
          }
        }

        if (*buf)
        {
          DNSServiceRefDeallocate(*buf);
          *buf = 0;
        }

        AddrInfo = v26;
        goto LABEL_25;
      }
    }

    if (*buf)
    {
      v24 = [a10 serviceRefList];
      [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithPointer:", *buf)}];
    }

    if (AddrInfo)
    {
LABEL_25:
      if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
      {
        gkDiscoveryResolveCallback_cold_3();
        if (!v21)
        {
          goto LABEL_29;
        }
      }

      else if (!v21)
      {
        goto LABEL_29;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __gkDiscoveryResolveCallback_block_invoke_133;
      block[3] = &unk_2796832E8;
      block[4] = v21;
      v30 = AddrInfo;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      gkDiscoveryResolveCallback_cold_4();
    }
  }

LABEL_29:
  v27 = *MEMORY[0x277D85DE8];
}

void gkDiscoveryRegisterCallback(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136317186;
      v18 = v14;
      v19 = 2080;
      v20 = "gkDiscoveryRegisterCallback";
      v21 = 1024;
      v22 = 738;
      v23 = 1024;
      v24 = a1;
      v25 = 1024;
      v26 = a2;
      v27 = 1024;
      v28 = a3;
      v29 = 2080;
      v30 = a4;
      v31 = 2080;
      v32 = a5;
      v33 = 2080;
      v34 = a6;
      _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d bonjour register callback - sdRef=%x, flags=%x, errorCode=%d, name=%s, regtype=%s, domain=%s", &v17, 0x4Cu);
    }
  }

  if (a3)
  {
    if (a3 == -65548)
    {
      (*(a7 + 16))(a7);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        gkDiscoveryRegisterCallback_cold_1();
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __gkDiscoveryBrowseCallback_block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 40) + 8) + 40) browseCallback];
  if (result)
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) browseCallback];
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = *(a1 + 52);
    v8 = *(v3 + 16);

    return v8();
  }

  return result;
}

void gkDiscoveryTxtCallback(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8, const void *a9, int a10, void (**a11)(void, void))
{
  v46 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317954;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = "gkDiscoveryTxtCallback";
      *&buf[22] = 1024;
      *&buf[24] = 190;
      *&buf[28] = 1024;
      *&buf[30] = a1;
      *&buf[34] = 1024;
      *&buf[36] = a2;
      *&buf[40] = 1024;
      *&buf[42] = a3;
      *&buf[46] = 1024;
      LODWORD(v33) = a4;
      WORD2(v33) = 2080;
      *(&v33 + 6) = a5;
      HIWORD(v33) = 1024;
      LODWORD(v34) = a6;
      WORD2(v34) = 1024;
      *(&v34 + 6) = a7;
      WORD5(v34) = 1024;
      HIDWORD(v34) = a8;
      LOWORD(v35) = 1024;
      *(&v35 + 2) = a10;
      _os_log_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d bonjour txt callback - sdRef=%x, flags=%x, interfaceIndex=%d, errorCode=%d, fullname=%s, rrtype=%u, rrclass=%u, rdlen=%u, ttl=%u", buf, 0x56u);
    }
  }

  if (a11)
  {
    if (a4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          gkDiscoveryTxtCallback_cold_1();
        }
      }
    }

    v20 = [MEMORY[0x277CBEB38] dictionary];
    if (TXTRecordGetCount(a8, a9))
    {
      v21 = 0;
      do
      {
        *&v22 = 0xAAAAAAAAAAAAAAAALL;
        *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v44 = v22;
        v45 = v22;
        v42 = v22;
        v43 = v22;
        v40 = v22;
        v41 = v22;
        v38 = v22;
        v39 = v22;
        v36 = v22;
        v37 = v22;
        v34 = v22;
        v35 = v22;
        *&buf[32] = v22;
        v33 = v22;
        *buf = v22;
        *&buf[16] = v22;
        valueLen = -86;
        value = 0xAAAAAAAAAAAAAAAALL;
        TXTRecordGetItemAtIndex(a8, a9, v21, 0x100u, buf, &valueLen, &value);
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf];
        v24 = objc_alloc(MEMORY[0x277CCACA8]);
        v25 = [v24 initWithBytes:value length:valueLen encoding:4];
        if (v23)
        {
          v26 = v25;
          if ([v23 length])
          {
            if (v26)
            {
              [v20 setObject:v26 forKeyedSubscript:v23];
            }
          }
        }

        ++v21;
      }

      while (TXTRecordGetCount(a8, a9) > v21);
    }

    (a11)[2](a11, v20);
    if ((a2 & 1) == 0)
    {
      if (sdRef)
      {
        DNSServiceRefDeallocate(sdRef);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      gkDiscoveryTxtCallback_cold_2();
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void gkDiscoveryGetAddrCallback(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, int a7, void (**a8)(void, void, void, void))
{
  v46 = *MEMORY[0x277D85DE8];
  if (a8)
  {
    if (a4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          gkDiscoveryGetAddrCallback_cold_1();
        }
      }

      a8[2](a8, 0, 0, a4);
      goto LABEL_21;
    }

    *v44 = 0u;
    memset(v45, 0, sizeof(v45));
    v16 = a6[1];
    if (v16 == 30)
    {
      v17 = v44;
      v18 = a6 + 8;
      v19 = 30;
      v20 = 46;
    }

    else
    {
      if (v16 != 2)
      {
        v17 = "unknown address";
LABEL_16:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v21 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v24 = 136317442;
            v25 = v21;
            v26 = 2080;
            v27 = "gkDiscoveryGetAddrCallback";
            v28 = 1024;
            v29 = 378;
            v30 = 1024;
            v31 = a1;
            v32 = 1024;
            v33 = a2;
            v34 = 1024;
            v35 = a3;
            v36 = 1024;
            v37 = 0;
            v38 = 2080;
            v39 = a5;
            v40 = 2080;
            v41 = v17;
            v42 = 1024;
            v43 = a7;
            _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d bonjour getAddr callback - sdRef=%x, flags=%x, interfaceIndex=%d, errorCode=%d, hostname=%s, sockaddr=%s, ttl=%d", &v24, 0x4Eu);
          }
        }

        (a8)[2](a8, a3, a6, 0);
        if ((a2 & 1) == 0)
        {
        }

        goto LABEL_21;
      }

      v17 = v44;
      v18 = a6 + 4;
      v19 = 2;
      v20 = 16;
    }

    inet_ntop(v19, v18, v44, v20);
    goto LABEL_16;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      gkDiscoveryGetAddrCallback_cold_2();
    }
  }

LABEL_21:
  v23 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_9_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x22u);
}

void *copysockaddr(unsigned __int8 *a1)
{
  v2 = a1[1];
  if (v2 == 2)
  {
    v3 = 16;
  }

  else
  {
    if (v2 != 30)
    {
      return 0;
    }

    v3 = 28;
  }

  v4 = malloc_type_malloc(v3, 0x11069132uLL);
  if (!v4)
  {
    return 0;
  }

  return memcpy(v4, a1, v3);
}

uint64_t OUTLINED_FUNCTION_8_2@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 40) = a2;
  v3 = *(*a1 + 32);
  return *(*a1 + 8);
}

void OUTLINED_FUNCTION_9_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x3Au);
}

void AGPSendingSetElement::remove(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = a1;
  v5 = 2080;
  v6 = "remove";
  v7 = 1024;
  v8 = 802;
  _os_log_error_impl(&dword_24E50C000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d ERROR: CAN'T UPDATE (BAD TIMESTAMP) !!!!!!!!!!!!", &v3, 0x1Cu);
  v2 = *MEMORY[0x277D85DE8];
}

void GCKSessionInitiateRelay()
{
  v1 = *MEMORY[0x277D85DE8];
  error = 0;
  OUTLINED_FUNCTION_30();
  CheckInHandleDebug();
}

void GCKSessionUpdateRelay()
{
  error = 0;
  OUTLINED_FUNCTION_30();
  CheckInHandleDebug();
}

uint64_t GCKInvalidateOneCList(void *a1, int *a2)
{
  if (*a2 != -1)
  {
    close(*a2);
    *a2 = -1;
  }

  v4 = a2[18];
  if (v4 != -1)
  {
    close(v4);
    a2[18] = -1;
  }

  v5 = a1[9];
  v6 = a2[29];
  ICERemoveOneInterface();
  v7 = a1 + 986;
  do
  {
    v8 = v7;
    v9 = *v7;
    v7 = (*v7 + 728);
    if (v9)
    {
      v10 = v9 == a2;
    }

    else
    {
      v10 = 1;
    }
  }

  while (!v10);
  if (!v9)
  {
    return 0;
  }

  *v8 = *(v9 + 91);
  *(v9 + 91) = a1[987];
  a1[987] = v9;
  return 1;
}

void TracePrintChanStats_cold_1(uint64_t a1, unsigned int *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[16];
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Eu);
  v10 = *MEMORY[0x277D85DE8];
}

void TracePrintChanStats_cold_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 68);
  v3 = *(a2 + 8);
  v4 = *(a2 + 10);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Eu);
  v10 = *MEMORY[0x277D85DE8];
}

void TracePrintChanStats_cold_3(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 12);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x36u);
  v10 = *MEMORY[0x277D85DE8];
}

void TracePrintChanStats_cold_4(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  v3 = *(a2 + 36);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x28u);
  v9 = *MEMORY[0x277D85DE8];
}

void TracePrintChanStats_cold_5(uint64_t a1, float *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2[10];
  v3 = a2[11];
  v4 = a2[12];
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x3Au);
  v10 = *MEMORY[0x277D85DE8];
}

void TracePrintChanStats_cold_6(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 52);
  v3 = *(a2 + 56);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x30u);
  v9 = *MEMORY[0x277D85DE8];
}

void TracePrintChanStats_cold_7(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 72);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x22u);
  v8 = *MEMORY[0x277D85DE8];
}

void TracePrintChanStats_cold_8(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *(a2 + 144);
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

void GCKSession_TrimLocalInterfaceList_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19(&dword_24E50C000, v0, v1, " [%s] %s:%d InterfaceFilter got 2 or more interfaces already. skip the rest of the list.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void GCKSession_TrimLocalInterfaceList_cold_2(char a1, char a2, _BYTE *a3, _BYTE *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = v8;
      OUTLINED_FUNCTION_10();
      v13 = 331;
      _os_log_error_impl(&dword_24E50C000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d InterfaceFilter found an invalid number after actions done. We should not update the interface list.", &v11, 0x1Cu);
    }
  }

  *a4 = a2 & 1;
  *a3 = a1 & 1;
  v10 = *MEMORY[0x277D85DE8];
}

void GCKSession_TrimLocalInterfaceList_cold_3(uint64_t a1, _BYTE *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = v3;
      OUTLINED_FUNCTION_10();
      v8 = 313;
      _os_log_error_impl(&dword_24E50C000, v4, OS_LOG_TYPE_ERROR, " [%s] %s:%d ipPortList must not be nil and ipPortListCount must not be nil. Skip interface list trimming.", &v6, 0x1Cu);
    }
  }

  *a2 = 0;
  OUTLINED_FUNCTION_21_0();
  v5 = *MEMORY[0x277D85DE8];
}

void GCKSession_TrimLocalInterfaceList_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19(&dword_24E50C000, v0, v1, " [%s] %s:%d InterfaceFilter not trimming interfaces for local gaming.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _GCKSession_AddOneIPPortToInterfaceList_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x277CE5818];
    if (OUTLINED_FUNCTION_29())
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_14_0(&dword_24E50C000, v2, v3, " [%s] %s:%d Bailing due to: failed to reallocate ipPorts.", v4, v5, v6, v7, v8);
    }
  }

  OUTLINED_FUNCTION_21_0();
  v1 = *MEMORY[0x277D85DE8];
}

void _GCKSession_AddOneIPPortToInterfaceList_cold_2(uint64_t a1, int *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Cu);
  v8 = *MEMORY[0x277D85DE8];
}

void _GCKSession_AddOneIPPortToInterfaceList_cold_3()
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x277CE5818];
    if (OUTLINED_FUNCTION_29())
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_14_0(&dword_24E50C000, v2, v3, " [%s] %s:%d Bailing due to: failed to calloc ipPorts.", v4, v5, v6, v7, v8);
    }
  }

  OUTLINED_FUNCTION_21_0();
  v1 = *MEMORY[0x277D85DE8];
}

void _GCKSession_AddOneIPPortToInterfaceList_cold_4()
{
  v10 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_19_0();
        _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_19_0();
      _os_log_debug_impl(v6, v7, OS_LOG_TYPE_DEBUG, v8, v9, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_21_0();
  v5 = *MEMORY[0x277D85DE8];
}

void _GCKSession_AddOneIPPortToInterfaceList_cold_5()
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x277CE5818];
    if (OUTLINED_FUNCTION_29())
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_14_0(&dword_24E50C000, v2, v3, " [%s] %s:%d ipPortList must not be nil. Skip interface list trimming.", v4, v5, v6, v7, v8);
    }
  }

  OUTLINED_FUNCTION_21_0();
  v1 = *MEMORY[0x277D85DE8];
}

void _GCKSession_AddOneIPPortToInterfaceList_cold_6()
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x277CE5818];
    if (OUTLINED_FUNCTION_29())
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_14_0(&dword_24E50C000, v2, v3, " [%s] %s:%d ipPortListCount must not be nil. Skip interface list trimming.", v4, v5, v6, v7, v8);
    }
  }

  OUTLINED_FUNCTION_21_0();
  v1 = *MEMORY[0x277D85DE8];
}

void _GCKSession_AddOneIPPortToInterfaceList_cold_7()
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x277CE5818];
    if (OUTLINED_FUNCTION_29())
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_14_0(&dword_24E50C000, v2, v3, " [%s] %s:%d newIPPortToAdd must not be nil. Skip interface list trimming.", v4, v5, v6, v7, v8);
    }
  }

  OUTLINED_FUNCTION_21_0();
  v1 = *MEMORY[0x277D85DE8];
}

void GCKSessionCreate_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void GCKSessionCreate_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void GCKSessionCreate_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void GCKSessionCreate_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void GCKSessionCreate_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void GCKSessionCreate_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void GCKSessionRelease_cold_1(uint64_t a1, unsigned int *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2[2120];
  v3 = (a2[2122] + a2[2121]);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x38u);
  v9 = *MEMORY[0x277D85DE8];
}

void gckSessionRecvProc_cold_1(double *a1, pthread_mutex_t *a2, int *a3, uint64_t a4)
{
  v8 = micro();
  if (v8 - *a1 > 15.0)
  {
    pthread_mutex_lock(a2);
    *a1 = v8;
    TracePrintNodesX(*a3, a4);
    pthread_mutex_unlock(a2);
  }
}

void gckSessionRecvProc_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionRecvProc_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionRecvProc_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionLocalClientProc_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionSendDD_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void GCKSessionPrepareConnectionWithRelayInfo_cold_1(uint64_t a1, unsigned int *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x22u);
  v8 = *MEMORY[0x277D85DE8];
}

void GCKSessionPrepareConnectionWithRelayInfo_cold_2(uint64_t a1, unsigned int *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x22u);
  v8 = *MEMORY[0x277D85DE8];
}

void GCKSessionPrepareConnectionWithRelayInfo_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionCreateSocketAndBind_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionCreateSocketAndBind_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionCreateSocketAndBind_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionCreateSocketAndBind_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionCreateSocketAndBind_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionCreateSocketAndBind_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionCreateSocketAndBind_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void GCKGetNAT64Prefix_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  micro();
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_23(&dword_24E50C000, v0, v1, " [%s] %s:%d GCKGetNAT64Prefix: start NAT64 prefix resolution for %s at %f", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void GCKGetNAT64Prefix_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  micro();
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_23(&dword_24E50C000, v0, v1, " [%s] %s:%d GCKGetNAT64Prefix: no NAT64 prefix discovered for %s at %f", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void GCKGetNAT64Prefix_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  micro();
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_23(&dword_24E50C000, v0, v1, " [%s] %s:%d GCKGetNAT64Prefix: NAT64 prefix resolved for %s at %f", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void GCKSessionEstablishConnectionWithRelayInfo_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void GCKSessionPrepareRetryICE_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_17_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void GCKSessionStartEventCallbacks_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionSendHello_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void gckSessionWaitForHello_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void SendUDPPacketCList_cold_1(int a1)
{
  v16 = *MEMORY[0x277D85DE8];
  ++_MergedGlobals;
  *algn_27F20E504 += a1;
  v1 = micro();
  if (v1 - *&qword_27F20E510 > 1.0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      VRTraceErrorLogLevelToCSTR();
      v2 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_22_0();
          OUTLINED_FUNCTION_20_0();
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_16_0(v3, v4);
          OUTLINED_FUNCTION_19_0();
          _os_log_impl(v5, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 0x38u);
        }
      }

      else if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_16_0(v10, v11);
        OUTLINED_FUNCTION_19_0();
        _os_log_debug_impl(v12, v13, OS_LOG_TYPE_DEBUG, v14, v15, 0x38u);
      }
    }

    qword_27F20E510 = *&v1;
    dword_27F20E508 = _MergedGlobals;
    unk_27F20E50C = *algn_27F20E504;
  }

  v9 = *MEMORY[0x277D85DE8];
}