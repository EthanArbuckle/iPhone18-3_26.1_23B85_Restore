__CFString *createStringFromNRLinkChannelPriority(uint64_t a1)
{
  if (a1 >= 4)
  {
    return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%d)", a1];
  }

  else
  {
    return off_27996AFF0[a1];
  }
}

void NRBluetoothPacketParserSuspendNexusBKInputSource(uint64_t a1)
{
  v2 = *(a1 + 144);
  if ((v2 & 0x40) == 0 && *(a1 + 360))
  {
    *(a1 + 144) = v2 | 0x40;
    if (gNRPacketLoggingEnabled != 1)
    {
      v3 = *(a1 + 360);

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
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d source-suspend: NexusBKInput", v10, v11, v12, v13, v14, "");

    v6 = a1;
LABEL_12:
    v3 = *(v6 + 360);

    goto LABEL_6;
  }
}

void NRBluetoothPacketParserSuspendNexusBEInputSource(uint64_t a1)
{
  v2 = *(a1 + 144);
  if ((v2 & 0x20) == 0 && *(a1 + 344))
  {
    *(a1 + 144) = v2 | 0x20;
    if (gNRPacketLoggingEnabled != 1)
    {
      v3 = *(a1 + 344);

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
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d source-suspend: NexusBEInput", v10, v11, v12, v13, v14, "");

    v6 = a1;
LABEL_12:
    v3 = *(v6 + 344);

    goto LABEL_6;
  }
}

void NRBluetoothPacketParserSuspendNexusVIInputSource(uint64_t a1)
{
  v2 = *(a1 + 144);
  if ((v2 & 0x10) == 0 && *(a1 + 328))
  {
    *(a1 + 144) = v2 | 0x10;
    if (gNRPacketLoggingEnabled != 1)
    {
      v3 = *(a1 + 328);

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
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d source-suspend: NexusVIInput", v10, v11, v12, v13, v14, "");

    v6 = a1;
LABEL_12:
    v3 = *(v6 + 328);

    goto LABEL_6;
  }
}

void NRBluetoothPacketParserSuspendNexusVOInputSource(uint64_t a1)
{
  v2 = *(a1 + 144);
  if ((v2 & 8) == 0 && *(a1 + 312))
  {
    *(a1 + 144) = v2 | 8;
    if (gNRPacketLoggingEnabled != 1)
    {
      v3 = *(a1 + 312);

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
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d source-suspend: NexusVOInput", v10, v11, v12, v13, v14, "");

    v6 = a1;
LABEL_12:
    v3 = *(v6 + 312);

    goto LABEL_6;
  }
}

uint64_t NRLinkLinkToNexusLoop6LoWPANPacket(uint64_t a1, _BYTE **a2, void *__src, size_t __n, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __n + 5;
  if (__n + 5 < 0x10000)
  {
    v11 = *a2;
    *v11 = 3;
    v12 = bswap32(__n);
    v11[1] = BYTE2(v12);
    v11[2] = HIBYTE(v12);
    v15 = a6;
    memcpy(v11 + 3, __src, __n);
    v16 = 0;
    result = NRBluetoothPacketParserLinkToNexusLoopFastPath(a1, a2, v11, v8, &v16, v15);
    *a5 = v16;
  }

  else
  {
    if (nrCopyLogObj_onceToken_563 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_563, &__block_literal_global_442);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || (result = os_log_type_enabled(nrCopyLogObj_sNRLogObj_564, OS_LOG_TYPE_ERROR), result))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_564, 16, "%s%.30s:%-4d unexpected data size %zu", __n, a5, a6, a7, a8, "");
      return 0;
    }
  }

  return result;
}

uint64_t NRLinkLinkToNexusLoopPacket(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v166[1] = *MEMORY[0x277D85DE8];
  if (*a5 >= a4)
  {
    if (*a5 > a4)
    {
      if (nrCopyLogObj_onceToken_563 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_563, &__block_literal_global_442);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_564, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_564, 16, "%s%.30s:%-4d read more than buffer length", a4, a5, a6, a7, a8, "");
      }
    }

    goto LABEL_35;
  }

  v12 = 0x280D73000uLL;
  if (*a5)
  {
    if (!gNRPacketLoggingEnabled)
    {
      goto LABEL_4;
    }

    v52 = a6;
    v53 = a7;
    v54 = a3;
    v55 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v64 = v55;
      v65 = os_log_type_enabled(v55, OS_LOG_TYPE_INFO);

      a3 = v54;
      a7 = v53;
      a6 = v52;
      v12 = 0x280D73000uLL;
      if (!v65)
      {
        goto LABEL_4;
      }
    }

    v66 = nrCopyLogObj_560();
    v153 = a4 - *a5;
    _NRLogWithArgs(v66, 1, "%s%.30s:%-4d re-processing incoming data of length %u at offset %zu", v67, v68, v69, v70, v71, "");
    goto LABEL_61;
  }

  if (!gNRPacketLoggingEnabled)
  {
    goto LABEL_4;
  }

  v44 = a6;
  v45 = a7;
  v46 = a3;
  v47 = nrCopyLogObj_560();
  v48 = v47;
  if (sNRCopyLogToStdErr == 1)
  {

    a3 = v46;
    a7 = v45;
    a6 = v44;
LABEL_86:
    v52 = a6;
    v53 = a7;
    v54 = a3;
    v66 = nrCopyLogObj_560();
    v157 = a4 - *a5;
    _NRLogWithArgs(v66, 1, "%s%.30s:%-4d processing incoming data of length %u", v133, v134, v135, v136, v137, "");
LABEL_61:

    a3 = v54;
    a7 = v53;
    a6 = v52;
    v12 = 0x280D73000uLL;
    goto LABEL_4;
  }

  v132 = os_log_type_enabled(v47, OS_LOG_TYPE_INFO);

  a3 = v46;
  a7 = v45;
  a6 = v44;
  v12 = 0x280D73000uLL;
  if (v132)
  {
    goto LABEL_86;
  }

LABEL_4:
  v13 = *(a2 + 8);
  if (v13)
  {
    goto LABEL_5;
  }

  v49 = a6;
  v50 = a7;
  v51 = a3;
  v13 = malloc_type_malloc(0x1000uLL, 0x581093B3uLL);
  if (!v13)
  {
    v138 = nrCopyLogObj_560();
    v139 = v138;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v140 = os_log_type_enabled(v138, OS_LOG_TYPE_ERROR);

      if (!v140)
      {
        goto LABEL_91;
      }
    }

    v141 = nrCopyLogObj_560();
    _NRLogWithArgs(v141, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", v142, v143, v144, v145, v146, "");

LABEL_91:
    v147 = _os_log_pack_size();
    MEMORY[0x28223BE20](v147, v148);
    v149 = *__error();
    v150 = _os_log_pack_fill();
    *v150 = 136446210;
    *(v150 + 4) = "NRLinkLinkToNexusLoopPacket";
    v151 = nrCopyLogObj_560();
    _NRLogAbortWithPack(v151);
  }

  *(a2 + 8) = v13;
  a3 = v51;
  a7 = v50;
  a6 = v49;
  v12 = 0x280D73000uLL;
LABEL_5:
  v165 = a6;
  if ((*(a2 + 43) & 8) == 0)
  {
    v15 = (a2 + 32);
    v14 = *(a2 + 32);
    if (v14 >= 0x2B)
    {
      v16 = bswap32(*(v13 + 7)) >> 16;
      if ((gNRPacketLoggingEnabled & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_50;
    }

    v18 = a7;
    v17 = a3;
    if (v14)
    {
LABEL_19:
      v20 = 43 - v14;
      if ((a4 - *a5) >= v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = (a4 - *a5);
      }

      v22 = v17;
      if (gNRPacketLoggingEnabled == 1)
      {
        v93 = nrCopyLogObj_560();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v118 = v93;
          v164 = os_log_type_enabled(v93, OS_LOG_TYPE_INFO);

          v22 = v17;
          if (!v164)
          {
            goto LABEL_23;
          }
        }

        v119 = nrCopyLogObj_560();
        v154 = *v15;
        _NRLogWithArgs(v119, 1, "%s%.30s:%-4d -- filledIn %u numberOfBytesToFill: %u", v120, v121, v122, v123, v124, "");

        v22 = v17;
      }

LABEL_23:
      v23 = v22;
      memcpy((*(a2 + 8) + *(a2 + 32)), (v22 + *a5), v21);
      v24 = *(a2 + 32) + v21;
      *(a2 + 32) = v24;
      *a5 += v21;
      if (v24 <= 0x27)
      {
        if (gNRPacketLoggingEnabled)
        {
          v25 = nrCopyLogObj_560();
          v26 = v25;
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v125 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);

            result = 1;
            if (!v125)
            {
              goto LABEL_36;
            }
          }

          v126 = nrCopyLogObj_560();
          _NRLogWithArgs(v126, 1, "%s%.30s:%-4d -- waiting for full header", v127, v128, v129, v130, v131, "");
        }

        goto LABEL_35;
      }

      v12 = 0x280D73000uLL;
      v16 = bswap32(*(*(a2 + 8) + 7)) >> 16;
      a3 = v23;
      a7 = v18;
      if ((gNRPacketLoggingEnabled & 1) == 0)
      {
LABEL_29:
        v28 = v16 - *v15 + 43;
        if ((v16 - *v15 + 43) < 0)
        {
          [(NRBluetoothPacketParser *)a1 handleInternalError:a3, a4, a5, a6, a7, a8, v28];
          result = 0;
          goto LABEL_36;
        }

        v29 = a7;
        v30 = a1;
        v31 = a3;
        v32 = bswap32(v16 + 40) >> 16;
        if (*(v12 + 3640) == 1)
        {
          v59 = nrCopyLogObj_560();
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v161 = v59;
            v158 = os_log_type_enabled(v59, OS_LOG_TYPE_INFO);

            v12 = 0x280D73000;
            if (!v158)
            {
              goto LABEL_31;
            }
          }

          v162 = nrCopyLogObj_560();
          _NRLogWithArgs(v162, 1, "%s%.30s:%-4d -- ipv6 total packet len %u", v81, v82, v83, v84, v85, "");

          v12 = 0x280D73000;
        }

LABEL_31:
        *(*(a2 + 8) + 1) = v32;
        v33 = v31;
        if (*(v12 + 3640) != 1)
        {
          goto LABEL_32;
        }

        v60 = nrCopyLogObj_560();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v163 = v60;
          v159 = os_log_type_enabled(v60, OS_LOG_TYPE_INFO);

          v12 = 0x280D73000;
          if (!v159)
          {
            goto LABEL_32;
          }
        }

        v86 = nrCopyLogObj_560();
        v155 = a4 - *a5;
        v152 = *v15;
        v87 = v86;
        _NRLogWithArgs(v86, 1, "%s%.30s:%-4d -- expected %d filledIn %u pending %d received %u", v88, v89, v90, v91, v92, "");

        v12 = 0x280D73000;
LABEL_32:
        v34 = *(v12 + 3640);
        if (a4 - *a5 < v28)
        {
          if (!*(v12 + 3640))
          {
LABEL_34:
            memcpy((*(a2 + 8) + *(a2 + 32)), (v33 + *a5), a4 - *a5);
            v35 = *a5;
            v36 = a4 - *a5;
            *(a2 + 32) += v36;
            *a5 = v35 + v36;
LABEL_35:
            result = 1;
            goto LABEL_36;
          }

          v79 = nrCopyLogObj_560();
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v102 = v79;
            v103 = os_log_type_enabled(v79, OS_LOG_TYPE_INFO);

            v33 = v31;
            if (!v103)
            {
              goto LABEL_34;
            }
          }

          v104 = nrCopyLogObj_560();
          _NRLogWithArgs(v104, 1, "%s%.30s:%-4d -- we have partial packet", v105, v106, v107, v108, v109, "");

          v33 = v31;
          goto LABEL_34;
        }

        v38 = v30;
        v39 = v29;
        if (*(v12 + 3640))
        {
          v80 = nrCopyLogObj_560();
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v110 = v80;
            v111 = os_log_type_enabled(v80, OS_LOG_TYPE_INFO);

            if (!v111)
            {
              goto LABEL_38;
            }
          }

          v112 = nrCopyLogObj_560();
          _NRLogWithArgs(v112, 1, "%s%.30s:%-4d -- we have full packet", v113, v114, v115, v116, v117, "");
        }

LABEL_38:
        memcpy((*(a2 + 8) + *(a2 + 32)), (v33 + *a5), v28);
        v40 = *(a2 + 32) + v28;
        *(a2 + 32) = v40;
        *a5 += v28;
        *(*(a2 + 8) + v40) = 0;
        v41 = (*(a2 + 32) + 2);
        *(a2 + 32) = v41;
        v166[0] = 0;
        result = NRBluetoothPacketParserLinkToNexusLoopFastPath(v38, a2, *(a2 + 8), v41, v166, v165);
        v42 = v166[0];
        *(a2 + 36) = v166[0];
        if (*(a2 + 32) == v42)
        {
          *(a2 + 32) = 0;
          *(a2 + 43) &= ~8u;
          if (!result)
          {
            goto LABEL_36;
          }
        }

        else
        {
          *(a2 + 43) |= 8u;
          if (!result)
          {
            goto LABEL_36;
          }
        }

        v43 = result;
        NRLinkLinkToNexusLoopPacket(v38, a2, v33, a4, a5, v165, v39);
        result = v43;
        goto LABEL_36;
      }

LABEL_50:
      v56 = a7;
      v57 = a3;
      v58 = nrCopyLogObj_560();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v72 = v58;
        v160 = os_log_type_enabled(v58, OS_LOG_TYPE_INFO);

        if (!v160)
        {
LABEL_64:
          a3 = v57;
          a7 = v56;
          v12 = 0x280D73000;
          goto LABEL_29;
        }
      }

      v73 = nrCopyLogObj_560();
      _NRLogWithArgs(v73, 1, "%s%.30s:%-4d -- ipv6 payload len %u", v74, v75, v76, v77, v78, "");

      goto LABEL_64;
    }

LABEL_18:
    *v13 = 2;
    *(v13 + 1) = 0;
    v14 = *v15 + 3;
    *v15 = v14;
    goto LABEL_19;
  }

  v17 = a3;
  if (gNRPacketLoggingEnabled == 1)
  {
    v61 = a6;
    v62 = a7;
    v63 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v94 = v63;
      v95 = os_log_type_enabled(v63, OS_LOG_TYPE_INFO);

      a7 = v62;
      LOBYTE(a6) = v61;
      if (!v95)
      {
        goto LABEL_16;
      }
    }

    v96 = nrCopyLogObj_560();
    v156 = *(a2 + 32);
    _NRLogWithArgs(v96, 1, "%s%.30s:%-4d processing pending complete packet filledIn %u", v97, v98, v99, v100, v101, "");

    LOBYTE(a6) = v61;
    a7 = v62;
  }

LABEL_16:
  v166[0] = 0;
  v15 = (a2 + 32);
  v18 = a7;
  NRBluetoothPacketParserLinkToNexusLoopFastPath(a1, a2, *(a2 + 8) + *(a2 + 36), (*(a2 + 32) - *(a2 + 36)), v166, a6);
  v19 = v166[0];
  *(a2 + 36) = v166[0];
  if (*(a2 + 32) == v19)
  {
    *(a2 + 32) = 0;
    *(a2 + 43) &= ~8u;
    v13 = *(a2 + 8);
    goto LABEL_18;
  }

  result = 0;
  *(a2 + 43) |= 8u;
LABEL_36:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

double __os_log_helper_1_2_5_8_34_4_0_4_0_4_0_8_64(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  *&result = 136447234;
  *a1 = 136447234;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  *(a1 + 18) = 1024;
  *(a1 + 20) = a4;
  *(a1 + 24) = 1024;
  *(a1 + 26) = a5;
  *(a1 + 30) = 2112;
  *(a1 + 32) = a6;
  return result;
}

double __os_log_helper_1_2_4_8_34_8_64_4_0_4_0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *&result = 136446978;
  *a1 = 136446978;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2112;
  *(a1 + 14) = a3;
  *(a1 + 22) = 1024;
  *(a1 + 24) = a4;
  *(a1 + 28) = 1024;
  *(a1 + 30) = a5;
  return result;
}

void NRBluetoothPacketParserResumeNexusBEOutputSource(uint64_t a1)
{
  v2 = *(a1 + 144);
  if ((v2 & 0x200) != 0 && *(a1 + 352))
  {
    *(a1 + 144) = v2 & 0xFFFFFFFFFFFFFDFFLL;
    if (gNRPacketLoggingEnabled != 1)
    {
      v3 = *(a1 + 352);

LABEL_6:
      dispatch_resume(v3);
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
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d source-resume: NexusBEOutput", v10, v11, v12, v13, v14, "");

    v6 = a1;
LABEL_12:
    v3 = *(v6 + 352);

    goto LABEL_6;
  }
}

void NRBluetoothPacketParserSuspendNexusVOOutputSource(uint64_t a1)
{
  v2 = *(a1 + 144);
  if ((v2 & 0x80) == 0 && *(a1 + 320))
  {
    *(a1 + 144) = v2 | 0x80;
    if (gNRPacketLoggingEnabled != 1)
    {
      v3 = *(a1 + 320);

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
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d source-suspend: NexusVOOutput", v10, v11, v12, v13, v14, "");

    v6 = a1;
LABEL_12:
    v3 = *(v6 + 320);

    goto LABEL_6;
  }
}

void NRBluetoothPacketParserResumeNexusVOOutputSource(uint64_t a1)
{
  v2 = *(a1 + 144);
  if ((v2 & 0x80) != 0 && *(a1 + 320))
  {
    *(a1 + 144) = v2 & 0xFFFFFFFFFFFFFF7FLL;
    if (gNRPacketLoggingEnabled != 1)
    {
      v3 = *(a1 + 320);

LABEL_6:
      dispatch_resume(v3);
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
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d source-resume: NexusVOOutput", v10, v11, v12, v13, v14, "");

    v6 = a1;
LABEL_12:
    v3 = *(v6 + 320);

    goto LABEL_6;
  }
}

void NRBluetoothPacketParserResumeNexusVIOutputSource(uint64_t a1)
{
  v2 = *(a1 + 144);
  if ((v2 & 0x100) != 0 && *(a1 + 336))
  {
    *(a1 + 144) = v2 & 0xFFFFFFFFFFFFFEFFLL;
    if (gNRPacketLoggingEnabled != 1)
    {
      v3 = *(a1 + 336);

LABEL_6:
      dispatch_resume(v3);
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
    _NRLogWithArgs(v9, 1, "%s%.30s:%-4d source-resume: NexusVIOutput", v10, v11, v12, v13, v14, "");

    v6 = a1;
LABEL_12:
    v3 = *(v6 + 336);

    goto LABEL_6;
  }
}

void sub_25B9B5E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *createStringForNRNexusChannelPriority(uint64_t a1)
{
  if (a1 <= 100)
  {
    if (!a1)
    {
      return @"Invalid";
    }

    if (a1 == 100)
    {
      return @"Voice";
    }
  }

  else
  {
    switch(a1)
    {
      case 'e':
        return @"Video";
      case 'f':
        return @"BestEffort";
      case 'g':
        return @"Background";
    }
  }

  return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%d)", a1];
}

unsigned __int8 *NRBluetoothPacketParserCreate(const unsigned __int8 *a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (uuid_is_null(a1))
    {
      if (nrCopyLogObj_onceToken_563 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_563, &__block_literal_global_442);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_564, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_564, 17, "invalid bluetooth UUID", v4, v5, v6, v7, v8, v60);
      }

      goto LABEL_8;
    }

    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a1];
    if (!v10)
    {
      v29 = nrCopyLogObj_560();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v31 = v29;
        v32 = os_log_type_enabled(v29, OS_LOG_TYPE_FAULT);

        if (!v32)
        {
          v9 = 0;
          goto LABEL_18;
        }
      }

      v12 = nrCopyLogObj_560();
      _NRLogWithArgs(v12, 17, "%s called with null btUUID", v33, v34, v35, v36, v37, "NRBluetoothPacketParserCreate");
      v9 = 0;
LABEL_17:

LABEL_18:
      goto LABEL_19;
    }

    v11 = [[NRBluetoothPacketParser alloc] initWithBluetoothUUID:v10 queue:v3];
    if (v11)
    {
      v12 = v11;
      objc_opt_self();
      if (copySharedManager_onceToken != -1)
      {
        dispatch_once(&copySharedManager_onceToken, &__block_literal_global_663);
      }

      v13 = copySharedManager_manager;
      if (copySharedManager_manager)
      {
        v14 = v12;
        v15 = v10;
        v16 = v13;
        os_unfair_lock_lock(v13 + 2);
        [v16[2] setObject:v14 forKeyedSubscript:v15];

        os_unfair_lock_unlock(v13 + 2);
      }

      v17 = malloc_type_calloc(1uLL, 0x10uLL, 0x1797C662uLL);
      if (v17)
      {
        v9 = v17;
        uuid_copy(v17, a1);
        goto LABEL_17;
      }

      v46 = nrCopyLogObj_560();
      v47 = v46;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v48 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);

        if (!v48)
        {
          goto LABEL_38;
        }
      }

      v49 = nrCopyLogObj_560();
      _NRLogWithArgs(v49, 16, "%s%.30s:%-4d ABORTING: strict_calloc(%zu, %zu) failed", v50, v51, v52, v53, v54, "");

