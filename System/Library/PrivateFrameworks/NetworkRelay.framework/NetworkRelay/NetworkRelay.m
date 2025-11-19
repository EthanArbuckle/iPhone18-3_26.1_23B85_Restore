void sub_25B98D41C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void __nrXPCCopyQueue_block_invoke()
{
  v28 = *MEMORY[0x277D85DE8];
  if (_NRShouldDebugAutoRelease_onceToken != -1)
  {
    dispatch_once(&_NRShouldDebugAutoRelease_onceToken, &__block_literal_global_40);
  }

  if (_NRShouldDebugAutoRelease_debugAutoRelease)
  {
    v0 = 0;
  }

  else
  {
    v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  }

  v1 = dispatch_queue_create("com.apple.networkrelay.xpc", v0);

  if (!v1)
  {
    v4 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v6 = v4;
      v7 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (!v7)
      {
        goto LABEL_15;
      }
    }

    v8 = nrCopyLogObj_2646();
    _NRLogWithArgs(v8, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_create(%s) failed", v9, v10, v11, v12, v13, "");

LABEL_15:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v14 = *__error();
    v15 = _os_log_pack_fill();
    *v15 = 136446466;
    *(v15 + 4) = "nr_dispatch_queue_create";
    *(v15 + 12) = 2080;
    *(v15 + 14) = "com.apple.networkrelay.xpc";
    v16 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v16);
  }

  v2 = nrXPCCopyQueue_nrXPCQueue;
  nrXPCCopyQueue_nrXPCQueue = v1;

  if (!nrXPCCopyQueue_nrXPCQueue)
  {
    v5 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v17 = v5;
      v18 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

      if (!v18)
      {
        goto LABEL_18;
      }
    }

    v19 = nrCopyLogObj_2646();
    _NRLogWithArgs(v19, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nrXPCQueue) != ((void*)0)", v20, v21, v22, v23, v24, "");

LABEL_18:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v25 = *__error();
    v26 = _os_log_pack_fill();
    *v26 = 136446210;
    *(v26 + 4) = "nrXPCCopyQueue_block_invoke";
    v27 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v27);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void _NRLogWithArgs(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  os_log_with_args();
  if (a2 != 17 && (sNRCopyLogToStdErr & 1) == 0)
  {
    return;
  }

  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a3];
  v13 = [v11 initWithFormat:v12 arguments:&a9];

  os_unfair_lock_lock(&sNRLogLock);
  if (sNRCopyLogToStdErr == 1)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        v14 = "DEFLT";
        goto LABEL_16;
      }

      if (a2 == 1)
      {
        v14 = "INFO ";
        goto LABEL_16;
      }
    }

    else
    {
      switch(a2)
      {
        case 2:
          v14 = "DEBUG";
          goto LABEL_16;
        case 16:
          v14 = "ERROR";
          goto LABEL_16;
        case 17:
          v14 = "FAULT";
LABEL_16:
          v15 = _NRCopyTimeString();
          fprintf(*MEMORY[0x277D85DF8], "%s %s %s\n", v14, -[__CFString UTF8String](v15, "UTF8String"), [v13 UTF8String]);

          goto LABEL_17;
      }
    }

    v14 = "?????";
    goto LABEL_16;
  }

LABEL_17:
  v16 = sNRLogSimCrashHook;
  os_unfair_lock_unlock(&sNRLogLock);
  if (a2 == 17)
  {
    if (v16)
    {
      v16(v13);
    }
  }
}

uint64_t NRCreateStringFromInternalManagerState(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        v3 = "Discovery";
      }

      else if (a1 == 6)
      {
        v3 = "StoppingDiscovery";
      }

      else
      {
        v3 = "StartingPairing";
      }

      goto LABEL_24;
    }

    switch(a1)
    {
      case 8:
        v3 = "Pairing";
        goto LABEL_24;
      case 9:
        v3 = "StoppingPairing";
        goto LABEL_24;
      case 10:
        v3 = "Invalidated";
        goto LABEL_24;
    }

    return [v2 initWithFormat:@"Unknown(%zu)", a1];
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      v3 = "Invalid";
      goto LABEL_24;
    }

    if (a1 == 1)
    {
      v3 = "Initial";
      goto LABEL_24;
    }

    return [v2 initWithFormat:@"Unknown(%zu)", a1];
  }

  if (a1 == 2)
  {
    v3 = "Activating";
  }

  else if (a1 == 3)
  {
    v3 = "Activated";
  }

  else
  {
    v3 = "StartingDiscovery";
  }

LABEL_24:

  return [v2 initWithUTF8String:v3];
}

uint64_t nrMaxTLVLengthForPacket(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v6 = v4;
      v7 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (!v7)
      {
        goto LABEL_13;
      }
    }

    v8 = nrCopyLogObj_2201();
    _NRLogWithArgs(v8, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (packetBuffer) != ((void*)0)", v9, v10, v11, v12, v13, "");

LABEL_13:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v22 = *__error();
    v23 = _os_log_pack_fill();
    *v23 = 136446210;
    *(v23 + 4) = "nrMaxTLVLengthForPacket";
    v24 = nrCopyLogObj_2201();
    _NRLogAbortWithPack(v24);
  }

  if (!a2)
  {
    v5 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v14 = v5;
      v15 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

      if (!v15)
      {
        goto LABEL_13;
      }
    }

    v16 = nrCopyLogObj_2201();
    _NRLogWithArgs(v16, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: packetLength > 0", v17, v18, v19, v20, v21, "");

    goto LABEL_13;
  }

  v2 = *MEMORY[0x277D85DE8];
  return (a2 + 5);
}

uint64_t NRBluetoothPacketParserLinkToNexusLoopFastPath(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, char a6)
{
  v892 = *MEMORY[0x277D85DE8];
  if (*(a1 + 13) == 4)
  {
    v6 = 0;
    goto LABEL_454;
  }

  v10 = a1;
  v867 = a3;
  v857 = a5;
  dispatch_assert_queue_V2(*(a1 + 64));
  v868 = *a2;
  v11 = *(a2 + 43);
  if ((v11 & 4) == 0 && (a6 & 1) == 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = 4;
  }

  *(a2 + 43) = v12 | v11 & 0xFB;
  if ((v11 & 4) == 0 && (a6 & 1) == 0)
  {
    v13 = *(v10 + 24);
  }

  else
  {
    v13 = 1;
  }

  v856 = v13;
  v14 = *(a2 + 42) - 1;
  if (v14 > 2)
  {
    v27 = 0;
  }

  else
  {
    v15 = (*(a2 + 42) - 1);
    v16 = off_286D23748[v15];
    v17 = off_286D23760[v15];
    v18 = *(v10 - 8 * v15 + 232);
    v19 = v10 - 16 * v14;
    v865 = *(v19 + 288);
    v20 = *(v19 + 352);
    v27 = v20;
    if (v18)
    {
      v850 = v17;
      v863 = v20;
      v851 = (v10 - v15 + 21);
      v852 = v19;
      goto LABEL_14;
    }
  }

  v865 = *(v10 + 288);
  v28 = *(v10 + 352);

  v850 = NRBluetoothPacketParserSuspendNexusBEOutputSource;
  v851 = (v10 + 21);
  v16 = NRBluetoothPacketParserResumeNexusBEOutputSource;
  v863 = v28;
  v852 = v10;
LABEL_14:
  v29 = v868;
  if (gNRPacketLoggingEnabled == 1)
  {
    v464 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v466 = v464;
      v467 = os_log_type_enabled(v464, OS_LOG_TYPE_INFO);

      v29 = v868;
      if (!v467)
      {
        goto LABEL_15;
      }
    }

    v468 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    _NRLogWithArgs(v468, 1, "%s%.30s:%-4d start LtN fast path outer loop", v469, v470, v471, v472, v473, "");

    v29 = v868;
  }

LABEL_15:
  v853 = v16;
  v30 = 0;
  next_slot = 0;
  v855 = 0;
  v860 = 0;
  v861 = &v876 + 8;
  v862 = 0;
  v6 = 1;
  v866 = v10;
  v869 = a4;
  while (1)
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v165 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      if (sNRCopyLogToStdErr == 1)
      {

LABEL_292:
        v171 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
        _NRLogWithArgs(v171, 1, "%s%.30s:%-4d start LtN fast path inner loop", v172, v173, v174, v175, v176, "");

        v29 = v868;
        goto LABEL_17;
      }

      v169 = v165;
      v170 = os_log_type_enabled(v165, OS_LOG_TYPE_INFO);

      v29 = v868;
      if (v170)
      {
        goto LABEL_292;
      }
    }

LABEL_17:
    if (a4 == 0 || (v6 & 1) == 0 || v30 >= a4)
    {
      if (v30 < a4)
      {
        a4 = v30;
        goto LABEL_425;
      }

      if (v30 != a4)
      {
        [(NRBluetoothPacketParser *)v10 handleInternalError:v21, v22, v23, v24, v25, v26, v30];
        goto LABEL_438;
      }

      if (gNRPacketLoggingEnabled != 1)
      {
        goto LABEL_444;
      }

      v709 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      v710 = v709;
      if (sNRCopyLogToStdErr == 1)
      {

        v10 = v866;
        a4 = v869;
        goto LABEL_607;
      }

      v731 = os_log_type_enabled(v709, OS_LOG_TYPE_INFO);

      v10 = v866;
      v29 = v868;
      a4 = v869;
      if (v731)
      {
LABEL_607:
        v732 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
        _NRLogWithArgs(v732, 1, "%s%.30s:%-4d read all of len=%zu alreadyRead=%zu nexusOutputAvailable=%d", v733, v734, v735, v736, v737, "");

        v29 = v868;
      }

LABEL_444:
      v850(v10);
      goto LABEL_425;
    }

    if (v30 && (gNRPacketLoggingEnabled & 1) != 0)
    {
      v177 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v199 = v177;
        v200 = os_log_type_enabled(v177, OS_LOG_TYPE_INFO);

        v29 = v868;
        if (!v200)
        {
          goto LABEL_21;
        }
      }

      v201 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      _NRLogWithArgs(v201, 1, "%s%.30s:%-4d reusing existing len=%zu alreadyRead=%zu", v202, v203, v204, v205, v206, "");

      v29 = v868;
    }

LABEL_21:
    if (gNRPacketLoggingEnabled != 1)
    {
      goto LABEL_22;
    }

    v166 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v178 = v166;
      v179 = os_log_type_enabled(v166, OS_LOG_TYPE_INFO);

      v29 = v868;
      if (!v179)
      {
        goto LABEL_22;
      }
    }

    v180 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    v818 = *(a2 + 28);
    v835 = *(a2 + 24);
    _NRLogWithArgs(v180, 1, "%s%.30s:%-4d Reading from buf=%p len=%zu alreadyRead=%zu handled=%u filledIn=%u", v181, v182, v183, v184, v185, "");

    v29 = v868;
LABEL_22:
    LODWORD(v31) = *(a2 + 24);
    v32 = *(a2 + 28);
    if (v31 <= v32)
    {
      break;
    }

    v33 = v29[v32];
    if (v29[v32])
    {
LABEL_42:
      v34 = v867;
LABEL_43:
      v53 = v32 + 2;
      if (v31 > v32 + 2)
      {
        v54 = bswap32(*&v29[v32 + 1]);
        v55 = BYTE2(v54);
        v56 = HIBYTE(v54);
        if (gNRPacketLoggingEnabled != 1)
        {
          goto LABEL_45;
        }

        v61 = BYTE2(v54);
        LODWORD(v854) = HIBYTE(v54);
        v188 = _NRCopyLogObjectForNRUUID(*(v866 + 48));
        if (sNRCopyLogToStdErr == 1)
        {

LABEL_318:
          v10 = v866;
          v226 = _NRCopyLogObjectForNRUUID(*(v866 + 48));
          StringFromNRTLVType = createStringFromNRTLVType(v33);
          v801 = *(a2 + 28);
          v820 = *(a2 + 24);
          v57 = 1;
          _NRLogWithArgs(v226, 1, "%s%.30s:%-4d Looking into incoming TLV o1 %@ len=%u handled=%u filledIn=%u", v228, v229, v230, v231, v232, "");
          goto LABEL_377;
        }

        v57 = 1;
        v224 = v188;
        v225 = os_log_type_enabled(v188, OS_LOG_TYPE_INFO);

        if (v225)
        {
          goto LABEL_318;
        }

LABEL_373:
        v10 = v866;
        goto LABEL_378;
      }

      v58 = v32 + 1;
      if (v31 == v53)
      {
        v56 = v29[v58];
        if (a4 > v30)
        {
          v55 = *(v34 + v30);
          if (gNRPacketLoggingEnabled != 1)
          {
            v57 = 1;
            goto LABEL_68;
          }

          v61 = *(v34 + v30);
          LODWORD(v854) = v29[v58];
          v259 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v57 = 1;
            v339 = v259;
            v340 = os_log_type_enabled(v259, OS_LOG_TYPE_INFO);

            if (!v340)
            {
              goto LABEL_373;
            }
          }

          v10 = v866;
          v226 = _NRCopyLogObjectForNRUUID(*(v866 + 48));
          StringFromNRTLVType = createStringFromNRTLVType(v33);
          v794 = *(a2 + 24);
          v788 = *(a2 + 28);
          v57 = 1;
          _NRLogWithArgs(v226, 1, "%s%.30s:%-4d Looking into incoming TLV o2 %@ len=%u handled=%u filledIn=%u slotLen=%zu alreadyRead=%zu", v341, v342, v343, v344, v345, "");
          goto LABEL_377;
        }

        if (gNRPacketLoggingEnabled != 1)
        {
          goto LABEL_67;
        }

        LODWORD(v854) = v29[v58];
        v64 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
        if (sNRCopyLogToStdErr == 1)
        {

LABEL_370:
          v10 = v866;
          v226 = _NRCopyLogObjectForNRUUID(*(v866 + 48));
          StringFromNRTLVType = createStringFromNRTLVType(v33);
          _NRLogWithArgs(v226, 1, "%s%.30s:%-4d Looking into incoming TLV o3 %@", v334, v335, v336, v337, v338, "");
          goto LABEL_376;
        }

        v333 = v64;
        v57 = os_log_type_enabled(v64, OS_LOG_TYPE_INFO);

        if (v57)
        {
          goto LABEL_370;
        }

        v55 = 0;
        v10 = v866;
        v34 = v867;
        v29 = v868;
        v56 = v854;
      }

      else
      {
        if (v31 == v58)
        {
          v59 = v30;
        }

        else
        {
          v59 = v30 + 1;
        }

        if (v59 + 2 < a4)
        {
          v60 = bswap32(*(v34 + v59));
          v55 = BYTE2(v60);
          v56 = HIBYTE(v60);
          if (gNRPacketLoggingEnabled != 1)
          {
LABEL_45:
            v57 = 1;
            v10 = v866;
            goto LABEL_68;
          }

          v61 = BYTE2(v60);
          LODWORD(v854) = HIBYTE(v60);
          v62 = _NRCopyLogObjectForNRUUID(*(v866 + 48));
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v57 = 1;
            v326 = v62;
            v327 = os_log_type_enabled(v62, OS_LOG_TYPE_INFO);

            if (!v327)
            {
              goto LABEL_373;
            }
          }

          v10 = v866;
          v226 = _NRCopyLogObjectForNRUUID(*(v866 + 48));
          StringFromNRTLVType = createStringFromNRTLVType(v33);
          v822 = *(a2 + 24);
          v805 = *(a2 + 28);
          v57 = 1;
          _NRLogWithArgs(v226, 1, "%s%.30s:%-4d Looking into incoming TLV o4 %@ len=%u handled=%u filledIn=%u slotLen=%zu", v328, v329, v330, v331, v332, "");
          goto LABEL_377;
        }

        if (gNRPacketLoggingEnabled != 1)
        {
          v56 = 0;
LABEL_67:
          v55 = 0;
          v57 = 0;
          goto LABEL_68;
        }

        v260 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
        if (sNRCopyLogToStdErr == 1)
        {

LABEL_375:
          v10 = v866;
          v226 = _NRCopyLogObjectForNRUUID(*(v866 + 48));
          StringFromNRTLVType = createStringFromNRTLVType(v33);
          _NRLogWithArgs(v226, 1, "%s%.30s:%-4d Looking into incoming TLV o5 %@", v347, v348, v349, v350, v351, "");
          LODWORD(v854) = 0;
LABEL_376:
          v61 = 0;
          v57 = 0;
LABEL_377:

LABEL_378:
          v34 = v867;
          v29 = v868;
          v56 = v854;
          v55 = v61;
          goto LABEL_68;
        }

        v346 = v260;
        v57 = os_log_type_enabled(v260, OS_LOG_TYPE_INFO);

        if (v57)
        {
          goto LABEL_375;
        }

        v56 = 0;
        v55 = 0;
        v10 = v866;
        v34 = v867;
        v29 = v868;
      }

LABEL_68:
      if (gNRPacketLoggingEnabled != 1)
      {
        goto LABEL_69;
      }

      v167 = v55;
      LODWORD(v854) = v56;
      v168 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v189 = v168;
        v190 = os_log_type_enabled(v168, OS_LOG_TYPE_INFO);

        v34 = v867;
        v29 = v868;
        v56 = v854;
        v55 = v167;
        if (!v190)
        {
          goto LABEL_69;
        }
      }

      v191 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      v192 = createStringFromNRTLVType(v33);
      _NRLogWithArgs(v191, 1, "%s%.30s:%-4d Looking into incoming TLV %@ len=%u%s", v193, v194, v195, v196, v197, "");

      v55 = v167;
      v56 = v854;
      v34 = v867;
      v29 = v868;
LABEL_69:
      v890 = 0u;
      v891 = 0u;
      v888 = 0u;
      v889 = 0u;
      v886 = 0u;
      v887 = 0u;
      v884 = 0u;
      v885 = 0u;
      v882 = 0u;
      v883 = 0u;
      v880 = 0u;
      v881 = 0u;
      v878 = 0u;
      v879 = 0u;
      v876 = 0u;
      v877 = 0u;
      v65 = *(a2 + 24);
      v66 = *(a2 + 28);
      if (v65 <= v66)
      {
        v68 = 0;
        v67 = 0;
        goto LABEL_77;
      }

      *&v876 = &v29[v66];
      if ((v55 | (v56 << 8)) + 5 >= (v65 - v66))
      {
        v67 = v65 - v66;
      }

      else
      {
        v67 = (v55 | (v56 << 8)) + 5;
      }

      if (!v67)
      {
        [(NRBluetoothPacketParser *)v10 handleInternalError:v21, v22, v23, v24, v25, v26, v55 | (v56 << 8)];
LABEL_593:
        v425 = v863;
        v6 = 0;
        goto LABEL_453;
      }

      DWORD2(v876) = v67;
      if (gNRPacketLoggingEnabled != 1)
      {
        v68 = 1;
        goto LABEL_77;
      }

      LODWORD(v849) = v55;
      LODWORD(v854) = v56;
      v858 = v66;
      v848 = v65;
      v198 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      if (sNRCopyLogToStdErr == 1)
      {

LABEL_320:
        v234 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
        v792 = *(a2 + 24);
        v787 = *(a2 + 28);
        v68 = 1;
        v235 = v234;
        _NRLogWithArgs(v234, 1, "%s%.30s:%-4d Placing linkReadBuffer handled=%u filledIn=%u in ioVec[%u] buf=%p len=%u", v236, v237, v238, v239, v240, "");

        goto LABEL_321;
      }

      v68 = 1;
      v233 = v198;
      LODWORD(v859) = os_log_type_enabled(v198, OS_LOG_TYPE_INFO);

      if (v859)
      {
        goto LABEL_320;
      }

LABEL_321:
      v34 = v867;
      v65 = v848;
      v66 = v858;
      v56 = v854;
      v55 = v849;
LABEL_77:
      v69 = v869 - v30;
      if (v869 <= v30)
      {
        if (!v57)
        {
          LODWORD(v71) = v68;
          v29 = v868;
          goto LABEL_115;
        }

        goto LABEL_88;
      }

      if (v57 && (v55 | (v56 << 8)) + 5 <= v67)
      {
LABEL_88:
        v74 = 0;
        v71 = v68;
LABEL_109:
        v29 = v868;
LABEL_110:
        v83 = v33 - 100;
        if ((v33 - 100) >= 6 && (v33 - 2) >= 4)
        {
          if (v33 != 1)
          {
            v85 = v55 | (v56 << 8);
            goto LABEL_114;
          }

          v84 = 255;
        }

        else
        {
          v84 = 2000;
        }

        v85 = v55 | (v56 << 8);
        if (v85 > v84)
        {
          v849 = v55 | (v56 << 8);
          v428 = v71;
          if (*(a2 + 42) != 3)
          {
            v431 = createStringFromNRTLVType(v33);
            IOVecStringWithContents = createIOVecStringWithContents(&v876, v428);
            [(NRBluetoothPacketParser *)v10 handleInternalError:v432, v433, v434, v435, v436, v437, v849];

            goto LABEL_593;
          }

          v429 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v446 = v429;
            v447 = os_log_type_enabled(v429, OS_LOG_TYPE_INFO);

            if (!v447)
            {
              goto LABEL_467;
            }
          }

          v440 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          v448 = createStringFromNRTLVType(v33);
          v826 = createIOVecStringWithContents(&v876, v428);
          _NRLogWithArgs(v440, 1, "%s%.30s:%-4d Received invalid TLV len %u for %@ (max=%u) %@", v449, v450, v451, v452, v453, "");

          goto LABEL_466;
        }

LABEL_114:
        v22 = v85;
        if (v85 + 5 > v67)
        {
          goto LABEL_115;
        }

        v849 = v85;
        v854 = v85;
        LODWORD(v859) = v71;
        v858 = v66;
        if (gNRPacketLoggingEnabled == 1)
        {
          LODWORD(v847) = v33 - 100;
          v848 = v65;
          v223 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v250 = v223;
            LODWORD(v846) = os_log_type_enabled(v223, OS_LOG_TYPE_INFO);

            v71 = v859;
            v65 = v848;
            LODWORD(v85) = v849;
            LODWORD(v66) = v858;
            v22 = v854;
            v83 = v847;
            if (!v846)
            {
              goto LABEL_130;
            }
          }

          v846 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          v251 = createStringFromNRTLVType(v33);
          IOVecString = createIOVecString(&v876, v859);
          _NRLogWithArgs(v846, 1, "%s%.30s:%-4d Ready to handle %@ len %u in %@ ioVecContentLen=%u alreadyRead=%zu", v252, v253, v254, v255, v256, "");

          v83 = v847;
          v22 = v854;
          v65 = v848;
          LODWORD(v85) = v849;
          LODWORD(v66) = v858;
          v71 = v859;
        }

LABEL_130:
        if (v74)
        {
          if (!gNRPacketLoggingEnabled)
          {
            goto LABEL_135;
          }

          LODWORD(v847) = v83;
          v848 = v65;
          v100 = v71;
          v101 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v282 = v101;
            LODWORD(v846) = os_log_type_enabled(v101, OS_LOG_TYPE_INFO);

            v71 = v100;
            v65 = v848;
            LODWORD(v85) = v849;
            LODWORD(v66) = v858;
            v22 = v854;
            v83 = v847;
            if (!v846)
            {
              goto LABEL_135;
            }
          }

          v283 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          _NRLogWithArgs(v283, 1, "%s%.30s:%-4d Marking as completed", v284, v285, v286, v287, v288, "");
        }

        else
        {
          if (!gNRPacketLoggingEnabled)
          {
            goto LABEL_135;
          }

          LODWORD(v847) = v83;
          v848 = v65;
          v100 = v71;
          v249 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v289 = v249;
            LODWORD(v846) = os_log_type_enabled(v249, OS_LOG_TYPE_INFO);

            v71 = v100;
            v65 = v848;
            LODWORD(v85) = v849;
            LODWORD(v66) = v858;
            v22 = v854;
            v83 = v847;
            if (!v846)
            {
              goto LABEL_135;
            }
          }

          v283 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          _NRLogWithArgs(v283, 1, "%s%.30s:%-4d Not marking as completed (all in linkReadBuffer)", v290, v291, v292, v293, v294, "");
        }

        v71 = v100;
        v65 = v848;
        LODWORD(v85) = v849;
        LODWORD(v66) = v858;
        v22 = v854;
        v83 = v847;
LABEL_135:
        if ((*(v10 + 9) & 1) == 0)
        {
          if (v33 >= 100)
          {
            LOWORD(v870) = 0;
            if (!v71)
            {
              goto LABEL_490;
            }

            v102 = (v85 + 3);
            v103 = v102 - DWORD2(v876);
            if (v102 > DWORD2(v876))
            {
              v104 = 0;
              goto LABEL_163;
            }

            if (v102 >= DWORD2(v876))
            {
              v104 = 0;
              v103 = 0;
LABEL_163:
              if (v71 != 1 && (!v103 || DWORD2(v877) > v103))
              {
                if (DWORD2(v877) - v103 >= 2 - v104)
                {
                  v112 = (2 - v104);
                }

                else
                {
                  v112 = DWORD2(v877) - v103;
                }

                v848 = v65;
                LODWORD(v847) = v83;
                IOVecString = v104;
                v846 = v102;
                memcpy(&v870 + v104, (v877 + v103), v112);
                LODWORD(v102) = v846;
                v83 = v847;
                v22 = v854;
                LODWORD(v66) = v858;
                LODWORD(v65) = v848;
                v71 = v859;
                LODWORD(v104) = v112 + IOVecString;
              }
            }

            else
            {
              LODWORD(v847) = v83;
              v848 = v65;
              v110 = DWORD2(v876) - v102;
              if ((DWORD2(v876) - v102) >= 2)
              {
                v111 = 2;
              }

              else
              {
                v111 = v110;
              }

              IOVecString = v111;
              v846 = (v85 + 3);
              memcpy(&v870, (v876 + v102), v111);
              if (v110 <= 1)
              {
                v103 = 0;
                v71 = v859;
                v65 = v848;
                LODWORD(v66) = v858;
                v22 = v854;
                v83 = v847;
                v104 = IOVecString;
                v102 = v846;
                goto LABEL_163;
              }

              v71 = v859;
              LODWORD(v65) = v848;
              LODWORD(v66) = v858;
              v22 = v854;
              v83 = v847;
              LODWORD(v104) = IOVecString;
              LODWORD(v102) = v846;
            }

            if (v104 != 2)
            {
              v507 = v104;
              v508 = v102;
              v509 = v71;
              v510 = nrCopyLogObj_560();
              v511 = v510;
              if (sNRCopyLogToStdErr == 1)
              {

                goto LABEL_528;
              }

              v557 = os_log_type_enabled(v510, OS_LOG_TYPE_ERROR);

              if (v557)
              {
LABEL_528:
                v558 = nrCopyLogObj_560();
                v828 = createIOVecString(&v876, v509);
                _NRLogWithArgs(v558, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", v559, v560, v561, v562, v563, "");
              }

              v564 = _os_log_pack_size();
              MEMORY[0x28223BE20](v564, v565);
              v566 = *__error();
              v567 = _os_log_pack_fill();
              v568 = createIOVecString(&v876, v509);
              __os_log_helper_1_2_5_8_34_4_0_4_0_4_0_8_64(v567, "nrWriteIOVecToBuffer", v507, 2, v508, v568);
              goto LABEL_575;
            }

            v113 = bswap32(v22);
            if (v870 != (((v33 >> 4) ^ BYTE2(v113)) | (((16 * v33) ^ HIBYTE(v113)) << 8)))
            {
              goto LABEL_581;
            }

            goto LABEL_196;
          }

          LODWORD(v847) = v83;
          v848 = v65;
          if (!v71)
          {
            v505 = nrCopyLogObj_560();
            v506 = v505;
            if (sNRCopyLogToStdErr == 1)
            {

              goto LABEL_525;
            }

            v547 = os_log_type_enabled(v505, OS_LOG_TYPE_ERROR);

            if (v547)
            {
LABEL_525:
              v548 = nrCopyLogObj_560();
              _NRLogWithArgs(v548, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 0", v549, v550, v551, v552, v553, "");
            }

            v554 = _os_log_pack_size();
            MEMORY[0x28223BE20](v554, v555);
            v556 = *__error();
            v530 = _os_log_pack_fill();
            *v530 = 136446210;
            v531 = "nrChecksumIOVecInner";
            goto LABEL_552;
          }

          v846 = &v844;
          v105 = v85 + 3;
          v106 = DWORD2(v876);
          if (DWORD2(v876) >= (v85 + 3))
          {
            v107 = v105;
          }

          else
          {
            v107 = DWORD2(v876);
          }

          if (!DWORD2(v876))
          {
LABEL_496:
            v502 = nrCopyLogObj_560();
            v503 = v502;
            v504 = "nrChecksumUpdate";
            if (sNRCopyLogToStdErr == 1)
            {

              goto LABEL_522;
            }

            v540 = os_log_type_enabled(v502, OS_LOG_TYPE_ERROR);

            if (v540)
            {
LABEL_522:
              v541 = nrCopyLogObj_560();
              _NRLogWithArgs(v541, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen > 0", v542, v543, v544, v545, v546, "");
            }

            goto LABEL_532;
          }

          v21 = MEMORY[0x25F874350](v876, v107, 0);
          if (v106 >= v105 && v107 < DWORD2(v876))
          {
            v108 = 0;
            LODWORD(v109) = v107;
            v29 = v868;
            v22 = v854;
            if (v107 != v105)
            {
              goto LABEL_502;
            }

LABEL_186:
            v114 = ~v21;
            v115 = (~v21 >> 8);
            v116 = &v876 + v108;
            v117 = *(v116 + 2);
            if (v117 >= v109 + 2)
            {
              v118 = (*v116 + v109);
              v71 = v859;
              LODWORD(v65) = v848;
              LODWORD(v66) = v858;
              v83 = v847;
              if (*v118 != v114 || v118[1] != v115)
              {
                v867 = ~v21;
                v580 = nrCopyLogObj_560();
                if (sNRCopyLogToStdErr == 1)
                {

                  goto LABEL_565;
                }

                v646 = v580;
                LODWORD(next_slot) = os_log_type_enabled(v580, OS_LOG_TYPE_ERROR);

                if (next_slot)
                {
LABEL_565:
                  v647 = nrCopyLogObj_560();
                  v653 = (*v116 + v109);
                  v795 = v653[1];
                  v654 = "%s%.30s:%-4d checksum failed same IOVec received 0x%02x%02x != computed 0x%02x%02x";
                  v789 = *v653;
                  goto LABEL_579;
                }

                goto LABEL_580;
              }
            }

            else
            {
              LODWORD(v65) = v848;
              LODWORD(v66) = v858;
              v83 = v847;
              if (v117 < v109 + 1)
              {
                v581 = v108;
                v582 = nrCopyLogObj_560();
                v583 = v582;
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v655 = os_log_type_enabled(v582, OS_LOG_TYPE_ERROR);

                  if (!v655)
                  {
                    goto LABEL_574;
                  }
                }

                v656 = nrCopyLogObj_560();
                v809 = createIOVecString(&v876, v859);
                _NRLogWithArgs(v656, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecs[iovecIndex].len >= bytesToCheckThisIOVec + 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", v657, v658, v659, v660, v661, "");

                goto LABEL_574;
              }

              v71 = v859;
              if (v108 + 1 >= v859)
              {
                v581 = v108;
                v584 = nrCopyLogObj_560();
                v585 = v584;
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v662 = os_log_type_enabled(v584, OS_LOG_TYPE_ERROR);

                  if (!v662)
                  {
                    goto LABEL_574;
                  }
                }

                v663 = nrCopyLogObj_560();
                v810 = createIOVecString(&v876, v859);
                _NRLogWithArgs(v663, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecIndex + 1 < numIOVecs; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", v664, v665, v666, v667, v668, "");

LABEL_574:
                v676 = _os_log_pack_size();
                MEMORY[0x28223BE20](v676, v677);
                v678 = *__error();
                v679 = _os_log_pack_fill();
                v568 = createIOVecString(&v876, v859);
                __os_log_helper_1_2_4_8_34_8_64_4_0_4_0(v679, "nrChecksumIOVecInner", v568, v581, v109);
LABEL_575:

LABEL_576:
                v680 = nrCopyLogObj_560();
                _NRLogAbortWithPack(v680);
              }

              if (!DWORD2(v877))
              {
                v581 = v108;
                v586 = nrCopyLogObj_560();
                v587 = v586;
                if (sNRCopyLogToStdErr == 1)
                {

                  goto LABEL_573;
                }

                v669 = os_log_type_enabled(v586, OS_LOG_TYPE_ERROR);

                if (v669)
                {
LABEL_573:
                  v670 = nrCopyLogObj_560();
                  v811 = createIOVecString(&v876, v859);
                  _NRLogWithArgs(v670, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecs[iovecIndex + 1].len >= 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", v671, v672, v673, v674, v675, "");
                }

                goto LABEL_574;
              }

              if (*(*v116 + v109) != v114 || *v877 != v115)
              {
                v867 = ~v21;
                v588 = nrCopyLogObj_560();
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v681 = v588;
                  LODWORD(next_slot) = os_log_type_enabled(v588, OS_LOG_TYPE_ERROR);

                  if (!next_slot)
                  {
                    goto LABEL_580;
                  }
                }

                v647 = nrCopyLogObj_560();
                v796 = *v877;
                v654 = "%s%.30s:%-4d checksum failed disjoint IOVec received 0x%02x%02x != computed 0x%02x%02x";
                v790 = *(*v116 + v109);
LABEL_579:
                v682 = v647;
                _NRLogWithArgs(v647, 16, v654, v648, v649, v650, v651, v652, "");

LABEL_580:
                v10 = v866;
                v29 = v868;
                v71 = v859;
LABEL_581:
                v683 = *(a2 + 42);
                if (*(a2 + 42) <= 1u)
                {
                  if (!*(a2 + 42))
                  {
                    v684 = v71;
                    v685 = @"Invalid";
                    goto LABEL_592;
                  }

                  if (v683 == 1)
                  {
                    v684 = v71;
                    v685 = @"Medium";
LABEL_592:
                    v687 = createStringFromNRTLVType(v33);
                    v688 = *(a2 + 24);
                    v797 = *(a2 + 28);
                    v812 = createIOVecString(&v876, v684);
                    [(NRBluetoothPacketParser *)v10 handleInternalError:v689, v690, v691, v692, v693, v694, v685];

                    goto LABEL_593;
                  }

LABEL_589:
                  v684 = v71;
                  v685 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%d)", v683];
                  goto LABEL_592;
                }

                if (v683 == 2)
                {
                  v684 = v71;
                  v685 = @"High";
                  goto LABEL_592;
                }

                if (v683 != 3)
                {
                  goto LABEL_589;
                }

                v686 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
                if (sNRCopyLogToStdErr == 1)
                {

                  goto LABEL_595;
                }

                v695 = v686;
                v696 = os_log_type_enabled(v686, OS_LOG_TYPE_INFO);

                if (v696)
                {
LABEL_595:
                  v440 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
                  v798 = *(a2 + 24);
                  v813 = *(a2 + 28);
                  _NRLogWithArgs(v440, 1, "%s%.30s:%-4d Invalid checksum detected in Isoch loop len %u filledIn=%u handled=%u ioVecContentLen=%u alreadyRead=%zu ", v697, v698, v699, v700, v701, "");
LABEL_466:
                }

LABEL_467:
                v6 = 1;
                a4 = v869;
                goto LABEL_425;
              }
            }

            v10 = v866;
            goto LABEL_196;
          }

          v29 = v868;
          v22 = v854;
          if (v859 == 1)
          {
            LODWORD(v109) = v107;
            goto LABEL_160;
          }

          if (v106 >= v105)
          {
            LODWORD(v109) = 0;
          }

          else
          {
            if (DWORD2(v877) >= v105 - v107)
            {
              v109 = v105 - v107;
            }

            else
            {
              v109 = DWORD2(v877);
            }

            if (!v109)
            {
              goto LABEL_496;
            }

            IOVecString = &v844;
            if (v107)
            {
              v412 = v877;
              LOWORD(v870) = *v877 << 8;
              v21 = MEMORY[0x25F874350](&v870, 2, v21, v854);
              if (v109 != 1)
              {
                v21 = MEMORY[0x25F874350](v412 + 1, (v109 - 1), v21);
              }

              v29 = v868;
            }

            else
            {
              v21 = MEMORY[0x25F874350](v877, v109, v21, v854);
            }

            LODWORD(v107) = v109 + v107;
            if (v107 < v105)
            {
              v22 = v854;
              goto LABEL_160;
            }

            v22 = v854;
            if (v109 >= DWORD2(v877))
            {
LABEL_160:
              v108 = v859;
              if (v107 != v105)
              {
                goto LABEL_502;
              }

              goto LABEL_186;
            }
          }

          v108 = 1;
          if (v107 != v105)
          {
LABEL_502:
            v512 = nrCopyLogObj_560();
            v513 = v512;
            v504 = "nrChecksumIOVecInner";
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v569 = os_log_type_enabled(v512, OS_LOG_TYPE_ERROR);

              if (!v569)
              {
                goto LABEL_532;
              }
            }

            v570 = nrCopyLogObj_560();
            _NRLogWithArgs(v570, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: computedBytes == writtenLength", v571, v572, v573, v574, v575, "");

            goto LABEL_532;
          }

          goto LABEL_186;
        }

LABEL_196:
        v872 = 0u;
        v873 = 0u;
        v870 = 0u;
        v871 = 0u;
        a4 = v869;
        if (!v865)
        {
          goto LABEL_200;
        }

        v119 = v83;
        v120 = v65;
        next_slot = os_channel_get_next_slot();
        if (next_slot)
        {
          if (gNRPacketLoggingEnabled == 1)
          {
            v261 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v352 = v261;
              v353 = os_log_type_enabled(v261, OS_LOG_TYPE_INFO);

              if (!v353)
              {
                v10 = v866;
                goto LABEL_403;
              }
            }

            v10 = v866;
            v354 = _NRCopyLogObjectForNRUUID(*(v866 + 48));
            _NRLogWithArgs(v354, 1, "%s%.30s:%-4d Using new nexusOutputSlot=%p", v355, v356, v357, v358, v359, "");

LABEL_403:
            v29 = v868;
            a4 = v869;
          }

          v71 = v859;
          LODWORD(v65) = v120;
          LODWORD(v66) = v858;
          v22 = v854;
          v83 = v119;
LABEL_200:
          if (v65 <= v66)
          {
            goto LABEL_203;
          }

          if (gNRPacketLoggingEnabled == 1)
          {
            LODWORD(v847) = v83;
            v262 = v71;
            v263 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            if (sNRCopyLogToStdErr == 1)
            {

LABEL_382:
              v361 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
              v823 = *(a2 + 28);
              v836 = *(a2 + 24);
              _NRLogWithArgs(v361, 1, "%s%.30s:%-4d Advancing linkReadBuffer handled by %u handled=%u filledIn=%u", v362, v363, v364, v365, v366, "");

              v83 = v847;
              v22 = v854;
              v71 = v262;
              goto LABEL_202;
            }

            v360 = v263;
            LODWORD(v858) = os_log_type_enabled(v263, OS_LOG_TYPE_INFO);

            v71 = v262;
            v22 = v854;
            v83 = v847;
            if (v858)
            {
              goto LABEL_382;
            }
          }

LABEL_202:
          *(a2 + 28) += DWORD2(v876);
LABEL_203:
          if (v33 <= 99)
          {
            if ((v33 - 2) < 2)
            {
              goto LABEL_214;
            }

            if (v33 == 1)
            {
              if (gNRPacketLoggingEnabled == 1)
              {
                v152 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
                v153 = v152;
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v404 = os_log_type_enabled(v152, OS_LOG_TYPE_INFO);

                  if (!v404)
                  {
                    goto LABEL_413;
                  }
                }

                v10 = v866;
                v391 = _NRCopyLogObjectForNRUUID(*(v866 + 48));
                _NRLogWithArgs(v391, 1, "%s%.30s:%-4d Handling PadN %u", v405, v406, v407, v408, v409, "");
                goto LABEL_409;
              }

              goto LABEL_282;
            }

            if (v33 != 4)
            {
              goto LABEL_282;
            }

            if (!v22)
            {
              v158 = objc_alloc_init(MEMORY[0x277CBEA90]);
              goto LABEL_273;
            }

            v121 = malloc_type_malloc(v22, 0x87367FC4uLL);
            if (v121)
            {
              v122 = v859;
              v123 = v849;
              if (v859)
              {
                v124 = v121;
                if (DWORD2(v876) > 2)
                {
                  v154 = DWORD2(v876) - 3;
                  if (DWORD2(v876) == 3)
                  {
                    v125 = 0;
                    v126 = 0;
                  }

                  else
                  {
                    if (v154 >= v849)
                    {
                      v155 = v849;
                    }

                    else
                    {
                      v155 = v154;
                    }

                    v125 = v155;
                    memcpy(v121, (v876 + 3), v155);
                    v123 = v849;
                    if (v154 >= v849)
                    {
LABEL_271:
                      if (v125 != v123)
                      {
                        v644 = nrCopyLogObj_560();
                        v645 = v644;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_604;
                        }

                        v717 = os_log_type_enabled(v644, OS_LOG_TYPE_ERROR);

                        if (v717)
                        {
LABEL_604:
                          v718 = nrCopyLogObj_560();
                          v719 = createIOVecString(&v876, v859);
                          _NRLogWithArgs(v718, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", v720, v721, v722, v723, v724, "");
                        }

                        v725 = _os_log_pack_size();
                        MEMORY[0x28223BE20](v725, v726);
                        v727 = *__error();
                        v728 = _os_log_pack_fill();
                        v729 = createIOVecString(&v876, v859);
                        __os_log_helper_1_2_5_8_34_4_0_4_0_4_0_8_64(v728, "nrWriteIOVecToBuffer", v125, v849, 3, v729);

                        v730 = nrCopyLogObj_560();
                        _NRLogAbortWithPack(v730);
                      }

                      v157 = objc_alloc(MEMORY[0x277CBEA90]);
                      v158 = [v157 initWithBytesNoCopy:v124 length:v854 freeWhenDone:1];
LABEL_273:
                      v159 = *(a2 + 42);
                      v160 = v158;
                      a4 = v869;
                      if (*(v10 + 13) == 4)
                      {
LABEL_278:

                        if (v856)
                        {
                          [(NRBluetoothPacketParser *)v10 handleIncomingWakePacket:0 spi:?];
                        }

                        *(v10 + 24) = 0;
                        *(a2 + 43) &= ~4u;

                        v856 = 0;
                        goto LABEL_281;
                      }

                      if (gNRPacketLoggingEnabled != 1)
                      {
LABEL_275:
                        v161 = objc_alloc_init(MEMORY[0x277CBEB38]);
                        v162 = v161;
                        v163 = &unk_286D2CF68;
                        if ((v159 - 1) <= 2)
                        {
                          v163 = qword_27996B010[(v159 - 1)];
                        }

                        [v161 setObject:v163 forKeyedSubscript:@"channel-id"];
                        [v162 setObject:v160 forKeyedSubscript:@"message-data"];
                        v164 = objc_alloc_init(MEMORY[0x277CBEB38]);
                        [v164 setObject:v162 forKeyedSubscript:@"message"];
                        [(NRBluetoothPacketParser *)v10 sendXPCDictionary:v164];

                        goto LABEL_278;
                      }

                      v410 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
                      v411 = v410;
                      if (sNRCopyLogToStdErr == 1)
                      {

                        v10 = v866;
                        a4 = v869;
                      }

                      else
                      {
                        v413 = os_log_type_enabled(v410, OS_LOG_TYPE_INFO);

                        v10 = v866;
                        a4 = v869;
                        if (!v413)
                        {
                          goto LABEL_275;
                        }
                      }

                      v414 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
                      [v160 length];
                      _NRLogWithArgs(v414, 1, "%s%.30s:%-4d handling uIKE packet of %llu bytes", v415, v416, v417, v418, v419, "");

                      goto LABEL_275;
                    }

                    v126 = 0;
                    v122 = v859;
                  }
                }

                else
                {
                  v125 = 0;
                  v126 = 3 - DWORD2(v876);
                }

                if (v122 != 1 && (!v126 || DWORD2(v877) > v126))
                {
                  if (DWORD2(v877) - v126 >= v123 - v125)
                  {
                    v156 = v123 - v125;
                  }

                  else
                  {
                    v156 = DWORD2(v877) - v126;
                  }

                  memcpy(&v124[v125], (v877 + v126), v156);
                  v123 = v849;
                  v125 += v156;
                }

                goto LABEL_271;
              }

LABEL_490:
              v484 = nrCopyLogObj_560();
              v485 = v484;
              if (sNRCopyLogToStdErr == 1)
              {
              }

              else
              {
                v520 = os_log_type_enabled(v484, OS_LOG_TYPE_ERROR);

                if (!v520)
                {
LABEL_512:
                  v527 = _os_log_pack_size();
                  MEMORY[0x28223BE20](v527, v528);
                  v529 = *__error();
                  v530 = _os_log_pack_fill();
                  *v530 = 136446210;
                  v531 = "nrWriteIOVecToBuffer";
LABEL_552:
                  *(v530 + 4) = v531;
                  goto LABEL_576;
                }
              }

              v521 = nrCopyLogObj_560();
              _NRLogWithArgs(v521, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 0", v522, v523, v524, v525, v526, "");

              goto LABEL_512;
            }

            v776 = nrCopyLogObj_560();
            v777 = v776;
            v504 = "createNSDataFromTLVIOVec";
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v778 = os_log_type_enabled(v776, OS_LOG_TYPE_ERROR);

              if (!v778)
              {
                goto LABEL_532;
              }
            }

            v779 = nrCopyLogObj_560();
            _NRLogWithArgs(v779, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", v780, v781, v782, v783, v784, "");

LABEL_532:
            v576 = _os_log_pack_size();
            MEMORY[0x28223BE20](v576, v577);
            v578 = *__error();
            v579 = _os_log_pack_fill();
            *v579 = 136446210;
            *(v579 + 4) = v504;
            goto LABEL_576;
          }

          if (v83 >= 6)
          {
            goto LABEL_282;
          }

LABEL_214:
          if (next_slot)
          {
            v127 = v871;
            v128 = WORD1(v870);
            if (*(v10 + 28))
            {
              *v871 = 503316480;
              v129 = *(v10 + 28);
            }

            else
            {
              v129 = 0;
            }

            v147 = nrTLVToPacket(&v876, v71, v33, v22, v127 + v129, (v128 - v129), (v10 + 704), (v10 + 688)) + v129;
            if (v147)
            {
              if (!gNRPacketLoggingEnabled)
              {
                goto LABEL_238;
              }

              v859 = v147;
              v316 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
              v317 = v316;
              if (sNRCopyLogToStdErr == 1)
              {

                v10 = v866;
                goto LABEL_394;
              }

              LODWORD(v862) = os_log_type_enabled(v316, OS_LOG_TYPE_INFO);

              v10 = v866;
              if (v862)
              {
LABEL_394:
                v862 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
                v383 = createStringFromNRTLVType(v33);
                PacketString = createPacketString(v127, v147);
                v384 = v862;
                _NRLogWithArgs(v862, 1, "%s%.30s:%-4d Reinjecting %@ packet len %u to nexusOutputSlot=%p buf=%p len=%u: %@, buflet: %d", v385, v386, v387, v388, v389, "");
              }

LABEL_238:
              v874 = 0;
              v875 = 0;
              if (v856)
              {
                LOBYTE(v874) = 1;
                WORD1(v870) = v147;
                packet = os_channel_slot_get_packet();
                a4 = v869;
                if (packet)
                {
                  os_packet_set_flow_uuid();
                }

                os_channel_set_slot_properties();
                if (isPacketValidIPv6(v127, v147) && isNextHeaderValidESP(v127, v147))
                {
                  v149 = bswap32(*(v127 + 44));
                }

                else
                {
                  v149 = 0;
                }

                if (isPacketValidIPv6(v127, v147) && isNextHeaderValidESP(v127, v147))
                {
                  v151 = bswap32(*(v127 + 40));
                }

                else
                {
                  v151 = 0;
                }

                [(NRBluetoothPacketParser *)v10 handleIncomingWakePacket:v149 spi:v151];
                v150 = next_slot;
              }

              else
              {
                WORD1(v870) = v147;
                v150 = next_slot;
                os_channel_slot_get_packet();
                os_packet_clear_flow_uuid();
                os_channel_set_slot_properties();
                a4 = v869;
              }

              v856 = 0;
              *(a2 + 43) &= ~4u;
              *(v10 + 24) = 0;
              ++*(v852 + 488);
              *v851 = 1;
              ++v860;
              v855 += v147;
              v862 = v150;
LABEL_281:
              v29 = v868;
              goto LABEL_282;
            }

            if (gNRPacketLoggingEnabled)
            {
              v367 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
              v368 = v367;
              if (sNRCopyLogToStdErr == 1)
              {

                goto LABEL_407;
              }

              v398 = os_log_type_enabled(v367, OS_LOG_TYPE_INFO);

              if (v398)
              {
LABEL_407:
                v10 = v866;
                v391 = _NRCopyLogObjectForNRUUID(*(v866 + 48));
                v392 = createStringFromNRTLVType(v33);
                _NRLogWithArgs(v391, 1, "%s%.30s:%-4d failed to reinject %@ tlvLen=%u slotLen=%u", v399, v400, v401, v402, v403, "");
LABEL_408:

LABEL_409:
                a4 = v869;
                goto LABEL_281;
              }

LABEL_413:
              v10 = v866;
              a4 = v869;
              goto LABEL_281;
            }

            a4 = v869;
          }

          else if (gNRPacketLoggingEnabled == 1)
          {
            v145 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            v146 = v145;
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v390 = os_log_type_enabled(v145, OS_LOG_TYPE_INFO);

              if (!v390)
              {
                goto LABEL_413;
              }
            }

            v10 = v866;
            v391 = _NRCopyLogObjectForNRUUID(*(v866 + 48));
            v392 = createStringFromNRTLVType(v33);
            _NRLogWithArgs(v391, 1, "%s%.30s:%-4d no curNexusOutputSlot, dropping %@ tlvLen=%u slotLen=%u", v393, v394, v395, v396, v397, "");
            goto LABEL_408;
          }

LABEL_282:
          if (gNRPacketLoggingEnabled == 1)
          {
            v241 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v6 = 1;
              v264 = v241;
              v265 = os_log_type_enabled(v241, OS_LOG_TYPE_INFO);

              if (!v265)
              {
                goto LABEL_392;
              }
            }

            v266 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            v6 = 1;
            _NRLogWithArgs(v266, 1, "%s%.30s:%-4d end of LtN inner loop alreadyRead=%zu splen=%zu", v267, v268, v269, v270, v271, "");
LABEL_391:

LABEL_392:
            v29 = v868;
          }

          else
          {
            v6 = 1;
          }
        }

        else
        {
          v853(v10);
          if (gNRPacketLoggingEnabled != 1)
          {
            goto LABEL_218;
          }

          v295 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          v296 = v295;
          if (sNRCopyLogToStdErr == 1)
          {

            v10 = v866;
          }

          else
          {
            v369 = os_log_type_enabled(v295, OS_LOG_TYPE_INFO);

            v10 = v866;
            v29 = v868;
            if (!v369)
            {
              goto LABEL_218;
            }
          }

          v370 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          v371 = createIOVecString(&v876, v859);
          v806 = *(a2 + 24);
          v824 = *(a2 + 28);
          _NRLogWithArgs(v370, 1, "%s%.30s:%-4d no nexusOutputSlot highestSlot=%p %@ filledIn=%u handled=%u", v372, v373, v374, v375, v376, "");

          v29 = v868;
LABEL_218:
          if (v859 > (v120 > v858))
          {
            v130 = v120 > v858;
            v131 = v859;
            v132 = &v861[16 * v130];
            do
            {
              if (gNRPacketLoggingEnabled != 1)
              {
                goto LABEL_221;
              }

              v136 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
              if (sNRCopyLogToStdErr == 1)
              {
              }

              else
              {
                v137 = v136;
                LODWORD(next_slot) = os_log_type_enabled(v136, OS_LOG_TYPE_INFO);

                v29 = v868;
                if (!next_slot)
                {
                  goto LABEL_221;
                }
              }

              v138 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
              v817 = *(a2 + 24);
              v834 = *(a2 + 28);
              v800 = *(v132 - 1);
              v786 = *v132;
              _NRLogWithArgs(v138, 1, "%s%.30s:%-4d no nexusOutputSlot - consolidating %u bytes from linkInputSlot ioVecs[%u].buf=%p to linkReadBuffer filledIn=%u handled=%u", v139, v140, v141, v142, v143, "");

              v29 = v868;
LABEL_221:
              v133 = *(a2 + 24);
              v134 = *v132;
              if ((v134 + v133) >= 0xFFFF)
              {
                if (gNRPacketLoggingEnabled != 1)
                {
                  goto LABEL_477;
                }

                v749 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
                v750 = v749;
                if (sNRCopyLogToStdErr == 1)
                {

                  v751 = v866;
                  goto LABEL_619;
                }

                v759 = os_log_type_enabled(v749, OS_LOG_TYPE_INFO);

                v751 = v866;
                if (v759)
                {
LABEL_619:
                  v760 = _NRCopyLogObjectForNRUUID(*(v751 + 48));
                  v761 = createIOVecString(&v876, v859);
                  v833 = *(a2 + 24);
                  v842 = *(a2 + 28);
                  _NRLogWithArgs(v760, 1, "%s%.30s:%-4d no nexusOutputSlot and linkReadBuffer is full %@ filledIn=%u handled=%u", v762, v763, v764, v765, v766, "");
                }

LABEL_477:
                v6 = 0;
                goto LABEL_452;
              }

              memcpy(&v29[v133], *(v132 - 1), v134);
              v135 = *v132;
              v132 += 16;
              *(a2 + 24) += v135;
              ++v130;
            }

            while (v131 != v130);
          }

          v144 = v867;
          if (v120 > v858 && v859 == 1)
          {
            a4 = v869;
            if (!gNRPacketLoggingEnabled)
            {
              goto LABEL_470;
            }

            v738 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            v739 = v738;
            if (sNRCopyLogToStdErr == 1)
            {

              v10 = v866;
              a4 = v869;
              goto LABEL_611;
            }

            v740 = os_log_type_enabled(v738, OS_LOG_TYPE_INFO);

            v10 = v866;
            v144 = v867;
            v29 = v868;
            a4 = v869;
            if (v740)
            {
LABEL_611:
              v741 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
              _NRLogWithArgs(v741, 1, "%s%.30s:%-4d no nexusOutputSlot and everything in linkReadBuffer alreadyRead=%zu", v742, v743, v744, v745, v746, "");

              v144 = v867;
              v29 = v868;
            }

LABEL_470:
            if (!v30)
            {
              a4 = 0;
              v6 = 0;
              goto LABEL_425;
            }

            v461 = a4 - v30;
            if (a4 <= v30)
            {
              a4 = v30;
              v29 = v868;
              v6 = 0;
              goto LABEL_425;
            }

            if (gNRPacketLoggingEnabled != 1)
            {
LABEL_473:
              v462 = v868;
              memcpy(&v868[*(a2 + 24)], (v144 + v30), v461);
              v463 = *(a2 + 24) + v461;
              v29 = v462;
              *(a2 + 24) = v463;
              v6 = 0;
              goto LABEL_425;
            }

            v747 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            v748 = v747;
            if (sNRCopyLogToStdErr == 1)
            {

              v10 = v866;
              a4 = v869;
            }

            else
            {
              v752 = os_log_type_enabled(v747, OS_LOG_TYPE_INFO);

              v10 = v866;
              v144 = v867;
              a4 = v869;
              if (!v752)
              {
                goto LABEL_473;
              }
            }

            v753 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            v832 = *(a2 + 24);
            v841 = *(a2 + 28);
            _NRLogWithArgs(v753, 1, "%s%.30s:%-4d no nexusOutputSlot - tail consolidating %zu bytes from linkInputSlot to linkReadBuffer filledIn=%u handled=%u and marking as completed", v754, v755, v756, v757, v758, "");

            v144 = v867;
            goto LABEL_473;
          }

          a4 = v869;
          if (gNRPacketLoggingEnabled)
          {
            v305 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            v306 = v305;
            if (sNRCopyLogToStdErr == 1)
            {

LABEL_390:
              v10 = v866;
              v266 = _NRCopyLogObjectForNRUUID(*(v866 + 48));
              _NRLogWithArgs(v266, 1, "%s%.30s:%-4d Marking as completed (no nexusOutputSlot) alreadyRead=%zu", v378, v379, v380, v381, v382, "");
              next_slot = 0;
              v6 = 0;
              a4 = v869;
              goto LABEL_391;
            }

            v377 = os_log_type_enabled(v305, OS_LOG_TYPE_INFO);

            if (v377)
            {
              goto LABEL_390;
            }

            next_slot = 0;
            v6 = 0;
            v10 = v866;
            v29 = v868;
            a4 = v869;
          }

          else
          {
            next_slot = 0;
            v6 = 0;
          }
        }
      }

      else
      {
        v70 = &v876 + v68;
        *v70 = v34 + v30;
        *(v70 + 2) = v69;
        if (gNRPacketLoggingEnabled != 1)
        {
          goto LABEL_81;
        }

        LODWORD(v849) = v55;
        LODWORD(v854) = v56;
        v858 = v66;
        v848 = v65;
        v207 = _NRCopyLogObjectForNRUUID(*(v866 + 48));
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v859 = v207;
          LODWORD(v847) = os_log_type_enabled(v207, OS_LOG_TYPE_INFO);

          v65 = v848;
          v66 = v858;
          v56 = v854;
          v55 = v849;
          if (!v847)
          {
            goto LABEL_81;
          }
        }

        v242 = _NRCopyLogObjectForNRUUID(*(v866 + 48));
        v793 = *v70;
        v802 = *(v70 + 2);
        v243 = v242;
        _NRLogWithArgs(v242, 1, "%s%.30s:%-4d Placing in ioVec[%u] buf=%p len=%u alreadyRead=%zu += %zu", v244, v245, v246, v247, v248, "");

        v55 = v849;
        v56 = v854;
        v66 = v858;
        v65 = v848;
LABEL_81:
        v67 += v69;
        v71 = (v68 + 1);
        v72 = v67 < 3 || v57;
        if (v72)
        {
          v73 = gNRPacketLoggingEnabled;
          if (!v57)
          {
            v10 = v866;
            if ((gNRPacketLoggingEnabled & 1) == 0)
            {
              v29 = v868;
              v30 = v869;
              goto LABEL_115;
            }

            v82 = 0;
            goto LABEL_345;
          }

          v10 = v866;
        }

        else
        {
          if (DWORD2(v876) < 3)
          {
            if (DWORD2(v876) == 2)
            {
              v10 = v866;
              if (v65 <= v66)
              {
                v532 = nrCopyLogObj_560();
                v533 = v532;
                if (sNRCopyLogToStdErr == 1)
                {

                  goto LABEL_550;
                }

                v610 = os_log_type_enabled(v532, OS_LOG_TYPE_ERROR);

                if (v610)
                {
LABEL_550:
                  v611 = nrCopyLogObj_560();
                  _NRLogWithArgs(v611, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 1", v612, v613, v614, v615, v616, "");
                }

                v617 = _os_log_pack_size();
                MEMORY[0x28223BE20](v617, v618);
                v619 = *__error();
                v530 = _os_log_pack_fill();
                *v530 = 136446210;
                v531 = "nrReadTLVLenHBOFromIOVec";
                goto LABEL_552;
              }

              v75 = *(v876 + 1);
              v76 = *v877;
            }

            else
            {
              v10 = v866;
              if (DWORD2(v876) != 1)
              {
                v534 = (v68 + 1);
                v535 = nrCopyLogObj_560();
                v536 = v535;
                if (sNRCopyLogToStdErr == 1)
                {

                  goto LABEL_554;
                }

                v620 = os_log_type_enabled(v535, OS_LOG_TYPE_ERROR);

                if (v620)
                {
LABEL_554:
                  v621 = nrCopyLogObj_560();
                  v839 = createIOVecString(&v876, v534);
                  _NRLogWithArgs(v621, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: ioVecs[0].len == 1; %@", v622, v623, v624, v625, v626, "");
                }

                v627 = _os_log_pack_size();
                MEMORY[0x28223BE20](v627, v628);
                v629 = *__error();
                v630 = _os_log_pack_fill();
                v631 = createIOVecString(&v876, v534);
                *v630 = 136446466;
                *(v630 + 4) = "nrReadTLVLenHBOFromIOVec";
                goto LABEL_559;
              }

              if (DWORD2(v877) < 2)
              {
                v537 = (v68 + 1);
                v767 = nrCopyLogObj_560();
                v768 = v767;
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v769 = os_log_type_enabled(v767, OS_LOG_TYPE_ERROR);

                  if (!v769)
                  {
                    goto LABEL_558;
                  }
                }

                v770 = nrCopyLogObj_560();
                v843 = createIOVecString(&v876, v537);
                _NRLogWithArgs(v770, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 2; %@", v771, v772, v773, v774, v775, "");

LABEL_558:
                v639 = _os_log_pack_size();
                MEMORY[0x28223BE20](v639, v640);
                v641 = *__error();
                v630 = _os_log_pack_fill();
                v631 = createIOVecString(&v876, v537);
                *v630 = 136446466;
                *(v630 + 4) = "nrReadTLVLenHBOFromIOVec";
LABEL_559:
                *(v630 + 12) = 2112;
                *(v630 + 14) = v631;
                goto LABEL_576;
              }

              if (v65 <= v66)
              {
                v537 = (v68 + 1);
                v538 = nrCopyLogObj_560();
                v539 = v538;
                if (sNRCopyLogToStdErr == 1)
                {

                  goto LABEL_557;
                }

                v632 = os_log_type_enabled(v538, OS_LOG_TYPE_ERROR);

                if (v632)
                {
LABEL_557:
                  v633 = nrCopyLogObj_560();
                  v840 = createIOVecString(&v876, v537);
                  _NRLogWithArgs(v633, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 1; %@", v634, v635, v636, v637, v638, "");
                }

                goto LABEL_558;
              }

              v75 = *v877;
              v76 = HIBYTE(*v877);
            }
          }

          else
          {
            v75 = *(v876 + 1);
            v76 = HIBYTE(*(v876 + 1));
            v10 = v866;
          }

          v77 = bswap32(v75 | (v76 << 8));
          v55 = BYTE2(v77);
          v56 = HIBYTE(v77);
          v73 = gNRPacketLoggingEnabled;
        }

        v78 = (v55 | (v56 << 8)) + 5;
        if (v78 < v67)
        {
          v79 = v67 - v78;
          if ((v73 & 1) == 0)
          {
LABEL_104:
            v80 = &v876 + v68;
            v81 = *(v80 + 2) - v79;
            *(v80 + 2) = v81;
            if (!v81)
            {
              v454 = createIOVecString(&v876, v71);
              [(NRBluetoothPacketParser *)v10 handleInternalError:v455, v456, v457, v458, v459, v460, v68];

              goto LABEL_593;
            }

            v30 = v869 - v79;
            if (gNRPacketLoggingEnabled == 1)
            {
              v847 = v79;
              v848 = v65;
              LODWORD(v849) = v55;
              LODWORD(v854) = v56;
              v858 = v66;
              LODWORD(v859) = v71;
              v258 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
              if (sNRCopyLogToStdErr == 1)
              {

                goto LABEL_366;
              }

              v74 = 1;
              v318 = v258;
              v319 = os_log_type_enabled(v258, OS_LOG_TYPE_INFO);

              if (v319)
              {
LABEL_366:
                v10 = v866;
                v846 = _NRCopyLogObjectForNRUUID(*(v866 + 48));
                v804 = createIOVecString(&v876, v859);
                v74 = 1;
                v320 = v846;
                _NRLogWithArgs(v846, 1, "%s%.30s:%-4d Shrunk ioVecs[%u] down by %u - %@ ioVecContentLen=%u alreadyRead=%zu", v321, v322, v323, v324, v325, "");

                v71 = v859;
                v67 = v78;
                v29 = v868;
LABEL_397:
                v65 = v848;
                v66 = v858;
                v56 = v854;
                v55 = v849;
                goto LABEL_110;
              }

              v67 = v78;
LABEL_396:
              v10 = v866;
              v29 = v868;
              v71 = v859;
              goto LABEL_397;
            }

            v74 = 1;
            v67 = v78;
            goto LABEL_109;
          }

          v847 = v67 - v78;
          v848 = v65;
          LODWORD(v849) = v55;
          LODWORD(v854) = v56;
          v858 = v66;
          LODWORD(v859) = v68 + 1;
          v257 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v307 = v257;
            v308 = os_log_type_enabled(v257, OS_LOG_TYPE_INFO);

            v71 = v859;
            v79 = v847;
            v65 = v848;
            v66 = v858;
            v56 = v854;
            v55 = v849;
            if (!v308)
            {
              goto LABEL_104;
            }
          }

          v309 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          v310 = createIOVecString(&v876, v859);
          _NRLogWithArgs(v309, 1, "%s%.30s:%-4d Shrinking ioVecs[%u] down by %u - %@ ioVecContentLen=%u alreadyRead=%zu", v311, v312, v313, v314, v315, "");

          v79 = v847;
          v65 = v848;
          v55 = v849;
          v56 = v854;
          v66 = v858;
          v71 = v859;
          goto LABEL_104;
        }

        v82 = 1;
        if ((v73 & 1) == 0)
        {
          v30 = v869;
          v74 = 1;
          goto LABEL_109;
        }

LABEL_345:
        LODWORD(v849) = v55;
        LODWORD(v854) = v56;
        v858 = v66;
        v848 = v65;
        LODWORD(v859) = v68 + 1;
        v272 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v273 = v272;
          v274 = os_log_type_enabled(v272, OS_LOG_TYPE_INFO);

          if (!v274)
          {
            if (v82)
            {
              v74 = 1;
              v30 = v869;
              goto LABEL_396;
            }

            v29 = v868;
            v30 = v869;
            v10 = v866;
            LODWORD(v71) = v859;
            v65 = v848;
            v66 = v858;
            v56 = v854;
            v55 = v849;
            goto LABEL_115;
          }
        }

        v10 = v866;
        v275 = _NRCopyLogObjectForNRUUID(*(v866 + 48));
        v30 = v869;
        v74 = 1;
        v276 = v275;
        _NRLogWithArgs(v275, 1, "%s%.30s:%-4d not shrinking len %u%s ioVecContentLen=%u alreadyRead=%zu", v277, v278, v279, v280, v281, "");

        v55 = v849;
        v56 = v854;
        v29 = v868;
        v71 = v859;
        v65 = v848;
        v66 = v858;
        if (v82)
        {
          goto LABEL_110;
        }

LABEL_115:
        v86 = v55;
        v87 = v56;
        if (gNRPacketLoggingEnabled == 1)
        {
          v858 = v66;
          v848 = v65;
          LODWORD(v859) = v71;
          v186 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          if (sNRCopyLogToStdErr == 1)
          {

LABEL_312:
            v209 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
            v819 = createStringFromNRTLVType(v33);
            _NRLogWithArgs(v209, 1, "%s%.30s:%-4d LtN not enough input bytes from linkInputSlot %u to fit %@ tlvLen %u", v210, v211, v212, v213, v214, "");

            LODWORD(v66) = v858;
            LODWORD(v65) = v848;
            LODWORD(v71) = v859;
            v29 = v868;
            goto LABEL_116;
          }

          v208 = v186;
          LODWORD(v854) = os_log_type_enabled(v186, OS_LOG_TYPE_INFO);

          v29 = v868;
          LODWORD(v71) = v859;
          LODWORD(v65) = v848;
          LODWORD(v66) = v858;
          if (v854)
          {
            goto LABEL_312;
          }
        }

LABEL_116:
        if (*(a2 + 42) == 3 && (v86 | (v87 << 8)) + 5 > v67)
        {
          v430 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v438 = v430;
            v439 = os_log_type_enabled(v430, OS_LOG_TYPE_INFO);

            v29 = v868;
            if (!v439)
            {
              goto LABEL_467;
            }
          }

          v440 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          _NRLogWithArgs(v440, 1, "%s%.30s:%-4d truncated packet received %u != %lu", v441, v442, v443, v444, v445, "");
          goto LABEL_466;
        }

        a4 = v869;
        if (v71 > (v65 > v66))
        {
          v88 = v71 - (v65 > v66);
          v89 = &v861[16 * (v65 > v66)];
          do
          {
            if (gNRPacketLoggingEnabled == 1)
            {
              v91 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
              if (sNRCopyLogToStdErr == 1)
              {

LABEL_126:
                v94 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
                v799 = *(a2 + 24);
                v816 = *(a2 + 28);
                v785 = *v89;
                v791 = *(v89 - 1);
                _NRLogWithArgs(v94, 1, "%s%.30s:%-4d partial TLV - consolidating %u bytes from linkInputSlot buf %p to linkReadBuffer filledIn=%u handled=%u", v95, v96, v97, v98, v99, "");

                v29 = v868;
                goto LABEL_121;
              }

              v92 = v91;
              v93 = os_log_type_enabled(v91, OS_LOG_TYPE_INFO);

              v29 = v868;
              if (v93)
              {
                goto LABEL_126;
              }
            }

LABEL_121:
            memcpy(&v29[*(a2 + 24)], *(v89 - 1), *v89);
            v90 = *v89;
            v89 += 16;
            *(a2 + 24) += v90;
            --v88;
          }

          while (v88);
        }

        if (gNRPacketLoggingEnabled)
        {
          v187 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v215 = v187;
            v216 = os_log_type_enabled(v187, OS_LOG_TYPE_INFO);

            v29 = v868;
            if (!v216)
            {
              goto LABEL_128;
            }
          }

          v217 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          _NRLogWithArgs(v217, 1, "%s%.30s:%-4d Marking as completed (not enough input bytes) alreadyRead=%zu", v218, v219, v220, v221, v222, "");

          v29 = v868;
        }

LABEL_128:
        v6 = 1;
      }
    }

    else
    {
      while (1)
      {
        if (gNRPacketLoggingEnabled == 1)
        {
          v44 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v45 = v44;
            v46 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);

            v29 = v868;
            if (!v46)
            {
              goto LABEL_40;
            }
          }

          v47 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          _NRLogWithArgs(v47, 1, "%s%.30s:%-4d Handling Pad0 in linkReadBuffer", v48, v49, v50, v51, v52, "");

          v29 = v868;
        }

LABEL_40:
        v31 = *(a2 + 24);
        v32 = *(a2 + 28) + 1;
        *(a2 + 28) = v32;
        if (v31 <= v32)
        {
          break;
        }

        v33 = v29[v32];
        if (v29[v32])
        {
          goto LABEL_42;
        }
      }

      if (v31 != v32)
      {
        [(NRBluetoothPacketParser *)v10 handleInternalError:v21, v22, v23, v24, v25, v26, v31];
LABEL_438:
        v6 = 0;
        goto LABEL_452;
      }

      v6 = 1;
      if (gNRPacketLoggingEnabled == 1)
      {
        v63 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
        if (sNRCopyLogToStdErr == 1)
        {

          goto LABEL_358;
        }

        v6 = 1;
        v297 = v63;
        v298 = os_log_type_enabled(v63, OS_LOG_TYPE_INFO);

        v29 = v868;
        if (v298)
        {
LABEL_358:
          v299 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
          v803 = *(a2 + 28);
          v821 = *(a2 + 24);
          v6 = 1;
          _NRLogWithArgs(v299, 1, "%s%.30s:%-4d Ended linkReadBuffer on a Pad0 handled=%u filledIn=%u", v300, v301, v302, v303, v304, "");

          v29 = v868;
        }
      }
    }
  }

  v34 = v867;
  do
  {
    v33 = *(v34 + v30);
    if (*(v34 + v30))
    {
      LODWORD(v31) = *(a2 + 24);
      v32 = *(a2 + 28);
      goto LABEL_43;
    }

    if (gNRPacketLoggingEnabled == 1)
    {
      v35 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v36 = v35;
        v37 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);

        v34 = v867;
        v29 = v868;
        if (!v37)
        {
          goto LABEL_28;
        }
      }

      v38 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      _NRLogWithArgs(v38, 1, "%s%.30s:%-4d Handling Pad0 in linkInputSlot alreadyRead=%zu", v39, v40, v41, v42, v43, "");

      v34 = v867;
      v29 = v868;
    }

LABEL_28:
    ++v30;
  }

  while (v30 < a4);
  if (v30 != a4)
  {
    [(NRBluetoothPacketParser *)v10 handleInternalError:v21, v22, v23, v24, v25, v26, v30];
    goto LABEL_438;
  }

  if (gNRPacketLoggingEnabled != 1)
  {
    v6 = 1;
    goto LABEL_425;
  }

  v474 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
  if (sNRCopyLogToStdErr == 1)
  {

    goto LABEL_493;
  }

  v6 = 1;
  v486 = v474;
  v487 = os_log_type_enabled(v474, OS_LOG_TYPE_INFO);

  if (v487)
  {
LABEL_493:
    v10 = v866;
    v488 = _NRCopyLogObjectForNRUUID(*(v866 + 48));
    v807 = *(a2 + 28);
    v827 = *(a2 + 24);
    v6 = 1;
    _NRLogWithArgs(v488, 1, "%s%.30s:%-4d Ended linkInputSlot on a Pad0 handled=%u filledIn=%u", v489, v490, v491, v492, v493, "");
  }

  else
  {
    v10 = v866;
  }

  v29 = v868;
  a4 = v869;
LABEL_425:
  if (gNRPacketLoggingEnabled == 1)
  {
    v465 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v476 = v465;
      v477 = os_log_type_enabled(v465, OS_LOG_TYPE_INFO);

      v29 = v868;
      if (!v477)
      {
        goto LABEL_426;
      }
    }

    v478 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    _NRLogWithArgs(v478, 1, "%s%.30s:%-4d out of LtN fast path inner loop", v479, v480, v481, v482, v483, "");

    v29 = v868;
  }

LABEL_426:
  v421 = *(a2 + 24);
  v420 = *(a2 + 28);
  if (v421 <= v420)
  {
    if (v420 != v421)
    {
      [(NRBluetoothPacketParser *)v10 handleInternalError:v21, v22, v23, v24, v25, v26, *(a2 + 28)];
      goto LABEL_438;
    }

    if (gNRPacketLoggingEnabled != 1)
    {
      goto LABEL_432;
    }

    v518 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    v519 = v518;
    if (sNRCopyLogToStdErr == 1)
    {

      v10 = v866;
    }

    else
    {
      v603 = os_log_type_enabled(v518, OS_LOG_TYPE_INFO);

      v10 = v866;
      if (!v603)
      {
LABEL_432:
        *(a2 + 24) = 0;
        goto LABEL_446;
      }
    }

    v604 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    v838 = *(a2 + 24);
    _NRLogWithArgs(v604, 1, "%s%.30s:%-4d resetting the linkReadBuffer (filledIn=%u)", v605, v606, v607, v608, v609, "");

    goto LABEL_432;
  }

  if (v420 <= 0x8000)
  {
    if (v420)
    {
      if (!gNRPacketLoggingEnabled)
      {
        goto LABEL_446;
      }

      v422 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      v423 = v422;
      if (sNRCopyLogToStdErr == 1)
      {

        v10 = v866;
      }

      else
      {
        v702 = os_log_type_enabled(v422, OS_LOG_TYPE_INFO);

        v10 = v866;
        if (!v702)
        {
          goto LABEL_446;
        }
      }

      v703 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      v830 = *(a2 + 24);
      v814 = *(a2 + 28);
      _NRLogWithArgs(v703, 1, "%s%.30s:%-4d not memmoving the linkReadBuffer thresh handled=%u filledIn=%u thresh=%u", v704, v705, v706, v707, v708, "");
    }

    else
    {
      if (!gNRPacketLoggingEnabled)
      {
        goto LABEL_446;
      }

      v642 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      v643 = v642;
      if (sNRCopyLogToStdErr == 1)
      {

        v10 = v866;
      }

      else
      {
        v711 = os_log_type_enabled(v642, OS_LOG_TYPE_INFO);

        v10 = v866;
        if (!v711)
        {
          goto LABEL_446;
        }
      }

      v703 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      v831 = *(a2 + 24);
      v815 = *(a2 + 28);
      _NRLogWithArgs(v703, 1, "%s%.30s:%-4d not memmoving the linkReadBuffer zero handled=%u filledIn=%u thresh=%u", v712, v713, v714, v715, v716, "");
    }
  }

  else
  {
    if (gNRPacketLoggingEnabled != 1)
    {
      goto LABEL_429;
    }

    v516 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
    v517 = v516;
    if (sNRCopyLogToStdErr == 1)
    {

      v10 = v866;
      goto LABEL_546;
    }

    v596 = os_log_type_enabled(v516, OS_LOG_TYPE_INFO);

    v10 = v866;
    v29 = v868;
    if (v596)
    {
LABEL_546:
      v597 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      v829 = *(a2 + 24);
      v808 = *(a2 + 28);
      _NRLogWithArgs(v597, 1, "%s%.30s:%-4d memmoving the linkReadBuffer by handled=%u (filledIn=%u) thresh=%u", v598, v599, v600, v601, v602, "");

      v29 = v868;
    }

LABEL_429:
    memmove(v29, &v29[*(a2 + 28)], (*(a2 + 24) - *(a2 + 28)));
    *(a2 + 24) = (*(a2 + 24) - *(a2 + 28));
  }

LABEL_446:
  if (v857)
  {
    *v857 = a4;
  }

  if (v862)
  {
    os_channel_advance_slot();
    v424 = v860;
  }

  else
  {
    v424 = v860;
    if (gNRPacketLoggingEnabled == 1)
    {
      v514 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      v515 = v514;
      if (sNRCopyLogToStdErr == 1)
      {

        v10 = v866;
        v424 = v860;
      }

      else
      {
        v589 = os_log_type_enabled(v514, OS_LOG_TYPE_INFO);

        v10 = v866;
        v424 = v860;
        if (!v589)
        {
          goto LABEL_451;
        }
      }

      v590 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
      _NRLogWithArgs(v590, 1, "%s%.30s:%-4d highestNexusOutputSlotWrittenTo is NULL", v591, v592, v593, v594, v595, "");
    }
  }

LABEL_451:
  *(a2 + 40) += v424;
  if (gNRPacketLoggingEnabled != 1)
  {
    goto LABEL_452;
  }

  v475 = _NRCopyLogObjectForNRUUID(*(v10 + 48));
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v494 = v475;
    v495 = os_log_type_enabled(v475, OS_LOG_TYPE_INFO);

    if (!v495)
    {
      goto LABEL_452;
    }
  }

  v496 = _NRCopyLogObjectForNRUUID(*(v866 + 48));
  _NRLogWithArgs(v496, 1, "%s%.30s:%-4d out of LtN fast path loop (%llu/%llu bytes)", v497, v498, v499, v500, v501, "");

LABEL_452:
  v425 = v863;
LABEL_453:

LABEL_454:
  v426 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

uint64_t nrTLVToPacket(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v9 = a4;
  v10 = a2;
  v11 = a1;
  v293 = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    if (a6 < a4)
    {
      LOWORD(v9) = 0;
      goto LABEL_118;
    }

    if (!a4)
    {
      goto LABEL_118;
    }

    if (!a1)
    {
      v97 = nrCopyLogObj_2201();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v200 = v97;
        v201 = os_log_type_enabled(v97, OS_LOG_TYPE_ERROR);

        if (!v201)
        {
          goto LABEL_235;
        }
      }

      v202 = nrCopyLogObj_2201();
      _NRLogWithArgs(v202, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (ioVecs) != ((void*)0)", v203, v204, v205, v206, v207, "");

      goto LABEL_235;
    }

    if (!a2)
    {
      v106 = nrCopyLogObj_2201();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v208 = v106;
        v209 = os_log_type_enabled(v106, OS_LOG_TYPE_ERROR);

        if (!v209)
        {
          goto LABEL_235;
        }
      }

      v210 = nrCopyLogObj_2201();
      _NRLogWithArgs(v210, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 0", v211, v212, v213, v214, v215, "");

      goto LABEL_235;
    }

    if (a5)
    {
      v15 = 0;
      v16 = (a1 + 8);
      v17 = 3;
      v18 = a2;
      while (1)
      {
        v19 = *v16;
        if (!v17)
        {
          goto LABEL_25;
        }

        if (v17 <= v19)
        {
          break;
        }

        v17 -= v19;
LABEL_21:
        v16 += 4;
        if (!--v18)
        {
          goto LABEL_30;
        }
      }

      if (v17 < v19)
      {
LABEL_25:
        v20 = v19 - v17;
        if (v20 >= v9 - v15)
        {
          v21 = v9 - v15;
        }

        else
        {
          v21 = v20;
        }

        memcpy((a5 + v15), (*(v16 - 1) + v17), v21);
        v15 += v21;
        if (v15 >= v9)
        {
LABEL_30:
          if (v15 == v9)
          {
            goto LABEL_118;
          }

          v124 = nrCopyLogObj_2201();
          if (sNRCopyLogToStdErr == 1)
          {

            goto LABEL_237;
          }

          v227 = v124;
          v228 = os_log_type_enabled(v124, OS_LOG_TYPE_ERROR);

          if (v228)
          {
LABEL_237:
            v229 = nrCopyLogObj_2201();
            IOVecString = createIOVecString(v11, v10);
            _NRLogWithArgs(v229, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", v230, v231, v232, v233, v234, "");
          }

          v235 = _os_log_pack_size();
          MEMORY[0x28223BE20](v235, v236);
          v237 = *__error();
          v238 = _os_log_pack_fill();
          v239 = createIOVecString(v11, v10);
          __os_log_helper_1_2_5_8_34_4_0_4_0_4_0_8_64(v238, "nrWriteIOVecToBuffer", v15, v9, 3, v239);
          v240 = nrCopyLogObj_2201();
          _NRLogAbortWithPack(v240);
        }
      }

      v17 = 0;
      goto LABEL_21;
    }

    v115 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v216 = v115;
      v217 = os_log_type_enabled(v115, OS_LOG_TYPE_ERROR);

      if (!v217)
      {
LABEL_235:
        v224 = _os_log_pack_size();
        MEMORY[0x28223BE20](v224, v225);
        v226 = *__error();
        v152 = _os_log_pack_fill();
        *v152 = 136446210;
        v153 = "nrWriteIOVecToBuffer";
LABEL_200:
        *(v152 + 4) = v153;
        v154 = nrCopyLogObj_2201();
        _NRLogAbortWithPack(v154);
      }
    }

    v218 = nrCopyLogObj_2201();
    _NRLogWithArgs(v218, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (outBuffer) != ((void*)0)", v219, v220, v221, v222, v223, "");

    goto LABEL_235;
  }

  if (!a1)
  {
    v69 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v89 = v69;
      v90 = os_log_type_enabled(v69, OS_LOG_TYPE_ERROR);

      if (!v90)
      {
        goto LABEL_199;
      }
    }

    v91 = nrCopyLogObj_2201();
    _NRLogWithArgs(v91, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (ioVecs) != ((void*)0)", v92, v93, v94, v95, v96, "");

    goto LABEL_199;
  }

  if (!a2)
  {
    v70 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v98 = v70;
      v99 = os_log_type_enabled(v70, OS_LOG_TYPE_ERROR);

      if (!v99)
      {
        goto LABEL_199;
      }
    }

    v100 = nrCopyLogObj_2201();
    _NRLogWithArgs(v100, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 0", v101, v102, v103, v104, v105, "");

    goto LABEL_199;
  }

  if (!a4)
  {
    v71 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v107 = v71;
      v108 = os_log_type_enabled(v71, OS_LOG_TYPE_ERROR);

      if (!v108)
      {
        goto LABEL_199;
      }
    }

    v109 = nrCopyLogObj_2201();
    _NRLogWithArgs(v109, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: tlvLen > 0", v110, v111, v112, v113, v114, "");

    goto LABEL_199;
  }

  if (!a5)
  {
    v72 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v116 = v72;
      v117 = os_log_type_enabled(v72, OS_LOG_TYPE_ERROR);

      if (!v117)
      {
        goto LABEL_199;
      }
    }

    v118 = nrCopyLogObj_2201();
    _NRLogWithArgs(v118, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (packetBuffer) != ((void*)0)", v119, v120, v121, v122, v123, "");

    goto LABEL_199;
  }

  if (a6 <= 0x27)
  {
    v73 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v125 = v73;
      v126 = os_log_type_enabled(v73, OS_LOG_TYPE_ERROR);

      if (!v126)
      {
        goto LABEL_199;
      }
    }

    v127 = nrCopyLogObj_2201();
    _NRLogWithArgs(v127, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: packetLength >= sizeof(NRIPv6Hdr_s)", v128, v129, v130, v131, v132, "");

    goto LABEL_199;
  }

  if (!a7)
  {
    v74 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v133 = v74;
      v134 = os_log_type_enabled(v74, OS_LOG_TYPE_ERROR);

      if (!v134)
      {
        goto LABEL_199;
      }
    }

    v135 = nrCopyLogObj_2201();
    _NRLogWithArgs(v135, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (srcAddr) != ((void*)0)", v136, v137, v138, v139, v140, "");

    goto LABEL_199;
  }

  if (!a8)
  {
    v75 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v141 = v75;
      v142 = os_log_type_enabled(v75, OS_LOG_TYPE_ERROR);

      if (!v142)
      {
LABEL_199:
        v149 = _os_log_pack_size();
        MEMORY[0x28223BE20](v149, v150);
        v151 = *__error();
        v152 = _os_log_pack_fill();
        *v152 = 136446210;
        v153 = "nr6LoWPANTLVToPacket";
        goto LABEL_200;
      }
    }

    v143 = nrCopyLogObj_2201();
    _NRLogWithArgs(v143, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (dstAddr) != ((void*)0)", v144, v145, v146, v147, v148, "");

    goto LABEL_199;
  }

  v13 = &v283;
  if (a3 <= 101)
  {
    if (a3 != 3)
    {
      if (a3 == 100)
      {
        v14 = &nrKnownIPv6HdrESP;
        goto LABEL_82;
      }

      if (a3 == 101)
      {
        v14 = &nrKnownIPv6HdrESP_ECT0;
        goto LABEL_82;
      }

LABEL_45:
      if (nrCopyLogObj_onceToken_1989 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1989, &__block_literal_global_1990);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_1991, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_269;
      }

      v22 = nrCopyLogObj_sNRLogObj_1991;
      if (a3 <= 3)
      {
        switch(a3)
        {
          case 0:
            StringFromNRTLVType = @"Pad0";
            goto LABEL_124;
          case 1:
            StringFromNRTLVType = @"PadN";
            goto LABEL_124;
          case 3:
            StringFromNRTLVType = @"Encapsulated6LoWPAN";
            goto LABEL_124;
        }
      }

      else if (a3 > 103)
      {
        if (a3 == 104)
        {
          StringFromNRTLVType = @"KnownIPv6Hdr_ESP_ClassC";
          goto LABEL_124;
        }

        if (a3 == 105)
        {
          StringFromNRTLVType = @"KnownIPv6Hdr_ESP_ClassC_ECT0";
          goto LABEL_124;
        }
      }

      else
      {
        if (a3 == 4)
        {
          StringFromNRTLVType = @"IKEv2PointToPoint";
          goto LABEL_124;
        }

        if (a3 == 5)
        {
          StringFromNRTLVType = @"ControlMessage";
LABEL_124:
          _NRLogWithArgs(v22, 17, "unexpected tlvType %@", v28, v29, v30, v31, v32, StringFromNRTLVType);
LABEL_125:

          goto LABEL_126;
        }
      }

      StringFromNRTLVType = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%lld)", a3];
      goto LABEL_124;
    }

    if (a4 == 1)
    {
      if (nrCopyLogObj_onceToken_1989 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1989, &__block_literal_global_1990);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1991, OS_LOG_TYPE_ERROR))
      {
        v22 = nrCopyLogObj_2201();
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d received 6LoWPAN TLV too short %u", v23, v24, v25, v26, v27, "");
LABEL_126:

        v66 = 0;
        goto LABEL_117;
      }

      goto LABEL_269;
    }

    v290 = &v283;
    v287 = &v283;
    v288 = a6;
    v34 = 0;
    if (a4 >= 0x2A)
    {
      v35 = 42;
    }

    else
    {
      v35 = a4;
    }

    v291 = a1;
    v36 = (a1 + 8);
    v37 = 3;
    v289 = a2;
    v38 = a2;
    while (1)
    {
      v39 = *v36;
      if (v37)
      {
        if (v37 > v39)
        {
          v37 -= v39;
          goto LABEL_62;
        }

        if (v37 >= v39)
        {
          v37 = 0;
          goto LABEL_62;
        }
      }

      v40 = a7;
      v41 = a8;
      v42 = v39 - v37;
      if (v42 >= v35 - v34)
      {
        v43 = v35 - v34;
      }

      else
      {
        v43 = v42;
      }

      memcpy(&v292[v34], (*(v36 - 1) + v37), v43);
      v34 += v43;
      if (v34 >= v35)
      {
        a8 = v41;
        a7 = v40;
LABEL_80:
        if (v34 == v35)
        {
          a6 = v288;
          v14 = v292;
          v13 = v290;
          v11 = v291;
          v10 = v289;
          goto LABEL_82;
        }

        v256 = nrCopyLogObj_2201();
        v257 = v256;
        if (sNRCopyLogToStdErr == 1)
        {

          goto LABEL_260;
        }

        v258 = os_log_type_enabled(v256, OS_LOG_TYPE_ERROR);

        if (v258)
        {
LABEL_260:
          v259 = nrCopyLogObj_2201();
          v281 = createIOVecString(v291, v289);
          _NRLogWithArgs(v259, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", v260, v261, v262, v263, v264, "");
        }

        v265 = _os_log_pack_size();
        MEMORY[0x28223BE20](v265, v266);
        v267 = *__error();
        v268 = _os_log_pack_fill();
        v269 = createIOVecString(v291, v289);
        __os_log_helper_1_2_5_8_34_4_0_4_0_4_0_8_64(v268, "nrWriteIOVecToBuffer", v34, v35, 3, v269);
        v270 = nrCopyLogObj_2201();
        _NRLogAbortWithPack(v270);
      }

      v37 = 0;
      a8 = v41;
      a7 = v40;
LABEL_62:
      v36 += 4;
      if (!--v38)
      {
        goto LABEL_80;
      }
    }
  }

  if (a3 > 103)
  {
    if (a3 == 104)
    {
      v14 = &nrKnownIPv6HdrESP_ClassC;
      goto LABEL_82;
    }

    if (a3 == 105)
    {
      v14 = &nrKnownIPv6HdrESP_ClassC_ECT0;
      goto LABEL_82;
    }

    goto LABEL_45;
  }

  if (a3 == 102)
  {
    v14 = &nrKnownIPv6HdrTCP;
  }

  else
  {
    v14 = &nrKnownIPv6HdrTCP_ECT0;
  }

LABEL_82:
  if ((*v14 & 0xE0) != 0x60)
  {
    v76 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v155 = v76;
      v156 = os_log_type_enabled(v76, OS_LOG_TYPE_ERROR);

      if (!v156)
      {
        goto LABEL_269;
      }
    }

    v22 = nrCopyLogObj_2201();
    v282 = *v14 >> 5;
    _NRLogWithArgs(v22, 16, "%s%.30s:%-4d received unknown 6LoWPAN dispatch %u", v157, v158, v159, v160, v161, "");
    goto LABEL_126;
  }

  if (v14[1] < 0)
  {
    v44 = 3;
  }

  else
  {
    v44 = 2;
  }

  v45 = &v14[v44];
  *a5 = 96;
  v46 = (*v14 >> 3) & 3;
  if (v46 == 3)
  {
    v47 = 0;
    goto LABEL_87;
  }

  if (!v46)
  {
    v77 = *(v45 + 1);
    *(a5 + 3) = v45[3];
    *(a5 + 1) = v77;
    v47 = 4;
LABEL_240:
    v241 = bswap32(*v45 << 20);
LABEL_241:
    *a5 |= v241;
    goto LABEL_87;
  }

  if (v46 != 1)
  {
    v47 = 1;
    goto LABEL_240;
  }

  v169 = *v45;
  *(a5 + 3) = v45[2];
  *(a5 + 1) = v169;
  if ((*v45 & 0x80) == 0)
  {
    v47 = 3;
    if ((*v45 & 0x40) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_254;
  }

  *a5 |= 0x2000u;
  v47 = 3;
  if ((*v45 & 0x40) != 0)
  {
LABEL_254:
    v241 = 4096;
    goto LABEL_241;
  }

LABEL_87:
  v48 = *v14;
  if ((*v14 & 4) != 0)
  {
    v78 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v162 = v78;
      v163 = os_log_type_enabled(v78, OS_LOG_TYPE_ERROR);

      if (!v163)
      {
        goto LABEL_269;
      }
    }

    v22 = nrCopyLogObj_2201();
    _NRLogWithArgs(v22, 16, "%s%.30s:%-4d can't handle NH=1 yet", v164, v165, v166, v167, v168, "");
    goto LABEL_126;
  }

  *(a5 + 6) = v45[v47];
  v49 = v47 + 1;
  v50 = v48 & 3;
  if (v50 == 2)
  {
    v51 = 64;
LABEL_90:
    *(a5 + 7) = v51;
    goto LABEL_91;
  }

  if (v50)
  {
    if (v50 == 1)
    {
      v51 = 1;
    }

    else
    {
      v51 = -1;
    }

    goto LABEL_90;
  }

  *(a5 + 7) = v45[v49];
  LODWORD(v49) = v47 + 2;
LABEL_91:
  v52 = v14[1];
  v53 = (v52 >> 4) & 3;
  if ((v52 & 0x40) != 0)
  {
    switch(v53)
    {
      case 3:
        goto LABEL_93;
      case 0:
        *(a5 + 8) = 0;
        *(a5 + 16) = 0;
        goto LABEL_94;
      case 1:
        *(a5 + 8) = *a7;
        goto LABEL_218;
    }

    *(a5 + 8) = *a7;
    *(a5 + 16) = *&v45[v49];
  }

  else
  {
    switch(v53)
    {
      case 3:
LABEL_93:
        *(a5 + 8) = *a7;
        goto LABEL_94;
      case 0:
        *(a5 + 8) = *&v45[v49];
        LODWORD(v49) = v49 | 0x10;
        goto LABEL_94;
      case 1:
        *(a5 + 8) = -32514;
        *(a5 + 10) = 0;
        *(a5 + 14) = 0;
LABEL_218:
        *(a5 + 16) = *&v45[v49];
        LODWORD(v49) = v49 + 8;
        goto LABEL_94;
    }

    *(a5 + 8) = -32514;
    *(a5 + 10) = 0;
    *(a5 + 19) = -257;
    *(a5 + 21) = 0;
    *(a5 + 22) = *&v45[v49];
  }

  LODWORD(v49) = v49 + 2;
LABEL_94:
  v54 = v52 & 3;
  v287 = v14;
  if ((v52 & 8) != 0)
  {
    if ((v52 & 4) == 0)
    {
      if ((v52 & 3) > 1)
      {
        if (v54 == 2)
        {
          *(a5 + 24) = -1;
          v242 = &v45[v49];
          *(a5 + 25) = *v242;
          *(a5 + 26) = 0;
          *(a5 + 33) = 0;
          v243 = *(v242 + 1);
          *(a5 + 39) = v242[3];
          *(a5 + 37) = v243;
          LODWORD(v49) = v49 + 4;
        }

        else
        {
          *(a5 + 31) = 0;
          *(a5 + 24) = 767;
          *(a5 + 39) = v45[v49];
          LODWORD(v49) = v49 + 1;
        }

        goto LABEL_98;
      }

      if ((v52 & 3) != 0)
      {
        *(a5 + 24) = -1;
        v79 = &v45[v49];
        *(a5 + 25) = *v79;
        *(a5 + 26) = 0;
        *(a5 + 34) = 0;
        v80 = *(v79 + 1);
        *(a5 + 39) = v79[5];
        *(a5 + 35) = v80;
        LODWORD(v49) = v49 + 6;
        goto LABEL_98;
      }

      goto LABEL_166;
    }

    v170 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr)
    {

      if (!v54)
      {
        goto LABEL_256;
      }
    }

    else
    {
      v244 = v170;
      v245 = os_log_type_enabled(v170, OS_LOG_TYPE_ERROR);

      if (!v54)
      {
        if (!v245)
        {
          goto LABEL_269;
        }

LABEL_256:
        v22 = nrCopyLogObj_2201();
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d can't handle M=1 DAC=1 DAM=00 yet", v251, v252, v253, v254, v255, "");
        goto LABEL_126;
      }

      if (!v245)
      {
        goto LABEL_269;
      }
    }

    v22 = nrCopyLogObj_2201();
    _NRLogWithArgs(v22, 16, "%s%.30s:%-4d M=1 DAC=1 DAM!=00 is reserved", v246, v247, v248, v249, v250, "");
    goto LABEL_126;
  }

  if ((v52 & 4) != 0)
  {
    if (v54 == 3)
    {
      goto LABEL_97;
    }

    if ((v52 & 3) == 0)
    {
      v82 = nrCopyLogObj_2201();
      v83 = v82;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v271 = os_log_type_enabled(v82, OS_LOG_TYPE_ERROR);

        if (!v271)
        {
          goto LABEL_269;
        }
      }

      v22 = nrCopyLogObj_2201();
      _NRLogWithArgs(v22, 16, "%s%.30s:%-4d M=0 DAC=1 DAM=00 is reserved", v272, v273, v274, v275, v276, "");
      goto LABEL_126;
    }

    if (v54 == 1)
    {
      *(a5 + 24) = *a8;
      goto LABEL_221;
    }

    *(a5 + 24) = *a8;
    *(a5 + 32) = *&v45[v49];
  }

  else
  {
    if (v54 == 3)
    {
LABEL_97:
      *(a5 + 24) = *a8;
      goto LABEL_98;
    }

    if ((v52 & 3) == 0)
    {
LABEL_166:
      *(a5 + 24) = *&v45[v49];
      LODWORD(v49) = v49 + 16;
      goto LABEL_98;
    }

    if (v54 == 1)
    {
      *(a5 + 24) = -32514;
      *(a5 + 26) = 0;
      *(a5 + 30) = 0;
LABEL_221:
      *(a5 + 32) = *&v45[v49];
      LODWORD(v49) = v49 + 8;
      goto LABEL_98;
    }

    *(a5 + 24) = -32514;
    *(a5 + 26) = 0;
    *(a5 + 35) = -257;
    *(a5 + 37) = 0;
    *(a5 + 38) = *&v45[v49];
  }

  LODWORD(v49) = v49 + 2;
LABEL_98:
  v55 = v44 + v49;
  if (a3 == 3)
  {
    v56 = v44 + v49;
  }

  else
  {
    v56 = 0;
  }

  *(a5 + 4) = bswap32(v9 - v56) >> 16;
  if ((v9 - v56 + 40) > a6)
  {
    v81 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {

LABEL_215:
      v22 = nrCopyLogObj_2201();
      StringFromNRTLVType = createStringFromNRTLVType(a3);
      _NRLogWithArgs(v22, 16, "%s%.30s:%-4d packet too big %@ tlvLen=%u payloadLength=%u packetLength=%u", v173, v174, v175, v176, v177, "");
      goto LABEL_125;
    }

    v171 = v81;
    v172 = os_log_type_enabled(v81, OS_LOG_TYPE_ERROR);

    if (v172)
    {
      goto LABEL_215;
    }

LABEL_269:
    v66 = 0;
    goto LABEL_117;
  }

  v285 = v55;
  v286 = (v9 - v56 + 40);
  v289 = v9 - v56 + 40;
  v288 = a6;
  v290 = v13;
  v291 = v11;
  if (v56 == v9)
  {
    goto LABEL_115;
  }

  v57 = 0;
  v58 = (v9 - v56);
  v59 = v10;
  v60 = v10;
  v61 = (v291 + 8);
  v284 = (v56 + 3);
  v62 = v56 + 3;
  while (1)
  {
    v63 = *v61;
    if (!v62)
    {
      goto LABEL_109;
    }

    if (v62 <= v63)
    {
      break;
    }

    v62 -= v63;
LABEL_105:
    v61 += 4;
    if (!--v60)
    {
      goto LABEL_114;
    }
  }

  if (v62 >= v63)
  {
LABEL_113:
    v62 = 0;
    goto LABEL_105;
  }

LABEL_109:
  v64 = v63 - v62;
  if (v64 >= v58 - v57)
  {
    v65 = v58 - v57;
  }

  else
  {
    v65 = v64;
  }

  memcpy((a5 + 40 + v57), (*(v61 - 1) + v62), v65);
  v57 += v65;
  if (v57 < v58)
  {
    goto LABEL_113;
  }

LABEL_114:
  if (v57 != v58)
  {
    v87 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {

      v88 = v284;
    }

    else
    {
      v186 = v87;
      v187 = os_log_type_enabled(v87, OS_LOG_TYPE_ERROR);

      v88 = v284;
      if (!v187)
      {
        goto LABEL_226;
      }
    }

    v188 = nrCopyLogObj_2201();
    v279 = createIOVecString(v291, v59);
    _NRLogWithArgs(v188, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", v189, v190, v191, v192, v193, "");

LABEL_226:
    v194 = _os_log_pack_size();
    MEMORY[0x28223BE20](v194, v195);
    v196 = *__error();
    v197 = _os_log_pack_fill();
    v198 = createIOVecString(v291, v59);
    __os_log_helper_1_2_5_8_34_4_0_4_0_4_0_8_64(v197, "nrWriteIOVecToBuffer", v57, v58, v88, v198);
    v199 = nrCopyLogObj_2201();
    _NRLogAbortWithPack(v199);
  }

LABEL_115:
  if (gNRPacketLoggingEnabled != 1)
  {
    v66 = v289;
    goto LABEL_117;
  }

  v84 = nrCopyLogObj_2201();
  v85 = v288;
  v66 = v289;
  if (sNRCopyLogToStdErr == 1)
  {

    v86 = v287;
    goto LABEL_223;
  }

  v178 = v84;
  v179 = os_log_type_enabled(v84, OS_LOG_TYPE_INFO);

  v86 = v287;
  if (v179)
  {
LABEL_223:
    v180 = nrCopyLogObj_2201();
    v277 = NRDCreateIPHCString(v86, v285);
    PacketString = createPacketString(a5, v85);
    _NRLogWithArgs(v180, 1, "%s%.30s:%-4d Decompressed 6LoWPAN data from %u to %u, %@ to %@", v181, v182, v183, v184, v185, "");
  }

LABEL_117:
  LOWORD(v9) = v66;
LABEL_118:
  v67 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t NRBluetoothParserReadInputCallback(uint64_t a1, void *a2, size_t a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    v35 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v37 = v35;
      v38 = os_log_type_enabled(v35, OS_LOG_TYPE_FAULT);

      if (!v38)
      {
        return 0;
      }
    }

    v14 = nrCopyLogObj_560();
    _NRLogWithArgs(v14, 17, "%s called with null buffer", v39, v40, v41, v42, v43, "NRBluetoothParserReadInputCallback");
LABEL_40:
    v15 = 0;
    goto LABEL_31;
  }

  if (!a4)
  {
    v36 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v44 = v36;
      v45 = os_log_type_enabled(v36, OS_LOG_TYPE_FAULT);

      if (!v45)
      {
        return 0;
      }
    }

    v14 = nrCopyLogObj_560();
    _NRLogWithArgs(v14, 17, "%s called with null handledBufferLength", v46, v47, v48, v49, v50, "NRBluetoothParserReadInputCallback");
    goto LABEL_40;
  }

  if (!a1)
  {
    return 0;
  }

  v12 = *(a1 + 16);
  v14 = v12;
  if (*(v12 + 13) != 4)
  {
    if (gNRPacketLoggingEnabled != 1)
    {
      goto LABEL_7;
    }

    v52 = _NRCopyLogObjectForNRUUID(v12[6]);
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v53 = v52;
      v54 = os_log_type_enabled(v52, OS_LOG_TYPE_INFO);

      if (!v54)
      {
        goto LABEL_7;
      }
    }

    v55 = _NRCopyLogObjectForNRUUID(v14[6]);
    StringFromNRLinkChannelPriority = createStringFromNRLinkChannelPriority(*(a1 + 42));
    _NRLogWithArgs(v55, 1, "%s%.30s:%-4d Link input available - %@", v56, v57, v58, v59, v60, "");

LABEL_7:
    v16 = *(a1 + 42);
    v17 = 576;
    if (v16 == 3)
    {
      v17 = 592;
    }

    v18 = v16 == 2;
    v19 = 608;
    if (!v18)
    {
      v19 = v17;
    }

    *(v14 + v19) = *(v14 + v19) + a3;
    if ((*(a1 + 43) & 1) == 0)
    {
      v20 = _NRCopyLogObjectForNRUUID(v14[6]);
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v25 = v20;
        v26 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

        if (!v26)
        {
LABEL_20:
          v15 = 0;
          *a4 = 0;
          goto LABEL_31;
        }
      }

      v27 = _NRCopyLogObjectForNRUUID(v14[6]);
      _NRLogWithArgs(v27, 0, "%s%.30s:%-4d not ready to accept data", v28, v29, v30, v31, v32, "");

      goto LABEL_20;
    }

    if ((*(a1 + 43) & 2) != 0)
    {
      if (*(v14 + 9) == 1)
      {
        if (*(v14 + 10) == 1)
        {
          v33 = NRLinkLinkToNexusLoop6LoWPANPacket(v14, a1, a2, a3, a4, a5, a6, v13);
        }

        else
        {
          v33 = NRLinkLinkToNexusLoopPacket(v14, a1, a2, a3, a4, a5, a6, v13);
        }
      }

      else
      {
        v33 = NRBluetoothPacketParserLinkToNexusLoopFastPath(v14, a1, a2, a3, a4, a5);
      }

      v15 = v33;
      goto LABEL_31;
    }

    if (*(v14 + 13) == 4)
    {
LABEL_28:
      *a4 = a3;
      v15 = 1;
      goto LABEL_31;
    }

    v21 = *a1;
    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (*(a1 + 42) - 1 > 2)
    {
      v24 = &unk_286D2CF68;
    }

    else
    {
      v24 = qword_27996B010[(*(a1 + 42) - 1)];
    }

    memcpy(&v21[*(a1 + 24)], a2, a3);
    *(a1 + 24) += a3;
    if (gNRPacketLoggingEnabled != 1)
    {
LABEL_27:
      v34 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a2 length:a3];
      [v23 setObject:v24 forKeyedSubscript:@"channel-id"];
      [v23 setObject:v34 forKeyedSubscript:@"message-data"];
      [v23 setObject:&unk_286D2CF80 forKeyedSubscript:@"message-pre-act"];
      [v22 setObject:v23 forKeyedSubscript:@"message"];
      [(NRBluetoothPacketParser *)v14 sendXPCDictionary:v22];

      goto LABEL_28;
    }

    v61 = _NRCopyLogObjectForNRUUID(v14[6]);
    v62 = v61;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v63 = os_log_type_enabled(v61, OS_LOG_TYPE_INFO);

      if (!v63)
      {
        goto LABEL_27;
      }
    }

    v64 = _NRCopyLogObjectForNRUUID(v14[6]);
    v71 = *(a1 + 24);
    v72 = *(a1 + 42);
    _NRLogWithArgs(v64, 1, "%s%.30s:%-4d Reading link input, setting filledIn=%u (linkChannelPriority=%u)", v65, v66, v67, v68, v69, "");

    goto LABEL_27;
  }

  v15 = 0;
LABEL_31:

  return v15;
}

uint64_t nrPacketToTLV(unsigned __int8 *a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v488 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v29 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v42 = v29;
      v43 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

      if (!v43)
      {
        goto LABEL_76;
      }
    }

    v44 = nrCopyLogObj_2201();
    _NRLogWithArgs(v44, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (packetBuffer) != ((void*)0)", v45, v46, v47, v48, v49, "");

    goto LABEL_76;
  }

  if (!a2)
  {
    v30 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v50 = v30;
      v51 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

      if (!v51)
      {
        goto LABEL_76;
      }
    }

    v52 = nrCopyLogObj_2201();
    _NRLogWithArgs(v52, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: packetLength > 0", v53, v54, v55, v56, v57, "");

    goto LABEL_76;
  }

  v7 = a3;
  if (!a3)
  {
    v31 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v58 = v31;
      v59 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);

      if (!v59)
      {
LABEL_76:
        _os_log_pack_size();
        MEMORY[0x28223BE20]();
        v66 = *__error();
        v67 = _os_log_pack_fill();
        *v67 = 136446210;
        v68 = "nrPacketToTLV";
LABEL_316:
        *(v67 + 4) = v68;
        goto LABEL_317;
      }
    }

    v60 = nrCopyLogObj_2201();
    _NRLogWithArgs(v60, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (ioVecs) != ((void*)0)", v61, v62, v63, v64, v65, "");

    goto LABEL_76;
  }

  v8 = a4;
  if (!a4)
  {
    v32 = nrCopyLogObj_2201();
    v33 = "nrPacketToTLV";
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v69 = v32;
      v70 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

      if (!v70)
      {
LABEL_79:
        _os_log_pack_size();
        MEMORY[0x28223BE20]();
        v77 = *__error();
        goto LABEL_303;
      }
    }

    v71 = nrCopyLogObj_2201();
    _NRLogWithArgs(v71, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 0", v72, v73, v74, v75, v76, "");

    goto LABEL_79;
  }

  if (!a5)
  {
    v34 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v78 = v34;
      v79 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);

      if (!v79)
      {
        goto LABEL_85;
      }
    }

    v80 = nrCopyLogObj_2201();
    _NRLogWithArgs(v80, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (srcAddr) != ((void*)0)", v81, v82, v83, v84, v85, "");

    goto LABEL_85;
  }

  if (!a6)
  {
    v35 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v86 = v35;
      v87 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

      if (!v87)
      {
LABEL_85:
        _os_log_pack_size();
        MEMORY[0x28223BE20]();
        v94 = *__error();
        v67 = _os_log_pack_fill();
        *v67 = 136446210;
        v68 = "nrPacketTo6LoWPANTLV";
        goto LABEL_316;
      }
    }

    v88 = nrCopyLogObj_2201();
    _NRLogWithArgs(v88, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (dstAddr) != ((void*)0)", v89, v90, v91, v92, v93, "");

    goto LABEL_85;
  }

  v9 = a1;
  PacketString = a1;
  v479 = a2;
  if (a2 <= 0x27)
  {
    v36 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v95 = v36;
      v96 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);

      if (!v96)
      {
        goto LABEL_101;
      }
    }

    v97 = nrCopyLogObj_2201();
    _NRLogWithArgs(v97, 1, "%s%.30s:%-4d no 6lo compression - too short %u", v98, v99, v100, v101, v102, "");
  }

  else
  {
    v10 = *a1 >> 4;
    if (v10 == 6)
    {
      if (gNRPacketLoggingEnabled != 1)
      {
LABEL_10:
        v11 = (a2 - 40);
        if (v11 == bswap32(*(v9 + 2)) >> 16)
        {
          v12 = v9 + 8;
          v14 = *(v9 + 1) != *a5 || *(v9 + 2) != *(a5 + 8);
          v15 = v9 + 24;
          v17 = *(v9 + 3) != *a6 || *(v9 + 4) != *(a6 + 8);
          memset(&v487[4] + 1, 0, 27);
          *(v487 + 1) = 0u;
          v486 = 0;
          memset(v485, 0, sizeof(v485));
          v18 = bswap32(*v9);
          if ((v18 & 0xFF00000) != 0)
          {
            LOBYTE(v485[0]) = v18 >> 20;
            v19 = 1;
            v20 = 112;
          }

          else
          {
            v19 = 0;
            v20 = 120;
          }

          LOBYTE(v487[0]) = v20;
          *(v485 | v19) = v9[6];
          v21 = v19 + 1;
          v22 = v9[7];
          switch(v22)
          {
            case 64:
              v23 = v20 | 2;
              break;
            case 255:
              v23 = v20 | 3;
              break;
            case 1:
              v23 = v20 | 1;
              break;
            default:
              *(v485 | v21) = v22;
              LODWORD(v21) = v19 | 2;
              if (v14)
              {
LABEL_29:
                if (*v12 == *a5 && (*(v9 + 18) == *(a5 + 10) ? (v24 = *(v9 + 11) == *(a5 + 14)) : (v24 = 0), v24))
                {
                  v26 = 96;
                  BYTE1(v487[0]) = 96;
                  v27 = (v485 | v21);
                  v28 = *(v9 + 8);
                }

                else
                {
                  if (*v12 != 254 || (v9[9] & 0xC0) != 0x80)
                  {
                    v26 = 0;
                    *(v485 | v21) = *v12;
                    LODWORD(v21) = v21 | 0x10;
                    goto LABEL_144;
                  }

                  if (*v12 != 33022 || *(v9 + 14) != 0xFEFF0000000000)
                  {
                    v26 = 16;
                    BYTE1(v487[0]) = 16;
                    *(v485 | v21) = *(v9 + 2);
                    LODWORD(v21) = v21 | 8;
                    goto LABEL_144;
                  }

                  v26 = 32;
                  BYTE1(v487[0]) = 32;
                  v28 = *(v9 + 11);
                  v27 = (v485 | v21);
                }

                *v27 = v28;
                LODWORD(v21) = v21 + 2;
LABEL_144:
                v159 = *v15;
                if (v159 != 255)
                {
                  if (!v17)
                  {
                    BYTE1(v487[0]) = v26 | 3;
                    goto LABEL_166;
                  }

                  if (*v15 == *a6 && *(v9 + 34) == *(a6 + 10) && *(v9 + 19) == *(a6 + 14))
                  {
                    BYTE1(v487[0]) = v26 | 6;
                    v162 = *(v9 + 16);
LABEL_161:
                    *(v485 + v21) = v162;
                    LODWORD(v21) = v21 + 2;
                    goto LABEL_166;
                  }

                  if (v159 == 254 && (v9[25] & 0xC0) == 0x80)
                  {
                    if (*v15 != 33022 || *(v9 + 30) != 0xFEFF0000000000)
                    {
                      BYTE1(v487[0]) = v26 | 1;
                      *(v485 + v21) = *(v9 + 4);
                      LODWORD(v21) = v21 + 8;
                      goto LABEL_166;
                    }

                    BYTE1(v487[0]) = v26 | 2;
                    v162 = *(v9 + 19);
                    goto LABEL_161;
                  }

                  goto LABEL_165;
                }

                BYTE1(v487[0]) = v26 | 8;
                if (*v15 ^ 0x2FFLL | *(v9 + 31))
                {
                  if (v9[36])
                  {
                    if (v9[34])
                    {
LABEL_165:
                      *(v485 + v21) = *v15;
                      LODWORD(v21) = v21 + 16;
                      goto LABEL_166;
                    }

                    BYTE1(v487[0]) = v26 | 9;
                    *(v485 + v21) = v9[25];
                    v304 = v485 + (v21 + 1);
                    *v304 = *(v9 + 35);
                    v304[4] = v9[39];
                    LODWORD(v21) = v21 + 6;
                  }

                  else
                  {
                    BYTE1(v487[0]) = v26 | 0xA;
                    *(v485 + v21) = v9[25];
                    v303 = v485 + (v21 + 1);
                    *v303 = *(v9 + 37);
                    v303[2] = v9[39];
                    LODWORD(v21) = v21 + 4;
                  }
                }

                else
                {
                  BYTE1(v487[0]) = v26 | 0xB;
                  *(v485 + v21) = v9[39];
                  LODWORD(v21) = v21 + 1;
                }

LABEL_166:
                __memcpy_chk();
                if (v21 > 4)
                {
                  if (v21 == 5)
                  {
                    if (v487[0] == 3303034 && *(v487 + 3) == 201329664)
                    {
                      v168 = 0;
                      v167 = 0;
                      LODWORD(v21) = 5;
                      v169 = 104;
                      goto LABEL_194;
                    }
                  }

                  else if (v21 == 6 && *v487 == 0xC000C0032026672)
                  {
                    v168 = 0;
                    v167 = 0;
                    LODWORD(v21) = 6;
                    v169 = 105;
                    goto LABEL_194;
                  }
                }

                else
                {
                  if (v21 == 1)
                  {
                    if (LOWORD(v487[0]) == 13178 && BYTE2(v487[0]) == 50)
                    {
                      v168 = 0;
                      v167 = 0;
                      LODWORD(v21) = 1;
                      v169 = 100;
                    }

                    else
                    {
                      v171 = bswap32(LOWORD(v487[0]) | (BYTE2(v487[0]) << 16));
                      v164 = v171 >= 0x7A330600;
                      v172 = v171 > 0x7A330600;
                      v173 = !v164;
                      LODWORD(v21) = 1;
                      if (v172 != v173)
                      {
                        v167 = 3;
                        goto LABEL_193;
                      }

                      v168 = 0;
                      v167 = 0;
                      v169 = 102;
                    }

LABEL_194:
                    v175 = v11 + v167;
                    **v7 = v169;
                    v176 = v7[2];
                    v482 = v11 + v167;
                    LODWORD(v478) = v169;
                    if (v176 >= 3)
                    {
                      *(*v7 + 1) = bswap32(v175) >> 16;
LABEL_196:
                      v483 = v8;
                      if (!v168)
                      {
                        goto LABEL_223;
                      }

                      v476 = v167;
                      v477 = v168;
                      LODWORD(StringFromNRTLVType) = v8;
                      v177 = 0;
                      v178 = v7;
                      v179 = v7 + 2;
                      v180 = 3;
                      v181 = v483;
                      while (1)
                      {
                        v182 = *v179;
                        if (!v180)
                        {
                          goto LABEL_203;
                        }

                        if (v180 <= v182)
                        {
                          break;
                        }

                        v180 -= v182;
LABEL_199:
                        v179 += 4;
                        if (!--v181)
                        {
                          goto LABEL_208;
                        }
                      }

                      if (v180 >= v182)
                      {
LABEL_207:
                        v180 = 0;
                        goto LABEL_199;
                      }

LABEL_203:
                      v183 = v182 - v180;
                      if (v183 >= 2 - v177)
                      {
                        v184 = 2 - v177;
                      }

                      else
                      {
                        v184 = v183;
                      }

                      memcpy((*(v179 - 1) + v180), v487 + v177, v184);
                      v177 += v184;
                      if (v177 <= 1)
                      {
                        goto LABEL_207;
                      }

LABEL_208:
                      if (v177 != 2)
                      {
                        goto LABEL_304;
                      }

                      v7 = v178;
                      v9 = PacketString;
                      if (!v21)
                      {
                        goto LABEL_222;
                      }

                      v185 = 0;
                      v186 = v7 + 2;
                      v187 = 5;
                      v188 = v483;
                      while (2)
                      {
                        v189 = *v186;
                        if (v187)
                        {
                          if (v187 > v189)
                          {
                            v187 -= v189;
                          }

                          else
                          {
                            if (v187 < v189)
                            {
                              break;
                            }

LABEL_220:
                            v187 = 0;
                          }

                          v186 += 4;
                          if (!--v188)
                          {
                            goto LABEL_221;
                          }

                          continue;
                        }

                        break;
                      }

                      v190 = v189 - v187;
                      if (v190 >= v21 - v185)
                      {
                        v191 = v21 - v185;
                      }

                      else
                      {
                        v191 = v190;
                      }

                      memcpy((*(v186 - 1) + v187), v485 + v185, v191);
                      v185 += v191;
                      if (v185 < v21)
                      {
                        goto LABEL_220;
                      }

LABEL_221:
                      if (v185 != v21)
                      {
                        goto LABEL_304;
                      }

LABEL_222:
                      v8 = StringFromNRTLVType;
                      v167 = v476;
                      v168 = v477;
LABEL_223:
                      if (!v11)
                      {
                        goto LABEL_236;
                      }

                      v192 = 0;
                      v193 = v9 + 40;
                      v194 = v167 + 3;
                      v195 = v7 + 2;
                      v196 = v483;
                      while (2)
                      {
                        v197 = *v195;
                        if (v194)
                        {
                          if (v194 > v197)
                          {
                            v194 -= v197;
                          }

                          else
                          {
                            if (v194 < v197)
                            {
                              break;
                            }

LABEL_234:
                            v194 = 0;
                          }

                          v195 += 4;
                          if (!--v196)
                          {
                            goto LABEL_235;
                          }

                          continue;
                        }

                        break;
                      }

                      v198 = v197 - v194;
                      if (v198 >= v11 - v192)
                      {
                        v199 = v11 - v192;
                      }

                      else
                      {
                        v199 = v198;
                      }

                      memcpy((*(v195 - 1) + v194), &v193[v192], v199);
                      v192 += v199;
                      if (v192 < v11)
                      {
                        goto LABEL_234;
                      }

LABEL_235:
                      if (v192 == v11)
                      {
LABEL_236:
                        if (v168)
                        {
                          v200 = 0;
                          v201 = 0;
                          v202 = 0;
                          v203 = 0;
                          v204 = v482 + 3;
                          v205 = v7 + 2;
                          while (1)
                          {
                            v206 = v204 - v201;
                            if (v204 <= v201)
                            {
                              LODWORD(v207) = 0;
                              goto LABEL_261;
                            }

                            v207 = *v205 >= v206 ? v206 : *v205;
                            if (!v207)
                            {
                              break;
                            }

                            v208 = *(v205 - 1);
                            if (v202)
                            {
                              LODWORD(StringFromNRTLVType) = v8;
                              v209 = v208;
                              v484 = *v208 << 8;
                              v203 = MEMORY[0x25F874350](&v484, 2, v203);
                              if (v207 != 1)
                              {
                                v203 = MEMORY[0x25F874350](v209 + 1, (v207 - 1), v203);
                              }

                              v8 = StringFromNRTLVType;
                            }

                            else
                            {
                              v203 = MEMORY[0x25F874350](v208, v207, v203);
                            }

                            if (v207)
                            {
                              v202 ^= 1u;
                            }

                            v201 += v207;
                            if (v201 >= v204 && v207 < *v205)
                            {
                              goto LABEL_261;
                            }

                            ++v200;
                            v205 += 4;
                            if (v483 == v200)
                            {
                              LOWORD(v200) = v8;
LABEL_261:
                              v214 = v482;
                              if (v201 == v204)
                              {
                                v215 = ~v203;
                                v216 = &v7[4 * v200];
                                v217 = v216[2];
                                if (v217 < v207 + 2)
                                {
                                  v218 = 0x280D73000;
                                  if (v217 < v207 + 1)
                                  {
                                    v300 = nrCopyLogObj_2201();
                                    if (sNRCopyLogToStdErr == 1)
                                    {
                                    }

                                    else
                                    {
                                      v307 = v300;
                                      v308 = os_log_type_enabled(v300, OS_LOG_TYPE_ERROR);

                                      if (!v308)
                                      {
                                        goto LABEL_368;
                                      }
                                    }

                                    v309 = nrCopyLogObj_2201();
                                    IOVecString = createIOVecString(v7, v8);
                                    _NRLogWithArgs(v309, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecs[iovecIndex].len >= bytesToCheckThisIOVec + 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", v310, v311, v312, v313, v314, "");
                                  }

                                  else if (v200 + 1 >= v8)
                                  {
                                    v301 = nrCopyLogObj_2201();
                                    if (sNRCopyLogToStdErr == 1)
                                    {
                                    }

                                    else
                                    {
                                      v315 = v301;
                                      v316 = os_log_type_enabled(v301, OS_LOG_TYPE_ERROR);

                                      if (!v316)
                                      {
                                        goto LABEL_368;
                                      }
                                    }

                                    v317 = nrCopyLogObj_2201();
                                    v464 = createIOVecString(v7, v8);
                                    _NRLogWithArgs(v317, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecIndex + 1 < numIOVecs; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", v318, v319, v320, v321, v322, "");
                                  }

                                  else
                                  {
                                    v219 = &v7[4 * v200 + 4];
                                    if (v219[2])
                                    {
                                      *(*v216 + v207) = v215;
                                      v220 = *v219;
                                      goto LABEL_268;
                                    }

                                    v302 = nrCopyLogObj_2201();
                                    if (sNRCopyLogToStdErr == 1)
                                    {

                                      goto LABEL_367;
                                    }

                                    v323 = v302;
                                    v324 = os_log_type_enabled(v302, OS_LOG_TYPE_ERROR);

                                    if (v324)
                                    {
LABEL_367:
                                      v325 = nrCopyLogObj_2201();
                                      v465 = createIOVecString(v7, v8);
                                      _NRLogWithArgs(v325, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecs[iovecIndex + 1].len >= 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", v326, v327, v328, v329, v330, "");
                                    }
                                  }

LABEL_368:
                                  _os_log_pack_size();
                                  MEMORY[0x28223BE20]();
                                  v331 = *__error();
                                  v332 = _os_log_pack_fill();
                                  v333 = createIOVecString(v7, v8);
                                  __os_log_helper_1_2_4_8_34_8_64_4_0_4_0(v332, "nrChecksumIOVecInner", v333, v200, v207);
LABEL_390:
                                  v385 = nrCopyLogObj_2201();
                                  _NRLogAbortWithPack(v385);
                                }

                                *(*v216 + v207) = v215;
                                v220 = (*v216 + v207 + 1);
                                v218 = 0x280D73000;
LABEL_268:
                                *v220 = HIBYTE(v215);
LABEL_293:
                                if (*(v218 + 3640) != 1)
                                {
LABEL_294:
                                  v156 = v214;
                                  goto LABEL_295;
                                }

                                v246 = nrCopyLogObj_2201();
                                if (sNRCopyLogToStdErr == 1)
                                {
                                }

                                else
                                {
                                  v267 = v246;
                                  v268 = os_log_type_enabled(v246, OS_LOG_TYPE_INFO);

                                  if (!v268)
                                  {
                                    goto LABEL_294;
                                  }
                                }

                                v269 = nrCopyLogObj_2201();
                                StringFromNRTLVType = createStringFromNRTLVType(v478);
                                v270 = v214;
                                PacketString = createPacketString(PacketString, v479);
                                v271 = NRDCreateIPHCString(v487, 2u);
                                v478 = &v476;
                                if (!v214)
                                {
                                  v282 = objc_alloc_init(MEMORY[0x277CBEA90]);
LABEL_339:
                                  v283 = v282;
                                  v469 = _NRCreateDataString(v282);
                                  v284 = StringFromNRTLVType;
                                  v285 = PacketString;
                                  _NRLogWithArgs(v269, 1, "%s%.30s:%-4d Used 6LowPAN IPHC to compress %@, %u to %u - %@ %@ %@", v286, v287, v288, v289, v290, "");

                                  v214 = v482;
                                  goto LABEL_294;
                                }

                                v272 = v269;
                                v273 = malloc_type_malloc(v214, 0x87367FC4uLL);
                                if (v273)
                                {
                                  v274 = v273;
                                  v275 = 0;
                                  v276 = v7 + 2;
                                  v277 = 3;
                                  while (1)
                                  {
                                    v278 = *v276;
                                    if (!v277)
                                    {
                                      goto LABEL_332;
                                    }

                                    if (v277 <= v278)
                                    {
                                      break;
                                    }

                                    v277 -= v278;
LABEL_328:
                                    v276 += 4;
                                    if (!--v483)
                                    {
                                      goto LABEL_337;
                                    }
                                  }

                                  if (v277 < v278)
                                  {
LABEL_332:
                                    v279 = v278 - v277;
                                    if (v279 >= v214 - v275)
                                    {
                                      v280 = v214 - v275;
                                    }

                                    else
                                    {
                                      v280 = v279;
                                    }

                                    memcpy(&v274[v275], (*(v276 - 1) + v277), v280);
                                    v275 += v280;
                                    if (v275 >= v214)
                                    {
LABEL_337:
                                      if (v275 == v214)
                                      {
                                        v269 = v272;
                                        v281 = objc_alloc(MEMORY[0x277CBEA90]);
                                        v282 = [v281 initWithBytesNoCopy:v274 length:v482 freeWhenDone:1];
                                        goto LABEL_339;
                                      }

                                      v414 = nrCopyLogObj_2201();
                                      v415 = v414;
                                      if (sNRCopyLogToStdErr == 1)
                                      {

                                        goto LABEL_430;
                                      }

                                      v441 = os_log_type_enabled(v414, OS_LOG_TYPE_ERROR);

                                      if (v441)
                                      {
LABEL_430:
                                        v442 = nrCopyLogObj_2201();
                                        v470 = createIOVecString(v7, v8);
                                        _NRLogWithArgs(v442, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", v443, v444, v445, v446, v447, "");
                                      }

                                      _os_log_pack_size();
                                      MEMORY[0x28223BE20]();
                                      v448 = *__error();
                                      v449 = _os_log_pack_fill();
                                      v450 = createIOVecString(v7, v8);
                                      __os_log_helper_1_2_5_8_34_4_0_4_0_4_0_8_64(v449, "nrWriteIOVecToBuffer", v275, v270, 3, v450);

LABEL_428:
                                      v440 = nrCopyLogObj_2201();
                                      _NRLogAbortWithPack(v440);
                                    }
                                  }

                                  v277 = 0;
                                  goto LABEL_328;
                                }

                                v451 = nrCopyLogObj_2201();
                                v452 = v451;
                                v33 = "createNSDataFromTLVIOVec";
                                if (sNRCopyLogToStdErr == 1)
                                {

                                  goto LABEL_435;
                                }

                                v453 = os_log_type_enabled(v451, OS_LOG_TYPE_ERROR);

                                if (v453)
                                {
LABEL_435:
                                  v454 = nrCopyLogObj_2201();
                                  _NRLogWithArgs(v454, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", v455, v456, v457, v458, v459, "");
                                }

                                _os_log_pack_size();
                                MEMORY[0x28223BE20]();
                                v460 = *__error();
LABEL_303:
                                v242 = _os_log_pack_fill();
                                *v242 = 136446210;
                                *(v242 + 4) = v33;
LABEL_317:
                                v256 = nrCopyLogObj_2201();
                                _NRLogAbortWithPack(v256);
                              }

                              v291 = nrCopyLogObj_2201();
                              v33 = "nrChecksumIOVecInner";
                              if (sNRCopyLogToStdErr == 1)
                              {

                                goto LABEL_346;
                              }

                              v292 = v291;
                              v293 = os_log_type_enabled(v291, OS_LOG_TYPE_ERROR);

                              if (v293)
                              {
LABEL_346:
                                v294 = nrCopyLogObj_2201();
                                _NRLogWithArgs(v294, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: computedBytes == writtenLength", v295, v296, v297, v298, v299, "");
                              }

LABEL_302:
                              _os_log_pack_size();
                              MEMORY[0x28223BE20]();
                              v241 = *__error();
                              goto LABEL_303;
                            }
                          }

                          v232 = nrCopyLogObj_2201();
                          v33 = "nrChecksumUpdate";
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v233 = v232;
                            v234 = os_log_type_enabled(v232, OS_LOG_TYPE_ERROR);

                            if (!v234)
                            {
                              goto LABEL_302;
                            }
                          }

                          v235 = nrCopyLogObj_2201();
                          _NRLogWithArgs(v235, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen > 0", v236, v237, v238, v239, v240, "");

                          goto LABEL_302;
                        }

                        v210 = v7[2];
                        if (v210 >= 3)
                        {
                          v211 = *(*v7 + 1);
                          v212 = v211 >> 8;
LABEL_280:
                          v222 = 0;
                          v223 = v7 + 2;
                          v224 = **v7;
                          LOBYTE(v484) = v211 ^ (v224 >> 4);
                          HIBYTE(v484) = v212 ^ (16 * v224);
                          v225 = __rev16(v211 | (v212 << 8)) + 3;
                          v226 = v483;
                          while (1)
                          {
                            v227 = *v223;
                            if (!v225)
                            {
                              goto LABEL_286;
                            }

                            if (v225 <= v227)
                            {
                              break;
                            }

                            v225 -= v227;
LABEL_282:
                            v223 += 4;
                            if (!--v226)
                            {
                              goto LABEL_291;
                            }
                          }

                          if (v225 < v227)
                          {
LABEL_286:
                            v228 = v227 - v225;
                            if (v228 >= 2 - v222)
                            {
                              v229 = 2 - v222;
                            }

                            else
                            {
                              v229 = v228;
                            }

                            memcpy((*(v223 - 1) + v225), &v484 + v222, v229);
                            v222 += v229;
                            if (v222 > 1)
                            {
LABEL_291:
                              if (v222 == 2)
                              {
                                v218 = 0x280D73000uLL;
                                v214 = v482;
                                goto LABEL_293;
                              }

LABEL_304:
                              v243 = nrCopyLogObj_2201();
                              if (sNRCopyLogToStdErr == 1)
                              {

                                goto LABEL_314;
                              }

                              v247 = v243;
LABEL_313:
                              v248 = os_log_type_enabled(v243, OS_LOG_TYPE_ERROR);

                              if (v248)
                              {
                                goto LABEL_314;
                              }

                              goto LABEL_315;
                            }
                          }

                          v225 = 0;
                          goto LABEL_282;
                        }

                        if (v210 == 2)
                        {
                          if (v8 != 1)
                          {
                            LOBYTE(v211) = *(*v7 + 1);
                            v213 = *(v7 + 2);
LABEL_279:
                            v212 = *v213;
                            goto LABEL_280;
                          }

                          v306 = nrCopyLogObj_2201();
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v342 = v306;
                            v343 = os_log_type_enabled(v306, OS_LOG_TYPE_ERROR);

                            if (!v343)
                            {
LABEL_374:
                              _os_log_pack_size();
                              MEMORY[0x28223BE20]();
                              v350 = *__error();
                              v67 = _os_log_pack_fill();
                              *v67 = 136446210;
                              v68 = "nrReadTLVLenHBOFromIOVec";
                              goto LABEL_316;
                            }
                          }

                          v344 = nrCopyLogObj_2201();
                          _NRLogWithArgs(v344, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 1", v345, v346, v347, v348, v349, "");

                          goto LABEL_374;
                        }

                        if (v210 != 1)
                        {
                          v305 = nrCopyLogObj_2201();
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v334 = v305;
                            v335 = os_log_type_enabled(v305, OS_LOG_TYPE_ERROR);

                            if (!v335)
                            {
                              goto LABEL_389;
                            }
                          }

                          v336 = nrCopyLogObj_2201();
                          v472 = createIOVecString(v7, v8);
                          _NRLogWithArgs(v336, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: ioVecs[0].len == 1; %@", v337, v338, v339, v340, v341, "");

                          goto LABEL_389;
                        }

                        v221 = v7[6];
                        if (v221 >= 2)
                        {
                          if (v8 != 1)
                          {
                            v211 = **(v7 + 2);
                            v212 = v211 >> 8;
                            goto LABEL_280;
                          }

                          v351 = nrCopyLogObj_2201();
                          v352 = v351;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v357 = os_log_type_enabled(v351, OS_LOG_TYPE_ERROR);

                            if (!v357)
                            {
                              goto LABEL_383;
                            }
                          }

                          v358 = nrCopyLogObj_2201();
                          v473 = createIOVecString(v7, 1);
                          _NRLogWithArgs(v358, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 1; %@", v359, v360, v361, v362, v363, "");

LABEL_383:
                          _os_log_pack_size();
                          MEMORY[0x28223BE20]();
                          v364 = *__error();
                          v365 = _os_log_pack_fill();
                          v366 = createIOVecString(v7, 1);
                          *v365 = 136446466;
                          *(v365 + 4) = "nrReadTLVLenHBOFromIOVec";
                          *(v365 + 12) = 2112;
                          *(v365 + 14) = v366;
                          v367 = nrCopyLogObj_2201();
                          _NRLogAbortWithPack(v367);
                        }

                        if (v8 <= 2)
                        {
                          v353 = nrCopyLogObj_2201();
                          v354 = v353;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v368 = os_log_type_enabled(v353, OS_LOG_TYPE_ERROR);

                            if (!v368)
                            {
                              goto LABEL_389;
                            }
                          }

                          v369 = nrCopyLogObj_2201();
                          v474 = createIOVecString(v7, v8);
                          _NRLogWithArgs(v369, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 2; %@", v370, v371, v372, v373, v374, "");

                          goto LABEL_389;
                        }

                        if (v221 == 1)
                        {
                          LOBYTE(v211) = **(v7 + 2);
                          v213 = *(v7 + 4);
                          goto LABEL_279;
                        }

                        v355 = nrCopyLogObj_2201();
                        v356 = v355;
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v375 = os_log_type_enabled(v355, OS_LOG_TYPE_ERROR);

                          if (!v375)
                          {
LABEL_389:
                            _os_log_pack_size();
                            MEMORY[0x28223BE20]();
                            v382 = *__error();
                            v383 = _os_log_pack_fill();
                            v384 = createIOVecString(v7, v8);
                            *v383 = 136446466;
                            *(v383 + 4) = "nrReadTLVLenHBOFromIOVec";
                            *(v383 + 12) = 2112;
                            *(v383 + 14) = v384;
                            goto LABEL_390;
                          }
                        }

                        v376 = nrCopyLogObj_2201();
                        v475 = createIOVecString(v7, v8);
                        _NRLogWithArgs(v376, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: ioVecs[1].len == 1; %@", v377, v378, v379, v380, v381, "");

                        goto LABEL_389;
                      }

                      v245 = nrCopyLogObj_2201();
                      v33 = "nrWriteBufferToIOVec";
                      if (sNRCopyLogToStdErr == 1)
                      {
                      }

                      else
                      {
                        v258 = v245;
                        v259 = os_log_type_enabled(v245, OS_LOG_TYPE_ERROR);

                        if (!v259)
                        {
LABEL_322:
                          _os_log_pack_size();
                          MEMORY[0x28223BE20]();
                          v266 = *__error();
                          goto LABEL_303;
                        }
                      }

                      v260 = nrCopyLogObj_2201();
                      _NRLogWithArgs(v260, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length", v261, v262, v263, v264, v265, "");

                      goto LABEL_322;
                    }

                    if (v176 == 2)
                    {
                      *(*v7 + 1) = BYTE1(v175);
                      v244 = *(v7 + 2);
                    }

                    else
                    {
                      v257 = *(v7 + 2);
                      if (v7[6] >= 2u)
                      {
                        *v257 = bswap32(v175) >> 16;
                        goto LABEL_196;
                      }

                      *(v257 + 1) = BYTE1(v175);
                      v244 = *(v7 + 4);
                    }

                    *v244 = v175;
                    goto LABEL_196;
                  }

                  if (v21 == 2)
                  {
                    if (v487[0] == 839005042)
                    {
                      v168 = 0;
                      v167 = 0;
                      LODWORD(v21) = 2;
                      v169 = 101;
                    }

                    else
                    {
                      v163 = bswap32(v487[0]);
                      v164 = v163 >= 0x72330206;
                      v165 = v163 > 0x72330206;
                      v166 = !v164;
                      LODWORD(v21) = 2;
                      if (v165 != v166)
                      {
                        v167 = 4;
LABEL_193:
                        v168 = 1;
                        v169 = 3;
                        goto LABEL_194;
                      }

                      v168 = 0;
                      v167 = 0;
                      v169 = 103;
                    }

                    goto LABEL_194;
                  }
                }

                v167 = v21 + 2;
                goto LABEL_193;
              }

LABEL_143:
              v26 = 48;
              BYTE1(v487[0]) = 48;
              goto LABEL_144;
          }

          LOBYTE(v487[0]) = v23;
          if (v14)
          {
            goto LABEL_29;
          }

          goto LABEL_143;
        }

        v41 = nrCopyLogObj_2201();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v112 = v41;
          v113 = os_log_type_enabled(v41, OS_LOG_TYPE_INFO);

          if (!v113)
          {
            goto LABEL_101;
          }
        }

        v97 = nrCopyLogObj_2201();
        v462 = bswap32(*(PacketString + 2)) >> 16;
        _NRLogWithArgs(v97, 1, "%s%.30s:%-4d Avoiding compression of strange length payload %u expected %u", v114, v115, v116, v117, v118, "");
        goto LABEL_100;
      }

      v38 = a5;
      v39 = a6;
      v40 = nrCopyLogObj_2201();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v104 = v40;
        v105 = os_log_type_enabled(v40, OS_LOG_TYPE_INFO);

        v9 = PacketString;
        a6 = v39;
        a5 = v38;
        if (!v105)
        {
          goto LABEL_10;
        }
      }

      v106 = nrCopyLogObj_2201();
      v461 = createPacketString(PacketString, a2);
      _NRLogWithArgs(v106, 1, "%s%.30s:%-4d Got [%@] total len %u", v107, v108, v109, v110, v111, "");

      v9 = PacketString;
      a5 = v38;
      a6 = v39;
      goto LABEL_10;
    }

    if (v10 == 4)
    {
      v37 = nrCopyLogObj_2201();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v119 = v37;
        v120 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);

        if (!v120)
        {
          goto LABEL_101;
        }
      }

      v97 = nrCopyLogObj_2201();
      IPProtoString = createIPProtoString(PacketString[9]);
      _NRLogWithArgs(v97, 1, "%s%.30s:%-4d no 6lo compression - IPv4 - %@", v121, v122, v123, v124, v125, "");
    }

    else
    {
      v103 = nrCopyLogObj_2201();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v126 = v103;
        v127 = os_log_type_enabled(v103, OS_LOG_TYPE_INFO);

        if (!v127)
        {
          goto LABEL_101;
        }
      }

      v97 = nrCopyLogObj_2201();
      _NRLogWithArgs(v97, 1, "%s%.30s:%-4d no 6lo compression - not IPv6 - v=%u", v128, v129, v130, v131, v132, "");
    }
  }

LABEL_100:

LABEL_101:
  **v7 = 2;
  v133 = v7[2];
  if (v133 <= 2)
  {
    if (v133 == 2)
    {
      v134 = v479;
      *(*v7 + 1) = BYTE1(v479);
      v396 = *(v7 + 2);
    }

    else
    {
      v399 = *(v7 + 2);
      if (v7[6] >= 2u)
      {
        v134 = v479;
        *v399 = __rev16(v479);
        goto LABEL_103;
      }

      v134 = v479;
      *(v399 + 1) = BYTE1(v479);
      v396 = *(v7 + 4);
    }

    *v396 = v134;
    goto LABEL_103;
  }

  v134 = v479;
  *(*v7 + 1) = __rev16(v479);
LABEL_103:
  v135 = 0;
  v136 = v8;
  v137 = v7 + 2;
  v138 = 3;
  v139 = v8;
  while (1)
  {
    v140 = *v137;
    if (!v138)
    {
      goto LABEL_109;
    }

    if (v138 <= v140)
    {
      break;
    }

    v138 -= v140;
LABEL_105:
    v137 += 4;
    if (!--v139)
    {
      goto LABEL_114;
    }
  }

  if (v138 >= v140)
  {
LABEL_113:
    v138 = 0;
    goto LABEL_105;
  }

LABEL_109:
  v141 = v140 - v138;
  if (v141 >= v134 - v135)
  {
    v142 = v134 - v135;
  }

  else
  {
    v142 = v141;
  }

  memcpy((*(v137 - 1) + v138), &PacketString[v135], v142);
  v135 += v142;
  if (v135 < v134)
  {
    goto LABEL_113;
  }

LABEL_114:
  if (v135 != v134)
  {
    v243 = nrCopyLogObj_2201();
    v247 = v243;
    if (sNRCopyLogToStdErr != 1)
    {
      goto LABEL_313;
    }

LABEL_314:
    v249 = nrCopyLogObj_2201();
    _NRLogWithArgs(v249, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length", v250, v251, v252, v253, v254, "");

LABEL_315:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v255 = *__error();
    v67 = _os_log_pack_fill();
    *v67 = 136446210;
    v68 = "nrWriteBufferToIOVec";
    goto LABEL_316;
  }

  v143 = 0;
  v144 = 0;
  v145 = 0;
  v146 = 0;
  v147 = v134 + 3;
  v148 = v7 + 2;
  while (2)
  {
    v149 = v147 - v144;
    if (v147 <= v144)
    {
      LODWORD(v150) = 0;
      goto LABEL_134;
    }

    if (*v148 >= v149)
    {
      v150 = v149;
    }

    else
    {
      v150 = *v148;
    }

    if (!v150)
    {
      v386 = nrCopyLogObj_2201();
      v387 = v386;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v388 = os_log_type_enabled(v386, OS_LOG_TYPE_ERROR);

        if (!v388)
        {
LABEL_395:
          _os_log_pack_size();
          MEMORY[0x28223BE20]();
          v395 = *__error();
          v67 = _os_log_pack_fill();
          *v67 = 136446210;
          v68 = "nrChecksumUpdate";
          goto LABEL_316;
        }
      }

      v389 = nrCopyLogObj_2201();
      _NRLogWithArgs(v389, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen > 0", v390, v391, v392, v393, v394, "");

      goto LABEL_395;
    }

    v151 = *(v148 - 1);
    if (v146)
    {
      LODWORD(StringFromNRTLVType) = v8;
      v152 = v151;
      LOWORD(v487[0]) = *v151 << 8;
      v145 = MEMORY[0x25F874350](v487, 2, v145);
      if (v150 != 1)
      {
        v145 = MEMORY[0x25F874350](v152 + 1, (v150 - 1), v145);
      }

      v8 = StringFromNRTLVType;
    }

    else
    {
      v145 = MEMORY[0x25F874350](v151, v150, v145);
    }

    if (v150)
    {
      v146 ^= 1u;
    }

    v144 += v150;
    if (v144 >= v147 && v150 < *v148)
    {
      goto LABEL_134;
    }

    ++v143;
    v148 += 4;
    if (v136 != v143)
    {
      continue;
    }

    break;
  }

  LOWORD(v143) = v8;
LABEL_134:
  if (v144 != v147)
  {
    v397 = nrCopyLogObj_2201();
    v398 = v397;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v400 = os_log_type_enabled(v397, OS_LOG_TYPE_ERROR);

      if (!v400)
      {
LABEL_407:
        _os_log_pack_size();
        MEMORY[0x28223BE20]();
        v407 = *__error();
        v67 = _os_log_pack_fill();
        *v67 = 136446210;
        v68 = "nrChecksumIOVecInner";
        goto LABEL_316;
      }
    }

    v401 = nrCopyLogObj_2201();
    _NRLogWithArgs(v401, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: computedBytes == writtenLength", v402, v403, v404, v405, v406, "");

    goto LABEL_407;
  }

  v153 = ~v145;
  v154 = &v7[4 * v143];
  v155 = v154[2];
  v156 = v479;
  if (v155 >= v150 + 2)
  {
    *(*v154 + v150) = v153;
    v158 = (*v154 + v150 + 1);
    goto LABEL_141;
  }

  if (v155 < v150 + 1)
  {
    v408 = nrCopyLogObj_2201();
    v409 = v408;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v416 = os_log_type_enabled(v408, OS_LOG_TYPE_ERROR);

      if (!v416)
      {
        goto LABEL_427;
      }
    }

    v417 = nrCopyLogObj_2201();
    v466 = createIOVecString(v7, v8);
    _NRLogWithArgs(v417, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecs[iovecIndex].len >= bytesToCheckThisIOVec + 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", v418, v419, v420, v421, v422, "");

    goto LABEL_427;
  }

  if (v143 + 1 >= v8)
  {
    v410 = nrCopyLogObj_2201();
    v411 = v410;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v423 = os_log_type_enabled(v410, OS_LOG_TYPE_ERROR);

      if (!v423)
      {
        goto LABEL_427;
      }
    }

    v424 = nrCopyLogObj_2201();
    v467 = createIOVecString(v7, v8);
    _NRLogWithArgs(v424, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecIndex + 1 < numIOVecs; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", v425, v426, v427, v428, v429, "");

    goto LABEL_427;
  }

  v157 = &v7[4 * v143 + 4];
  if (!v157[2])
  {
    v412 = nrCopyLogObj_2201();
    v413 = v412;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v430 = os_log_type_enabled(v412, OS_LOG_TYPE_ERROR);

      if (!v430)
      {
LABEL_427:
        _os_log_pack_size();
        MEMORY[0x28223BE20]();
        v437 = *__error();
        v438 = _os_log_pack_fill();
        v439 = createIOVecString(v7, v8);
        __os_log_helper_1_2_4_8_34_8_64_4_0_4_0(v438, "nrChecksumIOVecInner", v439, v143, v150);
        goto LABEL_428;
      }
    }

    v431 = nrCopyLogObj_2201();
    v468 = createIOVecString(v7, v8);
    _NRLogWithArgs(v431, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecs[iovecIndex + 1].len >= 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", v432, v433, v434, v435, v436, "");

    goto LABEL_427;
  }

  *(*v154 + v150) = v153;
  v158 = *v157;
LABEL_141:
  *v158 = HIBYTE(v153);
LABEL_295:
  v230 = *MEMORY[0x277D85DE8];
  return (v156 + 5);
}

uint64_t NRBluetoothParserReadFlushCallback(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 16);
  v3 = v2;
  if (v2[13] == 4)
  {
    goto LABEL_15;
  }

  v4 = *(v1 + 42) - 1;
  if (v4 <= 2)
  {
    v2 = *&v2[-8 * v4 + 232];
    if (v2)
    {
      v5 = &v3[-16 * v4 + 288];
      if (!*(v1 + 40))
      {
        goto LABEL_6;
      }

LABEL_11:
      v33 = v3;
      if (!*v5)
      {
        if (!gNRPacketLoggingEnabled)
        {
          goto LABEL_15;
        }

        v8 = _NRCopyLogObjectForNRUUID(*(v3 + 6));
        v9 = v8;
        if (sNRCopyLogToStdErr == 1)
        {

          v3 = v33;
        }

        else
        {
          v26 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

          v3 = v33;
          if (!v26)
          {
            goto LABEL_15;
          }
        }

        v20 = _NRCopyLogObjectForNRUUID(*(v3 + 6));
        _NRLogWithArgs(v20, 1, "%s%.30s:%-4d Tried to sync nexus output but _nexusOutputRing is NULL", v27, v28, v29, v30, v31, "");
        goto LABEL_27;
      }

      if (!gNRPacketLoggingEnabled)
      {
LABEL_13:
        v2 = os_channel_sync();
        *(v1 + 40) = 0;
LABEL_14:
        v3 = v33;
        goto LABEL_15;
      }

      v10 = _NRCopyLogObjectForNRUUID(*(v3 + 6));
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v11 = v10;
        v12 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);

        if (!v12)
        {
          goto LABEL_13;
        }
      }

      v13 = _NRCopyLogObjectForNRUUID(*(v33 + 6));
      v32 = *(v1 + 40);
      _NRLogWithArgs(v13, 1, "%s%.30s:%-4d syncing nexus output (%u packets)", v14, v15, v16, v17, v18, "");

      goto LABEL_13;
    }
  }

  v2 = *(v3 + 29);
  v5 = v3 + 288;
  if (*(v1 + 40))
  {
    goto LABEL_11;
  }

LABEL_6:
  if (gNRPacketLoggingEnabled == 1)
  {
    v33 = v3;
    v6 = _NRCopyLogObjectForNRUUID(*(v3 + 6));
    v7 = v6;
    if (sNRCopyLogToStdErr == 1)
    {

      v3 = v33;
    }

    else
    {
      v19 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

      v3 = v33;
      if (!v19)
      {
        goto LABEL_15;
      }
    }

    v20 = _NRCopyLogObjectForNRUUID(*(v3 + 6));
    _NRLogWithArgs(v20, 1, "%s%.30s:%-4d highestNexusOutputSlotWrittenTo is NULL", v21, v22, v23, v24, v25, "");
LABEL_27:

    goto LABEL_14;
  }

LABEL_15:

  return MEMORY[0x2821F96F8](v2, v3);
}

void NRBluetoothPacketParserSuspendNexusBEOutputSource(uint64_t a1)
{
  v2 = *(a1 + 144);
  if ((v2 & 0x200) == 0 && *(a1 + 352))
  {
    *(a1 + 144) = v2 | 0x200;
    if (gNRPacketLoggingEnabled != 1)
    {
      v3 = *(a1 + 352);

LABEL_6:
      dispatch_suspend(v3);
      return;
    }

    v5 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {

      v6 = a1;
    }

    else
    {
      v7 = v5;
      v8 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

      v6 = a1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    v9 = _NRCopyLogObjectForNRUUID(*(v6 + 48));
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d source-suspend: NexusBEOutput", v10, v11, v12, v13, v14, "");

    v6 = a1;
LABEL_12:
    v3 = *(v6 + 352);

    goto LABEL_6;
  }
}

uint64_t _NRIsAppleInternal()
{
  if (_NRIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&_NRIsAppleInternal_onceToken, &__block_literal_global_435);
  }

  return _NRIsAppleInternal_internal;
}

os_log_t _NRCopyLogObjectForNRUUID(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  os_unfair_lock_lock(&sNRLogLock);
  v2 = sNRUUIDToLogObject;
  if (!sNRUUIDToLogObject)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = sNRUUIDToLogObject;
    sNRUUIDToLogObject = v3;

    v2 = sNRUUIDToLogObject;
  }

  v5 = [v2 objectForKeyedSubscript:v1];
  if (v5)
  {
    v6 = v5;
    os_unfair_lock_unlock(&sNRLogLock);
    goto LABEL_5;
  }

  if (([sNRUUIDsEligibleForLogObject containsObject:v1] & 1) == 0)
  {
    os_unfair_lock_unlock(&sNRLogLock);
LABEL_12:
    if (nrCopyLogObj_onceToken_400 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_400, &__block_literal_global_58);
    }

    v6 = nrCopyLogObj_sNRLogObj_401;
    goto LABEL_5;
  }

  v9 = [v1 UUIDString];
  v10 = [v9 substringToIndex:13];

  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v10];
  v6 = os_log_create("com.apple.networkrelay", [v11 UTF8String]);
  v12 = nrCopyLogObj_408();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v1;
    _os_log_impl(&dword_25B98C000, v12, OS_LOG_TYPE_DEFAULT, "adding log object for %@", buf, 0xCu);
  }

  [sNRUUIDToLogObject setObject:v6 forKeyedSubscript:v1];
  os_unfair_lock_unlock(&sNRLogLock);
  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_5:

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

__CFString *_NRCopyTimeString()
{
  v0 = [MEMORY[0x277CBEAA8] date];
  v1 = _NRCopyTimeStringForDate(v0);

  return v1;
}

__CFString *_NRCopyTimeStringForDate(void *a1)
{
  if (!a1)
  {
    return @"nil";
  }

  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 components:224 fromDate:v2];
  [v2 timeIntervalSinceReferenceDate];
  v6 = v5;

  v7 = v6 - floor(v6) + [v4 second];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%02u:%02u:%07.4f", objc_msgSend(v4, "hour"), objc_msgSend(v4, "minute"), *&v7];

  return v8;
}

void NRBluetoothPacketParserSuspendNexusVIOutputSource(uint64_t a1)
{
  v2 = *(a1 + 144);
  if ((v2 & 0x100) == 0 && *(a1 + 336))
  {
    *(a1 + 144) = v2 | 0x100;
    if (gNRPacketLoggingEnabled != 1)
    {
      v3 = *(a1 + 336);

LABEL_6:
      dispatch_suspend(v3);
      return;
    }

    v5 = _NRCopyLogObjectForNRUUID(*(a1 + 48));
    if (sNRCopyLogToStdErr == 1)
    {

      v6 = a1;
    }

    else
    {
      v7 = v5;
      v8 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

      v6 = a1;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    v9 = _NRCopyLogObjectForNRUUID(*(v6 + 48));
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d source-suspend: NexusVIOutput", v10, v11, v12, v13, v14, "");

    v6 = a1;
LABEL_12:
    v3 = *(v6 + 336);

    goto LABEL_6;
  }
}

os_log_t _NRCopyEventLogObjectForNRUUID(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  os_unfair_lock_lock(&sNRLogLock);
  v2 = sNRUUIDToEventLogObject;
  if (!sNRUUIDToEventLogObject)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = sNRUUIDToEventLogObject;
    sNRUUIDToEventLogObject = v3;

    v2 = sNRUUIDToEventLogObject;
  }

  v5 = [v2 objectForKeyedSubscript:v1];
  if (v5)
  {
    v6 = v5;
    os_unfair_lock_unlock(&sNRLogLock);
    goto LABEL_5;
  }

  if (([sNRUUIDsEligibleForLogObject containsObject:v1] & 1) == 0)
  {
    os_unfair_lock_unlock(&sNRLogLock);
LABEL_12:
    if (nrCopyEventLogObj_onceToken != -1)
    {
      dispatch_once(&nrCopyEventLogObj_onceToken, &__block_literal_global_60);
    }

    v6 = nrCopyEventLogObj_sNREventLogObj;
    goto LABEL_5;
  }

  v9 = [v1 UUIDString];
  v10 = [v9 substringToIndex:13];

  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.events", v10];
  v6 = os_log_create("com.apple.networkrelay", [v11 UTF8String]);
  v12 = nrCopyLogObj_408();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v1;
    _os_log_impl(&dword_25B98C000, v12, OS_LOG_TYPE_DEFAULT, "adding event log object for %@", buf, 0xCu);
  }

  [sNRUUIDToEventLogObject setObject:v6 forKeyedSubscript:v1];
  os_unfair_lock_unlock(&sNRLogLock);
  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_5:

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

id NREndpointCopyDictionary(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = [v3 UUIDString];
  v6 = [v4 initWithFormat:@"%@/%llu", v5, a2];

  os_unfair_lock_lock(&sAddressCacheLock);
  v7 = NREndpointCacheValidLocked_sAddressCacheChangeToken;
  if (NREndpointCacheValidLocked_sAddressCacheChangeToken == -1)
  {
    if (!notify_register_check("com.apple.private.restrict-post.networkrelay.endpointcache", &NREndpointCacheValidLocked_sAddressCacheChangeToken))
    {
      v7 = NREndpointCacheValidLocked_sAddressCacheChangeToken;
      if (NREndpointCacheValidLocked_sAddressCacheChangeToken == -1)
      {
        goto LABEL_29;
      }

      goto LABEL_2;
    }

    NREndpointCacheValidLocked_sAddressCacheChangeToken = -1;
    if (nrCopyLogObj_onceToken == -1)
    {
      if ((sNRCopyLogToStdErr & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken, &__block_literal_global);
      if ((sNRCopyLogToStdErr & 1) == 0)
      {
LABEL_16:
        if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_29;
        }
      }
    }

    _NRLogWithArgs(nrCopyLogObj_sNRLogObj, 17, "notify_register_check(%s) failed: %u", v9, v10, v11, v12, v13, "com.apple.private.restrict-post.networkrelay.endpointcache");
    goto LABEL_29;
  }

LABEL_2:
  v8 = NREndpointCacheValidLocked_sAddressCacheGeneration;
  state64 = NREndpointCacheValidLocked_sAddressCacheGeneration;
  check = 0;
  if (notify_check(v7, &check))
  {
    if (nrCopyLogObj_onceToken == -1)
    {
      if ((sNRCopyLogToStdErr & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken, &__block_literal_global);
      if ((sNRCopyLogToStdErr & 1) == 0)
      {
LABEL_5:
        if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_7;
        }
      }
    }

    _NRLogWithArgs(nrCopyLogObj_sNRLogObj, 17, "notify_check(%s, %d) failed: %u", v9, v10, v11, v12, v13, "com.apple.private.restrict-post.networkrelay.endpointcache");
    goto LABEL_7;
  }

  if (check)
  {
    if (notify_get_state(NREndpointCacheValidLocked_sAddressCacheChangeToken, &state64))
    {
      if (nrCopyLogObj_onceToken == -1)
      {
        if ((sNRCopyLogToStdErr & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        dispatch_once(&nrCopyLogObj_onceToken, &__block_literal_global);
        if ((sNRCopyLogToStdErr & 1) == 0)
        {
LABEL_22:
          if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_7;
          }
        }
      }

      _NRLogWithArgs(nrCopyLogObj_sNRLogObj, 17, "notify_get_state(%s, %d) failed: %u", v9, v10, v11, v12, v13, "com.apple.private.restrict-post.networkrelay.endpointcache");
LABEL_7:
      notify_cancel(NREndpointCacheValidLocked_sAddressCacheChangeToken);
      NREndpointCacheValidLocked_sAddressCacheChangeToken = -1;
      state64 = 0;
      if (!NREndpointCacheValidLocked_sAddressCacheGeneration)
      {
        goto LABEL_29;
      }

LABEL_8:
      if (nrCopyLogObj_onceToken == -1)
      {
        if (sNRCopyLogToStdErr)
        {
          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&nrCopyLogObj_onceToken, &__block_literal_global);
        if (sNRCopyLogToStdErr)
        {
          goto LABEL_11;
        }
      }

      if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj, OS_LOG_TYPE_INFO))
      {
LABEL_12:
        NREndpointCacheValidLocked_sAddressCacheGeneration = state64;
        goto LABEL_29;
      }

LABEL_11:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj, 1, "%s%.30s:%-4d NREndpoint cache generation changed: %llu -> %llu", v9, v10, v11, v12, v13, "");
      goto LABEL_12;
    }

    v8 = state64;
  }

  if (NREndpointCacheValidLocked_sAddressCacheGeneration != v8)
  {
    goto LABEL_8;
  }

  if (v8)
  {
    goto LABEL_34;
  }

LABEL_29:
  if (nrCopyLogObj_onceToken == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_32:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj, 1, "%s%.30s:%-4d Clearing NREndpoint cache", v9, v10, v11, v12, v13, "");
      goto LABEL_33;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken, &__block_literal_global);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_32;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj, OS_LOG_TYPE_INFO))
  {
    goto LABEL_32;
  }

LABEL_33:
  v14 = sAddressDataCache;
  sAddressDataCache = 0;

LABEL_34:
  if (sAddressDataCache)
  {
    v15 = [sAddressDataCache objectForKeyedSubscript:v6];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 objectForKeyedSubscript:@"AddrData"];
      v18 = v16;
      if (v17)
      {
        goto LABEL_52;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v18 = nrXPCCopyResolvedEndpointWithMetadata(v3, a2);

  v19 = [v18 objectForKeyedSubscript:@"AddrData"];
  v17 = v19;
  if (v19 && [v19 length] == 16)
  {
    state64 = 0;
    v26 = 0;
    [v17 getBytes:&state64 length:16];
    v20 = BYTE1(v26) != 12 && a2 == 3;
    if (!v20 && WORD1(v26) && WORD2(v26) && HIWORD(v26))
    {
      v21 = sAddressDataCache;
      if (!sAddressDataCache)
      {
        v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v23 = sAddressDataCache;
        sAddressDataCache = v22;

        v21 = sAddressDataCache;
      }

      if ([v21 count] <= 0x1F)
      {
        [sAddressDataCache setObject:v18 forKeyedSubscript:v6];
      }
    }
  }

LABEL_52:
  os_unfair_lock_unlock(&sAddressCacheLock);

  return v18;
}

uint64_t __nrCopyLogObj_block_invoke()
{
  nrCopyLogObj_sNRLogObj = os_log_create("com.apple.networkrelay", "");

  return MEMORY[0x2821F96F8]();
}

id nrCopyLogObj()
{
  if (nrCopyLogObj_onceToken != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken, &__block_literal_global);
  }

  v1 = nrCopyLogObj_sNRLogObj;

  return v1;
}

__CFString *NRDataProtectionClassCreateString(unsigned int a1)
{
  if (a1 < 5 && ((0x1Bu >> a1) & 1) != 0)
  {
    return off_27996ADB0[a1];
  }

  else
  {
    return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown[%lld]", a1];
  }
}

__CFString *createStringFromNRDeviceEndpointType(uint64_t a1)
{
  if ((a1 + 1) >= 9u)
  {
    return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown(%u)", a1];
  }

  else
  {
    return off_27996AD68[(a1 + 1)];
  }
}

uint64_t NREndpointUsesASQUIC(void *a1, unsigned int a2)
{
  v2 = NREndpointCopyDictionary(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"UseASQUIC"];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 BOOLValue];

  return v5;
}

uint64_t __nrCopyLogObj_block_invoke_11()
{
  nrCopyLogObj_sNRLogObj_8 = os_log_create("com.apple.networkrelay", "");

  return MEMORY[0x2821F96F8]();
}

void sub_25B99A1D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

id nrCopyLogObj_22()
{
  if (nrCopyLogObj_onceToken_7 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
  }

  v1 = nrCopyLogObj_sNRLogObj_8;

  return v1;
}

uint64_t scDynamicStoreCallout(uint64_t result, void *a2, uint64_t a3)
{
  if (a3)
  {
    if (*(a3 + 48) == result)
    {
      return [(NRLaunchEventMonitor *)a3 processSCDUpdate:a2];
    }
  }

  return result;
}

void __NRLaunchEventMonitorCopyQueue_block_invoke()
{
  v16 = *MEMORY[0x277D85DE8];
  if (_NRShouldDebugAutoRelease_onceToken != -1)
  {
    dispatch_once(&_NRShouldDebugAutoRelease_onceToken, &__block_literal_global_40);
  }

  if (_NRShouldDebugAutoRelease_debugAutoRelease)
  {
    v0 = 0;
  }

  else
  {
    v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  }

  v1 = dispatch_queue_create("com.apple.networkrelay.launchEventMonitor", v0);

  if (!v1)
  {
    v4 = nrCopyLogObj_22();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v5 = v4;
      v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (!v6)
      {
        goto LABEL_14;
      }
    }

    v7 = nrCopyLogObj_22();
    _NRLogWithArgs(v7, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_create(%s) failed", v8, v9, v10, v11, v12, "");

LABEL_14:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v13 = *__error();
    v14 = _os_log_pack_fill();
    *v14 = 136446466;
    *(v14 + 4) = "nr_dispatch_queue_create";
    *(v14 + 12) = 2080;
    *(v14 + 14) = "com.apple.networkrelay.launchEventMonitor";
    v15 = nrCopyLogObj_22();
    _NRLogAbortWithPack(v15);
  }

  v2 = NRLaunchEventMonitorCopyQueue_queue;
  NRLaunchEventMonitorCopyQueue_queue = v1;
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t createStringFromNRLinkType(int a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v3 = "Cellular";
        goto LABEL_15;
      case 4:
        v3 = "QuickRelay";
        goto LABEL_15;
      case 5:
        v3 = "Wired";
        goto LABEL_15;
    }

    return [v2 initWithFormat:@"Unknown(%lld)", a1];
  }

  if (!a1)
  {
    v3 = "Invalid";
    goto LABEL_15;
  }

  if (a1 == 1)
  {
    v3 = "Bluetooth";
    goto LABEL_15;
  }

  if (a1 != 2)
  {
    return [v2 initWithFormat:@"Unknown(%lld)", a1];
  }

  v3 = "WiFi";
LABEL_15:

  return [v2 initWithUTF8String:v3];
}

uint64_t createStringFromNRLinkSubtype(int a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  if (a1 <= 102)
  {
    switch(a1)
    {
      case 0:
        v3 = "None";
        goto LABEL_18;
      case 101:
        v3 = "WiFiInfra";
        goto LABEL_18;
      case 102:
        v3 = "WiFiP2PAWDL";
        goto LABEL_18;
    }

    return [v2 initWithFormat:@"Unknown(%lld)", a1];
  }

  if (a1 > 119)
  {
    if (a1 == 120)
    {
      v3 = "BluetoothScalable";
      goto LABEL_18;
    }

    if (a1 == 121)
    {
      v3 = "BluetoothL2CAP";
      goto LABEL_18;
    }

    return [v2 initWithFormat:@"Unknown(%lld)", a1];
  }

  if (a1 == 103)
  {
    v3 = "WiFiP2PNAN";
    goto LABEL_18;
  }

  if (a1 != 104)
  {
    return [v2 initWithFormat:@"Unknown(%lld)", a1];
  }

  v3 = "WiFiP2PInfraRelay";
LABEL_18:

  return [v2 initWithUTF8String:v3];
}

__CFString *createShortStringFromNRLinkType(unsigned int a1)
{
  if ((a1 - 1) < 4u)
  {
    return off_27996AE50[(a1 - 1)];
  }

  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  if (a1 == 5)
  {
    v4 = "Wired";
  }

  else
  {
    if (a1)
    {
      return [v3 initWithFormat:@"Unknown(%lld)", a1];
    }

    v4 = "Invalid";
  }

  return [v3 initWithUTF8String:v4];
}

__CFString *createShortStringFromNRLinkSubtype(int a1)
{
  if (a1 > 103)
  {
    if (a1 == 104)
    {
      return @"IR";
    }

    if (a1 != 120)
    {
      if (a1 == 121)
      {
        return @"L2C";
      }

      return createStringFromNRLinkSubtype(a1);
    }

    return @"P";
  }

  else
  {
    if (a1 == 101)
    {
      return @"Ifr";
    }

    if (a1 != 102)
    {
      if (a1 == 103)
      {
        return @"N";
      }

      return createStringFromNRLinkSubtype(a1);
    }

    return @"A";
  }
}

uint64_t getNRLinkTypeForNRLinkSubtype(int a1)
{
  if ((a1 - 101) >= 4)
  {
    return (a1 - 120) < 2;
  }

  else
  {
    return 2;
  }
}

id nrCopyLogObj_68()
{
  if (nrCopyLogObj_onceToken_75 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
  }

  v1 = nrCopyLogObj_sNRLogObj_76;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_78()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_76;
  nrCopyLogObj_sNRLogObj_76 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void NRPreferP2PImmediatelySet(char a1)
{
  objc_opt_self();
  if (sharedInstanceForP2PImmediate_onceToken != -1)
  {
    dispatch_once(&sharedInstanceForP2PImmediate_onceToken, &__block_literal_global_4);
  }

  if (sharedInstanceForP2PImmediate_gPreferP2PImmediatelyInstance)
  {
    v2 = *(sharedInstanceForP2PImmediate_gPreferP2PImmediatelyInstance + 16);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __30__NRPreferWiFi_submitRequest___block_invoke;
    v4[3] = &unk_27996AF70;
    v4[4] = sharedInstanceForP2PImmediate_gPreferP2PImmediatelyInstance;
    v5 = a1;
    v3 = sharedInstanceForP2PImmediate_gPreferP2PImmediatelyInstance;
    dispatch_async(v2, v4);
  }
}

void NRPreferP2PSet(char a1)
{
  objc_opt_self();
  if (sharedInstanceForP2P_onceToken != -1)
  {
    dispatch_once(&sharedInstanceForP2P_onceToken, &__block_literal_global_2);
  }

  if (sharedInstanceForP2P_gPreferP2PWiFiInstance)
  {
    v2 = *(sharedInstanceForP2P_gPreferP2PWiFiInstance + 16);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __30__NRPreferWiFi_submitRequest___block_invoke;
    v4[3] = &unk_27996AF70;
    v4[4] = sharedInstanceForP2P_gPreferP2PWiFiInstance;
    v5 = a1;
    v3 = sharedInstanceForP2P_gPreferP2PWiFiInstance;
    dispatch_async(v2, v4);
  }
}

void NRPreferWiFiSet(char a1)
{
  objc_opt_self();
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_84);
  }

  if (sharedInstance_gPreferWiFiInstance)
  {
    v2 = *(sharedInstance_gPreferWiFiInstance + 16);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __30__NRPreferWiFi_submitRequest___block_invoke;
    v4[3] = &unk_27996AF70;
    v4[4] = sharedInstance_gPreferWiFiInstance;
    v5 = a1;
    v3 = sharedInstance_gPreferWiFiInstance;
    dispatch_async(v2, v4);
  }
}

__CFString *_NRCopyPolicyTrafficClassifiersDescription(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = [v1 anyObject];
      if ([v3 isEqualToString:@"com.apple.ids.trafficclass.nanoregistry.check"])
      {
        v4 = @"Check";
      }

      else if ([v3 isEqualToString:@"com.apple.ids.trafficclass.nanoregistry.update"])
      {
        v4 = @"Update";
      }

      else if ([v3 isEqualToString:@"com.apple.ids.trafficclass.nanoregistry.configure"])
      {
        v4 = @"Configure";
      }

      else if ([v3 isEqualToString:@"com.apple.ids.trafficclass.all"])
      {
        v4 = @"All";
      }

      else
      {
        v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v3];
      }
    }

    else
    {
      v5 = [v1 allObjects];
      v6 = [v5 sortedArrayUsingSelector:sel_compare_];

      v4 = objc_msgSend(objc_alloc(MEMORY[0x277CCAB68]), "initWithString:", @"{(");
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v3 = v6;
      v7 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v15;
        v10 = "";
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v3);
          }

          [(__CFString *)v4 appendFormat:@"%s%@", v10, **(&v14 + 1), v14];
          if (v8 >= 2)
          {
            for (i = 1; i != v8; ++i)
            {
              if (*v15 != v9)
              {
                objc_enumerationMutation(v3);
              }

              [(__CFString *)v4 appendFormat:@"%s%@", ", ", *(*(&v14 + 1) + 8 * i)];
            }
          }

          v8 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
          v10 = ", ";
        }

        while (v8);
      }

      [(__CFString *)v4 appendString:@"}"]);
    }
  }

  else
  {
    v4 = @"Null";
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_25B99D614(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

id nrCopyLogObj_117()
{
  if (nrCopyLogObj_onceToken_113 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
  }

  v1 = nrCopyLogObj_sNRLogObj_115;

  return v1;
}

double __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(uint64_t a1, uint64_t a2)
{
  *&result = 136446978;
  *a1 = 136446978;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = 0;
  *(a1 + 22) = 2048;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1024;
  *(a1 + 34) = 0;
  return result;
}

double __os_log_helper_1_2_3_8_34_8_0_4_0(uint64_t a1, uint64_t a2)
{
  *&result = 136446722;
  *a1 = 136446722;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = 0;
  *(a1 + 22) = 1024;
  *(a1 + 24) = 0;
  return result;
}

uint64_t __nrCopyLogObj_block_invoke_166()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_115;
  nrCopyLogObj_sNRLogObj_115 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_25B99E308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nrCopyLogObj_block_invoke_236()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_229;
  nrCopyLogObj_sNRLogObj_229 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_25B99FFA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

id nrCopyLogObj_237()
{
  if (nrCopyLogObj_onceToken_227 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
  }

  v1 = nrCopyLogObj_sNRLogObj_229;

  return v1;
}

void sub_25B9A06B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_25B9A3224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B9A3C24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

id nrCopyLogObj_336()
{
  if (nrCopyLogObj_onceToken_345 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_345, &__block_literal_global_346);
  }

  v1 = nrCopyLogObj_sNRLogObj_347;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_350()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_347;
  nrCopyLogObj_sNRLogObj_347 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void _NRLogSetCopyToStderr(char a1)
{
  os_unfair_lock_lock(&sNRLogLock);
  sNRCopyLogToStdErr = a1;

  os_unfair_lock_unlock(&sNRLogLock);
}

void _NRLogAbortWithPack(void *a1)
{
  v1 = a1;
  qword_27FBB2050 = os_log_pack_compose();
  __break(1u);
}

void _NRLogRegisterSimCrashHook(void *a1)
{
  os_unfair_lock_lock(&sNRLogLock);
  sNRLogSimCrashHook = a1;

  os_unfair_lock_unlock(&sNRLogLock);
}

void _NRLogPackSend(void *a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (a3 == 17 || (sNRCopyLogToStdErr & 1) != 0)
  {
    if (os_log_type_enabled(v5, a3))
    {
      v8 = os_log_pack_send_and_compose();
    }

    else
    {
      mach_get_times();
      v8 = os_log_pack_compose();
    }

    v9 = v8;
    os_unfair_lock_lock(&sNRLogLock);
    if (sNRCopyLogToStdErr == 1)
    {
      if ((_NRLogPackSend_sHasSetTZ & 1) == 0)
      {
        tzset();
        _NRLogPackSend_sHasSetTZ = 1;
      }

      memset(&v14, 0, sizeof(v14));
      v10 = localtime_r((a2 + 8), &v14);
      if (strftime(v15, 9uLL, "%T", v10))
      {
        v15[8] = 0;
        v11 = *(a2 + 16) / 100000;
        fprintf(*MEMORY[0x277D85DF8], "%s %s.%04ld %s\n");
      }

      else
      {
        fprintf(*MEMORY[0x277D85DF8], "%s %s\n");
      }
    }

    v12 = sNRLogSimCrashHook;
    os_unfair_lock_unlock(&sNRLogLock);
    if (a3 == 17 && v12)
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v9];
      v12();
    }

    if (v9 != &v16 && v9)
    {
      free(v9);
    }
  }

  else if (os_log_type_enabled(v5, a3))
  {
    os_log_pack_send();
  }

  v7 = *MEMORY[0x277D85DE8];
}

void _NRAddEligibleNRUUIDForLogObject(void *a1)
{
  v4 = a1;
  os_unfair_lock_lock(&sNRLogLock);
  v1 = sNRUUIDsEligibleForLogObject;
  if (!sNRUUIDsEligibleForLogObject)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCA940]);
    v3 = sNRUUIDsEligibleForLogObject;
    sNRUUIDsEligibleForLogObject = v2;

    v1 = sNRUUIDsEligibleForLogObject;
  }

  [v1 addObject:v4];
  os_unfair_lock_unlock(&sNRLogLock);
}

void _NRRemoveEligibleNRUUIDForLogObject(void *a1)
{
  v1 = a1;
  os_unfair_lock_lock(&sNRLogLock);
  [sNRUUIDsEligibleForLogObject removeObject:v1];

  os_unfair_lock_unlock(&sNRLogLock);
}

void _NRUpdateNRUUIDsEligibleForLogObjects(void *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = a1;
  os_unfair_lock_lock(&sNRLogLock);
  if ([sNRUUIDToLogObject count])
  {
    v2 = [sNRUUIDToLogObject allKeys];
    v3 = [v2 copy];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v33;
      *&v6 = 138412290;
      v26 = v6;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v32 + 1) + 8 * i);
          if (([v1 containsObject:{v10, v26}] & 1) == 0)
          {
            if (nrCopyLogObj_onceToken_400 != -1)
            {
              dispatch_once(&nrCopyLogObj_onceToken_400, &__block_literal_global_58);
            }

            v11 = nrCopyLogObj_sNRLogObj_401;
            if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_401, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v26;
              v38 = v10;
              _os_log_impl(&dword_25B98C000, v11, OS_LOG_TYPE_DEFAULT, "removing log object for %@", buf, 0xCu);
            }

            [sNRUUIDToLogObject setObject:0 forKeyedSubscript:v10];
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v7);
    }
  }

  if ([sNRUUIDToEventLogObject count])
  {
    v12 = [sNRUUIDToEventLogObject allKeys];
    v13 = [v12 copy];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v15)
    {
      v17 = v15;
      v18 = *v29;
      *&v16 = 138412290;
      v27 = v16;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v28 + 1) + 8 * j);
          if (([v1 containsObject:{v20, v27, v28}] & 1) == 0)
          {
            if (nrCopyLogObj_onceToken_400 != -1)
            {
              dispatch_once(&nrCopyLogObj_onceToken_400, &__block_literal_global_58);
            }

            v21 = nrCopyLogObj_sNRLogObj_401;
            if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_401, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v27;
              v38 = v20;
              _os_log_impl(&dword_25B98C000, v21, OS_LOG_TYPE_DEFAULT, "removing event log object for %@", buf, 0xCu);
            }

            [sNRUUIDToEventLogObject setObject:0 forKeyedSubscript:v20];
          }
        }

        v17 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v17);
    }
  }

  v22 = sNRUUIDsEligibleForLogObject;
  if (!sNRUUIDsEligibleForLogObject)
  {
    v23 = objc_alloc_init(MEMORY[0x277CCA940]);
    v24 = sNRUUIDsEligibleForLogObject;
    sNRUUIDsEligibleForLogObject = v23;

    v22 = sNRUUIDsEligibleForLogObject;
  }

  [v22 removeAllObjects];
  [sNRUUIDsEligibleForLogObject addObjectsFromArray:v1];
  os_unfair_lock_unlock(&sNRLogLock);

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __nrCopyLogObj_block_invoke_403()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_401;
  nrCopyLogObj_sNRLogObj_401 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id nrCopyLogObj_408()
{
  if (nrCopyLogObj_onceToken_400 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_400, &__block_literal_global_58);
  }

  v1 = nrCopyLogObj_sNRLogObj_401;

  return v1;
}

uint64_t __nrCopyEventLogObj_block_invoke()
{
  v0 = os_log_create("com.apple.networkrelay", "events");
  v1 = nrCopyEventLogObj_sNREventLogObj;
  nrCopyEventLogObj_sNREventLogObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

__CFString *_NRCreateMACAddressString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v3 = [v1 bytes];
    if ([v1 length])
    {
      [(__CFString *)v2 appendFormat:@"%02X", *v3];
      if ([v1 length] >= 2)
      {
        v4 = 1;
        do
        {
          [(__CFString *)v2 appendFormat:@":%02X", v3[v4++]];
        }

        while (v4 < [v1 length]);
      }
    }
  }

  else
  {
    v2 = @"[nil]";
  }

  return v2;
}

__CFString *_NRCreateDataStringTruncated(void *a1, unsigned int a2)
{
  v3 = a1;
  if (!v3)
  {
    v4 = @"[nil]";
    goto LABEL_13;
  }

  v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"[%llu:", objc_msgSend(v3, "length")];
  v5 = [v3 bytes];
  v6 = [v3 length];
  v7 = v6;
  if (a2)
  {
    if (v6 >= a2)
    {
      v7 = a2;
    }

    v8 = v7 != [v3 length];
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = 0;
  if (v6)
  {
    do
    {
LABEL_9:
      v9 = *v5++;
      [(__CFString *)v4 appendFormat:@"%02X", v9];
      --v7;
    }

    while (v7);
  }

LABEL_10:
  if (v8)
  {
    [(__CFString *)v4 appendString:@"..."];
  }

  [(__CFString *)v4 appendString:@"]"];
LABEL_13:

  return v4;
}

__CFString *_NRCreateDataString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"[%llu:", objc_msgSend(v1, "length")];
    v3 = [v1 bytes];
    v4 = [v1 length];
    if (v4)
    {
      v5 = v4;
      do
      {
        v6 = *v3++;
        [(__CFString *)v2 appendFormat:@"%02X", v6];
        --v5;
      }

      while (v5);
    }

    [(__CFString *)v2 appendString:@"]"];
  }

  else
  {
    v2 = @"[nil]";
  }

  return v2;
}

uint64_t _NRShouldDebugAutoRelease()
{
  if (_NRShouldDebugAutoRelease_onceToken != -1)
  {
    dispatch_once(&_NRShouldDebugAutoRelease_onceToken, &__block_literal_global_40);
  }

  return _NRShouldDebugAutoRelease_debugAutoRelease;
}

uint64_t _NRCopySerialQueueAttr()
{
  if (_NRShouldDebugAutoRelease_onceToken != -1)
  {
    dispatch_once(&_NRShouldDebugAutoRelease_onceToken, &__block_literal_global_40);
  }

  if (_NRShouldDebugAutoRelease_debugAutoRelease)
  {
    return 0;
  }

  dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  return objc_claimAutoreleasedReturnValue();
}

void NRTLVAddData(void *a1, char a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  NRTLVAdd(v6, a2, [v5 length], objc_msgSend(v5, "bytes"));
}

void NRTLVAdd(void *a1, char a2, unsigned int a3, uint64_t a4)
{
  v7 = a1;
  v8 = v7;
  if (!v7)
  {
    v16 = nrCopyLogObj_408();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v17 = v16;
      v18 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        goto LABEL_18;
      }
    }

    v19 = nrCopyLogObj_408();
    _NRLogWithArgs(v19, 17, "%s called with null tlvData", v20, v21, v22, v23, v24, "NRTLVAdd");

    goto LABEL_18;
  }

  if ([v7 length] + a3 < 0x10000)
  {
    if ((a3 || !a4) && (!a3 || a4))
    {
      v26 = a2;
      v27 = __rev16(a3);
      [v8 appendBytes:&v26 length:3];
      if (a4)
      {
        [v8 appendBytes:a4 length:a3];
      }
    }

    else
    {
      if (nrCopyLogObj_onceToken_400 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_400, &__block_literal_global_58);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_401, OS_LOG_TYPE_FAULT))
      {
        v14 = nrCopyLogObj_sNRLogObj_401;
        v15 = "invalid tlv length and value";
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (nrCopyLogObj_onceToken_400 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_400, &__block_literal_global_58);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_401, OS_LOG_TYPE_FAULT))
    {
      v14 = nrCopyLogObj_sNRLogObj_401;
      v15 = "tlv buffer full";
LABEL_17:
      _NRLogWithArgs(v14, 17, v15, v9, v10, v11, v12, v13, v25);
    }
  }

LABEL_18:
}

BOOL NRTLVParse(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v22 = nrCopyLogObj_408();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v24 = v22;
      v25 = os_log_type_enabled(v22, OS_LOG_TYPE_FAULT);

      if (!v25)
      {
        goto LABEL_11;
      }
    }

    v26 = nrCopyLogObj_408();
    _NRLogWithArgs(v26, 17, "%s called with null tlvData", v27, v28, v29, v30, v31, "NRTLVParse");
LABEL_38:

    goto LABEL_11;
  }

  if (!v4)
  {
    v23 = nrCopyLogObj_408();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v32 = v23;
      v33 = os_log_type_enabled(v23, OS_LOG_TYPE_FAULT);

      if (!v33)
      {
        goto LABEL_11;
      }
    }

    v26 = nrCopyLogObj_408();
    _NRLogWithArgs(v26, 17, "%s called with null block", v34, v35, v36, v37, v38, "NRTLVParse");
    goto LABEL_38;
  }

  if ([v3 length] < 0x10000)
  {
    v14 = [v3 bytes];
    v15 = [v3 length];
    if (v15 >= 3uLL)
    {
      v18 = v15;
      v19 = 0;
      while (1)
      {
        v16 = v18 <= v19;
        if (v18 <= v19)
        {
          goto LABEL_12;
        }

        if ((v18 - v19) <= 2u)
        {
          break;
        }

        v20 = (bswap32(*(v14 + 1)) >> 16) + 3;
        if (v20 > (v18 - v19))
        {
          if (nrCopyLogObj_onceToken_400 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_400, &__block_literal_global_58);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_401, OS_LOG_TYPE_ERROR))
          {
            v11 = nrCopyLogObj_sNRLogObj_401;
            v39 = "";
            v12 = "%s%.30s:%-4d Invalid tlv buffer (%u < %zu + %u)";
            goto LABEL_29;
          }

          goto LABEL_11;
        }

        v21 = v5[2](v5, v14);
        v14 += v20;
        v19 += v20;
        if ((v21 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      if (nrCopyLogObj_onceToken_400 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_400, &__block_literal_global_58);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_401, OS_LOG_TYPE_ERROR))
      {
        v11 = nrCopyLogObj_sNRLogObj_401;
        v39 = "";
        v12 = "%s%.30s:%-4d Incomplete tlv buffer (%u < %zu)";
LABEL_29:
        v13 = 16;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (nrCopyLogObj_onceToken_400 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_400, &__block_literal_global_58);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_401, OS_LOG_TYPE_FAULT))
    {
      v11 = nrCopyLogObj_sNRLogObj_401;
      v12 = "tlv buffer larger than expected";
      v13 = 17;
LABEL_9:
      _NRLogWithArgs(v11, v13, v12, v6, v7, v8, v9, v10, v39);
    }
  }

LABEL_11:
  v16 = 0;
LABEL_12:

  return v16;
}

id nrCopyLogObj_461()
{
  if (nrCopyLogObj_onceToken_466 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_466, &__block_literal_global_467);
  }

  v1 = nrCopyLogObj_sNRLogObj_468;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_471()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_468;
  nrCopyLogObj_sNRLogObj_468 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id NRLPCopyUInt64NSNumberFromXPCDict(void *a1, const char *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (!a2)
  {
    v11 = nrCopyLogObj_461();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v12 = v11;
      v13 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (!v13)
      {
        goto LABEL_13;
      }
    }

    v14 = nrCopyLogObj_461();
    _NRLogWithArgs(v14, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (xpcKey) != ((void*)0)", v15, v16, v17, v18, v19, "");

    goto LABEL_13;
  }

  v5 = v3;
  v6 = xpc_dictionary_get_value(v3, v4);
  v7 = v6;
  if (!v6 || MEMORY[0x25F8746E0](v6) != MEMORY[0x277D864C8])
  {
    v8 = 0;
    goto LABEL_6;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:xpc_uint64_get_value(v7)];
  if (!v8)
  {
    v23 = nrCopyLogObj_461();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v24 = v23;
      v25 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

      if (!v25)
      {
        goto LABEL_13;
      }
    }

    v26 = nrCopyLogObj_461();
    _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (retNum) != ((void*)0)", v27, v28, v29, v30, v31, "");

LABEL_13:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v20 = *__error();
    v21 = _os_log_pack_fill();
    *v21 = 136446210;
    *(v21 + 4) = "NRLPCopyUInt64NSNumberFromXPCDict";
    v22 = nrCopyLogObj_461();
    _NRLogAbortWithPack(v22);
  }

LABEL_6:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id checkAndCapValue(void *a1)
{
  v1 = a1;
  v2 = [v1 unsignedLongLongValue];
  if (!HIDWORD(v2))
  {
    v3 = v1;
    goto LABEL_3;
  }

  v5 = v2;
  v6 = nrCopyLogObj_461();
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_9:
    v9 = nrCopyLogObj_461();
    _NRLogWithArgs(v9, 17, "%llu > UINT32_MAX, capping", v10, v11, v12, v13, v14, v5);

    goto LABEL_10;
  }

  v7 = v6;
  v8 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);

  if (v8)
  {
    goto LABEL_9;
  }

LABEL_10:
  v3 = &unk_286D2CEC0;
LABEL_3:

  return v3;
}

void NRLPAddUint64ToXPCDict(void *a1, const char *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v28 = a1;
  v5 = a3;
  if (!v28)
  {
    v7 = nrCopyLogObj_461();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v9 = v7;
      v10 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

      if (!v10)
      {
        goto LABEL_17;
      }
    }

    v11 = nrCopyLogObj_461();
    _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (xpcDict) != ((void*)0)", v12, v13, v14, v15, v16, "");

LABEL_17:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v25 = *__error();
    v26 = _os_log_pack_fill();
    *v26 = 136446210;
    *(v26 + 4) = "NRLPAddUint64ToXPCDict";
    v27 = nrCopyLogObj_461();
    _NRLogAbortWithPack(v27);
  }

  if (!a2)
  {
    v8 = nrCopyLogObj_461();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v17 = v8;
      v18 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v19 = nrCopyLogObj_461();
    _NRLogWithArgs(v19, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (xpcKey) != ((void*)0)", v20, v21, v22, v23, v24, "");

    goto LABEL_17;
  }

  if (v5)
  {
    xpc_dictionary_set_uint64(v28, a2, [v5 unsignedLongLongValue]);
  }

  v6 = *MEMORY[0x277D85DE8];
}

id nrCopyLogObj_560()
{
  if (nrCopyLogObj_onceToken_563 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_563, &__block_literal_global_442);
  }

  v1 = nrCopyLogObj_sNRLogObj_564;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_566()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_564;
  nrCopyLogObj_sNRLogObj_564 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void NRParserLinkWriteAvailable(uint64_t a1)
{
  v2026 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 16);
    v3 = v2;
    if (*(v2 + 13) == 4)
    {
      goto LABEL_1397;
    }

    v4 = 0x280D73000uLL;
    if (gNRPacketLoggingEnabled == 1)
    {
      v901 = _NRCopyLogObjectForNRUUID(v2[6]);
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v902 = v901;
        v903 = os_log_type_enabled(v901, OS_LOG_TYPE_INFO);

        v4 = 0x280D73000;
        if (!v903)
        {
          goto LABEL_4;
        }
      }

      v904 = _NRCopyLogObjectForNRUUID(v3[6]);
      StringFromNRLinkChannelPriority = createStringFromNRLinkChannelPriority(*(a1 + 83));
      _NRLogWithArgs(v904, 1, "%s%.30s:%-4d Link output available - %@", v905, v906, v907, v908, v909, "");

      v4 = 0x280D73000;
    }

LABEL_4:
    v5 = *(a1 + 84);
    v2019 = v3;
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    *(a1 + 84) = v5 & 0xFE;
    v10 = *(a1 + 83);
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v3[21] = v3[21] + 1;
        v3[18] = (v3[18] & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(a1 + 84) & 1)));
        if (*(v4 + 3640) != 1)
        {
          goto LABEL_5;
        }

        v250 = _NRCopyLogObjectForNRUUID(v3[6]);
        v251 = v250;
        if (sNRCopyLogToStdErr == 1)
        {

          v3 = v2019;
        }

        else
        {
          v1228 = os_log_type_enabled(v250, OS_LOG_TYPE_INFO);

          v3 = v2019;
          if (!v1228)
          {
            goto LABEL_5;
          }
        }

        v840 = _NRCopyLogObjectForNRUUID(v3[6]);
        *(a1 + 84);
        _NRLogWithArgs(v840, 1, "%s%.30s:%-4d source-%s: High", v1229, v1230, v1231, v1232, v1233, "");
        goto LABEL_721;
      }

      if (v10 == 3)
      {
        v3[23] = v3[23] + 1;
        v3[18] = (v3[18] & 0xFFFFFFFFFFFFFFFBLL | (4 * (*(a1 + 84) & 1)));
        if (*(v4 + 3640) == 1)
        {
          v236 = _NRCopyLogObjectForNRUUID(v3[6]);
          v237 = v236;
          if (sNRCopyLogToStdErr == 1)
          {

            v3 = v2019;
          }

          else
          {
            v1222 = os_log_type_enabled(v236, OS_LOG_TYPE_INFO);

            v3 = v2019;
            if (!v1222)
            {
              goto LABEL_5;
            }
          }

          v840 = _NRCopyLogObjectForNRUUID(v3[6]);
          *(a1 + 84);
          _NRLogWithArgs(v840, 1, "%s%.30s:%-4d source-%s: Isochronous", v1223, v1224, v1225, v1226, v1227, "");
          goto LABEL_721;
        }
      }
    }

    else
    {
      if (!*(a1 + 83))
      {
        v249 = _NRCopyLogObjectForNRUUID(v3[6]);
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v838 = v249;
          v839 = os_log_type_enabled(v249, OS_LOG_TYPE_ERROR);

          if (!v839)
          {
            goto LABEL_5;
          }
        }

        v840 = _NRCopyLogObjectForNRUUID(v3[6]);
        _NRLogWithArgs(v840, 16, "%s%.30s:%-4d invalid link channel priority", v841, v842, v843, v844, v845, "");
        goto LABEL_721;
      }

      if (v10 == 1)
      {
        v11 = v3[18];
        v3[19] = v3[19] + 1;
        v3[18] = (v11 & 0xFFFFFFFFFFFFFFFELL | *(a1 + 84) & 1);
        if (*(v4 + 3640) == 1)
        {
          v12 = _NRCopyLogObjectForNRUUID(v3[6]);
          v13 = v12;
          if (sNRCopyLogToStdErr == 1)
          {

            v3 = v2019;
LABEL_1162:
            v840 = _NRCopyLogObjectForNRUUID(v3[6]);
            *(a1 + 84);
            _NRLogWithArgs(v840, 1, "%s%.30s:%-4d source-%s: Medium", v1217, v1218, v1219, v1220, v1221, "");
LABEL_721:

            goto LABEL_5;
          }

          v1216 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);

          v3 = v2019;
          if (v1216)
          {
            goto LABEL_1162;
          }
        }
      }
    }

LABEL_5:
    v6 = *(a1 + 82);
    if (v6 >= 0xB)
    {
      v6 -= 11 * ((((117 * v6) >> 8) + (((v6 - ((117 * v6) >> 8)) & 0xFE) >> 1)) >> 3);
    }

    *(a1 + 4 * v6 + 36) = 0x80000;
    if (v6 < 0xAu)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 - 10;
    }

    *(a1 + 82) = v7;
    v8 = *(a1 + 83);
    switch(v8)
    {
      case 1:
        v9 = 2;
        goto LABEL_22;
      case 3:
        v14 = 8;
        break;
      case 2:
        v9 = 4;
LABEL_22:
        v16 = v3 + 15;
        v15 = *(v3 + 15);
        v17 = (v15 & v9) == 0;
LABEL_23:
        if ((v8 & 0xFE) == 2 && !v17)
        {
          if (*(v3 + 13) == 4)
          {
            goto LABEL_754;
          }

          dispatch_assert_queue_V2(v3[8]);
          v2009 = v3[27];
          v18 = v3[31];
          v19 = v3[39];
          v20 = v19;
          v21 = 0x280D73000uLL;
          if (gNRPacketLoggingEnabled == 1)
          {
            v910 = v19;
            v911 = _NRCopyLogObjectForNRUUID(v3[6]);
            v912 = v911;
            if (sNRCopyLogToStdErr == 1)
            {

              v3 = v2019;
            }

            else
            {
              v931 = os_log_type_enabled(v911, OS_LOG_TYPE_INFO);

              v3 = v2019;
              v21 = 0x280D73000;
              v20 = v910;
              if (!v931)
              {
                goto LABEL_27;
              }
            }

            v932 = _NRCopyLogObjectForNRUUID(v3[6]);
            _NRLogWithArgs(v932, 1, "%s%.30s:%-4d starting NtL fast-path for %u", v933, v934, v935, v936, v937, "");

            v20 = v910;
            v21 = 0x280D73000;
          }

LABEL_27:
          v22 = *v16;
          if ((v22 & 8) != 0)
          {
            v27 = v3 + 17;
            v645 = "Isochronous";
            v2013 = NRBluetoothPacketParserSuspendNexusVOInputSource;
            v646 = 3;
            v647 = v3[17];
            if (!v647)
            {
              goto LABEL_831;
            }

            goto LABEL_550;
          }

          if ((v22 & 4) != 0)
          {
            v27 = v3 + 15;
            v2013 = NRBluetoothPacketParserSuspendNexusVOInputSource;
            goto LABEL_830;
          }

          v23 = v3[14];
          if (!v23)
          {
            v2013 = NRBluetoothPacketParserSuspendNexusVOInputSource;
            goto LABEL_1168;
          }

          v24 = *(*v23 + 43) & 3;
          v2013 = NRBluetoothPacketParserSuspendNexusVOInputSource;
          if (v24 == 1 && (v25 = *(v3 + 17), v2013 = NRBluetoothPacketParserSuspendNexusVOInputSource, (v25 & 1) == 0))
          {
            v26 = v22;

            v21 = 0x280D73000uLL;
            v2013 = 0;
            v28 = 0;
            v20 = 0;
            v18 = 0;
            v2009 = 0;
            v27 = v3 + 15;
          }

          else
          {
            v26 = v22;
            v27 = 0;
            v28 = 1;
          }

          if (*(v3 + 17) == 1 && (*(v21 + 3640) & 1) != 0)
          {
            v1608 = v20;
            v1609 = _NRCopyLogObjectForNRUUID(v3[6]);
            v1610 = v1609;
            if (sNRCopyLogToStdErr == 1)
            {

              v3 = v2019;
            }

            else
            {
              v1683 = os_log_type_enabled(v1609, OS_LOG_TYPE_INFO);

              v3 = v2019;
              v21 = 0x280D73000;
              v20 = v1608;
              if (!v1683)
              {
                goto LABEL_826;
              }
            }

            v1684 = _NRCopyLogObjectForNRUUID(v3[6]);
            _NRLogWithArgs(v1684, 1, "%s%.30s:%-4d sending packets over medium pipe", v1685, v1686, v1687, v1688, v1689, "");

            v20 = v1608;
            v21 = 0x280D73000;
          }

LABEL_826:
          v22 = v26;
          if (v27)
          {
            if (v28)
            {
              v646 = 0;
              v645 = "Invalid";
              v647 = *v27;
              if (!*v27)
              {
                goto LABEL_831;
              }

              goto LABEL_550;
            }

LABEL_830:
            v645 = "High";
            v646 = 2;
            v647 = *v27;
            if (!*v27)
            {
              goto LABEL_831;
            }

            goto LABEL_550;
          }

LABEL_1168:
          v27 = v3 + 13;
          v645 = "Medium";
          v646 = 1;
          v647 = v3[13];
          if (!v647)
          {
LABEL_831:
            if (*(v21 + 3640) != 1)
            {
              goto LABEL_832;
            }

            v1909 = _NRCopyLogObjectForNRUUID(v2019[6]);
            v1910 = v1909;
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v1917 = os_log_type_enabled(v1909, OS_LOG_TYPE_INFO);

              if (!v1917)
              {
                goto LABEL_832;
              }
            }

            v1918 = _NRCopyLogObjectForNRUUID(v2019[6]);
            _NRLogWithArgs(v1918, 1, "%s%.30s:%-4d ", v1919, v1920, v1921, v1922, v1923, "");

LABEL_832:
            v878 = _NRCopyLogObjectForNRUUID(v2019[6]);
            v879 = v878;
            if (sNRCopyLogToStdErr == 1)
            {

              v3 = v2019;
            }

            else
            {
              v924 = os_log_type_enabled(v878, OS_LOG_TYPE_FAULT);

              v3 = v2019;
              if (!v924)
              {
                goto LABEL_753;
              }
            }

            v925 = _NRCopyLogObjectForNRUUID(v3[6]);
            _NRLogWithArgs(v925, 17, "%s: Invalid write context for nexus priority: %u", v926, v927, v928, v929, v930, v645);

LABEL_753:
LABEL_754:
            if (*(v3 + 13) != 4)
            {
              dispatch_assert_queue_V2(v3[8]);
              v851 = v3[28];
              v852 = v3[33];
              v853 = v3[41];
              v854 = 0x280D73000uLL;
              if (gNRPacketLoggingEnabled != 1)
              {
                goto LABEL_756;
              }

              v913 = _NRCopyLogObjectForNRUUID(v3[6]);
              v914 = v913;
              if (sNRCopyLogToStdErr == 1)
              {

                v3 = v2019;
              }

              else
              {
                v1151 = os_log_type_enabled(v913, OS_LOG_TYPE_INFO);

                v3 = v2019;
                v854 = 0x280D73000;
                if (!v1151)
                {
                  goto LABEL_756;
                }
              }

              v1152 = _NRCopyLogObjectForNRUUID(v3[6]);
              _NRLogWithArgs(v1152, 1, "%s%.30s:%-4d starting NtL fast-path for %u", v1153, v1154, v1155, v1156, v1157, "");

              v854 = 0x280D73000;
LABEL_756:
              if ((*v16 & 4) != 0)
              {
                v2015 = (v3 + 15);
                v856 = NRBluetoothPacketParserSuspendNexusVIInputSource;
LABEL_792:
                v869 = "High";
                v868 = 2;
                goto LABEL_904;
              }

              v855 = v3[14];
              if (!v855)
              {
                v856 = NRBluetoothPacketParserSuspendNexusVIInputSource;
                goto LABEL_903;
              }

              if ((*(*v855 + 43) & 3) == 1 && (*(v3 + 17) & 1) == 0)
              {

                v854 = 0x280D73000uLL;
                v856 = 0;
                v857 = 0;
                v853 = 0;
                v852 = 0;
                v851 = 0;
                v2015 = (v3 + 15);
              }

              else
              {
                v856 = NRBluetoothPacketParserSuspendNexusVIInputSource;
                v2015 = 0;
                v857 = 1;
              }

              if (*(v3 + 17) == 1 && (*(v854 + 3640) & 1) != 0)
              {
                v1250 = _NRCopyLogObjectForNRUUID(v3[6]);
                v1251 = v1250;
                if (sNRCopyLogToStdErr == 1)
                {

                  v3 = v2019;
                }

                else
                {
                  v1619 = os_log_type_enabled(v1250, OS_LOG_TYPE_INFO);

                  v3 = v2019;
                  v854 = 0x280D73000;
                  if (!v1619)
                  {
                    goto LABEL_789;
                  }
                }

                v1620 = _NRCopyLogObjectForNRUUID(v3[6]);
                _NRLogWithArgs(v1620, 1, "%s%.30s:%-4d sending packets over medium pipe", v1621, v1622, v1623, v1624, v1625, "");

                v854 = 0x280D73000;
              }

LABEL_789:
              if (v2015)
              {
                if (v857)
                {
                  v868 = 0;
                  v869 = "Invalid";
                  goto LABEL_904;
                }

                goto LABEL_792;
              }

LABEL_903:
              v2015 = (v3 + 13);
              v869 = "Medium";
              v868 = 1;
LABEL_904:
              v2010 = v851;
              if (*v2015)
              {
                v943 = *(*v2015 + 24);
                v944 = *(v943 + 84);
                v2012 = v856;
                if ((v944 & 1) == 0)
                {
                  LODWORD(v2007) = v868;
                  v2005 = v869;
                  v2008 = v853;
                  v2009 = v1971;
                  v2011 = *(v943 + 8);
                  v945 = *(v943 + 83);
                  v946 = 584;
                  if (v945 == 3)
                  {
                    v946 = 600;
                  }

                  v39 = v945 == 2;
                  v947 = 616;
                  if (!v39)
                  {
                    v947 = v946;
                  }

                  v2013 = v947;
                  if (*(v854 + 3640) != 1)
                  {
                    goto LABEL_911;
                  }

                  v1165 = _NRCopyLogObjectForNRUUID(v3[6]);
                  v1166 = v1165;
                  if (sNRCopyLogToStdErr == 1)
                  {

                    v3 = v2019;
                  }

                  else
                  {
                    v1252 = os_log_type_enabled(v1165, OS_LOG_TYPE_INFO);

                    v3 = v2019;
                    v854 = 0x280D73000;
                    if (!v1252)
                    {
LABEL_911:
                      LODWORD(v2017) = 0;
                      v948 = 0;
                      v949 = 0;
                      ESPSequenceNumberFromPacket = 0;
                      v950 = 0;
                      v2014 = 0;
                      v2006 = (v3 + 41);
                      v2018 = (v943 + 36);
                      v2024 = 0u;
                      v2025 = 0u;
                      v951 = 9;
                      v2022 = 0u;
                      v2023 = 0u;
LABEL_912:
                      if (*(v854 + 3640) == 1)
                      {
                        v1040 = _NRCopyLogObjectForNRUUID(v2019[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v1044 = v1040;
                          v1045 = os_log_type_enabled(v1040, OS_LOG_TYPE_INFO);

                          v854 = 0x280D73000;
                          if (!v1045)
                          {
                            goto LABEL_913;
                          }
                        }

                        v1046 = _NRCopyLogObjectForNRUUID(v2019[6]);
                        _NRLogWithArgs(v1046, 1, "%s%.30s:%-4d %s: starting NtL inner loop", v1047, v1048, v1049, v1050, v1051, "");

                        v854 = 0x280D73000;
                      }

LABEL_913:
                      v953 = *(v943 + 28);
                      v952 = *(v943 + 32);
                      if (v953 <= v952)
                      {
                        v960 = v951 | 0x10;
                        v961 = v2019;
                        v962 = ESPSequenceNumberFromPacket;
                        if (!v852)
                        {
LABEL_925:
                          if (!v962)
                          {
                            v1009 = 0;
                            v1010 = *(v943 + 80);
                            if (!*(v943 + 80))
                            {
                              goto LABEL_1061;
                            }

                            goto LABEL_973;
                          }

                          while (1)
                          {
                            v963 = 0x4000 - *(v943 + 80);
                            if (v963 < nrMaxTLVLengthForPacket(v2023 + *(v961 + 14), (WORD1(v2022) - *(v961 + 14))))
                            {
                              v960 |= 0x40u;
                              v854 = 0x280D73000uLL;
                              if (gNRPacketLoggingEnabled != 1)
                              {
                                v1009 = v962;
                                v1010 = *(v943 + 80);
                                if (!*(v943 + 80))
                                {
                                  goto LABEL_1061;
                                }

LABEL_973:
                                ESPSequenceNumberFromPacket = v1009;
                                v2020 = 0;
                                v1011 = v854;
                                if (*(v854 + 3640) == 1)
                                {
                                  v1041 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                  if (sNRCopyLogToStdErr == 1)
                                  {

                                    v1011 = 0x280D73000;
                                  }

                                  else
                                  {
                                    v1053 = v1041;
                                    v1054 = os_log_type_enabled(v1041, OS_LOG_TYPE_INFO);

                                    v1011 = 0x280D73000;
                                    if (!v1054)
                                    {
                                      goto LABEL_974;
                                    }
                                  }

                                  v1055 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                  v1962 = *(v943 + 80);
                                  _NRLogWithArgs(v1055, 1, "%s%.30s:%-4d %s: invoking send callback w/ written %u", v1056, v1057, v1058, v1059, v1060, "");
                                }

LABEL_974:
                                v1012 = (*(*v2015 + 8))(**v2015, *v943, *(v943 + 80), &v2020, 0, 0);
                                v1013 = v2019;
                                v854 = v1011;
                                if (*(v1011 + 3640) == 1)
                                {
                                  v1042 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                  if (sNRCopyLogToStdErr == 1)
                                  {
                                  }

                                  else
                                  {
                                    v1061 = v1042;
                                    v1062 = os_log_type_enabled(v1042, OS_LOG_TYPE_INFO);

                                    v1013 = v2019;
                                    v854 = 0x280D73000;
                                    if (!v1062)
                                    {
                                      goto LABEL_975;
                                    }
                                  }

                                  v1063 = _NRCopyLogObjectForNRUUID(v1013[6]);
                                  v1963 = *(v943 + 80);
                                  _NRLogWithArgs(v1063, 1, "%s%.30s:%-4d %s: canWriteMore: %d bufferHandled=%zu/%u", v1064, v1065, v1066, v1067, v1068, "");

                                  v854 = 0x280D73000;
                                  v1013 = v2019;
                                }

LABEL_975:
                                if (v1012)
                                {
                                  v1014 = v960 | 0x800;
                                  v1015 = v2020;
                                  if (!v2020)
                                  {
                                    goto LABEL_1007;
                                  }

LABEL_1001:
                                  v1036 = *(v854 + 3640);
                                  if (v1015 < *(v943 + 80))
                                  {
                                    if (!*(v854 + 3640))
                                    {
                                      goto LABEL_1003;
                                    }

                                    v1070 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                    if (sNRCopyLogToStdErr == 1)
                                    {

                                      goto LABEL_1046;
                                    }

                                    v1094 = v1070;
                                    v1095 = os_log_type_enabled(v1070, OS_LOG_TYPE_INFO);

                                    if (v1095)
                                    {
LABEL_1046:
                                      v1096 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                      v1964 = *(v943 + 80);
                                      _NRLogWithArgs(v1096, 1, "%s%.30s:%-4d %s: memmoving filledIn=%u, bufferHandled=%zu", v1097, v1098, v1099, v1100, v1101, "");
                                    }

LABEL_1003:
                                    v1014 |= 0x2000u;
                                    memmove(*v943, (*v943 + v2020), *(v943 + 80) - v2020);
                                    v1037 = v2020;
                                    *(v943 + 80) -= v2020;
                                    v2014 = (v2014 + 1);
                                    v854 = 0x280D73000;
LABEL_1006:
                                    *&v2013[v2019] += v1037;
LABEL_1007:
                                    LODWORD(v2017) = v2017 + 1;
                                    if (v1012)
                                    {
                                      v1038 = *(v943 + 82);
                                      if (v1038 >= 0xB)
                                      {
                                        v1038 -= 11 * ((((117 * v1038) >> 8) + (((v1038 - ((117 * v1038) >> 8)) & 0xFE) >> 1)) >> 3);
                                      }

                                      v951 = 0;
                                      *(v2018 + v1038) = v1014;
                                      if (v1038 < 0xAu)
                                      {
                                        v1039 = v1038 + 1;
                                      }

                                      else
                                      {
                                        v1039 = v1038 - 10;
                                      }

                                      *(v943 + 82) = v1039;
                                      goto LABEL_912;
                                    }

LABEL_1062:
                                    v1130 = v1014 | 0x8000;
                                    if (*(v854 + 3640) == 1)
                                    {
                                      v1176 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                      v1177 = v1176;
                                      if (sNRCopyLogToStdErr == 1)
                                      {
                                      }

                                      else
                                      {
                                        v1293 = os_log_type_enabled(v1176, OS_LOG_TYPE_INFO);

                                        v854 = 0x280D73000;
                                        if (!v1293)
                                        {
                                          goto LABEL_1063;
                                        }
                                      }

                                      v1294 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                      _NRLogWithArgs(v1294, 1, "%s%.30s:%-4d %s: out of NtL inner loop", v1295, v1296, v1297, v1298, v1299, "");

                                      v854 = 0x280D73000;
                                    }

LABEL_1063:
                                    if (v950)
                                    {
                                      os_channel_advance_slot();
                                      v854 = 0x280D73000;
                                      *(v2019 + 18) = 1;
LABEL_1066:
                                      if (v2017 > 8u || v852 && (v1131 = os_channel_available_slot_count(), v854 = 0x280D73000uLL, v1131 <= 1))
                                      {
                                        v1130 = v1014 | 0x18000;
                                        if (*(v854 + 3640) != 1)
                                        {
                                          goto LABEL_1070;
                                        }

                                        v1266 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                        v1267 = v1266;
                                        if (sNRCopyLogToStdErr == 1)
                                        {

                                          goto LABEL_1478;
                                        }

                                        v1626 = os_log_type_enabled(v1266, OS_LOG_TYPE_INFO);

                                        if (v1626)
                                        {
LABEL_1478:
                                          v1627 = v2019;
                                          v1628 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                          v1947 = v1627[54] * 0.000001;
                                          _NRLogWithArgs(v1628, 1, "%s%.30s:%-4d %s: performing RX sync (%u packets, %u bytes, %u pending, %0.2f msec, canWriteMore %d, memmove %u)", v1629, v1630, v1631, v1632, v1633, "");
                                        }

LABEL_1070:
                                        os_channel_sync();
                                        *(v2019 + 18) = 0;
                                        v854 = 0x280D73000uLL;
                                      }
                                    }

                                    else if (*(v2019 + 18))
                                    {
                                      goto LABEL_1066;
                                    }

                                    if (*(v854 + 3640) == 1)
                                    {
                                      v1178 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                      v1179 = v1178;
                                      if (sNRCopyLogToStdErr == 1)
                                      {
                                      }

                                      else
                                      {
                                        v1300 = os_log_type_enabled(v1178, OS_LOG_TYPE_INFO);

                                        v854 = 0x280D73000;
                                        if (!v1300)
                                        {
                                          goto LABEL_1072;
                                        }
                                      }

                                      v1301 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                      _NRLogWithArgs(v1301, 1, "%s%.30s:%-4d %s: out of NtL outer loop", v1302, v1303, v1304, v1305, v1306, "");

                                      v854 = 0x280D73000;
                                    }

LABEL_1072:
                                    v3 = v2019;
                                    v853 = v2008;
                                    if (v1010)
                                    {
LABEL_1073:
                                      v1132 = v1130 | 0x60000;
                                      if (*(v854 + 3640) != 1)
                                      {
                                        goto LABEL_1074;
                                      }

                                      v1180 = _NRCopyLogObjectForNRUUID(v3[6]);
                                      v1181 = v1180;
                                      if (sNRCopyLogToStdErr == 1)
                                      {

                                        v3 = v2019;
                                        goto LABEL_1199;
                                      }

                                      v1307 = os_log_type_enabled(v1180, OS_LOG_TYPE_INFO);

                                      v3 = v2019;
                                      v853 = v2008;
                                      if (v1307)
                                      {
LABEL_1199:
                                        v1308 = _NRCopyLogObjectForNRUUID(v3[6]);
                                        _NRLogWithArgs(v1308, 1, "%s%.30s:%-4d %s: done with NtL fast-path", v1309, v1310, v1311, v1312, v1313, "");

                                        v853 = v2008;
                                      }

LABEL_1074:
                                      v1128 = *(v943 + 82);
                                      if (v1128 >= 0xB)
                                      {
                                        v1128 -= 11 * ((((117 * v1128) >> 8) + (((v1128 - ((117 * v1128) >> 8)) & 0xFE) >> 1)) >> 3);
                                      }

                                      v1129 = v1128;
                                      *(v2018 + v1128) = v1132;
LABEL_1077:
                                      if (v1129 < 0xA)
                                      {
                                        v1133 = v1128 + 1;
                                      }

                                      else
                                      {
                                        v1133 = v1128 - 10;
                                      }

                                      *(v943 + 82) = v1133;
                                      goto LABEL_1081;
                                    }

                                    if (v2007 != 2)
                                    {
                                      if (v2007 == 1)
                                      {
                                        v1134 = v2019[18];
                                        if ((*(v2019 + 15) & 4) != 0)
                                        {
                                          if ((v1134 & 0x20) == 0 || !v2019[43])
                                          {
LABEL_1111:
                                            if ((v1134 & 0x40) == 0 || !v3[45])
                                            {
                                              goto LABEL_1073;
                                            }

                                            v2006 = (v3 + 45);
                                            v3[18] = (v1134 & 0xFFFFFFFFFFFFFFBFLL);
                                            if (*(v854 + 3640) != 1)
                                            {
                                              goto LABEL_1114;
                                            }

                                            v1710 = _NRCopyLogObjectForNRUUID(v3[6]);
                                            v1711 = v1710;
                                            if (sNRCopyLogToStdErr == 1)
                                            {

                                              goto LABEL_1541;
                                            }

                                            v1748 = os_log_type_enabled(v1710, OS_LOG_TYPE_INFO);

                                            if (v1748)
                                            {
LABEL_1541:
                                              v1749 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                              _NRLogWithArgs(v1749, 1, "%s%.30s:%-4d source-resume: NexusBKInput", v1750, v1751, v1752, v1753, v1754, "");
                                              goto LABEL_1578;
                                            }

                                            goto LABEL_1579;
                                          }

LABEL_1108:
                                          v3[18] = (v1134 & 0xFFFFFFFFFFFFFFDFLL);
                                          if (*(v854 + 3640) == 1)
                                          {
                                            v1708 = _NRCopyLogObjectForNRUUID(v3[6]);
                                            v1709 = v1708;
                                            if (sNRCopyLogToStdErr == 1)
                                            {

                                              v3 = v2019;
                                            }

                                            else
                                            {
                                              v1755 = os_log_type_enabled(v1708, OS_LOG_TYPE_INFO);

                                              v3 = v2019;
                                              v853 = v2008;
                                              if (!v1755)
                                              {
                                                goto LABEL_1109;
                                              }
                                            }

                                            v1756 = _NRCopyLogObjectForNRUUID(v3[6]);
                                            _NRLogWithArgs(v1756, 1, "%s%.30s:%-4d source-resume: NexusBEInput", v1757, v1758, v1759, v1760, v1761, "");

                                            v853 = v2008;
                                          }

LABEL_1109:
                                          dispatch_resume(v3[43]);
                                          v1134 = v3[18];
LABEL_1110:
                                          v854 = 0x280D73000uLL;
                                          goto LABEL_1111;
                                        }
                                      }

                                      else
                                      {
                                        v1134 = v2019[18];
                                      }

                                      if ((v1134 & 8) != 0 && v2019[39])
                                      {
                                        v2019[18] = (v1134 & 0xFFFFFFFFFFFFFFF7);
                                        if (*(v854 + 3640) != 1)
                                        {
                                          goto LABEL_1101;
                                        }

                                        v1716 = _NRCopyLogObjectForNRUUID(v3[6]);
                                        v1717 = v1716;
                                        if (sNRCopyLogToStdErr == 1)
                                        {

                                          v3 = v2019;
                                          goto LABEL_1557;
                                        }

                                        v1784 = os_log_type_enabled(v1716, OS_LOG_TYPE_INFO);

                                        v3 = v2019;
                                        v853 = v2008;
                                        if (v1784)
                                        {
LABEL_1557:
                                          v1785 = _NRCopyLogObjectForNRUUID(v3[6]);
                                          _NRLogWithArgs(v1785, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v1786, v1787, v1788, v1789, v1790, "");

                                          v853 = v2008;
                                        }

LABEL_1101:
                                        dispatch_resume(v3[39]);
                                        v1134 = v3[18];
                                      }

                                      if ((v1134 & 0x10) != 0 && *v2006)
                                      {
                                        v3[18] = (v1134 & 0xFFFFFFFFFFFFFFEFLL);
                                        if (gNRPacketLoggingEnabled != 1)
                                        {
                                          goto LABEL_1105;
                                        }

                                        v1718 = _NRCopyLogObjectForNRUUID(v3[6]);
                                        v1719 = v1718;
                                        if (sNRCopyLogToStdErr == 1)
                                        {

                                          v3 = v2019;
                                          goto LABEL_1559;
                                        }

                                        v1791 = os_log_type_enabled(v1718, OS_LOG_TYPE_INFO);

                                        v3 = v2019;
                                        v853 = v2008;
                                        if (v1791)
                                        {
LABEL_1559:
                                          v1792 = _NRCopyLogObjectForNRUUID(v3[6]);
                                          _NRLogWithArgs(v1792, 1, "%s%.30s:%-4d source-resume: NexusVIInput", v1793, v1794, v1795, v1796, v1797, "");

                                          v853 = v2008;
                                        }

LABEL_1105:
                                        dispatch_resume(v3[41]);
                                        v1134 = v3[18];
                                      }

                                      if ((v1134 & 0x20) != 0)
                                      {
                                        v854 = 0x280D73000uLL;
                                        if (!v3[43])
                                        {
                                          goto LABEL_1111;
                                        }

                                        goto LABEL_1108;
                                      }

                                      goto LABEL_1110;
                                    }

                                    v1135 = v2019[18];
                                    if ((v1135 & 8) != 0 && v2019[39])
                                    {
                                      v2019[18] = (v1135 & 0xFFFFFFFFFFFFFFF7);
                                      if (*(v854 + 3640) != 1)
                                      {
                                        goto LABEL_1091;
                                      }

                                      v1746 = _NRCopyLogObjectForNRUUID(v3[6]);
                                      v1747 = v1746;
                                      if (sNRCopyLogToStdErr == 1)
                                      {

                                        v3 = v2019;
                                        goto LABEL_1581;
                                      }

                                      v1850 = os_log_type_enabled(v1746, OS_LOG_TYPE_INFO);

                                      v3 = v2019;
                                      v853 = v2008;
                                      if (v1850)
                                      {
LABEL_1581:
                                        v1851 = _NRCopyLogObjectForNRUUID(v3[6]);
                                        _NRLogWithArgs(v1851, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v1852, v1853, v1854, v1855, v1856, "");

                                        v853 = v2008;
                                      }

LABEL_1091:
                                      dispatch_resume(v3[39]);
                                      v1135 = v3[18];
                                      v854 = 0x280D73000uLL;
                                    }

                                    if ((v1135 & 0x10) == 0 || !*v2006)
                                    {
                                      goto LABEL_1073;
                                    }

                                    v3[18] = (v1135 & 0xFFFFFFFFFFFFFFEFLL);
                                    if (*(v854 + 3640) != 1)
                                    {
LABEL_1114:
                                      dispatch_resume(*v2006);
                                      v854 = 0x280D73000;
                                      goto LABEL_1073;
                                    }

                                    v1136 = _NRCopyLogObjectForNRUUID(v3[6]);
                                    v1137 = v1136;
                                    if (sNRCopyLogToStdErr == 1)
                                    {
                                    }

                                    else
                                    {
                                      v1844 = os_log_type_enabled(v1136, OS_LOG_TYPE_INFO);

                                      if (!v1844)
                                      {
                                        goto LABEL_1579;
                                      }
                                    }

                                    v1749 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                    _NRLogWithArgs(v1749, 1, "%s%.30s:%-4d source-resume: NexusVIInput", v1845, v1846, v1847, v1848, v1849, "");
LABEL_1578:

LABEL_1579:
                                    v3 = v2019;
                                    v853 = v2008;
                                    goto LABEL_1114;
                                  }

                                  if (!*(v854 + 3640))
                                  {
LABEL_1005:
                                    v1014 |= 0x4000u;
                                    *(v943 + 80) = 0;
                                    v1037 = v2020;
                                    goto LABEL_1006;
                                  }

                                  v1071 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                  if (sNRCopyLogToStdErr == 1)
                                  {
                                  }

                                  else
                                  {
                                    v1102 = v1071;
                                    v1103 = os_log_type_enabled(v1071, OS_LOG_TYPE_INFO);

                                    v854 = 0x280D73000;
                                    if (!v1103)
                                    {
                                      goto LABEL_1005;
                                    }
                                  }

                                  v1104 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                  v1965 = *(v943 + 80);
                                  _NRLogWithArgs(v1104, 1, "%s%.30s:%-4d %s: not memmoving filledIn=%u, bufferHandled=%zu", v1105, v1106, v1107, v1108, v1109, "");

                                  v854 = 0x280D73000;
                                  goto LABEL_1005;
                                }

                                if (v2012)
                                {
                                  v2012(v1013);
                                  v854 = 0x280D73000uLL;
                                }

                                *(v943 + 84) |= 1u;
                                v1016 = *(v943 + 83);
                                if (v1016 > 1)
                                {
                                  if (v1016 == 2)
                                  {
                                    v1013[21] = v1013[21] + 1;
                                    v1013[18] = (v1013[18] & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(v943 + 84) & 1)));
                                    if (*(v854 + 3640) != 1)
                                    {
                                      goto LABEL_999;
                                    }

                                    v1025 = _NRCopyLogObjectForNRUUID(v1013[6]);
                                    v1026 = v1025;
                                    if (sNRCopyLogToStdErr == 1)
                                    {

                                      v1027 = v2019;
                                    }

                                    else
                                    {
                                      v1122 = os_log_type_enabled(v1025, OS_LOG_TYPE_INFO);

                                      v1027 = v2019;
                                      v854 = 0x280D73000;
                                      if (!v1122)
                                      {
                                        goto LABEL_999;
                                      }
                                    }

                                    v1030 = _NRCopyLogObjectForNRUUID(v1027[6]);
                                    *(v943 + 84);
                                    _NRLogWithArgs(v1030, 1, "%s%.30s:%-4d source-%s: High", v1123, v1124, v1125, v1126, v1127, "");
                                  }

                                  else
                                  {
                                    if (v1016 != 3)
                                    {
                                      goto LABEL_999;
                                    }

                                    v1013[23] = v1013[23] + 1;
                                    v1013[18] = (v1013[18] & 0xFFFFFFFFFFFFFFFBLL | (4 * (*(v943 + 84) & 1)));
                                    if (*(v854 + 3640) != 1)
                                    {
                                      goto LABEL_999;
                                    }

                                    v1021 = _NRCopyLogObjectForNRUUID(v1013[6]);
                                    v1022 = v1021;
                                    if (sNRCopyLogToStdErr == 1)
                                    {

                                      v1023 = v2019;
                                    }

                                    else
                                    {
                                      v1116 = os_log_type_enabled(v1021, OS_LOG_TYPE_INFO);

                                      v1023 = v2019;
                                      v854 = 0x280D73000;
                                      if (!v1116)
                                      {
                                        goto LABEL_999;
                                      }
                                    }

                                    v1030 = _NRCopyLogObjectForNRUUID(v1023[6]);
                                    *(v943 + 84);
                                    _NRLogWithArgs(v1030, 1, "%s%.30s:%-4d source-%s: Isochronous", v1117, v1118, v1119, v1120, v1121, "");
                                  }

LABEL_998:

                                  v854 = 0x280D73000uLL;
                                  goto LABEL_999;
                                }

                                if (!*(v943 + 83))
                                {
                                  v1024 = _NRCopyLogObjectForNRUUID(v1013[6]);
                                  if (sNRCopyLogToStdErr == 1)
                                  {
                                  }

                                  else
                                  {
                                    v1028 = v1024;
                                    v1029 = os_log_type_enabled(v1024, OS_LOG_TYPE_ERROR);

                                    v1013 = v2019;
                                    v854 = 0x280D73000;
                                    if (!v1029)
                                    {
                                      goto LABEL_999;
                                    }
                                  }

                                  v1030 = _NRCopyLogObjectForNRUUID(v1013[6]);
                                  _NRLogWithArgs(v1030, 16, "%s%.30s:%-4d invalid link channel priority", v1031, v1032, v1033, v1034, v1035, "");
                                  goto LABEL_998;
                                }

                                if (v1016 == 1)
                                {
                                  v1017 = v1013[18];
                                  v1013[19] = v1013[19] + 1;
                                  v1013[18] = (v1017 & 0xFFFFFFFFFFFFFFFELL | *(v943 + 84) & 1);
                                  if (*(v854 + 3640) == 1)
                                  {
                                    v1018 = _NRCopyLogObjectForNRUUID(v1013[6]);
                                    v1019 = v1018;
                                    if (sNRCopyLogToStdErr == 1)
                                    {

                                      v1020 = v2019;
                                      goto LABEL_1050;
                                    }

                                    v1110 = os_log_type_enabled(v1018, OS_LOG_TYPE_INFO);

                                    v1020 = v2019;
                                    v854 = 0x280D73000;
                                    if (v1110)
                                    {
LABEL_1050:
                                      v1030 = _NRCopyLogObjectForNRUUID(v1020[6]);
                                      *(v943 + 84);
                                      _NRLogWithArgs(v1030, 1, "%s%.30s:%-4d source-%s: Medium", v1111, v1112, v1113, v1114, v1115, "");
                                      goto LABEL_998;
                                    }
                                  }
                                }

LABEL_999:
                                v1014 = v960 | 0x1800;
                                if (*(v854 + 3640) != 1)
                                {
                                  v1015 = v2020;
                                  if (v2020)
                                  {
                                    goto LABEL_1001;
                                  }

                                  goto LABEL_1007;
                                }

                                v1052 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                if (sNRCopyLogToStdErr == 1)
                                {

                                  goto LABEL_1039;
                                }

                                v1079 = v1052;
                                v1080 = os_log_type_enabled(v1052, OS_LOG_TYPE_INFO);

                                if (v1080)
                                {
LABEL_1039:
                                  v1081 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                  _NRLogWithArgs(v1081, 1, "%s%.30s:%-4d ", v1082, v1083, v1084, v1085, v1086, "");
                                }

                                v854 = 0x280D73000;
                                v1015 = v2020;
                                if (!v2020)
                                {
                                  goto LABEL_1007;
                                }

                                goto LABEL_1001;
                              }

                              v1069 = _NRCopyLogObjectForNRUUID(v961[6]);
                              if (sNRCopyLogToStdErr == 1)
                              {

                                goto LABEL_1043;
                              }

                              v1087 = v1069;
                              LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v1069, OS_LOG_TYPE_INFO);

                              if (ESPSequenceNumberFromPacket)
                              {
LABEL_1043:
                                v1088 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                _NRLogWithArgs(v1088, 1, "%s%.30s:%-4d %s: not enough room %u to fit maxTLVLen %u", v1089, v1090, v1091, v1092, v1093, "");
                              }

                              v1009 = v962;
LABEL_972:
                              v854 = 0x280D73000uLL;
                              v1010 = *(v943 + 80);
                              if (*(v943 + 80))
                              {
                                goto LABEL_973;
                              }

LABEL_1061:
                              v1014 = v960 | 0x400;
                              if (*(v854 + 3640) != 1)
                              {
                                goto LABEL_1062;
                              }

                              v1291 = _NRCopyLogObjectForNRUUID(v2019[6]);
                              v1292 = v1291;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                goto LABEL_1485;
                              }

                              v1643 = os_log_type_enabled(v1291, OS_LOG_TYPE_INFO);

                              if (v1643)
                              {
LABEL_1485:
                                v1644 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                _NRLogWithArgs(v1644, 1, "%s%.30s:%-4d %s: nothing to read from nexus", v1645, v1646, v1647, v1648, v1649, "");
                              }

                              v854 = 0x280D73000;
                              goto LABEL_1062;
                            }

                            os_channel_slot_get_packet();
                            os_packet_get_next_buflet();
                            data_offset = os_buflet_get_data_offset();
                            object_address = os_buflet_get_object_address();
                            data_length = os_buflet_get_data_length();
                            if (data_length >= 0x10000)
                            {
                              if (nrCopyLogObj_onceToken_563 != -1)
                              {
                                dispatch_once(&nrCopyLogObj_onceToken_563, &__block_literal_global_442);
                              }

                              v1138 = nrCopyLogObj_sNRLogObj_564;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                goto LABEL_1120;
                              }

                              v1139 = v1138;
                              v1140 = os_log_type_enabled(v1138, OS_LOG_TYPE_ERROR);

                              if (v1140)
                              {
LABEL_1120:
                                v1141 = nrCopyLogObj_560();
                                _NRLogWithArgs(v1141, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen <= 65535", v1142, v1143, v1144, v1145, v1146, "");
                              }

LABEL_863:
                              v887 = _os_log_pack_size();
                              MEMORY[0x28223BE20](v887, v888);
                              v889 = *__error();
                              v890 = _os_log_pack_fill();
                              *v890 = 136446210;
                              *(v890 + 4) = "NRBluetoothPacketParserNexusToLinkLoop";
                              v891 = nrCopyLogObj_560();
                              _NRLogAbortWithPack(v891);
                            }

                            if (*(v2019 + 9) == 1)
                            {
                              v2020 = 0;
                              v2021 = 0;
                              v967 = (*v943 + *(v943 + 80));
                              v2020 = v967;
                              LODWORD(v2021) = v963;
                              v968 = *(v2019 + 14);
                              v961 = v2019;
                              if (*(v2019 + 10) == 1)
                              {
                                v969 = nrPacketTo6LoWPAN((v2023 + v968), (WORD1(v2022) - v968), &v2020, 1u, (v2019 + 86), (v2019 + 88), 0);
                              }

                              else
                              {
                                memcpy(v967, (v2023 + v968), WORD1(v2022) - v968);
                                v969 = WORD1(v2022) - *(v961 + 14);
                              }

                              if (gNRPacketLoggingEnabled != 1)
                              {
                                goto LABEL_941;
                              }

                              v976 = _NRCopyLogObjectForNRUUID(v961[6]);
                              if (sNRCopyLogToStdErr == 1)
                              {
                              }

                              else
                              {
                                v977 = v976;
                                v978 = os_log_type_enabled(v976, OS_LOG_TYPE_INFO);

                                v961 = v2019;
                                if (!v978)
                                {
                                  goto LABEL_941;
                                }
                              }

                              v979 = _NRCopyLogObjectForNRUUID(v961[6]);
                              _NRLogWithArgs(v979, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus (actual: %u)", v980, v981, v982, v983, v984, "");
                              goto LABEL_959;
                            }

                            if (!data_length && WORD1(v2022))
                            {
                              v2020 = 0;
                              v2021 = 0;
                              v2020 = *v943 + *(v943 + 80);
                              LODWORD(v2021) = v963;
                              v961 = v2019;
                              v969 = nrPacketToTLV((v2023 + *(v2019 + 14)), (WORD1(v2022) - *(v2019 + 14)), &v2020, 1, (v2019 + 86), (v2019 + 88));
                              if (gNRPacketLoggingEnabled == 1)
                              {
                                v970 = _NRCopyLogObjectForNRUUID(v961[6]);
                                if (sNRCopyLogToStdErr == 1)
                                {

                                  goto LABEL_958;
                                }

                                v986 = v970;
                                v987 = os_log_type_enabled(v970, OS_LOG_TYPE_INFO);

                                v961 = v2019;
                                if (v987)
                                {
LABEL_958:
                                  v979 = _NRCopyLogObjectForNRUUID(v961[6]);
                                  getESPSequenceNumberFromPacket(v2023, WORD1(v2022));
                                  getESPSPIFromPacket(v2023, WORD1(v2022));
                                  _NRLogWithArgs(v979, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", v988, v989, v990, v991, v992, "");
LABEL_959:

                                  v961 = v2019;
                                }
                              }

LABEL_941:
                              v960 |= 0x80u;
                              goto LABEL_942;
                            }

                            if (data_length)
                            {
                              v971 = object_address + data_offset;
                              v2020 = 0;
                              v2021 = 0;
                              v2020 = *v943 + *(v943 + 80);
                              LODWORD(v2021) = v963;
                              v961 = v2019;
                              v972 = data_length;
                              v969 = nrPacketToTLV((v971 + *(v2019 + 14)), (data_length - *(v2019 + 14)), &v2020, 1, (v2019 + 86), (v2019 + 88));
                              if (gNRPacketLoggingEnabled != 1)
                              {
LABEL_938:
                                v960 |= 0x100u;
                                goto LABEL_942;
                              }

                              v985 = _NRCopyLogObjectForNRUUID(v961[6]);
                              if (sNRCopyLogToStdErr == 1)
                              {
                              }

                              else
                              {
                                v994 = v985;
                                LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v985, OS_LOG_TYPE_INFO);

                                v961 = v2019;
                                if (!ESPSequenceNumberFromPacket)
                                {
                                  goto LABEL_938;
                                }
                              }

                              v995 = _NRCopyLogObjectForNRUUID(v961[6]);
                              ESPSequenceNumberFromPacket = getESPSequenceNumberFromPacket(v971, v972);
                              getESPSPIFromPacket(v971, v972);
                              _NRLogWithArgs(v995, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", v996, v997, v998, v999, v1000, "");

                              v961 = v2019;
                              goto LABEL_938;
                            }

                            v960 |= 0x200u;
                            if (gNRPacketLoggingEnabled != 1)
                            {
                              break;
                            }

                            v993 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v1001 = v993;
                              v1002 = os_log_type_enabled(v993, OS_LOG_TYPE_INFO);

                              if (!v1002)
                              {
                                break;
                              }
                            }

                            v961 = v2019;
                            v1003 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            _NRLogWithArgs(v1003, 1, "%s%.30s:%-4d %s: No data to write", v1004, v1005, v1006, v1007, v1008, "");

                            v969 = 0;
LABEL_942:
                            *(v943 + 80) += v969;
                            next_slot = os_channel_get_next_slot();
                            ++v948;
                            v961[58] = v961[58] + 1;
                            *(v961 + 20) = 1;
                            v949 += v969;
                            if (!next_slot)
                            {
                              v1009 = 0;
                              v950 = v962;
                              goto LABEL_972;
                            }

                            v974 = *(v943 + 82);
                            if (v974 >= 0xB)
                            {
                              v974 -= 11 * ((((117 * v974) >> 8) + (((v974 - ((117 * v974) >> 8)) & 0xFE) >> 1)) >> 3);
                            }

                            *(v2018 + v974) = v960;
                            if (v974 < 0xAu)
                            {
                              v975 = v974 + 1;
                            }

                            else
                            {
                              v975 = v974 - 10;
                            }

                            *(v943 + 82) = v975;
                            v950 = v962;
                            v962 = next_slot;
                            v960 = 0;
                          }

                          v969 = 0;
                          v961 = v2019;
                          goto LABEL_942;
                        }

LABEL_924:
                        v962 = os_channel_get_next_slot();
                        v854 = 0x280D73000uLL;
                        goto LABEL_925;
                      }

                      v954 = *(v943 + 80);
                      if ((v953 - v952) >= (0x4000 - v954))
                      {
                        v955 = (0x4000 - v954);
                      }

                      else
                      {
                        v955 = (v953 - v952);
                      }

                      v956 = v2011;
                      memcpy((*v943 + v954), v2011 + v952, v955);
                      v957 = *(v943 + 28);
                      v958 = *(v943 + 32) + v955;
                      *(v943 + 32) = v958;
                      if (v957 <= v958)
                      {
                        v959 = 0;
                      }

                      else
                      {
                        memmove(v956, v956 + v958, v957 - v958);
                        v959 = *(v943 + 28) - *(v943 + 32);
                      }

                      v961 = v2019;
                      v854 = 0x280D73000uLL;
                      *(v943 + 28) = v959;
                      *(v943 + 32) = 0;
                      *(v943 + 80) += v955;
                      if (gNRPacketLoggingEnabled == 1)
                      {
                        v1043 = _NRCopyLogObjectForNRUUID(v961[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v1072 = v1043;
                          LODWORD(v2004) = os_log_type_enabled(v1043, OS_LOG_TYPE_INFO);

                          v961 = v2019;
                          v854 = 0x280D73000;
                          if (!v2004)
                          {
                            goto LABEL_923;
                          }
                        }

                        v1073 = _NRCopyLogObjectForNRUUID(v961[6]);
                        _NRLogWithArgs(v1073, 1, "%s%.30s:%-4d %s: wrote %u (%u/%u) bytes from linkWriteBuffer", v1074, v1075, v1076, v1077, v1078, "");

                        v854 = 0x280D73000;
                        v961 = v2019;
                      }

LABEL_923:
                      v960 = v951 | 0x30;
                      v949 += v955;
                      v962 = ESPSequenceNumberFromPacket;
                      if (!v852)
                      {
                        goto LABEL_925;
                      }

                      goto LABEL_924;
                    }
                  }

                  v1253 = _NRCopyLogObjectForNRUUID(v3[6]);
                  _NRLogWithArgs(v1253, 1, "%s%.30s:%-4d %s: starting NtL outer loop", v1254, v1255, v1256, v1257, v1258, "");

                  v854 = 0x280D73000;
                  goto LABEL_911;
                }

                if (*(v854 + 3640) != 1)
                {
LABEL_1056:
                  if (v856)
                  {
                    v856(v3);
                  }

                  v1128 = *(v943 + 82);
                  if (v1128 >= 0xB)
                  {
                    v1128 -= 11 * ((((117 * v1128) >> 8) + (((v1128 - ((117 * v1128) >> 8)) & 0xFE) >> 1)) >> 3);
                  }

                  v1129 = v1128;
                  *(v943 + 4 * v1128 + 36) = 3;
                  goto LABEL_1077;
                }

                v1167 = v853;
                v1168 = _NRCopyLogObjectForNRUUID(v3[6]);
                v1169 = v1168;
                if (sNRCopyLogToStdErr == 1)
                {

                  v3 = v2019;
                  v856 = v2012;
                }

                else
                {
                  v1259 = os_log_type_enabled(v1168, OS_LOG_TYPE_INFO);

                  v3 = v2019;
                  v853 = v1167;
                  v856 = v2012;
                  if (!v1259)
                  {
                    goto LABEL_1056;
                  }
                }

                v1260 = _NRCopyLogObjectForNRUUID(v3[6]);
                _NRLogWithArgs(v1260, 1, "%s%.30s:%-4d %s: ignoring NtL fast-path for %u, as waiting for link output available", v1261, v1262, v1263, v1264, v1265, "");

                v853 = v1167;
                goto LABEL_1056;
              }

              v1147 = v869;
              v1148 = v853;
              if (*(v854 + 3640) != 1)
              {
                goto LABEL_1123;
              }

              v1911 = _NRCopyLogObjectForNRUUID(v2019[6]);
              v1912 = v1911;
              if (sNRCopyLogToStdErr == 1)
              {
              }

              else
              {
                v1924 = os_log_type_enabled(v1911, OS_LOG_TYPE_INFO);

                if (!v1924)
                {
                  goto LABEL_1123;
                }
              }

              v1925 = _NRCopyLogObjectForNRUUID(v2019[6]);
              _NRLogWithArgs(v1925, 1, "%s%.30s:%-4d ", v1926, v1927, v1928, v1929, v1930, "");

LABEL_1123:
              v1149 = _NRCopyLogObjectForNRUUID(v2019[6]);
              v1150 = v1149;
              if (sNRCopyLogToStdErr == 1)
              {

                v3 = v2019;
              }

              else
              {
                v1158 = os_log_type_enabled(v1149, OS_LOG_TYPE_FAULT);

                v3 = v2019;
                v853 = v1148;
                if (!v1158)
                {
                  goto LABEL_1081;
                }
              }

              v1159 = _NRCopyLogObjectForNRUUID(v3[6]);
              _NRLogWithArgs(v1159, 17, "%s: Invalid write context for nexus priority: %u", v1160, v1161, v1162, v1163, v1164, v1147);

              v853 = v1148;
LABEL_1081:
            }

LABEL_1397:

            goto LABEL_1398;
          }

LABEL_550:
          v648 = v647[3];
          if ((*(v648 + 84) & 1) == 0)
          {
            v2014 = v27;
            LODWORD(v2018) = v22;
            LODWORD(v2006) = v646;
            v2003 = v645;
            v2007 = v20;
            v2008 = v1971;
            v1999 = v16;
            v2010 = *(v648 + 8);
            v649 = *(v648 + 83);
            v650 = 584;
            if (v649 == 3)
            {
              v650 = 600;
            }

            v39 = v649 == 2;
            v651 = 616;
            if (!v39)
            {
              v651 = v650;
            }

            v2011 = v651;
            if (*(v21 + 3640) != 1)
            {
              goto LABEL_556;
            }

            v938 = _NRCopyLogObjectForNRUUID(v3[6]);
            v939 = v938;
            if (sNRCopyLogToStdErr == 1)
            {

              v3 = v2019;
            }

            else
            {
              v1234 = os_log_type_enabled(v938, OS_LOG_TYPE_INFO);

              v3 = v2019;
              v21 = 0x280D73000;
              if (!v1234)
              {
LABEL_556:
                LODWORD(ESPSequenceNumberFromPacket) = 0;
                v652 = 0;
                v653 = 0;
                v2015 = 0;
                v654 = 0;
                v2012 = 0;
                v2004 = (v3 + 39);
                v2017 = v648 + 36;
                v2024 = 0u;
                v2025 = 0u;
                v655 = 9;
                v2022 = 0u;
                v2023 = 0u;
LABEL_557:
                if (*(v21 + 3640) != 1)
                {
LABEL_558:
                  v656 = v655 | 0x10;
                  if ((v2018 & 8) != 0 || (v658 = *(v648 + 28), v657 = *(v648 + 32), v659 = v2010, v658 <= v657))
                  {
LABEL_568:
                    v665 = v2015;
                    if (v18)
                    {
                      v665 = os_channel_get_next_slot();
                      v21 = 0x280D73000uLL;
                    }

                    v666 = v2019;
                    if (!v665)
                    {
                      v713 = 0;
                      v714 = *(v648 + 80);
                      if (!*(v648 + 80))
                      {
                        goto LABEL_723;
                      }

                      goto LABEL_621;
                    }

                    while (1)
                    {
                      v667 = 0x4000 - *(v648 + 80);
                      if (v667 < nrMaxTLVLengthForPacket(v2023 + *(v666 + 14), (WORD1(v2022) - *(v666 + 14))))
                      {
                        v656 |= 0x40u;
                        v21 = 0x280D73000uLL;
                        if (gNRPacketLoggingEnabled != 1)
                        {
                          v713 = v665;
                          v714 = *(v648 + 80);
                          if (!*(v648 + 80))
                          {
                            goto LABEL_723;
                          }

LABEL_621:
                          v2015 = v713;
                          v2020 = 0;
                          v715 = v21;
                          if (*(v21 + 3640) == 1)
                          {
                            v744 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {

                              v715 = 0x280D73000;
                            }

                            else
                            {
                              v755 = v744;
                              v756 = os_log_type_enabled(v744, OS_LOG_TYPE_INFO);

                              v715 = 0x280D73000;
                              if (!v756)
                              {
                                goto LABEL_622;
                              }
                            }

                            v757 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            v1958 = *(v648 + 80);
                            _NRLogWithArgs(v757, 1, "%s%.30s:%-4d %s: invoking send callback w/ written %u", v758, v759, v760, v761, v762, "");
                          }

LABEL_622:
                          v716 = (*(*v2014 + 8))(**v2014, *v648, *(v648 + 80), &v2020, 0, 0);
                          v717 = v2019;
                          v21 = v715;
                          if (*(v715 + 3640) == 1)
                          {
                            v745 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v763 = v745;
                              LODWORD(v2005) = os_log_type_enabled(v745, OS_LOG_TYPE_INFO);

                              v717 = v2019;
                              v21 = 0x280D73000;
                              if (!v2005)
                              {
                                goto LABEL_623;
                              }
                            }

                            v764 = _NRCopyLogObjectForNRUUID(v717[6]);
                            v1959 = *(v648 + 80);
                            _NRLogWithArgs(v764, 1, "%s%.30s:%-4d %s: canWriteMore: %d bufferHandled=%zu/%u", v765, v766, v767, v768, v769, "");

                            v21 = 0x280D73000;
                            v717 = v2019;
                          }

LABEL_623:
                          if (v716)
                          {
                            v718 = v656 | 0x800;
                            v719 = v2020;
                            if (!v2020)
                            {
                              goto LABEL_655;
                            }

LABEL_649:
                            v739 = *(v21 + 3640);
                            if (v719 < *(v648 + 80))
                            {
                              if (!*(v21 + 3640))
                              {
                                goto LABEL_651;
                              }

                              v771 = _NRCopyLogObjectForNRUUID(v2019[6]);
                              if (sNRCopyLogToStdErr == 1)
                              {

                                goto LABEL_692;
                              }

                              v789 = v771;
                              v790 = os_log_type_enabled(v771, OS_LOG_TYPE_INFO);

                              if (v790)
                              {
LABEL_692:
                                v791 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                v1960 = *(v648 + 80);
                                _NRLogWithArgs(v791, 1, "%s%.30s:%-4d %s: memmoving filledIn=%u, bufferHandled=%zu", v792, v793, v794, v795, v796, "");
                              }

LABEL_651:
                              v718 |= 0x2000u;
                              memmove(*v648, (*v648 + v2020), *(v648 + 80) - v2020);
                              v740 = v2020;
                              *(v648 + 80) -= v2020;
                              v2012 = (v2012 + 1);
                              v21 = 0x280D73000;
LABEL_654:
                              *(v2011 + v2019) += v740;
LABEL_655:
                              LODWORD(ESPSequenceNumberFromPacket) = ESPSequenceNumberFromPacket + 1;
                              if (v716)
                              {
                                v741 = *(v648 + 82);
                                if (v741 >= 0xB)
                                {
                                  v741 -= 11 * ((((117 * v741) >> 8) + (((v741 - ((117 * v741) >> 8)) & 0xFE) >> 1)) >> 3);
                                }

                                v655 = 0;
                                *(v2017 + 4 * v741) = v718;
                                if (v741 < 0xAu)
                                {
                                  v742 = v741 + 1;
                                }

                                else
                                {
                                  v742 = v741 - 10;
                                }

                                *(v648 + 82) = v742;
                                goto LABEL_557;
                              }

LABEL_724:
                              v846 = v718 | 0x8000;
                              if (*(v21 + 3640) == 1)
                              {
                                v1170 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                v1171 = v1170;
                                if (sNRCopyLogToStdErr == 1)
                                {
                                }

                                else
                                {
                                  v1270 = os_log_type_enabled(v1170, OS_LOG_TYPE_INFO);

                                  v21 = 0x280D73000;
                                  if (!v1270)
                                  {
                                    goto LABEL_725;
                                  }
                                }

                                v1271 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                _NRLogWithArgs(v1271, 1, "%s%.30s:%-4d %s: out of NtL inner loop", v1272, v1273, v1274, v1275, v1276, "");

                                v21 = 0x280D73000;
                              }

LABEL_725:
                              if (v654)
                              {
                                os_channel_advance_slot();
                                v21 = 0x280D73000;
                                *(v2019 + 18) = 1;
LABEL_738:
                                if (ESPSequenceNumberFromPacket > 8u || v18 && (v849 = os_channel_available_slot_count(), v21 = 0x280D73000uLL, v849 <= 1))
                                {
                                  v846 = v718 | 0x18000;
                                  if (*(v21 + 3640) != 1)
                                  {
                                    goto LABEL_742;
                                  }

                                  v1248 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                  v1249 = v1248;
                                  if (sNRCopyLogToStdErr == 1)
                                  {

                                    goto LABEL_1474;
                                  }

                                  v1611 = os_log_type_enabled(v1248, OS_LOG_TYPE_INFO);

                                  if (v1611)
                                  {
LABEL_1474:
                                    v1612 = v2019;
                                    v1613 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                    v1946 = v1612[54] * 0.000001;
                                    _NRLogWithArgs(v1613, 1, "%s%.30s:%-4d %s: performing RX sync (%u packets, %u bytes, %u pending, %0.2f msec, canWriteMore %d, memmove %u)", v1614, v1615, v1616, v1617, v1618, "");
                                  }

LABEL_742:
                                  os_channel_sync();
                                  *(v2019 + 18) = 0;
                                  v21 = 0x280D73000uLL;
                                }
                              }

                              else if (*(v2019 + 18))
                              {
                                goto LABEL_738;
                              }

                              if (*(v21 + 3640) == 1)
                              {
                                v1172 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                v1173 = v1172;
                                if (sNRCopyLogToStdErr == 1)
                                {
                                }

                                else
                                {
                                  v1277 = os_log_type_enabled(v1172, OS_LOG_TYPE_INFO);

                                  v21 = 0x280D73000;
                                  if (!v1277)
                                  {
                                    goto LABEL_744;
                                  }
                                }

                                v1278 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                _NRLogWithArgs(v1278, 1, "%s%.30s:%-4d %s: out of NtL outer loop", v1279, v1280, v1281, v1282, v1283, "");

                                v21 = 0x280D73000;
                              }

LABEL_744:
                              v3 = v2019;
                              v20 = v2007;
                              if (v714)
                              {
LABEL_745:
                                if (*(v21 + 3640) != 1)
                                {
                                  goto LABEL_746;
                                }

                                v1174 = _NRCopyLogObjectForNRUUID(v3[6]);
                                v1175 = v1174;
                                if (sNRCopyLogToStdErr == 1)
                                {

                                  v3 = v2019;
                                  v20 = v2007;
                                  goto LABEL_1191;
                                }

                                v1284 = os_log_type_enabled(v1174, OS_LOG_TYPE_INFO);

                                v3 = v2019;
                                v20 = v2007;
                                if (v1284)
                                {
LABEL_1191:
                                  v1285 = _NRCopyLogObjectForNRUUID(v3[6]);
                                  _NRLogWithArgs(v1285, 1, "%s%.30s:%-4d %s: done with NtL fast-path", v1286, v1287, v1288, v1289, v1290, "");
                                }

LABEL_746:
                                v830 = *(v648 + 82);
                                v16 = v1999;
                                if (v830 >= 0xB)
                                {
                                  v830 -= 11 * ((((117 * v830) >> 8) + (((v830 - ((117 * v830) >> 8)) & 0xFE) >> 1)) >> 3);
                                }

                                v831 = v830;
                                *(v2017 + 4 * v830) = v846 | 0x60000;
LABEL_749:
                                if (v831 < 0xA)
                                {
                                  v850 = v830 + 1;
                                }

                                else
                                {
                                  v850 = v830 - 10;
                                }

                                *(v648 + 82) = v850;
                                goto LABEL_753;
                              }

                              if (v2006 <= 1)
                              {
                                if (v2006)
                                {
                                  v858 = v2019[18];
                                  if ((*(v2019 + 15) & 4) == 0)
                                  {
                                    goto LABEL_835;
                                  }

                                  if ((v858 & 0x20) != 0 && v2019[43])
                                  {
                                    goto LABEL_866;
                                  }
                                }

                                else
                                {
                                  v858 = v2019[18];
LABEL_835:
                                  if ((v858 & 8) != 0 && *v2004)
                                  {
                                    v2019[18] = (v858 & 0xFFFFFFFFFFFFFFF7);
                                    if (*(v21 + 3640) != 1)
                                    {
                                      goto LABEL_838;
                                    }

                                    v1724 = _NRCopyLogObjectForNRUUID(v3[6]);
                                    v1725 = v1724;
                                    if (sNRCopyLogToStdErr == 1)
                                    {

                                      v3 = v2019;
                                      v20 = v2007;
                                      goto LABEL_1565;
                                    }

                                    v1812 = os_log_type_enabled(v1724, OS_LOG_TYPE_INFO);

                                    v3 = v2019;
                                    v20 = v2007;
                                    if (v1812)
                                    {
LABEL_1565:
                                      v1813 = _NRCopyLogObjectForNRUUID(v3[6]);
                                      _NRLogWithArgs(v1813, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v1814, v1815, v1816, v1817, v1818, "");
                                    }

LABEL_838:
                                    dispatch_resume(v3[39]);
                                    v858 = v3[18];
                                  }

                                  if ((v858 & 0x10) != 0 && v3[41])
                                  {
                                    v3[18] = (v858 & 0xFFFFFFFFFFFFFFEFLL);
                                    if (gNRPacketLoggingEnabled != 1)
                                    {
                                      goto LABEL_842;
                                    }

                                    v1726 = _NRCopyLogObjectForNRUUID(v3[6]);
                                    v1727 = v1726;
                                    if (sNRCopyLogToStdErr == 1)
                                    {

                                      v3 = v2019;
                                      v20 = v2007;
                                      goto LABEL_1567;
                                    }

                                    v1819 = os_log_type_enabled(v1726, OS_LOG_TYPE_INFO);

                                    v3 = v2019;
                                    v20 = v2007;
                                    if (v1819)
                                    {
LABEL_1567:
                                      v1820 = _NRCopyLogObjectForNRUUID(v3[6]);
                                      _NRLogWithArgs(v1820, 1, "%s%.30s:%-4d source-resume: NexusVIInput", v1821, v1822, v1823, v1824, v1825, "");
                                    }

LABEL_842:
                                    dispatch_resume(v3[41]);
                                    v858 = v3[18];
                                  }

                                  if ((v858 & 0x20) != 0)
                                  {
                                    v21 = 0x280D73000;
                                    if (!v3[43])
                                    {
                                      goto LABEL_869;
                                    }

LABEL_866:
                                    v3[18] = (v858 & 0xFFFFFFFFFFFFFFDFLL);
                                    if (*(v21 + 3640) == 1)
                                    {
                                      v1712 = _NRCopyLogObjectForNRUUID(v3[6]);
                                      v1713 = v1712;
                                      if (sNRCopyLogToStdErr == 1)
                                      {

                                        v3 = v2019;
                                        v20 = v2007;
                                      }

                                      else
                                      {
                                        v1777 = os_log_type_enabled(v1712, OS_LOG_TYPE_INFO);

                                        v3 = v2019;
                                        v20 = v2007;
                                        if (!v1777)
                                        {
                                          goto LABEL_867;
                                        }
                                      }

                                      v1778 = _NRCopyLogObjectForNRUUID(v3[6]);
                                      _NRLogWithArgs(v1778, 1, "%s%.30s:%-4d source-resume: NexusBEInput", v1779, v1780, v1781, v1782, v1783, "");
                                    }

LABEL_867:
                                    dispatch_resume(v3[43]);
                                    v858 = v3[18];
                                  }

                                  v21 = 0x280D73000uLL;
                                }

LABEL_869:
                                if ((v858 & 0x40) == 0 || !v3[45])
                                {
                                  goto LABEL_745;
                                }

                                v871 = (v3 + 45);
                                v3[18] = (v858 & 0xFFFFFFFFFFFFFFBFLL);
                                if (*(v21 + 3640) != 1)
                                {
LABEL_872:
                                  dispatch_resume(*v871);
                                  v21 = 0x280D73000;
                                  goto LABEL_745;
                                }

                                v2004 = (v3 + 45);
                                v1714 = _NRCopyLogObjectForNRUUID(v3[6]);
                                v1715 = v1714;
                                if (sNRCopyLogToStdErr == 1)
                                {

                                  goto LABEL_1553;
                                }

                                v1770 = os_log_type_enabled(v1714, OS_LOG_TYPE_INFO);

                                if (v1770)
                                {
LABEL_1553:
                                  v1771 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                  _NRLogWithArgs(v1771, 1, "%s%.30s:%-4d source-resume: NexusBKInput", v1772, v1773, v1774, v1775, v1776, "");
                                  goto LABEL_1588;
                                }

LABEL_1589:
                                v3 = v2019;
                                v20 = v2007;
LABEL_849:
                                v871 = v2004;
                                goto LABEL_872;
                              }

                              if (v2006 == 2)
                              {
                                v870 = v2019[18];
                                if ((v870 & 8) != 0 && *v2004)
                                {
                                  v2019[18] = (v870 & 0xFFFFFFFFFFFFFFF7);
                                  if (*(v21 + 3640) != 1)
                                  {
                                    goto LABEL_797;
                                  }

                                  v1762 = _NRCopyLogObjectForNRUUID(v3[6]);
                                  v1763 = v1762;
                                  if (sNRCopyLogToStdErr == 1)
                                  {

                                    v3 = v2019;
                                    v20 = v2007;
                                    goto LABEL_1585;
                                  }

                                  v1863 = os_log_type_enabled(v1762, OS_LOG_TYPE_INFO);

                                  v3 = v2019;
                                  v20 = v2007;
                                  if (v1863)
                                  {
LABEL_1585:
                                    v1864 = _NRCopyLogObjectForNRUUID(v3[6]);
                                    _NRLogWithArgs(v1864, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v1865, v1866, v1867, v1868, v1869, "");
                                  }

LABEL_797:
                                  dispatch_resume(v3[39]);
                                  v870 = v3[18];
                                  v21 = 0x280D73000uLL;
                                }

                                if ((v870 & 0x10) == 0 || !v3[41])
                                {
                                  goto LABEL_745;
                                }

                                v871 = (v3 + 41);
                                v3[18] = (v870 & 0xFFFFFFFFFFFFFFEFLL);
                                if (*(v21 + 3640) != 1)
                                {
                                  goto LABEL_872;
                                }

                                v2004 = (v3 + 41);
                                v872 = _NRCopyLogObjectForNRUUID(v3[6]);
                                v873 = v872;
                                if (sNRCopyLogToStdErr == 1)
                                {
                                }

                                else
                                {
                                  v1857 = os_log_type_enabled(v872, OS_LOG_TYPE_INFO);

                                  if (!v1857)
                                  {
                                    goto LABEL_1589;
                                  }
                                }

                                v1771 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                _NRLogWithArgs(v1771, 1, "%s%.30s:%-4d source-resume: NexusVIInput", v1858, v1859, v1860, v1861, v1862, "");
                              }

                              else
                              {
                                v880 = v2019[18];
                                if ((v880 & 8) == 0 || !*v2004)
                                {
                                  goto LABEL_745;
                                }

                                v2019[18] = (v880 & 0xFFFFFFFFFFFFFFF7);
                                if (*(v21 + 3640) != 1)
                                {
                                  goto LABEL_849;
                                }

                                v1764 = _NRCopyLogObjectForNRUUID(v3[6]);
                                v1765 = v1764;
                                if (sNRCopyLogToStdErr == 1)
                                {
                                }

                                else
                                {
                                  v1870 = os_log_type_enabled(v1764, OS_LOG_TYPE_INFO);

                                  if (!v1870)
                                  {
                                    goto LABEL_1589;
                                  }
                                }

                                v1771 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                _NRLogWithArgs(v1771, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v1871, v1872, v1873, v1874, v1875, "");
                              }

LABEL_1588:

                              goto LABEL_1589;
                            }

                            if (!*(v21 + 3640))
                            {
LABEL_653:
                              v718 |= 0x4000u;
                              *(v648 + 80) = 0;
                              v740 = v2020;
                              goto LABEL_654;
                            }

                            v772 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v797 = v772;
                              v798 = os_log_type_enabled(v772, OS_LOG_TYPE_INFO);

                              v21 = 0x280D73000;
                              if (!v798)
                              {
                                goto LABEL_653;
                              }
                            }

                            v799 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            v1961 = *(v648 + 80);
                            _NRLogWithArgs(v799, 1, "%s%.30s:%-4d %s: not memmoving filledIn=%u, bufferHandled=%zu", v800, v801, v802, v803, v804, "");

                            v21 = 0x280D73000;
                            goto LABEL_653;
                          }

                          if (v2013)
                          {
                            (v2013)(v717);
                            v21 = 0x280D73000uLL;
                          }

                          *(v648 + 84) |= 1u;
                          v720 = *(v648 + 83);
                          if (v720 > 1)
                          {
                            if (v720 == 2)
                            {
                              v717[21] = v717[21] + 1;
                              v717[18] = (v717[18] & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(v648 + 84) & 1)));
                              if (*(v21 + 3640) != 1)
                              {
                                goto LABEL_647;
                              }

                              v729 = _NRCopyLogObjectForNRUUID(v717[6]);
                              v730 = v729;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                v731 = v2019;
                              }

                              else
                              {
                                v824 = os_log_type_enabled(v729, OS_LOG_TYPE_INFO);

                                v731 = v2019;
                                v21 = 0x280D73000;
                                if (!v824)
                                {
                                  goto LABEL_647;
                                }
                              }

                              v733 = _NRCopyLogObjectForNRUUID(v731[6]);
                              *(v648 + 84);
                              _NRLogWithArgs(v733, 1, "%s%.30s:%-4d source-%s: High", v825, v826, v827, v828, v829, "");
                            }

                            else
                            {
                              if (v720 != 3)
                              {
                                goto LABEL_647;
                              }

                              v717[23] = v717[23] + 1;
                              v717[18] = (v717[18] & 0xFFFFFFFFFFFFFFFBLL | (4 * (*(v648 + 84) & 1)));
                              if (*(v21 + 3640) != 1)
                              {
                                goto LABEL_647;
                              }

                              v725 = _NRCopyLogObjectForNRUUID(v717[6]);
                              v726 = v725;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                v727 = v2019;
                              }

                              else
                              {
                                v818 = os_log_type_enabled(v725, OS_LOG_TYPE_INFO);

                                v727 = v2019;
                                v21 = 0x280D73000;
                                if (!v818)
                                {
                                  goto LABEL_647;
                                }
                              }

                              v733 = _NRCopyLogObjectForNRUUID(v727[6]);
                              *(v648 + 84);
                              _NRLogWithArgs(v733, 1, "%s%.30s:%-4d source-%s: Isochronous", v819, v820, v821, v822, v823, "");
                            }

LABEL_646:

                            v21 = 0x280D73000uLL;
                            goto LABEL_647;
                          }

                          if (!*(v648 + 83))
                          {
                            v728 = _NRCopyLogObjectForNRUUID(v717[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v732 = v728;
                              LODWORD(v2005) = os_log_type_enabled(v728, OS_LOG_TYPE_ERROR);

                              v717 = v2019;
                              v21 = 0x280D73000;
                              if (!v2005)
                              {
                                goto LABEL_647;
                              }
                            }

                            v733 = _NRCopyLogObjectForNRUUID(v717[6]);
                            _NRLogWithArgs(v733, 16, "%s%.30s:%-4d invalid link channel priority", v734, v735, v736, v737, v738, "");
                            goto LABEL_646;
                          }

                          if (v720 == 1)
                          {
                            v721 = v717[18];
                            v717[19] = v717[19] + 1;
                            v717[18] = (v721 & 0xFFFFFFFFFFFFFFFELL | *(v648 + 84) & 1);
                            if (*(v21 + 3640) == 1)
                            {
                              v722 = _NRCopyLogObjectForNRUUID(v717[6]);
                              v723 = v722;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                v724 = v2019;
                                goto LABEL_698;
                              }

                              v812 = os_log_type_enabled(v722, OS_LOG_TYPE_INFO);

                              v724 = v2019;
                              v21 = 0x280D73000;
                              if (v812)
                              {
LABEL_698:
                                v733 = _NRCopyLogObjectForNRUUID(v724[6]);
                                *(v648 + 84);
                                _NRLogWithArgs(v733, 1, "%s%.30s:%-4d source-%s: Medium", v813, v814, v815, v816, v817, "");
                                goto LABEL_646;
                              }
                            }
                          }

LABEL_647:
                          v718 = v656 | 0x1800;
                          if (*(v21 + 3640) != 1)
                          {
                            v719 = v2020;
                            if (v2020)
                            {
                              goto LABEL_649;
                            }

                            goto LABEL_655;
                          }

                          v754 = _NRCopyLogObjectForNRUUID(v2019[6]);
                          if (sNRCopyLogToStdErr == 1)
                          {

                            goto LABEL_685;
                          }

                          v774 = v754;
                          v775 = os_log_type_enabled(v754, OS_LOG_TYPE_INFO);

                          if (v775)
                          {
LABEL_685:
                            v776 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            _NRLogWithArgs(v776, 1, "%s%.30s:%-4d ", v777, v778, v779, v780, v781, "");
                          }

                          v21 = 0x280D73000;
                          v719 = v2020;
                          if (!v2020)
                          {
                            goto LABEL_655;
                          }

                          goto LABEL_649;
                        }

                        v770 = _NRCopyLogObjectForNRUUID(v666[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_689;
                        }

                        v782 = v770;
                        LODWORD(v2015) = os_log_type_enabled(v770, OS_LOG_TYPE_INFO);

                        if (v2015)
                        {
LABEL_689:
                          v783 = _NRCopyLogObjectForNRUUID(v2019[6]);
                          _NRLogWithArgs(v783, 1, "%s%.30s:%-4d %s: not enough room %u to fit maxTLVLen %u", v784, v785, v786, v787, v788, "");
                        }

                        v713 = v665;
LABEL_620:
                        v21 = 0x280D73000uLL;
                        v714 = *(v648 + 80);
                        if (*(v648 + 80))
                        {
                          goto LABEL_621;
                        }

LABEL_723:
                        v718 = v656 | 0x400;
                        if (*(v21 + 3640) != 1)
                        {
                          goto LABEL_724;
                        }

                        v1268 = _NRCopyLogObjectForNRUUID(v2019[6]);
                        v1269 = v1268;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_1480;
                        }

                        v1634 = os_log_type_enabled(v1268, OS_LOG_TYPE_INFO);

                        if (v1634)
                        {
LABEL_1480:
                          v1635 = _NRCopyLogObjectForNRUUID(v2019[6]);
                          _NRLogWithArgs(v1635, 1, "%s%.30s:%-4d %s: nothing to read from nexus", v1636, v1637, v1638, v1639, v1640, "");
                        }

                        v21 = 0x280D73000;
                        goto LABEL_724;
                      }

                      os_channel_slot_get_packet();
                      os_packet_get_next_buflet();
                      v668 = os_buflet_get_data_offset();
                      v669 = os_buflet_get_object_address();
                      v670 = os_buflet_get_data_length();
                      if (v670 >= 0x10000)
                      {
                        if (nrCopyLogObj_onceToken_563 == -1)
                        {
                          goto LABEL_860;
                        }

LABEL_1499:
                        dispatch_once(&nrCopyLogObj_onceToken_563, &__block_literal_global_442);
LABEL_860:
                        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_564, OS_LOG_TYPE_ERROR))
                        {
                          v881 = nrCopyLogObj_560();
                          _NRLogWithArgs(v881, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen <= 65535", v882, v883, v884, v885, v886, "");
                        }

                        goto LABEL_863;
                      }

                      if (*(v2019 + 9) == 1)
                      {
                        v2020 = 0;
                        v2021 = 0;
                        v671 = (*v648 + *(v648 + 80));
                        v2020 = v671;
                        LODWORD(v2021) = v667;
                        v672 = *(v2019 + 14);
                        v666 = v2019;
                        if (*(v2019 + 10) == 1)
                        {
                          v673 = nrPacketTo6LoWPAN((v2023 + v672), (WORD1(v2022) - v672), &v2020, 1u, (v2019 + 86), (v2019 + 88), 0);
                        }

                        else
                        {
                          memcpy(v671, (v2023 + v672), WORD1(v2022) - v672);
                          v673 = WORD1(v2022) - *(v666 + 14);
                        }

                        if (gNRPacketLoggingEnabled != 1)
                        {
                          goto LABEL_586;
                        }

                        v680 = _NRCopyLogObjectForNRUUID(v666[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v681 = v680;
                          v682 = os_log_type_enabled(v680, OS_LOG_TYPE_INFO);

                          v666 = v2019;
                          if (!v682)
                          {
                            goto LABEL_586;
                          }
                        }

                        v683 = _NRCopyLogObjectForNRUUID(v666[6]);
                        _NRLogWithArgs(v683, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus (actual: %u)", v684, v685, v686, v687, v688, "");
                        goto LABEL_607;
                      }

                      if (!v670 && WORD1(v2022))
                      {
                        v2020 = 0;
                        v2021 = 0;
                        v2020 = *v648 + *(v648 + 80);
                        LODWORD(v2021) = v667;
                        v666 = v2019;
                        v673 = nrPacketToTLV((v2023 + *(v2019 + 14)), (WORD1(v2022) - *(v2019 + 14)), &v2020, 1, (v2019 + 86), (v2019 + 88));
                        if (gNRPacketLoggingEnabled == 1)
                        {
                          v674 = _NRCopyLogObjectForNRUUID(v666[6]);
                          if (sNRCopyLogToStdErr == 1)
                          {

                            goto LABEL_606;
                          }

                          v690 = v674;
                          v691 = os_log_type_enabled(v674, OS_LOG_TYPE_INFO);

                          v666 = v2019;
                          if (v691)
                          {
LABEL_606:
                            v683 = _NRCopyLogObjectForNRUUID(v666[6]);
                            getESPSequenceNumberFromPacket(v2023, WORD1(v2022));
                            getESPSPIFromPacket(v2023, WORD1(v2022));
                            _NRLogWithArgs(v683, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", v692, v693, v694, v695, v696, "");
LABEL_607:

                            v666 = v2019;
                          }
                        }

LABEL_586:
                        v656 |= 0x80u;
                        goto LABEL_587;
                      }

                      if (v670)
                      {
                        v675 = v669 + v668;
                        v2020 = 0;
                        v2021 = 0;
                        v2020 = *v648 + *(v648 + 80);
                        LODWORD(v2021) = v667;
                        v666 = v2019;
                        v676 = v670;
                        v673 = nrPacketToTLV((v675 + *(v2019 + 14)), (v670 - *(v2019 + 14)), &v2020, 1, (v2019 + 86), (v2019 + 88));
                        if (gNRPacketLoggingEnabled != 1)
                        {
LABEL_583:
                          v656 |= 0x100u;
                          goto LABEL_587;
                        }

                        v689 = _NRCopyLogObjectForNRUUID(v666[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v698 = v689;
                          LODWORD(v2015) = os_log_type_enabled(v689, OS_LOG_TYPE_INFO);

                          v666 = v2019;
                          if (!v2015)
                          {
                            goto LABEL_583;
                          }
                        }

                        v699 = _NRCopyLogObjectForNRUUID(v666[6]);
                        v2015 = getESPSequenceNumberFromPacket(v675, v676);
                        getESPSPIFromPacket(v675, v676);
                        _NRLogWithArgs(v699, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", v700, v701, v702, v703, v704, "");

                        v666 = v2019;
                        goto LABEL_583;
                      }

                      v656 |= 0x200u;
                      if (gNRPacketLoggingEnabled != 1)
                      {
                        break;
                      }

                      v697 = _NRCopyLogObjectForNRUUID(v2019[6]);
                      if (sNRCopyLogToStdErr == 1)
                      {
                      }

                      else
                      {
                        v705 = v697;
                        v706 = os_log_type_enabled(v697, OS_LOG_TYPE_INFO);

                        if (!v706)
                        {
                          break;
                        }
                      }

                      v666 = v2019;
                      v707 = _NRCopyLogObjectForNRUUID(v2019[6]);
                      _NRLogWithArgs(v707, 1, "%s%.30s:%-4d %s: No data to write", v708, v709, v710, v711, v712, "");

                      v673 = 0;
LABEL_587:
                      *(v648 + 80) += v673;
                      if ((v2018 & 8) != 0)
                      {
                        v677 = 0;
                      }

                      else
                      {
                        v677 = os_channel_get_next_slot();
                      }

                      ++v652;
                      v666[56] = v666[56] + 1;
                      *(v666 + 19) = 1;
                      v653 += v673;
                      if (!v677)
                      {
                        v713 = 0;
                        v654 = v665;
                        goto LABEL_620;
                      }

                      v678 = *(v648 + 82);
                      if (v678 >= 0xB)
                      {
                        v678 -= 11 * ((((117 * v678) >> 8) + (((v678 - ((117 * v678) >> 8)) & 0xFE) >> 1)) >> 3);
                      }

                      *(v2017 + 4 * v678) = v656;
                      if (v678 < 0xAu)
                      {
                        v679 = v678 + 1;
                      }

                      else
                      {
                        v679 = v678 - 10;
                      }

                      *(v648 + 82) = v679;
                      v654 = v665;
                      v665 = v677;
                      v656 = 0;
                    }

                    v673 = 0;
                    v666 = v2019;
                    goto LABEL_587;
                  }

                  v660 = *(v648 + 80);
                  if ((v658 - v657) >= (0x4000 - v660))
                  {
                    v661 = (0x4000 - v660);
                  }

                  else
                  {
                    v661 = (v658 - v657);
                  }

                  memcpy((*v648 + v660), (v2010 + v657), v661);
                  v662 = *(v648 + 28);
                  v663 = *(v648 + 32) + v661;
                  *(v648 + 32) = v663;
                  if (v662 <= v663)
                  {
                    v664 = 0;
                  }

                  else
                  {
                    memmove(v659, &v659[v663], v662 - v663);
                    v664 = *(v648 + 28) - *(v648 + 32);
                  }

                  v21 = 0x280D73000uLL;
                  *(v648 + 28) = v664;
                  *(v648 + 32) = 0;
                  *(v648 + 80) += v661;
                  if (gNRPacketLoggingEnabled != 1)
                  {
LABEL_567:
                    v656 = v655 | 0x30;
                    v653 += v661;
                    goto LABEL_568;
                  }

                  v773 = _NRCopyLogObjectForNRUUID(v2019[6]);
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v805 = v773;
                    LODWORD(v2005) = os_log_type_enabled(v773, OS_LOG_TYPE_INFO);

                    v21 = 0x280D73000;
                    if (!v2005)
                    {
                      goto LABEL_567;
                    }
                  }

                  v806 = _NRCopyLogObjectForNRUUID(v2019[6]);
                  _NRLogWithArgs(v806, 1, "%s%.30s:%-4d %s: wrote %u (%u/%u) bytes from linkWriteBuffer", v807, v808, v809, v810, v811, "");

                  v21 = 0x280D73000;
                  goto LABEL_567;
                }

                v743 = _NRCopyLogObjectForNRUUID(v2019[6]);
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v746 = v743;
                  v747 = os_log_type_enabled(v743, OS_LOG_TYPE_INFO);

                  v21 = 0x280D73000;
                  if (!v747)
                  {
                    goto LABEL_558;
                  }
                }

                v748 = _NRCopyLogObjectForNRUUID(v2019[6]);
                _NRLogWithArgs(v748, 1, "%s%.30s:%-4d %s: starting NtL inner loop", v749, v750, v751, v752, v753, "");

                v21 = 0x280D73000;
                goto LABEL_558;
              }
            }

            v1235 = _NRCopyLogObjectForNRUUID(v3[6]);
            _NRLogWithArgs(v1235, 1, "%s%.30s:%-4d %s: starting NtL outer loop", v1236, v1237, v1238, v1239, v1240, "");

            v21 = 0x280D73000;
            goto LABEL_556;
          }

          if (*(v21 + 3640) != 1)
          {
LABEL_704:
            if (v2013)
            {
              (v2013)(v3);
            }

            v830 = *(v648 + 82);
            if (v830 >= 0xB)
            {
              v830 -= 11 * ((((117 * v830) >> 8) + (((v830 - ((117 * v830) >> 8)) & 0xFE) >> 1)) >> 3);
            }

            v831 = v830;
            *(v648 + 4 * v830 + 36) = 3;
            goto LABEL_749;
          }

          v940 = v20;
          v941 = _NRCopyLogObjectForNRUUID(v3[6]);
          v942 = v941;
          if (sNRCopyLogToStdErr == 1)
          {

            v3 = v2019;
            v20 = v940;
          }

          else
          {
            v1241 = os_log_type_enabled(v941, OS_LOG_TYPE_INFO);

            v3 = v2019;
            v20 = v940;
            if (!v1241)
            {
              goto LABEL_704;
            }
          }

          v1242 = _NRCopyLogObjectForNRUUID(v3[6]);
          _NRLogWithArgs(v1242, 1, "%s%.30s:%-4d %s: ignoring NtL fast-path for %u, as waiting for link output available", v1243, v1244, v1245, v1246, v1247, "");

          goto LABEL_704;
        }

        if (v8 == 1)
        {
          v29 = (v15 >> 2) & 1;
        }

        else
        {
          v29 = 0;
        }

        if ([v3[9] count] == 1 || *(v3 + 12) == 1)
        {
          if (*(v3 + 13) == 4)
          {
            goto LABEL_1397;
          }

          dispatch_assert_queue_V2(v3[8]);
          v30 = v3[29];
          v31 = v3[35];
          v32 = v3[43];
          v33 = 0x280D73000uLL;
          if (gNRPacketLoggingEnabled == 1)
          {
            v915 = v32;
            v916 = _NRCopyLogObjectForNRUUID(v3[6]);
            v917 = v916;
            if (sNRCopyLogToStdErr == 1)
            {

              v3 = v2019;
              v32 = v915;
            }

            else
            {
              v1182 = os_log_type_enabled(v916, OS_LOG_TYPE_INFO);

              v3 = v2019;
              v33 = 0x280D73000;
              v32 = v915;
              if (!v1182)
              {
                goto LABEL_40;
              }
            }

            v1183 = v32;
            v1184 = _NRCopyLogObjectForNRUUID(v3[6]);
            _NRLogWithArgs(v1184, 1, "%s%.30s:%-4d starting NtL fast-path for %u", v1185, v1186, v1187, v1188, v1189, "");

            v32 = v1183;
            v33 = 0x280D73000;
          }

LABEL_40:
          v34 = v3[13];
          if (v34)
          {
            v35 = v34[3];
            if ((*(v35 + 84) & 1) == 0)
            {
              v2010 = v30;
              v2011 = v32;
              v36 = *(v35 + 8);
              v2012 = v1971;
              v2013 = v36;
              v37 = *(v35 + 83);
              v38 = 584;
              if (v37 == 3)
              {
                v38 = 600;
              }

              v39 = v37 == 2;
              v40 = 616;
              if (!v39)
              {
                v40 = v38;
              }

              v2014 = v40;
              if (*(v33 + 3640) != 1)
              {
                goto LABEL_47;
              }

              v1198 = _NRCopyLogObjectForNRUUID(v2019[6]);
              v1199 = v1198;
              if (sNRCopyLogToStdErr == 1)
              {
              }

              else
              {
                v1314 = os_log_type_enabled(v1198, OS_LOG_TYPE_INFO);

                v33 = 0x280D73000;
                if (!v1314)
                {
LABEL_47:
                  LODWORD(v2017) = 0;
                  v41 = 0;
                  v42 = 0;
                  v43 = 0;
                  v44 = 0;
                  v2015 = 0;
                  v2018 = (v35 + 36);
                  v2024 = 0u;
                  v2025 = 0u;
                  v45 = 9;
                  v2022 = 0u;
                  v2023 = 0u;
LABEL_48:
                  if (*(v33 + 3640) == 1)
                  {
                    v138 = _NRCopyLogObjectForNRUUID(v2019[6]);
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v142 = v43;
                      v143 = v138;
                      v144 = os_log_type_enabled(v138, OS_LOG_TYPE_INFO);

                      v43 = v142;
                      v33 = 0x280D73000;
                      if (!v144)
                      {
                        goto LABEL_49;
                      }
                    }

                    v145 = v43;
                    v146 = _NRCopyLogObjectForNRUUID(v2019[6]);
                    _NRLogWithArgs(v146, 1, "%s%.30s:%-4d %s: starting NtL inner loop", v147, v148, v149, v150, v151, "");

                    v43 = v145;
                    v33 = 0x280D73000;
                  }

LABEL_49:
                  v47 = *(v35 + 28);
                  v46 = *(v35 + 32);
                  if (v47 <= v46)
                  {
                    v55 = v45 | 0x10;
                    if (!v31)
                    {
                      goto LABEL_61;
                    }

                    goto LABEL_60;
                  }

                  LODWORD(ESPSequenceNumberFromPacket) = v45;
                  v48 = v43;
                  v49 = *(v35 + 80);
                  if ((v47 - v46) >= (0x4000 - v49))
                  {
                    v50 = (0x4000 - v49);
                  }

                  else
                  {
                    v50 = (v47 - v46);
                  }

                  v51 = v2013;
                  memcpy((*v35 + v49), &v2013[v46], v50);
                  v52 = *(v35 + 28);
                  v53 = *(v35 + 32) + v50;
                  *(v35 + 32) = v53;
                  if (v52 <= v53)
                  {
                    v54 = 0;
                  }

                  else
                  {
                    memmove(v51, &v51[v53], v52 - v53);
                    v54 = *(v35 + 28) - *(v35 + 32);
                  }

                  v33 = 0x280D73000uLL;
                  *(v35 + 28) = v54;
                  *(v35 + 32) = 0;
                  *(v35 + 80) += v50;
                  v43 = v48;
                  if (gNRPacketLoggingEnabled == 1)
                  {
                    v141 = _NRCopyLogObjectForNRUUID(v2019[6]);
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v178 = v141;
                      LODWORD(v2009) = os_log_type_enabled(v141, OS_LOG_TYPE_INFO);

                      v43 = v48;
                      v33 = 0x280D73000;
                      if (!v2009)
                      {
                        goto LABEL_59;
                      }
                    }

                    v179 = _NRCopyLogObjectForNRUUID(v2019[6]);
                    _NRLogWithArgs(v179, 1, "%s%.30s:%-4d %s: wrote %u (%u/%u) bytes from linkWriteBuffer", v180, v181, v182, v183, v184, "");

                    v43 = v48;
                    v33 = 0x280D73000;
                  }

LABEL_59:
                  v55 = ESPSequenceNumberFromPacket | 0x30;
                  v42 += v50;
                  if (!v31)
                  {
LABEL_61:
                    if (!v43)
                    {
                      goto LABEL_106;
                    }

                    v56 = v43;
                    while (1)
                    {
                      v57 = 0x4000 - *(v35 + 80);
                      if (v57 < nrMaxTLVLengthForPacket(v2023 + *(v2019 + 14), (WORD1(v2022) - *(v2019 + 14))))
                      {
                        v55 |= 0x40u;
                        v33 = 0x280D73000uLL;
                        if (gNRPacketLoggingEnabled != 1)
                        {
                          v43 = v56;
                          goto LABEL_106;
                        }

                        v173 = _NRCopyLogObjectForNRUUID(v2019[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_179;
                        }

                        v192 = v173;
                        LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v173, OS_LOG_TYPE_INFO);

                        if (ESPSequenceNumberFromPacket)
                        {
LABEL_179:
                          v193 = _NRCopyLogObjectForNRUUID(v2019[6]);
                          _NRLogWithArgs(v193, 1, "%s%.30s:%-4d %s: not enough room %u to fit maxTLVLen %u", v194, v195, v196, v197, v198, "");

                          v43 = v56;
                        }

                        else
                        {
                          v43 = v56;
                        }

LABEL_105:
                        v33 = 0x280D73000uLL;
LABEL_106:
                        v106 = *(v35 + 80);
                        if (*(v35 + 80))
                        {
                          v2020 = 0;
                          v107 = v33;
                          if (*(v33 + 3640) != 1)
                          {
                            goto LABEL_108;
                          }

                          v139 = _NRCopyLogObjectForNRUUID(v2019[6]);
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v107 = 0x280D73000;
                            goto LABEL_163;
                          }

                          v154 = v43;
                          v155 = v139;
                          v156 = os_log_type_enabled(v139, OS_LOG_TYPE_INFO);

                          v43 = v154;
                          v107 = 0x280D73000;
                          if (v156)
                          {
LABEL_163:
                            v157 = v43;
                            v158 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            v1950 = *(v35 + 80);
                            _NRLogWithArgs(v158, 1, "%s%.30s:%-4d %s: invoking send callback w/ written %u", v159, v160, v161, v162, v163, "");

                            v43 = v157;
                          }

LABEL_108:
                          v108 = (*(v2019[13] + 1))(*v2019[13], *v35, *(v35 + 80), &v2020, 0, 0);
                          v33 = v107;
                          if (*(v107 + 3640) == 1)
                          {
                            v140 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v164 = v43;
                              v165 = v140;
                              LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v140, OS_LOG_TYPE_INFO);

                              v43 = v164;
                              v33 = 0x280D73000;
                              if (!ESPSequenceNumberFromPacket)
                              {
                                goto LABEL_109;
                              }
                            }

                            v166 = v43;
                            v167 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            v1951 = *(v35 + 80);
                            _NRLogWithArgs(v167, 1, "%s%.30s:%-4d %s: canWriteMore: %d bufferHandled=%zu/%u", v168, v169, v170, v171, v172, "");

                            v43 = v166;
                            v33 = 0x280D73000;
                          }

LABEL_109:
                          if (v108)
                          {
                            v109 = v55 | 0x800;
                            v110 = v2020;
                            if (!v2020)
                            {
                              goto LABEL_143;
                            }

LABEL_137:
                            v134 = *(v33 + 3640);
                            if (v110 < *(v35 + 80))
                            {
                              if (!*(v33 + 3640))
                              {
                                goto LABEL_139;
                              }

                              v174 = v43;
                              v175 = _NRCopyLogObjectForNRUUID(v2019[6]);
                              if (sNRCopyLogToStdErr == 1)
                              {

                                goto LABEL_183;
                              }

                              v201 = v175;
                              LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v175, OS_LOG_TYPE_INFO);

                              v43 = v174;
                              if (ESPSequenceNumberFromPacket)
                              {
LABEL_183:
                                v202 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                v1952 = *(v35 + 80);
                                _NRLogWithArgs(v202, 1, "%s%.30s:%-4d %s: memmoving filledIn=%u, bufferHandled=%zu", v203, v204, v205, v206, v207, "");

                                v43 = v174;
                              }

LABEL_139:
                              v109 |= 0x2000u;
                              memmove(*v35, (*v35 + v2020), *(v35 + 80) - v2020);
                              v135 = v2020;
                              *(v35 + 80) -= v2020;
                              v2015 = (v2015 + 1);
                              v33 = 0x280D73000;
LABEL_142:
                              *(v2019 + v2014) = *(v2019 + v2014) + v135;
LABEL_143:
                              LODWORD(v2017) = v2017 + 1;
                              if (v108)
                              {
                                v136 = *(v35 + 82);
                                if (v136 >= 0xB)
                                {
                                  v136 -= 11 * ((((117 * v136) >> 8) + (((v136 - ((117 * v136) >> 8)) & 0xFE) >> 1)) >> 3);
                                }

                                v45 = 0;
                                *(v2018 + v136) = v109;
                                if (v136 < 0xAu)
                                {
                                  v137 = v136 + 1;
                                }

                                else
                                {
                                  v137 = v136 - 10;
                                }

                                *(v35 + 82) = v137;
                                goto LABEL_48;
                              }

LABEL_734:
                              v848 = v109 | 0x8000;
                              if (*(v33 + 3640) == 1)
                              {
                                v1203 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                v1204 = v1203;
                                if (sNRCopyLogToStdErr == 1)
                                {
                                }

                                else
                                {
                                  v1333 = os_log_type_enabled(v1203, OS_LOG_TYPE_INFO);

                                  v33 = 0x280D73000;
                                  if (!v1333)
                                  {
                                    goto LABEL_735;
                                  }
                                }

                                v1334 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                _NRLogWithArgs(v1334, 1, "%s%.30s:%-4d %s: out of NtL inner loop", v1335, v1336, v1337, v1338, v1339, "");

                                v33 = 0x280D73000;
                              }

LABEL_735:
                              if (v44)
                              {
                                os_channel_advance_slot();
                                v33 = 0x280D73000;
                                *(v2019 + 18) = 1;
LABEL_767:
                                if (v2017 > 8u || v31 && (v859 = os_channel_available_slot_count(), v33 = 0x280D73000uLL, v859 <= 1))
                                {
                                  v848 = v109 | 0x18000;
                                  if (*(v33 + 3640) != 1)
                                  {
                                    goto LABEL_771;
                                  }

                                  v1329 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                  v1330 = v1329;
                                  if (sNRCopyLogToStdErr == 1)
                                  {

                                    goto LABEL_1488;
                                  }

                                  v1650 = os_log_type_enabled(v1329, OS_LOG_TYPE_INFO);

                                  if (v1650)
                                  {
LABEL_1488:
                                    v1651 = v2019;
                                    v1652 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                    v1948 = v1651[54] * 0.000001;
                                    _NRLogWithArgs(v1652, 1, "%s%.30s:%-4d %s: performing RX sync (%u packets, %u bytes, %u pending, %0.2f msec, canWriteMore %d, memmove %u)", v1653, v1654, v1655, v1656, v1657, "");
                                  }

LABEL_771:
                                  os_channel_sync();
                                  *(v2019 + 18) = 0;
                                  v33 = 0x280D73000uLL;
                                }
                              }

                              else if (*(v2019 + 18))
                              {
                                goto LABEL_767;
                              }

                              if (*(v33 + 3640) == 1)
                              {
                                v1205 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                v1206 = v1205;
                                if (sNRCopyLogToStdErr == 1)
                                {
                                }

                                else
                                {
                                  v1340 = os_log_type_enabled(v1205, OS_LOG_TYPE_INFO);

                                  v33 = 0x280D73000;
                                  if (!v1340)
                                  {
                                    goto LABEL_773;
                                  }
                                }

                                v1341 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                _NRLogWithArgs(v1341, 1, "%s%.30s:%-4d %s: out of NtL outer loop", v1342, v1343, v1344, v1345, v1346, "");

                                v33 = 0x280D73000;
                              }

LABEL_773:
                              v32 = v2011;
                              if (v106)
                              {
                                goto LABEL_813;
                              }

                              v860 = v2019[18];
                              if ((*(v2019 + 15) & 4) == 0)
                              {
                                if ((v860 & 8) != 0 && v2019[39])
                                {
                                  v861 = v2011;
                                  v862 = v2019;
                                  v2019[18] = (v860 & 0xFFFFFFFFFFFFFFF7);
                                  if (*(v33 + 3640) != 1)
                                  {
                                    goto LABEL_778;
                                  }

                                  v1720 = _NRCopyLogObjectForNRUUID(v862[6]);
                                  v1721 = v1720;
                                  if (sNRCopyLogToStdErr == 1)
                                  {

                                    v862 = v2019;
                                    v861 = v2011;
                                    goto LABEL_1561;
                                  }

                                  v1798 = os_log_type_enabled(v1720, OS_LOG_TYPE_INFO);

                                  v862 = v2019;
                                  v861 = v2011;
                                  if (v1798)
                                  {
LABEL_1561:
                                    v1799 = _NRCopyLogObjectForNRUUID(v862[6]);
                                    _NRLogWithArgs(v1799, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v1800, v1801, v1802, v1803, v1804, "");
                                  }

LABEL_778:
                                  dispatch_resume(v862[39]);
                                  v860 = v862[18];
                                  v33 = 0x280D73000uLL;
                                  v32 = v861;
                                }

                                if ((v860 & 0x10) != 0)
                                {
                                  v863 = v2019;
                                  if (v2019[41])
                                  {
                                    v864 = v32;
                                    v2019[18] = (v860 & 0xFFFFFFFFFFFFFFEFLL);
                                    if (*(v33 + 3640) != 1)
                                    {
                                      goto LABEL_782;
                                    }

                                    v1722 = _NRCopyLogObjectForNRUUID(v863[6]);
                                    v1723 = v1722;
                                    if (sNRCopyLogToStdErr == 1)
                                    {

                                      v863 = v2019;
                                      v864 = v2011;
                                      goto LABEL_1563;
                                    }

                                    v1805 = os_log_type_enabled(v1722, OS_LOG_TYPE_INFO);

                                    v863 = v2019;
                                    v864 = v2011;
                                    if (v1805)
                                    {
LABEL_1563:
                                      v1806 = _NRCopyLogObjectForNRUUID(v863[6]);
                                      _NRLogWithArgs(v1806, 1, "%s%.30s:%-4d source-resume: NexusVIInput", v1807, v1808, v1809, v1810, v1811, "");
                                    }

LABEL_782:
                                    dispatch_resume(v863[41]);
                                    v860 = v863[18];
                                    v33 = 0x280D73000;
                                    v32 = v864;
                                  }
                                }

                                if ((v860 & 0x20) != 0)
                                {
                                  v865 = v2019;
                                  if (v2019[43])
                                  {
                                    v866 = v32;
                                    v867 = v860 & 0xFFFFFFFFFFFFFFDFLL;
                                    goto LABEL_806;
                                  }
                                }

LABEL_808:
                                if ((v860 & 0x40) != 0 && v2019[45])
                                {
                                  v874 = (v2019 + 45);
                                  v2019[18] = (v860 & 0xFFFFFFFFFFFFFFBFLL);
                                  if (*(v33 + 3640) != 1)
                                  {
                                    v875 = v32;
                                    goto LABEL_812;
                                  }

                                  v1704 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                  v1705 = v1704;
                                  if (sNRCopyLogToStdErr)
                                  {

                                    v875 = v2011;
                                    goto LABEL_1531;
                                  }

                                  v1728 = os_log_type_enabled(v1704, OS_LOG_TYPE_INFO);

                                  v875 = v2011;
                                  if (v1728)
                                  {
LABEL_1531:
                                    v1729 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                    _NRLogWithArgs(v1729, 1, "%s%.30s:%-4d source-resume: NexusBKInput", v1730, v1731, v1732, v1733, v1734, "");
                                  }

LABEL_812:
                                  dispatch_resume(*v874);
                                  v33 = 0x280D73000uLL;
                                  v32 = v875;
                                }

LABEL_813:
                                v876 = v848 | 0x60000;
                                if (*(v33 + 3640) == 1)
                                {
                                  v1207 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                  v1208 = v1207;
                                  if (sNRCopyLogToStdErr == 1)
                                  {

                                    v32 = v2011;
                                  }

                                  else
                                  {
                                    v1347 = os_log_type_enabled(v1207, OS_LOG_TYPE_INFO);

                                    v32 = v2011;
                                    if (!v1347)
                                    {
                                      goto LABEL_814;
                                    }
                                  }

                                  v1348 = v32;
                                  v1349 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                  _NRLogWithArgs(v1349, 1, "%s%.30s:%-4d %s: done with NtL fast-path", v1350, v1351, v1352, v1353, v1354, "");

                                  v32 = v1348;
                                }

LABEL_814:
                                v834 = *(v35 + 82);
                                v3 = v2019;
                                if (v834 >= 0xB)
                                {
                                  v834 -= 11 * ((((117 * v834) >> 8) + (((v834 - ((117 * v834) >> 8)) & 0xFE) >> 1)) >> 3);
                                }

                                v835 = v834;
                                *(v2018 + v834) = v876;
LABEL_817:
                                if (v835 < 0xA)
                                {
                                  v877 = v834 + 1;
                                }

                                else
                                {
                                  v877 = v834 - 10;
                                }

                                *(v35 + 82) = v877;
                                goto LABEL_821;
                              }

                              if ((v860 & 0x20) == 0 || !v2019[43])
                              {
                                goto LABEL_808;
                              }

                              v866 = v2011;
                              v867 = v860 & 0xFFFFFFFFFFFFFFDFLL;
                              v865 = v2019;
LABEL_806:
                              v865[18] = v867;
                              if (*(v33 + 3640) != 1)
                              {
LABEL_807:
                                dispatch_resume(v865[43]);
                                v860 = v865[18];
                                v33 = 0x280D73000uLL;
                                v32 = v866;
                                goto LABEL_808;
                              }

                              v1706 = _NRCopyLogObjectForNRUUID(v865[6]);
                              v1707 = v1706;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                v865 = v2019;
                                v866 = v2011;
                              }

                              else
                              {
                                v1735 = os_log_type_enabled(v1706, OS_LOG_TYPE_INFO);

                                v865 = v2019;
                                v866 = v2011;
                                if (!v1735)
                                {
                                  goto LABEL_807;
                                }
                              }

                              v1736 = _NRCopyLogObjectForNRUUID(v865[6]);
                              _NRLogWithArgs(v1736, 1, "%s%.30s:%-4d source-resume: NexusBEInput", v1737, v1738, v1739, v1740, v1741, "");

                              goto LABEL_807;
                            }

                            if (!*(v33 + 3640))
                            {
LABEL_141:
                              v109 |= 0x4000u;
                              *(v35 + 80) = 0;
                              v135 = v2020;
                              goto LABEL_142;
                            }

                            v176 = v43;
                            v177 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v208 = v177;
                              LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v177, OS_LOG_TYPE_INFO);

                              v33 = 0x280D73000;
                              v43 = v176;
                              if (!ESPSequenceNumberFromPacket)
                              {
                                goto LABEL_141;
                              }
                            }

                            v209 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            v1953 = *(v35 + 80);
                            _NRLogWithArgs(v209, 1, "%s%.30s:%-4d %s: not memmoving filledIn=%u, bufferHandled=%zu", v210, v211, v212, v213, v214, "");

                            v43 = v176;
                            v33 = 0x280D73000;
                            goto LABEL_141;
                          }

                          v111 = v2019;
                          v112 = v2019[18];
                          if ((v112 & 0x20) == 0 && v2019[43])
                          {
                            v2019[18] = (v112 | 0x20);
                            if (*(v33 + 3640) != 1)
                            {
                              goto LABEL_115;
                            }

                            ESPSequenceNumberFromPacket = v43;
                            v199 = _NRCopyLogObjectForNRUUID(v111[6]);
                            v200 = v199;
                            if (sNRCopyLogToStdErr == 1)
                            {

                              v111 = v2019;
                              goto LABEL_188;
                            }

                            LODWORD(v2009) = os_log_type_enabled(v199, OS_LOG_TYPE_INFO);

                            v111 = v2019;
                            v43 = ESPSequenceNumberFromPacket;
                            if (v2009)
                            {
LABEL_188:
                              v215 = _NRCopyLogObjectForNRUUID(v111[6]);
                              _NRLogWithArgs(v215, 1, "%s%.30s:%-4d source-suspend: NexusBEInput", v216, v217, v218, v219, v220, "");

                              v43 = ESPSequenceNumberFromPacket;
                            }

LABEL_115:
                            dispatch_suspend(v111[43]);
                            v33 = 0x280D73000uLL;
                          }

                          *(v35 + 84) |= 1u;
                          v113 = *(v35 + 83);
                          if (v113 > 1)
                          {
                            if (v113 == 2)
                            {
                              v123 = v2019;
                              v2019[21] = v2019[21] + 1;
                              v123[18] = (v123[18] & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(v35 + 84) & 1)));
                              if (*(v33 + 3640) != 1)
                              {
                                goto LABEL_135;
                              }

                              v116 = v43;
                              v124 = _NRCopyLogObjectForNRUUID(v2019[6]);
                              v125 = v124;
                              if (sNRCopyLogToStdErr == 1)
                              {
                              }

                              else
                              {
                                LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v124, OS_LOG_TYPE_INFO);

                                v33 = 0x280D73000;
                                v43 = v116;
                                if (!ESPSequenceNumberFromPacket)
                                {
                                  goto LABEL_135;
                                }
                              }

                              v128 = _NRCopyLogObjectForNRUUID(v2019[6]);
                              *(v35 + 84);
                              _NRLogWithArgs(v128, 1, "%s%.30s:%-4d source-%s: High", v231, v232, v233, v234, v235, "");
                            }

                            else
                            {
                              if (v113 != 3)
                              {
                                goto LABEL_135;
                              }

                              v119 = v2019;
                              v2019[23] = v2019[23] + 1;
                              v119[18] = (v119[18] & 0xFFFFFFFFFFFFFFFBLL | (4 * (*(v35 + 84) & 1)));
                              if (*(v33 + 3640) != 1)
                              {
                                goto LABEL_135;
                              }

                              v116 = v43;
                              v120 = _NRCopyLogObjectForNRUUID(v2019[6]);
                              v121 = v120;
                              if (sNRCopyLogToStdErr == 1)
                              {
                              }

                              else
                              {
                                LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v120, OS_LOG_TYPE_INFO);

                                v33 = 0x280D73000;
                                v43 = v116;
                                if (!ESPSequenceNumberFromPacket)
                                {
                                  goto LABEL_135;
                                }
                              }

                              v128 = _NRCopyLogObjectForNRUUID(v2019[6]);
                              *(v35 + 84);
                              _NRLogWithArgs(v128, 1, "%s%.30s:%-4d source-%s: Isochronous", v226, v227, v228, v229, v230, "");
                            }

LABEL_134:

                            v33 = 0x280D73000uLL;
                            v43 = v116;
                            goto LABEL_135;
                          }

                          if (!*(v35 + 83))
                          {
                            v122 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v126 = v43;
                              v127 = v122;
                              LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v122, OS_LOG_TYPE_ERROR);

                              v43 = v126;
                              v33 = 0x280D73000;
                              if (!ESPSequenceNumberFromPacket)
                              {
                                goto LABEL_135;
                              }
                            }

                            v116 = v43;
                            v128 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            _NRLogWithArgs(v128, 16, "%s%.30s:%-4d invalid link channel priority", v129, v130, v131, v132, v133, "");
                            goto LABEL_134;
                          }

                          if (v113 == 1)
                          {
                            v114 = v2019;
                            v115 = v2019[18];
                            v2019[19] = v2019[19] + 1;
                            v114[18] = (v115 & 0xFFFFFFFFFFFFFFFELL | *(v35 + 84) & 1);
                            if (*(v33 + 3640) == 1)
                            {
                              v116 = v43;
                              v117 = _NRCopyLogObjectForNRUUID(v2019[6]);
                              v118 = v117;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                goto LABEL_190;
                              }

                              LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v117, OS_LOG_TYPE_INFO);

                              v33 = 0x280D73000;
                              v43 = v116;
                              if (ESPSequenceNumberFromPacket)
                              {
LABEL_190:
                                v128 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                *(v35 + 84);
                                _NRLogWithArgs(v128, 1, "%s%.30s:%-4d source-%s: Medium", v221, v222, v223, v224, v225, "");
                                goto LABEL_134;
                              }
                            }
                          }

LABEL_135:
                          v109 = v55 | 0x1800;
                          if (*(v33 + 3640) != 1)
                          {
                            v110 = v2020;
                            if (v2020)
                            {
                              goto LABEL_137;
                            }

                            goto LABEL_143;
                          }

                          v152 = v43;
                          v153 = _NRCopyLogObjectForNRUUID(v2019[6]);
                          if (sNRCopyLogToStdErr == 1)
                          {

                            goto LABEL_175;
                          }

                          v185 = v153;
                          LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v153, OS_LOG_TYPE_INFO);

                          if (ESPSequenceNumberFromPacket)
                          {
LABEL_175:
                            v186 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            _NRLogWithArgs(v186, 1, "%s%.30s:%-4d ", v187, v188, v189, v190, v191, "");
                          }

                          v33 = 0x280D73000;
                          v43 = v152;
                          v110 = v2020;
                          if (!v2020)
                          {
                            goto LABEL_143;
                          }

                          goto LABEL_137;
                        }

                        v109 = v55 | 0x400;
                        if (*(v33 + 3640) != 1)
                        {
                          goto LABEL_734;
                        }

                        v1331 = _NRCopyLogObjectForNRUUID(v2019[6]);
                        v1332 = v1331;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          goto LABEL_1490;
                        }

                        v1658 = os_log_type_enabled(v1331, OS_LOG_TYPE_INFO);

                        if (v1658)
                        {
LABEL_1490:
                          v1659 = _NRCopyLogObjectForNRUUID(v2019[6]);
                          _NRLogWithArgs(v1659, 1, "%s%.30s:%-4d %s: nothing to read from nexus", v1660, v1661, v1662, v1663, v1664, "");
                        }

                        v33 = 0x280D73000;
                        goto LABEL_734;
                      }

                      os_channel_slot_get_packet();
                      os_packet_get_next_buflet();
                      v58 = os_buflet_get_data_offset();
                      v59 = os_buflet_get_object_address();
                      v60 = os_buflet_get_data_length();
                      if (v60 >= 0x10000)
                      {
                        if (nrCopyLogObj_onceToken_563 != -1)
                        {
                          goto LABEL_1499;
                        }

                        goto LABEL_860;
                      }

                      v61 = v2019;
                      if (*(v2019 + 9) == 1)
                      {
                        v2020 = 0;
                        v2021 = 0;
                        v62 = (*v35 + *(v35 + 80));
                        v2020 = v62;
                        LODWORD(v2021) = v57;
                        v63 = *(v2019 + 14);
                        if (*(v2019 + 10) == 1)
                        {
                          v64 = nrPacketTo6LoWPAN((v2023 + v63), (WORD1(v2022) - v63), &v2020, 1u, (v2019 + 86), (v2019 + 88), 0);
                        }

                        else
                        {
                          memcpy(v62, (v2023 + v63), WORD1(v2022) - v63);
                          v64 = WORD1(v2022) - *(v61 + 14);
                        }

                        if (gNRPacketLoggingEnabled != 1)
                        {
                          goto LABEL_78;
                        }

                        v72 = _NRCopyLogObjectForNRUUID(v2019[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v73 = v72;
                          v74 = os_log_type_enabled(v72, OS_LOG_TYPE_INFO);

                          if (!v74)
                          {
                            goto LABEL_78;
                          }
                        }

                        v75 = _NRCopyLogObjectForNRUUID(v2019[6]);
                        _NRLogWithArgs(v75, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus (actual: %u)", v76, v77, v78, v79, v80, "");

                        goto LABEL_78;
                      }

                      if (!v60 && WORD1(v2022))
                      {
                        v2020 = 0;
                        v2021 = 0;
                        v2020 = *v35 + *(v35 + 80);
                        LODWORD(v2021) = v57;
                        v64 = nrPacketToTLV((v2023 + *(v2019 + 14)), (WORD1(v2022) - *(v2019 + 14)), &v2020, 1, (v2019 + 86), (v2019 + 88));
                        if (gNRPacketLoggingEnabled == 1)
                        {
                          v65 = _NRCopyLogObjectForNRUUID(v2019[6]);
                          if (sNRCopyLogToStdErr == 1)
                          {

                            goto LABEL_95;
                          }

                          v82 = v65;
                          v83 = os_log_type_enabled(v65, OS_LOG_TYPE_INFO);

                          if (v83)
                          {
LABEL_95:
                            v84 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            getESPSequenceNumberFromPacket(v2023, WORD1(v2022));
                            getESPSPIFromPacket(v2023, WORD1(v2022));
                            _NRLogWithArgs(v84, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", v85, v86, v87, v88, v89, "");
                          }
                        }

LABEL_78:
                        v55 |= 0x80u;
                        goto LABEL_79;
                      }

                      if (v60)
                      {
                        v66 = v59 + v58;
                        v2020 = 0;
                        v2021 = 0;
                        v2020 = *v35 + *(v35 + 80);
                        LODWORD(v2021) = v57;
                        v67 = v60;
                        v64 = nrPacketToTLV((v66 + *(v2019 + 14)), (v60 - *(v2019 + 14)), &v2020, 1, (v2019 + 86), (v2019 + 88));
                        if (gNRPacketLoggingEnabled != 1)
                        {
LABEL_75:
                          v55 |= 0x100u;
                          goto LABEL_79;
                        }

                        v81 = _NRCopyLogObjectForNRUUID(v2019[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v91 = v81;
                          LODWORD(ESPSequenceNumberFromPacket) = os_log_type_enabled(v81, OS_LOG_TYPE_INFO);

                          if (!ESPSequenceNumberFromPacket)
                          {
                            goto LABEL_75;
                          }
                        }

                        v92 = _NRCopyLogObjectForNRUUID(v2019[6]);
                        ESPSequenceNumberFromPacket = getESPSequenceNumberFromPacket(v66, v67);
                        getESPSPIFromPacket(v66, v67);
                        _NRLogWithArgs(v92, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", v93, v94, v95, v96, v97, "");

                        goto LABEL_75;
                      }

                      v55 |= 0x200u;
                      if (gNRPacketLoggingEnabled == 1)
                      {
                        v90 = _NRCopyLogObjectForNRUUID(v2019[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

LABEL_101:
                          v100 = _NRCopyLogObjectForNRUUID(v2019[6]);
                          _NRLogWithArgs(v100, 1, "%s%.30s:%-4d %s: No data to write", v101, v102, v103, v104, v105, "");

                          goto LABEL_87;
                        }

                        v98 = v90;
                        v99 = os_log_type_enabled(v90, OS_LOG_TYPE_INFO);

                        if (v99)
                        {
                          goto LABEL_101;
                        }
                      }

LABEL_87:
                      v64 = 0;
LABEL_79:
                      *(v35 + 80) += v64;
                      v68 = os_channel_get_next_slot();
                      ++v41;
                      v69 = v2019;
                      v2019[60] = v2019[60] + 1;
                      *(v69 + 21) = 1;
                      v42 += v64;
                      if (!v68)
                      {
                        v43 = 0;
                        v44 = v56;
                        goto LABEL_105;
                      }

                      v70 = *(v35 + 82);
                      if (v70 >= 0xB)
                      {
                        v70 -= 11 * ((((117 * v70) >> 8) + (((v70 - ((117 * v70) >> 8)) & 0xFE) >> 1)) >> 3);
                      }

                      *(v2018 + v70) = v55;
                      if (v70 < 0xAu)
                      {
                        v71 = v70 + 1;
                      }

                      else
                      {
                        v71 = v70 - 10;
                      }

                      *(v35 + 82) = v71;
                      v44 = v56;
                      v56 = v68;
                      v55 = 0;
                    }
                  }

LABEL_60:
                  v43 = os_channel_get_next_slot();
                  v33 = 0x280D73000;
                  goto LABEL_61;
                }
              }

              v1315 = _NRCopyLogObjectForNRUUID(v2019[6]);
              _NRLogWithArgs(v1315, 1, "%s%.30s:%-4d %s: starting NtL outer loop", v1316, v1317, v1318, v1319, v1320, "");

              v33 = 0x280D73000;
              goto LABEL_47;
            }

            if (*(v33 + 3640) != 1)
            {
LABEL_710:
              v832 = v3[18];
              if ((v832 & 0x20) != 0 || !v3[43])
              {
                goto LABEL_714;
              }

              v833 = v32;
              v3[18] = (v832 | 0x20);
              if (*(v33 + 3640) != 1)
              {
LABEL_713:
                dispatch_suspend(v3[43]);
                v32 = v833;
LABEL_714:
                v834 = *(v35 + 82);
                if (v834 >= 0xB)
                {
                  v834 -= 11 * ((((117 * v834) >> 8) + (((v834 - ((117 * v834) >> 8)) & 0xFE) >> 1)) >> 3);
                }

                v835 = v834;
                *(v35 + 4 * v834 + 36) = 3;
                goto LABEL_817;
              }

              v1641 = _NRCopyLogObjectForNRUUID(v3[6]);
              v1642 = v1641;
              if (sNRCopyLogToStdErr == 1)
              {

                v3 = v2019;
              }

              else
              {
                v1690 = os_log_type_enabled(v1641, OS_LOG_TYPE_INFO);

                v3 = v2019;
                if (!v1690)
                {
                  goto LABEL_713;
                }
              }

              v1691 = _NRCopyLogObjectForNRUUID(v3[6]);
              _NRLogWithArgs(v1691, 1, "%s%.30s:%-4d source-suspend: NexusBEInput", v1692, v1693, v1694, v1695, v1696, "");

              goto LABEL_713;
            }

            v1200 = v32;
            v1201 = _NRCopyLogObjectForNRUUID(v3[6]);
            v1202 = v1201;
            if (sNRCopyLogToStdErr == 1)
            {

              v3 = v2019;
              v32 = v1200;
            }

            else
            {
              v1321 = os_log_type_enabled(v1201, OS_LOG_TYPE_INFO);

              v3 = v2019;
              v33 = 0x280D73000;
              v32 = v1200;
              if (!v1321)
              {
                goto LABEL_710;
              }
            }

            v1322 = v32;
            v1323 = _NRCopyLogObjectForNRUUID(v3[6]);
            _NRLogWithArgs(v1323, 1, "%s%.30s:%-4d %s: ignoring NtL fast-path for %u, as waiting for link output available", v1324, v1325, v1326, v1327, v1328, "");

            v32 = v1322;
            v33 = 0x280D73000;
            goto LABEL_710;
          }

          v918 = v32;
          if (*(v33 + 3640) == 1)
          {
            v1913 = _NRCopyLogObjectForNRUUID(v2019[6]);
            v1914 = v1913;
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v1931 = os_log_type_enabled(v1913, OS_LOG_TYPE_INFO);

              if (!v1931)
              {
                goto LABEL_890;
              }
            }

            v1932 = _NRCopyLogObjectForNRUUID(v2019[6]);
            _NRLogWithArgs(v1932, 1, "%s%.30s:%-4d ", v1933, v1934, v1935, v1936, v1937, "");
          }

LABEL_890:
          v919 = _NRCopyLogObjectForNRUUID(v2019[6]);
          v920 = v919;
          if (sNRCopyLogToStdErr == 1)
          {

            v3 = v2019;
            v32 = v918;
          }

          else
          {
            v1190 = os_log_type_enabled(v919, OS_LOG_TYPE_FAULT);

            v3 = v2019;
            v32 = v918;
            if (!v1190)
            {
              goto LABEL_821;
            }
          }

          v1191 = v32;
          v1192 = _NRCopyLogObjectForNRUUID(v3[6]);
          _NRLogWithArgs(v1192, 17, "%s: Invalid write context for nexus priority: %u", v1193, v1194, v1195, v1196, v1197, "Medium");

          v32 = v1191;
LABEL_821:

          goto LABEL_1397;
        }

        v252 = 0;
        v253 = &NRParserLinkWriteAvailable_priorityArrayFull;
        if (v29)
        {
          v253 = &NRParserLinkWriteAvailable_priorityArrayForMedium;
        }

        v2003 = v253;
        if (v29)
        {
          v254 = 26;
        }

        else
        {
          v254 = 25;
        }

        if (v29)
        {
          v255 = 2;
        }

        else
        {
          v255 = 4;
        }

        v256 = *(v3 + v254) & (v255 - 1);
        v1973 = v254;
        *(v3 + v254) = v256;
        v257 = v255 + 127;
        v1990 = (v3 + 30);
        v1989 = (v3 + 37);
        v1993 = v3 + 45;
        v1988 = (v3 + 62);
        v1987 = v3 + 22;
        v1986 = (v3 + 29);
        v1985 = (v3 + 35);
        v1991 = v3 + 43;
        v1984 = (v3 + 60);
        v1983 = v3 + 21;
        v1982 = (v3 + 28);
        v1981 = (v3 + 33);
        v1992 = v3 + 41;
        v1980 = (v3 + 58);
        v1979 = v3 + 20;
        v1978 = (v3 + 27);
        v1977 = (v3 + 31);
        v1994 = v3 + 39;
        v1976 = (v3 + 56);
        v1975 = v3 + 19;
        v1974 = (v3 + 15);
        v1995 = (v3 + 13);
        v1997 = (v3 + 17);
        v1999 = v16;
        v2002 = v255;
        v2001 = v255 + 127;
        while (1)
        {
          v260 = v256 & v257;
          if (*(v3 + 13) != 4)
          {
            break;
          }

LABEL_232:
          v256 = v260 + 1;
          if (++v252 == v255)
          {
            ++*(v3 + v1973);
            goto LABEL_1397;
          }
        }

        v2006 = v1971;
        LODWORD(v2005) = v256 & v257;
        v261 = v2003[v260];
        dispatch_assert_queue_V2(v3[8]);
        v2011 = 0;
        v262 = 0;
        if (v261 > 101)
        {
          v263 = 0x280D73000;
          if (v261 == 102)
          {
            v262 = 0;
            v264 = 0;
            v2011 = NRBluetoothPacketParserSuspendNexusBEInputSource;
            v269 = v1986;
            v270 = v1985;
            v271 = v1991;
            v2015 = v1983;
            v272 = &v2017;
          }

          else
          {
            v264 = 0;
            v265 = v2011;
            v2015 = v2011;
            v266 = v2011;
            v267 = v2011;
            v268 = v2011;
            if (v261 != 103)
            {
              goto LABEL_244;
            }

            v262 = 0;
            v264 = 0;
            v2011 = NRBluetoothPacketParserSuspendNexusBKInputSource;
            v269 = v1990;
            v270 = v1989;
            v271 = v1993;
            v2015 = v1987;
            v272 = &v2021;
          }
        }

        else
        {
          v263 = 0x280D73000;
          if (v261 == 100)
          {
            v262 = 1;
            v269 = v1978;
            v270 = v1977;
            v271 = v1994;
            v264 = 1;
            v2011 = NRBluetoothPacketParserSuspendNexusVOInputSource;
            v2015 = v1975;
            v272 = &v2009;
          }

          else
          {
            v264 = 0;
            v265 = v2011;
            v2015 = v2011;
            v266 = v2011;
            v267 = v2011;
            v268 = v2011;
            if (v261 != 101)
            {
              goto LABEL_244;
            }

            v264 = 0;
            v2011 = NRBluetoothPacketParserSuspendNexusVIInputSource;
            v262 = 1;
            v269 = v1982;
            v270 = v1981;
            v271 = v1992;
            v2015 = v1979;
            v272 = &v2013;
          }
        }

        v266 = *(v272 - 32);
        v265 = *v269;
        v268 = *v270;
        v267 = *v271;
        v263 = 0x280D73000uLL;
LABEL_244:
        v2018 = v268;
        v2004 = v265;
        if (*(v263 + 3640) != 1)
        {
LABEL_245:
          v273 = *v16;
          LODWORD(v2017) = *&v264 & ((*v16 & 8) >> 3);
          if (v2017)
          {
            v274 = 3;
            v275 = v1997;
            v276 = "Isochronous";
            goto LABEL_263;
          }

          if (!v262)
          {
            goto LABEL_261;
          }

          if ((v273 & 4) != 0)
          {
            v275 = v1974;
LABEL_262:
            v274 = 2;
            v276 = "High";
LABEL_263:
            v282 = *v275;
            v2007 = v267;
            if (v282)
            {
              v283 = *(v282 + 24);
              if ((*(v283 + 84) & 1) == 0)
              {
                v2012 = v275;
                v1998 = v274;
                v1996 = v276;
                v284 = *(v283 + 8);
                v285 = *(v283 + 83);
                v286 = 584;
                if (v285 == 3)
                {
                  v286 = 600;
                }

                v39 = v285 == 2;
                v287 = 616;
                if (!v39)
                {
                  v287 = v286;
                }

                v2009 = v287;
                v288 = v2018;
                if (*(v263 + 3640) != 1)
                {
                  goto LABEL_270;
                }

                v505 = _NRCopyLogObjectForNRUUID(v3[6]);
                if (sNRCopyLogToStdErr == 1)
                {

                  goto LABEL_498;
                }

                v510 = v505;
                v511 = os_log_type_enabled(v505, OS_LOG_TYPE_INFO);

                v263 = 0x280D73000;
                if (v511)
                {
LABEL_498:
                  v512 = _NRCopyLogObjectForNRUUID(v3[6]);
                  _NRLogWithArgs(v512, 1, "%s%.30s:%-4d %s: starting NtL outer loop", v513, v514, v515, v516, v517, "");

                  v263 = 0x280D73000;
                }

LABEL_270:
                v2008 = v284;
                v2000 = v252;
                LODWORD(v2014) = 0;
                v289 = 0;
                v290 = 0;
                v2013 = 0;
                v291 = 0;
                v2010 = 0;
                v2024 = 0u;
                v2025 = 0u;
                ESPSequenceNumberFromPacket = v283 + 36;
                v2022 = 0u;
                v2023 = 0u;
                v292 = 9;
                while (2)
                {
                  if (*(v263 + 3640) == 1)
                  {
                    v383 = _NRCopyLogObjectForNRUUID(v2019[6]);
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v386 = v383;
                      v387 = os_log_type_enabled(v383, OS_LOG_TYPE_INFO);

                      v263 = 0x280D73000;
                      if (!v387)
                      {
                        goto LABEL_272;
                      }
                    }

                    v388 = _NRCopyLogObjectForNRUUID(v2019[6]);
                    _NRLogWithArgs(v388, 1, "%s%.30s:%-4d %s: starting NtL inner loop", v389, v390, v391, v392, v393, "");

                    v263 = 0x280D73000;
                  }

LABEL_272:
                  v293 = v292 | 0x10;
                  if ((v2017 & 1) == 0)
                  {
                    v295 = *(v283 + 28);
                    v294 = *(v283 + 32);
                    if (v295 > v294)
                    {
                      v296 = *(v283 + 80);
                      if ((v295 - v294) >= (0x4000 - v296))
                      {
                        v297 = (0x4000 - v296);
                      }

                      else
                      {
                        v297 = (v295 - v294);
                      }

                      v298 = v2008;
                      memcpy((*v283 + v296), &v2008[v294], v297);
                      v299 = *(v283 + 28);
                      v300 = *(v283 + 32) + v297;
                      *(v283 + 32) = v300;
                      if (v299 <= v300)
                      {
                        v301 = 0;
                      }

                      else
                      {
                        memmove(v298, &v298[v300], v299 - v300);
                        v301 = *(v283 + 28) - *(v283 + 32);
                      }

                      v302 = v2019;
                      v263 = 0x280D73000uLL;
                      *(v283 + 28) = v301;
                      *(v283 + 32) = 0;
                      *(v283 + 80) += v297;
                      if (gNRPacketLoggingEnabled == 1)
                      {
                        v414 = _NRCopyLogObjectForNRUUID(v302[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v446 = v414;
                          v1972 = os_log_type_enabled(v414, OS_LOG_TYPE_INFO);

                          v302 = v2019;
                          v263 = 0x280D73000;
                          if (!v1972)
                          {
                            goto LABEL_281;
                          }
                        }

                        v447 = _NRCopyLogObjectForNRUUID(v302[6]);
                        _NRLogWithArgs(v447, 1, "%s%.30s:%-4d %s: wrote %u (%u/%u) bytes from linkWriteBuffer", v448, v449, v450, v451, v452, "");

                        v263 = 0x280D73000;
                      }

LABEL_281:
                      v293 = v292 | 0x30;
                      v290 += v297;
                      v288 = v2018;
                    }
                  }

                  v303 = v2013;
                  if (v288)
                  {
                    v303 = os_channel_get_next_slot();
                    v263 = 0x280D73000uLL;
                  }

                  v304 = v2019;
                  if (!v303)
                  {
                    v356 = 0;
                    v357 = *(v283 + 80);
                    if (!*(v283 + 80))
                    {
                      goto LABEL_421;
                    }

                    goto LABEL_336;
                  }

LABEL_285:
                  v305 = 0x4000 - *(v283 + 80);
                  if (v305 < nrMaxTLVLengthForPacket(v2023 + *(v304 + 14), (WORD1(v2022) - *(v304 + 14))))
                  {
                    v293 |= 0x40u;
                    v263 = 0x280D73000uLL;
                    if (gNRPacketLoggingEnabled != 1)
                    {
                      v356 = v303;
                      v357 = *(v283 + 80);
                      if (!*(v283 + 80))
                      {
                        goto LABEL_421;
                      }

LABEL_336:
                      v2013 = v356;
                      v2020 = 0;
                      v358 = v263;
                      if (*(v263 + 3640) == 1)
                      {
                        v384 = _NRCopyLogObjectForNRUUID(v2019[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {

                          v358 = 0x280D73000;
                        }

                        else
                        {
                          v395 = v384;
                          v396 = os_log_type_enabled(v384, OS_LOG_TYPE_INFO);

                          v358 = 0x280D73000;
                          if (!v396)
                          {
                            goto LABEL_337;
                          }
                        }

                        v397 = _NRCopyLogObjectForNRUUID(v2019[6]);
                        v1954 = *(v283 + 80);
                        _NRLogWithArgs(v397, 1, "%s%.30s:%-4d %s: invoking send callback w/ written %u", v398, v399, v400, v401, v402, "");
                      }

LABEL_337:
                      v359 = (*(*v2012 + 8))(**v2012, *v283, *(v283 + 80), &v2020, 0, 0);
                      v263 = v358;
                      if (*(v358 + 3640) == 1)
                      {
                        v385 = _NRCopyLogObjectForNRUUID(v2019[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v403 = v385;
                          v404 = os_log_type_enabled(v385, OS_LOG_TYPE_INFO);

                          v263 = 0x280D73000;
                          if (!v404)
                          {
                            goto LABEL_338;
                          }
                        }

                        v405 = _NRCopyLogObjectForNRUUID(v2019[6]);
                        v1955 = *(v283 + 80);
                        _NRLogWithArgs(v405, 1, "%s%.30s:%-4d %s: canWriteMore: %d bufferHandled=%zu/%u", v406, v407, v408, v409, v410, "");

                        v263 = 0x280D73000;
                      }

LABEL_338:
                      if (v359)
                      {
                        v360 = v293 | 0x800;
                        v361 = v2020;
                        if (!v2020)
                        {
                          goto LABEL_370;
                        }

LABEL_364:
                        v379 = *(v263 + 3640);
                        if (v361 < *(v283 + 80))
                        {
                          if (!*(v263 + 3640))
                          {
                            goto LABEL_366;
                          }

                          v412 = _NRCopyLogObjectForNRUUID(v2019[6]);
                          if (sNRCopyLogToStdErr == 1)
                          {

                            goto LABEL_407;
                          }

                          v430 = v412;
                          v431 = os_log_type_enabled(v412, OS_LOG_TYPE_INFO);

                          if (v431)
                          {
LABEL_407:
                            v432 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            v1956 = *(v283 + 80);
                            _NRLogWithArgs(v432, 1, "%s%.30s:%-4d %s: memmoving filledIn=%u, bufferHandled=%zu", v433, v434, v435, v436, v437, "");
                          }

LABEL_366:
                          v360 |= 0x2000u;
                          memmove(*v283, (*v283 + v2020), *(v283 + 80) - v2020);
                          v380 = v2020;
                          *(v283 + 80) -= v2020;
                          v2010 = (v2010 + 1);
                          v263 = 0x280D73000;
LABEL_369:
                          *&v2009[v2019] += v380;
LABEL_370:
                          LODWORD(v2014) = v2014 + 1;
                          if (v359)
                          {
                            v381 = *(v283 + 82);
                            if (v381 >= 0xB)
                            {
                              v381 -= 11 * ((((117 * v381) >> 8) + (((v381 - ((117 * v381) >> 8)) & 0xFE) >> 1)) >> 3);
                            }

                            v292 = 0;
                            *(ESPSequenceNumberFromPacket + 4 * v381) = v360;
                            if (v381 < 0xAu)
                            {
                              v382 = v381 + 1;
                            }

                            else
                            {
                              v382 = v381 - 10;
                            }

                            *(v283 + 82) = v382;
                            v288 = v2018;
                            continue;
                          }

LABEL_422:
                          if (*(v263 + 3640) == 1)
                          {
                            v507 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v530 = v507;
                              v531 = os_log_type_enabled(v507, OS_LOG_TYPE_INFO);

                              v263 = 0x280D73000;
                              if (!v531)
                              {
                                goto LABEL_423;
                              }
                            }

                            v532 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            _NRLogWithArgs(v532, 1, "%s%.30s:%-4d %s: out of NtL inner loop", v533, v534, v535, v536, v537, "");

                            v263 = 0x280D73000;
                          }

LABEL_423:
                          v474 = v360 | 0x8000;
                          if (v291)
                          {
                            os_channel_advance_slot();
                            v263 = 0x280D73000;
                            *(v2019 + 18) = 1;
                            v16 = v1999;
LABEL_426:
                            if (v2014 > 8u || v2018 && (v475 = os_channel_available_slot_count(), v263 = 0x280D73000uLL, v475 <= 1))
                            {
                              if (*(v263 + 3640) != 1)
                              {
                                goto LABEL_430;
                              }

                              v526 = _NRCopyLogObjectForNRUUID(v2019[6]);
                              v527 = v526;
                              if (sNRCopyLogToStdErr == 1)
                              {

                                v16 = v1999;
                                goto LABEL_512;
                              }

                              v554 = os_log_type_enabled(v526, OS_LOG_TYPE_INFO);

                              v16 = v1999;
                              if (v554)
                              {
LABEL_512:
                                v555 = v2019;
                                v556 = _NRCopyLogObjectForNRUUID(v2019[6]);
                                v1945 = v555[54] * 0.000001;
                                _NRLogWithArgs(v556, 1, "%s%.30s:%-4d %s: performing RX sync (%u packets, %u bytes, %u pending, %0.2f msec, canWriteMore %d, memmove %u)", v557, v558, v559, v560, v561, "");
                              }

LABEL_430:
                              v474 = v360 | 0x18000;
                              os_channel_sync();
                              *(v2019 + 18) = 0;
                              v263 = 0x280D73000uLL;
                            }
                          }

                          else
                          {
                            v16 = v1999;
                            if (*(v2019 + 18))
                            {
                              goto LABEL_426;
                            }
                          }

                          v3 = v2019;
                          v252 = v2000;
                          if (*(v263 + 3640) == 1)
                          {
                            v508 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v538 = v508;
                              v539 = os_log_type_enabled(v508, OS_LOG_TYPE_INFO);

                              v263 = 0x280D73000;
                              if (!v539)
                              {
                                goto LABEL_432;
                              }
                            }

                            v540 = _NRCopyLogObjectForNRUUID(v3[6]);
                            _NRLogWithArgs(v540, 1, "%s%.30s:%-4d %s: out of NtL outer loop", v541, v542, v543, v544, v545, "");

                            v263 = 0x280D73000;
                          }

LABEL_432:
                          if (v357)
                          {
LABEL_433:
                            if (*(v263 + 3640) != 1)
                            {
                              goto LABEL_434;
                            }

                            v509 = _NRCopyLogObjectForNRUUID(v3[6]);
                            if (sNRCopyLogToStdErr == 1)
                            {

                              goto LABEL_510;
                            }

                            v546 = v509;
                            v547 = os_log_type_enabled(v509, OS_LOG_TYPE_INFO);

                            if (v547)
                            {
LABEL_510:
                              v548 = _NRCopyLogObjectForNRUUID(v3[6]);
                              _NRLogWithArgs(v548, 1, "%s%.30s:%-4d %s: done with NtL fast-path", v549, v550, v551, v552, v553, "");
                            }

LABEL_434:
                            v476 = *(v283 + 82);
                            if (v476 >= 0xB)
                            {
                              v476 -= 11 * ((((117 * v476) >> 8) + (((v476 - ((117 * v476) >> 8)) & 0xFE) >> 1)) >> 3);
                            }

                            *(ESPSequenceNumberFromPacket + 4 * v476) = v474 | 0x60000;
                            if (v476 < 0xAu)
                            {
                              v259 = v476 + 1;
                            }

                            else
                            {
                              v259 = v476 - 10;
                            }

LABEL_230:
                            *(v283 + 82) = v259;
                            goto LABEL_231;
                          }

                          if (v1998 <= 1)
                          {
                            if (v1998)
                            {
                              v477 = v3[18];
                              if ((*(v3 + 15) & 4) == 0)
                              {
                                goto LABEL_453;
                              }

                              if ((v477 & 0x20) != 0 && *v1991)
                              {
                                goto LABEL_471;
                              }
                            }

                            else
                            {
                              v477 = v3[18];
LABEL_453:
                              if ((v477 & 8) != 0 && *v1994)
                              {
                                v3[18] = (v477 & 0xFFFFFFFFFFFFFFF7);
                                if (*(v263 + 3640) != 1)
                                {
                                  goto LABEL_456;
                                }

                                v582 = _NRCopyLogObjectForNRUUID(v3[6]);
                                v583 = v582;
                                if (sNRCopyLogToStdErr == 1)
                                {

                                  v3 = v2019;
                                  v16 = v1999;
                                  v252 = v2000;
                                  goto LABEL_535;
                                }

                                v603 = os_log_type_enabled(v582, OS_LOG_TYPE_INFO);

                                v3 = v2019;
                                v16 = v1999;
                                v252 = v2000;
                                if (v603)
                                {
LABEL_535:
                                  v604 = _NRCopyLogObjectForNRUUID(v3[6]);
                                  _NRLogWithArgs(v604, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v605, v606, v607, v608, v609, "");
                                }

LABEL_456:
                                dispatch_resume(v3[39]);
                                v477 = v3[18];
                              }

                              if ((v477 & 0x10) != 0 && *v1992)
                              {
                                v3[18] = (v477 & 0xFFFFFFFFFFFFFFEFLL);
                                if (gNRPacketLoggingEnabled != 1)
                                {
                                  goto LABEL_460;
                                }

                                v584 = _NRCopyLogObjectForNRUUID(v3[6]);
                                v585 = v584;
                                if (sNRCopyLogToStdErr == 1)
                                {

                                  v3 = v2019;
                                  v16 = v1999;
                                  v252 = v2000;
                                  goto LABEL_537;
                                }

                                v610 = os_log_type_enabled(v584, OS_LOG_TYPE_INFO);

                                v3 = v2019;
                                v16 = v1999;
                                v252 = v2000;
                                if (v610)
                                {
LABEL_537:
                                  v611 = _NRCopyLogObjectForNRUUID(v3[6]);
                                  _NRLogWithArgs(v611, 1, "%s%.30s:%-4d source-resume: NexusVIInput", v612, v613, v614, v615, v616, "");
                                }

LABEL_460:
                                dispatch_resume(v3[41]);
                                v477 = v3[18];
                              }

                              if ((v477 & 0x20) != 0)
                              {
                                v263 = 0x280D73000;
                                if (!*v1991)
                                {
                                  goto LABEL_474;
                                }

LABEL_471:
                                v3[18] = (v477 & 0xFFFFFFFFFFFFFFDFLL);
                                if (*(v263 + 3640) == 1)
                                {
                                  v580 = _NRCopyLogObjectForNRUUID(v3[6]);
                                  v581 = v580;
                                  if (sNRCopyLogToStdErr == 1)
                                  {

                                    v3 = v2019;
                                    v16 = v1999;
                                    v252 = v2000;
                                  }

                                  else
                                  {
                                    v596 = os_log_type_enabled(v580, OS_LOG_TYPE_INFO);

                                    v3 = v2019;
                                    v16 = v1999;
                                    v252 = v2000;
                                    if (!v596)
                                    {
                                      goto LABEL_472;
                                    }
                                  }

                                  v597 = _NRCopyLogObjectForNRUUID(v3[6]);
                                  _NRLogWithArgs(v597, 1, "%s%.30s:%-4d source-resume: NexusBEInput", v598, v599, v600, v601, v602, "");
                                }

LABEL_472:
                                dispatch_resume(v3[43]);
                                v477 = v3[18];
                              }

                              v263 = 0x280D73000uLL;
                            }

LABEL_474:
                            if ((v477 & 0x40) == 0 || !*v1993)
                            {
                              goto LABEL_433;
                            }

                            v3[18] = (v477 & 0xFFFFFFFFFFFFFFBFLL);
                            v479 = v1993;
                            if (*(v263 + 3640) != 1)
                            {
LABEL_477:
                              dispatch_resume(*v479);
                              v263 = 0x280D73000;
                              goto LABEL_433;
                            }

                            v578 = _NRCopyLogObjectForNRUUID(v3[6]);
                            v579 = v578;
                            if (sNRCopyLogToStdErr == 1)
                            {

                              v3 = v2019;
                            }

                            else
                            {
                              v586 = os_log_type_enabled(v578, OS_LOG_TYPE_INFO);

                              v479 = v1993;
                              v3 = v2019;
                              v16 = v1999;
                              v252 = v2000;
                              if (!v586)
                              {
                                goto LABEL_477;
                              }
                            }

                            v587 = _NRCopyLogObjectForNRUUID(v3[6]);
                            _NRLogWithArgs(v587, 1, "%s%.30s:%-4d source-resume: NexusBKInput", v588, v589, v590, v591, v592, "");
                            v593 = &v2024;
LABEL_542:
                            v479 = *(v593 - 32);

                            v3 = v2019;
                            v16 = v1999;
                            v252 = v2000;
                            goto LABEL_477;
                          }

                          if (v1998 != 2)
                          {
                            v482 = v3[18];
                            if ((v482 & 8) == 0 || !*v1994)
                            {
                              goto LABEL_433;
                            }

                            v3[18] = (v482 & 0xFFFFFFFFFFFFFFF7);
                            v479 = v1994;
                            if (*(v263 + 3640) != 1)
                            {
                              goto LABEL_477;
                            }

                            v483 = _NRCopyLogObjectForNRUUID(v3[6]);
                            v484 = v483;
                            if (sNRCopyLogToStdErr == 1)
                            {

                              v3 = v2019;
                            }

                            else
                            {
                              v623 = os_log_type_enabled(v483, OS_LOG_TYPE_INFO);

                              v479 = v1994;
                              v3 = v2019;
                              v16 = v1999;
                              v252 = v2000;
                              if (!v623)
                              {
                                goto LABEL_477;
                              }
                            }

                            v587 = _NRCopyLogObjectForNRUUID(v3[6]);
                            _NRLogWithArgs(v587, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v624, v625, v626, v627, v628, "");
                            v593 = &v2024 + 8;
                            goto LABEL_542;
                          }

                          v478 = v3[18];
                          if ((v478 & 8) != 0 && *v1994)
                          {
                            v3[18] = (v478 & 0xFFFFFFFFFFFFFFF7);
                            if (*(v263 + 3640) != 1)
                            {
                              goto LABEL_446;
                            }

                            v594 = _NRCopyLogObjectForNRUUID(v3[6]);
                            v595 = v594;
                            if (sNRCopyLogToStdErr == 1)
                            {

                              v3 = v2019;
                              v16 = v1999;
                              v252 = v2000;
                              goto LABEL_544;
                            }

                            v629 = os_log_type_enabled(v594, OS_LOG_TYPE_INFO);

                            v3 = v2019;
                            v16 = v1999;
                            v252 = v2000;
                            if (v629)
                            {
LABEL_544:
                              v630 = _NRCopyLogObjectForNRUUID(v3[6]);
                              _NRLogWithArgs(v630, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v631, v632, v633, v634, v635, "");
                            }

LABEL_446:
                            dispatch_resume(v3[39]);
                            v478 = v3[18];
                            v263 = 0x280D73000uLL;
                          }

                          if ((v478 & 0x10) == 0 || !*v1992)
                          {
                            goto LABEL_433;
                          }

                          v3[18] = (v478 & 0xFFFFFFFFFFFFFFEFLL);
                          v479 = v1992;
                          if (*(v263 + 3640) != 1)
                          {
                            goto LABEL_477;
                          }

                          v480 = _NRCopyLogObjectForNRUUID(v3[6]);
                          v481 = v480;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v3 = v2019;
                          }

                          else
                          {
                            v617 = os_log_type_enabled(v480, OS_LOG_TYPE_INFO);

                            v479 = v1992;
                            v3 = v2019;
                            v16 = v1999;
                            v252 = v2000;
                            if (!v617)
                            {
                              goto LABEL_477;
                            }
                          }

                          v587 = _NRCopyLogObjectForNRUUID(v3[6]);
                          _NRLogWithArgs(v587, 1, "%s%.30s:%-4d source-resume: NexusVIInput", v618, v619, v620, v621, v622, "");
                          v593 = &v2023 + 8;
                          goto LABEL_542;
                        }

                        if (!*(v263 + 3640))
                        {
LABEL_368:
                          v360 |= 0x4000u;
                          *(v283 + 80) = 0;
                          v380 = v2020;
                          goto LABEL_369;
                        }

                        v413 = _NRCopyLogObjectForNRUUID(v2019[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v438 = v413;
                          v439 = os_log_type_enabled(v413, OS_LOG_TYPE_INFO);

                          v263 = 0x280D73000;
                          if (!v439)
                          {
                            goto LABEL_368;
                          }
                        }

                        v440 = _NRCopyLogObjectForNRUUID(v2019[6]);
                        v1957 = *(v283 + 80);
                        _NRLogWithArgs(v440, 1, "%s%.30s:%-4d %s: not memmoving filledIn=%u, bufferHandled=%zu", v441, v442, v443, v444, v445, "");

                        v263 = 0x280D73000;
                        goto LABEL_368;
                      }

                      v362 = v2019;
                      if (v2011)
                      {
                        v2011(v2019);
                        v263 = 0x280D73000uLL;
                      }

                      *(v283 + 84) |= 1u;
                      v363 = *(v283 + 83);
                      if (v363 > 1)
                      {
                        if (v363 == 2)
                        {
                          v362[21] = v362[21] + 1;
                          v362[18] = (v362[18] & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(v283 + 84) & 1)));
                          if (*(v263 + 3640) != 1)
                          {
                            goto LABEL_362;
                          }

                          v370 = _NRCopyLogObjectForNRUUID(v2019[6]);
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v467 = v370;
                            v468 = os_log_type_enabled(v370, OS_LOG_TYPE_INFO);

                            v263 = 0x280D73000;
                            if (!v468)
                            {
                              goto LABEL_362;
                            }
                          }

                          v373 = _NRCopyLogObjectForNRUUID(v2019[6]);
                          *(v283 + 84);
                          _NRLogWithArgs(v373, 1, "%s%.30s:%-4d source-%s: High", v469, v470, v471, v472, v473, "");
                        }

                        else
                        {
                          if (v363 != 3)
                          {
                            goto LABEL_362;
                          }

                          v367 = v2019;
                          v2019[23] = v2019[23] + 1;
                          v367[18] = (v367[18] & 0xFFFFFFFFFFFFFFFBLL | (4 * (*(v283 + 84) & 1)));
                          if (*(v263 + 3640) != 1)
                          {
                            goto LABEL_362;
                          }

                          v368 = _NRCopyLogObjectForNRUUID(v2019[6]);
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v460 = v368;
                            v461 = os_log_type_enabled(v368, OS_LOG_TYPE_INFO);

                            v263 = 0x280D73000;
                            if (!v461)
                            {
                              goto LABEL_362;
                            }
                          }

                          v373 = _NRCopyLogObjectForNRUUID(v2019[6]);
                          *(v283 + 84);
                          _NRLogWithArgs(v373, 1, "%s%.30s:%-4d source-%s: Isochronous", v462, v463, v464, v465, v466, "");
                        }

LABEL_361:

                        v263 = 0x280D73000uLL;
                        goto LABEL_362;
                      }

                      if (!*(v283 + 83))
                      {
                        v369 = _NRCopyLogObjectForNRUUID(v362[6]);
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v371 = v369;
                          v372 = os_log_type_enabled(v369, OS_LOG_TYPE_ERROR);

                          v263 = 0x280D73000;
                          if (!v372)
                          {
                            goto LABEL_362;
                          }
                        }

                        v373 = _NRCopyLogObjectForNRUUID(v2019[6]);
                        _NRLogWithArgs(v373, 16, "%s%.30s:%-4d invalid link channel priority", v374, v375, v376, v377, v378, "");
                        goto LABEL_361;
                      }

                      if (v363 == 1)
                      {
                        v364 = v2019;
                        v365 = v2019[18];
                        v2019[19] = v2019[19] + 1;
                        v364[18] = (v365 & 0xFFFFFFFFFFFFFFFELL | *(v283 + 84) & 1);
                        if (*(v263 + 3640) == 1)
                        {
                          v366 = _NRCopyLogObjectForNRUUID(v2019[6]);
                          if (sNRCopyLogToStdErr == 1)
                          {

                            goto LABEL_413;
                          }

                          v453 = v366;
                          v454 = os_log_type_enabled(v366, OS_LOG_TYPE_INFO);

                          v263 = 0x280D73000;
                          if (v454)
                          {
LABEL_413:
                            v373 = _NRCopyLogObjectForNRUUID(v2019[6]);
                            *(v283 + 84);
                            _NRLogWithArgs(v373, 1, "%s%.30s:%-4d source-%s: Medium", v455, v456, v457, v458, v459, "");
                            goto LABEL_361;
                          }
                        }
                      }

LABEL_362:
                      v360 = v293 | 0x1800;
                      if (*(v263 + 3640) != 1)
                      {
                        v361 = v2020;
                        if (v2020)
                        {
                          goto LABEL_364;
                        }

                        goto LABEL_370;
                      }

                      v394 = _NRCopyLogObjectForNRUUID(v2019[6]);
                      if (sNRCopyLogToStdErr == 1)
                      {

                        goto LABEL_400;
                      }

                      v415 = v394;
                      v416 = os_log_type_enabled(v394, OS_LOG_TYPE_INFO);

                      if (v416)
                      {
LABEL_400:
                        v417 = _NRCopyLogObjectForNRUUID(v2019[6]);
                        _NRLogWithArgs(v417, 1, "%s%.30s:%-4d ", v418, v419, v420, v421, v422, "");
                      }

                      v263 = 0x280D73000;
                      v361 = v2020;
                      if (!v2020)
                      {
                        goto LABEL_370;
                      }

                      goto LABEL_364;
                    }

                    v411 = _NRCopyLogObjectForNRUUID(v2019[6]);
                    if (sNRCopyLogToStdErr == 1)
                    {

                      goto LABEL_404;
                    }

                    v423 = v411;
                    LODWORD(v2013) = os_log_type_enabled(v411, OS_LOG_TYPE_INFO);

                    if (v2013)
                    {
LABEL_404:
                      v424 = _NRCopyLogObjectForNRUUID(v2019[6]);
                      _NRLogWithArgs(v424, 1, "%s%.30s:%-4d %s: not enough room %u to fit maxTLVLen %u", v425, v426, v427, v428, v429, "");
                    }

                    v356 = v303;
LABEL_335:
                    v263 = 0x280D73000uLL;
                    v357 = *(v283 + 80);
                    if (*(v283 + 80))
                    {
                      goto LABEL_336;
                    }

LABEL_421:
                    v360 = v293 | 0x400;
                    if (*(v263 + 3640) != 1)
                    {
                      goto LABEL_422;
                    }

                    v528 = _NRCopyLogObjectForNRUUID(v2019[6]);
                    v529 = v528;
                    if (sNRCopyLogToStdErr == 1)
                    {

                      goto LABEL_514;
                    }

                    v562 = os_log_type_enabled(v528, OS_LOG_TYPE_INFO);

                    if (v562)
                    {
LABEL_514:
                      v563 = _NRCopyLogObjectForNRUUID(v2019[6]);
                      _NRLogWithArgs(v563, 1, "%s%.30s:%-4d %s: nothing to read from nexus", v564, v565, v566, v567, v568, "");
                    }

                    v263 = 0x280D73000;
                    goto LABEL_422;
                  }

                  break;
                }

                os_channel_slot_get_packet();
                os_packet_get_next_buflet();
                v306 = os_buflet_get_data_offset();
                v307 = os_buflet_get_object_address();
                v308 = os_buflet_get_data_length();
                if (v308 >= 0x10000)
                {
                  if (nrCopyLogObj_onceToken_563 != -1)
                  {
                    dispatch_once(&nrCopyLogObj_onceToken_563, &__block_literal_global_442);
                  }

                  if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_564, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_863;
                  }

                  v847 = nrCopyLogObj_sNRLogObj_564;
                  goto LABEL_732;
                }

                if (*(v2019 + 9) == 1)
                {
                  v2020 = 0;
                  v2021 = 0;
                  v314 = (*v283 + *(v283 + 80));
                  v2020 = v314;
                  LODWORD(v2021) = v305;
                  v315 = *(v2019 + 14);
                  v304 = v2019;
                  if (*(v2019 + 10) == 1)
                  {
                    v316 = nrPacketTo6LoWPAN((v2023 + v315), (WORD1(v2022) - v315), &v2020, 1u, (v2019 + 86), (v2019 + 88), 0);
                  }

                  else
                  {
                    memcpy(v314, (v2023 + v315), WORD1(v2022) - v315);
                    v316 = WORD1(v2022) - *(v304 + 14);
                  }

                  if (gNRPacketLoggingEnabled != 1)
                  {
LABEL_300:
                    v293 |= 0x80u;
                    goto LABEL_301;
                  }

                  v323 = _NRCopyLogObjectForNRUUID(v304[6]);
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v324 = v323;
                    v325 = os_log_type_enabled(v323, OS_LOG_TYPE_INFO);

                    v304 = v2019;
                    if (!v325)
                    {
                      goto LABEL_300;
                    }
                  }

                  v326 = _NRCopyLogObjectForNRUUID(v304[6]);
                  _NRLogWithArgs(v326, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus (actual: %u)", v327, v328, v329, v330, v331, "");
LABEL_321:

                  v304 = v2019;
                  goto LABEL_300;
                }

                if (!v308 && WORD1(v2022))
                {
                  v2020 = 0;
                  v2021 = 0;
                  v2020 = *v283 + *(v283 + 80);
                  LODWORD(v2021) = v305;
                  v304 = v2019;
                  v316 = nrPacketToTLV((v2023 + *(v2019 + 14)), (WORD1(v2022) - *(v2019 + 14)), &v2020, 1, (v2019 + 86), (v2019 + 88));
                  if (gNRPacketLoggingEnabled != 1)
                  {
                    goto LABEL_300;
                  }

                  v317 = _NRCopyLogObjectForNRUUID(v304[6]);
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v333 = v317;
                    v334 = os_log_type_enabled(v317, OS_LOG_TYPE_INFO);

                    v304 = v2019;
                    if (!v334)
                    {
                      goto LABEL_300;
                    }
                  }

                  v326 = _NRCopyLogObjectForNRUUID(v304[6]);
                  getESPSequenceNumberFromPacket(v2023, WORD1(v2022));
                  getESPSPIFromPacket(v2023, WORD1(v2022));
                  _NRLogWithArgs(v326, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", v335, v336, v337, v338, v339, "");
                  goto LABEL_321;
                }

                if (v308)
                {
                  v318 = v307 + v306;
                  v2020 = 0;
                  v2021 = 0;
                  v2020 = *v283 + *(v283 + 80);
                  LODWORD(v2021) = v305;
                  v304 = v2019;
                  v319 = v308;
                  v316 = nrPacketToTLV((v318 + *(v2019 + 14)), (v308 - *(v2019 + 14)), &v2020, 1, (v2019 + 86), (v2019 + 88));
                  if (gNRPacketLoggingEnabled != 1)
                  {
LABEL_297:
                    v293 |= 0x100u;
LABEL_301:
                    *(v283 + 80) += v316;
                    if (v2017)
                    {
                      v320 = 0;
                    }

                    else
                    {
                      v320 = os_channel_get_next_slot();
                    }

                    ++v289;
                    ++*v266;
                    *v2015 = 1;
                    v290 += v316;
                    if (!v320)
                    {
                      v356 = 0;
                      v291 = v303;
                      goto LABEL_335;
                    }

                    v321 = *(v283 + 82);
                    if (v321 >= 0xB)
                    {
                      v321 -= 11 * ((((117 * v321) >> 8) + (((v321 - ((117 * v321) >> 8)) & 0xFE) >> 1)) >> 3);
                    }

                    *(ESPSequenceNumberFromPacket + 4 * v321) = v293;
                    if (v321 < 0xAu)
                    {
                      v322 = v321 + 1;
                    }

                    else
                    {
                      v322 = v321 - 10;
                    }

                    *(v283 + 82) = v322;
                    v291 = v303;
                    v303 = v320;
                    v293 = 0;
                    goto LABEL_285;
                  }

                  v332 = _NRCopyLogObjectForNRUUID(v304[6]);
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v341 = v332;
                    LODWORD(v2013) = os_log_type_enabled(v332, OS_LOG_TYPE_INFO);

                    v304 = v2019;
                    if (!v2013)
                    {
                      goto LABEL_297;
                    }
                  }

                  v342 = _NRCopyLogObjectForNRUUID(v304[6]);
                  v2013 = getESPSequenceNumberFromPacket(v318, v319);
                  getESPSPIFromPacket(v318, v319);
                  _NRLogWithArgs(v342, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", v343, v344, v345, v346, v347, "");

                  v304 = v2019;
                  goto LABEL_297;
                }

                v293 |= 0x200u;
                if (gNRPacketLoggingEnabled != 1)
                {
                  v316 = 0;
                  v304 = v2019;
                  goto LABEL_301;
                }

                v304 = v2019;
                v340 = _NRCopyLogObjectForNRUUID(v2019[6]);
                if (sNRCopyLogToStdErr == 1)
                {

                  goto LABEL_327;
                }

                v348 = v340;
                v349 = os_log_type_enabled(v340, OS_LOG_TYPE_INFO);

                if (v349)
                {
LABEL_327:
                  v350 = _NRCopyLogObjectForNRUUID(v304[6]);
                  _NRLogWithArgs(v350, 1, "%s%.30s:%-4d %s: No data to write", v351, v352, v353, v354, v355, "");
                }

                v316 = 0;
                goto LABEL_301;
              }

              if (*(v263 + 3640) != 1)
              {
LABEL_419:
                if (v2011)
                {
                  v2011(v3);
                }

                v258 = *(v283 + 82);
                if (v258 >= 0xB)
                {
                  v258 -= 11 * ((((117 * v258) >> 8) + (((v258 - ((117 * v258) >> 8)) & 0xFE) >> 1)) >> 3);
                }

                *(v283 + 4 * v258 + 36) = 3;
                if (v258 < 0xAu)
                {
                  v259 = v258 + 1;
                }

                else
                {
                  v259 = v258 - 10;
                }

                goto LABEL_230;
              }

              v506 = _NRCopyLogObjectForNRUUID(v3[6]);
              if (sNRCopyLogToStdErr == 1)
              {
              }

              else
              {
                v518 = v506;
                v519 = os_log_type_enabled(v506, OS_LOG_TYPE_INFO);

                if (!v519)
                {
                  goto LABEL_419;
                }
              }

              v520 = _NRCopyLogObjectForNRUUID(v3[6]);
              _NRLogWithArgs(v520, 1, "%s%.30s:%-4d %s: ignoring NtL fast-path for %u, as waiting for link output available", v521, v522, v523, v524, v525, "");

              goto LABEL_419;
            }

            v487 = v276;
            if (*(v263 + 3640) != 1)
            {
              goto LABEL_481;
            }

            v636 = _NRCopyLogObjectForNRUUID(v3[6]);
            v637 = v636;
            if (sNRCopyLogToStdErr == 1)
            {

              v3 = v2019;
            }

            else
            {
              v638 = os_log_type_enabled(v636, OS_LOG_TYPE_INFO);

              v3 = v2019;
              if (!v638)
              {
                goto LABEL_481;
              }
            }

            v639 = _NRCopyLogObjectForNRUUID(v3[6]);
            _NRLogWithArgs(v639, 1, "%s%.30s:%-4d ", v640, v641, v642, v643, v644, "");

LABEL_481:
            v488 = _NRCopyLogObjectForNRUUID(v3[6]);
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v497 = v488;
              v498 = os_log_type_enabled(v488, OS_LOG_TYPE_FAULT);

              if (!v498)
              {
                goto LABEL_231;
              }
            }

            v499 = _NRCopyLogObjectForNRUUID(v3[6]);
            _NRLogWithArgs(v499, 17, "%s: Invalid write context for nexus priority: %u", v500, v501, v502, v503, v504, v487);

LABEL_231:
            v255 = v2002;
            v257 = v2001;
            v260 = v2005;
            goto LABEL_232;
          }

          v277 = v3[14];
          if (!v277)
          {
LABEL_261:
            v274 = 1;
            v275 = v1995;
            v276 = "Medium";
            goto LABEL_263;
          }

          v278 = *(*v277 + 43) & 3;
          v279 = *(v3 + 17);
          v280 = v2004;
          if (v278 == 1)
          {
            if (*(v3 + 17))
            {
              v275 = 0;
              v281 = 1;
            }

            else
            {

              v263 = 0x280D73000uLL;
              v2011 = 0;
              v281 = 0;
              v267 = 0;
              v2018 = 0;
              v280 = 0;
              v275 = v1974;
              if ((*(v3 + 17) & 1) == 0)
              {
                goto LABEL_258;
              }
            }
          }

          else
          {
            v275 = 0;
            v281 = 1;
            if ((*(v3 + 17) & 1) == 0)
            {
              goto LABEL_258;
            }
          }

          if ((*(v263 + 3640) & 1) == 0)
          {
            goto LABEL_258;
          }

          v2007 = v267;
          v569 = _NRCopyLogObjectForNRUUID(v3[6]);
          v570 = v569;
          if (sNRCopyLogToStdErr == 1)
          {

            v3 = v2019;
          }

          else
          {
            v571 = os_log_type_enabled(v569, OS_LOG_TYPE_INFO);

            v3 = v2019;
            v263 = 0x280D73000;
            v267 = v2007;
            if (!v571)
            {
              goto LABEL_258;
            }
          }

          v572 = _NRCopyLogObjectForNRUUID(v3[6]);
          _NRLogWithArgs(v572, 1, "%s%.30s:%-4d sending packets over medium pipe", v573, v574, v575, v576, v577, "");

          v267 = v2007;
          v263 = 0x280D73000;
LABEL_258:
          v2004 = v280;
          if (v275)
          {
            if (v281)
            {
              v274 = 0;
              v276 = "Invalid";
              goto LABEL_263;
            }

            goto LABEL_262;
          }

          goto LABEL_261;
        }

        v485 = v267;
        v486 = _NRCopyLogObjectForNRUUID(v3[6]);
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v489 = v486;
          v490 = os_log_type_enabled(v486, OS_LOG_TYPE_INFO);

          v263 = 0x280D73000;
          v267 = v485;
          if (!v490)
          {
            goto LABEL_245;
          }
        }

        v491 = _NRCopyLogObjectForNRUUID(v3[6]);
        _NRLogWithArgs(v491, 1, "%s%.30s:%-4d starting NtL fast-path for %u", v492, v493, v494, v495, v496, "");

        v267 = v485;
        v263 = 0x280D73000;
        goto LABEL_245;
      default:
        v14 = 0;
        break;
    }

    v16 = v3 + 15;
    v15 = *(v3 + 15);
    v238 = v15 & v14;
    v17 = (v15 & v14) == 0;
    if (v8 != 3 || !v238)
    {
      goto LABEL_23;
    }

    if (*(v3 + 13) == 4)
    {
      goto LABEL_1397;
    }

    dispatch_assert_queue_V2(v3[8]);
    v2009 = v3[27];
    v239 = v3[31];
    v240 = v3[39];
    v241 = v240;
    v242 = 0x280D73000uLL;
    if (gNRPacketLoggingEnabled == 1)
    {
      v921 = v240;
      v922 = _NRCopyLogObjectForNRUUID(v3[6]);
      v923 = v922;
      if (sNRCopyLogToStdErr == 1)
      {

        v3 = v2019;
      }

      else
      {
        v1209 = os_log_type_enabled(v922, OS_LOG_TYPE_INFO);

        v3 = v2019;
        v242 = 0x280D73000;
        v241 = v921;
        if (!v1209)
        {
          goto LABEL_205;
        }
      }

      v1210 = _NRCopyLogObjectForNRUUID(v3[6]);
      _NRLogWithArgs(v1210, 1, "%s%.30s:%-4d starting NtL fast-path for %u", v1211, v1212, v1213, v1214, v1215, "");

      v241 = v921;
      v242 = 0x280D73000;
    }

LABEL_205:
    v243 = *v16;
    if ((v243 & 8) != 0)
    {
      v247 = (v3 + 17);
      v836 = "Isochronous";
      v2013 = NRBluetoothPacketParserSuspendNexusVOInputSource;
      v837 = 3;
      goto LABEL_1216;
    }

    if ((v243 & 4) != 0)
    {
      v247 = (v3 + 15);
      v2013 = NRBluetoothPacketParserSuspendNexusVOInputSource;
LABEL_856:
      v836 = "High";
      v837 = 2;
      goto LABEL_1216;
    }

    v244 = v3[14];
    if (!v244)
    {
      v2013 = NRBluetoothPacketParserSuspendNexusVOInputSource;
      goto LABEL_1215;
    }

    v245 = *(*v244 + 43) & 3;
    v2013 = NRBluetoothPacketParserSuspendNexusVOInputSource;
    if (v245 == 1 && (v246 = *(v3 + 17), v2013 = NRBluetoothPacketParserSuspendNexusVOInputSource, (v246 & 1) == 0))
    {

      v242 = 0x280D73000uLL;
      v2013 = 0;
      v248 = 0;
      v241 = 0;
      v239 = 0;
      v2009 = 0;
      v247 = (v3 + 15);
    }

    else
    {
      v247 = 0;
      v248 = 1;
    }

    if (*(v3 + 17) == 1 && (*(v242 + 3640) & 1) != 0)
    {
      v1665 = v241;
      v1666 = _NRCopyLogObjectForNRUUID(v3[6]);
      v1667 = v1666;
      if (sNRCopyLogToStdErr == 1)
      {

        v3 = v2019;
      }

      else
      {
        v1697 = os_log_type_enabled(v1666, OS_LOG_TYPE_INFO);

        v3 = v2019;
        v242 = 0x280D73000;
        v241 = v1665;
        if (!v1697)
        {
          goto LABEL_853;
        }
      }

      v1698 = _NRCopyLogObjectForNRUUID(v3[6]);
      _NRLogWithArgs(v1698, 1, "%s%.30s:%-4d sending packets over medium pipe", v1699, v1700, v1701, v1702, v1703, "");

      v241 = v1665;
      v242 = 0x280D73000;
    }

LABEL_853:
    if (v247)
    {
      if (v248)
      {
        v837 = 0;
        v836 = "Invalid";
        goto LABEL_1216;
      }

      goto LABEL_856;
    }

LABEL_1215:
    v247 = (v3 + 13);
    v836 = "Medium";
    v837 = 1;
LABEL_1216:
    if (*v247)
    {
      v1355 = *(*v247 + 24);
      if ((*(v1355 + 84) & 1) == 0)
      {
        v2014 = v247;
        LODWORD(v2018) = v243;
        LODWORD(v2005) = v837;
        v2003 = v836;
        v2007 = v241;
        v2008 = v1971;
        v2010 = *(v1355 + 8);
        v1356 = *(v1355 + 83);
        v1357 = 584;
        if (v1356 == 3)
        {
          v1357 = 600;
        }

        v39 = v1356 == 2;
        v1358 = 616;
        if (!v39)
        {
          v1358 = v1357;
        }

        v2011 = v1358;
        if (*(v242 + 3640) != 1)
        {
          goto LABEL_1223;
        }

        v1558 = _NRCopyLogObjectForNRUUID(v3[6]);
        v1559 = v1558;
        if (sNRCopyLogToStdErr == 1)
        {

          v3 = v2019;
        }

        else
        {
          v1569 = os_log_type_enabled(v1558, OS_LOG_TYPE_INFO);

          v3 = v2019;
          v242 = 0x280D73000;
          if (!v1569)
          {
LABEL_1223:
            LODWORD(ESPSequenceNumberFromPacket) = 0;
            v1359 = 0;
            v1360 = 0;
            v2015 = 0;
            v1361 = 0;
            v2012 = 0;
            v2004 = (v3 + 39);
            v2017 = v1355 + 36;
            v2024 = 0u;
            v2025 = 0u;
            v1362 = 9;
            v2022 = 0u;
            v2023 = 0u;
            while (1)
            {
              if (*(v242 + 3640) == 1)
              {
                v1450 = _NRCopyLogObjectForNRUUID(v2019[6]);
                if (sNRCopyLogToStdErr == 1)
                {

LABEL_1336:
                  v1455 = _NRCopyLogObjectForNRUUID(v2019[6]);
                  _NRLogWithArgs(v1455, 1, "%s%.30s:%-4d %s: starting NtL inner loop", v1456, v1457, v1458, v1459, v1460, "");

                  v242 = 0x280D73000;
                  goto LABEL_1225;
                }

                v1453 = v1450;
                v1454 = os_log_type_enabled(v1450, OS_LOG_TYPE_INFO);

                v242 = 0x280D73000;
                if (v1454)
                {
                  goto LABEL_1336;
                }
              }

LABEL_1225:
              v1363 = v1362 | 0x10;
              if ((v2018 & 8) == 0)
              {
                v1365 = *(v1355 + 28);
                v1364 = *(v1355 + 32);
                v1366 = v2010;
                if (v1365 > v1364)
                {
                  v1367 = *(v1355 + 80);
                  if ((v1365 - v1364) >= (0x4000 - v1367))
                  {
                    v1368 = (0x4000 - v1367);
                  }

                  else
                  {
                    v1368 = (v1365 - v1364);
                  }

                  memcpy((*v1355 + v1367), (v2010 + v1364), v1368);
                  v1369 = *(v1355 + 28);
                  v1370 = *(v1355 + 32) + v1368;
                  *(v1355 + 32) = v1370;
                  if (v1369 <= v1370)
                  {
                    v1371 = 0;
                  }

                  else
                  {
                    memmove(v1366, &v1366[v1370], v1369 - v1370);
                    v1371 = *(v1355 + 28) - *(v1355 + 32);
                  }

                  v242 = 0x280D73000uLL;
                  *(v1355 + 28) = v1371;
                  *(v1355 + 32) = 0;
                  *(v1355 + 80) += v1368;
                  if (gNRPacketLoggingEnabled != 1)
                  {
                    goto LABEL_1234;
                  }

                  v1480 = _NRCopyLogObjectForNRUUID(v2019[6]);
                  v1481 = v1480;
                  if (sNRCopyLogToStdErr == 1)
                  {

                    goto LABEL_1363;
                  }

                  LODWORD(v2006) = os_log_type_enabled(v1480, OS_LOG_TYPE_INFO);

                  v242 = 0x280D73000;
                  if (v2006)
                  {
LABEL_1363:
                    v1513 = _NRCopyLogObjectForNRUUID(v2019[6]);
                    _NRLogWithArgs(v1513, 1, "%s%.30s:%-4d %s: wrote %u (%u/%u) bytes from linkWriteBuffer", v1514, v1515, v1516, v1517, v1518, "");

                    v242 = 0x280D73000;
                  }

LABEL_1234:
                  v1363 = v1362 | 0x30;
                  v1360 += v1368;
                }
              }

              v1372 = v2015;
              if (v239)
              {
                v1372 = os_channel_get_next_slot();
                v242 = 0x280D73000uLL;
              }

              v1373 = v2019;
              if (!v1372)
              {
                v1420 = 0;
                v1421 = *(v1355 + 80);
                if (*(v1355 + 80))
                {
                  goto LABEL_1288;
                }

LABEL_1376:
                v1425 = v1363 | 0x400;
                if (*(v242 + 3640) != 1)
                {
LABEL_1377:
                  v1539 = v1425 | 0x8000;
                  if (*(v242 + 3640) != 1)
                  {
                    goto LABEL_1378;
                  }

                  v1563 = _NRCopyLogObjectForNRUUID(v2019[6]);
                  v1564 = v1563;
                  if (sNRCopyLogToStdErr == 1)
                  {

                    goto LABEL_1466;
                  }

                  v1587 = os_log_type_enabled(v1563, OS_LOG_TYPE_INFO);

                  v242 = 0x280D73000;
                  if (v1587)
                  {
LABEL_1466:
                    v1588 = _NRCopyLogObjectForNRUUID(v2019[6]);
                    _NRLogWithArgs(v1588, 1, "%s%.30s:%-4d %s: out of NtL inner loop", v1589, v1590, v1591, v1592, v1593, "");

                    v242 = 0x280D73000;
                  }

LABEL_1378:
                  if (v1361)
                  {
                    os_channel_advance_slot();
                    v242 = 0x280D73000;
                    *(v2019 + 18) = 1;
LABEL_1381:
                    if (ESPSequenceNumberFromPacket > 8u || v239 && (v1540 = os_channel_available_slot_count(), v242 = 0x280D73000uLL, v1540 <= 1))
                    {
                      v1539 = v1425 | 0x18000;
                      if (*(v242 + 3640) != 1)
                      {
                        goto LABEL_1385;
                      }

                      v1583 = _NRCopyLogObjectForNRUUID(v2019[6]);
                      v1584 = v1583;
                      if (sNRCopyLogToStdErr == 1)
                      {

                        goto LABEL_1495;
                      }

                      v1668 = os_log_type_enabled(v1583, OS_LOG_TYPE_INFO);

                      if (v1668)
                      {
LABEL_1495:
                        v1669 = v2019;
                        v1670 = _NRCopyLogObjectForNRUUID(v2019[6]);
                        v1949 = v1669[54] * 0.000001;
                        _NRLogWithArgs(v1670, 1, "%s%.30s:%-4d %s: performing RX sync (%u packets, %u bytes, %u pending, %0.2f msec, canWriteMore %d, memmove %u)", v1671, v1672, v1673, v1674, v1675, "");
                      }

LABEL_1385:
                      os_channel_sync();
                      *(v2019 + 18) = 0;
                      v242 = 0x280D73000uLL;
                    }
                  }

                  else if (*(v2019 + 18))
                  {
                    goto LABEL_1381;
                  }

                  if (*(v242 + 3640) == 1)
                  {
                    v1565 = _NRCopyLogObjectForNRUUID(v2019[6]);
                    v1566 = v1565;
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v1594 = os_log_type_enabled(v1565, OS_LOG_TYPE_INFO);

                      v242 = 0x280D73000;
                      if (!v1594)
                      {
                        goto LABEL_1387;
                      }
                    }

                    v1595 = _NRCopyLogObjectForNRUUID(v2019[6]);
                    _NRLogWithArgs(v1595, 1, "%s%.30s:%-4d %s: out of NtL outer loop", v1596, v1597, v1598, v1599, v1600, "");

                    v242 = 0x280D73000;
                  }

LABEL_1387:
                  v3 = v2019;
                  v241 = v2007;
                  if (v1421)
                  {
LABEL_1388:
                    if (*(v242 + 3640) != 1)
                    {
                      goto LABEL_1389;
                    }

                    v1567 = _NRCopyLogObjectForNRUUID(v3[6]);
                    v1568 = v1567;
                    if (sNRCopyLogToStdErr == 1)
                    {

                      v3 = v2019;
                      v241 = v2007;
                      goto LABEL_1470;
                    }

                    v1601 = os_log_type_enabled(v1567, OS_LOG_TYPE_INFO);

                    v3 = v2019;
                    v241 = v2007;
                    if (v1601)
                    {
LABEL_1470:
                      v1602 = _NRCopyLogObjectForNRUUID(v3[6]);
                      _NRLogWithArgs(v1602, 1, "%s%.30s:%-4d %s: done with NtL fast-path", v1603, v1604, v1605, v1606, v1607, "");
                    }

LABEL_1389:
                    v1537 = *(v1355 + 82);
                    if (v1537 >= 0xB)
                    {
                      v1537 -= 11 * ((((117 * v1537) >> 8) + (((v1537 - ((117 * v1537) >> 8)) & 0xFE) >> 1)) >> 3);
                    }

                    v1538 = v1537;
                    *(v2017 + 4 * v1537) = v1539 | 0x60000;
LABEL_1392:
                    if (v1538 < 0xA)
                    {
                      v1541 = v1537 + 1;
                    }

                    else
                    {
                      v1541 = v1537 - 10;
                    }

                    *(v1355 + 82) = v1541;
                    goto LABEL_1396;
                  }

                  if (v2005 <= 1)
                  {
                    if (v2005)
                    {
                      v1543 = v2019[18];
                      if ((*(v2019 + 15) & 4) == 0)
                      {
                        goto LABEL_1413;
                      }

                      if ((v1543 & 0x20) != 0 && v2019[43])
                      {
                        goto LABEL_1435;
                      }
                    }

                    else
                    {
                      v1543 = v2019[18];
LABEL_1413:
                      if ((v1543 & 8) != 0 && *v2004)
                      {
                        v2019[18] = (v1543 & 0xFFFFFFFFFFFFFFF7);
                        if (*(v242 + 3640) != 1)
                        {
                          goto LABEL_1416;
                        }

                        v1766 = _NRCopyLogObjectForNRUUID(v3[6]);
                        v1767 = v1766;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          v3 = v2019;
                          v241 = v2007;
                          goto LABEL_1591;
                        }

                        v1876 = os_log_type_enabled(v1766, OS_LOG_TYPE_INFO);

                        v3 = v2019;
                        v241 = v2007;
                        if (v1876)
                        {
LABEL_1591:
                          v1877 = _NRCopyLogObjectForNRUUID(v3[6]);
                          _NRLogWithArgs(v1877, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v1878, v1879, v1880, v1881, v1882, "");
                        }

LABEL_1416:
                        dispatch_resume(v3[39]);
                        v1543 = v3[18];
                      }

                      if ((v1543 & 0x10) != 0 && v3[41])
                      {
                        v3[18] = (v1543 & 0xFFFFFFFFFFFFFFEFLL);
                        if (gNRPacketLoggingEnabled != 1)
                        {
                          goto LABEL_1420;
                        }

                        v1768 = _NRCopyLogObjectForNRUUID(v3[6]);
                        v1769 = v1768;
                        if (sNRCopyLogToStdErr == 1)
                        {

                          v3 = v2019;
                          v241 = v2007;
                          goto LABEL_1593;
                        }

                        v1883 = os_log_type_enabled(v1768, OS_LOG_TYPE_INFO);

                        v3 = v2019;
                        v241 = v2007;
                        if (v1883)
                        {
LABEL_1593:
                          v1884 = _NRCopyLogObjectForNRUUID(v3[6]);
                          _NRLogWithArgs(v1884, 1, "%s%.30s:%-4d source-resume: NexusVIInput", v1885, v1886, v1887, v1888, v1889, "");
                        }

LABEL_1420:
                        dispatch_resume(v3[41]);
                        v1543 = v3[18];
                      }

                      if ((v1543 & 0x20) != 0)
                      {
                        v242 = 0x280D73000;
                        if (!v3[43])
                        {
                          goto LABEL_1438;
                        }

LABEL_1435:
                        v3[18] = (v1543 & 0xFFFFFFFFFFFFFFDFLL);
                        if (*(v242 + 3640) == 1)
                        {
                          v1742 = _NRCopyLogObjectForNRUUID(v3[6]);
                          v1743 = v1742;
                          if (sNRCopyLogToStdErr == 1)
                          {

                            v3 = v2019;
                            v241 = v2007;
                          }

                          else
                          {
                            v1837 = os_log_type_enabled(v1742, OS_LOG_TYPE_INFO);

                            v3 = v2019;
                            v241 = v2007;
                            if (!v1837)
                            {
                              goto LABEL_1436;
                            }
                          }

                          v1838 = _NRCopyLogObjectForNRUUID(v3[6]);
                          _NRLogWithArgs(v1838, 1, "%s%.30s:%-4d source-resume: NexusBEInput", v1839, v1840, v1841, v1842, v1843, "");
                        }

LABEL_1436:
                        dispatch_resume(v3[43]);
                        v1543 = v3[18];
                      }

                      v242 = 0x280D73000uLL;
                    }

LABEL_1438:
                    if ((v1543 & 0x40) == 0 || !v3[45])
                    {
                      goto LABEL_1388;
                    }

                    v1545 = (v3 + 45);
                    v3[18] = (v1543 & 0xFFFFFFFFFFFFFFBFLL);
                    if (*(v242 + 3640) != 1)
                    {
LABEL_1441:
                      dispatch_resume(*v1545);
                      v242 = 0x280D73000;
                      goto LABEL_1388;
                    }

                    v2004 = (v3 + 45);
                    v1744 = _NRCopyLogObjectForNRUUID(v3[6]);
                    v1745 = v1744;
                    if (sNRCopyLogToStdErr == 1)
                    {

                      goto LABEL_1573;
                    }

                    v1830 = os_log_type_enabled(v1744, OS_LOG_TYPE_INFO);

                    if (v1830)
                    {
LABEL_1573:
                      v1831 = _NRCopyLogObjectForNRUUID(v2019[6]);
                      _NRLogWithArgs(v1831, 1, "%s%.30s:%-4d source-resume: NexusBKInput", v1832, v1833, v1834, v1835, v1836, "");
                      goto LABEL_1600;
                    }

LABEL_1601:
                    v3 = v2019;
                    v241 = v2007;
LABEL_1427:
                    v1545 = v2004;
                    goto LABEL_1441;
                  }

                  if (v2005 == 2)
                  {
                    v1544 = v2019[18];
                    if ((v1544 & 8) != 0 && *v2004)
                    {
                      v2019[18] = (v1544 & 0xFFFFFFFFFFFFFFF7);
                      if (*(v242 + 3640) != 1)
                      {
                        goto LABEL_1406;
                      }

                      v1826 = _NRCopyLogObjectForNRUUID(v3[6]);
                      v1827 = v1826;
                      if (sNRCopyLogToStdErr == 1)
                      {

                        v3 = v2019;
                        v241 = v2007;
                        goto LABEL_1597;
                      }

                      v1896 = os_log_type_enabled(v1826, OS_LOG_TYPE_INFO);

                      v3 = v2019;
                      v241 = v2007;
                      if (v1896)
                      {
LABEL_1597:
                        v1897 = _NRCopyLogObjectForNRUUID(v3[6]);
                        _NRLogWithArgs(v1897, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v1898, v1899, v1900, v1901, v1902, "");
                      }

LABEL_1406:
                      dispatch_resume(v3[39]);
                      v1544 = v3[18];
                      v242 = 0x280D73000uLL;
                    }

                    if ((v1544 & 0x10) == 0 || !v3[41])
                    {
                      goto LABEL_1388;
                    }

                    v1545 = (v3 + 41);
                    v3[18] = (v1544 & 0xFFFFFFFFFFFFFFEFLL);
                    if (*(v242 + 3640) != 1)
                    {
                      goto LABEL_1441;
                    }

                    v2004 = (v3 + 41);
                    v1546 = _NRCopyLogObjectForNRUUID(v3[6]);
                    v1547 = v1546;
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v1890 = os_log_type_enabled(v1546, OS_LOG_TYPE_INFO);

                      if (!v1890)
                      {
                        goto LABEL_1601;
                      }
                    }

                    v1831 = _NRCopyLogObjectForNRUUID(v2019[6]);
                    _NRLogWithArgs(v1831, 1, "%s%.30s:%-4d source-resume: NexusVIInput", v1891, v1892, v1893, v1894, v1895, "");
                  }

                  else
                  {
                    v1548 = v2019[18];
                    if ((v1548 & 8) == 0 || !*v2004)
                    {
                      goto LABEL_1388;
                    }

                    v2019[18] = (v1548 & 0xFFFFFFFFFFFFFFF7);
                    if (*(v242 + 3640) != 1)
                    {
                      goto LABEL_1427;
                    }

                    v1828 = _NRCopyLogObjectForNRUUID(v3[6]);
                    v1829 = v1828;
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v1903 = os_log_type_enabled(v1828, OS_LOG_TYPE_INFO);

                      if (!v1903)
                      {
                        goto LABEL_1601;
                      }
                    }

                    v1831 = _NRCopyLogObjectForNRUUID(v2019[6]);
                    _NRLogWithArgs(v1831, 1, "%s%.30s:%-4d source-resume: NexusVOInput", v1904, v1905, v1906, v1907, v1908, "");
                  }

LABEL_1600:

                  goto LABEL_1601;
                }

                v1585 = _NRCopyLogObjectForNRUUID(v2019[6]);
                v1586 = v1585;
                if (sNRCopyLogToStdErr == 1)
                {

                  goto LABEL_1497;
                }

                v1676 = os_log_type_enabled(v1585, OS_LOG_TYPE_INFO);

                if (v1676)
                {
LABEL_1497:
                  v1677 = _NRCopyLogObjectForNRUUID(v2019[6]);
                  _NRLogWithArgs(v1677, 1, "%s%.30s:%-4d %s: nothing to read from nexus", v1678, v1679, v1680, v1681, v1682, "");
                }

                v242 = 0x280D73000;
                goto LABEL_1377;
              }

              while (1)
              {
                v1374 = 0x4000 - *(v1355 + 80);
                if (v1374 < nrMaxTLVLengthForPacket(v2023 + *(v1373 + 14), (WORD1(v2022) - *(v1373 + 14))))
                {
                  break;
                }

                os_channel_slot_get_packet();
                os_packet_get_next_buflet();
                v1375 = os_buflet_get_data_offset();
                v1376 = os_buflet_get_object_address();
                v1377 = os_buflet_get_data_length();
                if (v1377 >= 0x10000)
                {
                  if (nrCopyLogObj_onceToken_563 != -1)
                  {
                    dispatch_once(&nrCopyLogObj_onceToken_563, &__block_literal_global_442);
                  }

                  if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_564, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_863;
                  }

                  v847 = nrCopyLogObj_sNRLogObj_564;
LABEL_732:
                  _NRLogWithArgs(v847, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen <= 65535", v309, v310, v311, v312, v313, "");
                  goto LABEL_863;
                }

                if (*(v2019 + 9) == 1)
                {
                  v2020 = 0;
                  v2021 = 0;
                  v1378 = (*v1355 + *(v1355 + 80));
                  v2020 = v1378;
                  LODWORD(v2021) = v1374;
                  v1379 = *(v2019 + 14);
                  v1373 = v2019;
                  if (*(v2019 + 10) == 1)
                  {
                    v1380 = nrPacketTo6LoWPAN((v2023 + v1379), (WORD1(v2022) - v1379), &v2020, 1u, (v2019 + 86), (v2019 + 88), 0);
                  }

                  else
                  {
                    memcpy(v1378, (v2023 + v1379), WORD1(v2022) - v1379);
                    v1380 = WORD1(v2022) - *(v1373 + 14);
                  }

                  if (gNRPacketLoggingEnabled != 1)
                  {
                    goto LABEL_1253;
                  }

                  v1387 = _NRCopyLogObjectForNRUUID(v1373[6]);
                  if (sNRCopyLogToStdErr == 1)
                  {

                    goto LABEL_1269;
                  }

                  v1388 = v1387;
                  v1389 = os_log_type_enabled(v1387, OS_LOG_TYPE_INFO);

                  v1373 = v2019;
                  if (v1389)
                  {
LABEL_1269:
                    v1390 = _NRCopyLogObjectForNRUUID(v1373[6]);
                    _NRLogWithArgs(v1390, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus (actual: %u)", v1391, v1392, v1393, v1394, v1395, "");
                    goto LABEL_1274;
                  }

                  goto LABEL_1253;
                }

                if (!v1377 && WORD1(v2022))
                {
                  v2020 = 0;
                  v2021 = 0;
                  v2020 = *v1355 + *(v1355 + 80);
                  LODWORD(v2021) = v1374;
                  v1373 = v2019;
                  v1380 = nrPacketToTLV((v2023 + *(v2019 + 14)), (WORD1(v2022) - *(v2019 + 14)), &v2020, 1, (v2019 + 86), (v2019 + 88));
                  if (gNRPacketLoggingEnabled == 1)
                  {
                    v1381 = _NRCopyLogObjectForNRUUID(v1373[6]);
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v1397 = v1381;
                      v1398 = os_log_type_enabled(v1381, OS_LOG_TYPE_INFO);

                      v1373 = v2019;
                      if (!v1398)
                      {
                        goto LABEL_1253;
                      }
                    }

                    v1390 = _NRCopyLogObjectForNRUUID(v1373[6]);
                    getESPSequenceNumberFromPacket(v2023, WORD1(v2022));
                    getESPSPIFromPacket(v2023, WORD1(v2022));
                    _NRLogWithArgs(v1390, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", v1399, v1400, v1401, v1402, v1403, "");
LABEL_1274:

                    v1373 = v2019;
                  }

LABEL_1253:
                  v1363 |= 0x80u;
                  goto LABEL_1254;
                }

                if (v1377)
                {
                  v1382 = v1376 + v1375;
                  v2020 = 0;
                  v2021 = 0;
                  v2020 = *v1355 + *(v1355 + 80);
                  LODWORD(v2021) = v1374;
                  v1373 = v2019;
                  v1383 = v1377;
                  v1380 = nrPacketToTLV((v1382 + *(v2019 + 14)), (v1377 - *(v2019 + 14)), &v2020, 1, (v2019 + 86), (v2019 + 88));
                  if (gNRPacketLoggingEnabled != 1)
                  {
LABEL_1250:
                    v1363 |= 0x100u;
                    goto LABEL_1254;
                  }

                  v1396 = _NRCopyLogObjectForNRUUID(v1373[6]);
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v1405 = v1396;
                    LODWORD(v2015) = os_log_type_enabled(v1396, OS_LOG_TYPE_INFO);

                    v1373 = v2019;
                    if (!v2015)
                    {
                      goto LABEL_1250;
                    }
                  }

                  v1406 = _NRCopyLogObjectForNRUUID(v1373[6]);
                  v2015 = getESPSequenceNumberFromPacket(v1382, v1383);
                  getESPSPIFromPacket(v1382, v1383);
                  _NRLogWithArgs(v1406, 1, "%s%.30s:%-4d %s: wrote %u bytes from nexus for ESP seq: %u (spi: %u)", v1407, v1408, v1409, v1410, v1411, "");

                  v1373 = v2019;
                  goto LABEL_1250;
                }

                v1363 |= 0x200u;
                if (gNRPacketLoggingEnabled != 1)
                {
LABEL_1265:
                  v1380 = 0;
                  v1373 = v2019;
                  goto LABEL_1254;
                }

                v1404 = _NRCopyLogObjectForNRUUID(v2019[6]);
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v1412 = v1404;
                  v1413 = os_log_type_enabled(v1404, OS_LOG_TYPE_INFO);

                  if (!v1413)
                  {
                    goto LABEL_1265;
                  }
                }

                v1373 = v2019;
                v1414 = _NRCopyLogObjectForNRUUID(v2019[6]);
                _NRLogWithArgs(v1414, 1, "%s%.30s:%-4d %s: No data to write", v1415, v1416, v1417, v1418, v1419, "");

                v1380 = 0;
LABEL_1254:
                *(v1355 + 80) += v1380;
                if ((v2018 & 8) != 0)
                {
                  v1384 = 0;
                }

                else
                {
                  v1384 = os_channel_get_next_slot();
                }

                ++v1359;
                v1373[56] = v1373[56] + 1;
                *(v1373 + 19) = 1;
                v1360 += v1380;
                if (!v1384)
                {
                  v1420 = 0;
                  v1361 = v1372;
                  goto LABEL_1287;
                }

                v1385 = *(v1355 + 82);
                if (v1385 >= 0xB)
                {
                  v1385 -= 11 * ((((117 * v1385) >> 8) + (((v1385 - ((117 * v1385) >> 8)) & 0xFE) >> 1)) >> 3);
                }

                *(v2017 + 4 * v1385) = v1363;
                if (v1385 < 0xAu)
                {
                  v1386 = v1385 + 1;
                }

                else
                {
                  v1386 = v1385 - 10;
                }

                *(v1355 + 82) = v1386;
                v1361 = v1372;
                v1372 = v1384;
                v1363 = 0;
              }

              v1363 |= 0x40u;
              v242 = 0x280D73000uLL;
              if (gNRPacketLoggingEnabled != 1)
              {
                v1420 = v1372;
                v1421 = *(v1355 + 80);
                if (*(v1355 + 80))
                {
                  goto LABEL_1288;
                }

                goto LABEL_1376;
              }

              v1477 = _NRCopyLogObjectForNRUUID(v1373[6]);
              if (sNRCopyLogToStdErr == 1)
              {

                goto LABEL_1356;
              }

              v1490 = v1477;
              LODWORD(v2015) = os_log_type_enabled(v1477, OS_LOG_TYPE_INFO);

              if (v2015)
              {
LABEL_1356:
                v1491 = _NRCopyLogObjectForNRUUID(v2019[6]);
                _NRLogWithArgs(v1491, 1, "%s%.30s:%-4d %s: not enough room %u to fit maxTLVLen %u", v1492, v1493, v1494, v1495, v1496, "");
              }

              v1420 = v1372;
LABEL_1287:
              v242 = 0x280D73000uLL;
              v1421 = *(v1355 + 80);
              if (!*(v1355 + 80))
              {
                goto LABEL_1376;
              }

LABEL_1288:
              v2015 = v1420;
              v2020 = 0;
              v1422 = v242;
              if (*(v242 + 3640) == 1)
              {
                v1451 = _NRCopyLogObjectForNRUUID(v2019[6]);
                if (sNRCopyLogToStdErr == 1)
                {

                  v1422 = 0x280D73000;
                }

                else
                {
                  v1462 = v1451;
                  v1463 = os_log_type_enabled(v1451, OS_LOG_TYPE_INFO);

                  v1422 = 0x280D73000;
                  if (!v1463)
                  {
                    goto LABEL_1289;
                  }
                }

                v1464 = _NRCopyLogObjectForNRUUID(v2019[6]);
                v1966 = *(v1355 + 80);
                _NRLogWithArgs(v1464, 1, "%s%.30s:%-4d %s: invoking send callback w/ written %u", v1465, v1466, v1467, v1468, v1469, "");
              }

LABEL_1289:
              v1423 = (*(*v2014 + 8))(**v2014, *v1355, *(v1355 + 80), &v2020, 0, 0);
              v1424 = v2019;
              v242 = v1422;
              if (*(v1422 + 3640) == 1)
              {
                v1452 = _NRCopyLogObjectForNRUUID(v2019[6]);
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v1470 = v1452;
                  LODWORD(v2006) = os_log_type_enabled(v1452, OS_LOG_TYPE_INFO);

                  v1424 = v2019;
                  v242 = 0x280D73000;
                  if (!v2006)
                  {
                    goto LABEL_1290;
                  }
                }

                v1471 = _NRCopyLogObjectForNRUUID(v1424[6]);
                v1967 = *(v1355 + 80);
                _NRLogWithArgs(v1471, 1, "%s%.30s:%-4d %s: canWriteMore: %d bufferHandled=%zu/%u", v1472, v1473, v1474, v1475, v1476, "");

                v242 = 0x280D73000;
                v1424 = v2019;
              }

LABEL_1290:
              if (v1423)
              {
                v1425 = v1363 | 0x800;
                v1426 = v2020;
                if (!v2020)
                {
                  goto LABEL_1322;
                }

LABEL_1316:
                v1446 = *(v242 + 3640);
                if (v1426 < *(v1355 + 80))
                {
                  if (!*(v242 + 3640))
                  {
                    goto LABEL_1318;
                  }

                  v1478 = _NRCopyLogObjectForNRUUID(v2019[6]);
                  if (sNRCopyLogToStdErr == 1)
                  {

                    goto LABEL_1359;
                  }

                  v1497 = v1478;
                  v1498 = os_log_type_enabled(v1478, OS_LOG_TYPE_INFO);

                  if (v1498)
                  {
LABEL_1359:
                    v1499 = _NRCopyLogObjectForNRUUID(v2019[6]);
                    v1968 = *(v1355 + 80);
                    _NRLogWithArgs(v1499, 1, "%s%.30s:%-4d %s: memmoving filledIn=%u, bufferHandled=%zu", v1500, v1501, v1502, v1503, v1504, "");
                  }

LABEL_1318:
                  v1425 |= 0x2000u;
                  memmove(*v1355, (*v1355 + v2020), *(v1355 + 80) - v2020);
                  v1447 = v2020;
                  *(v1355 + 80) -= v2020;
                  v2012 = (v2012 + 1);
                  v242 = 0x280D73000;
LABEL_1321:
                  *(v2011 + v2019) += v1447;
                  goto LABEL_1322;
                }

                if (!*(v242 + 3640))
                {
LABEL_1320:
                  v1425 |= 0x4000u;
                  *(v1355 + 80) = 0;
                  v1447 = v2020;
                  goto LABEL_1321;
                }

                v1479 = _NRCopyLogObjectForNRUUID(v2019[6]);
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v1505 = v1479;
                  v1506 = os_log_type_enabled(v1479, OS_LOG_TYPE_INFO);

                  v242 = 0x280D73000;
                  if (!v1506)
                  {
                    goto LABEL_1320;
                  }
                }

                v1507 = _NRCopyLogObjectForNRUUID(v2019[6]);
                v1969 = *(v1355 + 80);
                _NRLogWithArgs(v1507, 1, "%s%.30s:%-4d %s: not memmoving filledIn=%u, bufferHandled=%zu", v1508, v1509, v1510, v1511, v1512, "");

                v242 = 0x280D73000;
                goto LABEL_1320;
              }

              if (v2013)
              {
                (v2013)(v1424);
                v242 = 0x280D73000uLL;
              }

              *(v1355 + 84) |= 1u;
              v1427 = *(v1355 + 83);
              if (v1427 > 1)
              {
                if (v1427 == 2)
                {
                  v1424[21] = v1424[21] + 1;
                  v1424[18] = (v1424[18] & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(v1355 + 84) & 1)));
                  if (*(v242 + 3640) != 1)
                  {
                    goto LABEL_1314;
                  }

                  v1436 = _NRCopyLogObjectForNRUUID(v1424[6]);
                  v1437 = v1436;
                  if (sNRCopyLogToStdErr == 1)
                  {

                    v1438 = v2019;
                  }

                  else
                  {
                    v1531 = os_log_type_enabled(v1436, OS_LOG_TYPE_INFO);

                    v1438 = v2019;
                    v242 = 0x280D73000;
                    if (!v1531)
                    {
                      goto LABEL_1314;
                    }
                  }

                  v1440 = _NRCopyLogObjectForNRUUID(v1438[6]);
                  *(v1355 + 84);
                  _NRLogWithArgs(v1440, 1, "%s%.30s:%-4d source-%s: High", v1532, v1533, v1534, v1535, v1536, "");
                }

                else
                {
                  if (v1427 != 3)
                  {
                    goto LABEL_1314;
                  }

                  v1424[23] = v1424[23] + 1;
                  v1424[18] = (v1424[18] & 0xFFFFFFFFFFFFFFFBLL | (4 * (*(v1355 + 84) & 1)));
                  if (*(v242 + 3640) != 1)
                  {
                    goto LABEL_1314;
                  }

                  v1432 = _NRCopyLogObjectForNRUUID(v1424[6]);
                  v1433 = v1432;
                  if (sNRCopyLogToStdErr == 1)
                  {

                    v1434 = v2019;
                  }

                  else
                  {
                    v1525 = os_log_type_enabled(v1432, OS_LOG_TYPE_INFO);

                    v1434 = v2019;
                    v242 = 0x280D73000;
                    if (!v1525)
                    {
                      goto LABEL_1314;
                    }
                  }

                  v1440 = _NRCopyLogObjectForNRUUID(v1434[6]);
                  *(v1355 + 84);
                  _NRLogWithArgs(v1440, 1, "%s%.30s:%-4d source-%s: Isochronous", v1526, v1527, v1528, v1529, v1530, "");
                }

LABEL_1313:

                v242 = 0x280D73000uLL;
                goto LABEL_1314;
              }

              if (!*(v1355 + 83))
              {
                v1435 = _NRCopyLogObjectForNRUUID(v1424[6]);
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v1439 = v1435;
                  LODWORD(v2006) = os_log_type_enabled(v1435, OS_LOG_TYPE_ERROR);

                  v1424 = v2019;
                  v242 = 0x280D73000;
                  if (!v2006)
                  {
                    goto LABEL_1314;
                  }
                }

                v1440 = _NRCopyLogObjectForNRUUID(v1424[6]);
                _NRLogWithArgs(v1440, 16, "%s%.30s:%-4d invalid link channel priority", v1441, v1442, v1443, v1444, v1445, "");
                goto LABEL_1313;
              }

              if (v1427 == 1)
              {
                v1428 = v1424[18];
                v1424[19] = v1424[19] + 1;
                v1424[18] = (v1428 & 0xFFFFFFFFFFFFFFFELL | *(v1355 + 84) & 1);
                if (*(v242 + 3640) == 1)
                {
                  v1429 = _NRCopyLogObjectForNRUUID(v1424[6]);
                  v1430 = v1429;
                  if (sNRCopyLogToStdErr == 1)
                  {

                    v1431 = v2019;
                    goto LABEL_1365;
                  }

                  v1519 = os_log_type_enabled(v1429, OS_LOG_TYPE_INFO);

                  v1431 = v2019;
                  v242 = 0x280D73000;
                  if (v1519)
                  {
LABEL_1365:
                    v1440 = _NRCopyLogObjectForNRUUID(v1431[6]);
                    *(v1355 + 84);
                    _NRLogWithArgs(v1440, 1, "%s%.30s:%-4d source-%s: Medium", v1520, v1521, v1522, v1523, v1524, "");
                    goto LABEL_1313;
                  }
                }
              }

LABEL_1314:
              v1425 = v1363 | 0x1800;
              if (*(v242 + 3640) != 1)
              {
                v1426 = v2020;
                if (!v2020)
                {
                  goto LABEL_1322;
                }

                goto LABEL_1316;
              }

              v1461 = _NRCopyLogObjectForNRUUID(v2019[6]);
              if (sNRCopyLogToStdErr == 1)
              {

                goto LABEL_1352;
              }

              v1482 = v1461;
              v1483 = os_log_type_enabled(v1461, OS_LOG_TYPE_INFO);

              if (v1483)
              {
LABEL_1352:
                v1484 = _NRCopyLogObjectForNRUUID(v2019[6]);
                _NRLogWithArgs(v1484, 1, "%s%.30s:%-4d ", v1485, v1486, v1487, v1488, v1489, "");
              }

              v242 = 0x280D73000;
              v1426 = v2020;
              if (v2020)
              {
                goto LABEL_1316;
              }

LABEL_1322:
              LODWORD(ESPSequenceNumberFromPacket) = ESPSequenceNumberFromPacket + 1;
              if ((v1423 & 1) == 0)
              {
                goto LABEL_1377;
              }

              v1448 = *(v1355 + 82);
              if (v1448 >= 0xB)
              {
                v1448 -= 11 * ((((117 * v1448) >> 8) + (((v1448 - ((117 * v1448) >> 8)) & 0xFE) >> 1)) >> 3);
              }

              v1362 = 0;
              *(v2017 + 4 * v1448) = v1425;
              if (v1448 < 0xAu)
              {
                v1449 = v1448 + 1;
              }

              else
              {
                v1449 = v1448 - 10;
              }

              *(v1355 + 82) = v1449;
            }
          }
        }

        v1570 = _NRCopyLogObjectForNRUUID(v3[6]);
        _NRLogWithArgs(v1570, 1, "%s%.30s:%-4d %s: starting NtL outer loop", v1571, v1572, v1573, v1574, v1575, "");

        v242 = 0x280D73000;
        goto LABEL_1223;
      }

      if (*(v242 + 3640) != 1)
      {
LABEL_1371:
        if (v2013)
        {
          (v2013)(v3);
        }

        v1537 = *(v1355 + 82);
        if (v1537 >= 0xB)
        {
          v1537 -= 11 * ((((117 * v1537) >> 8) + (((v1537 - ((117 * v1537) >> 8)) & 0xFE) >> 1)) >> 3);
        }

        v1538 = v1537;
        *(v1355 + 4 * v1537 + 36) = 3;
        goto LABEL_1392;
      }

      v1560 = v241;
      v1561 = _NRCopyLogObjectForNRUUID(v3[6]);
      v1562 = v1561;
      if (sNRCopyLogToStdErr == 1)
      {

        v3 = v2019;
        v241 = v1560;
      }

      else
      {
        v1576 = os_log_type_enabled(v1561, OS_LOG_TYPE_INFO);

        v3 = v2019;
        v241 = v1560;
        if (!v1576)
        {
          goto LABEL_1371;
        }
      }

      v1577 = _NRCopyLogObjectForNRUUID(v3[6]);
      _NRLogWithArgs(v1577, 1, "%s%.30s:%-4d %s: ignoring NtL fast-path for %u, as waiting for link output available", v1578, v1579, v1580, v1581, v1582, "");

      goto LABEL_1371;
    }

    if (*(v242 + 3640) == 1)
    {
      v1915 = _NRCopyLogObjectForNRUUID(v2019[6]);
      v1916 = v1915;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v1938 = os_log_type_enabled(v1915, OS_LOG_TYPE_INFO);

        if (!v1938)
        {
          goto LABEL_1443;
        }
      }

      v1939 = _NRCopyLogObjectForNRUUID(v2019[6]);
      _NRLogWithArgs(v1939, 1, "%s%.30s:%-4d ", v1940, v1941, v1942, v1943, v1944, "");
    }

LABEL_1443:
    v1549 = _NRCopyLogObjectForNRUUID(v2019[6]);
    v1550 = v1549;
    if (sNRCopyLogToStdErr == 1)
    {

      v3 = v2019;
    }

    else
    {
      v1551 = os_log_type_enabled(v1549, OS_LOG_TYPE_FAULT);

      v3 = v2019;
      if (!v1551)
      {
        goto LABEL_1396;
      }
    }

    v1552 = _NRCopyLogObjectForNRUUID(v3[6]);
    _NRLogWithArgs(v1552, 17, "%s: Invalid write context for nexus priority: %u", v1553, v1554, v1555, v1556, v1557, v836);

LABEL_1396:
    goto LABEL_1397;
  }

  v892 = nrCopyLogObj_560();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v893 = v892;
    v894 = os_log_type_enabled(v892, OS_LOG_TYPE_FAULT);

    if (!v894)
    {
LABEL_1398:
      v1542 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  v2019 = nrCopyLogObj_560();
  _NRLogWithArgs(v2019, 17, "%s called with null linkWriteContext", v895, v896, v897, v898, v899, "NRParserLinkWriteAvailable");
  v900 = *MEMORY[0x277D85DE8];
}