LABEL_38:
      v55 = _os_log_pack_size();
      MEMORY[0x28223BE20](v55, v56);
      v57 = *__error();
      v58 = _os_log_pack_fill();
      *v58 = 136446722;
      *(v58 + 4) = "NRBluetoothPacketParserCreate";
      *(v58 + 12) = 2048;
      *(v58 + 14) = 1;
      *(v58 + 22) = 2048;
      *(v58 + 24) = 16;
      v59 = nrCopyLogObj_560();
      _NRLogAbortWithPack(v59);
    }

    v30 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v38 = v30;
      v39 = os_log_type_enabled(v30, OS_LOG_TYPE_FAULT);

      if (!v39)
      {
LABEL_32:
        v12 = 0;
        v9 = 0;
        goto LABEL_17;
      }
    }

    v40 = nrCopyLogObj_560();
    _NRLogWithArgs(v40, 17, "%s called with null parser", v41, v42, v43, v44, v45, "NRBluetoothPacketParserCreate");

    goto LABEL_32;
  }

  v20 = nrCopyLogObj_560();
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_23:
    v23 = nrCopyLogObj_560();
    _NRLogWithArgs(v23, 17, "%s called with null queue", v24, v25, v26, v27, v28, "NRBluetoothPacketParserCreate");

    goto LABEL_8;
  }

  v21 = v20;
  v22 = os_log_type_enabled(v20, OS_LOG_TYPE_FAULT);

  if (v22)
  {
    goto LABEL_23;
  }

LABEL_8:
  v9 = 0;
LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

void NRBluetoothPacketParserStart(uint64_t a1)
{
  if (a1)
  {
    v21 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a1];
    if (v21)
    {
      objc_opt_self();
      if (copySharedManager_onceToken != -1)
      {
        dispatch_once(&copySharedManager_onceToken, &__block_literal_global_663);
      }

      v1 = copySharedManager_manager;
      if (v1)
      {
        v2 = v1;
        v3 = v21;
        os_unfair_lock_lock(v2 + 2);
        v4 = [*(v2 + 2) objectForKeyedSubscript:v3];

        os_unfair_lock_unlock(v2 + 2);
        if (v4 && *(v4 + 13) != 4)
        {
          dispatch_assert_queue_V2(*(v4 + 64));
          [v4 start];
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v6 = nrCopyLogObj_560();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v14 = v6;
        v15 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);

        if (!v15)
        {
          v21 = 0;
          goto LABEL_10;
        }
      }

      v4 = nrCopyLogObj_560();
      _NRLogWithArgs(v4, 17, "%s called with null btUUID", v16, v17, v18, v19, v20, "NRBluetoothPacketParserStart");
    }
  }

  else
  {
    v5 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v7 = v5;
      v8 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);

      if (!v8)
      {
        return;
      }
    }

    v21 = nrCopyLogObj_560();
    _NRLogWithArgs(v21, 17, "%s called with null parserRef", v9, v10, v11, v12, v13, "NRBluetoothPacketParserStart");
  }

LABEL_10:
}

void NRBluetoothPacketParserCancel(uint64_t a1)
{
  if (a1)
  {
    v24 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a1];
    if (!v24)
    {
      v9 = nrCopyLogObj_560();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v17 = v9;
        v18 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);

        if (!v18)
        {
          v24 = 0;
          goto LABEL_12;
        }
      }

      v4 = nrCopyLogObj_560();
      _NRLogWithArgs(v4, 17, "%s called with null btUUID", v19, v20, v21, v22, v23, "NRBluetoothPacketParserCancel");
      goto LABEL_11;
    }

    objc_opt_self();
    if (copySharedManager_onceToken != -1)
    {
      dispatch_once(&copySharedManager_onceToken, &__block_literal_global_663);
    }

    v1 = copySharedManager_manager;
    if (!v1)
    {
      v4 = 0;
      goto LABEL_11;
    }

    v2 = v1;
    v3 = v24;
    os_unfair_lock_lock(v2 + 2);
    v4 = [*(v2 + 2) objectForKeyedSubscript:v3];

    os_unfair_lock_unlock(v2 + 2);
    if (!v4 || *(v4 + 13) == 4)
    {
      goto LABEL_11;
    }

    dispatch_assert_queue_V2(*(v4 + 64));
    [v4 resetContextForPriority:3];
    [v4 resetContextForPriority:2];
    [v4 resetContextForPriority:1];
    [v4 cancel];
    objc_opt_self();
    if (copySharedManager_onceToken == -1)
    {
      v5 = copySharedManager_manager;
      if (!copySharedManager_manager)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      dispatch_once(&copySharedManager_onceToken, &__block_literal_global_663);
      v5 = copySharedManager_manager;
      if (!copySharedManager_manager)
      {
        goto LABEL_11;
      }
    }

    v6 = v3;
    v7 = v5;
    os_unfair_lock_lock(v5 + 2);
    [v7[2] setObject:0 forKeyedSubscript:v6];

    os_unfair_lock_unlock(v5 + 2);
    goto LABEL_11;
  }

  v8 = nrCopyLogObj_560();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v10 = v8;
    v11 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);

    if (!v11)
    {
      return;
    }
  }

  v24 = nrCopyLogObj_560();
  _NRLogWithArgs(v24, 17, "%s called with null parserRef", v12, v13, v14, v15, v16, "NRBluetoothPacketParserCancel");
LABEL_12:
}

uint64_t NRBluetoothPacketParserCreateReadContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v14 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v17 = v14;
      v18 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        return 0;
      }
    }

    v7 = nrCopyLogObj_560();
    _NRLogWithArgs(v7, 17, "%s called with null parserRef", v19, v20, v21, v22, v23, "NRBluetoothPacketParserCreateReadContext");
LABEL_24:
    v12 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
    v15 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {

LABEL_23:
      v7 = nrCopyLogObj_560();
      _NRLogWithArgs(v7, 17, "%s called with null readAvailableCallback", v26, v27, v28, v29, v30, "NRBluetoothPacketParserCreateReadContext");
      goto LABEL_24;
    }

    v24 = v15;
    v25 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

    if (v25)
    {
      goto LABEL_23;
    }

    return 0;
  }

  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a1];
  if (v7)
  {
    objc_opt_self();
    if (copySharedManager_onceToken != -1)
    {
      dispatch_once(&copySharedManager_onceToken, &__block_literal_global_663);
    }

    v8 = copySharedManager_manager;
    if (v8)
    {
      v9 = v8;
      v10 = v7;
      os_unfair_lock_lock(v9 + 2);
      v11 = [*(v9 + 2) objectForKeyedSubscript:v10];

      os_unfair_lock_unlock(v9 + 2);
      if (v11 && *(v11 + 13) != 4)
      {
        dispatch_assert_queue_V2(*(v11 + 64));
        v12 = [v11 createReadContextForPriority:a2 readAvailableCallback:a3 readAvailableContext:a4];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    v16 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v31 = v16;
      v32 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

      if (!v32)
      {
        v7 = 0;
        v12 = 0;
        goto LABEL_12;
      }
    }

    v11 = nrCopyLogObj_560();
    _NRLogWithArgs(v11, 17, "%s called with null btUUID", v33, v34, v35, v36, v37, "NRBluetoothPacketParserCreateReadContext");
    v12 = 0;
  }

LABEL_12:
  return v12;
}

uint64_t NRBluetoothPacketParserCreateWriteContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v14 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v17 = v14;
      v18 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        return 0;
      }
    }

    v7 = nrCopyLogObj_560();
    _NRLogWithArgs(v7, 17, "%s called with null parserRef", v19, v20, v21, v22, v23, "NRBluetoothPacketParserCreateWriteContext");
LABEL_24:
    v12 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
    v15 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {

LABEL_23:
      v7 = nrCopyLogObj_560();
      _NRLogWithArgs(v7, 17, "%s called with null writeOutputCallback", v26, v27, v28, v29, v30, "NRBluetoothPacketParserCreateWriteContext");
      goto LABEL_24;
    }

    v24 = v15;
    v25 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

    if (v25)
    {
      goto LABEL_23;
    }

    return 0;
  }

  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a1];
  if (v7)
  {
    objc_opt_self();
    if (copySharedManager_onceToken != -1)
    {
      dispatch_once(&copySharedManager_onceToken, &__block_literal_global_663);
    }

    v8 = copySharedManager_manager;
    if (v8)
    {
      v9 = v8;
      v10 = v7;
      os_unfair_lock_lock(v9 + 2);
      v11 = [*(v9 + 2) objectForKeyedSubscript:v10];

      os_unfair_lock_unlock(v9 + 2);
      if (v11 && *(v11 + 13) != 4)
      {
        dispatch_assert_queue_V2(*(v11 + 64));
        v12 = [v11 createWriteContextForPriority:a2 writeOutputCallback:a3 writeOutputContext:a4];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    v16 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v31 = v16;
      v32 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

      if (!v32)
      {
        v7 = 0;
        v12 = 0;
        goto LABEL_12;
      }
    }

    v11 = nrCopyLogObj_560();
    _NRLogWithArgs(v11, 17, "%s called with null btUUID", v33, v34, v35, v36, v37, "NRBluetoothPacketParserCreateWriteContext");
    v12 = 0;
  }

LABEL_12:
  return v12;
}

void NRBluetoothPacketParserResetContext(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v26 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a1];
    if (!v26)
    {
      v11 = nrCopyLogObj_560();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v19 = v11;
        v20 = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);

        if (!v20)
        {
          v26 = 0;
          goto LABEL_14;
        }
      }

      v6 = nrCopyLogObj_560();
      _NRLogWithArgs(v6, 17, "%s called with null btUUID", v21, v22, v23, v24, v25, "NRBluetoothPacketParserResetContext");
      goto LABEL_13;
    }

    objc_opt_self();
    if (copySharedManager_onceToken != -1)
    {
      dispatch_once(&copySharedManager_onceToken, &__block_literal_global_663);
    }

    v3 = copySharedManager_manager;
    if (!v3)
    {
      v6 = 0;
      goto LABEL_13;
    }

    v4 = v3;
    v5 = v26;
    os_unfair_lock_lock(v4 + 2);
    v6 = [*(v4 + 2) objectForKeyedSubscript:v5];

    os_unfair_lock_unlock(v4 + 2);
    if (!v6)
    {
      goto LABEL_13;
    }

    dispatch_assert_queue_V2(*(v6 + 64));
    [v6 resetContextForPriority:a2];
    if (a2 == 1)
    {
      [v6 cancel];
    }

    if (*(v6 + 680))
    {
      goto LABEL_13;
    }

    [v6 cancel];
    objc_opt_self();
    if (copySharedManager_onceToken == -1)
    {
      v7 = copySharedManager_manager;
      if (!copySharedManager_manager)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      dispatch_once(&copySharedManager_onceToken, &__block_literal_global_663);
      v7 = copySharedManager_manager;
      if (!copySharedManager_manager)
      {
        goto LABEL_13;
      }
    }

    v8 = v5;
    v9 = v7;
    os_unfair_lock_lock(v7 + 2);
    [v9[2] setObject:0 forKeyedSubscript:v8];

    os_unfair_lock_unlock(v7 + 2);
    goto LABEL_13;
  }

  v10 = nrCopyLogObj_560();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v12 = v10;
    v13 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT);

    if (!v13)
    {
      return;
    }
  }

  v26 = nrCopyLogObj_560();
  _NRLogWithArgs(v26, 17, "%s called with null parserRef", v14, v15, v16, v17, v18, "NRBluetoothPacketParserResetContext");
LABEL_14:
}

void NRBluetoothPacketParserGetSlotCount(uint64_t a1, uint64_t a2, _WORD *a3, _WORD *a4)
{
  if (a1)
  {
    if (a3)
    {
      *a3 = 64;
    }

    if (a4)
    {
      *a4 = 16;
    }
  }

  else
  {
    v4 = nrCopyLogObj_560();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v5 = v4;
      v6 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);

      if (!v6)
      {
        return;
      }
    }

    v12 = nrCopyLogObj_560();
    _NRLogWithArgs(v12, 17, "%s called with null parserRef", v7, v8, v9, v10, v11, "NRBluetoothPacketParserGetSlotCount");
  }
}

id nrCopyLogObj_672()
{
  if (nrCopyLogObj_onceToken_675 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_675, &__block_literal_global_676);
  }

  v1 = nrCopyLogObj_sNRLogObj_677;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_680()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_677;
  nrCopyLogObj_sNRLogObj_677 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __nrCopyLogObj_block_invoke_818()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_811;
  nrCopyLogObj_sNRLogObj_811 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id nrCopyLogObj_823()
{
  if (nrCopyLogObj_onceToken_809 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
  }

  v1 = nrCopyLogObj_sNRLogObj_811;

  return v1;
}

BOOL _NRIsUUIDNonZero(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v3 = nrCopyLogObj_823();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v4 = v3;
      v5 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);

      if (!v5)
      {
LABEL_8:
        result = 0;
        goto LABEL_3;
      }
    }

    v6 = nrCopyLogObj_823();
    _NRLogWithArgs(v6, 17, "%s called with null nsUUID", v7, v8, v9, v10, v11, "_NRIsUUIDNonZero");

    goto LABEL_8;
  }

  *uu = 0;
  v13 = 0;
  [a1 getUUIDBytes:uu];
  result = uuid_is_null(uu) == 0;
LABEL_3:
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

id nrCopyLogObj_966()
{
  if (nrCopyLogObj_onceToken_971 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_971, &__block_literal_global_972);
  }

  v1 = nrCopyLogObj_sNRLogObj_973;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_976()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_973;
  nrCopyLogObj_sNRLogObj_973 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __nrCopyLogObj_block_invoke_1061()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_1055;
  nrCopyLogObj_sNRLogObj_1055 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id nrCopyLogObj_1074()
{
  if (nrCopyLogObj_onceToken_1053 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
  }

  v1 = nrCopyLogObj_sNRLogObj_1055;

  return v1;
}

void sub_25B9C7434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nrCopyLogObj_block_invoke_1136()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_1129;
  nrCopyLogObj_sNRLogObj_1129 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __NRIdentityReferencesMonitorCacheLocked_block_invoke_2(uint64_t a1, int a2)
{
  if (NRIdentityReferencesMonitorCacheLocked_sIdentityReferencesChangeToken == a2)
  {
    os_unfair_lock_lock(&gNRSecKeyProxyCacheLock);
    (*(*(a1 + 32) + 16))();

    os_unfair_lock_unlock(&gNRSecKeyProxyCacheLock);
  }
}

uint64_t __Block_byref_object_copy__1143(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __NRIPCFetchReferencesLocked_block_invoke(uint64_t a1)
{
  v2 = nrXPCCopyIdentityReferences();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

id nrCopyLogObj_1145()
{
  if (nrCopyLogObj_onceToken_1127 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1127, &__block_literal_global_1128);
  }

  v1 = nrCopyLogObj_sNRLogObj_1129;

  return v1;
}

void __NRIPCCopyQueue_block_invoke()
{
  v34 = *MEMORY[0x277D85DE8];
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

  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  if (!v1)
  {
    v6 = nrCopyLogObj_1145();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v8 = v6;
      v9 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

      if (!v9)
      {
        goto LABEL_17;
      }
    }

    v10 = nrCopyLogObj_1145();
    _NRLogWithArgs(v10, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_attr_make_with_qos_class(%u) failed", v11, v12, v13, v14, v15, "");

LABEL_17:
    v16 = _os_log_pack_size();
    MEMORY[0x28223BE20](v16, v17);
    v18 = *__error();
    v19 = _os_log_pack_fill();
    *v19 = 136446466;
    *(v19 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v19 + 12) = 1024;
    *(v19 + 14) = 25;
    v20 = nrCopyLogObj_1145();
    _NRLogAbortWithPack(v20);
  }

  v2 = dispatch_queue_create("com.apple.networkrelay.queue.identity-proxy-client", v1);
  if (!v2)
  {
    v7 = nrCopyLogObj_1145();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v21 = v7;
      v22 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

      if (!v22)
      {
        goto LABEL_20;
      }
    }

    v23 = nrCopyLogObj_1145();
    _NRLogWithArgs(v23, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_create(%s) failed", v24, v25, v26, v27, v28, "");

LABEL_20:
    v29 = _os_log_pack_size();
    MEMORY[0x28223BE20](v29, v30);
    v31 = *__error();
    v32 = _os_log_pack_fill();
    *v32 = 136446466;
    *(v32 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v32 + 12) = 2080;
    *(v32 + 14) = "com.apple.networkrelay.queue.identity-proxy-client";
    v33 = nrCopyLogObj_1145();
    _NRLogAbortWithPack(v33);
  }

  v3 = v2;

  v4 = NRIPCCopyQueue_queue;
  NRIPCCopyQueue_queue = v3;
  v5 = *MEMORY[0x277D85DE8];
}

void __NRIdentityReferencesMonitorCacheLocked_block_invoke()
{
  v0 = gNRSecKeyProxies;
  gNRSecKeyProxies = 0;

  v1 = gNRIdentityReferencesCache;
  gNRIdentityReferencesCache = 0;
}

id nrCopyLogObj_1215()
{
  if (nrCopyLogObj_onceToken_1219 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1219, &__block_literal_global_498);
  }

  v1 = nrCopyLogObj_sNRLogObj_1220;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_1222()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_1220;
  nrCopyLogObj_sNRLogObj_1220 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

__CFString *_NRKeyCreateLogString(void *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    v8 = @"[nil]";
    goto LABEL_39;
  }

  if (_NRIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&_NRIsAppleInternal_onceToken, &__block_literal_global_435);
  }

  if (_NRIsAppleInternal_internal == 1 && [v1 length] && objc_msgSend(v1, "length") <= 0xFFFFFFE4)
  {
    v2 = [v1 length];
    v3 = (v2 + 26);
    if (v2 == -26)
    {
      v11 = nrCopyLogObj_1215();
      v12 = v11;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v13 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

        if (!v13)
        {
          goto LABEL_58;
        }
      }

      v14 = nrCopyLogObj_1215();
      _NRLogWithArgs(v14, 16, "%s%.30s:%-4d ABORTING: strict_malloc called with size 0", v15, v16, v17, v18, v19, "");
    }

    else
    {
      v4 = malloc_type_malloc((v2 + 26), 0x6C03CDABuLL);
      if (v4)
      {
        v5 = v4;
        if (v3 != 1)
        {
          v6 = &aNetworkrelayke[v3 - 2];
          *v4 = 78;
          v5 = v4 + 1;
          if (v6 != "NetworkRelayKeyLogHashSalt")
          {
            v4[1] = 101;
            if (v6 == "etworkRelayKeyLogHashSalt")
            {
              v5 = v4 + 2;
            }

            else
            {
              v4[2] = 116;
              if (v6 == "tworkRelayKeyLogHashSalt")
              {
                v5 = v4 + 3;
              }

              else
              {
                v4[3] = 119;
                if (v6 == "workRelayKeyLogHashSalt")
                {
                  v5 = v4 + 4;
                }

                else
                {
                  v4[4] = 111;
                  if (v6 == "orkRelayKeyLogHashSalt")
                  {
                    v5 = v4 + 5;
                  }

                  else
                  {
                    v4[5] = 114;
                    if (v6 == "rkRelayKeyLogHashSalt")
                    {
                      v5 = v4 + 6;
                    }

                    else
                    {
                      v4[6] = 107;
                      if (v6 == "kRelayKeyLogHashSalt")
                      {
                        v5 = v4 + 7;
                      }

                      else
                      {
                        v4[7] = 82;
                        if (v6 == "RelayKeyLogHashSalt")
                        {
                          v5 = v4 + 8;
                        }

                        else
                        {
                          v4[8] = 101;
                          if (v6 == "elayKeyLogHashSalt")
                          {
                            v5 = v4 + 9;
                          }

                          else
                          {
                            v4[9] = 108;
                            if (v6 == "layKeyLogHashSalt")
                            {
                              v5 = v4 + 10;
                            }

                            else
                            {
                              v4[10] = 97;
                              if (v6 == "ayKeyLogHashSalt")
                              {
                                v5 = v4 + 11;
                              }

                              else
                              {
                                v4[11] = 121;
                                if (v6 == "yKeyLogHashSalt")
                                {
                                  v5 = v4 + 12;
                                }

                                else
                                {
                                  v4[12] = 75;
                                  if (v6 == "KeyLogHashSalt")
                                  {
                                    v5 = v4 + 13;
                                  }

                                  else
                                  {
                                    v4[13] = 101;
                                    if (v6 == "eyLogHashSalt")
                                    {
                                      v5 = v4 + 14;
                                    }

                                    else
                                    {
                                      v4[14] = 121;
                                      if (v6 == "yLogHashSalt")
                                      {
                                        v5 = v4 + 15;
                                      }

                                      else
                                      {
                                        v4[15] = 76;
                                        if (v6 == "LogHashSalt")
                                        {
                                          v5 = v4 + 16;
                                        }

                                        else
                                        {
                                          v4[16] = 111;
                                          if (v6 == "ogHashSalt")
                                          {
                                            v5 = v4 + 17;
                                          }

                                          else
                                          {
                                            v4[17] = 103;
                                            if (v6 == "gHashSalt")
                                            {
                                              v5 = v4 + 18;
                                            }

                                            else
                                            {
                                              v4[18] = 72;
                                              if (v6 == "HashSalt")
                                              {
                                                v5 = v4 + 19;
                                              }

                                              else
                                              {
                                                v4[19] = 97;
                                                if (v6 == "ashSalt")
                                                {
                                                  v5 = v4 + 20;
                                                }

                                                else
                                                {
                                                  v4[20] = 115;
                                                  if (v6 == "shSalt")
                                                  {
                                                    v5 = v4 + 21;
                                                  }

                                                  else
                                                  {
                                                    v4[21] = 104;
                                                    if (v6 == "hSalt")
                                                    {
                                                      v5 = v4 + 22;
                                                    }

                                                    else
                                                    {
                                                      v4[22] = 83;
                                                      if (v6 == "Salt")
                                                      {
                                                        v5 = v4 + 23;
                                                      }

                                                      else
                                                      {
                                                        v4[23] = 97;
                                                        if (v6 == "alt")
                                                        {
                                                          v5 = v4 + 24;
                                                        }

                                                        else
                                                        {
                                                          v4[24] = 108;
                                                          if (v6 == "lt")
                                                          {
                                                            v5 = v4 + 25;
                                                          }

                                                          else
                                                          {
                                                            v4[25] = 116;
                                                            v5 = v4 + 26;
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        *v5 = 0;
        v25 = v4;
        [v1 getBytes:v4 + 26 length:v3 - 26];
        v41 = 0u;
        v42 = 0u;
        *md = 0u;
        v40 = 0u;
        CC_SHA512(v25, v3, md);
        cc_clear();
        free(v25);
        v26 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:md length:64];
        v27 = [v26 base64EncodedStringWithOptions:0];
        v28 = objc_alloc(MEMORY[0x277CCACA8]);
        v29 = [v27 substringToIndex:6];
        v7 = [v28 initWithFormat:@":%@", v29];

        goto LABEL_37;
      }

      v30 = nrCopyLogObj_1215();
      v31 = v30;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v32 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

        if (!v32)
        {
          goto LABEL_58;
        }
      }

      v33 = nrCopyLogObj_1215();
      _NRLogWithArgs(v33, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", v34, v35, v36, v37, v38, "");
    }

LABEL_58:
    v20 = _os_log_pack_size();
    MEMORY[0x28223BE20](v20, v21);
    v22 = *__error();
    v23 = _os_log_pack_fill();
    *v23 = 136446210;
    *(v23 + 4) = "_NRKeyCreateLogString";
    v24 = nrCopyLogObj_1215();
    _NRLogAbortWithPack(v24);
  }

  v7 = &stru_286D23DB8;
LABEL_37:
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[%llu%@]", objc_msgSend(v1, "length"), v7];

LABEL_39:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t createStringFromNRDeviceProxyProviderType(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v3 = "SHOES";
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v3 = "HTTPConnect";
      goto LABEL_11;
    }

    return [v2 initWithFormat:@"Unknown(%llu)", a1];
  }

  if (!a1)
  {
    v3 = "Default";
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    return [v2 initWithFormat:@"Unknown(%llu)", a1];
  }

  v3 = "MASQUE";
LABEL_11:

  return [v2 initWithUTF8String:v3];
}

uint64_t createStringFromNRDeviceProxyProviderAuthMode(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  if (a1 == 2)
  {
    v3 = "ImportedPSK";
  }

  else if (a1 == 1)
  {
    v3 = "RawPSK";
  }

  else
  {
    if (a1)
    {
      return [v2 initWithFormat:@"Unknown(%llu)", a1];
    }

    v3 = "Default";
  }

  return [v2 initWithUTF8String:v3];
}

id nrCopyLogObj_1529()
{
  if (nrCopyLogObj_onceToken_1533 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
  }

  v1 = nrCopyLogObj_sNRLogObj_1535;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_1538()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_1535;
  nrCopyLogObj_sNRLogObj_1535 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_25B9CD9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B9CDE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B9CE814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B9CF114(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_25B9CF48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B9CF97C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25B9CFFAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t NRCreateStringFromPairingAuthMethod(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v3 = "PIN";
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v3 = "PreviousPairing";
      goto LABEL_11;
    }

    return [v2 initWithFormat:@"Unknown(%zu)", a1];
  }

  if (!a1)
  {
    v3 = "Invalid";
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    return [v2 initWithFormat:@"Unknown(%zu)", a1];
  }

  v3 = "PreSharedKey";
LABEL_11:

  return [v2 initWithUTF8String:v3];
}

id nrCopyLogObj_1710()
{
  if (nrCopyLogObj_onceToken_1721 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
  }

  v1 = nrCopyLogObj_sNRLogObj_1723;

  return v1;
}

void sub_25B9D1A64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

uint64_t __nrCopyLogObj_block_invoke_1727()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_1723;
  nrCopyLogObj_sNRLogObj_1723 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_25B9D2A34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_25B9D5814(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_25B9D6200(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_25B9D6C0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_25B9D7D28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_25B9D8AB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

id nrCopyLogObj_1876()
{
  if (nrCopyLogObj_onceToken_1880 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
  }

  v1 = nrCopyLogObj_sNRLogObj_1881;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_1885()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_1881;
  nrCopyLogObj_sNRLogObj_1881 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

double __os_log_helper_1_2_3_8_34_8_32_8_0(uint64_t a1, uint64_t a2)
{
  *&result = 136446722;
  *a1 = 136446722;
  *(a1 + 4) = "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]";
  *(a1 + 12) = 2080;
  *(a1 + 14) = "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]";
  *(a1 + 22) = 2048;
  *(a1 + 24) = a2;
  return result;
}

uint64_t __Block_byref_object_copy__1951(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t NRCompanionLinkIsEnabled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (nrCopyLogObj_onceToken_1969 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1969, &__block_literal_global_1970);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1971, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1971, 0, "%s%.30s:%-4d Querying whether companion link is enabled", a4, a5, a6, a7, a8, "");
  }

  IsEnabled = nrXPCCompanionLinkIsEnabled();
  if (nrCopyLogObj_onceToken_1969 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_9:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1971, 0, "%s%.30s:%-4d Returning that companion link is %sabled", v8, v9, v10, v11, v12, "");
      return IsEnabled;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_1969, &__block_literal_global_1970);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_9;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_1971, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_9;
  }

  return IsEnabled;
}

uint64_t __nrCopyLogObj_block_invoke_1979()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_1971;
  nrCopyLogObj_sNRLogObj_1971 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t NRDeviceSupportsIDSRestrictedPorts(void *a1)
{
  v6 = a1;
  if (nrCopyLogObj_onceToken_1969 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1969, &__block_literal_global_1970);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1971, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1971, 0, "%s%.30s:%-4d Querying whether device supports restricted ports", v1, v2, v3, v4, v5, "");
  }

  if (!v6)
  {
    v15 = nrCopyLogObj_1982();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v16 = v15;
      v17 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

      if (!v17)
      {
LABEL_18:
        v8 = 0;
        goto LABEL_11;
      }
    }

    v18 = nrCopyLogObj_1982();
    _NRLogWithArgs(v18, 17, "%s called with null device", v19, v20, v21, v22, v23, "NRDeviceSupportsIDSRestrictedPorts");

    goto LABEL_18;
  }

  v7 = [v6 nrDeviceIdentifier];
  v8 = nrXPCSupportsRestrictedPorts(v7);

  if (nrCopyLogObj_onceToken_1969 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_10:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1971, 0, "%s%.30s:%-4d Device supports restricted ports: %s", v9, v10, v11, v12, v13, "");
      goto LABEL_11;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_1969, &__block_literal_global_1970);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_10;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_1971, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_10;
  }

LABEL_11:

  return v8;
}

id nrCopyLogObj_1982()
{
  if (nrCopyLogObj_onceToken_1969 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1969, &__block_literal_global_1970);
  }

  v1 = nrCopyLogObj_sNRLogObj_1971;

  return v1;
}

__CFString *createIPv6AddrString(_DWORD *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = a1;
    if (*a1)
    {
      v2 = 30;
    }

    else
    {
      v4 = a1[1];
      v2 = 30;
      if (!v4)
      {
        if (v1[2] == -65536)
        {
          v2 = 2;
        }

        else
        {
          v2 = 30;
        }

        v5 = 12;
        if (v1[2] != -65536)
        {
          v5 = 0;
        }

        v1 = (v1 + v5);
      }
    }

    if (inet_ntop(v2, v1, v13, 0x2Eu))
    {
      result = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v13];
    }

    else
    {
      if (nrCopyLogObj_onceToken_1989 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1989, &__block_literal_global_1990);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1991, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1991, 17, "inet_ntop failed", v6, v7, v8, v9, v10, v12);
      }

      result = @"<ERROR>";
    }
  }

  else
  {
    result = @"<NULL>";
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __nrCopyLogObj_block_invoke_2001()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_1991;
  nrCopyLogObj_sNRLogObj_1991 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

__CFString *createIPv6AddrStringFromData(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v6[0] = 0;
    v6[1] = 0;
    if ([v1 length] == 16)
    {
      [v2 getBytes:v6 length:16];
      IPv6AddrString = createIPv6AddrString(v6);
    }

    else
    {
      IPv6AddrString = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<bad length %llu>", objc_msgSend(v2, "length")];
    }

    v4 = IPv6AddrString;
  }

  else
  {
    v4 = @"<nil>";
  }

  return v4;
}

__CFString *createSockaddrString(const sockaddr *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    result = @"<NULL>";
    goto LABEL_47;
  }

  sa_len = a1->sa_len;
  if (!a1->sa_len)
  {
    sa_family = a1->sa_family;
    if (!a1->sa_family)
    {
      result = @"<EMPTY>";
      goto LABEL_47;
    }

    goto LABEL_10;
  }

  sa_family = a1->sa_family;
  if (sa_len == 1)
  {
LABEL_10:
    result = [MEMORY[0x277CCACA8] stringWithFormat:@"<invalid_%d_%d>", sa_family, sa_len];
    goto LABEL_47;
  }

  if (a1->sa_family <= 0x11u)
  {
    if (sa_family == 1)
    {
      if (sa_len == 2)
      {
        result = @"<invalid_un>";
      }

      else
      {
        snprintf(__str, 7uLL, "%%.%lus", sa_len - 2);
        __str[6] = 0;
        v9 = objc_alloc(MEMORY[0x277CCACA8]);
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:__str];
        v11 = [v9 initWithFormat:v10, a1->sa_data];

        result = v11;
      }

      goto LABEL_47;
    }

    if (sa_family != 2)
    {
LABEL_7:
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"<unsupported af: %u>", sa_family];
      goto LABEL_47;
    }

    goto LABEL_13;
  }

  if (sa_family != 18)
  {
    if (sa_family != 30)
    {
      goto LABEL_7;
    }

LABEL_13:
    if (getnameinfo(a1, sa_len, __str, 0x39u, v26, 6u, 10))
    {
      result = @"<getnameinfo_fail>";
    }

    else
    {
      v5 = *v26;
      v6 = objc_alloc(MEMORY[0x277CCACA8]);
      if (v5 == 48)
      {
        result = [v6 initWithUTF8String:__str];
      }

      else
      {
        if (a1->sa_family == 2)
        {
          v7 = @"%s:%s";
        }

        else
        {
          v7 = @"%s.%s";
        }

        result = [v6 initWithFormat:v7, __str, v26];
      }
    }

    goto LABEL_47;
  }

  if (sa_len >= 8 && a1->sa_data[3] + a1->sa_data[4] + a1->sa_data[5] + 8 <= sa_len)
  {
    v13 = [MEMORY[0x277CCAB68] string];
    v14 = v13;
    v15 = a1;
    v16 = a1->sa_data[3];
    if (a1->sa_data[4])
    {
      [v13 appendFormat:@"%x", a1->sa_data[v16 + 6]];
      v15 = a1;
      if (a1->sa_data[4] >= 2u)
      {
        v17 = &a1->sa_data[v16 + 7];
        v18 = 1;
        do
        {
          v19 = *v17++;
          [v14 appendFormat:@":%x", v19];
          v15 = a1;
          ++v18;
        }

        while (v18 < a1->sa_data[4]);
      }

      LODWORD(v16) = v15->sa_data[3];
    }

    if (v16)
    {
      v20 = v15;
      if ([v14 length])
      {
        snprintf(__str, 8uLL, "%%%%%%.%us");
      }

      else
      {
        snprintf(__str, 8uLL, "%%.%us");
      }

      __str[7] = 0;
      v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:__str];
      [v14 appendFormat:v21, &v20->sa_data[6]];
    }

    else if (*v15->sa_data)
    {
      v22 = v15;
      if ([v14 length])
      {
        v23 = @"%%%d";
      }

      else
      {
        v23 = @"%d";
      }

      [v14 appendFormat:v23, *v22->sa_data];
    }

    if ([v14 length])
    {
      v24 = v14;
    }

    else
    {
      v24 = @"<invalid_dl2>";
    }

    result = v24;
  }

  else
  {
    result = @"<invalid_dl>";
  }

LABEL_47:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

__CFString *createSockaddrStringFromData(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 length];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 bytes];
      if (v4 >= v5->sa_len)
      {
        SockaddrString = createSockaddrString(v5);
      }

      else
      {
        SockaddrString = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<bad sa_len %hhu length %llu>", v5->sa_len, v4];
      }
    }

    else
    {
      SockaddrString = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<bad length %llu>", 0];
    }

    v7 = SockaddrString;
  }

  else
  {
    v7 = @"<nil>";
  }

  return v7;
}

__CFString *createStringFromNRTLVType(int a1)
{
  if (a1 <= 99)
  {
    if (a1 > 2)
    {
      switch(a1)
      {
        case 3:
          return @"Encapsulated6LoWPAN";
        case 4:
          return @"IKEv2PointToPoint";
        case 5:
          return @"ControlMessage";
      }
    }

    else
    {
      switch(a1)
      {
        case 0:
          return @"Pad0";
        case 1:
          return @"PadN";
        case 2:
          return @"UncompressedIP";
      }
    }

    return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%lld)", a1];
  }

  if (a1 > 102)
  {
    switch(a1)
    {
      case 'g':
        return @"KnownIPv6Hdr_TCP_ECT0";
      case 'h':
        return @"KnownIPv6Hdr_ESP_ClassC";
      case 'i':
        return @"KnownIPv6Hdr_ESP_ClassC_ECT0";
    }

    return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%lld)", a1];
  }

  if (a1 == 100)
  {
    return @"KnownIPv6Hdr_ESP";
  }

  if (a1 == 101)
  {
    return @"KnownIPv6Hdr_ESP_ECT0";
  }

  return @"KnownIPv6Hdr_TCP";
}

__CFString *createIPProtoString(uint64_t a1)
{
  v2 = a1;
  result = @"HOPOPTS";
  switch(v2)
  {
    case 0:
      return result;
    case 1:
      result = @"ICMP";
      break;
    case 2:
      result = @"IGMP";
      break;
    case 3:
      result = @"GGP";
      break;
    case 4:
      result = @"IPV4";
      break;
    case 6:
      result = @"TCP";
      break;
    case 7:
      result = @"ST";
      break;
    case 8:
      result = @"EGP";
      break;
    case 9:
      result = @"PIGP";
      break;
    case 10:
      result = @"RCCMON";
      break;
    case 11:
      result = @"NVPII";
      break;
    case 12:
      result = @"PUP";
      break;
    case 13:
      result = @"ARGUS";
      break;
    case 14:
      result = @"EMCON";
      break;
    case 15:
      result = @"XNET";
      break;
    case 16:
      result = @"CHAOS";
      break;
    case 17:
      result = @"UDP";
      break;
    case 18:
      result = @"MUX";
      break;
    case 19:
      result = @"MEAS";
      break;
    case 20:
      result = @"HMP";
      break;
    case 21:
      result = @"PRM";
      break;
    case 22:
      result = @"IDP";
      break;
    case 23:
      result = @"TRUNK1";
      break;
    case 24:
      result = @"TRUNK2";
      break;
    case 25:
      result = @"LEAF1";
      break;
    case 26:
      result = @"LEAF2";
      break;
    case 27:
      result = @"RDP";
      break;
    case 28:
      result = @"IRTP";
      break;
    case 29:
      result = @"TP";
      break;
    case 30:
      result = @"BLT";
      break;
    case 31:
      result = @"NSP";
      break;
    case 32:
      result = @"INP";
      break;
    case 33:
      result = @"SEP";
      break;
    case 34:
      result = @"3PC";
      break;
    case 35:
      result = @"IDPR";
      break;
    case 36:
      result = @"XTP";
      break;
    case 37:
      result = @"DDP";
      break;
    case 38:
      result = @"CMTP";
      break;
    case 39:
      result = @"TPXX";
      break;
    case 40:
      result = @"IL";
      break;
    case 41:
      result = @"IPV6";
      break;
    case 42:
      result = @"SDRP";
      break;
    case 43:
      result = @"ROUTING";
      break;
    case 44:
      result = @"FRAGMENT";
      break;
    case 45:
      result = @"IDRP";
      break;
    case 46:
      result = @"RSVP";
      break;
    case 47:
      result = @"GRE";
      break;
    case 48:
      result = @"MHRP";
      break;
    case 49:
      result = @"BHA";
      break;
    case 50:
      result = @"ESP";
      break;
    case 51:
      result = @"AH";
      break;
    case 52:
      result = @"INLSP";
      break;
    case 53:
      result = @"SWIPE";
      break;
    case 54:
      result = @"NHRP";
      break;
    case 58:
      result = @"ICMPV6";
      break;
    case 59:
      result = @"NONE";
      break;
    case 60:
      result = @"DSTOPTS";
      break;
    case 61:
      result = @"AHIP";
      break;
    case 62:
      result = @"CFTP";
      break;
    case 63:
      result = @"HELLO";
      break;
    case 64:
      result = @"SATEXPAK";
      break;
    case 65:
      result = @"KRYPTOLAN";
      break;
    case 66:
      result = @"RVD";
      break;
    case 67:
      result = @"IPPC";
      break;
    case 68:
      result = @"ADFS";
      break;
    case 69:
      result = @"SATMON";
      break;
    case 70:
      result = @"VISA";
      break;
    case 71:
      result = @"IPCV";
      break;
    case 72:
      result = @"CPNX";
      break;
    case 73:
      result = @"CPHB";
      break;
    case 74:
      result = @"WSN";
      break;
    case 75:
      result = @"PVP";
      break;
    case 76:
      result = @"BRSATMON";
      break;
    case 77:
      result = @"ND";
      break;
    case 78:
      result = @"WBMON";
      break;
    case 79:
      result = @"WBEXPAK";
      break;
    case 80:
      result = @"EON";
      break;
    case 81:
      result = @"VMTP";
      break;
    case 82:
      result = @"SVMTP";
      break;
    case 83:
      result = @"VINES";
      break;
    case 84:
      result = @"TTP";
      break;
    case 85:
      result = @"IGP";
      break;
    case 86:
      result = @"DGP";
      break;
    case 87:
      result = @"TCF";
      break;
    case 88:
      result = @"IGRP";
      break;
    case 89:
      result = @"OSPFIGP";
      break;
    case 90:
      result = @"SRPC";
      break;
    case 91:
      result = @"LARP";
      break;
    case 92:
      result = @"MTP";
      break;
    case 93:
      result = @"AX25";
      break;
    case 94:
      result = @"IPEIP";
      break;
    case 95:
      result = @"MICP";
      break;
    case 96:
      result = @"SCCSP";
      break;
    case 97:
      result = @"ETHERIP";
      break;
    case 98:
      result = @"ENCAP";
      break;
    case 99:
      result = @"APES";
      break;
    case 100:
      result = @"GMTP";
      break;
    case 103:
      result = @"PIM";
      break;
    case 108:
      result = @"IPCOMP";
      break;
    case 113:
      result = @"PGM";
      break;
    case 132:
      result = @"SCTP";
      break;
    default:
      result = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"IPProto(%u)", a1];
      break;
  }

  return result;
}

void *createIOVecString(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"ioVec[%u]{", a2];
  if (v2)
  {
    v5 = v2;
    v6 = (a1 + 8);
    do
    {
      v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
      v8 = *(v6 - 1);
      v9 = *v6;
      v6 += 4;
      [v4 appendFormat:@"%p:%@%u;", v8, v7, v9];

      --v5;
    }

    while (v5);
  }

  [v4 appendString:@"}"];
  return v4;
}

void *createIOVecStringWithContents(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"ioVec[%u]{", a2];
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
      objc_msgSend(v6, "appendFormat:", @"(");
      v7 = (a1 + 16 * i);
      if (*(v7 + 2))
      {
        [v6 appendFormat:@"%s%02x", "", **v7];
        if (*(v7 + 2) >= 2u)
        {
          v8 = 1;
          do
          {
            [v6 appendFormat:@"%s%02x", " ", (*v7)[v8++]];
            v9 = *(v7 + 2);
            if (v9 >= 4)
            {
              v9 = 4;
            }
          }

          while (v9 > v8);
        }
      }

      [v6 appendFormat:@":"]);
      [v4 appendFormat:@"%p:%@%u;", *v7, v6, *(v7 + 2)];
    }
  }

  [v4 appendString:@"}"];
  return v4;
}

BOOL isPacketValidIPv6(_BYTE *a1, unsigned int a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a2 > 0x27)
    {
      return (*a1 & 0xF0) == 96;
    }

    if (gNRPacketLoggingEnabled != 1)
    {
      return 0;
    }

    v4 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v5 = v4;
      v6 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

      if (!v6)
      {
        return 0;
      }
    }

    v7 = nrCopyLogObj_2201();
    _NRLogWithArgs(v7, 1, "%s%.30s:%-4d Packet too short for determining address family", v8, v9, v10, v11, v12, "");

    return 0;
  }

  return result;
}

id nrCopyLogObj_2201()
{
  if (nrCopyLogObj_onceToken_1989 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1989, &__block_literal_global_1990);
  }

  v1 = nrCopyLogObj_sNRLogObj_1991;

  return v1;
}

uint64_t getDSCPFromPacket(_BYTE *a1, unsigned int a2)
{
  result = isPacketValidIPv6(a1, a2);
  if (result)
  {
    return (bswap32(*a1) >> 22) & 0x3F;
  }

  return result;
}

uint64_t getESPSPIFromPacket(uint64_t a1, unsigned int a2)
{
  if (isPacketValidIPv6(a1, a2) && isNextHeaderValidESP(a1, a2))
  {
    return bswap32(*(a1 + 40));
  }

  else
  {
    return 0;
  }
}

BOOL isNextHeaderValidESP(uint64_t a1, unsigned int a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a2 <= 0x28)
    {
      if (gNRPacketLoggingEnabled != 1)
      {
        return 0;
      }

      v5 = nrCopyLogObj_2201();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v6 = v5;
        v7 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

        if (!v7)
        {
          return 0;
        }
      }

      v8 = nrCopyLogObj_2201();
      _NRLogWithArgs(v8, 1, "%s%.30s:%-4d Packet too short for determining next header", v9, v10, v11, v12, v13, "");

      return 0;
    }

    return *(a1 + 6) == 50 && a2 > 0x2F;
  }

  return result;
}

uint64_t getESPSequenceNumberFromPacket(uint64_t a1, unsigned int a2)
{
  if (isPacketValidIPv6(a1, a2) && isNextHeaderValidESP(a1, a2))
  {
    return bswap32(*(a1 + 44));
  }

  else
  {
    return 0;
  }
}

__CFString *createPacketString(unsigned __int8 *a1, uint64_t a2)
{
  result = @"nil";
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      if (a2 > 0x27)
      {
        v5 = objc_alloc(MEMORY[0x277CCAB68]);
        v6 = *a1 >> 4;
        if (v6 == 6)
        {
          v7 = *a1;
          v8 = (bswap32(*a1) >> 22) & 0x3F;
          v9 = &stru_286D23DB8;
          if (v8)
          {
            v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DSCP:0x%02x ", v8];
            v7 = *a1;
          }

          else
          {
            v22 = &stru_286D23DB8;
          }

          v11 = @"CE ";
          if ((v7 & 0x1000) != 0)
          {
            v12 = @"ECT(1) ";
          }

          else
          {
            v11 = @"ECT(0) ";
            v12 = &stru_286D23DB8;
          }

          if ((v7 & 0x2000) != 0)
          {
            v13 = v11;
          }

          else
          {
            v13 = v12;
          }

          v14 = v7 & 0xFFFF0F00;
          v23 = v5;
          if (v14)
          {
            v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"FlowLabel:0x%03x ", bswap32(v14)];
          }

          v15 = objc_alloc(MEMORY[0x277CCACA8]);
          IPv6AddrString = createIPv6AddrString(a1 + 2);
          v17 = createIPv6AddrString(a1 + 6);
          v18 = a1[7];
          v19 = bswap32(*(a1 + 2)) >> 16;
          IPProtoString = createIPProtoString(a1[6]);
          v10 = [v15 initWithFormat:@"%@ -> %@ hlim %u %@%@%@len %u %@", IPv6AddrString, v17, v18, v22, v13, v9, v19, IPProtoString];

          v5 = v23;
        }

        else
        {
          v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"IPv%u", v6];
        }

        v21 = [v5 initWithString:v10];

        if ((v4 & 0xFFF8) != 0x28 && a1[6] == 50)
        {
          [v21 appendFormat:@" SPI 0x%08x seq %u", bswap32(*(a1 + 10)), bswap32(*(a1 + 11))];
        }

        return v21;
      }

      else
      {
        return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"IPv%u too short %u", *a1 >> 4, a2];
      }
    }
  }

  return result;
}

__CFString *NRDCreateIPHCString(unsigned __int16 *a1, unsigned int a2)
{
  if (!a1)
  {
    return @"nil";
  }

  v4 = bswap32(*a1);
  v5 = objc_alloc(MEMORY[0x277CCAB68]);
  v6 = 48;
  if ((v4 & 0x20000) != 0)
  {
    v7 = 49;
  }

  else
  {
    v7 = 48;
  }

  v38 = v7;
  if ((v4 & 0x40000) != 0)
  {
    v8 = 49;
  }

  else
  {
    v8 = 48;
  }

  if ((v4 & 0x80000) != 0)
  {
    v9 = 49;
  }

  else
  {
    v9 = 48;
  }

  v36 = v9;
  v37 = v8;
  if ((v4 & 0x100000) != 0)
  {
    v10 = 49;
  }

  else
  {
    v10 = 48;
  }

  if ((v4 & 0x200000) != 0)
  {
    v11 = 49;
  }

  else
  {
    v11 = 48;
  }

  v34 = v11;
  v35 = v10;
  if ((v4 & 0x400000) != 0)
  {
    v12 = 49;
  }

  else
  {
    v12 = 48;
  }

  if ((v4 & 0x800000) != 0)
  {
    v13 = 49;
  }

  else
  {
    v13 = 48;
  }

  v32 = v13;
  v33 = v12;
  if ((v4 & 0x1000000) != 0)
  {
    v14 = 49;
  }

  else
  {
    v14 = 48;
  }

  if ((v4 & 0x2000000) != 0)
  {
    v15 = 49;
  }

  else
  {
    v15 = 48;
  }

  v30 = v15;
  v31 = v14;
  if ((v4 & 0x4000000) != 0)
  {
    v16 = 49;
  }

  else
  {
    v16 = 48;
  }

  if ((v4 & 0x8000000) != 0)
  {
    v17 = 49;
  }

  else
  {
    v17 = 48;
  }

  v28 = v17;
  v29 = v16;
  if ((v4 & 0x10000000) != 0)
  {
    v18 = 49;
  }

  else
  {
    v18 = 48;
  }

  if ((v4 & 0x20000000) != 0)
  {
    v19 = 49;
  }

  else
  {
    v19 = 48;
  }

  v27 = v18;
  if ((v4 & 0x40000000) != 0)
  {
    v20 = 49;
  }

  else
  {
    v20 = 48;
  }

  if (v4 >> 16 < 0)
  {
    v6 = 49;
  }

  v21 = [v5 initWithFormat:@"[D(%c%c%c) TF(%c%c) NH(%c) HLIM(%c%c) CID(%c) SAC(%c) SAM(%c%c) M(%c) DAC(%c) DAM(%c%c)", v6, v20, v19, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, HIWORD(v4) & 1 | 0x30];
  v22 = v21;
  if (a2 >= 3)
  {
    [v21 appendString:@" "];
    v23 = a2 - 2;
    v24 = (a1 + 1);
    do
    {
      v25 = *v24++;
      [v22 appendFormat:@"%02x", v25];
      --v23;
    }

    while (v23);
  }

  [v22 appendString:@"]"];
  return v22;
}

uint64_t nrMaxPacketLengthForTLV(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v4 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v5 = v4;
      v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v7 = nrCopyLogObj_2201();
    _NRLogWithArgs(v7, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: tlvLen > 0", v8, v9, v10, v11, v12, "");

LABEL_7:
    v13 = _os_log_pack_size();
    MEMORY[0x28223BE20](v13, v14);
    v15 = *__error();
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "nrMaxPacketLengthForTLV";
    v17 = nrCopyLogObj_2201();
    _NRLogAbortWithPack(v17);
  }

  v2 = *MEMORY[0x277D85DE8];
  return (a2 + 40);
}

uint64_t nrPacketTo6LoWPAN(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7)
{
  v255 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v30 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v46 = v30;
      v47 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

      if (!v47)
      {
        goto LABEL_80;
      }
    }

    v48 = nrCopyLogObj_2201();
    _NRLogWithArgs(v48, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (packetBuffer) != ((void*)0)", v49, v50, v51, v52, v53, "");

    goto LABEL_80;
  }

  if (!a2)
  {
    v31 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v54 = v31;
      v55 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);

      if (!v55)
      {
        goto LABEL_80;
      }
    }

    v56 = nrCopyLogObj_2201();
    _NRLogWithArgs(v56, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: packetLength > 0", v57, v58, v59, v60, v61, "");

    goto LABEL_80;
  }

  if (!a3)
  {
    v32 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v62 = v32;
      v63 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

      if (!v63)
      {
LABEL_80:
        _os_log_pack_size();
        (MEMORY[0x28223BE20])();
        v70 = *__error();
        v71 = _os_log_pack_fill();
        *v71 = 136446210;
        v72 = "nrPacketTo6LoWPAN";
LABEL_178:
        *(v71 + 4) = v72;
        goto LABEL_185;
      }
    }

    v64 = nrCopyLogObj_2201();
    _NRLogWithArgs(v64, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (ioVecs) != ((void*)0)", v65, v66, v67, v68, v69, "");

    goto LABEL_80;
  }

  if (!a4)
  {
    v33 = nrCopyLogObj_2201();
    v34 = "nrPacketTo6LoWPAN";
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v73 = v33;
      v74 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);

      if (!v74)
      {
LABEL_83:
        _os_log_pack_size();
        (MEMORY[0x28223BE20])();
        v81 = *__error();
LABEL_184:
        v186 = _os_log_pack_fill();
        *v186 = 136446210;
        *(v186 + 4) = v34;
LABEL_185:
        v187 = nrCopyLogObj_2201();
        _NRLogAbortWithPack(v187);
      }
    }

    v75 = nrCopyLogObj_2201();
    _NRLogWithArgs(v75, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 0", v76, v77, v78, v79, v80, "");

    goto LABEL_83;
  }

  if (!a5)
  {
    v35 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v82 = v35;
      v83 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

      if (!v83)
      {
        goto LABEL_89;
      }
    }

    v84 = nrCopyLogObj_2201();
    _NRLogWithArgs(v84, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (srcAddr) != ((void*)0)", v85, v86, v87, v88, v89, "");

    goto LABEL_89;
  }

  if (!a6)
  {
    v36 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v90 = v36;
      v91 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);

      if (!v91)
      {
LABEL_89:
        _os_log_pack_size();
        (MEMORY[0x28223BE20])();
        v98 = *__error();
        v71 = _os_log_pack_fill();
        *v71 = 136446210;
        v72 = "nrPacketTo6LoWPANTLV";
        goto LABEL_178;
      }
    }

    v92 = nrCopyLogObj_2201();
    _NRLogWithArgs(v92, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (dstAddr) != ((void*)0)", v93, v94, v95, v96, v97, "");

    goto LABEL_89;
  }

  if (a2 <= 0x27)
  {
    v37 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v99 = v37;
      v100 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);

      if (!v100)
      {
        goto LABEL_107;
      }
    }

    v101 = nrCopyLogObj_2201();
    _NRLogWithArgs(v101, 1, "%s%.30s:%-4d no 6lo compression - too short %u", v102, v103, v104, v105, v106, "");
LABEL_106:

    goto LABEL_107;
  }

  v9 = *a1 >> 4;
  if (v9 != 6)
  {
    if (v9 != 4)
    {
      v107 = nrCopyLogObj_2201();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v131 = v107;
        v132 = os_log_type_enabled(v107, OS_LOG_TYPE_INFO);

        if (!v132)
        {
          goto LABEL_107;
        }
      }

      v101 = nrCopyLogObj_2201();
      _NRLogWithArgs(v101, 1, "%s%.30s:%-4d no 6lo compression - not IPv6 - v=%u", v133, v134, v135, v136, v137, "");
      goto LABEL_106;
    }

    v38 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v124 = v38;
      v125 = os_log_type_enabled(v38, OS_LOG_TYPE_INFO);

      if (!v125)
      {
        goto LABEL_107;
      }
    }

    v101 = nrCopyLogObj_2201();
    IPProtoString = createIPProtoString(a1[9]);
    _NRLogWithArgs(v101, 1, "%s%.30s:%-4d no 6lo compression - IPv4 - %@", v126, v127, v128, v129, v130, "");

    goto LABEL_106;
  }

  if (gNRPacketLoggingEnabled == 1)
  {
    v39 = a3;
    v40 = a4;
    v41 = a5;
    v42 = a7;
    v43 = a6;
    v44 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v108 = v44;
      v109 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);

      a6 = v43;
      a7 = v42;
      a5 = v41;
      a4 = v40;
      a3 = v39;
      if (!v109)
      {
        goto LABEL_10;
      }
    }

    v110 = nrCopyLogObj_2201();
    PacketString = createPacketString(a1, a2);
    _NRLogWithArgs(v110, 1, "%s%.30s:%-4d Got [%@] total len %u", v111, v112, v113, v114, v115, "");

    a3 = v39;
    a4 = v40;
    a5 = v41;
    a7 = v42;
    a6 = v43;
  }

LABEL_10:
  v10 = (a2 - 40);
  if (v10 != bswap32(*(a1 + 2)) >> 16)
  {
    v45 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {

LABEL_97:
      v101 = nrCopyLogObj_2201();
      v238 = bswap32(*(a1 + 2)) >> 16;
      _NRLogWithArgs(v101, 1, "%s%.30s:%-4d Avoiding compression of strange length payload %u expected %u", v118, v119, v120, v121, v122, "");
      goto LABEL_106;
    }

    v116 = v45;
    v117 = os_log_type_enabled(v45, OS_LOG_TYPE_INFO);

    if (v117)
    {
      goto LABEL_97;
    }

LABEL_107:
    result = 0;
    goto LABEL_170;
  }

  v11 = a1 + 8;
  v13 = *(a1 + 1) != *a5 || *(a1 + 2) != *(a5 + 8);
  v14 = a1 + 24;
  v16 = *(a1 + 3) != *a6 || *(a1 + 4) != *(a6 + 8);
  memset(v254, 0, sizeof(v254));
  v253 = 0u;
  v251 = 0;
  memset(v250, 0, sizeof(v250));
  v252 = 96;
  v17 = *a1;
  v18 = bswap32(*a1);
  if ((v18 & 0xFFFFF) != 0)
  {
    if ((v18 & 0xFC00000) != 0)
    {
      WORD1(v250[0]) = WORD1(a1);
      LOBYTE(v250[0]) = v18 >> 20;
      BYTE1(v250[0]) = BYTE1(a1) & 0xF;
      v21 = 4;
      v20 = 96;
    }

    else
    {
      v20 = 104;
      v252 = 104;
      LOWORD(v250[0]) = *(a1 + 1);
      BYTE2(v250[0]) = a1[3];
      v123 = v250[0] & 0xF | ((v17 >> 13) << 7);
      LOBYTE(v250[0]) = v123;
      if ((v17 & 0x1000) != 0)
      {
        LOBYTE(v250[0]) = v123 | 0x40;
        v21 = 3;
        v20 = 104;
      }

      else
      {
        v21 = 3;
      }
    }
  }

  else if ((v18 & 0xFF00000) != 0)
  {
    v19 = v18 >> 20;
    v20 = 112;
    v252 = 112;
    LOBYTE(v250[0]) = v19;
    v21 = 1;
  }

  else
  {
    v21 = 0;
    v20 = 120;
    v252 = 120;
  }

  *(v250 | v21) = a1[6];
  v22 = v21 + 1;
  v23 = a1[7];
  switch(v23)
  {
    case 64:
      v24 = v20 | 2;
      break;
    case 255:
      v24 = v20 | 3;
      break;
    case 1:
      v24 = v20 | 1;
      break;
    default:
      *(v250 | v22) = v23;
      LODWORD(v22) = v21 + 2;
      if (v13)
      {
        goto LABEL_30;
      }

LABEL_109:
      v27 = 48;
      LOBYTE(v253) = 48;
      goto LABEL_110;
  }

  v252 = v24;
  if (!v13)
  {
    goto LABEL_109;
  }

LABEL_30:
  if (a7 && *v11 == *a5 && (*(a1 + 18) == *(a5 + 10) ? (v25 = *(a1 + 11) == *(a5 + 14)) : (v25 = 0), v25))
  {
    v27 = 96;
    LOBYTE(v253) = 96;
    v29 = (v250 | v22);
    v28 = *(a1 + 8);
  }

  else
  {
    if (*v11 != 254 || (a1[9] & 0xC0) != 0x80)
    {
      v27 = 0;
      *(v250 | v22) = *v11;
      LODWORD(v22) = v22 | 0x10;
      goto LABEL_110;
    }

    if (*v11 != 33022 || *(a1 + 14) != 0xFEFF0000000000)
    {
      v27 = 16;
      LOBYTE(v253) = 16;
      *(v250 | v22) = *(a1 + 2);
      LODWORD(v22) = v22 + 8;
      goto LABEL_110;
    }

    v27 = 32;
    LOBYTE(v253) = 32;
    v28 = *(a1 + 11);
    v29 = (v250 | v22);
  }

  *v29 = v28;
  LODWORD(v22) = v22 + 2;
LABEL_110:
  v139 = *v14;
  v247 = a2;
  if (v139 == 255)
  {
    LOBYTE(v253) = v27 | 8;
    if (!(*v14 ^ 0x2FFLL | *(a1 + 31)))
    {
      LOBYTE(v253) = v27 | 0xB;
      *(v250 + v22) = a1[39];
      LODWORD(v22) = v22 + 1;
      goto LABEL_133;
    }

    if (!a1[36])
    {
      LOBYTE(v253) = v27 | 0xA;
      *(v250 + v22) = a1[25];
      v210 = v250 + (v22 + 1);
      *v210 = *(a1 + 37);
      v210[2] = a1[39];
      LODWORD(v22) = v22 + 4;
      goto LABEL_133;
    }

    if (!a1[34])
    {
      LOBYTE(v253) = v27 | 9;
      *(v250 + v22) = a1[25];
      v211 = v250 + (v22 + 1);
      *v211 = *(a1 + 35);
      v211[4] = a1[39];
      LODWORD(v22) = v22 + 6;
      goto LABEL_133;
    }

    goto LABEL_132;
  }

  if (!v16)
  {
    LOBYTE(v253) = v27 | 3;
    goto LABEL_133;
  }

  if (a7 && *v14 == *a6 && *(a1 + 34) == *(a6 + 10) && *(a1 + 19) == *(a6 + 14))
  {
    LOBYTE(v253) = v27 | 6;
    v142 = *(a1 + 16);
    goto LABEL_128;
  }

  if (v139 != 254 || (a1[25] & 0xC0) != 0x80)
  {
LABEL_132:
    *(v250 + v22) = *v14;
    LODWORD(v22) = v22 + 16;
    goto LABEL_133;
  }

  if (*v14 == 33022 && *(a1 + 30) == 0xFEFF0000000000)
  {
    LOBYTE(v253) = v27 | 2;
    v142 = *(a1 + 19);
LABEL_128:
    *(v250 + v22) = v142;
    LODWORD(v22) = v22 + 2;
    goto LABEL_133;
  }

  LOBYTE(v253) = v27 | 1;
  *(v250 + v22) = *(a1 + 4);
  LODWORD(v22) = v22 + 8;
LABEL_133:
  v143 = 0;
  v246 = a4;
  v248 = a3;
  v249 = a4;
  v144 = a4 - 1;
  v145 = (a3 + 8);
  do
  {
    if (*v145 >= 2 - v143)
    {
      v146 = 2 - v143;
    }

    else
    {
      v146 = *v145;
    }

    memcpy(*(v145 - 1), &v252 + v143, v146);
    v143 += v146;
    v147 = v143 > 1 || v144-- == 0;
    v145 += 2;
  }

  while (!v147);
  if (v143 != 2)
  {
    v166 = nrCopyLogObj_2201();
    v34 = "nrWriteBufferToIOVec";
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v177 = v166;
      v178 = os_log_type_enabled(v166, OS_LOG_TYPE_ERROR);

      if (!v178)
      {
LABEL_183:
        _os_log_pack_size();
        (MEMORY[0x28223BE20])();
        v185 = *__error();
        goto LABEL_184;
      }
    }

    v179 = nrCopyLogObj_2201();
    _NRLogWithArgs(v179, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length", v180, v181, v182, v183, v184, "");

    goto LABEL_183;
  }

  v148 = 0;
  v150 = v248;
  v149 = v249;
  v151 = (v248 + 8);
  v152 = 2;
  while (1)
  {
    v153 = *v151;
    if (!v152)
    {
      goto LABEL_149;
    }

    if (v152 <= v153)
    {
      break;
    }

    v152 -= v153;
LABEL_145:
    v151 += 4;
    if (!--v149)
    {
      goto LABEL_154;
    }
  }

  if (v152 >= v153)
  {
LABEL_153:
    v152 = 0;
    goto LABEL_145;
  }

LABEL_149:
  v154 = v153 - v152;
  if (v154 >= v22 - v148)
  {
    v155 = v22 - v148;
  }

  else
  {
    v155 = v154;
  }

  memcpy((*(v151 - 1) + v152), v250 + v148, v155);
  v148 += v155;
  if (v148 < v22)
  {
    goto LABEL_153;
  }

LABEL_154:
  if (v148 != v22)
  {
    goto LABEL_171;
  }

  if (!v10)
  {
    goto LABEL_168;
  }

  v156 = 0;
  v157 = (v248 + 8);
  v158 = v249;
  v159 = v22 + 2;
  while (2)
  {
    v160 = *v157;
    if (v159)
    {
      if (v159 > v160)
      {
        v159 -= v160;
      }

      else
      {
        if (v159 < v160)
        {
          break;
        }

LABEL_166:
        v159 = 0;
      }

      v157 += 4;
      if (!--v158)
      {
        goto LABEL_167;
      }

      continue;
    }

    break;
  }

  v161 = v160 - v159;
  if (v161 >= v10 - v156)
  {
    v162 = v10 - v156;
  }

  else
  {
    v162 = v161;
  }

  memcpy((*(v157 - 1) + v159), &a1[v156 + 40], v162);
  v156 += v162;
  if (v156 < v10)
  {
    goto LABEL_166;
  }

LABEL_167:
  v150 = v248;
  if (v156 != v10)
  {
LABEL_171:
    v165 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v167 = v165;
      v168 = os_log_type_enabled(v165, OS_LOG_TYPE_ERROR);

      if (!v168)
      {
LABEL_177:
        _os_log_pack_size();
        (MEMORY[0x28223BE20])();
        v175 = *__error();
        v71 = _os_log_pack_fill();
        *v71 = 136446210;
        v72 = "nrWriteBufferToIOVec";
        goto LABEL_178;
      }
    }

    v169 = nrCopyLogObj_2201();
    _NRLogWithArgs(v169, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length", v170, v171, v172, v173, v174, "");

    goto LABEL_177;
  }

LABEL_168:
  v163 = v10 + v22 + 2;
  if (gNRPacketLoggingEnabled != 1)
  {
    goto LABEL_169;
  }

  v176 = nrCopyLogObj_2201();
  if (sNRCopyLogToStdErr == 1)
  {

    goto LABEL_187;
  }

  v188 = v176;
  v189 = os_log_type_enabled(v176, OS_LOG_TYPE_INFO);

  if (v189)
  {
LABEL_187:
    v190 = nrCopyLogObj_2201();
    v191 = createPacketString(a1, v247);
    v244 = NRDCreateIPHCString(&v252, 2u);
    v245 = v191;
    v243 = &v242;
    if (v163)
    {
      v192 = malloc_type_malloc(v163, 0x87367FC4uLL);
      if (v192)
      {
        v193 = v192;
        v242 = &v242;
        v194 = 0;
        v195 = (v150 + 8);
        v196 = 3;
        while (1)
        {
          v197 = *v195;
          if (!v196)
          {
            goto LABEL_195;
          }

          if (v196 <= v197)
          {
            break;
          }

          v196 -= v197;
LABEL_191:
          v195 += 4;
          if (!--v249)
          {
            goto LABEL_200;
          }
        }

        if (v196 < v197)
        {
LABEL_195:
          v198 = v197 - v196;
          if (v198 >= v163 - v194)
          {
            v199 = v163 - v194;
          }

          else
          {
            v199 = v198;
          }

          memcpy(&v193[v194], (*(v195 - 1) + v196), v199);
          v194 += v199;
          if (v194 >= v163)
          {
LABEL_200:
            if (v194 == v163)
            {
              v200 = v190;
              v201 = objc_alloc(MEMORY[0x277CBEA90]);
              v202 = [v201 initWithBytesNoCopy:v193 length:v163 freeWhenDone:{1, v242, v243}];
              goto LABEL_202;
            }

            v212 = nrCopyLogObj_2201();
            v213 = v212;
            if (sNRCopyLogToStdErr == 1)
            {

              goto LABEL_211;
            }

            v214 = os_log_type_enabled(v212, OS_LOG_TYPE_ERROR);

            if (v214)
            {
LABEL_211:
              v215 = nrCopyLogObj_2201();
              IOVecString = createIOVecString(v248, v246);
              _NRLogWithArgs(v215, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", v216, v217, v218, v219, v220, "");
            }

            v221 = _os_log_pack_size();
            MEMORY[0x28223BE20](v221, v222);
            v223 = *__error();
            v224 = _os_log_pack_fill();
            v225 = createIOVecString(v248, v246);
            __os_log_helper_1_2_5_8_34_4_0_4_0_4_0_8_64(v224, "nrWriteIOVecToBuffer", v194, v163, 3, v225);
            v226 = nrCopyLogObj_2201();
            _NRLogAbortWithPack(v226);
          }
        }

        v196 = 0;
        goto LABEL_191;
      }

      v227 = nrCopyLogObj_2201();
      v228 = v227;
      v34 = "createNSDataFromTLVIOVec";
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v229 = os_log_type_enabled(v227, OS_LOG_TYPE_ERROR);

        if (!v229)
        {
LABEL_217:
          _os_log_pack_size();
          (MEMORY[0x28223BE20])();
          v236 = *__error();
          goto LABEL_184;
        }
      }

      v230 = nrCopyLogObj_2201();
      _NRLogWithArgs(v230, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", v231, v232, v233, v234, v235, "");

      goto LABEL_217;
    }

    v200 = v190;
    v202 = objc_alloc_init(MEMORY[0x277CBEA90]);
LABEL_202:
    v239 = _NRCreateDataString(v202);
    v203 = v244;
    v204 = v245;
    _NRLogWithArgs(v200, 1, "%s%.30s:%-4d Used 6LowPAN IPHC to compress %u to %u (inline %u, no tlv) - %@ %@ %@", v205, v206, v207, v208, v209, "");
  }

LABEL_169:
  result = v163;
LABEL_170:
  v164 = *MEMORY[0x277D85DE8];
  return result;
}

void *createIKEv2PacketString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v12 = nrCopyLogObj_2201();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v13 = v12;
      v14 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);

      if (!v14)
      {
LABEL_22:
        v3 = 0;
        goto LABEL_17;
      }
    }

    v15 = nrCopyLogObj_2201();
    _NRLogWithArgs(v15, 17, "%s called with null data", v16, v17, v18, v19, v20, "createIKEv2PacketString");

    goto LABEL_22;
  }

  if ([v1 length] > 0x1B)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"["];
    v4 = [v2 bytes];
    v5 = v4[18] - 34;
    if (v5 < 0xB && ((0x61Fu >> v5) & 1) != 0)
    {
      v6 = *(&off_27996B440 + (v4[18] - 34));
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"UNKNOWN_MSG_TYPE(%u)", v4[18]];
    }

    [v3 appendString:v6];
    if (v4[17] != 32)
    {
      [v3 appendFormat:@" vers %02X", v4[17]];
    }

    HIDWORD(v8) = v4[19];
    LODWORD(v8) = HIDWORD(v8);
    v7 = v8 >> 3;
    if (v7 < 6 && ((0x33u >> v7) & 1) != 0)
    {
      v9 = *(&off_27996B498 + v7);
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown Flags(%u)", v4[19]];
    }

    [v3 appendFormat:@" %@", v9];
    [v3 appendFormat:@" id %u", bswap32(*(v4 + 5))];
    v10 = bswap32(*(v4 + 6));
    if (v10 != [v2 length])
    {
      [v3 appendFormat:@" len %u", v10];
    }

    [v3 appendString:@" "];
    [v3 appendFormat:@"%02X", *v4];
    [v3 appendFormat:@"%02X", v4[1]];
    [v3 appendFormat:@"%02X", v4[2]];
    [v3 appendFormat:@"%02X", v4[3]];
    [v3 appendFormat:@"%02X", v4[4]];
    [v3 appendFormat:@"%02X", v4[5]];
    [v3 appendFormat:@"%02X", v4[6]];
    [v3 appendFormat:@"%02X", v4[7]];
    [v3 appendString:@"-"];
    [v3 appendFormat:@"%02X", v4[8]];
    [v3 appendFormat:@"%02X", v4[9]];
    [v3 appendFormat:@"%02X", v4[10]];
    [v3 appendFormat:@"%02X", v4[11]];
    [v3 appendFormat:@"%02X", v4[12]];
    [v3 appendFormat:@"%02X", v4[13]];
    [v3 appendFormat:@"%02X", v4[14]];
    [v3 appendFormat:@"%02X", v4[15]];
    [v3 appendString:@"]"];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[Invalid len %u]", objc_msgSend(v2, "length")];
  }

LABEL_17:

  return v3;
}

__CFString *createStringFromThermalPressureLevel(uint64_t a1)
{
  if (a1 > 29)
  {
    if (a1 == 30)
    {
      return @"Heavy";
    }

    if (a1 != 40)
    {
      if (a1 == 50)
      {
        return @"Sleeping";
      }

      return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown(%d)", a1];
    }

    return @"Trapping";
  }

  else
  {
    if (!a1)
    {
      return @"Nominal";
    }

    if (a1 != 10)
    {
      if (a1 == 20)
      {
        return @"Moderate";
      }

      return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown(%d)", a1];
    }

    return @"Light";
  }
}

__CFString *createStringFromNRXPCType(unint64_t a1)
{
  if (a1 < 0x3A && ((0x3FFFFFFFFFFFCFFuLL >> a1) & 1) != 0)
  {
    return off_27996B930[a1];
  }

  else
  {
    return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%lld)", a1];
  }
}

__CFString *createStringFromNRXPCRes(uint64_t a1)
{
  if (a1 <= -3002)
  {
    if (a1 <= -3006)
    {
      switch(a1)
      {
        case -9999:
          return @"FailureUnimplemented";
        case -3007:
          return @"FailureDeviceAlreadyPaired";
        case -3006:
          return @"FailureTransportPairingFailed";
        default:
          return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%lld)", a1];
      }
    }

    else if (a1 > -3004)
    {
      if (a1 == -3003)
      {
        return @"FailureOperationAlreadyInProgress";
      }

      else
      {
        return @"FailureOperationFailed";
      }
    }

    else if (a1 == -3005)
    {
      return @"FailureIncorrectAuthenticationData";
    }

    else
    {
      return @"FailureOperationTimedOut";
    }
  }

  else
  {
    switch(a1)
    {
      case -2019:
        result = @"FailureXPCError";
        break;
      case -2018:
        result = @"FailureCopyIDSDeviceIDFailed";
        break;
      case -2017:
        result = @"FailurePairingClientFailed";
        break;
      case -2016:
        result = @"FailurePairingAttemptFixedInterfaceMode";
        break;
      case -2015:
        result = @"FailureBabelRoutes";
        break;
      case -2014:
        result = @"FailureInvalidOperationOnUnregisteredDevice";
        break;
      case -2013:
        result = @"FailureIKEPairingDidNotConnect";
        break;
      case -2012:
        result = @"FailureFileWriteFailed";
        break;
      case -2011:
        result = @"FailureNoBestTestingDevice";
        break;
      case -2010:
        result = @"FailureMonitorConnectionLost";
        break;
      case -2009:
        result = @"FailureCopyDeviceListFailed";
        break;
      case -2008:
        result = @"FailureNRUUIDIsUnknown";
        break;
      case -2007:
        result = @"FailureAsyncBadXPCResponse";
        break;
      case -2006:
        result = @"FailureResolveNoLink";
        break;
      case -2005:
        result = @"FailureInvalidInput";
        break;
      case -2004:
        result = @"FailureLinkStatus";
        break;
      case -2003:
        result = @"FailureInvalidType";
        break;
      case -2002:
        result = @"FailureMissingEntitlement";
        break;
      case -2001:
        result = @"FailureUnknown";
        break;
      case -2000:
        result = @"AsyncInProgress";
        break;
      default:
        if (a1 == -3001)
        {
          result = @"FailureInvalidState";
        }

        else
        {
          if (a1)
          {
            return [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%lld)", a1];
          }

          result = @"Success";
        }

        break;
    }
  }

  return result;
}

id nrCopyLogObj_2646()
{
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  v1 = nrCopyLogObj_sNRLogObj_2653;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_2655()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_2653;
  nrCopyLogObj_sNRLogObj_2653 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

char *nrXPCSendPingCopyResponse()
{
  v78 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v57 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v59 = v57;
      v60 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);

      if (!v60)
      {
        goto LABEL_80;
      }
    }

    v61 = nrCopyLogObj_2646();
    _NRLogWithArgs(v61, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v62, v63, v64, v65, v66, "");

LABEL_80:
    v67 = _os_log_pack_size();
    MEMORY[0x28223BE20](v67, v68);
    v69 = *__error();
    v70 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v70, "nr_xpc_dictionary_create");
    v71 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v71);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 1uLL);
  v2 = nrXPCSendSyncInner("nrXPCSendPingCopyResponse", v1);
  v3 = v2;
  if (!v2)
  {
    v58 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v72 = v58;
      v73 = os_log_type_enabled(v58, OS_LOG_TYPE_FAULT);

      if (!v73)
      {
        goto LABEL_35;
      }
    }

    v29 = nrCopyLogObj_2646();
    v22 = v29;
    v23 = "received nil response";
    goto LABEL_33;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v16 = xpc_dictionary_get_value(v3, "Result");
    v22 = v16;
    if (v16)
    {
      if (MEMORY[0x25F8746E0](v16) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v22);
        if (!value)
        {

          string = xpc_dictionary_get_string(v3, "PingMessage");
          if (string)
          {
            string = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
          }

          goto LABEL_36;
        }

        v33 = value;
        if (!(value >> 31))
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            v34 = nrCopyLogObj_2646();
            _NRLogWithArgs(v34, 17, "received failure result code: [%d] %s", v35, v36, v37, v38, v39, v33);
          }

          goto LABEL_34;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        v40 = nrCopyLogObj_sNRLogObj_2653;
        if (!v33)
        {
          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v49 = v40;
            v50 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);

            if (!v50)
            {
              goto LABEL_34;
            }
          }

          v51 = nrCopyLogObj_2646();
          StringFromNRXPCRes = createStringFromNRXPCRes(v33);
          _NRLogWithArgs(v51, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v52, v53, v54, v55, v56, "");

          goto LABEL_34;
        }

        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v41 = v40;
          v42 = os_log_type_enabled(v40, OS_LOG_TYPE_FAULT);

          if (!v42)
          {
            goto LABEL_34;
          }
        }

        v43 = nrCopyLogObj_2646();
        v75 = createStringFromNRXPCRes(v33);
        _NRLogWithArgs(v43, 17, "received internal failure result code: [%lld] %@", v44, v45, v46, v47, v48, v33);

        goto LABEL_34;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v23 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v23 = "received response without result code";
    }

    v29 = nrCopyLogObj_sNRLogObj_2653;
LABEL_33:
    _NRLogWithArgs(v29, 17, v23, v17, v18, v19, v20, v21, v76);
LABEL_34:

    goto LABEL_35;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    string = MEMORY[0x25F874580](v3);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v10, v11, v12, v13, v14, string);
    }

    goto LABEL_10;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v5, v6, v7, v8, v9, v76);
    }

    goto LABEL_35;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v5, v6, v7, v8, v9, "");
    }

    goto LABEL_35;
  }

  if (v3 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_35;
    }

    v29 = nrCopyLogObj_2646();
    v22 = v29;
    v23 = "received XPC_ERROR_TERMINATION_IMMINENT";
    goto LABEL_33;
  }

  string = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v24, v25, v26, v27, v28, string);
  }

LABEL_10:
  if (string)
  {
    free(string);
LABEL_35:
    string = 0;
  }

LABEL_36:

  v30 = *MEMORY[0x277D85DE8];
  return string;
}

xpc_object_t nrXPCSendSyncInner(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = nrXPCCopyConnection();
  v4 = v3;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_4;
  }

  v5 = xpc_connection_send_message_with_reply_sync(v3, v2);
  v6 = MEMORY[0x277D863F0];
  if (v5 == MEMORY[0x277D863F0])
  {
    v9 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v10 = v9;
      v11 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (!v11)
      {
        goto LABEL_10;
      }
    }

    v12 = nrCopyLogObj_2646();
    _NRLogWithArgs(v12, 16, "%s%.30s:%-4d %s received XPC_ERROR_CONNECTION_INTERRUPTED, retrying (%u)", v13, v14, v15, v16, v17, "");

LABEL_10:
    v7 = xpc_connection_send_message_with_reply_sync(v4, v2);

    if (v7 != v6)
    {
      goto LABEL_4;
    }

    v18 = nrCopyLogObj_2646();
    v19 = v18;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v20 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

      if (!v20)
      {
        goto LABEL_15;
      }
    }

    v21 = nrCopyLogObj_2646();
    _NRLogWithArgs(v21, 16, "%s%.30s:%-4d %s received XPC_ERROR_CONNECTION_INTERRUPTED, retrying (%u)", v22, v23, v24, v25, v26, "");

LABEL_15:
    v7 = xpc_connection_send_message_with_reply_sync(v4, v2);

    if (v7 != v6)
    {
      goto LABEL_4;
    }

    v27 = nrCopyLogObj_2646();
    v28 = v27;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v29 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

      if (!v29)
      {
        goto LABEL_20;
      }
    }

    v30 = nrCopyLogObj_2646();
    _NRLogWithArgs(v30, 16, "%s%.30s:%-4d %s received XPC_ERROR_CONNECTION_INTERRUPTED, retrying (%u)", v31, v32, v33, v34, v35, "");

LABEL_20:
    v7 = xpc_connection_send_message_with_reply_sync(v4, v2);

    if (v7 != v6)
    {
      goto LABEL_4;
    }

    v36 = nrCopyLogObj_2646();
    v37 = v36;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v38 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);

      if (!v38)
      {
        goto LABEL_25;
      }
    }

    v39 = nrCopyLogObj_2646();
    _NRLogWithArgs(v39, 16, "%s%.30s:%-4d %s received XPC_ERROR_CONNECTION_INTERRUPTED, retrying (%u)", v40, v41, v42, v43, v44, "");

LABEL_25:
    v7 = xpc_connection_send_message_with_reply_sync(v4, v2);

    if (v7 != v6)
    {
      goto LABEL_4;
    }

    v45 = nrCopyLogObj_2646();
    v46 = v45;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v47 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);

      if (!v47)
      {
LABEL_30:
        v7 = MEMORY[0x277D863F0];
        goto LABEL_4;
      }
    }

    v48 = nrCopyLogObj_2646();
    _NRLogWithArgs(v48, 16, "%s%.30s:%-4d %s received XPC_ERROR_CONNECTION_INTERRUPTED, retrying (%u)", v49, v50, v51, v52, v53, "");

    goto LABEL_30;
  }

  v7 = v5;
LABEL_4:

  return v7;
}

id nrXPCCopyConnection()
{
  if (nrXPCCopyQueue_onceToken != -1)
  {
    dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
  }

  v0 = nrXPCCopyQueue_nrXPCQueue;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2664;
  v11 = __Block_byref_object_dispose__2665;
  v12 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __nrXPCCopyConnection_block_invoke;
  v4[3] = &unk_27996B8C0;
  v5 = v0;
  v6 = &v7;
  v1 = v0;
  dispatch_sync(v1, v4);
  v2 = v8[5];

  _Block_object_dispose(&v7, 8);
  return v2;
}

uint64_t __Block_byref_object_copy__2664(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __nrXPCCopyConnection_block_invoke(uint64_t a1)
{
  v2 = nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection;
  if (nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection)
  {
    goto LABEL_2;
  }

  mach_service = xpc_connection_create_mach_service("com.apple.terminusd", *(a1 + 32), 2uLL);
  v4 = nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection;
  nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection = mach_service;

  if (nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection)
  {
    v5 = MEMORY[0x25F8746E0]();
    v6 = nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection;
    if (v5 == MEMORY[0x277D86450])
    {
      v7 = nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection;
      v8 = nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __nrXPCCopyConnection_block_invoke_2;
      handler[3] = &unk_27996B898;
      v11 = v7;
      v9 = v7;
      xpc_connection_set_event_handler(v8, handler);
      xpc_connection_activate(nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection);

      v2 = nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection;
      if (!nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection)
      {
        return;
      }

      goto LABEL_2;
    }

    if (nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection)
    {
      nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection = 0;

      v2 = nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection;
      if (nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection)
      {
LABEL_2:
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
      }
    }
  }
}

uint64_t __nrXPCCopyConnection_block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = MEMORY[0x25F8746E0]();
  if (v13 != MEMORY[0x277D863F0])
  {
    v4 = v3 != MEMORY[0x277D86480] || nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection == 0;
    if (!v4 && *(a1 + 32) == nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection)
    {
      xpc_connection_cancel(nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection);
      v11 = nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection;
      nrXPCEntitlementIdentityProxy_block_invoke_sNRXPCConnection = 0;
    }

    else if (v3 == MEMORY[0x277D86468])
    {
      v10 = MEMORY[0x25F874580](v13);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "unexpected message from %s: %s", v5, v6, v7, v8, v9, "com.apple.terminusd");
      }

      if (v10)
      {
        free(v10);
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t nrXPCTestNRLinkDirectorMessage()
{
  v78 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v57 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v59 = v57;
      v60 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);

      if (!v60)
      {
        goto LABEL_79;
      }
    }

    v61 = nrCopyLogObj_2646();
    _NRLogWithArgs(v61, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v62, v63, v64, v65, v66, "");

LABEL_79:
    v67 = _os_log_pack_size();
    MEMORY[0x28223BE20](v67, v68);
    v69 = *__error();
    v70 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v70, "nr_xpc_dictionary_create");
    v71 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v71);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x22uLL);
  v2 = nrXPCSendSyncInner("nrXPCTestNRLinkDirectorMessage", v1);
  v3 = v2;
  if (!v2)
  {
    v58 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v72 = v58;
      v73 = os_log_type_enabled(v58, OS_LOG_TYPE_FAULT);

      if (!v73)
      {
        goto LABEL_35;
      }
    }

    v29 = nrCopyLogObj_2646();
    v22 = v29;
    v23 = "received nil response";
    goto LABEL_33;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v16 = xpc_dictionary_get_value(v3, "Result");
    v22 = v16;
    if (v16)
    {
      if (MEMORY[0x25F8746E0](v16) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v22);
        if (!value)
        {

          v15 = xpc_dictionary_get_BOOL(v3, "TestNRLinkDirectorMessage");
          goto LABEL_36;
        }

        v33 = value;
        if (!(value >> 31))
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            v34 = nrCopyLogObj_2646();
            _NRLogWithArgs(v34, 17, "received failure result code: [%d] %s", v35, v36, v37, v38, v39, v33);
          }

          goto LABEL_34;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        v40 = nrCopyLogObj_sNRLogObj_2653;
        if (!v33)
        {
          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v49 = v40;
            v50 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);

            if (!v50)
            {
              goto LABEL_34;
            }
          }

          v51 = nrCopyLogObj_2646();
          StringFromNRXPCRes = createStringFromNRXPCRes(v33);
          _NRLogWithArgs(v51, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v52, v53, v54, v55, v56, "");

          goto LABEL_34;
        }

        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v41 = v40;
          v42 = os_log_type_enabled(v40, OS_LOG_TYPE_FAULT);

          if (!v42)
          {
            goto LABEL_34;
          }
        }

        v43 = nrCopyLogObj_2646();
        v75 = createStringFromNRXPCRes(v33);
        _NRLogWithArgs(v43, 17, "received internal failure result code: [%lld] %@", v44, v45, v46, v47, v48, v33);

        goto LABEL_34;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v23 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v23 = "received response without result code";
    }

    v29 = nrCopyLogObj_sNRLogObj_2653;
LABEL_33:
    _NRLogWithArgs(v29, 17, v23, v17, v18, v19, v20, v21, v76);
LABEL_34:

    goto LABEL_35;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    v15 = MEMORY[0x25F874580](v3);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v10, v11, v12, v13, v14, v15);
    }

    goto LABEL_10;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v5, v6, v7, v8, v9, v76);
    }

    goto LABEL_35;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v5, v6, v7, v8, v9, "");
    }

    goto LABEL_35;
  }

  if (v3 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_35;
    }

    v29 = nrCopyLogObj_2646();
    v22 = v29;
    v23 = "received XPC_ERROR_TERMINATION_IMMINENT";
    goto LABEL_33;
  }

  v15 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v24, v25, v26, v27, v28, v15);
  }

LABEL_10:
  if (v15)
  {
    free(v15);
LABEL_35:
    v15 = 0;
  }

LABEL_36:

  v30 = *MEMORY[0x277D85DE8];
  return v15;
}

BOOL nrXPCCompanionLinkDefault()
{
  v85 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v65 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v67 = v65;
      v68 = os_log_type_enabled(v65, OS_LOG_TYPE_ERROR);

      if (!v68)
      {
        goto LABEL_83;
      }
    }

    v69 = nrCopyLogObj_2646();
    _NRLogWithArgs(v69, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v70, v71, v72, v73, v74, "");

LABEL_83:
    v75 = _os_log_pack_size();
    MEMORY[0x28223BE20](v75, v76);
    v77 = *__error();
    v78 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v78, "nr_xpc_dictionary_create");
    v79 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v79);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x19uLL);
  v2 = nrXPCSendSyncInner("nrXPCCompanionLinkDefault", v1);
  v3 = v2;
  if (!v2)
  {
    v66 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v80 = v66;
      v16 = os_log_type_enabled(v66, OS_LOG_TYPE_FAULT);

      if (!v16)
      {
        goto LABEL_63;
      }
    }

    v39 = nrCopyLogObj_2646();
    v45 = v39;
    v46 = "received nil response";
    goto LABEL_61;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v17 = xpc_dictionary_get_value(v3, "Result");
    v23 = v17;
    if (v17)
    {
      if (MEMORY[0x25F8746E0](v17) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v23);
        if (!value)
        {
          v16 = 1;
          goto LABEL_36;
        }

        v32 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v49 = nrCopyLogObj_sNRLogObj_2653;
          if (!v32)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v57 = v49;
              v58 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);

              if (!v58)
              {
                goto LABEL_35;
              }
            }

            v59 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v32);
            _NRLogWithArgs(v59, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v60, v61, v62, v63, v64, "");

            goto LABEL_35;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v50 = v49;
            v51 = os_log_type_enabled(v49, OS_LOG_TYPE_FAULT);

            if (!v51)
            {
              goto LABEL_35;
            }
          }

          v33 = nrCopyLogObj_2646();
          v82 = createStringFromNRXPCRes(v32);
          _NRLogWithArgs(v33, 17, "received internal failure result code: [%lld] %@", v52, v53, v54, v55, v56, v32);
        }

        else
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_35;
          }

          v33 = nrCopyLogObj_2646();
          _NRLogWithArgs(v33, 17, "received failure result code: [%d] %s", v34, v35, v36, v37, v38, v32);
        }

        goto LABEL_35;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v24 = nrCopyLogObj_sNRLogObj_2653;
      v25 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v24 = nrCopyLogObj_sNRLogObj_2653;
      v25 = "received response without result code";
    }

    _NRLogWithArgs(v24, 17, v25, v18, v19, v20, v21, v22, v83);
LABEL_35:
    v16 = 0;
LABEL_36:

    goto LABEL_63;
  }

  if (v4 == MEMORY[0x277D86480])
  {
    if (v3 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v5, v6, v7, v8, v9, v83);
        v16 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v3 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v5, v6, v7, v8, v9, "");
        v16 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v3 != MEMORY[0x277D86420])
    {
      v15 = MEMORY[0x25F874580](v3);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v26, v27, v28, v29, v30, v15);
      }

      if (v15)
      {
        goto LABEL_11;
      }

LABEL_62:
      v16 = 0;
      goto LABEL_63;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    v39 = nrCopyLogObj_2646();
    v45 = v39;
    v46 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_61:
    _NRLogWithArgs(v39, 17, v46, v40, v41, v42, v43, v44, v83);

    v16 = 0;
    goto LABEL_63;
  }

  v15 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v10, v11, v12, v13, v14, v15);
  }

  if (!v15)
  {
    goto LABEL_62;
  }

LABEL_11:
  free(v15);
  v16 = 0;
LABEL_63:

  v47 = *MEMORY[0x277D85DE8];
  return v16;
}

BOOL nrXPCCompanionLinkEnable()
{
  v85 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v65 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v67 = v65;
      v68 = os_log_type_enabled(v65, OS_LOG_TYPE_ERROR);

      if (!v68)
      {
        goto LABEL_83;
      }
    }

    v69 = nrCopyLogObj_2646();
    _NRLogWithArgs(v69, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v70, v71, v72, v73, v74, "");

LABEL_83:
    v75 = _os_log_pack_size();
    MEMORY[0x28223BE20](v75, v76);
    v77 = *__error();
    v78 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v78, "nr_xpc_dictionary_create");
    v79 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v79);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 2uLL);
  v2 = nrXPCSendSyncInner("nrXPCCompanionLinkEnable", v1);
  v3 = v2;
  if (!v2)
  {
    v66 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v80 = v66;
      v16 = os_log_type_enabled(v66, OS_LOG_TYPE_FAULT);

      if (!v16)
      {
        goto LABEL_63;
      }
    }

    v39 = nrCopyLogObj_2646();
    v45 = v39;
    v46 = "received nil response";
    goto LABEL_61;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v17 = xpc_dictionary_get_value(v3, "Result");
    v23 = v17;
    if (v17)
    {
      if (MEMORY[0x25F8746E0](v17) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v23);
        if (!value)
        {
          v16 = 1;
          goto LABEL_36;
        }

        v32 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v49 = nrCopyLogObj_sNRLogObj_2653;
          if (!v32)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v57 = v49;
              v58 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);

              if (!v58)
              {
                goto LABEL_35;
              }
            }

            v59 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v32);
            _NRLogWithArgs(v59, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v60, v61, v62, v63, v64, "");

            goto LABEL_35;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v50 = v49;
            v51 = os_log_type_enabled(v49, OS_LOG_TYPE_FAULT);

            if (!v51)
            {
              goto LABEL_35;
            }
          }

          v33 = nrCopyLogObj_2646();
          v82 = createStringFromNRXPCRes(v32);
          _NRLogWithArgs(v33, 17, "received internal failure result code: [%lld] %@", v52, v53, v54, v55, v56, v32);
        }

        else
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_35;
          }

          v33 = nrCopyLogObj_2646();
          _NRLogWithArgs(v33, 17, "received failure result code: [%d] %s", v34, v35, v36, v37, v38, v32);
        }

        goto LABEL_35;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v24 = nrCopyLogObj_sNRLogObj_2653;
      v25 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v24 = nrCopyLogObj_sNRLogObj_2653;
      v25 = "received response without result code";
    }

    _NRLogWithArgs(v24, 17, v25, v18, v19, v20, v21, v22, v83);
LABEL_35:
    v16 = 0;
LABEL_36:

    goto LABEL_63;
  }

  if (v4 == MEMORY[0x277D86480])
  {
    if (v3 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v5, v6, v7, v8, v9, v83);
        v16 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v3 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v5, v6, v7, v8, v9, "");
        v16 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v3 != MEMORY[0x277D86420])
    {
      v15 = MEMORY[0x25F874580](v3);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v26, v27, v28, v29, v30, v15);
      }

      if (v15)
      {
        goto LABEL_11;
      }

LABEL_62:
      v16 = 0;
      goto LABEL_63;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    v39 = nrCopyLogObj_2646();
    v45 = v39;
    v46 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_61:
    _NRLogWithArgs(v39, 17, v46, v40, v41, v42, v43, v44, v83);

    v16 = 0;
    goto LABEL_63;
  }

  v15 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v10, v11, v12, v13, v14, v15);
  }

  if (!v15)
  {
    goto LABEL_62;
  }

LABEL_11:
  free(v15);
  v16 = 0;
LABEL_63:

  v47 = *MEMORY[0x277D85DE8];
  return v16;
}

BOOL nrXPCCompanionLinkDisable()
{
  v85 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v65 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v67 = v65;
      v68 = os_log_type_enabled(v65, OS_LOG_TYPE_ERROR);

      if (!v68)
      {
        goto LABEL_83;
      }
    }

    v69 = nrCopyLogObj_2646();
    _NRLogWithArgs(v69, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v70, v71, v72, v73, v74, "");

LABEL_83:
    v75 = _os_log_pack_size();
    MEMORY[0x28223BE20](v75, v76);
    v77 = *__error();
    v78 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v78, "nr_xpc_dictionary_create");
    v79 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v79);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 3uLL);
  v2 = nrXPCSendSyncInner("nrXPCCompanionLinkDisable", v1);
  v3 = v2;
  if (!v2)
  {
    v66 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v80 = v66;
      v16 = os_log_type_enabled(v66, OS_LOG_TYPE_FAULT);

      if (!v16)
      {
        goto LABEL_63;
      }
    }

    v39 = nrCopyLogObj_2646();
    v45 = v39;
    v46 = "received nil response";
    goto LABEL_61;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v17 = xpc_dictionary_get_value(v3, "Result");
    v23 = v17;
    if (v17)
    {
      if (MEMORY[0x25F8746E0](v17) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v23);
        if (!value)
        {
          v16 = 1;
          goto LABEL_36;
        }

        v32 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v49 = nrCopyLogObj_sNRLogObj_2653;
          if (!v32)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v57 = v49;
              v58 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);

              if (!v58)
              {
                goto LABEL_35;
              }
            }

            v59 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v32);
            _NRLogWithArgs(v59, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v60, v61, v62, v63, v64, "");

            goto LABEL_35;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v50 = v49;
            v51 = os_log_type_enabled(v49, OS_LOG_TYPE_FAULT);

            if (!v51)
            {
              goto LABEL_35;
            }
          }

          v33 = nrCopyLogObj_2646();
          v82 = createStringFromNRXPCRes(v32);
          _NRLogWithArgs(v33, 17, "received internal failure result code: [%lld] %@", v52, v53, v54, v55, v56, v32);
        }

        else
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_35;
          }

          v33 = nrCopyLogObj_2646();
          _NRLogWithArgs(v33, 17, "received failure result code: [%d] %s", v34, v35, v36, v37, v38, v32);
        }

        goto LABEL_35;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v24 = nrCopyLogObj_sNRLogObj_2653;
      v25 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v24 = nrCopyLogObj_sNRLogObj_2653;
      v25 = "received response without result code";
    }

    _NRLogWithArgs(v24, 17, v25, v18, v19, v20, v21, v22, v83);
LABEL_35:
    v16 = 0;
LABEL_36:

    goto LABEL_63;
  }

  if (v4 == MEMORY[0x277D86480])
  {
    if (v3 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v5, v6, v7, v8, v9, v83);
        v16 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v3 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v5, v6, v7, v8, v9, "");
        v16 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v3 != MEMORY[0x277D86420])
    {
      v15 = MEMORY[0x25F874580](v3);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v26, v27, v28, v29, v30, v15);
      }

      if (v15)
      {
        goto LABEL_11;
      }

LABEL_62:
      v16 = 0;
      goto LABEL_63;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    v39 = nrCopyLogObj_2646();
    v45 = v39;
    v46 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_61:
    _NRLogWithArgs(v39, 17, v46, v40, v41, v42, v43, v44, v83);

    v16 = 0;
    goto LABEL_63;
  }

  v15 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v10, v11, v12, v13, v14, v15);
  }

  if (!v15)
  {
    goto LABEL_62;
  }

LABEL_11:
  free(v15);
  v16 = 0;
LABEL_63:

  v47 = *MEMORY[0x277D85DE8];
  return v16;
}

BOOL nrXPCCompanionEnableBluetoothPacketParser(BOOL a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v67 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v69 = v67;
      v70 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);

      if (!v70)
      {
        goto LABEL_83;
      }
    }

    v71 = nrCopyLogObj_2646();
    _NRLogWithArgs(v71, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v72, v73, v74, v75, v76, "");

LABEL_83:
    v77 = _os_log_pack_size();
    MEMORY[0x28223BE20](v77, v78);
    v79 = *__error();
    v80 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v80, "nr_xpc_dictionary_create");
    v81 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v81);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x2AuLL);
  xpc_dictionary_set_BOOL(v3, "EnableBluetoothPacketParser", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionEnableBluetoothPacketParser", v3);
  v5 = v4;
  if (!v4)
  {
    v68 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v82 = v68;
      v18 = os_log_type_enabled(v68, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        goto LABEL_63;
      }
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received nil response";
    goto LABEL_61;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v19 = xpc_dictionary_get_value(v5, "Result");
    v25 = v19;
    if (v19)
    {
      if (MEMORY[0x25F8746E0](v19) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v25);
        if (!value)
        {
          v18 = 1;
          goto LABEL_36;
        }

        v34 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v51 = nrCopyLogObj_sNRLogObj_2653;
          if (!v34)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v59 = v51;
              v60 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);

              if (!v60)
              {
                goto LABEL_35;
              }
            }

            v61 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v34);
            _NRLogWithArgs(v61, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v62, v63, v64, v65, v66, "");

            goto LABEL_35;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v52 = v51;
            v53 = os_log_type_enabled(v51, OS_LOG_TYPE_FAULT);

            if (!v53)
            {
              goto LABEL_35;
            }
          }

          v35 = nrCopyLogObj_2646();
          v84 = createStringFromNRXPCRes(v34);
          _NRLogWithArgs(v35, 17, "received internal failure result code: [%lld] %@", v54, v55, v56, v57, v58, v34);
        }

        else
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_35;
          }

          v35 = nrCopyLogObj_2646();
          _NRLogWithArgs(v35, 17, "received failure result code: [%d] %s", v36, v37, v38, v39, v40, v34);
        }

        goto LABEL_35;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received response without result code";
    }

    _NRLogWithArgs(v26, 17, v27, v20, v21, v22, v23, v24, v85);
LABEL_35:
    v18 = 0;
LABEL_36:

    goto LABEL_63;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v7, v8, v9, v10, v11, v85);
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v7, v8, v9, v10, v11, "");
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v17 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v28, v29, v30, v31, v32, v17);
      }

      if (v17)
      {
        goto LABEL_11;
      }

LABEL_62:
      v18 = 0;
      goto LABEL_63;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_61:
    _NRLogWithArgs(v41, 17, v48, v42, v43, v44, v45, v46, v85);

    v18 = 0;
    goto LABEL_63;
  }

  v17 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v12, v13, v14, v15, v16, v17);
  }

  if (!v17)
  {
    goto LABEL_62;
  }

LABEL_11:
  free(v17);
  v18 = 0;
LABEL_63:

  v49 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t nrXPCCompanionLinkIsEnabled()
{
  v78 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v57 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v59 = v57;
      v60 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);

      if (!v60)
      {
        goto LABEL_79;
      }
    }

    v61 = nrCopyLogObj_2646();
    _NRLogWithArgs(v61, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v62, v63, v64, v65, v66, "");

LABEL_79:
    v67 = _os_log_pack_size();
    MEMORY[0x28223BE20](v67, v68);
    v69 = *__error();
    v70 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v70, "nr_xpc_dictionary_create");
    v71 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v71);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0xCuLL);
  v2 = nrXPCSendSyncInner("nrXPCCompanionLinkIsEnabled", v1);
  v3 = v2;
  if (!v2)
  {
    v58 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v72 = v58;
      v73 = os_log_type_enabled(v58, OS_LOG_TYPE_FAULT);

      if (!v73)
      {
        goto LABEL_35;
      }
    }

    v29 = nrCopyLogObj_2646();
    v22 = v29;
    v23 = "received nil response";
    goto LABEL_33;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v16 = xpc_dictionary_get_value(v3, "Result");
    v22 = v16;
    if (v16)
    {
      if (MEMORY[0x25F8746E0](v16) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v22);
        if (!value)
        {

          v15 = xpc_dictionary_get_BOOL(v3, "CompanionLinkIsEnabled");
          goto LABEL_36;
        }

        v33 = value;
        if (!(value >> 31))
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            v34 = nrCopyLogObj_2646();
            _NRLogWithArgs(v34, 17, "received failure result code: [%d] %s", v35, v36, v37, v38, v39, v33);
          }

          goto LABEL_34;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        v40 = nrCopyLogObj_sNRLogObj_2653;
        if (!v33)
        {
          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v49 = v40;
            v50 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);

            if (!v50)
            {
              goto LABEL_34;
            }
          }

          v51 = nrCopyLogObj_2646();
          StringFromNRXPCRes = createStringFromNRXPCRes(v33);
          _NRLogWithArgs(v51, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v52, v53, v54, v55, v56, "");

          goto LABEL_34;
        }

        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v41 = v40;
          v42 = os_log_type_enabled(v40, OS_LOG_TYPE_FAULT);

          if (!v42)
          {
            goto LABEL_34;
          }
        }

        v43 = nrCopyLogObj_2646();
        v75 = createStringFromNRXPCRes(v33);
        _NRLogWithArgs(v43, 17, "received internal failure result code: [%lld] %@", v44, v45, v46, v47, v48, v33);

        goto LABEL_34;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v23 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v23 = "received response without result code";
    }

    v29 = nrCopyLogObj_sNRLogObj_2653;
LABEL_33:
    _NRLogWithArgs(v29, 17, v23, v17, v18, v19, v20, v21, v76);
LABEL_34:

    goto LABEL_35;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    v15 = MEMORY[0x25F874580](v3);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v10, v11, v12, v13, v14, v15);
    }

    goto LABEL_10;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v5, v6, v7, v8, v9, v76);
    }

    goto LABEL_35;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v5, v6, v7, v8, v9, "");
    }

    goto LABEL_35;
  }

  if (v3 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_35;
    }

    v29 = nrCopyLogObj_2646();
    v22 = v29;
    v23 = "received XPC_ERROR_TERMINATION_IMMINENT";
    goto LABEL_33;
  }

  v15 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v24, v25, v26, v27, v28, v15);
  }

LABEL_10:
  if (v15)
  {
    free(v15);
LABEL_35:
    v15 = 0;
  }

LABEL_36:

  v30 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t nrXPCSupportsRestrictedPorts(void *a1)
{
  v91 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v60 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v63 = v60;
      v64 = os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);

      if (!v64)
      {
        goto LABEL_83;
      }
    }

    v65 = nrCopyLogObj_2646();
    _NRLogWithArgs(v65, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v66, v67, v68, v69, v70, "");

LABEL_83:
    v71 = _os_log_pack_size();
    MEMORY[0x28223BE20](v71, v72);
    v73 = *__error();
    v74 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v74, "nr_xpc_dictionary_create");
    v75 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v75);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x23uLL);
  v4 = v3;
  if (v1)
  {
    *uuid = 0;
    v90 = 0;
    [v1 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v4, "DeviceIdentifier", uuid);
    goto LABEL_4;
  }

  v61 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v76 = v61;
    v77 = os_log_type_enabled(v61, OS_LOG_TYPE_FAULT);

    if (!v77)
    {
      goto LABEL_4;
    }
  }

  v78 = nrCopyLogObj_2646();
  _NRLogWithArgs(v78, 17, "%s called with null uuid", v79, v80, v81, v82, v83, "nr_xpc_dictionary_set_nsuuid");

LABEL_4:
  v5 = nrXPCSendSyncInner("nrXPCSupportsRestrictedPorts", v4);
  v6 = v5;
  if (!v5)
  {
    v62 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v84 = v62;
      v85 = os_log_type_enabled(v62, OS_LOG_TYPE_FAULT);

      if (!v85)
      {
        goto LABEL_37;
      }
    }

    v32 = nrCopyLogObj_2646();
    v25 = v32;
    v26 = "received nil response";
    goto LABEL_35;
  }

  v7 = MEMORY[0x25F8746E0](v5);
  if (v7 == MEMORY[0x277D86468])
  {
    v19 = xpc_dictionary_get_value(v6, "Result");
    v25 = v19;
    if (v19)
    {
      if (MEMORY[0x25F8746E0](v19) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v25);
        if (!value)
        {

          v18 = xpc_dictionary_get_BOOL(v6, "SupportsRestrictedPorts");
          goto LABEL_38;
        }

        v36 = value;
        if (!(value >> 31))
        {
          if (strerror_r(value, uuid, 0x80uLL))
          {
            uuid[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            v37 = nrCopyLogObj_2646();
            _NRLogWithArgs(v37, 17, "received failure result code: [%d] %s", v38, v39, v40, v41, v42, v36);
          }

          goto LABEL_36;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        v43 = nrCopyLogObj_sNRLogObj_2653;
        if (!v36)
        {
          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v52 = v43;
            v53 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);

            if (!v53)
            {
              goto LABEL_36;
            }
          }

          v54 = nrCopyLogObj_2646();
          StringFromNRXPCRes = createStringFromNRXPCRes(v36);
          _NRLogWithArgs(v54, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v55, v56, v57, v58, v59, "");

          goto LABEL_36;
        }

        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v44 = v43;
          v45 = os_log_type_enabled(v43, OS_LOG_TYPE_FAULT);

          if (!v45)
          {
            goto LABEL_36;
          }
        }

        v46 = nrCopyLogObj_2646();
        v87 = createStringFromNRXPCRes(v36);
        _NRLogWithArgs(v46, 17, "received internal failure result code: [%lld] %@", v47, v48, v49, v50, v51, v36);

        goto LABEL_36;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_36;
      }

      v26 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_36;
      }

      v26 = "received response without result code";
    }

    v32 = nrCopyLogObj_sNRLogObj_2653;
LABEL_35:
    _NRLogWithArgs(v32, 17, v26, v20, v21, v22, v23, v24, v88);
LABEL_36:

    goto LABEL_37;
  }

  if (v7 != MEMORY[0x277D86480])
  {
    v18 = MEMORY[0x25F874580](v6);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v13, v14, v15, v16, v17, v18);
    }

    goto LABEL_12;
  }

  if (v6 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v8, v9, v10, v11, v12, v88);
    }

    goto LABEL_37;
  }

  if (v6 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v8, v9, v10, v11, v12, "");
    }

    goto LABEL_37;
  }

  if (v6 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_37;
    }

    v32 = nrCopyLogObj_2646();
    v25 = v32;
    v26 = "received XPC_ERROR_TERMINATION_IMMINENT";
    goto LABEL_35;
  }

  v18 = MEMORY[0x25F874580](v6);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v27, v28, v29, v30, v31, v18);
  }

LABEL_12:
  if (v18)
  {
    free(v18);
LABEL_37:
    v18 = 0;
  }

LABEL_38:

  v33 = *MEMORY[0x277D85DE8];
  return v18;
}

void nrXPCRefreshCompanionProxyAgent()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v7 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v8 = v7;
      v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

      if (!v9)
      {
        goto LABEL_12;
      }
    }

    v10 = nrCopyLogObj_2646();
    _NRLogWithArgs(v10, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v11, v12, v13, v14, v15, "");

LABEL_12:
    v16 = _os_log_pack_size();
    MEMORY[0x28223BE20](v16, v17);
    v18 = *__error();
    v19 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v19, "nr_xpc_dictionary_create");
    v20 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v20);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x24uLL);
  if (nrXPCCopyQueue_onceToken != -1)
  {
    dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
  }

  v2 = nrXPCCopyQueue_nrXPCQueue;
  v3 = v1;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __nrXPCSendAsyncOnlyResultCode_block_invoke;
  v21[3] = &unk_27996B8E8;
  v22 = &__block_literal_global_415;
  v4 = v21;
  v5 = nrXPCCopyConnection();
  if (v5)
  {
    nrXPCSendAsyncInnerRec("nrXPCSendAsyncOnlyResultCode", v5, v3, v2, v4, 1u);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __nrXPCSendAsyncInner_block_invoke;
    block[3] = &unk_27996B870;
    v24 = v4;
    dispatch_async(v2, block);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __nrXPCSendAsyncOnlyResultCode_block_invoke(uint64_t a1, void *a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v74 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v75 = v74;
      v76 = os_log_type_enabled(v74, OS_LOG_TYPE_FAULT);

      if (!v76)
      {
LABEL_108:
        v34 = *(*(a1 + 32) + 16);
        goto LABEL_59;
      }
    }

    v77 = nrCopyLogObj_2646();
    _NRLogWithArgs(v77, 17, "received nil response", v78, v79, v80, v81, v82, v83);

    goto LABEL_108;
  }

  v5 = MEMORY[0x25F8746E0](v3);
  v11 = MEMORY[0x277D86468];
  if (v5 == MEMORY[0x277D86468])
  {
    v20 = xpc_dictionary_get_value(v4, "Result");
    v19 = v20;
    if (!v20)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        v26 = nrCopyLogObj_sNRLogObj_2653;
        v27 = "received response without result code";
        goto LABEL_36;
      }

LABEL_37:
      if (v4 != MEMORY[0x277D863F0])
      {
        if (v4 != MEMORY[0x277D863F8])
        {
          if (v4 != MEMORY[0x277D86420])
          {
            if (MEMORY[0x25F8746E0](v4) == v11)
            {
              string = xpc_dictionary_get_string(v4, "ErrorDescription");
              xpc_dictionary_get_int64(v4, "Result");
              if (string)
              {
                v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
              }

              else
              {
                v33 = @"Received bad XPC response";
              }

              goto LABEL_42;
            }

LABEL_41:
            v33 = @"Received bad XPC response";
LABEL_42:
            (*(*(a1 + 32) + 16))();

LABEL_101:
            goto LABEL_102;
          }

LABEL_99:
          v47 = *(*(a1 + 32) + 16);
          goto LABEL_100;
        }

LABEL_98:
        v47 = *(*(a1 + 32) + 16);
        goto LABEL_100;
      }

      goto LABEL_97;
    }

    if (MEMORY[0x25F8746E0](v20) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        v26 = nrCopyLogObj_sNRLogObj_2653;
        v27 = "received invalid result type";
LABEL_36:
        _NRLogWithArgs(v26, 17, v27, v21, v22, v23, v24, v25, v83);
        goto LABEL_37;
      }

      goto LABEL_37;
    }

    value = xpc_int64_get_value(v19);
    if (!value)
    {

      (*(*(a1 + 32) + 16))();
      goto LABEL_102;
    }

    v36 = value;
    if (value >> 31)
    {
      if ((value | 2) == 0xFFFFF822)
      {
        v45 = nrCopyLogObj_2646();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v57 = v45;
          v58 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);

          if (!v58)
          {
            goto LABEL_91;
          }
        }

        v50 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v36);
        _NRLogWithArgs(v50, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v60, v61, v62, v63, v64, "");
      }

      else
      {
        v56 = nrCopyLogObj_2646();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v65 = v56;
          v66 = os_log_type_enabled(v56, OS_LOG_TYPE_FAULT);

          if (!v66)
          {
            goto LABEL_91;
          }
        }

        v50 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v36);
        _NRLogWithArgs(v50, 17, "received internal failure result code: [%lld] %@", v67, v68, v69, v70, v71, v36);
      }
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v37 = nrCopyLogObj_sNRLogObj_2653;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v48 = v37;
        v49 = os_log_type_enabled(v37, OS_LOG_TYPE_FAULT);

        if (!v49)
        {
          goto LABEL_91;
        }
      }

      v50 = nrCopyLogObj_2646();
      _NRLogWithArgs(v50, 17, "received failure result code: [%d] %s", v51, v52, v53, v54, v55, v36);
    }

LABEL_91:
    if (v4 != MEMORY[0x277D863F0])
    {
      if (v4 != MEMORY[0x277D863F8])
      {
        if (v4 != MEMORY[0x277D86420])
        {
          if (MEMORY[0x25F8746E0](v4) == v11)
          {
            v72 = xpc_dictionary_get_string(v4, "ErrorDescription");
            xpc_dictionary_get_int64(v4, "Result");
            if (v72)
            {
              v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v72];
            }

            else
            {
              v33 = @"Received bad XPC response";
            }

            goto LABEL_42;
          }

          goto LABEL_41;
        }

        goto LABEL_99;
      }

      goto LABEL_98;
    }

LABEL_97:
    v47 = *(*(a1 + 32) + 16);
LABEL_100:
    v47();
    goto LABEL_101;
  }

  v12 = MEMORY[0x277D863F0];
  if (v5 != MEMORY[0x277D86480])
  {
    v18 = MEMORY[0x25F874580](v4);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v13, v14, v15, v16, v17, v18);
    }

LABEL_9:
    if (v18)
    {
      free(v18);
    }

    goto LABEL_11;
  }

  if (v4 != MEMORY[0x277D863F0])
  {
    if (v4 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v6, v7, v8, v9, v10, "");
      }
    }

    else
    {
      if (v4 != MEMORY[0x277D86420])
      {
        v18 = MEMORY[0x25F874580](v4);
        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v28, v29, v30, v31, v32, v18);
        }

        goto LABEL_9;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        v39 = nrCopyLogObj_2646();
        _NRLogWithArgs(v39, 17, "received XPC_ERROR_TERMINATION_IMMINENT", v40, v41, v42, v43, v44, v83);
      }
    }

LABEL_11:
    if (v4 != v12)
    {
      if (v4 == MEMORY[0x277D863F8])
      {
        v34 = *(*(a1 + 32) + 16);
      }

      else
      {
        if (v4 != MEMORY[0x277D86420])
        {
          if (MEMORY[0x25F8746E0](v4) == v11)
          {
            v38 = xpc_dictionary_get_string(v4, "ErrorDescription");
            xpc_dictionary_get_int64(v4, "Result");
            if (v38)
            {
              v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v38];
            }

            else
            {
              v19 = @"Received bad XPC response";
            }
          }

          else
          {
            v19 = @"Received bad XPC response";
          }

          v47 = *(*(a1 + 32) + 16);
          goto LABEL_100;
        }

        v34 = *(*(a1 + 32) + 16);
      }

      goto LABEL_59;
    }

    goto LABEL_57;
  }

  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v6, v7, v8, v9, v10, v83);
  }

LABEL_57:
  v34 = *(*(a1 + 32) + 16);
LABEL_59:
  v34();
LABEL_102:

  v73 = *MEMORY[0x277D85DE8];
}

void nrXPCSendAsyncInnerRec(uint64_t a1, void *a2, void *a3, void *a4, void *a5, unsigned int a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = v14;
  if (a6 >= 6)
  {
    (*(v14 + 2))(v14, MEMORY[0x277D863F0]);
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __nrXPCSendAsyncInnerRec_block_invoke;
    v16[3] = &unk_27996B910;
    v20 = v14;
    v21 = a1;
    v22 = a6;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    xpc_connection_send_message_with_reply(v17, v18, v19, v16);
  }
}

uint64_t __nrXPCSendAsyncInnerRec_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 != MEMORY[0x277D863F0])
  {
    v3 = *(*(a1 + 56) + 16);

    return v3();
  }

  v6 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_8:
    v9 = nrCopyLogObj_2646();
    v21 = *(a1 + 64);
    v22 = *(a1 + 72);
    _NRLogWithArgs(v9, 16, "%s%.30s:%-4d %s received XPC_ERROR_CONNECTION_INTERRUPTED, retrying (%u)", v10, v11, v12, v13, v14, "");

    goto LABEL_9;
  }

  v7 = v6;
  v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

  if (v8)
  {
    goto LABEL_8;
  }

LABEL_9:
  v16 = *(a1 + 56);
  v15 = *(a1 + 64);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = (*(a1 + 72) + 1);

  return nrXPCSendAsyncInnerRec(v15, v17, v18, v19, v16, v20);
}

uint64_t __nrXPCRefreshCompanionProxyAgent_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || (v8 = os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT), v9 = v11, v8))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Refresh generation response %lld (%@)", v3, v4, v5, v6, v7, "");
    v9 = v11;
  }

  return MEMORY[0x2821F96F8](v8, v9);
}

char *nrXPCCompanionLinkCopyStatus()
{
  v78 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v57 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v59 = v57;
      v60 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);

      if (!v60)
      {
        goto LABEL_80;
      }
    }

    v61 = nrCopyLogObj_2646();
    _NRLogWithArgs(v61, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v62, v63, v64, v65, v66, "");

LABEL_80:
    v67 = _os_log_pack_size();
    MEMORY[0x28223BE20](v67, v68);
    v69 = *__error();
    v70 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v70, "nr_xpc_dictionary_create");
    v71 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v71);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 4uLL);
  v2 = nrXPCSendSyncInner("nrXPCCompanionLinkCopyStatus", v1);
  v3 = v2;
  if (!v2)
  {
    v58 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v72 = v58;
      v73 = os_log_type_enabled(v58, OS_LOG_TYPE_FAULT);

      if (!v73)
      {
        goto LABEL_35;
      }
    }

    v29 = nrCopyLogObj_2646();
    v22 = v29;
    v23 = "received nil response";
    goto LABEL_33;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v16 = xpc_dictionary_get_value(v3, "Result");
    v22 = v16;
    if (v16)
    {
      if (MEMORY[0x25F8746E0](v16) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v22);
        if (!value)
        {

          string = xpc_dictionary_get_string(v3, "CompanionLinkStatusMessage");
          if (string)
          {
            string = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
          }

          goto LABEL_36;
        }

        v33 = value;
        if (!(value >> 31))
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            v34 = nrCopyLogObj_2646();
            _NRLogWithArgs(v34, 17, "received failure result code: [%d] %s", v35, v36, v37, v38, v39, v33);
          }

          goto LABEL_34;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        v40 = nrCopyLogObj_sNRLogObj_2653;
        if (!v33)
        {
          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v49 = v40;
            v50 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);

            if (!v50)
            {
              goto LABEL_34;
            }
          }

          v51 = nrCopyLogObj_2646();
          StringFromNRXPCRes = createStringFromNRXPCRes(v33);
          _NRLogWithArgs(v51, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v52, v53, v54, v55, v56, "");

          goto LABEL_34;
        }

        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v41 = v40;
          v42 = os_log_type_enabled(v40, OS_LOG_TYPE_FAULT);

          if (!v42)
          {
            goto LABEL_34;
          }
        }

        v43 = nrCopyLogObj_2646();
        v75 = createStringFromNRXPCRes(v33);
        _NRLogWithArgs(v43, 17, "received internal failure result code: [%lld] %@", v44, v45, v46, v47, v48, v33);

        goto LABEL_34;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v23 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v23 = "received response without result code";
    }

    v29 = nrCopyLogObj_sNRLogObj_2653;
LABEL_33:
    _NRLogWithArgs(v29, 17, v23, v17, v18, v19, v20, v21, v76);
LABEL_34:

    goto LABEL_35;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    string = MEMORY[0x25F874580](v3);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v10, v11, v12, v13, v14, string);
    }

    goto LABEL_10;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v5, v6, v7, v8, v9, v76);
    }

    goto LABEL_35;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v5, v6, v7, v8, v9, "");
    }

    goto LABEL_35;
  }

  if (v3 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_35;
    }

    v29 = nrCopyLogObj_2646();
    v22 = v29;
    v23 = "received XPC_ERROR_TERMINATION_IMMINENT";
    goto LABEL_33;
  }

  string = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v24, v25, v26, v27, v28, string);
  }

LABEL_10:
  if (string)
  {
    free(string);
LABEL_35:
    string = 0;
  }

LABEL_36:

  v30 = *MEMORY[0x277D85DE8];
  return string;
}

BOOL NRDiagnosticSaveNetworkRelayStatusToDirectory(void *a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    v16 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v19 = v16;
      v20 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

      if (!v20)
      {
        goto LABEL_37;
      }
    }

    v21 = nrCopyLogObj_2646();
    _NRLogWithArgs(v21, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL directoryPath", v22, v23, v24, v25, v26, "");

    goto LABEL_37;
  }

  v2 = v1;
  if (![v1 length])
  {
    v17 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v27 = v17;
      v28 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

      if (!v28)
      {
        goto LABEL_37;
      }
    }

    v29 = nrCopyLogObj_2646();
    _NRLogWithArgs(v29, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL directoryPath.length", v30, v31, v32, v33, v34, "");

LABEL_37:
    v43 = _os_log_pack_size();
    MEMORY[0x28223BE20](v43, v44);
    v45 = *__error();
    v46 = _os_log_pack_fill();
    *v46 = 136446466;
    *(v46 + 4) = "NRDiagnosticSaveNetworkRelayStatusToDirectory";
    *(v46 + 12) = 2080;
    *(v46 + 14) = "NRDiagnosticSaveNetworkRelayStatusToDirectory";
    v47 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v47);
  }

  if (![v2 UTF8String])
  {
    v18 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v18;
      v36 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

      if (!v36)
      {
        goto LABEL_37;
      }
    }

    v37 = nrCopyLogObj_2646();
    _NRLogWithArgs(v37, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL directoryPathC", v38, v39, v40, v41, v42, "");

    goto LABEL_37;
  }

  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Saving diagnostic status to directory %s", v3, v4, v5, v6, v7, "");
  }

  v13 = nrSaveNetworkRelayStatusToDirectory(v2);
  if (!v13)
  {
    if (nrCopyLogObj_onceToken_2652 == -1)
    {
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_19;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_19;
      }
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

LABEL_19:
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Failed to save diagnostic status to directory %s", v8, v9, v10, v11, v12, "");
    goto LABEL_20;
  }

  if (nrCopyLogObj_onceToken_2652 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_14:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Saved diagnostic status to directory %s", v8, v9, v10, v11, v12, "");
      goto LABEL_20;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_14;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_14;
  }

LABEL_20:

  v14 = *MEMORY[0x277D85DE8];
  return v13 != 0;
}

id nrSaveNetworkRelayStatusToDirectory(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v17 = 0;
  if ([v2 fileExistsAtPath:v1 isDirectory:&v17] && (v17 & 1) != 0)
  {
LABEL_17:
    v14 = [v1 stringByAppendingPathComponent:@"companion_link_status_phone.txt"];
    if (nrSaveNetworkRelayStatusToFile(v14))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Creating temporary directory at %@", v3, v4, v5, v6, v7, "");
  }

  v16 = 0;
  [v2 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:&v16];
  v8 = v16;
  if (!v8)
  {
    if (nrCopyLogObj_onceToken_2652 == -1)
    {
      if ((sNRCopyLogToStdErr & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      if ((sNRCopyLogToStdErr & 1) == 0)
      {
LABEL_15:
        if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }
      }
    }

    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Created temporary directory at %@", v9, v10, v11, v12, v13, "");
    goto LABEL_17;
  }

  v14 = v8;
  if (nrCopyLogObj_onceToken_2652 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_12:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d Failed to create directory at %@: %@", v9, v10, v11, v12, v13, "");
      goto LABEL_18;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_12;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_12;
  }

LABEL_18:

  v14 = 0;
LABEL_19:

  return v14;
}

BOOL nrSaveNetworkRelayStatusToFile(void *a1)
{
  v117 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 UTF8String];
  if (!v2)
  {
    v84 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v87 = v84;
      v88 = os_log_type_enabled(v84, OS_LOG_TYPE_ERROR);

      if (!v88)
      {
LABEL_92:
        v95 = _os_log_pack_size();
        MEMORY[0x28223BE20](v95, v96);
        v97 = *__error();
        v98 = _os_log_pack_fill();
        *v98 = 136446466;
        *(v98 + 4) = "nrSaveNetworkRelayStatusToFile";
        *(v98 + 12) = 2080;
        *(v98 + 14) = "nrSaveNetworkRelayStatusToFile";
        goto LABEL_96;
      }
    }

    v89 = nrCopyLogObj_2646();
    _NRLogWithArgs(v89, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL filePathC", v90, v91, v92, v93, v94, "");

    goto LABEL_92;
  }

  v3 = v2;
  v4 = open(v2, 1794, 420);
  if ((v4 & 0x80000000) == 0)
  {
    v10 = v4;
    v11 = xpc_dictionary_create(0, 0, 0);
    if (v11)
    {
      v12 = v11;
      xpc_dictionary_set_uint64(v11, "Type", 0x21uLL);
      xpc_dictionary_set_fd(v12, "CompanionLinkStatusDumpToFileDescriptor", v10);
      xpc_dictionary_set_string(v12, "CompanionLinkStatusDumpToFilePath", v3);
      v13 = nrXPCSendSyncInner("nrSaveNetworkRelayStatusToFile", v12);
      close(v10);
      if (!v13)
      {
        v86 = nrCopyLogObj_2646();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v112 = v86;
          v26 = os_log_type_enabled(v86, OS_LOG_TYPE_FAULT);

          if (!v26)
          {
            goto LABEL_69;
          }
        }

        v51 = nrCopyLogObj_2646();
        v45 = v51;
        v57 = "received nil response";
        goto LABEL_66;
      }

      v14 = MEMORY[0x25F8746E0](v13);
      if (v14 != MEMORY[0x277D86468])
      {
        if (v14 != MEMORY[0x277D86480])
        {
          v25 = MEMORY[0x25F874580](v13);
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v20, v21, v22, v23, v24, v25);
          }

          if (v25)
          {
LABEL_13:
            free(v25);
            v26 = 0;
LABEL_69:

            goto LABEL_70;
          }

LABEL_68:
          v26 = 0;
          goto LABEL_69;
        }

        if (v13 == MEMORY[0x277D863F0])
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v15, v16, v17, v18, v19, v115);
            v26 = 0;
            goto LABEL_69;
          }

          goto LABEL_68;
        }

        if (v13 == MEMORY[0x277D863F8])
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_68;
          }

          v45 = nrCopyLogObj_2646();
          _NRLogWithArgs(v45, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v46, v47, v48, v49, v50, "");
LABEL_67:

          v26 = 0;
          goto LABEL_69;
        }

        if (v13 != MEMORY[0x277D86420])
        {
          v25 = MEMORY[0x25F874580](v13);
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            v36 = nrCopyLogObj_2646();
            _NRLogWithArgs(v36, 17, "received returned unknown XPC error %s", v37, v38, v39, v40, v41, v25);
          }

          if (v25)
          {
            goto LABEL_13;
          }

          goto LABEL_68;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_68;
        }

        v51 = nrCopyLogObj_2646();
        v45 = v51;
        v57 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_66:
        _NRLogWithArgs(v51, 17, v57, v52, v53, v54, v55, v56, v115);
        goto LABEL_67;
      }

      v27 = xpc_dictionary_get_value(v13, "Result");
      v33 = v27;
      if (v27)
      {
        if (MEMORY[0x25F8746E0](v27) == MEMORY[0x277D86498])
        {
          value = xpc_int64_get_value(v33);
          if (!value)
          {
            v26 = 1;
            goto LABEL_44;
          }

          v43 = value;
          if (value >> 31)
          {
            v60 = nrCopyLogObj_2646();
            if (!v43)
            {
              if (sNRCopyLogToStdErr)
              {
              }

              else
              {
                v76 = v60;
                v77 = os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);

                if (!v77)
                {
                  goto LABEL_43;
                }
              }

              v78 = nrCopyLogObj_2646();
              StringFromNRXPCRes = createStringFromNRXPCRes(v43);
              _NRLogWithArgs(v78, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v79, v80, v81, v82, v83, "");

              goto LABEL_43;
            }

            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v69 = v60;
              v70 = os_log_type_enabled(v60, OS_LOG_TYPE_FAULT);

              if (!v70)
              {
                goto LABEL_43;
              }
            }

            v63 = nrCopyLogObj_2646();
            v114 = createStringFromNRXPCRes(v43);
            _NRLogWithArgs(v63, 17, "received internal failure result code: [%lld] %@", v71, v72, v73, v74, v75, v43);
          }

          else
          {
            if (strerror_r(value, __strerrbuf, 0x80uLL))
            {
              __strerrbuf[0] = 0;
            }

            v44 = nrCopyLogObj_2646();
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v61 = v44;
              v62 = os_log_type_enabled(v44, OS_LOG_TYPE_FAULT);

              if (!v62)
              {
                goto LABEL_43;
              }
            }

            v63 = nrCopyLogObj_2646();
            _NRLogWithArgs(v63, 17, "received failure result code: [%d] %s", v64, v65, v66, v67, v68, v43);
          }

          goto LABEL_43;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_43;
        }

        v34 = nrCopyLogObj_sNRLogObj_2653;
        v35 = "received invalid result type";
      }

      else
      {
        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_43;
        }

        v34 = nrCopyLogObj_sNRLogObj_2653;
        v35 = "received response without result code";
      }

      _NRLogWithArgs(v34, 17, v35, v28, v29, v30, v31, v32, v115);
LABEL_43:
      v26 = 0;
LABEL_44:

      goto LABEL_69;
    }

    v85 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v99 = v85;
      v100 = os_log_type_enabled(v85, OS_LOG_TYPE_ERROR);

      if (!v100)
      {
LABEL_95:
        v107 = _os_log_pack_size();
        MEMORY[0x28223BE20](v107, v108);
        v109 = *__error();
        v110 = _os_log_pack_fill();
        __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v110, "nr_xpc_dictionary_create");
LABEL_96:
        v111 = nrCopyLogObj_2646();
        _NRLogAbortWithPack(v111);
      }
    }

    v101 = nrCopyLogObj_2646();
    _NRLogWithArgs(v101, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v102, v103, v104, v105, v106, "");

    goto LABEL_95;
  }

  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "Failed to open %s", v5, v6, v7, v8, v9, v3);
    v26 = 0;
  }

  else
  {
    v26 = 0;
  }

LABEL_70:

  v58 = *MEMORY[0x277D85DE8];
  return v26;
}

id NRDiagnosticSaveNetworkRelayStatusToTempDirectory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Saving diagnostic status to temp directory", a4, a5, a6, a7, a8, "");
  }

  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [v9 UUIDString];
  v11 = [v8 initWithFormat:@"/tmp/terminusd/%@", v10];

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v29 = 0;
  if ([v12 fileExistsAtPath:v11 isDirectory:&v29] && (v29 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (nrCopyLogObj_onceToken_2652 == -1)
  {
    if ((sNRCopyLogToStdErr & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    if ((sNRCopyLogToStdErr & 1) == 0)
    {
LABEL_10:
      if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }
    }
  }

  _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Creating temporary directory at %@", v13, v14, v15, v16, v17, "");
LABEL_12:
  v28 = 0;
  [v12 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v28];
  v18 = v28;
  if (v18)
  {
    v24 = v18;
    if (nrCopyLogObj_onceToken_2652 == -1)
    {
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_16;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_16;
      }
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      v25 = 0;
      goto LABEL_24;
    }

LABEL_16:
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d Failed to create directory at %@: %@", v19, v20, v21, v22, v23, "");
    goto LABEL_17;
  }

  if (nrCopyLogObj_onceToken_2652 == -1)
  {
    if ((sNRCopyLogToStdErr & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    if ((sNRCopyLogToStdErr & 1) == 0)
    {
LABEL_20:
      if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }
    }
  }

  _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Created temporary directory at %@", v19, v20, v21, v22, v23, "");
LABEL_22:
  v24 = nrSaveNetworkRelayStatusToDirectory(v11);
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = v26;
  if (v24)
  {
    [v26 addObject:v24];
  }

LABEL_24:

  return v25;
}

BOOL NRDiagnosticSaveNetworkRelayStatusToFile(void *a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    v16 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v19 = v16;
      v20 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

      if (!v20)
      {
        goto LABEL_30;
      }
    }

    v21 = nrCopyLogObj_2646();
    _NRLogWithArgs(v21, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL filePath", v22, v23, v24, v25, v26, "");

    goto LABEL_30;
  }

  v2 = v1;
  if (![v1 length])
  {
    v17 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v27 = v17;
      v28 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

      if (!v28)
      {
        goto LABEL_30;
      }
    }

    v29 = nrCopyLogObj_2646();
    _NRLogWithArgs(v29, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL filePath.length", v30, v31, v32, v33, v34, "");

LABEL_30:
    v43 = _os_log_pack_size();
    MEMORY[0x28223BE20](v43, v44);
    v45 = *__error();
    v46 = _os_log_pack_fill();
    *v46 = 136446466;
    *(v46 + 4) = "NRDiagnosticSaveNetworkRelayStatusToFile";
    *(v46 + 12) = 2080;
    *(v46 + 14) = "NRDiagnosticSaveNetworkRelayStatusToFile";
    v47 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v47);
  }

  if (![v2 UTF8String])
  {
    v18 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v18;
      v36 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

      if (!v36)
      {
        goto LABEL_30;
      }
    }

    v37 = nrCopyLogObj_2646();
    _NRLogWithArgs(v37, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL filePathC", v38, v39, v40, v41, v42, "");

    goto LABEL_30;
  }

  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Saving diagnostic status to file %s", v3, v4, v5, v6, v7, "");
  }

  v13 = nrSaveNetworkRelayStatusToFile(v2);
  if (nrCopyLogObj_onceToken_2652 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_12:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 0, "%s%.30s:%-4d Saved diagnostic status to file %s", v8, v9, v10, v11, v12, "");
      goto LABEL_13;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_12;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_12;
  }

LABEL_13:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void *nrXPCCompanionLinkCancel()
{
  v78 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v57 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v59 = v57;
      v60 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);

      if (!v60)
      {
        goto LABEL_79;
      }
    }

    v61 = nrCopyLogObj_2646();
    _NRLogWithArgs(v61, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v62, v63, v64, v65, v66, "");

LABEL_79:
    v67 = _os_log_pack_size();
    MEMORY[0x28223BE20](v67, v68);
    v69 = *__error();
    v70 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v70, "nr_xpc_dictionary_create");
    v71 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v71);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 5uLL);
  v2 = nrXPCSendSyncInner("nrXPCCompanionLinkCancel", v1);
  v3 = v2;
  if (!v2)
  {
    v58 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v72 = v58;
      v73 = os_log_type_enabled(v58, OS_LOG_TYPE_FAULT);

      if (!v73)
      {
        goto LABEL_35;
      }
    }

    v29 = nrCopyLogObj_2646();
    v22 = v29;
    v23 = "received nil response";
    goto LABEL_33;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v16 = xpc_dictionary_get_value(v3, "Result");
    v22 = v16;
    if (v16)
    {
      if (MEMORY[0x25F8746E0](v16) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v22);
        if (!value)
        {

          uint64 = xpc_dictionary_get_uint64(v3, "CompanionLinkCount");
          goto LABEL_36;
        }

        v33 = value;
        if (!(value >> 31))
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            v34 = nrCopyLogObj_2646();
            _NRLogWithArgs(v34, 17, "received failure result code: [%d] %s", v35, v36, v37, v38, v39, v33);
          }

          goto LABEL_34;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        v40 = nrCopyLogObj_sNRLogObj_2653;
        if (!v33)
        {
          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v49 = v40;
            v50 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);

            if (!v50)
            {
              goto LABEL_34;
            }
          }

          v51 = nrCopyLogObj_2646();
          StringFromNRXPCRes = createStringFromNRXPCRes(v33);
          _NRLogWithArgs(v51, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v52, v53, v54, v55, v56, "");

          goto LABEL_34;
        }

        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v41 = v40;
          v42 = os_log_type_enabled(v40, OS_LOG_TYPE_FAULT);

          if (!v42)
          {
            goto LABEL_34;
          }
        }

        v43 = nrCopyLogObj_2646();
        v75 = createStringFromNRXPCRes(v33);
        _NRLogWithArgs(v43, 17, "received internal failure result code: [%lld] %@", v44, v45, v46, v47, v48, v33);

        goto LABEL_34;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v23 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v23 = "received response without result code";
    }

    v29 = nrCopyLogObj_sNRLogObj_2653;
LABEL_33:
    _NRLogWithArgs(v29, 17, v23, v17, v18, v19, v20, v21, v76);
LABEL_34:

    goto LABEL_35;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    uint64 = MEMORY[0x25F874580](v3);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v10, v11, v12, v13, v14, uint64);
    }

    goto LABEL_10;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v5, v6, v7, v8, v9, v76);
    }

    goto LABEL_35;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v5, v6, v7, v8, v9, "");
    }

    goto LABEL_35;
  }

  if (v3 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_35;
    }

    v29 = nrCopyLogObj_2646();
    v22 = v29;
    v23 = "received XPC_ERROR_TERMINATION_IMMINENT";
    goto LABEL_33;
  }

  uint64 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v24, v25, v26, v27, v28, uint64);
  }

LABEL_10:
  if (uint64)
  {
    free(uint64);
LABEL_35:
    uint64 = 0;
  }

LABEL_36:

  v30 = *MEMORY[0x277D85DE8];
  return uint64;
}