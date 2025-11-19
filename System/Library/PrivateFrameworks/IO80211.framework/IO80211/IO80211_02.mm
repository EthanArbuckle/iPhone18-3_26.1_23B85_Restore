CFMutableArrayRef _getLQMSummary()
{
  MEMORY[0x28223BE20]();
  v1 = v0;
  v3 = v2;
  v62[160] = *MEMORY[0x277D85DE8];
  bzero(&valuePtr, 0x15A0uLL);
  *(v3 + 24) = 5536;
  *(v3 + 32) = &valuePtr;
  if (Apple80211IOCTLGetWrapper())
  {
    result = *__error();
  }

  else
  {
    v4 = *MEMORY[0x277CBECE8];
    v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt8Type, &valuePtr);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_CCA", v5);
    CFRelease(v5);
    v6 = CFNumberCreate(v4, kCFNumberSInt8Type, v41);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_RSSI", v6);
    CFRelease(v6);
    v7 = CFNumberCreate(v4, kCFNumberSInt16Type, &v41[1]);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_SNR", v7);
    CFRelease(v7);
    v8 = CFNumberCreate(v4, kCFNumberSInt64Type, &v43);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_TX_RETRIES", v8);
    CFRelease(v8);
    v9 = CFNumberCreate(v4, kCFNumberSInt64Type, &v45);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_TX_FRAMES", v9);
    CFRelease(v9);
    v10 = CFNumberCreate(v4, kCFNumberSInt64Type, &v44);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_TX_FAILS", v10);
    CFRelease(v10);
    v11 = CFNumberCreate(v4, kCFNumberSInt64Type, &v46);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_FCS", v11);
    CFRelease(v11);
    v12 = CFNumberCreate(v4, kCFNumberSInt64Type, &v47);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_PLCP", v12);
    CFRelease(v12);
    v13 = CFNumberCreate(v4, kCFNumberSInt64Type, &v48);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_CRS", v13);
    CFRelease(v13);
    v14 = CFNumberCreate(v4, kCFNumberSInt64Type, &v49);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_DUP", v14);
    CFRelease(v14);
    v15 = CFNumberCreate(v4, kCFNumberSInt64Type, &v50);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_AMPDU_DUP", v15);
    CFRelease(v15);
    v16 = CFNumberCreate(v4, kCFNumberSInt64Type, &v51);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_UCAST_REPLAY", v16);
    CFRelease(v16);
    v17 = CFNumberCreate(v4, kCFNumberSInt64Type, &v52);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_UCAST_DECRYPT", v17);
    CFRelease(v17);
    v18 = CFNumberCreate(v4, kCFNumberSInt64Type, &v53);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_MCAST_REPLAY", v18);
    CFRelease(v18);
    v19 = CFNumberCreate(v4, kCFNumberSInt64Type, &v54);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_MCAST_DECRYPT", v19);
    CFRelease(v19);
    v20 = CFNumberCreate(v4, kCFNumberSInt64Type, &v55);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_RETRIES", v20);
    CFRelease(v20);
    v21 = CFNumberCreate(v4, kCFNumberSInt64Type, &v56);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_GOOD_PLCPS", v21);
    CFRelease(v21);
    v22 = CFNumberCreate(v4, kCFNumberSInt64Type, &v57);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_UCAST_FRAMES", v22);
    CFRelease(v22);
    v23 = CFNumberCreate(v4, kCFNumberSInt64Type, &v58);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_MCAST_FRAMES", v23);
    CFRelease(v23);
    v24 = CFNumberCreate(v4, kCFNumberSInt64Type, &v59);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_TOTAL_FRAMES", v24);
    CFRelease(v24);
    v25 = CFNumberCreate(v4, kCFNumberSInt64Type, &v60);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_RTS_UCAST", v25);
    CFRelease(v25);
    v26 = CFNumberCreate(v4, kCFNumberSInt64Type, &v60);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_RX_RTS_UCAST", v26);
    CFRelease(v26);
    v27 = CFNumberCreate(v4, kCFNumberIntType, &v41[3]);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_DATA_STALL_SCORE", v27);
    CFRelease(v27);
    v28 = CFNumberCreate(v4, kCFNumberIntType, &v42);
    CFDictionarySetValue(v1, @"LQM_SUMMARY_NET_SCORE", v28);
    CFRelease(v28);
    result = CFArrayCreateMutable(v4, 0, MEMORY[0x277CBF128]);
    if (result)
    {
      v30 = result;
      v31 = &v61;
      v32 = 16;
      do
      {
        if (*v31)
        {
          v33 = CFStringCreateWithCString(v4, v31, 0x8000100u);
          if (v33)
          {
            v34 = v33;
            CFArrayAppendValue(v30, v33);
            CFRelease(v34);
          }
        }

        v31 += 256;
        --v32;
      }

      while (v32);
      v35 = v62;
      v36 = 5;
      do
      {
        if (*v35)
        {
          v37 = CFStringCreateWithCString(v4, v35, 0x8000100u);
          if (v37)
          {
            v38 = v37;
            CFArrayAppendValue(v30, v37);
            CFRelease(v38);
          }
        }

        v35 += 256;
        --v36;
      }

      while (v36);
      CFDictionarySetValue(v1, @"LQM_SUMMARY_DBG_LOG_LIST", v30);
      CFRelease(v30);
      result = 0;
    }
  }

  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _getScanData(const __CFDictionary *a1, char *a2, uint64_t a3, _BYTE *a4, _DWORD *a5, _DWORD *a6, Boolean *a7, Boolean *a8, uint64_t a9, Boolean *a10)
{
  usedBufLen[4] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_169;
  }

  v16 = a2;
  bzero(a2, 0x1598uLL);
  *v16 = 1;
  if (!a1)
  {
    *(v16 + 1) = 3;
    *(v16 + 52) = 0x100000001;
    if (a4)
    {
      *a4 = 1;
    }

    if (a6)
    {
      *a6 = 1;
    }

    result = 0;
    if (a5)
    {
      *a5 = 0x80000000;
    }

    goto LABEL_183;
  }

  v114 = a5;
  v115 = a3;
  v113 = a6;
  v123 = 0xAAAAAAAAAAAAAAAALL;
  valuePtr = -1431655766;
  v121 = -21846;
  Value = CFDictionaryGetValue(a1, @"SCAN_SSID_LIST");
  v19 = CFDictionaryGetValue(a1, @"SCAN_BSSID_LIST");
  v20 = CFDictionaryGetValue(a1, @"SSID_STR");
  v21 = CFDictionaryGetValue(a1, @"BSSID");
  v112 = *(a9 + 11);
  if ((v112 & 0x40) != 0)
  {
    v22 = CFDictionaryGetValue(a1, @"SCAN_SHORT_SSID");
  }

  else
  {
    v22 = 0;
  }

  v24 = v20 | v21 | v22;
  v111 = v24 != 0;
  v116 = v20;
  v118 = v21;
  if (!v24)
  {
    if (!Value)
    {
      v40 = 0;
      v28 = v114;
      goto LABEL_47;
    }

    v103 = v22;
    v104 = a7;
    v109 = v16;
    v106 = a1;
    Count = CFArrayGetCount(Value);
    v29 = Count - 1;
    if (Count >= 1)
    {
      v30 = 0;
      v31 = (v16 + 4888);
      if (v29 >= 9)
      {
        v29 = 9;
      }

      v32 = v29 + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, v30);
        if (!ValueAtIndex)
        {
          goto LABEL_169;
        }

        v34 = ValueAtIndex;
        v35 = CFDictionaryGetValue(ValueAtIndex, @"SSID_STR");
        if (!v35)
        {
          goto LABEL_169;
        }

        v36 = v35;
        Length = CFStringGetLength(v35);
        if (Length > 32)
        {
          goto LABEL_169;
        }

        v38 = Length;
        *v31 = 1;
        usedBufLen[0] = 0;
        if (CFStringGetLength(v36))
        {
          v126.location = 0;
          v126.length = v38;
          if (!CFStringGetBytes(v36, v126, 0x8000100u, 0, 0, (v31 + 8), 32, usedBufLen))
          {
            goto LABEL_169;
          }
        }

        *(v31 + 4) = usedBufLen[0];
        __getNetworkSecurityParams(v34, v31, a9);
        ++v30;
        v31 += 56;
      }

      while (v32 != v30);
    }

    v22 = v103;
    v39 = 10;
    if (Count < 10)
    {
      v39 = Count;
    }

    v16 = v109;
    *(v109 + 1221) = v39;
    a7 = v104;
    a1 = v106;
    v20 = v116;
    v21 = v118;
    if (v116)
    {
      goto LABEL_23;
    }

LABEL_40:
    v28 = v114;
    if (v22)
    {
      CFNumberGetValue(v22, kCFNumberSInt32Type, v16 + 5448);
      v115 = 0;
      *(v16 + 4) = 4;
    }

    goto LABEL_42;
  }

  if (v20)
  {
    v25 = v22 == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = !v25;
  if (Value || v19 || (v26 & 1) != 0)
  {
    goto LABEL_169;
  }

  if (!v20)
  {
    goto LABEL_40;
  }

LABEL_23:
  v27 = CFStringGetLength(v20);
  v28 = v114;
  if ((v27 - 33) < 0xFFFFFFFFFFFFFFE0)
  {
    goto LABEL_169;
  }

  v125.length = v27;
  usedBufLen[0] = 0xAAAAAAAAAAAAAAAALL;
  v125.location = 0;
  if (!CFStringGetBytes(v20, v125, 0x8000100u, 0, 0, v16 + 20, 32, usedBufLen))
  {
    goto LABEL_169;
  }

  v115 = 0;
  *(v16 + 4) = usedBufLen[0];
LABEL_42:
  v40 = !v111;
  if (!v21)
  {
LABEL_47:
    v42 = v115;
    goto LABEL_48;
  }

  memset(usedBufLen, 170, 18);
  if (!CFStringGetCString(v21, usedBufLen, 18, 0x8000100u))
  {
    goto LABEL_169;
  }

  v41 = ether_aton(usedBufLen);
  if (!v41)
  {
    goto LABEL_169;
  }

  v42 = 0;
  v43 = *v41->octet;
  *(v16 + 6) = *&v41->octet[4];
  *(v16 + 2) = v43;
LABEL_48:
  if (v19)
  {
    v44 = 1;
  }

  else
  {
    v44 = v40;
  }

  if (v116)
  {
    v44 = 1;
  }

  if (v21)
  {
    v44 = 1;
  }

  if (v44)
  {
    v45 = v42;
  }

  else
  {
    v45 = 0;
  }

  if (a4)
  {
    v46 = CFDictionaryGetValue(a1, @"SCAN_MERGE");
    BoolRef = makeBoolRef(v46);
    if (BoolRef)
    {
      LOBYTE(BoolRef) = CFBooleanGetValue(BoolRef);
    }

    *a4 = BoolRef;
  }

  if (a10)
  {
    v48 = CFDictionaryGetValue(a1, @"SCAN_INC_BSS_LIST");
    v49 = makeBoolRef(v48);
    if (v49)
    {
      *a10 = CFBooleanGetValue(v49);
    }
  }

  v50 = CFDictionaryGetValue(a1, @"SCAN_FLAGS");
  if (v50 && !CFNumberGetValue(v50, kCFNumberSInt32Type, v16 + 4872))
  {
    goto LABEL_169;
  }

  v51 = *MEMORY[0x277CBED28];
  v52 = CFDictionaryGetValue(a1, @"SCAN_LOW_PRIORITY");
  if (v51 == makeBoolRef(v52))
  {
    *(v16 + 609) |= 2uLL;
  }

  v53 = CFDictionaryGetValue(a1, @"SCAN_LOW_LATENCY");
  if (v51 == makeBoolRef(v53))
  {
    *(v16 + 609) |= 0x20uLL;
  }

  v54 = CFDictionaryGetValue(a1, @"SCAN_PRIO_OVERRIDE");
  if (v51 == makeBoolRef(v54))
  {
    *(v16 + 609) |= 0x40uLL;
  }

  v55 = CFDictionaryGetValue(a1, @"SCAN_IS_THROTTLED");
  if (v51 == makeBoolRef(v55))
  {
    *(v16 + 609) |= 0x80uLL;
  }

  v56 = CFDictionaryGetValue(a1, @"SCAN_ONLY_USE_LOW_POWER_CORE");
  if (v51 == makeBoolRef(v56))
  {
    *(v16 + 609) |= 0x1000uLL;
  }

  v57 = CFDictionaryGetValue(a1, @"SCAN_INC_OFFCHANNEL_BSS");
  if (v51 == makeBoolRef(v57))
  {
    *(v16 + 609) |= 8uLL;
  }

  if ((v112 & 0x40) == 0)
  {
    v58 = *(v16 + 609) & 0xFFFFF0FFLL;
LABEL_89:
    *(v16 + 609) = v58;
    goto LABEL_90;
  }

  v59 = CFDictionaryGetValue(a1, @"SCAN_6GHZ_FOLLOWUP");
  if (v51 == makeBoolRef(v59))
  {
    *(v16 + 609) |= 0x100uLL;
  }

  v60 = CFDictionaryGetValue(a1, @"SCAN_INCL_FILS_DISC_FRAMES");
  if (v51 == makeBoolRef(v60))
  {
    *(v16 + 609) |= 0x200uLL;
  }

  v61 = CFDictionaryGetValue(a1, @"SCAN_SKIP_FILS_DISC_PERIOD");
  if (v51 == makeBoolRef(v61))
  {
    *(v16 + 609) |= 0x400uLL;
  }

  v62 = CFDictionaryGetValue(a1, @"SCAN_INCL_ORIG_RNR");
  if (v51 == makeBoolRef(v62))
  {
    v58 = *(v16 + 609) | 0x800;
    goto LABEL_89;
  }

LABEL_90:
  *(v16 + 1220) = 0x80000000;
  v63 = CFDictionaryGetValue(a1, @"SCAN_RSSI_THRESHOLD");
  if (v63 && !CFNumberGetValue(v63, kCFNumberSInt32Type, v16 + 4880))
  {
    goto LABEL_169;
  }

  if (v28)
  {
    *v28 = *(v16 + 1220);
  }

  if (v113)
  {
    v64 = CFDictionaryGetValue(a1, @"SCAN_NUM_SCANS");
    if (v64)
    {
      if (!CFNumberGetValue(v64, kCFNumberSInt32Type, v113))
      {
        goto LABEL_169;
      }
    }

    else
    {
      *v113 = 1;
    }
  }

  v65 = CFDictionaryGetValue(a1, @"SCAN_TYPE");
  if (v65)
  {
    if (!CFNumberGetValue(v65, kCFNumberSInt32Type, &valuePtr))
    {
      goto LABEL_169;
    }

    v66 = valuePtr;
  }

  else
  {
    v66 = 1;
  }

  *(v16 + 13) = v66;
  v67 = v16 + 52;
  v68 = CFDictionaryGetValue(a1, @"SCAN_BSS_TYPE");
  if (v68)
  {
    if (!CFNumberGetValue(v68, kCFNumberSInt32Type, &valuePtr))
    {
      goto LABEL_169;
    }

    v69 = valuePtr;
  }

  else
  {
    v69 = 3;
  }

  *(v16 + 1) = v69;
  v70 = CFDictionaryGetValue(a1, @"SCAN_PHY_MODE");
  if (v70)
  {
    if (!CFNumberGetValue(v70, kCFNumberSInt32Type, &valuePtr))
    {
      goto LABEL_169;
    }

    v71 = valuePtr;
  }

  else
  {
    v71 = 1;
  }

  *(v16 + 14) = v71;
  v72 = CFDictionaryGetValue(a1, @"SCAN_DWELL_TIME");
  if (v72)
  {
    if (!CFNumberGetValue(v72, kCFNumberSInt16Type, &v121))
    {
      goto LABEL_169;
    }

    *(v16 + 30) = v121;
  }

  v73 = CFDictionaryGetValue(a1, @"SCAN_REST_TIME");
  if (v73)
  {
    if (!CFNumberGetValue(v73, kCFNumberSInt32Type, &valuePtr))
    {
      goto LABEL_169;
    }

    *(v16 + 16) = valuePtr;
  }

  v74 = CFDictionaryGetValue(a1, @"SCAN_MIN_TIMESTAMP");
  if (v74)
  {
    if (CFNumberGetValue(v74, kCFNumberSInt64Type, &v123))
    {
      *(v16 + 690) = v123;
      goto LABEL_120;
    }

LABEL_169:
    result = 4294963396;
    goto LABEL_183;
  }

LABEL_120:
  v75 = CFDictionaryGetValue(a1, @"SCAN_CHANNELS");
  if (v75)
  {
    v76 = v75;
    v77 = CFArrayGetCount(v75);
    v119 = -1431655766;
    v120 = -1431655766;
    if (v77 >= 1)
    {
      v105 = a7;
      v107 = a1;
      v108 = a8;
      v110 = v16;
      v117 = 0;
      v78 = 0;
      v79 = 0;
      if (v45)
      {
        v80 = (v45 + 512);
      }

      else
      {
        v80 = v16 + 52;
      }

      v81 = v16 + 72;
      if ((v77 - 1) >= 0x18F)
      {
        v82 = 399;
      }

      else
      {
        v82 = v77 - 1;
      }

      while (1)
      {
        v83 = CFArrayGetValueAtIndex(v76, v79);
        if (!v83)
        {
          goto LABEL_169;
        }

        v84 = v83;
        v85 = CFDictionaryGetValue(v83, @"CHANNEL");
        if (!v85 || !CFNumberGetValue(v85, kCFNumberSInt32Type, &v120))
        {
          goto LABEL_169;
        }

        v86 = CFDictionaryGetValue(v84, @"CHANNEL_FLAGS");
        v87 = v86;
        if (!v86)
        {
          break;
        }

        if (!CFNumberGetValue(v86, kCFNumberSInt32Type, &v119))
        {
          goto LABEL_169;
        }

        if (!v119)
        {
          goto LABEL_136;
        }

LABEL_142:
        if (!CFNumberGetValue(v87, kCFNumberSInt32Type, &v119))
        {
          goto LABEL_169;
        }

        v90 = *v67 == 1 && v118 != 0;
        v91 = v119;
        if ((v119 & 0x2000) == 0 || *v80 == 3 || v90)
        {
          v93 = v120;
        }

        else
        {
          if ((_os_feature_enabled_impl() & 1) == 0)
          {
            v117 = v120;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              LODWORD(usedBufLen[0]) = 67109120;
              HIDWORD(usedBufLen[0]) = v117;
              _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Excluding 6GHz scan channel (%u)", usedBufLen, 8u);
            }

            goto LABEL_164;
          }

          v92 = _os_feature_enabled_impl();
          v91 = v119;
          v93 = v120;
          if ((v92 & 1) == 0)
          {
            if ((~v119 & 0x2002) != 0)
            {
              goto LABEL_186;
            }

            v94 = 0;
            do
            {
              v95 = k6GHzPSC[v94];
              if (v94 > 0xD)
              {
                break;
              }

              ++v94;
            }

            while (v95 != v120);
            if (v95 != v120)
            {
LABEL_186:
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                LODWORD(usedBufLen[0]) = 67109120;
                HIDWORD(usedBufLen[0]) = v93;
                _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Excluding 6GHz non-PSC scan channel (%u)", usedBufLen, 8u);
              }

              v117 = v93;
              goto LABEL_164;
            }
          }
        }

        v96 = &v81[12 * v78];
        *v96 = 1;
        *(v96 + 1) = v93;
        *(v96 + 2) = v91;
        ++v78;
LABEL_164:
        v25 = v79++ == v82;
        if (v25)
        {
          if (v78)
          {
            a1 = v107;
            a8 = v108;
            a7 = v105;
            v16 = v110;
          }

          else
          {
            a1 = v107;
            a8 = v108;
            a7 = v105;
            v16 = v110;
            if (v117)
            {
              *(v110 + 13) = 3;
              *(v110 + 9) = 1;
              *(v110 + 20) = 0;
              LODWORD(v78) = 1;
            }
          }

          goto LABEL_175;
        }
      }

      v119 = 0;
LABEL_136:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(usedBufLen[0]) = 67109120;
        HIDWORD(usedBufLen[0]) = v120;
        _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Missing channel flags for scan channel (%u)", usedBufLen, 8u);
      }

      if (v120 > 0xD)
      {
        v88 = 18;
      }

      else
      {
        v88 = 10;
      }

      v119 = v88;
      goto LABEL_142;
    }

    LODWORD(v78) = 0;
LABEL_175:
    *(v16 + 17) = v78;
  }

  if (a7)
  {
    v97 = CFDictionaryGetValue(a1, @"MONITOR_QBSS_LOAD");
    v98 = makeBoolRef(v97);
    if (v98)
    {
      *a7 = CFBooleanGetValue(v98);
    }
  }

  if (a8)
  {
    v99 = CFDictionaryGetValue(a1, @"SCAN_TRIM_RESULTS");
    result = makeBoolRef(v99);
    if (result)
    {
      v100 = CFBooleanGetValue(result);
      result = 0;
      *a8 = v100;
    }
  }

  else
  {
    result = 0;
  }

LABEL_183:
  v101 = *MEMORY[0x277D85DE8];
  return result;
}

const __CFNumber *makeBoolRef(const __CFNumber *cf)
{
  v1 = cf;
  v7 = *MEMORY[0x277D85DE8];
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 == CFNumberGetTypeID())
    {
      valuePtr = -1431655766;
      if (CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr))
      {
        v3 = MEMORY[0x277CBED10];
        if (valuePtr)
        {
          v3 = MEMORY[0x277CBED28];
        }

        v1 = *v3;
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t __Apple80211EventMonitoringHelper_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(*(a1 + 32) + 1952) = 0;
  return Apple80211EventMonitoringHelper(v1, *(a1 + 56), *(a1 + 48), *(a1 + 60));
}

uint64_t Apple80211Open(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v7 = 4294963396;
    goto LABEL_10;
  }

  v2 = malloc_type_malloc(0x850uLL, 0x10E0040E2A5786FuLL);
  v3 = v2;
  if (!v2)
  {
    v7 = 4294963395;
    goto LABEL_9;
  }

  bzero(v2, 0x850uLL);
  os_parse_boot_arg_int();
  *(v3 + 252) = 1;
  os_parse_boot_arg_int();
  v4 = socket(2, 2, 0);
  *v3 = v4;
  if (v4 < 0)
  {
    v7 = *__error();
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  os_parse_boot_arg_int();
  v3[2120] = 1;
  if (os_parse_boot_arg_int())
  {
    v3[2120] = 0;
  }

  pthread_mutex_init((v3 + 160), 0);
  pthread_mutex_init((v3 + 272), 0);
  pthread_mutex_init((v3 + 1608), 0);
  pthread_mutex_init((v3 + 1680), 0);
  pthread_mutex_init((v3 + 1752), 0);
  v5 = dispatch_group_create();
  *(v3 + 264) = v5;
  if (!v5 || (v6 = dispatch_queue_create("com.apple.wifi.apple80211.finalizer", 0), (*(v3 + 263) = v6) == 0))
  {
    v7 = 4294963395;
LABEL_15:
    free(v3);
    v3 = 0;
    goto LABEL_9;
  }

  dispatch_group_enter(*(v3 + 264));
  v7 = 0;
LABEL_9:
  *a1 = v3;
LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t Apple80211BindToInterface(uint64_t a1, __CFString *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  result = 4294963396;
  if (a1 && a2)
  {
    Service = _Apple80211FindService(a2);
    if (Service)
    {
      v6 = Service;
      v7 = _copyStringRegistryPropertyFor(Service, @"IO80211VirtualInterfaceRole");
      if (!v7 || (v8 = v7, v9 = CFStringCompare(v7, @"AirLink", 0), CFRelease(v8), v9))
      {
        v10 = Apple80211BindToInterfaceWithService();
        IOObjectRelease(v6);
        v11 = *MEMORY[0x277D85DE8];
        return v10;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136446466;
        v14 = "Apple80211BindToInterface";
        v15 = 2112;
        v16 = a2;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: %@ using compatibility mode\n", &v13, 0x16u);
      }

      if (CFStringGetCString(a2, (a1 + 4), 16, 0x8000100u))
      {
        result = 0;
        *(a1 + 109) = 1;
      }

      else
      {
        result = 4294963396;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136446466;
        v14 = "Apple80211BindToInterface";
        v15 = 2112;
        v16 = a2;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: %@ Failed to find matching service in IORegistry\n", &v13, 0x16u);
      }

      result = 4294963393;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _Apple80211FindService(void *a1)
{
  keys[1] = *MEMORY[0x277D85DE8];
  values = a1;
  keys[0] = @"IOInterfaceName";
  v1 = *MEMORY[0x277CBECE8];
  v2 = MEMORY[0x277CBF138];
  v3 = MEMORY[0x277CBF150];
  cf = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  keys[0] = @"IOPropertyMatch";
  v4 = CFDictionaryCreate(v1, keys, &cf, 1, v2, v3);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  result = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

const void *_copyStringRegistryPropertyFor(io_registry_entry_t a1, const __CFString *a2)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, a2, *MEMORY[0x277CBECE8], 0);
  v3 = CFProperty;
  if (CFProperty)
  {
    v4 = CFGetTypeID(CFProperty);
    if (v4 != CFStringGetTypeID())
    {
      CFRelease(v3);
      return 0;
    }
  }

  return v3;
}

uint64_t Apple80211BindToInterfaceWithService()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v68 = *MEMORY[0x277D85DE8];
  *(v0 + 2024) = 0;
  if (!v2)
  {
    goto LABEL_56;
  }

  v7 = v1;
  if (_checkEntitlements_onceToken != -1)
  {
    dispatch_once(&_checkEntitlements_onceToken, &__block_literal_global_1929);
  }

  if ((*(v6 + 231) || *(v6 + 8) || *(v6 + 7)) && Apple80211EventMonitoringHalt(v6))
  {
    goto LABEL_56;
  }

  v8 = *(v6 + 248);
  if (v8)
  {
    IONotificationPortDestroy(v8);
    *(v6 + 248) = 0;
  }

  v9 = v6 + 455;
  v10 = v6[455];
  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "Apple80211BindToInterfaceWithService";
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Free previous IOUC session\n", buf, 0xCu);
      v10 = v6[455];
      *(v6 + 1817) = 0;
      if (!v10)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *(v6 + 1817) = 0;
    }

    *v9 = 0;
    IOServiceClose(v10);
  }

LABEL_16:
  if (!CFStringGetCString(v3, v6 + 4, 16, 0x8000100u))
  {
LABEL_56:
    v20 = 0;
LABEL_57:
    v22 = 0;
    goto LABEL_58;
  }

  v11 = IOServiceOpen(v5, *MEMORY[0x277D85F48], 0, v6 + 455);
  if (v11)
  {
    v35 = v11;
    if (v11 == -536870174 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      *&buf[4] = "Apple80211BindToInterfaceWithService";
      *&buf[12] = 2112;
      *&buf[14] = v3;
      *&buf[22] = 1024;
      *&buf[24] = -536870174;
      *&buf[28] = 1024;
      *&buf[30] = -536870174;
      _os_log_fault_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%{public}s: %@ IOServiceOpen failed with %d/0x%08x", buf, 0x22u);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 136446978;
    *&buf[4] = "Apple80211BindToInterfaceWithService";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    *&buf[22] = 1024;
    *&buf[24] = v35;
    *&buf[28] = 1024;
    *&buf[30] = v35;
    v36 = MEMORY[0x277D86220];
    v37 = "%{public}s: %@ IOServiceOpen failed with %d/0x%08x";
    goto LABEL_54;
  }

  bzero(inputStruct, 0x3C30uLL);
  inputStruct[0] = -1071093303;
  __strlcpy_chk();
  inputStruct[3846] = 43;
  memset(outputStruct, 0, sizeof(outputStruct));
  v60 = 0;
  outputStructCnt = 256;
  v12 = IOConnectCallStructMethod(*v9, 0, inputStruct, 0x3C30uLL, outputStruct, &outputStructCnt);
  v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (!v13)
    {
      goto LABEL_56;
    }

    *buf = 136446978;
    *&buf[4] = "Apple80211BindToInterfaceWithService";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    *&buf[22] = 1024;
    *&buf[24] = v12;
    *&buf[28] = 1024;
    *&buf[30] = v12;
    v36 = MEMORY[0x277D86220];
    v37 = "%{public}s: %@ Driver version query failed with %d/0x%08x";
LABEL_54:
    v40 = buf;
    v41 = 34;
LABEL_55:
    _os_log_impl(&dword_254882000, v36, OS_LOG_TYPE_DEFAULT, v37, v40, v41);
    goto LABEL_56;
  }

  if (v13)
  {
    *buf = 136446722;
    *&buf[4] = "Apple80211BindToInterfaceWithService";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    *&buf[22] = 2080;
    *&buf[24] = outputStruct;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: %@ Sanity test passed. Version - %s", buf, 0x20u);
  }

  outputStructCnt = 1;
  v14 = IOConnectCallStructMethod(v6[455], 1u, 0, 0, v6 + 1817, &outputStructCnt);
  if (v14)
  {
    v38 = v14;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 136446978;
    *&buf[4] = "Apple80211BindToInterfaceWithService";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    *&buf[22] = 1024;
    *&buf[24] = v38;
    *&buf[28] = 1024;
    *&buf[30] = v38;
    v36 = MEMORY[0x277D86220];
    v37 = "%{public}s: %@ useIOUCWhenPossible query failed with %d/0x%08x";
    goto LABEL_54;
  }

  outputStructCnt = 1;
  v15 = IOConnectCallStructMethod(v6[455], 7u, 0, 0, v6 + 1818, &outputStructCnt);
  if (v15)
  {
    v39 = v15;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 136446978;
    *&buf[4] = "Apple80211BindToInterfaceWithService";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    *&buf[22] = 1024;
    *&buf[24] = v39;
    *&buf[28] = 1024;
    *&buf[30] = v39;
    v36 = MEMORY[0x277D86220];
    v37 = "%{public}s: %@ isDKSupported query failed with %d/0x%08x";
    goto LABEL_54;
  }

  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  *(v6 + 12) = 0;
  *(v6 + 101) = 0;
  *(v6 + 11) = 0;
  __strlcpy_chk();
  v58 = v6 + 22;
  LODWORD(v57) = 12;
  DWORD2(v57) = 21;
  if (Apple80211RawGet(v6, &v56))
  {
    goto LABEL_56;
  }

  if (!v7)
  {
LABEL_33:
    v24 = *(v6 + 247);
    if (v24)
    {
      label = dispatch_queue_get_label(*(v6 + 247));
    }

    else
    {
      label = "";
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      if (*(v6 + 1817))
      {
        v26 = "TRUE";
      }

      else
      {
        v26 = "FALSE";
      }

      v27 = *(v6 + 230);
      v28 = v6[455];
      v29 = *(v6 + 231);
      v50 = *(v6 + 243);
      KernelRetainCount = IOObjectGetKernelRetainCount(v5);
      UserRetainCount = IOObjectGetUserRetainCount(v5);
      *buf = 136449282;
      *&buf[4] = "Apple80211BindToInterfaceWithService";
      *&buf[12] = 2112;
      *&buf[14] = v3;
      *&buf[22] = 2082;
      *&buf[24] = v26;
      *&buf[32] = 1024;
      *&buf[34] = v5;
      *&buf[38] = 2048;
      *&buf[40] = v6;
      *&buf[48] = 2048;
      *&buf[50] = v27;
      *&buf[58] = 2048;
      *&buf[60] = v24;
      *&buf[68] = 2080;
      *&buf[70] = label;
      *&buf[78] = 1024;
      *&buf[80] = v28;
      *&buf[84] = 2048;
      *&buf[86] = v29;
      *&buf[94] = 2048;
      *&v54 = v50;
      WORD4(v54) = 1024;
      *(&v54 + 10) = KernelRetainCount;
      HIWORD(v54) = 1024;
      LODWORD(v55) = UserRetainCount;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: %@ useIOUCWhenPossible %{public}s, service:%u opaque:%p, ioucQueue[%p] serviceNotificationQueue[%p]/dq:'%s' connect[%u] port[%p] runLoop[%p] kretain[%u] uretain[%u]\n", buf, 0x74u);
    }

    v32 = 0;
    goto LABEL_42;
  }

  if (!*(v6 + 247))
  {
    v54 = 0u;
    v55 = 0u;
    memset(buf, 0, sizeof(buf));
    snprintf(buf, 0x80uLL, "io80211-service-notification-q-%p", v6);
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(buf, v16);
    *(v6 + 247) = v17;
    if (!v17)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      LODWORD(v62) = 136315138;
      *(&v62 + 4) = "Apple80211BindToInterfaceWithService";
      v36 = MEMORY[0x277D86220];
      v37 = "%s: failed to create queue\n";
      v40 = &v62;
      v41 = 12;
      goto LABEL_55;
    }
  }

  v18 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  *(v6 + 248) = v18;
  if (!v18)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 136446466;
    *&buf[4] = "Apple80211BindToInterfaceWithService";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    v36 = MEMORY[0x277D86220];
    v37 = "%{public}s: %@ IONotificationPortCreate failed!! \n";
    goto LABEL_89;
  }

  IONotificationPortSetDispatchQueue(v18, *(v6 + 247));
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 136446466;
    *&buf[4] = "Apple80211BindToInterfaceWithService";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    v36 = MEMORY[0x277D86220];
    v37 = "%{public}s: %@ propertyDictionaryRef alloc failed!! \n";
LABEL_89:
    v40 = buf;
    v41 = 22;
    goto LABEL_55;
  }

  v20 = Mutable;
  CFDictionarySetValue(Mutable, @"IOInterfaceName", v3);
  v21 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v21)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "Apple80211BindToInterfaceWithService";
      *&buf[12] = 2112;
      *&buf[14] = v3;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: %@ matchingServiceDict alloc failed!! \n", buf, 0x16u);
    }

    goto LABEL_57;
  }

  v22 = v21;
  CFDictionarySetValue(v21, @"IOPropertyMatch", v20);
  CFRetain(v22);
  if (IOServiceAddMatchingNotification(*(v6 + 248), "IOServiceMatched", v22, _Apple80211ServiceMatchedCallback, v6, v6 + 500))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_58;
    }

    *buf = 136446466;
    *&buf[4] = "Apple80211BindToInterfaceWithService";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    v48 = MEMORY[0x277D86220];
    v49 = "%{public}s: %@ Failed to add Publish notification!! \n";
    goto LABEL_96;
  }

  _Apple80211ServiceMatchedCallback(v6, v6[500]);
  if (!IOServiceAddMatchingNotification(*(v6 + 248), "IOServiceTerminate", v22, _Apple80211ServiceTerminatedCallback, v6, v6 + 501))
  {
    _Apple80211ServiceTerminatedCallback(v6, v6[501]);
    v23 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v6 + 247));
    *(v6 + 249) = v23;
    dispatch_set_context(v23, v6);
    dispatch_source_set_event_handler_f(*(v6 + 249), _serviceMatchingDelayedCallback);
    dispatch_activate(*(v6 + 249));
    CFRelease(v20);
    goto LABEL_33;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "Apple80211BindToInterfaceWithService";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    v48 = MEMORY[0x277D86220];
    v49 = "%{public}s: %@ Failed to add Terminated notification!! \n";
LABEL_96:
    _os_log_impl(&dword_254882000, v48, OS_LOG_TYPE_DEFAULT, v49, buf, 0x16u);
  }

LABEL_58:
  v42 = *(v6 + 248);
  if (v42)
  {
    IONotificationPortDestroy(v42);
    *(v6 + 248) = 0;
  }

  v43 = v6[455];
  if (v43)
  {
    v6[455] = 0;
    IOServiceClose(v43);
  }

  memset(buffer, 170, sizeof(buffer));
  if (!v3 || (*v6 & 0x80000000) != 0 || !CFStringGetCString(v3, buffer, 16, 0x8000100u))
  {
    goto LABEL_78;
  }

  theArray = 0;
  if (!_getIfListCopy(v6, &theArray))
  {
    v44 = theArray;
    v69.length = CFArrayGetCount(theArray);
    v69.location = 0;
    if (CFArrayContainsValue(v44, v69, v3) && (_isVirtualInterface(v3, v5) || _isInfraInterface(v3, v5)))
    {
      CFRelease(theArray);
      goto LABEL_70;
    }

    CFRelease(theArray);
LABEL_78:
    v32 = 4294963396;
LABEL_79:
    *(v6 + 3) = 0;
    *(v6 + 1) = 0;
    if (v20)
    {
      CFRelease(v20);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "Apple80211BindToInterfaceWithService";
      *&buf[12] = 2112;
      *&buf[14] = v3;
      *&buf[22] = 1024;
      *&buf[24] = v32;
      *&buf[28] = 1024;
      *&buf[30] = v32;
      _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s: FAILED to bind to interface %@ - %d/0x%08x", buf, 0x22u);
    }

    goto LABEL_42;
  }

LABEL_70:
  v65 = 0u;
  v66 = 0u;
  __strlcpy_chk();
  v45 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  ioctl(*v6, 0xC0206911uLL, &v65);
  v46 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v45;
  if (v46 > 0x3B9AC9FF && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136448258;
    *&buf[4] = "_logTimeIfThresholdExceeded";
    *&buf[12] = 2082;
    *&buf[14] = &v65;
    *&buf[22] = 2080;
    *&buf[24] = " 'SIOCGIFFLAGS' ";
    *&buf[32] = 1024;
    *&buf[34] = -1071617775;
    *&buf[38] = 1024;
    *&buf[40] = -1071617775;
    *&buf[44] = 2048;
    *&buf[46] = v46 / 0x3B9ACA00;
    *&buf[54] = 2048;
    *&buf[56] = v46 % 0x3B9ACA00 / 0x3E8;
    *&buf[64] = 2048;
    *&buf[66] = 1;
    *&buf[74] = 2048;
    *&buf[76] = 0;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: ['%{public}s']%s: ioctl[0x%08x/%u] [%llu.%06llu] Exceeded threshold >= [%llu.%06llu]\n", buf, 0x54u);
  }

  __strlcpy_chk();
  v62 = 0u;
  v63 = 0u;
  v64 = 0;
  *(v6 + 12) = 0;
  *(v6 + 101) = 0;
  *(v6 + 11) = 0;
  __strlcpy_chk();
  v64 = v6 + 22;
  LODWORD(v63) = 12;
  DWORD2(v63) = 21;
  v32 = ioctl(*v6, 0xC02869C9uLL, &v62);
  v47 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136448002;
    *&buf[4] = "Apple80211BindToInterfaceWithIOCTL";
    *&buf[12] = 2048;
    *&buf[14] = v47 / 0x3B9ACA00;
    *&buf[22] = 2048;
    *&buf[24] = v47 % 0x3B9ACA00 / 0x3E8;
    *&buf[32] = 2112;
    *&buf[34] = v3;
    *&buf[42] = 2082;
    *&buf[44] = v6 + 1;
    *&buf[52] = 1024;
    *&buf[54] = v66;
    *&buf[58] = 1024;
    *&buf[60] = v32;
    *&buf[64] = 1024;
    *&buf[66] = v32;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: @[%llu.%06llu] WARNING: %@ Falling back to IOCTL path, ifname['%{public}s']/0x%08x err %d/0x%08x\n", buf, 0x46u);
  }

  *(v6 + 1817) = 0;
  if (v32)
  {
    goto LABEL_79;
  }

LABEL_42:
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t Apple80211RawGet(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(a2 + 24) >= 0x3C01u)
  {
    if (*(a1 + 109))
    {
      v6 = *MEMORY[0x277D85DE8];

      return _Apple80211AWDLCompatibilityCall();
    }

    else
    {
      v7 = *(a2 + 16);
      if (*(a1 + 1817))
      {
        v8 = malloc_type_malloc(0x3C030uLL, 0x1000040135F6BA2uLL);
        if (v8)
        {
          v9 = v8;
          v10 = (v8 + 61440);
          bzero(v8 + 1, 0x3C02CuLL);
          *v9 = -1071093303;
          v11 = a1 + 4;
          __strlcpy_chk();
          *(v10 + 6) = v7;
          v12 = (a2 + 20);
          *(v10 + 7) = *(a2 + 20);
          if (*(a1 + 2008))
          {
            v13 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              if (v7 > 584)
              {
                v14 = "Error Invalid ioctl";
              }

              else if (v7 == -1)
              {
                v14 = "APPLE80211_IOC_CARD_SPECIFIC";
              }

              else if (v7 < 0 || (v14 = gAppleIoucIndexToString[v7]) == 0)
              {
                v14 = "unknown Apple80211_IOC_";
              }

              v22 = *(a2 + 24);
              *buf = 136448002;
              v37 = "_Apple80211LargeIOCTLGetWrapper";
              v38 = 1024;
              *v39 = 469;
              *&v39[4] = 2048;
              *&v39[6] = v13 / 0x3B9ACA00;
              *&v39[14] = 2048;
              *&v39[16] = v13 % 0x3B9ACA00 / 0x3E8;
              v40 = 2082;
              *v41 = a1 + 4;
              *&v41[8] = 1024;
              *&v41[10] = v7;
              v42 = 2082;
              *v43 = v14;
              *&v43[8] = 1024;
              *&v43[10] = v22;
              _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s:%u @[%llu.%06llu] ifname['%{public}s'] IOUC type %d/'%{public}s', len[%d]\n", buf, 0x46u);
            }
          }

          v23 = *(a2 + 24);
          if (v23 <= 0x3C000)
          {
            if (v23)
            {
              v9[1] = v23;
              v24 = *(a2 + 32);
              __memcpy_chk();
            }

            if (*(a2 + 32))
            {
              v25 = *(a2 + 24);
              if (v25)
              {
                v12 = *(a2 + 32);
              }

              else
              {
                v25 = 4;
              }
            }

            else
            {
              v25 = 4;
            }

            outputStructCnt[0] = v25;
            v21 = IOConnectCallStructMethod(*(a1 + 1820), 6u, v9, 0x3C030uLL, v12, outputStructCnt);
            if (v21)
            {
              *__error() = v21;
              v26 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                if (v7 > 584)
                {
                  v27 = "Error Invalid ioctl";
                }

                else if (v7 == -1)
                {
                  v27 = "APPLE80211_IOC_CARD_SPECIFIC";
                }

                else if (v7 < 0 || (v27 = gAppleIoucIndexToString[v7]) == 0)
                {
                  v27 = "unknown Apple80211_IOC_";
                }

                v32 = *(a2 + 24);
                *buf = 136448258;
                v37 = "_Apple80211LargeIOCTLGetWrapper";
                v38 = 1024;
                *v39 = 499;
                *&v39[4] = 2048;
                *&v39[6] = v26 / 0x3B9ACA00;
                *&v39[14] = 2048;
                *&v39[16] = v26 % 0x3B9ACA00 / 0x3E8;
                v40 = 2082;
                *v41 = v11;
                *&v41[8] = 1024;
                *&v41[10] = v7;
                v42 = 2082;
                *v43 = v27;
                *&v43[8] = 1024;
                *&v43[10] = v32;
                *&v43[14] = 1024;
                *&v43[16] = v21;
                _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s:%u @[%llu.%06llu] ifname['%{public}s'] IOUC type %d/'%{public}s', len[%d] return %d\n", buf, 0x4Cu);
              }
            }

            else
            {
              *(a2 + 24) = outputStructCnt[0];
            }

            free(v9);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v37 = "_Apple80211LargeIOCTLGetWrapper";
              v38 = 1024;
              *v39 = v23;
              _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Invalid length %d\n", buf, 0x12u);
            }

            free(v9);
            v21 = 22;
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            if (v7 > 584)
            {
              v20 = "Error Invalid ioctl";
            }

            else if (v7 == -1)
            {
              v20 = "APPLE80211_IOC_CARD_SPECIFIC";
            }

            else if (v7 < 0 || (v20 = gAppleIoucIndexToString[v7]) == 0)
            {
              v20 = "unknown Apple80211_IOC_";
            }

            *buf = 136446722;
            v37 = "_Apple80211LargeIOCTLGetWrapper";
            v38 = 1024;
            *v39 = v7;
            *&v39[4] = 2082;
            *&v39[6] = v20;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: Memory allocation failed for apple80211IOUCReqV2, type %d/'%{public}s'\n", buf, 0x1Cu);
          }

          v21 = 12;
        }
      }

      else
      {
        *outputStructCnt = 0u;
        v35 = 0u;
        v15 = a1 + 4;
        __strlcpy_chk();
        v16 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        ioctl(*a1, 0xC0206911uLL, outputStructCnt);
        v17 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v16;
        if (v17 > 0x3B9AC9FF && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136448258;
          v37 = "_logTimeIfThresholdExceeded";
          v38 = 2082;
          *v39 = outputStructCnt;
          *&v39[8] = 2080;
          *&v39[10] = " 'SIOCGIFFLAGS' ";
          *&v39[18] = 1024;
          *&v39[20] = -1071617775;
          v40 = 1024;
          *v41 = -1071617775;
          *&v41[4] = 2048;
          *&v41[6] = v17 / 0x3B9ACA00;
          v42 = 2048;
          *v43 = v17 % 0x3B9ACA00 / 0x3E8;
          *&v43[8] = 2048;
          *&v43[10] = 1;
          *&v43[18] = 2048;
          v44 = 0;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: ['%{public}s']%s: ioctl[0x%08x/%u] [%llu.%06llu] Exceeded threshold >= [%llu.%06llu]\n", buf, 0x54u);
        }

        __strlcpy_chk();
        if (*(a1 + 2008))
        {
          v18 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            if (v7 > 584)
            {
              v19 = "Error Invalid ioctl";
            }

            else if (v7 == -1)
            {
              v19 = "APPLE80211_IOC_CARD_SPECIFIC";
            }

            else if (v7 < 0 || (v19 = gAppleIoucIndexToString[v7]) == 0)
            {
              v19 = "unknown Apple80211_IOC_";
            }

            v28 = *(a2 + 24);
            *buf = 136448258;
            v37 = "_Apple80211LargeIOCTLGetWrapper";
            v38 = 1024;
            *v39 = 521;
            *&v39[4] = 2048;
            *&v39[6] = v18 / 0x3B9ACA00;
            *&v39[14] = 2048;
            *&v39[16] = v18 % 0x3B9ACA00 / 0x3E8;
            v40 = 2082;
            *v41 = a1 + 4;
            *&v41[8] = 1024;
            *&v41[10] = v35;
            v42 = 1024;
            *v43 = v7;
            *&v43[4] = 2082;
            *&v43[6] = v19;
            *&v43[14] = 1024;
            *&v43[16] = v28;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s:%u @[%llu.%06llu] ifname['%{public}s']/0x%08x IOCTL type %d/'%{public}s', len[%d]\n", buf, 0x4Cu);
          }
        }

        v21 = ioctl(*a1, 0xC02869C9uLL, a2);
        if (v21)
        {
          v29 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            if (v7 > 584)
            {
              v30 = "Error Invalid ioctl";
            }

            else if (v7 == -1)
            {
              v30 = "APPLE80211_IOC_CARD_SPECIFIC";
            }

            else if (v7 < 0 || (v30 = gAppleIoucIndexToString[v7]) == 0)
            {
              v30 = "unknown Apple80211_IOC_";
            }

            v31 = *(a2 + 24);
            *buf = 136448514;
            v37 = "_Apple80211LargeIOCTLGetWrapper";
            v38 = 1024;
            *v39 = 527;
            *&v39[4] = 2048;
            *&v39[6] = v29 / 0x3B9ACA00;
            *&v39[14] = 2048;
            *&v39[16] = v29 % 0x3B9ACA00 / 0x3E8;
            v40 = 2082;
            *v41 = v15;
            *&v41[8] = 1024;
            *&v41[10] = v35;
            v42 = 1024;
            *v43 = v7;
            *&v43[4] = 2082;
            *&v43[6] = v30;
            *&v43[14] = 1024;
            *&v43[16] = v31;
            LOWORD(v44) = 1024;
            *(&v44 + 2) = v21;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s:%u @[%llu.%06llu] ifname['%{public}s']/0x%08x IOCTL type %d/'%{public}s', len[%d] return %d\n", buf, 0x52u);
          }
        }
      }

      v33 = *MEMORY[0x277D85DE8];
      return v21;
    }
  }

  else
  {
    v4 = *MEMORY[0x277D85DE8];

    return Apple80211IOCTLGetWrapper();
  }
}

uint64_t Apple80211EventMonitoringHalt(uint64_t a1)
{
  v4[5] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    dispatch_group_enter(*(a1 + 2112));
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 0x40000000;
    v4[2] = __Apple80211EventMonitoringHalt_block_invoke;
    v4[3] = &__block_descriptor_tmp_81;
    v4[4] = a1;
    result = _Apple80211EventMonitoringHalt2(a1, v4);
  }

  else
  {
    result = 4294963396;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void _Apple80211ServiceMatchedCallback(uint64_t a1, io_iterator_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v9 = "_Apple80211ServiceMatchedCallback";
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Enter: %{public}s\n", buf, 0xCu);
  }

  if (a1)
  {
    v4 = IOIteratorNext(a2);
    if (v4)
    {
      v5 = v4;
      v6 = MEMORY[0x277D86220];
      do
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v9 = "_Apple80211ServiceMatchedCallback";
          v10 = 1024;
          v11 = v5;
          v12 = 2048;
          v13 = a1;
          _os_log_impl(&dword_254882000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: service:%u opaque:%p\n", buf, 0x1Cu);
        }

        _Apple80211IOUCResume();
        IOObjectRelease(v5);
        v5 = IOIteratorNext(a2);
      }

      while (v5);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v9 = "_Apple80211ServiceMatchedCallback";
    v10 = 1024;
    v11 = 0;
    v12 = 2048;
    v13 = 0;
    _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s: service:%u opaque:%p, No opaque, bailing\n", buf, 0x1Cu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void _Apple80211IOUCResume()
{
  v0 = MEMORY[0x28223BE20]();
  v38 = *MEMORY[0x277D85DE8];
  *(v0 + 2024) = 0;
  v1 = *(v0 + 1820);
  v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (!v1)
  {
    if (v2)
    {
      v7 = *(v0 + 1848);
      *buf = 136447234;
      v31 = "_Apple80211IOUCResume";
      v32 = 2082;
      v33 = (v0 + 4);
      v34 = 2048;
      *&v35[8] = 1024;
      *&v35[10] = 0;
      v36 = 2048;
      *v35 = v0;
      v37 = v7;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: ifname:%{public}s opaque:%p, connect[%u] port[%p]\n", buf, 0x30u);
    }

    v8 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (v0 + 4), 0x8000100u);
    if (!v8)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v31 = "_Apple80211IOUCResume";
      v4 = MEMORY[0x277D86220];
      v5 = "%{public}s: ifNameRef Null \n";
      v6 = 12;
      goto LABEL_4;
    }

    v9 = v8;
    Service = _Apple80211FindService(v8);
    if (!Service)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v31 = "_Apple80211IOUCResume";
        v32 = 2112;
        v33 = v9;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: %@ Not able to find DK Service! \n", buf, 0x16u);
      }

      goto LABEL_18;
    }

    v11 = Service;
    v12 = IOServiceOpen(Service, *MEMORY[0x277D85F48], 0, (v0 + 1820));
    if (v12)
    {
      v18 = v12;
      if (v12 == -536870174 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        *buf = 136446978;
        v31 = "_Apple80211IOUCResume";
        v32 = 2114;
        v33 = v9;
        v34 = 1024;
        *v35 = -536870174;
        *&v35[4] = 1024;
        *&v35[6] = -536870174;
        _os_log_fault_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%{public}s: %{public}@ IOServiceOpen failed with %d/0x%08x", buf, 0x22u);
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      *buf = 136446722;
      v31 = "_Apple80211IOUCResume";
      v32 = 2114;
      v33 = v9;
      v34 = 1024;
      *v35 = v18;
      v19 = MEMORY[0x277D86220];
      v20 = "%{public}s: %{public}@ IOServiceOpen failed with %d";
      goto LABEL_35;
    }

    bzero(inputStruct, 0x3C30uLL);
    inputStruct[0] = -1071093303;
    __strlcpy_chk();
    inputStruct[3846] = 43;
    memset(outputStruct, 0, sizeof(outputStruct));
    v28 = 0;
    outputStructCnt = 256;
    v13 = IOConnectCallStructMethod(*(v0 + 1820), 0, inputStruct, 0x3C30uLL, outputStruct, &outputStructCnt);
    v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v14)
      {
        *buf = 136315650;
        v31 = "_Apple80211IOUCResume";
        v32 = 2114;
        v33 = v9;
        v34 = 1024;
        *v35 = v13;
        v19 = MEMORY[0x277D86220];
        v20 = "%s: %{public}@ Driver version query failed with %d";
LABEL_35:
        _os_log_impl(&dword_254882000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0x1Cu);
      }
    }

    else
    {
      if (v14)
      {
        *buf = 136446722;
        v31 = "_Apple80211IOUCResume";
        v32 = 2114;
        v33 = v9;
        v34 = 2082;
        *v35 = outputStruct;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}@ Sanity test passed. Version - %{public}s", buf, 0x20u);
      }

      outputStructCnt = 1;
      v15 = IOConnectCallStructMethod(*(v0 + 1820), 1u, 0, 0, (v0 + 1817), &outputStructCnt);
      if (!v15)
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        *(v0 + 96) = 0;
        *(v0 + 101) = 0;
        *(v0 + 88) = 0;
        __strlcpy_chk();
        v26 = v0 + 88;
        LODWORD(v25) = 12;
        DWORD2(v25) = 21;
        if (Apple80211RawGet(v0, &v24))
        {
          goto LABEL_17;
        }

        if (!*(v0 + 72))
        {
          goto LABEL_17;
        }

        inited = Apple80211EventMonitoringInitIOUC(v0, *(v0 + 1840), *(v0 + 1944));
        if (!inited)
        {
          goto LABEL_17;
        }

        v22 = inited;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        *buf = 136446722;
        v31 = "_Apple80211IOUCResume";
        v32 = 2114;
        v33 = v9;
        v34 = 1024;
        *v35 = v22;
        v19 = MEMORY[0x277D86220];
        v20 = "%{public}s: %{public}@ IOUC event pipe creation failed! %d";
        goto LABEL_35;
      }

      v21 = v15;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v31 = "_Apple80211IOUCResume";
        v32 = 2114;
        v33 = v9;
        v34 = 1024;
        *v35 = v21;
        v19 = MEMORY[0x277D86220];
        v20 = "%{public}s: %{public}@ useIOUCWhenPossible query failed with %d";
        goto LABEL_35;
      }
    }

LABEL_17:
    IOObjectRelease(v11);
LABEL_18:
    CFRelease(v9);
    goto LABEL_19;
  }

  if (v2)
  {
    v3 = *(v0 + 1848);
    *buf = 136446978;
    v31 = "_Apple80211IOUCResume";
    v32 = 2048;
    v33 = v0;
    v34 = 1024;
    *v35 = v1;
    *&v35[4] = 2048;
    *&v35[6] = v3;
    v4 = MEMORY[0x277D86220];
    v5 = "%{public}s: IOUC already opened for opaque:%p, connect[%u] port[%p]\n";
    v6 = 38;
LABEL_4:
    _os_log_impl(&dword_254882000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, v6);
  }

LABEL_19:
  v17 = *MEMORY[0x277D85DE8];
}

void _Apple80211ServiceTerminatedCallback(uint64_t a1, io_iterator_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v54 = 0;
    v55 = 0;
    v3 = *(a1 + 1976);
    v27 = *(a1 + 1840);
    v28 = *(a1 + 1944);
    v26 = *(a1 + 1848);
    v24 = *(a1 + 1820);
    v25 = *(a1 + 2120);
    label = dispatch_queue_get_label(0);
    if (label)
    {
      v5 = label;
    }

    else
    {
      v5 = "";
    }

    v23 = v5;
    v29 = v3;
    if (v3)
    {
      v22 = dispatch_queue_get_label(v3);
    }

    else
    {
      v22 = "";
    }

    __strlcpy_chk();
    HIBYTE(v55) = 0;
    v6 = IOIteratorNext(a2);
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v30 = *MEMORY[0x277CBF058];
      do
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136449282;
          v40 = "_Apple80211ServiceTerminatedCallback";
          v41 = 1024;
          v42 = 9865;
          v43 = 2082;
          v44 = &v54;
          v45 = 2082;
          *v46 = v23;
          *&v46[8] = 1024;
          *v47 = v7;
          *&v47[4] = 2048;
          *&v47[6] = a1;
          *&v47[14] = 2048;
          *&v47[16] = v27;
          *&v47[24] = 2048;
          *&v47[26] = v29;
          *&v47[34] = 2082;
          *&v47[36] = v22;
          *&v47[44] = 1024;
          *&v47[46] = v24;
          v48 = 2048;
          v49 = v26;
          v50 = 2048;
          v51 = v28;
          v52 = 1024;
          v53 = v25;
          _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s/%u: '%{public}s' dq:'%{public}s', service:%u opaque:%p, ioucQueue[%p] serviceQ[%p]/sq:'%{public}s' connect[%u] port[%p] runLoop[%p] allowRunLoop[%u]\n", buf, 0x74u);
        }

        v56 = 0;
        v57 = 0;
        v32 = *(a1 + 1976);
        v9 = *(a1 + 1944);
        v10 = *(a1 + 1840);
        v11 = dispatch_queue_get_label(0);
        if (v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = "";
        }

        __strlcpy_chk();
        HIBYTE(v57) = 0;
        current_queue = dispatch_get_current_queue();
        v14 = *(a1 + 1976);
        v15 = *(a1 + 1840);
        if (v14)
        {
          if (v15)
          {
            v16 = v14 == v15;
          }

          else
          {
            v16 = 1;
          }

          v17 = !v16;
          if (v15)
          {
LABEL_27:
            v18 = 0;
            goto LABEL_28;
          }
        }

        else
        {
          v17 = 0;
          if (v15)
          {
            goto LABEL_27;
          }
        }

        if (!*(a1 + 1944))
        {
          goto LABEL_27;
        }

        v18 = *(a1 + 2120);
LABEL_28:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136448770;
          v40 = "_processApple8021180211ServiceTerminatedCallback";
          v41 = 1024;
          v42 = 9789;
          v43 = 2082;
          v44 = &v56;
          v45 = 1024;
          *v46 = v8;
          *&v46[4] = 1024;
          *&v46[6] = v7;
          *v47 = 2048;
          *&v47[2] = a1;
          *&v47[10] = 2048;
          *&v47[12] = v10;
          *&v47[20] = 2048;
          *&v47[22] = v9;
          *&v47[30] = 2048;
          *&v47[32] = v32;
          *&v47[40] = 2048;
          *&v47[42] = current_queue;
          v48 = 2082;
          v49 = v12;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s/%u: '%{public}s' [%u] service:%u opaque:%p, ioucQueue[%p] ioucRunLoop[%p] serviceQ[%p] currentQ[%p] dq:'%{public}s', pre halting ...\n", buf, 0x64u);
        }

        if (v18)
        {
          v19 = CFRetain(*(a1 + 1944));
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = ___processApple8021180211ServiceTerminatedCallback_block_invoke;
          block[3] = &__block_descriptor_tmp_1944;
          block[4] = a1;
          v37 = v7;
          v38 = v8;
          CFRunLoopPerformBlock(v19, v30, block);
          CFRunLoopWakeUp(v19);
          CFRelease(v19);
        }

        else if (v17)
        {
          v20 = *(a1 + 1840);
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 0x40000000;
          v33[2] = ___processApple8021180211ServiceTerminatedCallback_block_invoke_2;
          v33[3] = &__block_descriptor_tmp_1946;
          v34 = v7;
          v35 = v8;
          v33[4] = a1;
          v33[5] = current_queue;
          dispatch_sync(v20, v33);
        }

        else
        {
          _processApple8021180211ServiceTerminatedCallbackHaltHelper(a1, v7, v8, current_queue, "not serialized, on proper queue");
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136448770;
          v40 = "_processApple8021180211ServiceTerminatedCallback";
          v41 = 1024;
          v42 = 9830;
          v43 = 2082;
          v44 = &v56;
          v45 = 1024;
          *v46 = v8;
          *&v46[4] = 1024;
          *&v46[6] = v7;
          *v47 = 2048;
          *&v47[2] = a1;
          *&v47[10] = 2048;
          *&v47[12] = v10;
          *&v47[20] = 2048;
          *&v47[22] = v9;
          *&v47[30] = 2048;
          *&v47[32] = v32;
          *&v47[40] = 2048;
          *&v47[42] = current_queue;
          v48 = 2082;
          v49 = v12;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s/%u: '%{public}s' [%u] service:%u opaque:%p, ioucQueue[%p] ioucRunLoop[%p] serviceQ[%p] currentQ[%p] dq:'%{public}s', ... post halted\n", buf, 0x64u);
        }

        IOObjectRelease(v7);
        ++v8;
        v7 = IOIteratorNext(a2);
      }

      while (v7);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v40 = "_Apple80211ServiceTerminatedCallback";
    _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s: No opaque, bailing\n", buf, 0xCu);
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t Apple80211Close(uint64_t a1)
{
  v6[5] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (*(a1 + 1976))
    {
      v2 = *(a1 + 1976);
    }

    else
    {
      v2 = *(a1 + 2104);
    }

    v3 = *(a1 + 2112);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = __Apple80211Close_block_invoke;
    v6[3] = &__block_descriptor_tmp_87;
    v6[4] = a1;
    dispatch_group_notify(v3, v2, v6);
    if (*(a1 + 1848) || *(a1 + 64) || *(a1 + 56))
    {
      Apple80211EventMonitoringHalt(a1);
    }

    dispatch_group_leave(*(a1 + 2112));
    result = 0;
  }

  else
  {
    result = 4294963396;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __Apple80211Close_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    pthread_mutex_destroy((v1 + 272));
    pthread_mutex_destroy((v1 + 160));
    pthread_mutex_destroy((v1 + 1608));
    v2 = *(v1 + 1992);
    if (v2)
    {
      dispatch_source_cancel(v2);
      dispatch_release(*(v1 + 1992));
      *(v1 + 1992) = 0;
    }

    v3 = *(v1 + 1984);
    if (v3)
    {
      IONotificationPortDestroy(v3);
      *(v1 + 1984) = 0;
    }

    v4 = *(v1 + 1976);
    if (v4)
    {
      dispatch_release(v4);
      *(v1 + 1976) = 0;
    }

    v5 = *(v1 + 112);
    if (v5)
    {
      CFRelease(v5);
      *(v1 + 112) = 0;
    }

    pthread_mutex_destroy((v1 + 1680));
    pthread_mutex_destroy((v1 + 1752));
    *(v1 + 1817) = 0;
    if ((*v1 & 0x80000000) == 0)
    {
      close(*v1);
    }

    v6 = *(v1 + 1820);
    if (v6)
    {
      *(v1 + 1820) = 0;
      IOServiceClose(v6);
    }

    v7 = *(v1 + 2000);
    if (v7)
    {
      IOObjectRelease(v7);
    }

    v8 = *(v1 + 2004);
    if (v8)
    {
      IOObjectRelease(v8);
    }

    v9 = *(v1 + 2112);
    if (v9)
    {
      dispatch_release(v9);
      *(v1 + 2112) = 0;
    }

    v10 = *(v1 + 2104);
    if (v10)
    {
      dispatch_release(v10);
      *(v1 + 2104) = 0;
    }

    v11 = *(v1 + 144);
    if (v11)
    {
      CFRelease(v11);
    }

    *(v1 + 12) = 0;
    *(v1 + 4) = 0;

    free(v1);
  }
}

void _dispatchObssMitInfoEvent(uint64_t a1, char *a2, int a3)
{
  if (!a2)
  {
    return;
  }

  if (a3 != 44)
  {
    return;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return;
  }

  v6 = Mutable;
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2 + 20);
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(v6, @"LAST_OBSS_STATS_TIME", v8);
    v10 = CFNumberCreate(v7, kCFNumberSInt8Type, a2);
    if (!v10)
    {
      v28 = v9;
LABEL_46:
      CFRelease(v28);
      goto LABEL_47;
    }

    v11 = v10;
    CFDictionaryAddValue(v6, @"SHOULD_APPLY_OBSS_MIT", v10);
    v12 = CFNumberCreate(v7, kCFNumberSInt8Type, a2 + 1);
    v39 = v12;
    v40 = v11;
    if (v12 && (CFDictionaryAddValue(v6, @"IS_OBSS_MIT_APPLIED", v12), (v13 = CFNumberCreate(v7, kCFNumberSInt8Type, a2 + 2)) != 0))
    {
      v38 = v13;
      CFDictionaryAddValue(v6, @"CURRENT_OP_BW", v13);
      v14 = CFNumberCreate(v7, kCFNumberSInt8Type, a2 + 3);
      if (v14)
      {
        v37 = v14;
        CFDictionaryAddValue(v6, @"RECOMM_OBSS_MIT_BW", v14);
        v15 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 4);
        if (v15)
        {
          v36 = v15;
          CFDictionaryAddValue(v6, @"OBSS_RX_PLCP_ERR", v15);
          v16 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 8);
          if (v16)
          {
            v35 = v16;
            CFDictionaryAddValue(v6, @"OBSS_RX_BAD_FCS_ERR", v16);
            v17 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 12);
            if (v17)
            {
              v34 = v17;
              CFDictionaryAddValue(v6, @"OBSS_RX_FRAMES", v17);
              v18 = CFNumberCreate(v7, kCFNumberSInt32Type, a2 + 16);
              if (v18)
              {
                CFDictionaryAddValue(v6, @"OBSS_RX_PER_PCT", v18);
                v19 = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
                if (v19)
                {
                  v20 = 0;
                  v21 = 1;
                  while (1)
                  {
                    v22 = v21;
                    v23 = CFNumberCreate(v7, kCFNumberSInt8Type, &a2[v20 + 40]);
                    if (!v23)
                    {
                      break;
                    }

                    CFArrayAppendValue(v19, v23);
                    CFRelease(v23);
                    v21 = 0;
                    v20 = 1;
                    if ((v22 & 1) == 0)
                    {
                      CFDictionaryAddValue(v6, @"OBSS_MIT_SOI", v19);
                      v23 = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
                      if (!v23)
                      {
                        break;
                      }

                      cf = v9;
                      v24 = a2 + 24;
                      v25 = 8;
                      do
                      {
                        v26 = CFNumberCreate(v7, kCFNumberSInt8Type, v24);
                        if (!v26)
                        {
                          v28 = 0;
                          goto LABEL_26;
                        }

                        v27 = v26;
                        CFArrayAppendValue(v23, v26);
                        CFRelease(v27);
                        ++v24;
                        --v25;
                      }

                      while (v25);
                      CFDictionaryAddValue(v6, @"OBSS_PWREST_CORE0", v23);
                      v28 = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
                      if (v28)
                      {
                        v29 = a2 + 32;
                        v30 = 8;
                        while (1)
                        {
                          v31 = CFNumberCreate(v7, kCFNumberSInt8Type, v29);
                          if (!v31)
                          {
                            break;
                          }

                          v32 = v31;
                          CFArrayAppendValue(v28, v31);
                          CFRelease(v32);
                          ++v29;
                          if (!--v30)
                          {
                            CFDictionaryAddValue(v6, @"OBSS_PWREST_CORE1", v28);
                            (*(a1 + 72))(0, a1, 218, v6, 8, *(a1 + 80));
                            break;
                          }
                        }
                      }

LABEL_26:
                      v9 = cf;
                      goto LABEL_27;
                    }
                  }

LABEL_59:
                  v28 = 0;
LABEL_27:
                  CFRelease(v9);
                  CFRelease(v40);
                  if (v39)
                  {
                    CFRelease(v39);
                  }

                  if (v38)
                  {
                    CFRelease(v38);
                  }

                  if (v37)
                  {
                    CFRelease(v37);
                  }

                  if (v36)
                  {
                    CFRelease(v36);
                  }

                  if (v35)
                  {
                    CFRelease(v35);
                  }

                  if (v34)
                  {
                    CFRelease(v34);
                  }

                  if (v18)
                  {
                    CFRelease(v18);
                  }

                  if (v19)
                  {
                    CFRelease(v19);
                  }

                  if (v23)
                  {
                    CFRelease(v23);
                  }

                  if (!v28)
                  {
                    goto LABEL_47;
                  }

                  goto LABEL_46;
                }

LABEL_58:
                v23 = 0;
                goto LABEL_59;
              }

LABEL_57:
              v19 = 0;
              goto LABEL_58;
            }

LABEL_56:
            v34 = 0;
            v18 = 0;
            goto LABEL_57;
          }

LABEL_55:
          v35 = 0;
          goto LABEL_56;
        }

LABEL_54:
        v36 = 0;
        goto LABEL_55;
      }
    }

    else
    {
      v38 = 0;
    }

    v37 = 0;
    goto LABEL_54;
  }

LABEL_47:

  CFRelease(v6);
}

void _dispatchAsyncScanEvent(uint64_t a1, int a2, unsigned int a3)
{
  v47 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 160));
  v4 = *(a1 + 120);
  v5 = *(a1 + 121);
  v6 = *(a1 + 128);
  v7 = *(a1 + 129);
  Mutable = *(a1 + 240);
  v9 = *MEMORY[0x277CBECE8];
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if (!Mutable)
    {
      *(a1 + 2024) = 0;
      LODWORD(v18) = -3901;
      goto LABEL_38;
    }
  }

  v46 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v10;
  v45 = v10;
  memset(__b, 170, 0x8D8uLL);
  v11 = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
  if (v11)
  {
    v12 = *(a1 + 144);
    Value = CFDictionaryGetValue(v12, @"SCAN_SHORT_SSID");
    v14 = CFDictionaryGetValue(v12, @"SSID_STR");
    theDict = v12;
    v38 = CFDictionaryGetValue(v12, @"BSSID");
    v39 = Value;
    v15 = (v14 | v38 | Value) != 0;
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
    __strlcpy_chk();
    LODWORD(v45) = 11;
    DWORD2(v45) = 2264;
    v46 = __b;
    v16 = -10000;
    while (1)
    {
      bzero(__b, 0x8D8uLL);
      HIWORD(__b[34]) = 2048;
      if (*(a1 + 2024))
      {
        __strlcpy_chk();
      }

      if (Apple80211RawGet(a1, &v44))
      {
        break;
      }

      _addScanResultToList(a1, __b, v11, Mutable, 0, v4, v15, v5, v6, v7, 0, (*(a1 + 136) & 0x200) != 0);
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_10;
      }
    }

    if (v16 == -1)
    {
LABEL_10:
      LODWORD(v18) = -3902;
      goto LABEL_11;
    }

    if (*__error() == -528350138 || *__error() == 5)
    {
      if ((*(a1 + 99) & 0x40) != 0 && (*(a1 + 137) & 8) != 0)
      {
        v19 = CFDictionaryGetValue(theDict, @"SCAN_SSID_LIST");
        v20 = CFDictionaryGetValue(theDict, @"SCAN_BSSID_LIST");
        _Apple80211AddOriginatingRNRChannelListToScanResults(v11, Mutable, v39, v14, v38, v19, v20);
      }

      goto LABEL_19;
    }

    LODWORD(v18) = *__error();
    if (!v18)
    {
LABEL_19:
      LODWORD(v18) = 0;
      *(a1 + 240) = Mutable;
      goto LABEL_20;
    }
  }

  else
  {
    LODWORD(v18) = -3901;
  }

LABEL_11:
  if (!*(a1 + 240))
  {
    CFRelease(Mutable);
  }

LABEL_20:
  if (v11)
  {
    CFRelease(v11);
  }

  *(a1 + 2024) = 0;
  if (v18 != 16)
  {
    if (!v18)
    {
      v21 = *(a1 + 236) - 1;
      *(a1 + 236) = v21;
      if (v21 && (v22 = *(a1 + 144)) != 0 && (v23 = CFRetain(v22)) != 0)
      {
        v24 = v23;
        pthread_mutex_unlock((a1 + 160));
        LODWORD(v18) = Apple80211ScanAsync();
        CFRelease(v24);
        if (!v18)
        {
          goto LABEL_55;
        }
      }

      else
      {
        LODWORD(v18) = 0;
      }
    }

    goto LABEL_38;
  }

  v25 = *(a1 + 264);
  if (v25 > 4)
  {
    LODWORD(v18) = 16;
LABEL_38:
    v30 = *(a1 + 248);
    if (v30)
    {
      Current = CFAbsoluteTimeGetCurrent();
      CFRunLoopTimerSetNextFireDate(v30, Current + 315360000.0);
    }

    v32 = *(a1 + 256);
    if (v32)
    {
      v33 = dispatch_time(0, 315360000000000000);
      dispatch_source_set_timer(v32, v33, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    v34 = *(a1 + 144);
    v35 = *(a1 + 240);
    *(a1 + 224) = 0;
    *(a1 + 144) = 0;
    *(a1 + 240) = 0;
    *(a1 + 232) = 0;
    *(a1 + 236) = 0;
    *(a1 + 124) = 0x80000000;
    *(a1 + 128) = 0;
    pthread_mutex_unlock((a1 + 160));
    if (v18)
    {
      v36 = 1;
    }

    else
    {
      v36 = a2 == 0;
    }

    if (v36)
    {
      v18 = v18;
    }

    else
    {
      v18 = a3;
    }

    if (v18 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      __b[0] = 136315394;
      *&__b[1] = "_dispatchAsyncScanEvent";
      LOWORD(__b[3]) = 1024;
      *(&__b[3] + 2) = v18;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Error: posting APPLE80211_M_SCAN_DONE with err %d", __b, 0x12u);
    }

    (*(a1 + 72))(v18, a1, 10, v35, 8, *(a1 + 80));
    if (v34)
    {
      CFRelease(v34);
    }

    if (v35)
    {
      CFRelease(v35);
    }

    goto LABEL_55;
  }

  if (!v25)
  {
    v26 = *(a1 + 248);
    if (v26)
    {
      v27 = CFAbsoluteTimeGetCurrent();
      CFRunLoopTimerSetNextFireDate(v26, v27 + 0.2);
    }

    v28 = *(a1 + 256);
    if (v28)
    {
      v29 = dispatch_time(0, 200000000);
      dispatch_source_set_timer(v28, v29, 0xBEBC200uLL, 0);
    }
  }

  ++*(a1 + 264);
  pthread_mutex_unlock((a1 + 160));
LABEL_55:
  v37 = *MEMORY[0x277D85DE8];
}

void _Apple80211AddOriginatingRNRChannelListToScanResults(const __CFArray *a1, const __CFArray *a2, unint64_t a3, unint64_t a4, const __CFString *a5, const __CFArray *a6, const __CFArray *a7)
{
  v117 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_156;
  }

  v9 = *MEMORY[0x277CBECE8];
  theArray = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!theArray)
  {
    goto LABEL_156;
  }

  Mutable = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    CFRelease(theArray);
LABEL_156:
    v88 = *MEMORY[0x277D85DE8];
    return;
  }

  v95 = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
  if (v95)
  {
    v93 = a5;
    v99 = (a3 | a4 | a5) != 0;
    v110 = 0;
    v100 = a2;
    if (CFArrayGetCount(a2) >= 1)
    {
      v10 = *MEMORY[0x277CBED28];
      v104 = 1;
      allocator = v9;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v110);
        if (!ValueAtIndex)
        {
          goto LABEL_128;
        }

        v12 = ValueAtIndex;
        valuePtr = 0;
        Value = CFDictionaryGetValue(ValueAtIndex, @"CHANNEL_FLAGS");
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
        }

        v108 = 0;
        v14 = CFDictionaryGetValue(v12, @"CHANNEL");
        if (v14)
        {
          CFNumberGetValue(v14, kCFNumberSInt32Type, &v108);
        }

        v97 = v108;
        if (v99)
        {
          break;
        }

LABEL_35:
        if ((valuePtr & 0x2000) != 0)
        {
          v24 = CFDictionaryGetValue(v12, @"ORIG_RNR_CHANNEL_LIST");
          if (v104)
          {
            v25 = a1;
          }

          else
          {
            v25 = theArray;
          }

          if (CFArrayGetCount(v25) >= 1)
          {
            v26 = 0;
            v105 = v12;
            v103 = v25;
            while (1)
            {
              v27 = CFArrayGetValueAtIndex(v25, v26);
              if (v27)
              {
                break;
              }

LABEL_119:
              if (++v26 >= CFArrayGetCount(v25))
              {
                goto LABEL_122;
              }
            }

            v28 = v27;
            v107 = v26;
            if (v104 && CFDictionaryGetValueIfPresent(v27, @"RNR_IE", 0))
            {
              CFArrayAppendValue(theArray, v28);
            }

            *buf = 0;
            v29 = CFDictionaryGetValue(v12, @"BSSID");
            v106 = v24;
            if (v29)
            {
              v30 = v29;
              v31 = CFDictionaryGetValue(v12, @"SHORT_SSID");
              *buf = v31;
              if (v31)
              {
                CFRetain(v31);
              }

              else
              {
                v32 = CFDictionaryGetValue(v12, @"SSID");
                if (!v32)
                {
                  goto LABEL_118;
                }

                Apple80211CalculateShortSSIDCopy(v32, buf);
                if (!*buf)
                {
                  goto LABEL_118;
                }
              }

              v33 = CFDictionaryGetValue(v28, @"RNR_IE");
              if (v33)
              {
                v34 = CFDictionaryGetValue(v33, @"NEIGHBOR_AP_INFO_LIST");
                if (v34)
                {
                  v35 = v34;
                  if (CFArrayGetCount(v34) >= 1)
                  {
                    v36 = 0;
                    while (1)
                    {
                      v37 = CFArrayGetValueAtIndex(v35, v36);
                      if (v37)
                      {
                        v38 = CFDictionaryGetValue(v37, @"TBTT_INFO_SET");
                        if (CFArrayGetCount(v38) >= 1)
                        {
                          break;
                        }
                      }

                      v44 = 1;
LABEL_74:
                      Count = CFArrayGetCount(v35);
                      if (v44)
                      {
                        if (Count > ++v36)
                        {
                          continue;
                        }
                      }

                      goto LABEL_78;
                    }

                    v39 = 1;
                    while (2)
                    {
                      v40 = CFArrayGetValueAtIndex(v38, v39 - 1);
                      if (!v40)
                      {
                        goto LABEL_68;
                      }

                      v41 = v40;
                      v42 = CFDictionaryGetValue(v40, @"BSSID");
                      if (!v42 || !CFEqual(v42, v30) || CFDictionaryGetValue(v41, @"COLOCATED_AP") != v10)
                      {
                        goto LABEL_68;
                      }

                      v43 = CFDictionaryGetValue(v41, @"SHORT_SSID");
                      v111 = v43;
                      if (v43)
                      {
                        if (CFEqual(v43, *buf))
                        {
                          goto LABEL_63;
                        }

LABEL_68:
                        v44 = 1;
                      }

                      else
                      {
                        v45 = CFDictionaryGetValue(v41, @"SAME_SSID");
                        v46 = CFDictionaryGetValue(v28, @"SSID");
                        if (v45 != v10)
                        {
                          goto LABEL_68;
                        }

                        if (!v46)
                        {
                          goto LABEL_68;
                        }

                        Apple80211CalculateShortSSIDCopy(v46, &v111);
                        if (!v111)
                        {
                          goto LABEL_68;
                        }

                        v47 = CFEqual(v111, *buf);
                        CFRelease(v111);
                        if (!v47)
                        {
                          goto LABEL_68;
                        }

LABEL_63:
                        v44 = 0;
                      }

                      v48 = CFArrayGetCount(v38);
                      if (!v44)
                      {
                        goto LABEL_74;
                      }

                      v49 = v48 <= v39++;
                      if (v49)
                      {
                        goto LABEL_74;
                      }

                      continue;
                    }
                  }
                }
              }
            }

            LOBYTE(v44) = 1;
LABEL_78:
            if (*buf)
            {
              CFRelease(*buf);
            }

            v24 = v106;
            v26 = v107;
            if (v44)
            {
              v9 = allocator;
              goto LABEL_82;
            }

            v9 = allocator;
            v12 = v105;
            if (!v106)
            {
              v51 = CFArrayCreateMutable(allocator, 0, MEMORY[0x277CBF128]);
              if (!v51)
              {
                goto LABEL_155;
              }

              v24 = v51;
              CFDictionarySetValue(v105, @"ORIG_RNR_CHANNEL_LIST", v51);
              CFRelease(v24);
              v26 = v107;
            }

            v52 = CFDictionaryGetValue(v28, @"CHANNEL");
            if (v52)
            {
              v53 = v52;
              v54 = v24;
              v55 = CFDictionaryGetValue(v28, @"CHANNEL_FLAGS");
              if (v55)
              {
                v56 = v55;
                v57 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (!v57)
                {
                  goto LABEL_155;
                }

                v58 = v57;
                CFDictionarySetValue(v57, @"CHANNEL", v53);
                CFDictionarySetValue(v58, @"CHANNEL_FLAGS", v56);
                v59 = CFDictionaryGetValue(v28, @"SSID");
                if (v59 && CFDataGetLength(v59))
                {
                  v24 = v54;
                  v60 = CFArrayGetCount(v54);
                  v12 = v105;
                  if (v60)
                  {
                    *buf = 0;
                    if (CFArrayGetCount(v24) >= 1)
                    {
                      v61 = 0;
                      do
                      {
                        v62 = CFArrayGetValueAtIndex(v24, *buf);
                        if (v62 && CFDictionaryGetValue(v62, @"ORIG_RNR_CHANNEL_FROM_HIDDEN_BSS") == v10)
                        {
                          if (!v61)
                          {
                            v61 = CFArrayCreateMutable(allocator, 0, MEMORY[0x277CBF128]);
                            if (!v61)
                            {
                              goto LABEL_109;
                            }
                          }

                          v63 = CFNumberCreate(allocator, kCFNumberCFIndexType, buf);
                          if (!v63)
                          {
                            goto LABEL_109;
                          }

                          v64 = v63;
                          CFArrayAppendValue(v61, v63);
                          CFRelease(v64);
                        }

                        v65 = ++*buf;
                      }

                      while (v65 < CFArrayGetCount(v24));
                      if (!v61)
                      {
                        goto LABEL_114;
                      }

                      v66 = CFArrayGetCount(v61);
                      if (v66 < 1)
                      {
                        goto LABEL_110;
                      }

                      v67 = v66 + 1;
                      do
                      {
                        v68 = CFArrayGetValueAtIndex(v61, v67 - 2);
                        if (v68)
                        {
                          *buf = -1;
                          CFNumberGetValue(v68, kCFNumberCFIndexType, buf);
                          if (*buf != -1)
                          {
                            CFArrayRemoveValueAtIndex(v24, *buf);
                          }
                        }

                        --v67;
                      }

                      while (v67 > 1);
LABEL_109:
                      if (!v61)
                      {
                        goto LABEL_114;
                      }

LABEL_110:
                      CFRelease(v61);
                    }
                  }

LABEL_114:
                  v119.length = CFArrayGetCount(v24);
                  v119.location = 0;
                  if (!CFArrayContainsValue(v24, v119, v58))
                  {
                    CFArrayAppendValue(v24, v58);
                  }

                  CFRelease(v58);
                }

                else
                {
                  v24 = v54;
                  if (!_containsNonHiddenRNRChannels(v54))
                  {
                    CFDictionarySetValue(v58, @"ORIG_RNR_CHANNEL_FROM_HIDDEN_BSS", v10);
                    v12 = v105;
                    goto LABEL_114;
                  }

                  CFRelease(v58);
                  v12 = v105;
                }

                v25 = v103;
LABEL_118:
                v26 = v107;
                goto LABEL_119;
              }

LABEL_82:
              v12 = v105;
            }

            v25 = v103;
            goto LABEL_119;
          }

LABEL_122:
          if (!v99 && !_containsNonHiddenRNRChannels(v24))
          {
            if (!_os_feature_enabled_impl())
            {
              goto LABEL_135;
            }

            v73 = 0;
            do
            {
              v74 = k6GHzPSC[v73];
              if (v73 > 0xD)
              {
                break;
              }

              ++v73;
            }

            while (v74 != v97);
            if (v74 != v97)
            {
LABEL_135:
              if (a6)
              {
                v75 = CFDictionaryGetValue(v12, @"SSID_STR");
                if (v75)
                {
                  v76 = v75;
                  v120.length = CFArrayGetCount(a6);
                  v120.location = 0;
                  LODWORD(v75) = CFArrayContainsValue(a6, v120, v76);
                }
              }

              else
              {
                LODWORD(v75) = 0;
              }

              if (a7 && !v75)
              {
                v77 = CFDictionaryGetValue(v12, @"BSSID");
                if (!v77)
                {
                  goto LABEL_144;
                }

                v78 = v77;
                v121.length = CFArrayGetCount(a7);
                v121.location = 0;
                LODWORD(v75) = CFArrayContainsValue(a7, v121, v78);
              }

              if (!v75)
              {
LABEL_144:
                v69 = v9;
                v79 = CFNumberCreate(v9, kCFNumberCFIndexType, &v110);
                if (!v79)
                {
                  goto LABEL_155;
                }

                v71 = v79;
                CFArrayAppendValue(Mutable, v79);
                CFArrayAppendValue(v95, v71);
                v104 = 0;
                goto LABEL_127;
              }
            }
          }

          v104 = 0;
        }

LABEL_128:
        v72 = ++v110;
        v49 = v72 < CFArrayGetCount(v100);
        a2 = v100;
        if (!v49)
        {
          goto LABEL_146;
        }
      }

      if (a3)
      {
        v15 = CFDictionaryGetValue(v12, @"SHORT_SSID");
        *buf = v15;
        if (v15)
        {
          v16 = CFEqual(a3, v15);
          goto LABEL_23;
        }

        v18 = CFDictionaryGetValue(v12, @"SSID");
        if (v18)
        {
          Apple80211CalculateShortSSIDCopy(v18, buf);
          if (*buf)
          {
            v16 = CFEqual(a3, *buf);
            CFRelease(*buf);
            goto LABEL_23;
          }
        }
      }

      else if (a4)
      {
        v17 = CFDictionaryGetValue(v12, @"SSID_STR");
        if (v17)
        {
          v16 = CFEqual(a4, v17) != 0;
          goto LABEL_23;
        }
      }

      v16 = 0;
LABEL_23:
      if (v93)
      {
        v19 = CFDictionaryGetValue(v12, @"BSSID");
        AddressFromString = Apple80211GetAddressFromString(v93);
        *buf = AddressFromString;
        *&buf[4] = WORD2(AddressFromString);
        v21 = Apple80211GetAddressFromString(v19);
        WORD2(v111) = WORD2(v21);
        v22 = *buf == v21 && *&buf[4] == WORD2(v21);
        v23 = !v22;
        v16 = !(a3 | a4) || v16 & 1;
        if (v23)
        {
          goto LABEL_125;
        }
      }

      if (!v16)
      {
LABEL_125:
        v69 = v9;
        v70 = CFNumberCreate(v9, kCFNumberCFIndexType, &v110);
        if (!v70)
        {
          goto LABEL_155;
        }

        v71 = v70;
        CFArrayAppendValue(Mutable, v70);
LABEL_127:
        CFRelease(v71);
        v9 = v69;
        goto LABEL_128;
      }

      goto LABEL_35;
    }

LABEL_146:
    v80 = CFArrayGetCount(Mutable);
    if (v80 >= 1)
    {
      v81 = (v80 & 0x7FFFFFFF) + 1;
      v82 = MEMORY[0x277D86220];
      do
      {
        v83 = CFArrayGetValueAtIndex(Mutable, v81 - 2);
        if (v83)
        {
          v84 = v83;
          v111 = -1;
          CFNumberGetValue(v83, kCFNumberCFIndexType, &v111);
          if (v111 != -1)
          {
            v85 = CFArrayGetValueAtIndex(v100, v111);
            v122.length = CFArrayGetCount(v95);
            v122.location = 0;
            if (CFArrayContainsValue(v95, v122, v84))
            {
              if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
              {
                v86 = CFDictionaryGetValue(v85, @"SSID_STR");
                v87 = CFDictionaryGetValue(v85, @"BSSID");
                *buf = 136315650;
                *&buf[4] = "_Apple80211AddOriginatingRNRChannelListToScanResults";
                v113 = 2112;
                v114 = v86;
                v115 = 2112;
                v116 = v87;
                _os_log_error_impl(&dword_254882000, v82, OS_LOG_TYPE_ERROR, "%s: Excluding non-PSC 6GHz scan result (%@/%@)", buf, 0x20u);
              }
            }

            CFArrayRemoveValueAtIndex(v100, v111);
          }
        }

        --v81;
      }

      while (v81 > 1);
    }

LABEL_155:
    CFRelease(theArray);
    CFRelease(Mutable);
    CFRelease(v95);
    goto LABEL_156;
  }

  CFRelease(theArray);
  v89 = *MEMORY[0x277D85DE8];

  CFRelease(Mutable);
}

void _dispatchRoamScanStart(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (a3 == 12)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v6 = Mutable;
        v7 = *MEMORY[0x277CBECE8];
        v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, a2);
        if (v8)
        {
          v9 = v8;
          CFDictionaryAddValue(v6, @"ROAM_LAST_STATUS", v8);
          CFRelease(v9);
          v10 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 4));
          if (v10)
          {
            v11 = v10;
            CFDictionaryAddValue(v6, @"ROAM_SCAN_REASON", v10);
            CFRelease(v11);
            (*(a1 + 72))(0, a1, 137, v6, 8, *(a1 + 80));
          }
        }

        CFRelease(v6);
      }
    }
  }
}

const char *convertApple80211ReturnToString(int a1)
{
  if ((a1 & 0x3E00) == 0x1000)
  {
    v3 = &k80211StatusDescList;
    v4 = a1 & 0x1FF;
    if ((a1 & 0x1FF) == 0)
    {
      return *(v3 + 1);
    }

    v5 = 1;
    result = "unknown IEEE status";
    while (1)
    {
      v7 = (&k80211StatusDescList + 16 * v5);
      if (*v7 == -1)
      {
        break;
      }

      ++v5;
      if (*v7 == v4)
      {
        v3 = v7;
        return *(v3 + 1);
      }
    }
  }

  else
  {
    if ((a1 & 0x3E00) != 0x3000)
    {
      v3 = &kMapping;
      v8 = 176;
      result = "unknown Apple80211 ReturnToString";
      while (*v3 != a1)
      {
        v3 += 4;
        if (!--v8)
        {
          return result;
        }
      }

      return *(v3 + 1);
    }

    v2 = a1 & 0x1FF;
    if (v2 == 1)
    {
      v3 = &unk_27978FD60;
      return *(v3 + 1);
    }

    v9 = &unk_27978FD60;
    v10 = 33;
    result = "unknown IEEE reason";
    while (--v10)
    {
      v3 = v9 + 4;
      v11 = v9[4];
      v9 += 4;
      if (v11 == v2)
      {
        return *(v3 + 1);
      }
    }
  }

  return result;
}

uint64_t _parseHs20OperatorName(uint64_t a1, __CFDictionary *a2)
{
  v4 = *(a1 + 2);
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    return 0;
  }

  v7 = Mutable;
  theDict = a2;
  v8 = v4 - 6;
  v10 = *(a1 + 10);
  v9 = (a1 + 10);
  if (v4 - 6 <= v10)
  {
LABEL_17:
    CFDictionaryAddValue(theDict, @"ANQP_OPERATOR_NAMES_LIST", v7);
    v23 = 1;
    goto LABEL_18;
  }

  LOWORD(v11) = 0;
  while (1)
  {
    v12 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v12)
    {
      goto LABEL_25;
    }

    v13 = v12;
    v14 = *v9;
    if (v14 < 3 || (v15 = CFStringCreateWithBytes(v5, v9 + 4, v14 - 3, 0x8000100u, 1u)) == 0)
    {
      v16 = v7;
LABEL_23:
      CFRelease(v16);
      v23 = 0;
      goto LABEL_19;
    }

    v16 = v15;
    v17 = CFStringCreateWithBytes(v5, v9 + 1, 3, 0x8000100u, 1u);
    if (!v17)
    {
      CFRelease(v7);
      goto LABEL_23;
    }

    v18 = v17;
    CFDictionaryAddValue(v13, @"ANQP_LANG_CODE", v17);
    CFDictionaryAddValue(v13, @"ANQP_OPERATOR_NAME", v16);
    CFArrayAppendValue(v7, v13);
    CFRelease(v16);
    CFRelease(v18);
    CFRelease(v13);
    v19 = v11 >> 63;
    v20 = v11 + 1;
    if (v11 == -1)
    {
      ++v19;
    }

    if (v19 != v20 >> 63 || v20 != v20)
    {
      syslog(3, "parsedLen %hu increment by value %lu os_add_overflow FAILED\n");
      goto LABEL_25;
    }

    v22 = *v9;
    v11 = v22 + v20;
    if (v11 != (v22 + v20))
    {
      break;
    }

    v9 += *v9 + 1;
    if (v8 - v11 <= *v9)
    {
      goto LABEL_17;
    }
  }

  syslog(3, "parsedLen %hu increment by value %hhu os_add_overflow FAILED\n");
LABEL_25:
  v23 = 0;
LABEL_18:
  v13 = v7;
LABEL_19:
  CFRelease(v13);
  return v23;
}

uint64_t Apple80211GetInterfaceNameCopy(uint64_t a1, CFStringRef *a2)
{
  result = 4294963396;
  if (a1 && a2)
  {
    v6 = *(a1 + 4);
    v5 = (a1 + 4);
    if (v6)
    {
      v7 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v5, 0x8000100u);
      if (v7)
      {
        v8 = v7;
        result = 0;
        *a2 = v8;
      }

      else
      {
        return 4294963395;
      }
    }

    else
    {
      return 4294963368;
    }
  }

  return result;
}

uint64_t Apple80211GetInfoCopy(uint64_t a1, CFMutableDictionaryRef *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    *a2 = 0;
    v5 = 4294963395;
    goto LABEL_7;
  }

  v4 = Mutable;
  v5 = Apple80211CopyValue();
  if (v5)
  {
    goto LABEL_6;
  }

  if (CFDictionaryGetCount(v4) < 1)
  {
    v5 = 0;
LABEL_6:
    *a2 = 0;
    CFRelease(v4);
    goto LABEL_7;
  }

  v5 = 0;
  *a2 = v4;
LABEL_7:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t Apple80211SetPowerState(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  valuePtr = a2;
  v2 = Apple80211CopyValue();
  if (v2)
  {
    v5 = v2;
  }

  else
  {
    syslog(3, "%s:%d: [kA11UnknownErr] Apple80211CopyValue returned %d\n", "Apple80211SetPowerState", 521, 0);
    v5 = 4294963394;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t Apple80211Scan()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v64 = *MEMORY[0x277D85DE8];
  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v60 = v6;
  v61 = v6;
  memset(v59, 170, sizeof(v59));
  v7 = *MEMORY[0x277CBECE8];
  v8 = MEMORY[0x277CBF128];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v10 = CFArrayCreateMutable(v7, 0, v8);
  *&v56[1] = -1431655766;
  v56[0] = 257;
  v55 = 0;
  bzero(v57, 0x1598uLL);
  v57[0] = 1;
  v11 = _openEventSocket();
  v12 = v11;
  v54 = -1431655766;
  v53 = 0;
  if (!v5 || (*v5 & 0x80000000) != 0 || !*(v5 + 4))
  {
    v14 = 0;
    goto LABEL_80;
  }

  if (Mutable)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
    v47 = 0;
    v43 = 4294963395;
    goto LABEL_56;
  }

  if ((v11 & 0x80000000) == 0)
  {
    if (*(v5 + 1848) || *(v5 + 64) || *(v5 + 56))
    {
      v14 = 0;
    }

    else
    {
      v14 = dispatch_queue_create("com.apple.wifi.scan-done", 0);
      v41 = Apple80211EventMonitoringInit2(v5, emptyEventCallback, 0, v14);
      if (v41)
      {
        v43 = v41;
        dispatch_release(v14);
        v14 = 0;
        v47 = 0;
        goto LABEL_56;
      }
    }

    if (*(v5 + 52) || (*(v5 + 21) & 2) != 0)
    {
      v47 = 0;
      goto LABEL_20;
    }

    if (*(v5 + 56) || *(v5 + 64) || *(v5 + 1848))
    {
      *(v5 + 21) |= 2u;
      v47 = 1;
LABEL_20:
      v48 = *(v5 + 99);
      ScanData = _getScanData(v2, v57, 0, v56 + 1, &v54, &v56[1], v56, &v55, v5 + 88, &v53);
      if (ScanData)
      {
        v43 = ScanData;
        goto LABEL_56;
      }

      v51 = Mutable;
      v50 = v12;
      v16 = v57[1218];
      v49 = v57[13];
      Value = CFDictionaryGetValue(v2, @"SCAN_SHORT_SSID");
      v18 = CFDictionaryGetValue(v2, @"SSID_STR");
      v44 = CFDictionaryGetValue(v2, @"BSSID");
      v45 = v18;
      v19 = (v18 | v44 | Value) != 0;
      if ((*&v56[1])--)
      {
        v21 = 0uLL;
        v22 = (v16 >> 9) & ((v48 << 25) >> 31);
        v46 = v16;
        do
        {
          v62 = 0;
          v60 = v21;
          v61 = v21;
          LODWORD(v61) = 10;
          memset(uu, 170, sizeof(uu));
          MEMORY[0x259C1D950](uu);
          uuid_unparse(uu, v58);
          __strlcpy_chk();
          DWORD2(v61) = 5528;
          v62 = v57;
          if (Apple80211RawSet())
          {
            v42 = __error();
            v12 = v50;
            Mutable = v51;
            goto LABEL_86;
          }

          pthread_mutex_lock((v5 + 160));
          *(v5 + 232) = 0;
          *(v5 + 224) = pthread_self();
          *(v5 + 264) = 0;
          v23 = *(v5 + 248);
          Mutable = v51;
          if (v23)
          {
            Current = CFAbsoluteTimeGetCurrent();
            CFRunLoopTimerSetNextFireDate(v23, Current + 315360000.0);
          }

          v25 = *(v5 + 256);
          if (v25)
          {
            v26 = dispatch_time(0, 315360000000000000);
            dispatch_source_set_timer(v25, v26, 0xFFFFFFFFFFFFFFFFLL, 0);
          }

          v27 = *(v5 + 144);
          if (v27)
          {
            CFRelease(v27);
            *(v5 + 144) = 0;
          }

          v28 = *(v5 + 240);
          if (v28)
          {
            CFRelease(v28);
            *(v5 + 240) = 0;
          }

          pthread_mutex_unlock((v5 + 160));
          if (v49 != 3)
          {
            if ((*(v5 + 1848) || *(v5 + 64) || *(v5 + 56)) && (*(v5 + 52) || (*(v5 + 21) & 2) != 0) && (*(v5 + 93) & 0x40) != 0)
            {
              v30 = dispatch_semaphore_create(0);
              *(v5 + 152) = v30;
              v31 = dispatch_time(0, 20000000000);
              dispatch_semaphore_wait(v30, v31);
              dispatch_release(*(v5 + 152));
              *(v5 + 152) = 0;
            }

            else
            {
              v29 = _waitForScanComplete();
              if (v29)
              {
                v43 = v29;
LABEL_55:
                v12 = v50;
                goto LABEL_56;
              }
            }
          }

          v62 = v59;
          v32 = -9999;
          LODWORD(v61) = 11;
          DWORD2(v61) = 2264;
          while (1)
          {
            bzero(v59, 0x8D8uLL);
            v59[0] = 1;
            HIWORD(v59[34]) = 2048;
            if (v58[0])
            {
              __strlcpy_chk();
            }

            if (Apple80211RawGet(v5, &v60))
            {
              break;
            }

            _addScanResultToList(v5, v59, v51, v10, 0, HIBYTE(v56[0]), v19, LOBYTE(v56[0]), v55, v53, 0, v22);
            if (__CFADD__(v32++, 1))
            {
              v43 = 4294963394;
              goto LABEL_55;
            }
          }

          if (*__error() != -528350138 && *__error() != 5)
          {
            v42 = __error();
            v12 = v50;
            goto LABEL_86;
          }

          v34 = (*&v56[1])--;
          LOWORD(v16) = v46;
          v21 = 0uLL;
        }

        while (v34);
      }

      v12 = v50;
      Mutable = v51;
      if ((v48 & 0x40) != 0 && (v16 & 0x800) != 0)
      {
        v35 = CFDictionaryGetValue(v2, @"SCAN_SSID_LIST");
        v36 = CFDictionaryGetValue(v2, @"SCAN_BSSID_LIST");
        _Apple80211AddOriginatingRNRChannelListToScanResults(v51, v10, Value, v45, v44, v35, v36);
      }

      goto LABEL_58;
    }

LABEL_80:
    v47 = 0;
    v43 = 4294963396;
    goto LABEL_56;
  }

  v42 = __error();
  v47 = 0;
  v14 = 0;
LABEL_86:
  v43 = *v42;
  if (!v43)
  {
LABEL_58:
    v37 = CFRetain(v10);
    v43 = 0;
    goto LABEL_59;
  }

LABEL_56:
  if (!v4)
  {
    goto LABEL_60;
  }

  v37 = 0;
LABEL_59:
  *v4 = v37;
LABEL_60:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if ((v12 & 0x80000000) == 0)
  {
    close(v12);
  }

  if (v5 && v47 && (*(v5 + 56) || *(v5 + 64) || *(v5 + 1848)))
  {
    *(v5 + 21) &= ~2u;
  }

  if (v14)
  {
    if (v5)
    {
      v38 = dispatch_semaphore_create(0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __Apple80211Scan_block_invoke;
      block[3] = &__block_descriptor_tmp_55;
      block[4] = v5;
      block[5] = v38;
      dispatch_async(v14, block);
      dispatch_semaphore_wait(v38, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v38);
    }

    dispatch_release(v14);
  }

  v39 = *MEMORY[0x277D85DE8];
  return v43;
}

uint64_t Apple80211EventMonitoringInit2(_DWORD *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Apple80211EventMonitoringInit2";
    v31 = 2048;
    v32 = a1;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: opaque=%p\n", buf, 0x16u);
  }

  if (!a1)
  {
    v8 = 4294963396;
    goto LABEL_23;
  }

  if (*(a1 + 109))
  {
    v8 = 0;
    goto LABEL_23;
  }

  *buf = 0x600000001;
  *&buf[8] = 1;
  if (a2 && (*a1 & 0x80000000) == 0 && *(a1 + 4))
  {
    if (*(a1 + 231) || *(a1 + 8) || *(a1 + 7))
    {
      Apple80211EventMonitoringHalt(a1);
    }

    if (!Apple80211EventMonitoringInitIOUC(a1, a4, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 136315138;
        v29 = "Apple80211EventMonitoringInit2";
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Using IOUC event pipe\n", v28, 0xCu);
      }

      goto LABEL_22;
    }

    v9 = socket(32, 3, 1);
    v10 = v9;
    if (v9 < 0 || ioctl(v9, 0x800C6502uLL, buf))
    {
      v8 = *__error();
      if (!v8)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = dispatch_source_create(MEMORY[0x277D85D28], v10, 0, a4);
      *(a1 + 8) = v11;
      if (v11)
      {
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 0x40000000;
        handler[2] = __Apple80211EventMonitoringInit2_block_invoke;
        handler[3] = &__block_descriptor_tmp_79;
        handler[4] = a1;
        v27 = v10;
        dispatch_source_set_event_handler(v11, handler);
        v12 = *(a1 + 8);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 0x40000000;
        v24[2] = __Apple80211EventMonitoringInit2_block_invoke_2;
        v24[3] = &__block_descriptor_tmp_80;
        v25 = v10;
        dispatch_source_set_cancel_handler(v12, v24);
        v13 = *(a1 + 8);
        if (v13)
        {
          dispatch_activate(v13);
        }

LABEL_22:
        v14 = MEMORY[0x277D85D38];
        v15 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, a4);
        *(a1 + 199) = v15;
        dispatch_set_context(v15, a1);
        dispatch_source_set_event_handler_f(*(a1 + 199), _asyncAssocRetryCallback2);
        v16 = *(a1 + 199);
        v17 = dispatch_time(0, 315360000000000000);
        dispatch_source_set_timer(v16, v17, 0xBEBC200uLL, 0);
        dispatch_activate(*(a1 + 199));
        v18 = dispatch_source_create(v14, 0, 0, a4);
        *(a1 + 32) = v18;
        dispatch_set_context(v18, a1);
        dispatch_source_set_event_handler_f(*(a1 + 32), _asyncScanRetryCallback2);
        v19 = *(a1 + 32);
        v20 = dispatch_time(0, 315360000000000000);
        dispatch_source_set_timer(v19, v20, 0xBEBC200uLL, 0);
        dispatch_activate(*(a1 + 32));
        v8 = 0;
        *(a1 + 9) = a2;
        *(a1 + 10) = a3;
        goto LABEL_23;
      }

      v8 = 4294963395;
    }
  }

  else
  {
    v10 = -1;
    v8 = 4294963396;
  }

  v23 = *(a1 + 8);
  if (v23)
  {
    dispatch_source_cancel(v23);
    dispatch_release(*(a1 + 8));
    *(a1 + 8) = 0;
  }

  if ((v10 & 0x80000000) == 0)
  {
    close(v10);
  }

LABEL_23:
  v21 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t Apple80211StartMonitoringEvent(void *a1, unsigned int a2)
{
  if (!a1)
  {
    return 4294963396;
  }

  if (a1[7] || a1[8])
  {
    if (a2 <= 0xF6)
    {
LABEL_5:
      result = 0;
      *(a1 + ((a2 - 1) >> 3) + 20) |= 1 << ((a2 - 1) & 7);
      return result;
    }

    return 4294963396;
  }

  result = 4294963396;
  if (a2 <= 0xF6 && a1[231])
  {
    goto LABEL_5;
  }

  return result;
}

void Apple80211GenerateUUIDForScan(char *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  memset(uu, 170, sizeof(uu));
  MEMORY[0x259C1D950](uu);
  uuid_unparse(uu, a1);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _waitForScanComplete()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v14 = *MEMORY[0x277D85DE8];
  memset(__b, 170, sizeof(__b));
  memset(v10, 170, sizeof(v10));
  memset(&v12, 0, sizeof(v12));
  if (__darwin_check_fd_set_overflow(v2, &v12, 0))
  {
    v4 = 1 << v2;
    v5 = v2 >> 5;
    v12.fds_bits[v5] |= 1 << v2;
  }

  else
  {
    v5 = v2 >> 5;
    v4 = 1 << v2;
  }

  v11 = v12;
  gettimeofday(&v10[1], 0);
  v6 = select(v2 + 1, &v11, 0, 0, 0);
  if (v6)
  {
    while (v6 > 0 || *__error() == 4)
    {
      gettimeofday(v10, 0);
      if (__darwin_check_fd_set_overflow(v2, &v11, 0) && (v11.fds_bits[v5] & v4) != 0)
      {
        v7 = read(v2, __b, 0x1018uLL);
        if ((v7 & 0x80000000) != 0)
        {
          break;
        }

        if (v7 >= 0x18 && (__b[0] - 40) <= 0xFFFFFFEF && !strncmp(&__b[6], (v3 + 4), 0x10uLL) && __b[5] == 10)
        {
          result = 0;
          goto LABEL_18;
        }
      }

      v11 = v12;
      gettimeofday(&v10[1], 0);
      v6 = select(v2 + 1, &v11, 0, 0, 0);
      if (!v6)
      {
        goto LABEL_15;
      }
    }

    result = *__error();
  }

  else
  {
LABEL_15:
    result = 4294963391;
  }

LABEL_18:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Apple80211StopMonitoringEvent(void *a1, unsigned int a2)
{
  if (!a1)
  {
    return 4294963396;
  }

  if (a1[7] || a1[8])
  {
    if (a2 <= 0xF6)
    {
LABEL_5:
      result = 0;
      *(a1 + ((a2 - 1) >> 3) + 20) &= ~(1 << ((a2 - 1) & 7));
      return result;
    }

    return 4294963396;
  }

  result = 4294963396;
  if (a2 <= 0xF6 && a1[231])
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t __Apple80211Scan_block_invoke(uint64_t a1)
{
  v4[5] = *MEMORY[0x277D85DE8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __Apple80211Scan_block_invoke_2;
  v4[3] = &__block_descriptor_tmp;
  v1 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  result = _Apple80211EventMonitoringHalt2(v1, v4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _Apple80211EventMonitoringHalt2(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      CFSocketInvalidate(v4);
      CFRelease(*(a1 + 56));
      *(a1 + 56) = 0;
    }

    v5 = *(a1 + 1584);
    if (v5)
    {
      CFRunLoopTimerInvalidate(v5);
      CFRelease(*(a1 + 1584));
      *(a1 + 1584) = 0;
    }

    v6 = *(a1 + 1592);
    if (v6)
    {
      dispatch_source_cancel(v6);
      dispatch_release(*(a1 + 1592));
      *(a1 + 1592) = 0;
    }

    v7 = *(a1 + 248);
    if (v7)
    {
      CFRunLoopTimerInvalidate(v7);
      CFRelease(*(a1 + 248));
      *(a1 + 248) = 0;
    }

    v8 = *(a1 + 256);
    if (v8)
    {
      dispatch_source_cancel(v8);
      dispatch_release(*(a1 + 256));
      *(a1 + 256) = 0;
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      dispatch_source_cancel(v9);
      dispatch_release(*(a1 + 64));
      *(a1 + 64) = 0;
    }

    if (*(a1 + 51))
    {
      v10 = *(a1 + 80);
      if (v10)
      {
        _Block_release(v10);
      }
    }

    *(a1 + 51) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 20) = 0;
    *(a1 + 36) = 0;
    *(a1 + 28) = 0;
    *(a1 + 43) = 0;
    v11 = *(a1 + 1840);
    if (v11)
    {
      *v17 = MEMORY[0x277D85DD0];
      *&v17[8] = 0x40000000;
      *&v17[16] = __Apple80211EventMonitoringHaltIOUC_block_invoke;
      v18 = &unk_27978F050;
      v19 = a2;
      v20 = a1;
      dispatch_async(v11, v17);
      *(a1 + 1840) = 0;
    }

    else
    {
      v12 = *(a1 + 1944);
      if (v12)
      {
        v13 = CFRetain(v12);
        v14 = *MEMORY[0x277CBF058];
        *v17 = MEMORY[0x277D85DD0];
        *&v17[8] = 0x40000000;
        *&v17[16] = __Apple80211EventMonitoringHaltIOUC_block_invoke_2;
        v18 = &unk_27978F078;
        v19 = a2;
        v20 = a1;
        CFRunLoopPerformBlock(v13, v14, v17);
        CFRunLoopWakeUp(v13);
        CFRelease(v13);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 136315394;
          *&v17[4] = "Apple80211EventMonitoringHaltIOUC";
          *&v17[12] = 2080;
          *&v17[14] = a1 + 4;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: no user client connected for %s", v17, 0x16u);
        }

        if (a2)
        {
          (*(a2 + 16))(a2);
        }
      }
    }

    result = 0;
  }

  else
  {
    if (a2)
    {
      (*(a2 + 16))(a2);
    }

    result = 4294963396;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Apple80211ScanDynamic()
{
  v0 = MEMORY[0x28223BE20]();
  v42 = v2;
  v43 = v1;
  v4 = v3;
  v5 = v0;
  uu[2] = *MEMORY[0x277D85DE8];
  v67 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v65 = v6;
  v66 = v6;
  v64 = 0xAAAAAAAAAAAAAAAALL;
  v62 = v6;
  v63 = v6;
  bzero(v57, 0x1598uLL);
  v57[0] = 1;
  bzero(v54, 0x14E8uLL);
  v54[0] = 1;
  memset(v53, 170, sizeof(v53));
  *&v51[1] = -1431655766;
  v51[0] = 257;
  v50 = 0;
  v7 = *MEMORY[0x277CBECE8];
  v8 = MEMORY[0x277CBF128];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v10 = CFArrayCreateMutable(v7, 0, v8);
  v11 = _openEventSocket();
  v49 = -1431655766;
  v48 = 0;
  if (!v5 || (*v5 & 0x80000000) != 0)
  {
    v12 = 4294963396;
    goto LABEL_49;
  }

  v12 = 4294963396;
  if (!v43 || !*(v5 + 4) || (v12 = 4294963395, !Mutable) || !v10)
  {
LABEL_49:
    v31 = v12;
    if (!Mutable)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (v11 < 0)
  {
    v31 = *__error();
  }

  else
  {
    theDict = v4;
    if (v4 && ((v44 = &v55, v36 = &v56 + 4, v13 = &v56, CFDictionaryGetValue(v4, @"SCAN_SSID_LIST")) || CFDictionaryGetValue(v4, @"SCAN_BSSID_LIST")))
    {
      v14 = 0;
      v15 = v54;
      out = 5452;
      __src = 72;
      v16 = 52;
      v17 = 68;
    }

    else
    {
      v15 = 0;
      v17 = &v59;
      v16 = &v58;
      out = &v61;
      v14 = v57;
      v13 = 528;
      v44 = 512;
      v36 = 532;
      __src = &v60;
    }

    ScanData = _getScanData(theDict, v14, v15, v51 + 1, &v49, &v51[1], v51, &v50, v5 + 88, &v48);
    if (ScanData)
    {
      v31 = ScanData;
    }

    else if (!v15 || *v44 == 3 || (*(v5 + 90) & 0x40) != 0)
    {
      if (v14)
      {
        v19 = v17;
      }

      else
      {
        v19 = v13;
      }

      if (*v19)
      {
        v41 = v11;
        v46 = v14;
        if (v14)
        {
          memcpy(__dst, __src, sizeof(__dst));
          v35 = *v17;
          *v17 = 1;
          v20 = 10;
          v21 = 5528;
          v34 = v14;
        }

        else
        {
          v34 = v15;
          memcpy(__dst, v36, sizeof(__dst));
          v35 = *v13;
          *v13 = 1;
          v20 = 86;
          v21 = 5352;
          v16 = v44;
        }

        v45 = *v16;
        Value = CFDictionaryGetValue(theDict, @"SCAN_SHORT_SSID");
        v23 = CFDictionaryGetValue(theDict, @"SSID_STR");
        v24 = CFDictionaryGetValue(theDict, @"BSSID");
        v65 = 0u;
        v66 = 0u;
        v25 = (v23 | v24 | Value) != 0;
        v67 = 0;
        LODWORD(v66) = v20;
        __strlcpy_chk();
        DWORD2(v66) = v21;
        v67 = v34;
        v62 = 0u;
        v63 = 0u;
        v64 = 0;
        LODWORD(v63) = 11;
        __strlcpy_chk();
        DWORD2(v63) = 2264;
        v64 = v53;
        if (v35)
        {
          v26 = 0;
          v27 = 0;
          v28 = v36;
          if (v46)
          {
            v28 = __src;
          }

          __srca = v28;
          while (1)
          {
            theDicta = v26;
            v29 = &__dst[3 * v26];
            *__srca = *v29;
            __srca[2] = v29[2];
            if (*&v51[1])
            {
              break;
            }

LABEL_44:
            v26 = (theDicta + 1);
            if ((theDicta + 1) == v35)
            {
              v12 = 0;
              goto LABEL_48;
            }
          }

          v30 = 0;
          while (1)
          {
            if (v46)
            {
              uu[0] = 0xAAAAAAAAAAAAAAAALL;
              uu[1] = 0xAAAAAAAAAAAAAAAALL;
              MEMORY[0x259C1D950](uu);
              uuid_unparse(uu, out);
              if (Apple80211RawSet())
              {
                break;
              }

              __strlcpy_chk();
            }

            else if (Apple80211RawSet())
            {
              break;
            }

            if (v45 != 3)
            {
              v12 = _waitForScanComplete();
              if (v12)
              {
                goto LABEL_48;
              }
            }

            while (1)
            {
              bzero(v53, 0x8D8uLL);
              v53[0] = 1;
              HIWORD(v53[34]) = 2048;
              if (*(v5 + 2024))
              {
                __strlcpy_chk();
              }

              if (Apple80211RawGet(v5, &v62))
              {
                break;
              }

              _addScanResultToList(v5, v53, Mutable, v10, 0, HIBYTE(v51[0]), v25, LOBYTE(v51[0]), v50, v48, 0, 0);
              if (v27 < CFArrayGetCount(v10))
              {
                v43(0, v5, v10, v42);
                ++v27;
              }
            }

            if (*__error() != 5)
            {
              break;
            }

            if (++v30 >= *&v51[1])
            {
              goto LABEL_44;
            }
          }

          v12 = *__error();
LABEL_48:
          v11 = v41;
          goto LABEL_49;
        }

        v31 = 0;
        v11 = v41;
      }

      else
      {
        v31 = 4294963396;
      }
    }

    else
    {
      v31 = 4294963393;
    }
  }

LABEL_50:
  CFRelease(Mutable);
LABEL_51:
  if (v10)
  {
    CFRelease(v10);
  }

  if ((v11 & 0x80000000) == 0)
  {
    close(v11);
  }

  *(v5 + 2024) = 0;
  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t _performAssociation(uint64_t a1, const __CFDictionary *a2, const __CFString *a3, int a4)
{
  *&v290[8] = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  v225 = 0;
  bzero(v253, 0x388uLL);
  __src = 1;
  p_src = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v249 = v7;
  v250 = v7;
  v247 = v7;
  v248 = v7;
  v245 = v7;
  v246 = v7;
  v243 = v7;
  v244 = v7;
  v241 = v7;
  v242 = v7;
  v239 = v7;
  v240 = v7;
  v237 = v7;
  v238 = v7;
  v235 = v7;
  v236 = v7;
  *__s = v7;
  v234 = v7;
  v223 = -1431655766;
  v222 = 0;
  v221 = 0;
  if (!a1 || (*a1 & 0x80000000) != 0)
  {
    goto LABEL_199;
  }

  started = 4294963396;
  if (!a2)
  {
    goto LABEL_275;
  }

  v9 = a1 + 4;
  if (!*(a1 + 4))
  {
    goto LABEL_275;
  }

  if ((byte_280C4DC39 & 1) == 0)
  {
    *buffer = 0;
    os_parse_boot_arg_int();
    _MergedGlobals_0 = 0;
    byte_280C4DC39 = 1;
  }

  p_src = 0;
  v249 = 0u;
  v250 = 0u;
  Value = CFDictionaryGetValue(a2, @"SSID");
  if (!Value)
  {
    goto LABEL_275;
  }

  v11 = Value;
  range = CFDataGetLength(Value);
  if (range - 1 > 0x1F || CFDataGetLength(v11) < 1)
  {
    goto LABEL_275;
  }

  v291.length = range;
  v291.location = 0;
  CFDataGetBytes(v11, v291, v257);
  v12 = CFDictionaryGetValue(a2, @"TRANS_DISABLED_FLAGS_ASSOC");
  if (v12)
  {
    CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
  }

  v286 = valuePtr;
  v13 = CFDictionaryGetValue(a2, @"ASSOC_6G_ENABLE");
  BoolRef = makeBoolRef(v13);
  if (BoolRef)
  {
    if (CFBooleanGetValue(BoolRef) == 1)
    {
      v289 = 0;
      goto LABEL_18;
    }

    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v289 = v15;
LABEL_18:
  v16 = CFDictionaryGetValue(a2, @"LOW_RSSI_LIMIT");
  if (v16)
  {
    v17 = v16;
    v18 = CFDictionaryGetValue(v16, @"LOW_RSSI_LIMIT_2G");
    if (v18)
    {
      CFNumberGetValue(v18, kCFNumberSInt8Type, v290);
    }

    v19 = CFDictionaryGetValue(v17, @"LOW_RSSI_LIMIT_5G");
    if (v19)
    {
      CFNumberGetValue(v19, kCFNumberSInt8Type, &v290[1]);
    }

    v20 = CFDictionaryGetValue(v17, @"LOW_RSSI_LIMIT_6G");
    if (v20)
    {
      CFNumberGetValue(v20, kCFNumberSInt8Type, &v290[2]);
    }

    v21 = CFDictionaryGetValue(v17, @"LOW_RSSI_LIMIT_CACHE");
    if (v21)
    {
      CFNumberGetValue(v21, kCFNumberSInt8Type, &v290[3]);
    }

    v22 = CFDictionaryGetValue(v17, @"LOW_RSSI_LIMIT_PROBE");
    if (v22)
    {
      CFNumberGetValue(v22, kCFNumberSInt8Type, &v290[4]);
    }
  }

  v23 = CFDictionaryGetValue(a2, @"SCAN_RESULT_OWE_MULTI_SSID");
  makeBoolRef(v23);
  v24 = CFDictionaryGetValue(a2, @"PRIVATE_MAC_ADDRESS");
  if (v24)
  {
    v25 = v24;
    v26 = CFDictionaryGetValue(v24, @"PRIVATE_MAC_ADDRESS_VALID");
    v27 = makeBoolRef(v26);
    v28 = CFDictionaryGetValue(v25, @"PRIVATE_MAC_ADDRESS_VALUE");
    if (v27 && !CFBooleanGetValue(v27))
    {
      v274 |= 0x40u;
      if (v28)
      {
        goto LABEL_33;
      }
    }

    else if (v28)
    {
LABEL_33:
      v292.location = 0;
      v292.length = 6;
      CFDataGetBytes(v28, v292, &v280);
      *&buffer[4] = 0;
      *buffer = 0;
      if (v280 | v281 && (v280 & 3) == 2)
      {
        syslog(3, " WFMacRandomisation : Private mac address being used :  %02x:%02x:%02x:%02x:%02x:%02x\n", v280, BYTE1(v280), BYTE2(v280), HIBYTE(v280), v281, HIBYTE(v281));
        v273 |= 8u;
      }

      else
      {
        syslog(3, " WFMacRandomisation : Private mac address invalid, will not be used :  %02x:%02x:%02x:%02x:%02x:%02x\n");
      }

      goto LABEL_39;
    }

    syslog(3, " WFMacRandomisation : Private mac config specified, but no private mac address value\n");
  }

LABEL_39:
  v29 = CFDictionaryGetValue(a2, @"BSS_BLACKLIST");
  v217 = a3;
  if (v29)
  {
    v30 = CFDictionaryGetValue(v29, @"BSS_BLACKLIST_BSSIDS");
    if (v30)
    {
      v31 = v30;
      Count = CFArrayGetCount(v30);
      v33 = Count;
      if ((Count - 1) > 9)
      {
        syslog(3, "%s: Invalid bss blacklist count %ld\n");
      }

      else
      {
        v34 = a1;
        v35 = 0;
        v282 = Count;
        v36 = v283;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v31, v35);
          v293.location = 0;
          v293.length = 6;
          CFDataGetBytes(ValueAtIndex, v293, v36);
          ++v35;
          v36 += 6;
        }

        while (v33 != v35);
        v273 |= 0x10u;
        a1 = v34;
      }
    }

    else
    {
      syslog(3, "%s: Missing bss blacklist\n");
    }
  }

  v38 = CFDictionaryGetValue(a2, @"COLOCATED_NETWORK_SCOPE_ID");
  if (v38)
  {
    v39 = v38;
    if ((CFStringGetLength(v38) - 1) > 0x23)
    {
      syslog(3, "%s: Invalid length for colocatedNetworkScopeId = %ld. Max allowed = %lu\n");
    }

    else if (CFStringGetCString(v39, v284, 37, 0x8000100u) == 1)
    {
      *&v283[61] = strlen(v284);
      v273 |= 0x40u;
    }

    else
    {
      memset(v284, 0, sizeof(v284));
      syslog(3, "%s: Invalid colocatedNetworkScopeId\n");
    }
  }

  v40 = CFDictionaryGetValue(a2, @"BAND_PREFERENCE");
  if (v40)
  {
    *buffer = -1431655766;
    if (CFNumberGetValue(v40, kCFNumberSInt32Type, buffer))
    {
      v287 = *buffer;
    }
  }

  v41 = CFDictionaryGetValue(a2, @"FORCE_BSSID");
  v42 = makeBoolRef(v41);
  if (v42 && CFBooleanGetValue(v42) == 1)
  {
    v43 = CFDictionaryGetValue(a2, @"BSSID");
    if (!v43)
    {
      goto LABEL_199;
    }

    memset(buffer, 170, 18);
    if (!CFStringGetCString(v43, buffer, 18, 0x8000100u))
    {
      goto LABEL_199;
    }

    syslog(3, "%s: ForceBSSID forcing bssid %s\n", "_performAssociation", buffer);
    v44 = ether_aton(buffer);
    if (!v44)
    {
      goto LABEL_199;
    }

    v45 = *v44->octet;
    v259 = *&v44->octet[4];
    v258 = v45;
    v272 |= 0x20u;
  }

  v46 = CFDictionaryGetValue(a2, @"CARPLAY_NETWORK");
  v47 = makeBoolRef(v46);
  if (v47 && CFBooleanGetValue(v47) == 1)
  {
    v48 = 0;
    v273 |= 1u;
  }

  else
  {
    v48 = 1;
  }

  v49 = CFDictionaryGetValue(a2, @"INSTANT_HOTSPOT_ASSOC");
  v50 = makeBoolRef(v49);
  if (v50 && CFBooleanGetValue(v50) == 1)
  {
    v48 = 0;
    v273 |= 2u;
  }

  v51 = CFDictionaryGetValue(a2, @"AUTO_INSTANT_HOTSPOT_ASSOC");
  v52 = makeBoolRef(v51);
  if (v52 && CFBooleanGetValue(v52) == 1)
  {
    v53 = &v273;
    v54 = 4;
LABEL_74:
    *v53 |= v54;
    goto LABEL_75;
  }

  if (v48)
  {
    v53 = &v274;
    v54 = 32;
    goto LABEL_74;
  }

LABEL_75:
  v55 = CFDictionaryGetValue(a2, @"ASSOC_REASON");
  if (v55)
  {
    v275 = 0;
    if (CFNumberGetValue(v55, kCFNumberSInt8Type, &v223))
    {
      if ((v223 & 0x80000000) != 0)
      {
        syslog(3, "%s: Invalid assoc reason: %d \n", "_performAssociation", v223);
      }

      else
      {
        if (v223 > 2)
        {
          started = 4294963365;
          goto LABEL_275;
        }

        v275 = v223;
      }
    }
  }

  v247 = 0u;
  v248 = 0u;
  v245 = 0u;
  v246 = 0u;
  v243 = 0u;
  v244 = 0u;
  v241 = 0u;
  v242 = 0u;
  v239 = 0u;
  v240 = 0u;
  v237 = 0u;
  v238 = 0u;
  v235 = 0u;
  v236 = 0u;
  *__s = 0u;
  v234 = 0u;
  v56 = CFDictionaryGetValue(a2, @"WAPI");
  if (v56 && CFNumberGetValue(v56, kCFNumberSInt32Type, &valuePtr + 4))
  {
    v57 = 0;
    v58 = (~HIDWORD(valuePtr) & 0xB) == 0;
    v59 = (~HIDWORD(valuePtr) & 7) == 0;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    v57 = 1;
  }

  v60 = 0;
  if (v217 && !v58)
  {
    Length = CFStringGetLength(v217);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    if (MaximumSizeForEncoding > 255)
    {
      goto LABEL_199;
    }

    v60 = MaximumSizeForEncoding;
    if (MaximumSizeForEncoding >= 1)
    {
      if (!CFStringGetCString(v217, __s, 256, 0x8000100u))
      {
        goto LABEL_199;
      }

      v60 = strlen(__s);
    }
  }

  LODWORD(v250) = 20;
  DWORD2(v250) = 908;
  p_src = &__src;
  __strlcpy_chk();
  v63 = CFDictionaryGetValue(a2, @"AP_MODE");
  if (!v63 || !CFNumberGetValue(v63, kCFNumberSInt16Type, v253))
  {
    v253[0] = 2;
  }

  v64 = CFDictionaryGetValue(a2, @"ASSOC_FLAGS");
  if (v64)
  {
    *buffer = 0;
    if (!CFNumberGetValue(v64, kCFNumberSInt32Type, buffer))
    {
      v71 = 4415;
LABEL_111:
      syslog(3, "%s::%s[%u] Error: Assert failure\n", "/Library/Caches/com.apple.xbs/Sources/IO80211/IO80211API/Apple80211API_iOS.c", "_performAssociation", v71);
      v73 = 0;
      goto LABEL_292;
    }

    v65 = 0;
    v66 = *buffer;
    do
    {
      if (v66)
      {
        *(&v272 + (v65 >> 3)) |= 1 << (v65 & 7);
      }

      v66 >>= 1;
      ++v65;
    }

    while (v65 != 24);
  }

  v67 = CFDictionaryGetValue(a2, @"WSEC_FLAGS");
  if (!v67)
  {
    goto LABEL_103;
  }

  *buffer = 0;
  if (!CFNumberGetValue(v67, kCFNumberSInt32Type, buffer))
  {
    v71 = 4435;
    goto LABEL_111;
  }

  v288 = *buffer;
LABEL_103:
  v215 = a1;
  v68 = CFDictionaryGetValue(a2, @"FAST_ENTERPRISE_NETWORK");
  v69 = CFDictionaryGetValue(a2, @"FAST_ENTERPRISE_NETWORK_SUPPORTED_DEVICE");
  v70 = MEMORY[0x277CBED28];
  if (v69)
  {
    v214 = CFEqual(v69, *MEMORY[0x277CBED28]) != 0;
    if (!v68)
    {
      goto LABEL_113;
    }
  }

  else
  {
    v214 = 0;
    if (!v68)
    {
      goto LABEL_113;
    }
  }

  v72 = CFDictionaryGetValue(v68, @"FT_STATE");
  if (v72)
  {
    LODWORD(v68) = CFEqual(v72, *v70) != 0;
  }

  else
  {
    LODWORD(v68) = 0;
  }

LABEL_113:
  if ((v272 & 8) != 0)
  {
    if ((v214 & v68) != 0)
    {
      v74 = 128;
    }

    else
    {
      v74 = 64;
    }

    v255 = v74;
  }

  v75 = CFDictionaryGetValue(a2, @"SCAN_DIRECTED");
  v76 = makeBoolRef(v75);
  if (v76 && CFEqual(v76, *v70))
  {
    v272 |= 4u;
  }

  if ((v57 & 1) == 0)
  {
    *buffer = 0;
    v90 = *MEMORY[0x277CBECE8];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a2);
    if (!MutableCopy)
    {
      started = 4294963395;
      goto LABEL_219;
    }

    v92 = MutableCopy;
    if (v217)
    {
      v93 = CFStringGetLength(v217);
      v94 = v58 && v59;
      if (v93 >= 256)
      {
        v94 = 0;
      }

      if (v94 || !v58)
      {
        v99 = CFNumberCreate(v90, kCFNumberIntType, buffer);
        if (!v99)
        {
          goto LABEL_512;
        }

        v100 = v99;
        CFDictionaryAddValue(v92, @"PSK", v217);
        CFDictionaryAddValue(v92, @"PSK_KEY_TYPE", v100);
        CFRelease(v100);
        v58 = 0;
      }

      else
      {
        CFDictionaryAddValue(v92, @"CERT", v217);
        v58 = 1;
      }
    }

    v101 = _WAPIStart_wapistart;
    if (_WAPIStart_wapistart || (v101 = funcAddr("WAPIStart"), (_WAPIStart_wapistart = v101) != 0))
    {
      started = v101(v9, v92);
      if (!started)
      {
LABEL_161:
        v82 = v215;
LABEL_272:
        CFRelease(v92);
        goto LABEL_273;
      }
    }

    else
    {
      started = 0xFFFFFFFFLL;
    }

    if (v217 == 0 || !v59 || v58 || (v112 = strlen(__s)) == 0 || v112 != strspn(__s, "0123456789abcdefABCDEF"))
    {
LABEL_271:
      v82 = v215;
      Apple80211SetWithIOCTL();
      goto LABEL_272;
    }

    *buffer = 1;
    v113 = CFNumberCreate(v90, kCFNumberIntType, buffer);
    if (v113)
    {
      v114 = v113;
      CFDictionarySetValue(v92, @"PSK_KEY_TYPE", v113);
      CFRelease(v114);
      v115 = _WAPIStart_wapistart;
      if (_WAPIStart_wapistart || (v115 = funcAddr("WAPIStart"), (_WAPIStart_wapistart = v115) != 0))
      {
        started = v115(v9, v92);
        if (!started)
        {
          goto LABEL_161;
        }
      }

      else
      {
        started = 0xFFFFFFFFLL;
      }

      goto LABEL_271;
    }

LABEL_512:
    started = 4294963395;
    goto LABEL_161;
  }

  v77 = CFDictionaryGetValue(a2, @"WPA_IE");
  v78 = CFDictionaryGetValue(a2, @"RSN_IE");
  v79 = v78;
  v279 = 0;
  if (v253[0] == 1 && v77 | v78)
  {
    syslog(3, "IBSS  in assoc ? %d \n", 1);
    if (v79)
    {
      v80 = CFDictionaryGetValue(a2, @"RSN_IE");
      v81 = CFDictionaryGetValue(v80, @"IE_KEY_RSN_VERSION");
      if (v81)
      {
        *buf = -21846;
        *buffer = -1431655766;
        started = 4294963396;
        v82 = v215;
        if (!CFNumberGetValue(v81, kCFNumberSInt16Type, buf))
        {
          goto LABEL_273;
        }

        if (*buf != 1)
        {
          goto LABEL_273;
        }

        v83 = CFDictionaryGetValue(v80, @"IE_KEY_RSN_MCIPHER");
        if (!v83)
        {
          goto LABEL_273;
        }

        if (!CFNumberGetValue(v83, kCFNumberSInt32Type, buffer))
        {
          goto LABEL_273;
        }

        if (*buffer != 4)
        {
          goto LABEL_273;
        }

        v84 = CFDictionaryGetValue(v80, @"IE_KEY_RSN_UCIPHERS");
        if (!v84)
        {
          goto LABEL_273;
        }

        v85 = v84;
        v86 = CFArrayGetCount(v84);
        if (v86 < 1)
        {
          goto LABEL_273;
        }

        v87 = v86;
        v88 = 0;
        while (1)
        {
          v89 = CFArrayGetValueAtIndex(v85, v88);
          if (!CFNumberGetValue(v89, kCFNumberSInt32Type, buffer))
          {
            break;
          }

          if (*buffer == 4)
          {
            v120 = CFDictionaryGetValue(v80, @"IE_KEY_RSN_AUTHSELS");
            if (v120)
            {
              v121 = v120;
              v122 = CFArrayGetCount(v120);
              if (v122 >= 1)
              {
                v123 = v122;
                v124 = 0;
                while (1)
                {
                  v125 = CFArrayGetValueAtIndex(v121, v124);
                  if (!CFNumberGetValue(v125, kCFNumberSInt32Type, buffer))
                  {
                    break;
                  }

                  if (*buffer == 2)
                  {
                    v138 = CFDictionaryGetValue(v80, @"IE_KEY_RSN_CAPS");
                    if (!v138)
                    {
                      goto LABEL_218;
                    }

                    v139 = v138;
                    v140 = CFDictionaryGetValue(v138, @"PRE_AUTH");
                    v82 = v215;
                    if (!v140)
                    {
                      goto LABEL_450;
                    }

                    if (CFBooleanGetValue(v140))
                    {
                      goto LABEL_450;
                    }

                    v141 = CFDictionaryGetValue(v139, @"NO_PAIRWISE");
                    if (!v141)
                    {
                      goto LABEL_450;
                    }

                    if (CFBooleanGetValue(v141))
                    {
                      goto LABEL_450;
                    }

                    v142 = CFDictionaryGetValue(v139, @"PTKSA_REPLAY_COUNTERS");
                    if (!v142)
                    {
                      goto LABEL_450;
                    }

                    started = 4294963396;
                    if (!CFNumberGetValue(v142, kCFNumberSInt16Type, buf))
                    {
                      goto LABEL_273;
                    }

                    if (*buf != 4)
                    {
                      goto LABEL_273;
                    }

                    v143 = CFDictionaryGetValue(v139, @"GTKSA_REPLAY_COUNTERS");
                    if (!v143 || !CFNumberGetValue(v143, kCFNumberSInt16Type, buf) || *buf != 1)
                    {
                      goto LABEL_273;
                    }

                    v144 = *MEMORY[0x277CBECE8];
                    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    if (!Mutable)
                    {
                      started = 4294963395;
                      goto LABEL_273;
                    }

                    v92 = Mutable;
                    *buf = 1;
                    v146 = CFNumberCreate(v144, kCFNumberSInt16Type, buf);
                    if (!v146)
                    {
                      goto LABEL_513;
                    }

                    v147 = v146;
                    CFDictionaryAddValue(v92, @"AP_MODE_AUTH_LOWER", v146);
                    CFRelease(v147);
                    strcpy(buf, "\b");
                    v148 = CFNumberCreate(v144, kCFNumberSInt16Type, buf);
                    if (!v148)
                    {
                      goto LABEL_513;
                    }

                    v149 = v148;
                    CFDictionaryAddValue(v92, @"AP_MODE_AUTH_UPPER", v148);
                    CFRelease(v149);
                    *buffer = 6;
                    v150 = CFNumberCreate(v144, kCFNumberSInt32Type, buffer);
                    if (v150)
                    {
                      v151 = v150;
                      CFDictionaryAddValue(v92, @"AP_MODE_CYPHER_TYPE", v150);
                      CFRelease(v151);
                      v152 = CFDictionaryGetValue(a2, @"CHANNEL");
                      if (v152)
                      {
                        CFDictionaryAddValue(v92, @"CHANNEL", v152);
                        v153 = CFDictionaryGetValue(a2, @"CHANNEL_FLAGS");
                        if (v153)
                        {
                          CFDictionaryAddValue(v92, @"CHANNEL_FLAGS", v153);
                          v154 = CFDictionaryGetValue(a2, @"SSID");
                          CFDictionaryAddValue(v92, @"AP_MODE_SSID_BYTES", v154);
                          if (v217)
                          {
                            CFDictionaryAddValue(v92, @"AP_MODE_KEY", v217);
                            started = _startAPMode(v215, v92, 24);
                          }
                        }
                      }
                    }

                    else
                    {
LABEL_513:
                      started = 4294963395;
                    }

                    goto LABEL_272;
                  }

                  if (v123 == ++v124)
                  {
                    goto LABEL_218;
                  }
                }
              }
            }

            goto LABEL_218;
          }

          if (v87 == ++v88)
          {
            goto LABEL_218;
          }
        }
      }

      goto LABEL_218;
    }

LABEL_199:
    started = 4294963396;
    goto LABEL_275;
  }

  v95 = v68;
  v96 = CFDictionaryGetValue(a2, @"WPS_ASSOCIATE");
  v97 = makeBoolRef(v96);
  v98 = v97;
  if (!(v77 | v79) || v97 && CFBooleanGetValue(v97))
  {
    if (v255 > 2047)
    {
      if (v255 != 2048 && v255 != 0x4000 && v255 != 0x8000)
      {
LABEL_165:
        v102 = CFDictionaryGetValue(a2, @"WEP");
        if (makeBoolRef(v102) != *v70)
        {
          goto LABEL_166;
        }

        if (!v217)
        {
          started = 4294967196;
          goto LABEL_275;
        }

        v126 = CFDictionaryGetValue(a2, @"WEP_AUTH_Flags");
        v82 = v215;
        if (v126)
        {
          CFNumberGetValue(v126, kCFNumberSInt32Type, &v225);
          v127 = _joinWEPNetwork(v215, &v249, __s, v225, a4);
          if (v127 != -100)
          {
            started = v127;
            if (a4)
            {
LABEL_228:
              v105 = 0;
              goto LABEL_274;
            }

            v105 = 0;
            if ((v127 + 3912) > 7 || ((1 << (v127 + 72)) & 0x85) == 0)
            {
              goto LABEL_274;
            }
          }
        }

        v225 = 0x100000000;
        started = _initiateAutoWEPSequence(v215, &v249, __s, &v225 + 1, &v225, a4);
        goto LABEL_228;
      }
    }

    else if (v255 != 4 && v255 != 64 && v255 != 128)
    {
      goto LABEL_165;
    }

LABEL_166:
    if (v217)
    {
      started = 4294967195;
      goto LABEL_275;
    }

    v254 = 1;
    v82 = v215;
    if (v98 && CFBooleanGetValue(v98))
    {
      v255 = 256;
    }

    else if ((*(v215 + 100) & 1) != 0 && v253[0] != 1 && v255 != 64)
    {
      v279 |= 0x20000001u;
      v285 = 1;
    }

    v269 = 0;
    v268 = 0u;
    v267 = 0u;
    v266 = 0u;
    v265 = 0u;
    v264 = 0u;
    v263 = 0u;
    v262 = 0u;
    v261 = 0u;
    v260 = 0u;
    v103 = Apple80211RawSet();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v104 = *__error();
      *buffer = 136315906;
      *&buffer[4] = "_performAssociation";
      *&buffer[12] = 1024;
      *&buffer[14] = 5211;
      *&buffer[18] = 1024;
      *&buffer[20] = v103;
      *&buffer[24] = 1024;
      *&buffer[26] = v104;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%u bsdErr:0x%0x  error:0x%0x \n", buffer, 0x1Eu);
    }

    if (!v103)
    {
      if (a4)
      {
LABEL_178:
        v105 = 1;
        goto LABEL_276;
      }

      if (*(v215 + 56) && (*(v215 + 21) & 1) != 0 && (*(v215 + 93) & 0x40) != 0)
      {
        CFRunLoopRunInMode(*MEMORY[0x277CBF058], 10.0, 0);
        goto LABEL_178;
      }

      v111 = _waitForJoinResult(v215);
LABEL_188:
      started = v111;
      goto LABEL_273;
    }

LABEL_510:
    started = *__error();
    goto LABEL_273;
  }

  v106 = *v70;
  v107 = CFDictionaryGetValue(a2, @"ALLOW_WPA2_PSK");
  cf2 = v106;
  v108 = v106 == makeBoolRef(v107);
  v109 = CFDictionaryGetValue(a2, @"ALLOW_OWE_TSN");
  v110 = makeBoolRef(v109);
  LODWORD(v260) = 1;
  v254 = 1;
  v220 = -1431655766;
  v82 = v215;
  if (v79 && (*(v215 + 89) & 0x40) != 0)
  {
    v204 = v110;
    v219 = 0;
    v116 = CFDictionaryGetValue(a2, @"AUTH_SEL_OVERRIDE");
    v212 = v108;
    v205 = v116;
    if (v116)
    {
      if (!CFNumberGetValue(v116, kCFNumberSInt32Type, &v219))
      {
        goto LABEL_450;
      }

      started = 4294967196;
      if (v219 > 7)
      {
        if (v219 == 24)
        {
          if ((~*(v215 + 105) & 0x30) != 0)
          {
            syslog(3, "%s: AUTH override set to WPA3 SAE but AKN24_25 is not supported\n");
            goto LABEL_183;
          }

          v211 = 0;
LABEL_371:
          v184 = 0x10000;
LABEL_403:
          v255 = v184;
          if ((valuePtr & 1) == 0)
          {
            if (v212)
            {
              v131 = 0;
              v279 |= 0x40000004u;
              LOBYTE(v108) = 1;
              goto LABEL_421;
            }

            v131 = 0;
            LOBYTE(v108) = 0;
            v187 = v279 | 0x1000000;
            goto LABEL_420;
          }

          v131 = 0;
          v279 |= 0x41000000u;
LABEL_396:
          LOBYTE(v108) = v212;
          goto LABEL_421;
        }

        if (v219 != 12)
        {
          if (v219 != 8)
          {
            goto LABEL_273;
          }

          if ((*(v215 + 97) & 8) == 0)
          {
            syslog(3, "%s: AUTH override set to WPA3 SAE but SAE is not supported\n");
LABEL_183:
            started = 4294963393;
            goto LABEL_273;
          }

          v211 = 0;
LABEL_380:
          v255 = 4096;
          if (valuePtr)
          {
            v187 = v279 | 0x40000100;
            LOBYTE(v108) = v212;
            v186 = v205;
          }

          else
          {
            LOBYTE(v108) = v212;
            v186 = v205;
            if (v212)
            {
              v187 = v279 | 0x40000004;
            }

            else
            {
              v187 = v279 | 0x100;
            }
          }

          v131 = 0;
          if (v186)
          {
            v187 = 256;
          }

LABEL_420:
          v279 = v187;
          goto LABEL_421;
        }

        if ((*(v215 + 97) & 0x10) == 0)
        {
          syslog(3, "%s: AUTH override set to WPA3 Enterprise but it is not supported\n");
          goto LABEL_183;
        }

        v211 = 0;
LABEL_378:
        v185 = 0x4000;
LABEL_394:
        v255 = v185;
LABEL_395:
        v131 = 1;
        goto LABEL_396;
      }

      if (v219 == 1)
      {
        v211 = 0;
LABEL_375:
        v185 = 4;
        goto LABEL_394;
      }

      if (v219 != 2)
      {
        goto LABEL_273;
      }

      v211 = 8;
      LOBYTE(v108) = 1;
LABEL_234:
      v129 = 8;
LABEL_235:
      v130 = v279;
      v255 = v129;
      v279 |= 4u;
      v131 = 1;
      if ((*(v215 + 97) & 8) == 0 || _MergedGlobals_0)
      {
        goto LABEL_421;
      }

LABEL_392:
      v131 = 0;
      v187 = v130 | 0x40000004;
      goto LABEL_420;
    }

    v128 = CFDictionaryGetValue(a2, @"FT_ENABLED");
    v202 = v95;
    if (v128)
    {
      v203 = CFEqual(v128, cf2) != 0;
    }

    else
    {
      v203 = 0;
    }

    v165 = CFDictionaryGetValue(a2, @"80211W_ENABLED");
    if (v165)
    {
      v166 = CFEqual(v165, cf2) != 0;
    }

    else
    {
      v166 = 0;
    }

    _getMFPCaps(a2, &v222, 0);
    _getPhyMode(a2, &v221);
    v167 = CFDictionaryGetValue(v79, @"IE_KEY_RSN_AUTHSELS");
    if (!v167)
    {
      goto LABEL_450;
    }

    v207 = v77;
    theArray = v167;
    v168 = CFArrayGetCount(v167);
    if (v168 < 1)
    {
      v211 = 0;
LABEL_366:
      syslog(3, "authSel %d\n", v219);
      v77 = v207;
      started = 4294963396;
      switch(v219)
      {
        case 0u:
          goto LABEL_273;
        case 1u:
          goto LABEL_375;
        case 2u:
          if (v214 & v202)
          {
            v129 = 16;
            LOBYTE(v108) = v212;
            goto LABEL_235;
          }

          LOBYTE(v108) = v212;
          break;
        case 3u:
          v185 = 128;
          goto LABEL_394;
        case 4u:
          v188 = 16;
          goto LABEL_390;
        case 5u:
          v185 = 2048;
          goto LABEL_394;
        case 6u:
          v188 = 1024;
LABEL_390:
          v130 = v279;
          v255 = v188;
          v279 |= 4u;
          v131 = 1;
          if ((*(v215 + 97) & 8) == 0)
          {
            goto LABEL_396;
          }

          LOBYTE(v108) = v212;
          if (!_MergedGlobals_0)
          {
            goto LABEL_392;
          }

          goto LABEL_421;
        case 8u:
          goto LABEL_380;
        case 9u:
          v255 = 0x2000;
          if (valuePtr)
          {
            v187 = v279 | 0x40000100;
            LOBYTE(v108) = v212;
          }

          else
          {
            LOBYTE(v108) = v212;
            if (v212)
            {
              v187 = v279 | 0x40000004;
            }

            else
            {
              v187 = v279 | 0x100;
            }
          }

          v131 = 0;
          goto LABEL_420;
        case 0xCu:
          goto LABEL_378;
        case 0xDu:
          v185 = 0x8000;
          goto LABEL_394;
        case 0x12u:
          v285 = 1;
          if (cf2 == v204)
          {
            v189 = v279 | 0x20000001;
          }

          else
          {
            v189 = v279 | 0x40000;
          }

          v279 = v189;
          goto LABEL_395;
        case 0x18u:
          goto LABEL_371;
        case 0x19u:
          v184 = 0x20000;
          goto LABEL_403;
        default:
          syslog(3, "******%s: unknown type (%d)\n", "_performAssociation", v219);
          goto LABEL_508;
      }

      goto LABEL_234;
    }

    v169 = v168;
    v211 = 0;
    v170 = 0;
    v201 = v166;
    if ((v214 & v95) != 0)
    {
      v171 = 16;
    }

    else
    {
      v171 = 8;
    }

    v208 = v171;
    v172 = theArray;
    while (1)
    {
      v173 = CFArrayGetValueAtIndex(v172, v170);
      if (!v173 || !CFNumberGetValue(v173, kCFNumberSInt32Type, &v220))
      {
        goto LABEL_349;
      }

      v175 = v220;
      v177 = v211;
      v176 = v212;
      if (v220 == 2)
      {
        v176 = 1;
        v177 = v208;
      }

      if (v220 == 4)
      {
        v176 = 1;
        v177 = 16;
      }

      if (v220 == 6)
      {
        v178 = 1;
      }

      else
      {
        v178 = v176;
      }

      if (v220 == 6)
      {
        v179 = 1024;
      }

      else
      {
        v179 = v177;
      }

      v211 = v179;
      v212 = v178;
      if (!Apple80211IsAuthSelAllowed(v220, (v215 + 88), v222, v174, _MergedGlobals_0))
      {
        goto LABEL_348;
      }

      v180 = v175 > 0x1E ? 0 : rsnAuthSelectorPriorityMap[v175];
      v181 = v219 > 0x1E ? 0 : rsnAuthSelectorPriorityMap[v219];
      if (v180 <= v181)
      {
        goto LABEL_348;
      }

      if (v175 > 8)
      {
        if (v175 > 17)
        {
          switch(v175)
          {
            case 18:
              v183 = 18;
LABEL_354:
              v219 = v183;
              break;
            case 24:
              goto LABEL_347;
            case 25:
              v172 = theArray;
              if (v203)
              {
                v182 = 25;
              }

              else
              {
                if (v219 <= 0x1E && ((0x7CFFCFD5uLL >> v219) & 1) == 0)
                {
                  goto LABEL_349;
                }

                v182 = 24;
              }

LABEL_364:
              v219 = v182;
              goto LABEL_349;
          }
        }

        else
        {
          switch(v175)
          {
            case 9:
              if (!v203)
              {
                v172 = theArray;
                if (v219 <= 0x1E && ((0x7CFFCCD5uLL >> v219) & 1) == 0)
                {
                  goto LABEL_349;
                }

                v182 = 8;
                goto LABEL_364;
              }

              v183 = 9;
              goto LABEL_354;
            case 12:
              goto LABEL_347;
            case 13:
              v172 = theArray;
              if (v214 & v95)
              {
                v182 = 13;
              }

              else
              {
                if (v219 <= 0x1E && ((0x7FFFCFF7uLL >> v219) & 1) == 0)
                {
                  goto LABEL_349;
                }

                v182 = 12;
              }

              goto LABEL_364;
          }
        }
      }

      else if (v175 > 4)
      {
        if ((v175 - 5) < 2)
        {
          if (!v201)
          {
            goto LABEL_348;
          }

          goto LABEL_347;
        }

        if (v175 == 8)
        {
          goto LABEL_347;
        }
      }

      else
      {
        if ((v175 - 1) >= 2)
        {
          if ((v175 - 3) >= 2 || !v203)
          {
            goto LABEL_348;
          }

LABEL_347:
          v219 = v175;
          goto LABEL_348;
        }

        if (((v255 == 128) & v214 & v95) != 1)
        {
          goto LABEL_347;
        }

        v219 = 3;
      }

LABEL_348:
      v172 = theArray;
LABEL_349:
      if (v169 == ++v170)
      {
        goto LABEL_366;
      }
    }
  }

  if (!v77 || (*(v215 + 89) & 0x20) == 0)
  {
    goto LABEL_183;
  }

  v219 = 0;
  v118 = CFDictionaryGetValue(a2, @"AUTH_SEL_OVERRIDE");
  if (v118)
  {
    if (CFNumberGetValue(v118, kCFNumberSInt32Type, &v219))
    {
      v119 = v219;
      if (v219 - 1 >= 2)
      {
        goto LABEL_508;
      }

      goto LABEL_248;
    }

    goto LABEL_450;
  }

  v213 = v108;
  v206 = v77;
  v132 = CFDictionaryGetValue(v77, @"IE_KEY_WPA_AUTHSELS");
  if (!v132)
  {
    goto LABEL_450;
  }

  v133 = v132;
  v134 = CFArrayGetCount(v132);
  if (v134 < 1)
  {
LABEL_247:
    v119 = v219;
    v77 = v206;
    LOBYTE(v108) = v213;
    if (v219)
    {
LABEL_248:
      if (v119 == 2)
      {
        v211 = 0;
        v255 = 2;
        v131 = 1;
        goto LABEL_421;
      }

      if (v119 == 1)
      {
        goto LABEL_384;
      }

      goto LABEL_508;
    }

LABEL_450:
    started = 4294963396;
    goto LABEL_273;
  }

  v135 = v134;
  v136 = 0;
  while (1)
  {
    v137 = CFArrayGetValueAtIndex(v133, v136);
    if (v137)
    {
      if (CFNumberGetValue(v137, kCFNumberSInt32Type, &v220))
      {
        break;
      }
    }

LABEL_246:
    if (v135 == ++v136)
    {
      goto LABEL_247;
    }
  }

  if (v220 != 1)
  {
    if (v219 < v220)
    {
      v219 = v220;
    }

    goto LABEL_246;
  }

  v219 = 1;
  v77 = v206;
  LOBYTE(v108) = v213;
LABEL_384:
  v211 = 0;
  v131 = 1;
  v255 = 1;
LABEL_421:
  if (!v217)
  {
    v194 = v255;
    if (v255 > 4095)
    {
      if (v255 >= 0x10000)
      {
        if (v255 != 0x20000 && v255 != 0x10000)
        {
          goto LABEL_485;
        }
      }

      else if (v255 != 4096 && v255 != 0x2000)
      {
        goto LABEL_485;
      }
    }

    else if ((v255 > 0x10 || ((1 << v255) & 0x10104) == 0) && v255 != 1024)
    {
      goto LABEL_485;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buffer = 136315394;
      *&buffer[4] = "_performAssociation";
      *&buffer[12] = 1024;
      *&buffer[14] = v194;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Missing password for upper auth %d\n", buffer, 0x12u);
    }

    goto LABEL_450;
  }

  *&v190 = 0xAAAAAAAAAAAAAAAALL;
  *(&v190 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buffer = v190;
  *&buffer[16] = v190;
  v111 = Apple80211ParseWPAPassword(__s, buffer, v117, 0, v257, range);
  if (v111)
  {
    goto LABEL_188;
  }

  if (v60 == 64)
  {
    v191 = 1;
  }

  else
  {
    v191 = v131;
  }

  if (v191 != 1)
  {
    v192 = v211;
    if (v60 - 1 > 0x3F)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v227 = "_performAssociation";
        v228 = 1024;
        v229 = v60;
        v230 = 1024;
        v231 = 0;
        _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: invalid length %d for passphrase, usePMK=%d", buf, 0x18u);
      }
    }

    else
    {
      DWORD2(v260) = 10;
      __memcpy_chk();
      v277 = *buffer;
      v278 = *&buffer[16];
      DWORD1(v260) = v60;
      v276 = 32;
    }

    goto LABEL_462;
  }

  v261 = *buffer;
  v262 = *&buffer[16];
  *(&v260 + 4) = 0x600000020;
  v192 = v211;
  if (v60 != 64)
  {
    goto LABEL_462;
  }

  v193 = v255;
  if (v255 <= 4095)
  {
    if (v255 == 8 || v255 == 16 || v255 == 1024)
    {
      goto LABEL_457;
    }

LABEL_462:
    memset(buffer, 0, sizeof(buffer));
    v194 = v255;
    if (v255 <= 4095)
    {
      if (v255 == 8 || v255 == 16 || v255 == 1024)
      {
        goto LABEL_473;
      }
    }

    else
    {
      if (v255 < 0x10000)
      {
        if (v255 != 4096 && v255 != 0x2000)
        {
          goto LABEL_485;
        }

LABEL_473:
        if (v77)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v227 = "_performAssociation";
            v228 = 1024;
            v229 = v192;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: WPA IE present, use WPA2-Personal (%u) only", buf, 0x12u);
          }

          if (!v192)
          {
            goto LABEL_183;
          }

          goto LABEL_484;
        }

        v218 = -1431655766;
        v196 = CFDictionaryGetValue(v79, @"IE_KEY_RSN_MCIPHER");
        if (v196)
        {
          if (CFNumberGetValue(v196, kCFNumberSInt32Type, &v218))
          {
            if (v218 != 2)
            {
              v194 = v255;
              goto LABEL_485;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v227 = "_performAssociation";
              v228 = 1024;
              v229 = 2;
              v230 = 1024;
              v231 = v192;
              _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: RSN has TKIP groupcipher (%u), use WPA2-Personal (%u) only", buf, 0x18u);
            }

            if (!v192)
            {
              started = 4294963393;
              goto LABEL_219;
            }

LABEL_484:
            v194 = v192;
            v279 = 0;
            v255 = v192;
            goto LABEL_485;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v227 = "_performAssociation";
            v199 = MEMORY[0x277D86220];
            v200 = "%s: failed to get groupcipher";
            goto LABEL_520;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v227 = "_performAssociation";
          v199 = MEMORY[0x277D86220];
          v200 = "%s: no groupcipher";
LABEL_520:
          _os_log_impl(&dword_254882000, v199, OS_LOG_TYPE_DEFAULT, v200, buf, 0xCu);
        }

LABEL_218:
        started = 4294963396;
LABEL_219:
        v82 = v215;
        goto LABEL_273;
      }

      if (v255 == 0x20000 || v255 == 0x10000)
      {
        goto LABEL_473;
      }
    }

LABEL_485:
    if (v194 > 2047)
    {
      if (v194 != 2048 && v194 != 0x8000 && v194 != 0x4000)
      {
        goto LABEL_494;
      }
    }

    else if (v194 != 1 && v194 != 4 && v194 != 128)
    {
      goto LABEL_494;
    }

    *(&v260 + 4) = 0;
LABEL_494:
    v111 = _buildWPAIEForAssocation(a2, &v271, &v270, (v215 + 88), v219, _MergedGlobals_0);
    if (v111)
    {
      goto LABEL_188;
    }

    v197 = Apple80211RawSet();
    v260 = 0u;
    v261 = 0u;
    v262 = 0u;
    v263 = 0u;
    v264 = 0u;
    v265 = 0u;
    v266 = 0u;
    v267 = 0u;
    v268 = 0u;
    v269 = 0;
    *__s = 0u;
    v234 = 0u;
    v235 = 0u;
    v236 = 0u;
    v237 = 0u;
    v238 = 0u;
    v239 = 0u;
    v240 = 0u;
    v241 = 0u;
    v242 = 0u;
    v243 = 0u;
    v244 = 0u;
    v245 = 0u;
    v246 = 0u;
    v247 = 0u;
    v248 = 0u;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v198 = *__error();
      *buffer = 136315650;
      *&buffer[4] = "_performAssociation";
      *&buffer[12] = 1024;
      *&buffer[14] = v197;
      *&buffer[18] = 1024;
      *&buffer[20] = v198;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: bsdErr:0x%0x  error:0x%0x \n", buffer, 0x18u);
    }

    if (!v197)
    {
      if (!a4)
      {
        if (!*(v215 + 56) || (*(v215 + 21) & 1) == 0 || (*(v215 + 93) & 0x40) == 0)
        {
          started = _waitForJoinResult(v215);
          if (started)
          {
            Apple80211SetWithIOCTL();
          }

          goto LABEL_273;
        }

        CFRunLoopRunInMode(*MEMORY[0x277CBF058], 10.0, 0);
      }

      started = 0;
      goto LABEL_273;
    }

    goto LABEL_510;
  }

  if (v255 >= 0x10000)
  {
    if (v255 == 0x20000 || v255 == 0x10000)
    {
      goto LABEL_457;
    }

    goto LABEL_462;
  }

  if (v255 != 4096 && v255 != 0x2000)
  {
    goto LABEL_462;
  }

LABEL_457:
  v195 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v211 && v108)
  {
    if (v195)
    {
      *buf = 136315394;
      v227 = "_performAssociation";
      v228 = 1024;
      v229 = v211;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: 64-byte password, use WPA2-PSK (%u) only\n", buf, 0x12u);
    }

    v279 = 0;
    v255 = v211;
    goto LABEL_462;
  }

  if (v195)
  {
    *buf = 136315650;
    v227 = "_performAssociation";
    v228 = 1024;
    v229 = v193;
    v230 = 1024;
    v231 = v211;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Cannot connect to authtype (%u) with 64-byte password (WPA2 type %u)\n", buf, 0x18u);
  }

LABEL_508:
  started = 4294967196;
LABEL_273:
  v105 = 1;
LABEL_274:
  if (started)
  {
LABEL_275:
    v73 = convertToApple80211Error(started);
    goto LABEL_290;
  }

LABEL_276:
  pthread_mutex_lock((v82 + 272));
  *(v82 + 336) = pthread_self();
  v155 = *(v82 + 344);
  if (v155)
  {
    CFRelease(v155);
    *(v82 + 344) = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buffer = 136315394;
      *&buffer[4] = "_performAssociation";
      *&buffer[12] = 2048;
      *&buffer[14] = 0;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Async assoc record reset to NULL[%p]\n", buffer, 0x16u);
    }
  }

  v156 = *(v82 + 1584);
  if (v156)
  {
    Current = CFAbsoluteTimeGetCurrent();
    CFRunLoopTimerSetNextFireDate(v156, Current + 315360000.0);
  }

  v158 = *(v82 + 1592);
  if (v158)
  {
    v159 = dispatch_time(0, 315360000000000000);
    dispatch_source_set_timer(v158, v159, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  *(v82 + 1600) = 0;
  *(v82 + 360) = 0u;
  *(v82 + 376) = 0u;
  *(v82 + 392) = 0u;
  *(v82 + 408) = 0u;
  *(v82 + 424) = 0u;
  *(v82 + 440) = 0u;
  *(v82 + 456) = 0u;
  *(v82 + 472) = 0u;
  *(v82 + 488) = 0u;
  *(v82 + 504) = 0u;
  *(v82 + 520) = 0u;
  *(v82 + 536) = 0u;
  *(v82 + 552) = 0u;
  *(v82 + 568) = 0u;
  *(v82 + 584) = 0u;
  *(v82 + 600) = 0u;
  *(v82 + 624) = 0;
  *(v82 + 620) = 0;
  *(v82 + 356) = 0;
  if (a4)
  {
    v160 = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a2);
    *(v82 + 344) = v160;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buffer = 136315650;
      *&buffer[4] = "_performAssociation";
      *&buffer[12] = 2112;
      *&buffer[14] = v160;
      *&buffer[22] = 2048;
      *&buffer[24] = v160;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Async assoc record updated %@[%p]\n", buffer, 0x20u);
    }

    *(v82 + 352) = 0;
    if ((v105 & 1) == 0)
    {
      *(v82 + 624) = 1;
      v161 = v225;
      *(v82 + 356) = HIDWORD(v225);
      *(v82 + 620) = v161;
      memmove((v82 + 360), __s, 0x100uLL);
      v162 = v250;
      *(v82 + 632) = v249;
      *(v82 + 648) = v162;
      *(v82 + 664) = p_src;
      memmove((v82 + 672), &__src, 0x38CuLL);
      *(v82 + 656) = 908;
      *(v82 + 664) = v82 + 672;
    }
  }

  else
  {
    *(v82 + 352) = 1;
  }

  pthread_mutex_unlock((v82 + 272));
  v73 = 0;
LABEL_290:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buffer = 136315394;
    *&buffer[4] = "_performAssociation";
    *&buffer[12] = 1024;
    *&buffer[14] = v73;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: error: (%d)\n", buffer, 0x12u);
  }

LABEL_292:
  v163 = *MEMORY[0x277D85DE8];
  return v73;
}

uint64_t Apple80211MaxLinkSpeed(uint64_t a1, unsigned int *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v23 = 0u;
  v22 = 0u;
  v20 = 0;
  v19 = 1;
  v21 = 0;
  result = 4294963396;
  if (a1 && a2)
  {
    __strlcpy_chk();
    LODWORD(v23) = 66;
    DWORD2(v23) = 16;
    v24 = &v19;
    if (Apple80211RawGet(a1, &v22))
    {
      v18 = 0;
      memset(&v17[1], 0, 176);
      v17[0] = 1;
      LODWORD(v23) = 32;
      DWORD2(v23) = 188;
      v24 = v17;
      if (!Apple80211RawGet(a1, &v22))
      {
        if (LOWORD(v17[1]))
        {
          v5 = 0;
          if (LOWORD(v17[1]) >= 0xFu)
          {
            v6 = 15;
          }

          else
          {
            v6 = LOWORD(v17[1]);
          }

          v7 = &v17[3];
          do
          {
            v9 = *v7;
            v7 += 3;
            v8 = v9;
            if (v9 > v5)
            {
              v5 = v8;
            }

            --v6;
          }

          while (v6);
        }

        else
        {
          v5 = 0;
        }

LABEL_29:
        result = 0;
        *a2 = v5;
        goto LABEL_30;
      }
    }

    else
    {
      v17[0] = 1;
      *&v17[1] = 0;
      v17[3] = 0;
      LODWORD(v23) = 4;
      DWORD2(v23) = 16;
      v24 = v17;
      if (!Apple80211RawGet(a1, &v22))
      {
        v10 = 0;
        v5 = 0;
        if ((v17[3] & 4) != 0)
        {
          v11 = 4;
        }

        else
        {
          v11 = 8;
        }

        v12 = &MCS_RATE_TABLE_40MHZ;
        if ((v17[3] & 4) == 0)
        {
          v12 = MCS_RATE_TABLE_20MHZ;
        }

        v13 = (v11 & *(a1 + 90));
        do
        {
          if ((*(&v20 + (v10 >> 3)) >> (v10 & 7)))
          {
            v14 = v12 + 1;
            if (!v13)
            {
              v14 = v12;
            }

            v15 = *v14;
            if (v5 <= v15)
            {
              v5 = v15;
            }
          }

          ++v10;
          v12 += 2;
        }

        while (v10 != 77);
        goto LABEL_29;
      }
    }

    result = *__error();
  }

LABEL_30:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Apple80211GetRsnAuthSelectorPriorityMap(unsigned int a1)
{
  if (a1 > 0x1E)
  {
    return 0;
  }

  else
  {
    return rsnAuthSelectorPriorityMap[a1];
  }
}

uint64_t Apple80211CopyLeakyAPStatus(const __CFData *a1, CFNumberRef *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!a1 || CFDataGetLength(a1) != 72)
  {
    v5 = 4294963396;
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v4;
  v12 = v4;
  *buffer = v4;
  v10 = v4;
  v15.length = CFDataGetLength(a1);
  v15.location = 0;
  CFDataGetBytes(a1, v15, buffer);
  v5 = 0;
  valuePtr = buffer[4];
  if (a2)
  {
LABEL_4:
    *a2 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt8Type, &valuePtr);
  }

LABEL_5:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t get_apple80211_log()
{
  if (qword_280C4DC48 != -1)
  {
    dispatch_once(&qword_280C4DC48, &__block_literal_global);
  }

  return qword_280C4DC40;
}

os_log_t __get_apple80211_log_block_invoke()
{
  result = os_log_create("com.apple.lib80211", "signpost");
  qword_280C4DC40 = result;
  return result;
}

uint64_t Apple80211IsAuthSelAllowed(int a1, _BYTE *a2, int a3, uint64_t a4, int a5)
{
  result = 0;
  if (a1 > 7)
  {
    v7 = a2[9];
    if (a1 <= 12)
    {
      if (a1 == 8)
      {
        v9 = (v7 >> 3) & 1;
      }

      else
      {
        if (a1 != 9)
        {
          v8 = (v7 >> 4) & 1;
          if (!a3)
          {
            v8 = 0;
          }

          if (a5)
          {
            v8 = 0;
          }

          if (a1 == 12)
          {
            return v8;
          }

          else
          {
            return 0;
          }
        }

        v9 = ((a2[4] & 2) != 0) & (v7 >> 3);
      }

      goto LABEL_27;
    }

    if ((a1 - 24) < 2)
    {
      v9 = (a2[17] >> 5) & 1;
    }

    else
    {
      if (a1 != 13)
      {
        if (a1 == 18)
        {
          return (a5 == 0) & a2[12];
        }

        return result;
      }

      v9 = (v7 >> 4) & 1;
      if ((a2[4] & 2) == 0)
      {
        v9 = 0;
      }
    }

LABEL_27:
    if (!a3)
    {
      v9 = 0;
    }

    if (a5)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  if ((a1 - 1) < 2)
  {
    return 1;
  }

  if ((a1 - 3) < 2)
  {
    return (a2[4] & 2) >> 1;
  }

  if ((a1 - 5) < 2)
  {
    return 1;
  }

  return result;
}

uint64_t Apple80211RangeAsync(uint64_t a1, CFArrayRef theArray, double a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || (*a1 & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  result = 4294963396;
  if (!theArray || !*(a1 + 4))
  {
    goto LABEL_13;
  }

  if (!CFArrayGetCount(theArray))
  {
LABEL_14:
    result = 4294963396;
    goto LABEL_13;
  }

  bzero(v9, 0x708uLL);
  result = _getRangingPeerRequest(theArray, v9);
  if (!result)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    LODWORD(v11) = 242;
    __strlcpy_chk();
    v7 = a3;
    v12 = v9;
    if (!a3)
    {
      v7 = 5;
    }

    *(&v11 + 4) = v7 | 0x70800000000;
    if (Apple80211RawSet())
    {
      result = *__error();
    }

    else
    {
      pthread_mutex_lock((a1 + 1680));
      if (!*(a1 + 1744))
      {
        *(a1 + 1744) = 1;
      }

      pthread_mutex_unlock((a1 + 1680));
      result = 0;
    }
  }

LABEL_13:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _getRangingPeerRequest(const __CFArray *a1, char *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    bzero(a2, 0x708uLL);
    *a2 = 1;
    if (a1 && CFArrayGetCount(a1) >= 1)
    {
      v4 = 0;
      v5 = a2 + 8;
      cf2 = *MEMORY[0x277CBED28];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
        if (ValueAtIndex)
        {
          v7 = ValueAtIndex;
          v8 = CFGetTypeID(ValueAtIndex);
          if (v8 == CFDictionaryGetTypeID())
          {
            Value = CFDictionaryGetValue(v7, @"STATION_MAC");
            v10 = CFDictionaryGetValue(v7, @"RANGING_TOKEN_ID");
            v11 = CFDictionaryGetValue(v7, @"RANGING_PMK");
            if (v11)
            {
              v12 = v11;
              if (CFDataGetLength(v11) > 64)
              {
                v14 = *(a2 + 1);
                *&v5[448 * v14 + 104] = 64;
                v15.length = 64;
              }

              else
              {
                Length = CFDataGetLength(v12);
                v14 = *(a2 + 1);
                *&v5[448 * v14 + 104] = Length;
                v15.length = Length;
              }

              v15.location = 0;
              CFDataGetBytes(v12, v15, &v5[448 * v14 + 40]);
            }

            v18 = CFDictionaryGetValue(v7, @"RANGING_NUM_MEASUREMENTS");
            if (v18)
            {
              CFNumberGetValue(v18, kCFNumberSInt8Type, &a2[448 * *(a2 + 1) + 114]);
            }

            v19 = CFDictionaryGetValue(v7, @"RANGING_CORE_MASK");
            if (v19)
            {
              CFNumberGetValue(v19, kCFNumberSInt16Type, &v5[448 * *(a2 + 1) + 120]);
            }

            v20 = CFDictionaryGetValue(v7, @"RANGING_MODE");
            if (v20)
            {
              CFNumberGetValue(v20, kCFNumberSInt8Type, &a2[448 * *(a2 + 1) + 132]);
            }

            v21 = CFDictionaryGetValue(v7, @"RANGING_PEER_FLAGS");
            v22 = &v5[448 * *(a2 + 1)];
            if (v21)
            {
              CFNumberGetValue(v21, kCFNumberSInt16Type, v22 + 36);
            }

            else
            {
              *(v22 + 18) = 0;
            }

            v23 = CFDictionaryGetValue(v7, @"RANGING_TIMEOUT");
            if (v23)
            {
              CFNumberGetValue(v23, kCFNumberSInt32Type, &v5[448 * *(a2 + 1) + 128]);
            }

            v24 = CFDictionaryGetValue(v7, @"RANGING_INTERVAL");
            if (v24)
            {
              CFNumberGetValue(v24, kCFNumberSInt16Type, &a2[448 * *(a2 + 1) + 140]);
            }

            v25 = CFDictionaryGetValue(v7, @"RANGING_EGRESS");
            if (v25)
            {
              CFNumberGetValue(v25, kCFNumberSInt16Type, &v5[448 * *(a2 + 1) + 136]);
            }

            v26 = CFDictionaryGetValue(v7, @"RANGING_INGRESS");
            if (v26)
            {
              CFNumberGetValue(v26, kCFNumberSInt16Type, &a2[448 * *(a2 + 1) + 142]);
            }

            v27 = CFDictionaryGetValue(v7, @"RANGING_RETURN_PARTIAL");
            if (v27 && CFEqual(v27, cf2))
            {
              v5[448 * *(a2 + 1) + 440] = 1;
            }

            v7 = Value;
            if (!Value)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v16 = CFGetTypeID(v7);
            if (v16 != CFStringGetTypeID())
            {
              v17 = CFGetTypeID(v7);
              if (v17 != CFDataGetTypeID())
              {
                goto LABEL_50;
              }
            }

            v10 = 0;
          }

          v28 = CFGetTypeID(v7);
          if (v28 != CFStringGetTypeID())
          {
            v41.location = 0;
            v41.length = 6;
            CFDataGetBytes(v7, v41, &v5[448 * *(a2 + 1) + 26]);
LABEL_40:
            if (v10)
            {
              v32 = CFGetTypeID(v10);
              if (v32 == CFStringGetTypeID())
              {
                memset(buffer, 170, 20);
                CFStringGetCString(v10, buffer, 20, 0x8000100u);
                v33 = strlen(buffer);
                if (v33 >= 6uLL)
                {
                  v34 = 6;
                }

                else
                {
                  v34 = v33;
                }

                memcpy(&v5[448 * *(a2 + 1) + 20], buffer, v34);
              }

              else
              {
                if (CFDataGetLength(v10) > 6)
                {
                  v35.length = 6;
                }

                else
                {
                  v35.length = CFDataGetLength(v10);
                }

                v35.location = 0;
                CFDataGetBytes(v10, v35, &v5[448 * *(a2 + 1) + 20]);
              }
            }

LABEL_50:
            ++*(a2 + 1);
            goto LABEL_51;
          }

          memset(buffer, 170, 20);
          CFStringGetCString(v7, buffer, 20, 0x8000100u);
          v29 = ether_aton(buffer);
          if (v29)
          {
            v30 = &v5[448 * *(a2 + 1)];
            v31 = *&v29->octet[4];
            *(v30 + 26) = *v29->octet;
            *(v30 + 15) = v31;
            goto LABEL_40;
          }
        }

LABEL_51:
        ++v4;
      }

      while (v4 < CFArrayGetCount(a1));
    }

    result = 0;
  }

  else
  {
    result = 4294963396;
  }

  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Apple80211RangingStopAsync(uint64_t a1, const __CFArray *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1 && (*a1 & 0x80000000) == 0 && *(a1 + 4))
  {
    bzero(v5, 0x708uLL);
    result = _getRangingPeerRequest(a2, v5);
    if (!result)
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
      LODWORD(v7) = 242;
      __strlcpy_chk();
      v8 = v5;
      *(&v7 + 4) = 0x70800000000;
      result = Apple80211RawSet();
      if (result)
      {
        result = *__error();
      }
    }
  }

  else
  {
    result = 4294963396;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Apple80211GetRangingPhyErrorString(int a1, char *__str, size_t __size)
{
  result = 4294963396;
  if (__str && __size)
  {
    if (!a1)
    {
      snprintf(__str, __size, "no error");
      return 0;
    }

    snprintf(__str, __size, "(");
    if (a1)
    {
      v10 = strlen(__str);
      snprintf(&__str[v10], __size - v10, "correlation/lo,");
      a1 &= ~1u;
      if ((a1 & 2) == 0)
      {
LABEL_6:
        if ((a1 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_30;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_6;
    }

    v11 = strlen(__str);
    snprintf(&__str[v11], __size - v11, "correlation/rx,");
    a1 &= ~2u;
    if ((a1 & 4) == 0)
    {
LABEL_7:
      if ((a1 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_31;
    }

LABEL_30:
    v12 = strlen(__str);
    snprintf(&__str[v12], __size - v12, "peak_power/lo,");
    a1 &= ~4u;
    if ((a1 & 8) == 0)
    {
LABEL_8:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_32;
    }

LABEL_31:
    v13 = strlen(__str);
    snprintf(&__str[v13], __size - v13, "peak_power/rx,");
    a1 &= ~8u;
    if ((a1 & 0x10) == 0)
    {
LABEL_9:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    }

LABEL_32:
    v14 = strlen(__str);
    snprintf(&__str[v14], __size - v14, "bit_error,");
    a1 &= ~0x10u;
    if ((a1 & 0x20) == 0)
    {
LABEL_10:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_34;
    }

LABEL_33:
    v15 = strlen(__str);
    snprintf(&__str[v15], __size - v15, "snr,");
    a1 &= ~0x20u;
    if ((a1 & 0x40) == 0)
    {
LABEL_11:
      if ((a1 & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_35;
    }

LABEL_34:
    v16 = strlen(__str);
    snprintf(&__str[v16], __size - v16, "start_win,");
    a1 &= ~0x40u;
    if ((a1 & 0x80) == 0)
    {
LABEL_12:
      if ((a1 & 0x8000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_36;
    }

LABEL_35:
    v17 = strlen(__str);
    snprintf(&__str[v17], __size - v17, "end_win,");
    a1 &= ~0x80u;
    if ((a1 & 0x8000) == 0)
    {
LABEL_13:
      if ((a1 & 0x1000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_37;
    }

LABEL_36:
    v18 = strlen(__str);
    snprintf(&__str[v18], __size - v18, "group_delay,");
    a1 &= ~0x8000u;
    if ((a1 & 0x1000) == 0)
    {
LABEL_14:
      if ((a1 & 0x2000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_38;
    }

LABEL_37:
    v19 = strlen(__str);
    snprintf(&__str[v19], __size - v19, "prep_late,");
    a1 &= ~0x1000u;
    if ((a1 & 0x2000) == 0)
    {
LABEL_15:
      if ((a1 & 0x10000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_39;
    }

LABEL_38:
    v20 = strlen(__str);
    snprintf(&__str[v20], __size - v20, "seq_fail,");
    a1 &= ~0x2000u;
    if ((a1 & 0x10000) == 0)
    {
LABEL_16:
      if ((a1 & 0x100) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_40;
    }

LABEL_39:
    v21 = strlen(__str);
    snprintf(&__str[v21], __size - v21, "no_slope,");
    a1 &= ~0x10000u;
    if ((a1 & 0x100) == 0)
    {
LABEL_17:
      if ((a1 & 0x200) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_41;
    }

LABEL_40:
    v22 = strlen(__str);
    snprintf(&__str[v22], __size - v22, "timing,");
    a1 &= ~0x100u;
    if ((a1 & 0x200) == 0)
    {
LABEL_18:
      if ((a1 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_42;
    }

LABEL_41:
    v23 = strlen(__str);
    snprintf(&__str[v23], __size - v23, "EVM,");
    a1 &= ~0x200u;
    if ((a1 & 0x400) == 0)
    {
LABEL_19:
      if ((a1 & 0x800) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_43;
    }

LABEL_42:
    v24 = strlen(__str);
    snprintf(&__str[v24], __size - v24, "LTE,");
    a1 &= ~0x400u;
    if ((a1 & 0x800) == 0)
    {
LABEL_20:
      if (!a1)
      {
LABEL_22:
        v8 = &__str[strlen(__str)];
        if (*(v8 - 1) == 44)
        {
          *(v8 - 1) = 0;
        }

        v9 = strlen(__str);
        snprintf(&__str[v9], __size - v9, ")");
        return 0;
      }

LABEL_21:
      v7 = strlen(__str);
      snprintf(&__str[v7], __size - v7, "0x%x", a1);
      goto LABEL_22;
    }

LABEL_43:
    v25 = strlen(__str);
    snprintf(&__str[v25], __size - v25, "throttling,");
    a1 &= ~0x800u;
    if (!a1)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  return result;
}

uint64_t Apple80211CopyRangingCapabilities(uint64_t a1, CFMutableDictionaryRef *a2)
{
  v2 = a2;
  v31 = *MEMORY[0x277D85DE8];
  if (!a1 || (*a1 & 0x80000000) != 0)
  {
    v4 = 0;
    v5 = 4294963396;
    if (!a2)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v4 = 0;
  v5 = 4294963396;
  if (a2 && *(a1 + 4))
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0u;
    v29 = 0u;
    LODWORD(v29) = 266;
    __strlcpy_chk();
    DWORD2(v29) = 24;
    v30 = &v25;
    if (Apple80211RawGet(a1, &v28))
    {
      v4 = 0;
      v5 = *__error();
      goto LABEL_18;
    }

    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      v4 = 0;
      v5 = 4294963395;
      goto LABEL_18;
    }

    v8 = Mutable;
    v9 = CFArrayCreateMutable(v6, 0, MEMORY[0x277CBF128]);
    if (v9)
    {
      v10 = v9;
      theDict = v8;
      v24 = v2;
      if (v26)
      {
        v11 = 0;
        v12 = &v27 + 4;
        v13 = MEMORY[0x277CBF138];
        v14 = MEMORY[0x277CBF150];
        while (1)
        {
          v15 = CFDictionaryCreateMutable(v6, 0, v13, v14);
          if (!v15)
          {
            break;
          }

          v8 = v15;
          v16 = CFNumberCreate(v6, kCFNumberSInt32Type, v12 - 4);
          if (!v16 || (v17 = v16, CFDictionarySetValue(v8, @"RANGING_CHANNEL", v16), CFRelease(v17), (v18 = CFNumberCreate(v6, kCFNumberSInt32Type, v12)) == 0))
          {
            CFRelease(theDict);
            CFRelease(v10);
            v4 = 0;
            v5 = 4294963395;
            goto LABEL_22;
          }

          v19 = v18;
          CFDictionarySetValue(v8, @"RANGING_CHANNEL_FLAGS", v18);
          CFRelease(v19);
          CFArrayAppendValue(v10, v8);
          CFRelease(v8);
          ++v11;
          v12 += 12;
          if (v11 >= v26)
          {
            goto LABEL_14;
          }
        }

        CFRelease(theDict);
        v4 = 0;
        v5 = 4294963395;
        v8 = v10;
LABEL_22:
        v2 = v24;
        goto LABEL_16;
      }

LABEL_14:
      v4 = theDict;
      CFDictionarySetValue(theDict, @"RANGING_SUPP_CHANNELS", v10);
      CFRelease(v10);
      v20 = CFNumberCreate(v6, kCFNumberSInt32Type, &v25 + 4);
      v2 = v24;
      if (v20)
      {
        v8 = v20;
        CFDictionarySetValue(theDict, @"RANGING_FEATURES", v20);
        v5 = 0;
LABEL_16:
        CFRelease(v8);
        goto LABEL_17;
      }

      v5 = 4294963395;
      v8 = theDict;
    }

    else
    {
      v5 = 4294963395;
    }

    v4 = 0;
    goto LABEL_16;
  }

LABEL_17:
  if (v2)
  {
LABEL_18:
    *v2 = v4;
  }

LABEL_19:
  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t Apple80211GasRequest(uint64_t a1, CFDictionaryRef theDict)
{
  v61 = *MEMORY[0x277D85DE8];
  valuePtr = -1;
  if (!a1 || (*a1 & 0x80000000) != 0 || !*(a1 + 4))
  {
    goto LABEL_51;
  }

  Value = CFDictionaryGetValue(theDict, @"GAS_PROTOCOL");
  if (!Value)
  {
LABEL_7:
    result = 4294963393;
    goto LABEL_50;
  }

  v38 = -1431655766;
  if (!CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
  {
    goto LABEL_51;
  }

  if (valuePtr)
  {
    goto LABEL_7;
  }

  if (!theDict || (bzero(v39, 0x710uLL), v6 = CFDictionaryGetValue(theDict, @"GAS_QUERY"), v7 = CFDictionaryGetValue(theDict, @"GAS_NETWORKS"), !v6) || (v8 = v7, (Count = CFArrayGetCount(v6)) == 0) || (v10 = Count, Count > 255))
  {
LABEL_51:
    result = 4294963396;
    goto LABEL_50;
  }

  v62.location = 0;
  v62.length = Count;
  CFArraySortValues(v6, v62, _compareQueries, 0);
  *&v39[6] = 256;
  if (v10 <= 0)
  {
    LOWORD(v20) = 4;
LABEL_25:
    *&v39[4] = v20;
    goto LABEL_26;
  }

  v11 = 0;
  v12 = 0;
  *buf = -21846;
  v13 = v40;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buffer = v14;
  *&buffer[16] = v14;
  v43 = v14;
  v44 = v14;
  v45 = v14;
  v46 = v14;
  v47 = v14;
  v48 = v14;
  v49 = v14;
  v50 = v14;
  v51 = v14;
  v52 = v14;
  v53 = v14;
  v54 = v14;
  v55 = v14;
  v56 = v14;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v11);
    if (ValueAtIndex && CFNumberGetValue(ValueAtIndex, kCFNumberSInt16Type, buf))
    {
      if (*buf > 0xFFu)
      {
        *v13++ = *buf;
        *&v39[8] += 2;
      }

      else
      {
        buffer[v12++] = buf[0];
      }
    }

    ++v11;
  }

  while (v10 != v11);
  *&v39[4] = *&v39[8] + 4;
  if (v12)
  {
    *v13 = -8739;
    v13[1] = v12 + 6;
    v13[2] = 28496;
    *(v13 + 6) = -102;
    *(v13 + 7) = 273;
    v16 = v12;
    v17 = v13 + 5;
    *(v13 + 9) = 0;
    v18 = buffer;
    do
    {
      v19 = *v18++;
      *v17++ = v19;
      --v16;
    }

    while (v16);
    v20 = (v12 + *&v39[4] + 10);
    goto LABEL_25;
  }

LABEL_26:
  memset(buffer, 170, 18);
  v21 = CFArrayGetCount(v8);
  if (!v21)
  {
    goto LABEL_51;
  }

  v22 = v21;
  if (v21 > 63)
  {
    goto LABEL_51;
  }

  if (v21 >= 1)
  {
    v23 = 0;
    v37 = -21846;
    v36 = -1431655766;
    v24 = &v41;
    do
    {
      v25 = CFArrayGetValueAtIndex(v8, v23);
      if (v25)
      {
        v26 = v25;
        v27 = CFDictionaryGetValue(v25, @"BSSID");
        if (!v27)
        {
          goto LABEL_51;
        }

        if (!CFStringGetCString(v27, buffer, 18, 0x8000100u))
        {
          goto LABEL_51;
        }

        v28 = ether_aton(buffer);
        if (!v28)
        {
          goto LABEL_51;
        }

        v29 = *v28->octet;
        *(v24 + 2) = *&v28->octet[4];
        *v24 = v29;
        v30 = CFDictionaryGetValue(v26, @"CHANNEL");
        if (!v30 || !CFNumberGetValue(v30, kCFNumberSInt16Type, &v37))
        {
          goto LABEL_51;
        }

        *(v24 - 4) = v37;
        v31 = CFDictionaryGetValue(v26, @"CHANNEL_FLAGS");
        if (v31)
        {
          if (!CFNumberGetValue(v31, kCFNumberSInt32Type, &v36))
          {
            goto LABEL_51;
          }
        }

        else
        {
          v32 = v37;
          if (v37 >= 0xEu)
          {
            v33 = 18;
          }

          else
          {
            v33 = 10;
          }

          v36 = v33;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            v58 = v32;
            v59 = 1024;
            v60 = v33;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Missing channel flags for GAS channel (%u) fake flags %x", buf, 0xEu);
          }
        }

        *(v24 - 1) = v36;
      }

      ++v23;
      v24 += 5;
    }

    while (v22 != v23);
  }

  v40[257] = v22;
  *&buffer[16] = 0u;
  *buffer = 0u;
  *&v43 = 0;
  *&buffer[16] = 197;
  __strlcpy_chk();
  *&buffer[24] = 1812;
  *&v43 = &v38;
  if (Apple80211RawSet())
  {
    result = *__error();
  }

  else
  {
    pthread_mutex_lock((a1 + 1608));
    if (!*(a1 + 1672))
    {
      *(a1 + 1672) = 1;
    }

    pthread_mutex_unlock((a1 + 1608));
    result = 0;
  }

LABEL_50:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Apple80211MonitorEventsWithBlock(void *a1, NSObject *a2, const void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = socket(32, 3, 1);
  if (v6 < 0)
  {
    v12 = *__error();
  }

  else
  {
    v7 = v6;
    v19 = 0x600000001;
    v20 = 1;
    if (ioctl(v6, 0x800C6502uLL, &v19))
    {
      v12 = *__error();
      v11 = -1;
    }

    else
    {
      v8 = dispatch_source_create(MEMORY[0x277D85D28], v7, 0, a2);
      if (v8)
      {
        v9 = v8;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 0x40000000;
        handler[2] = __Apple80211MonitorEventsWithBlock_block_invoke;
        handler[3] = &__block_descriptor_tmp_74;
        handler[4] = a1;
        v18 = v7;
        dispatch_source_set_event_handler(v8, handler);
        v10 = _Block_copy(a3);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 0x40000000;
        v15[2] = __Apple80211MonitorEventsWithBlock_block_invoke_2;
        v15[3] = &unk_27978E748;
        v16 = v7;
        v15[4] = v10;
        dispatch_source_set_cancel_handler(v9, v15);
        a1[9] = _eventBlockCallback;
        a1[10] = v10;
        a1[8] = v9;
        dispatch_activate(v9);
        v11 = 0;
        v12 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 4294963395;
      }
    }

    if (v12 | v11)
    {
      close(v7);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void __Apple80211MonitorEventsWithBlock_block_invoke()
{
  v0 = MEMORY[0x28223BE20]();
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  memset(v4, 170, sizeof(v4));
  if (read(v2, v4, 0x1018uLL) >= 24)
  {
    _eventRead(v1, v4);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __Apple80211MonitorEventsWithBlock_block_invoke_2(uint64_t a1)
{
  close(*(a1 + 40));
  v2 = *(a1 + 32);

  _Block_release(v2);
}

uint64_t Apple80211EventMonitoringInit(_DWORD *a1, uint64_t a2, uint64_t a3, __CFRunLoop *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.version) = 136315394;
    *(&buf.version + 4) = "Apple80211EventMonitoringInit";
    WORD2(buf.info) = 2048;
    *(&buf.info + 6) = a1;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: opaque=%p\n", &buf, 0x16u);
  }

  v27 = 0x600000001;
  v28 = 1;
  buf.version = 0;
  memset(&buf.retain, 0, 24);
  buf.info = a1;
  v8 = 4294963396;
  v9 = -1;
  if (a1 && a2 && (*a1 & 0x80000000) == 0 && *(a1 + 4))
  {
    if (*(a1 + 231) || *(a1 + 8) || *(a1 + 7))
    {
      Apple80211EventMonitoringHalt(a1);
    }

    inited = Apple80211EventMonitoringInitIOUC(a1, 0, a4);
    v11 = MEMORY[0x277CBECE8];
    v12 = MEMORY[0x277CBF058];
    if (!inited)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 136315138;
        v30 = "Apple80211EventMonitoringInit";
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Using IOUC event pipe\n", v29, 0xCu);
      }

      v8 = 0;
      goto LABEL_20;
    }

    v13 = socket(32, 3, 1);
    v9 = v13;
    if (v13 < 0 || ioctl(v13, 0x800C6502uLL, &v27))
    {
      v8 = *__error();
    }

    else
    {
      context.version = 0;
      memset(&context.retain, 0, 24);
      context.info = a1;
      v14 = *v11;
      v15 = CFSocketCreateWithNative(*v11, v9, 1uLL, _eventReadCallbackCF, &context);
      *(a1 + 7) = v15;
      if (v15)
      {
        RunLoopSource = CFSocketCreateRunLoopSource(v14, v15, 0);
        if (RunLoopSource)
        {
          v8 = RunLoopSource;
          CFRunLoopAddSource(a4, RunLoopSource, *v12);
LABEL_20:
          v17 = *v11;
          Current = CFAbsoluteTimeGetCurrent();
          v19 = CFRunLoopTimerCreate(v17, Current + 315360000.0, 0.2, 0, 0, _asyncAssocRetryCallback, &buf);
          *(a1 + 198) = v19;
          v20 = *v12;
          CFRunLoopAddTimer(a4, v19, v20);
          v21 = CFAbsoluteTimeGetCurrent();
          v22 = CFRunLoopTimerCreate(v17, v21 + 315360000.0, 0.2, 0, 0, _asyncScanRetryCallback, &buf);
          *(a1 + 31) = v22;
          CFRunLoopAddTimer(a4, v22, v20);
          *(a1 + 9) = a2;
          *(a1 + 10) = a3;
          if (v8)
          {
            CFRelease(v8);
            v8 = 0;
          }

          goto LABEL_22;
        }
      }

      v8 = 4294963395;
    }
  }

  if (a1)
  {
    if (v8)
    {
      v25 = *(a1 + 7);
      if (v25)
      {
        CFSocketInvalidate(v25);
        CFRelease(*(a1 + 7));
        *(a1 + 7) = 0;
      }
    }
  }

  if ((v9 & 0x80000000) == 0 && v8)
  {
    close(v9);
  }

LABEL_22:
  v23 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t Apple80211EventMonitoringInitIOUC(uint64_t a1, NSObject *a2, __CFRunLoop *a3)
{
  v88 = *MEMORY[0x277D85DE8];
  v61 = 0;
  outputStructCnt = 0xAAAAAAAAAAAAAAAALL;
  pthread_threadid_np(0, &v61);
  clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v68 = 0u;
  v69 = 0u;
  *reference = 0u;
  v67 = 0u;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v71 = "Apple80211EventMonitoringInitIOUC";
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Enter\n", buf, 0xCu);
  }

  if (a1 && (v6 = *(a1 + 1820)) != 0 && a2 | a3)
  {
    outputStructCnt = 1;
    v7 = IOConnectCallStructMethod(v6, 5u, 0, 0, (a1 + 1824), &outputStructCnt);
    v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v8)
      {
        goto LABEL_29;
      }

      *buf = 136315650;
      v71 = "Apple80211EventMonitoringInitIOUC";
      v72 = 2080;
      v73 = a1 + 4;
      v74 = 1024;
      LODWORD(v75) = v7;
      v17 = MEMORY[0x277D86220];
      v18 = "%s: useIOUCEventPipe query failed for %s with %d";
      v21 = 28;
      goto LABEL_28;
    }

    if (v8)
    {
      v9 = "TRUE";
      v10 = *(a1 + 1824);
      v71 = "Apple80211EventMonitoringInitIOUC";
      *buf = 136315650;
      v72 = 2080;
      if (!v10)
      {
        v9 = "FALSE";
      }

      v73 = a1 + 4;
      v74 = 2080;
      v75 = v9;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %s useIOUCEventPipe %s", buf, 0x20u);
    }

    if (!*(a1 + 1824))
    {
      goto LABEL_29;
    }

    v11 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
    *(a1 + 1848) = v11;
    if (v11)
    {
      MachPort = IONotificationPortGetMachPort(v11);
      if (!MachPort)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v71 = "Apple80211EventMonitoringInitIOUC";
          v72 = 2080;
          v73 = a1 + 4;
          v17 = MEMORY[0x277D86220];
          v18 = "%s: IONotificationPortGetMachPort failed for %s\n";
LABEL_27:
          v21 = 22;
LABEL_28:
          _os_log_impl(&dword_254882000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, v21);
        }

LABEL_29:
        v22 = 4294963393;
        goto LABEL_30;
      }

      v13 = MachPort;
      v14 = *(a1 + 1848);
      if (a2)
      {
        IONotificationPortSetDispatchQueue(v14, a2);
        v15 = 1944;
        v16 = 1840;
      }

      else
      {
        RunLoopSource = IONotificationPortGetRunLoopSource(v14);
        if (!RunLoopSource)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v71 = "Apple80211EventMonitoringInitIOUC";
            v72 = 2080;
            v73 = a1 + 4;
            v17 = MEMORY[0x277D86220];
            v18 = "%s: Failed to create RunLoopSource for %s\n";
            goto LABEL_27;
          }

          goto LABEL_29;
        }

        CFRunLoopAddSource(a3, RunLoopSource, *MEMORY[0x277CBF058]);
        v15 = 1840;
        v16 = 1944;
        a2 = a3;
      }

      *(a1 + v16) = a2;
      *(a1 + v15) = 0;
      if (IOConnectCallStructMethod(*(a1 + 1820), 3u, 0, 0, 0, 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v71 = "Apple80211EventMonitoringInitIOUC";
          v72 = 2080;
          v73 = a1 + 4;
          v17 = MEMORY[0x277D86220];
          v18 = "%s: Failed to init event monitoring in IOUC for %s\n";
          goto LABEL_27;
        }

        goto LABEL_29;
      }

      v64 = 0;
      v65 = 0;
      v63 = 0;
      v20 = *(a1 + 1848);
      if (v20)
      {
        IONotificationPortGetMachPort(v20);
      }

      current_queue = dispatch_get_current_queue();
      dispatch_queue_get_label(current_queue);
      pthread_threadid_np(0, &v63);
      clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      v26 = MEMORY[0x277D85F48];
      v27 = MEMORY[0x259C1D0A0](*(a1 + 1820), 1, *MEMORY[0x277D85F48], &v65, &v64, 4097);
      if (v27)
      {
        v47 = v27;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
LABEL_55:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v50 = *(a1 + 1896);
            v51 = *(a1 + 1904);
            v52 = *(a1 + 1928);
            v53 = *(a1 + 1936);
            v54 = *(a1 + 1912);
            v55 = *(a1 + 1916);
            *buf = 136317186;
            v71 = "_createMemoryMappings";
            v72 = 2080;
            v73 = a1 + 4;
            v74 = 2048;
            v75 = v50;
            v76 = 2048;
            v77 = v51;
            v78 = 2048;
            v79 = v52;
            v80 = 2048;
            v81 = v53;
            v82 = 1024;
            v83 = v54;
            v84 = 1024;
            v85 = v55;
            v86 = 1024;
            v87 = v47;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %s FAILED: mapped buffer info: ringBuffer: ringBuffer[0x%llx] ringSize[0x%llx], ringState: ringState[0x%llx] ringSize[0x%llx], connect[0x%x] task[0x%x] retVal[0x%08x]\n", buf, 0x50u);
          }

          v22 = 4294963395;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v71 = "Apple80211EventMonitoringInitIOUC";
            v72 = 2080;
            v73 = a1 + 4;
            v74 = 1024;
            LODWORD(v75) = -3901;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Failed to create memory mappings for %s, err[0x%08x]\n", buf, 0x1Cu);
          }

          goto LABEL_30;
        }

        *buf = 136315138;
        v71 = (a1 + 4);
        v48 = MEMORY[0x277D86220];
        v49 = "Failed to get Ring buffer address for %s\n";
      }

      else
      {
        v29 = v64;
        v28 = v65;
        *(a1 + 1856) = v65;
        *(a1 + 1864) = v29;
        *(a1 + 1880) = *(a1 + 1820);
        *(a1 + 1884) = *v26;
        *(a1 + 1888) = 1;
        *(a1 + 1904) = v29;
        *(a1 + 1896) = v28;
        v30 = MEMORY[0x259C1D0A0]();
        if (!v30)
        {
          v31 = v65;
          *(a1 + 1872) = v65;
          v32 = *(a1 + 1820);
          *(a1 + 1912) = v32;
          v33 = *v26;
          *(a1 + 1916) = v33;
          *(a1 + 1920) = 2;
          v34 = v64;
          *(a1 + 1936) = v64;
          *(a1 + 1928) = v31;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v38 = *(a1 + 1896);
            v39 = *(a1 + 1904);
            *buf = 136316930;
            v71 = "_createMemoryMappings";
            v72 = 2080;
            v73 = a1 + 4;
            v74 = 2048;
            v75 = v38;
            v76 = 2048;
            v77 = v39;
            v78 = 2048;
            v79 = v31;
            v80 = 2048;
            v81 = v34;
            v82 = 1024;
            v83 = v32;
            v84 = 1024;
            v85 = v33;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %s mapped buffer info: ringBuffer: ringBuffer[0x%llx] ringSize[0x%llx], ringState: ringState[0x%llx] ringSize[0x%llx], connect[0x%x] task[0x%x]\n", buf, 0x4Au);
            v40 = *(a1 + 1928);
            v41 = *(a1 + 1936);
            v42 = *(a1 + 1912);
            v43 = *(a1 + 1916);
          }

          v59 = *(a1 + 1896);
          v60 = *(a1 + 1904);
          v57 = *(a1 + 1848);
          _logEventPipeLogWithFormat(0, *(a1 + 1832), 2, 0, "%s:%u, @[%llu.%06llu] '%s' mapped buffer info: tid[0x%llx], dq[%p]/'%s' opaque[%p] ioucPort[%u] machPort[%u], ringBuffer: ringBuffer[0x%llx] ringSize[0x%llx], ringState: ringState[0x%llx] ringSize[0x%llx], connect[0x%x] task[0x%x]\n", v35, v36, v37, "_createMemoryMappings");
          reference[0] = v13;
          reference[1] = Apple80211EventMonitoringHelper;
          *&v67 = a1;
          if (IOConnectCallAsyncMethod(*(a1 + 1820), 2u, v13, reference, 8u, 0, 0, 0, 0, 0, 0, 0, 0))
          {
            v22 = 0;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_30;
            }

            *buf = 136315394;
            v71 = "Apple80211EventMonitoringInitIOUC";
            v72 = 2080;
            v73 = a1 + 4;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: IOConnectCallAsyncMethod failed for %s\n", buf, 0x16u);
          }

          else
          {
            if (*(a1 + 1840))
            {
              dispatch_queue_get_label(*(a1 + 1840));
            }

            v58 = *(a1 + 1848);
            v56 = *(a1 + 1944);
            _logEventPipeLogWithFormat(0, *(a1 + 1832), 2, 0, "%s:%u, @[%llu.%06llu] tid[0x%llx], ioucQueue[%p]/'%s' ioucRunLoop[%p] opaque[%p] ioucPort[%u] mpOfRLSource/machPort[%u], inited AsyncMethod\n", v44, v45, v46, "Apple80211EventMonitoringInitIOUC");
          }

          v22 = 0;
          goto LABEL_30;
        }

        v47 = v30;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_55;
        }

        *buf = 136315138;
        v71 = (a1 + 4);
        v48 = MEMORY[0x277D86220];
        v49 = "Failed to get Ring state address for %s\n";
      }

      _os_log_impl(&dword_254882000, v48, OS_LOG_TYPE_DEFAULT, v49, buf, 0xCu);
      goto LABEL_55;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v71 = "Apple80211EventMonitoringInitIOUC";
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: failed to create port\n", buf, 0xCu);
    }

    v22 = 4294963395;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v71 = "Apple80211EventMonitoringInitIOUC";
      v72 = 2080;
      v73 = a1 + 4;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: no user client connected for %s", buf, 0x16u);
    }

    v22 = 4294963396;
  }

LABEL_30:
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

void _eventReadCallbackCF()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v7 = *MEMORY[0x277D85DE8];
  Native = CFSocketGetNative(v0);
  if (v2)
  {
    if (*(v2 + 72))
    {
      v4 = Native;
      memset(v6, 170, sizeof(v6));
      if (read(v4, v6, 0x1018uLL) >= 24)
      {
        _eventRead(v2, v6);
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __Apple80211EventMonitoringInit2_block_invoke()
{
  v0 = MEMORY[0x28223BE20]();
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  memset(v4, 170, sizeof(v4));
  if (read(v2, v4, 0x1018uLL) >= 24 && *(v1 + 72))
  {
    _eventRead(v1, v4);
  }

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t Apple80211RawEventMonitoringInit(uint64_t a1, NSObject *a2, const void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "Apple80211RawEventMonitoringInit";
    v12 = 2048;
    v13 = a1;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: opaque=%p\n", &v10, 0x16u);
  }

  v6 = _Block_copy(a3);
  v7 = Apple80211EventMonitoringInit2(a1, _eventBlockCallback, v6, a2);
  if (v7)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *(a1 + 51) = 1;
  if (v6 && *(a1 + 109))
  {
LABEL_6:
    _Block_release(v6);
  }

LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t Apple80211RawEventMonitoringInitWithCFRunLoop(uint64_t a1, __CFRunLoop *a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = Apple80211EventMonitoringInit(a1, _eventBlockCallback, v5, a2);
  if (v6)
  {
    if (!v5)
    {
      return v6;
    }

    goto LABEL_4;
  }

  *(a1 + 51) = 1;
  if (v5 && *(a1 + 109))
  {
LABEL_4:
    _Block_release(v5);
  }

  return v6;
}

uint64_t Apple80211RawP2PEventMonitoringInit(uint64_t a1, NSObject *a2, const void *a3)
{
  if (!*(a1 + 1848) && !*(a1 + 64) && !*(a1 + 56) || (result = Apple80211EventMonitoringHalt(a1), !result))
  {
    result = Apple80211EventMonitoringInitIOUC(a1, a2, 0);
    if (!result)
    {
      v7 = _Block_copy(a3);
      result = 0;
      *(a1 + 72) = _eventBlockCallback;
      *(a1 + 80) = v7;
      *(a1 + 51) = 257;
    }
  }

  return result;
}

uint64_t Apple80211RawStartMonitoringEventAll(uint64_t a1)
{
  if (!a1 || !*(a1 + 56) && !*(a1 + 64) && !*(a1 + 1848))
  {
    return 4294963396;
  }

  v1 = 0;
  *(a1 + 52) = 1;
  return v1;
}

uint64_t Apple80211FilterMonitoringEvent(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || !*(a1 + 56) && !*(a1 + 64) && !*(a1 + 1848))
  {
LABEL_8:
    result = 4294963396;
    goto LABEL_9;
  }

  v11 = *(a1 + 52);
  *v12 = *(a1 + 20);
  *&v12[15] = *(a1 + 35);
  result = Apple80211SetWithIOCTL();
  if (result)
  {
    v3 = result;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = "Apple80211FilterMonitoringEvent";
      v7 = 2080;
      v8 = a1 + 4;
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Apple80211FilterMonitoringEvent  failed for %s with %d", &v5, 0x1Cu);
    }

    goto LABEL_8;
  }

LABEL_9:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Apple80211MapUserBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 1817))
  {
    input[0] = a2;
    input[1] = a3;
    result = IOConnectCallScalarMethod(*(a1 + 1820), 8u, input, 2u, 0, 0);
    if (result)
    {
      v4 = result;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v6 = 136315394;
        v7 = "Apple80211MapUserBuffer";
        v8 = 1024;
        v9 = v4;
        _os_log_debug_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s: Failed to map user buffer, return %d\n", &v6, 0x12u);
      }

      if (v4 == -536870201)
      {
        result = 4294963393;
      }

      else
      {
        result = v4;
      }
    }
  }

  else
  {
    result = 4294963393;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Apple80211EventSocketRef(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t Apple80211GetVirtualIfListCopy(_DWORD *a1, const __CFArray **a2)
{
  v29 = *MEMORY[0x277D85DE8];
  theArray = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v5 = 4294963396;
  if (!a1 || !a2 || (*a1 & 0x80000000) != 0)
  {
    goto LABEL_24;
  }

  v6 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v18 = "Apple80211GetVirtualIfListCopy";
    *buf = 136446722;
    v19 = 2048;
    v20 = v6 / 0x3B9ACA00;
    v21 = 2048;
    v22 = v6 % 0x3B9ACA00 / 0x3E8;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: @[%llu.%06llu] enter\n", buf, 0x20u);
  }

  IfListCopy = _getIfListCopy(a1, &theArray);
  if (IfListCopy)
  {
    v5 = IfListCopy;
LABEL_24:
    Count = CFArrayGetCount(Mutable);
    goto LABEL_17;
  }

  v8 = CFArrayGetCount(theArray);
  if (v8 >= 1)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (_isVirtualInterface(ValueAtIndex, 0))
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }
  }

  Count = CFArrayGetCount(Mutable);
  if (CFArrayGetCount(Mutable) >= 1)
  {
    v5 = 0;
    *a2 = Mutable;
    goto LABEL_18;
  }

  if (CFArrayGetCount(Mutable))
  {
    v5 = 0;
  }

  else
  {
    v5 = 4294963393;
  }

LABEL_17:
  CFRelease(Mutable);
LABEL_18:
  if (theArray)
  {
    CFRelease(theArray);
  }

  v13 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v18 = "Apple80211GetVirtualIfListCopy";
    *buf = 136447490;
    v20 = v13 / 0x3B9ACA00;
    v19 = 2048;
    v21 = 2048;
    v22 = v13 % 0x3B9ACA00 / 0x3E8;
    v23 = 1024;
    v24 = v5;
    v25 = 1024;
    v26 = v5;
    v27 = 2048;
    v28 = Count;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: @[%llu.%06llu] exit %d/0x%08x, ifCount[%ld]\n", buf, 0x36u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t _getIfListCopy(uint64_t a1, const __CFArray **a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v50 = 0;
  memset(__s1, 170, sizeof(__s1));
  alloc = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (a1)
  {
    v5 = *(a1 + 2016) == 0;
  }

  else
  {
    v5 = 1;
  }

  v49 = v5;
  v6 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v54 = "_getIfListCopy";
    *buf = 136315650;
    v55 = 2048;
    *v56 = v6 / 0x3B9ACA00;
    *&v56[8] = 2048;
    *&v56[10] = v6 % 0x3B9ACA00 / 0x3E8;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: enter @[%llu.%06llu]\n", buf, 0x20u);
  }

  v7 = 0;
  v8 = 4294963396;
  if (a1 && a2 && (*a1 & 0x80000000) == 0)
  {
    if (!Mutable)
    {
      v8 = 4294963395;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v54 = "_getIfListCopy";
        v55 = 1024;
        *v56 = 9086;
        *&v56[4] = 1024;
        *&v56[6] = -3901;
        *&v56[10] = 1024;
        *&v56[12] = -3901;
        _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s/%6u: Failed array allocation, err[%d/0x%08x]\n", buf, 0x1Eu);
      }

      goto LABEL_68;
    }

    v9 = getifaddrs(&v50);
    if (v9)
    {
      v44 = v9;
      v8 = *__error();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v54 = "_getIfListCopy";
        v55 = 1024;
        *v56 = 9089;
        *&v56[4] = 1024;
        *&v56[6] = v44;
        *&v56[10] = 1024;
        *&v56[12] = v44;
        _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s/%6u: Failed getifaddrs(), bsdErr[%d/0x%08x]\n", buf, 0x1Eu);
      }

      goto LABEL_55;
    }

    v48 = v6;
    v10 = &v50;
    v11 = -1;
    do
    {
      v10 = *v10;
      ++v11;
    }

    while (v10);
    memset(__s1, 0, sizeof(__s1));
    v47 = a2;
    *a2 = 0;
    v12 = v50;
    if (v50)
    {
      v13 = "stf0";
      theArray = Mutable;
      do
      {
        ifa_name = v12->ifa_name;
        if (!ifa_name || !strcmp(__s1, v12->ifa_name) || !strcmp("lo0", ifa_name) || !strcmp("gif0", ifa_name) || !strcmp("faith0", ifa_name) || !strcmp(v13, ifa_name))
        {
          goto LABEL_48;
        }

        v15 = v13;
        if (v49)
        {
          memset(v51, 0, 44);
          v16 = v12->ifa_name;
          __strlcpy_chk();
          v17 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          v18 = ioctl(*a1, 0xC02C6938uLL, v51);
          v19 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v17;
          if (v19 > 0x3B9AC9FF)
          {
            v20 = v12->ifa_name;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v21 = "*";
              if (v20)
              {
                v21 = v20;
              }

              *buf = 136448258;
              v54 = "_logTimeIfThresholdExceeded";
              v55 = 2082;
              *v56 = v21;
              *&v56[8] = 2080;
              *&v56[10] = " 'SIOCGIFMEDIA' ";
              *&v56[18] = 1024;
              *&v56[20] = -1070831304;
              *&v56[24] = 1024;
              *v57 = -1070831304;
              *&v57[4] = 2048;
              *&v57[6] = v19 / 0x3B9ACA00;
              *&v57[14] = 2048;
              *&v57[16] = v19 % 0x3B9ACA00 / 0x3E8;
              v58 = 2048;
              v59 = 1;
              v60 = 2048;
              v61 = 0;
              _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: ['%{public}s']%s: ioctl[0x%08x/%u] [%llu.%06llu] Exceeded threshold >= [%llu.%06llu]\n", buf, 0x54u);
            }
          }

          if (v18)
          {
            v13 = v15;
            if (v18 == 82 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v22 = v12->ifa_name;
              v23 = *__error();
              *buf = 136316674;
              v54 = "_getIfListCopy";
              v55 = 1024;
              *v56 = 9133;
              *&v56[4] = 2080;
              *&v56[6] = v22;
              v13 = v15;
              *&v56[14] = 1024;
              *&v56[16] = 82;
              *&v56[20] = 1024;
              *&v56[22] = v23;
              *v57 = 2048;
              *&v57[2] = 3224135992;
              *&v57[10] = 2048;
              *&v57[12] = 44;
              v24 = MEMORY[0x277D86220];
              v25 = "%s/%6u: Skipped interface '%s' EPWROFF, SIOCGIFMEDIA/bsdErr[%d], errno[%d], SIOCGIFMEDIA[0x%08lx] sizeof ifmediareq[%zu]\n";
              goto LABEL_39;
            }

            goto LABEL_47;
          }

          v13 = v15;
          if ((v51[1] & 0xE0) != 0x80)
          {
            goto LABEL_47;
          }
        }

        else
        {
          memset(v51, 0, 32);
          v26 = v12->ifa_name;
          __strlcpy_chk();
          v27 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          v28 = ioctl(*a1, 0xC020699FuLL, v51);
          v29 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v27;
          if (v29 > 0x3B9AC9FF)
          {
            v30 = v12->ifa_name;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v31 = "*";
              if (v30)
              {
                v31 = v30;
              }

              *buf = 136448258;
              v54 = "_logTimeIfThresholdExceeded";
              v55 = 2082;
              *v56 = v31;
              *&v56[8] = 2080;
              *&v56[10] = " 'SIOCGIFTYPE' ";
              *&v56[18] = 1024;
              *&v56[20] = -1071617633;
              *&v56[24] = 1024;
              *v57 = -1071617633;
              *&v57[4] = 2048;
              *&v57[6] = v29 / 0x3B9ACA00;
              *&v57[14] = 2048;
              *&v57[16] = v29 % 0x3B9ACA00 / 0x3E8;
              v58 = 2048;
              v59 = 1;
              v60 = 2048;
              v61 = 0;
              _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: ['%{public}s']%s: ioctl[0x%08x/%u] [%llu.%06llu] Exceeded threshold >= [%llu.%06llu]\n", buf, 0x54u);
            }
          }

          if (v28)
          {
            v13 = v15;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v32 = v12->ifa_name;
              v33 = *__error();
              *buf = 136316674;
              v54 = "_getIfListCopy";
              v55 = 1024;
              *v56 = 9164;
              *&v56[4] = 2080;
              *&v56[6] = v32;
              v13 = v15;
              *&v56[14] = 1024;
              *&v56[16] = v28;
              *&v56[20] = 1024;
              *&v56[22] = v33;
              *v57 = 2048;
              *&v57[2] = 3223349663;
              *&v57[10] = 2048;
              *&v57[12] = 32;
              v24 = MEMORY[0x277D86220];
              v25 = "%s/%6u: Skipped interface '%s' bsdErr, SIOCGIFTYPE/bsdErr[%d], errno[%d], SIOCGIFTYPE[0x%08lx] sizeof ifreq[%zu]\n";
LABEL_39:
              _os_log_error_impl(&dword_254882000, v24, OS_LOG_TYPE_ERROR, v25, buf, 0x3Cu);
            }

LABEL_47:
            Mutable = theArray;
            goto LABEL_48;
          }

          v13 = v15;
          if (LODWORD(v51[1]) != 6 || DWORD2(v51[1]) != 3)
          {
            goto LABEL_47;
          }
        }

        v34 = CFStringCreateWithCString(alloc, v12->ifa_name, 0x8000100u);
        Mutable = theArray;
        if (!v34)
        {
          v7 = 0;
          v8 = 4294963395;
          goto LABEL_53;
        }

        v35 = v34;
        v63.length = CFArrayGetCount(theArray);
        v63.location = 0;
        if (!CFArrayContainsValue(theArray, v63, v35))
        {
          CFArrayAppendValue(theArray, v35);
        }

        CFRelease(v35);
        v36 = v12->ifa_name;
        __strlcpy_chk();
LABEL_48:
        v12 = v12->ifa_next;
      }

      while (v12);
    }

    Count = CFArrayGetCount(Mutable);
    v38 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447490;
      v54 = "_getIfListCopy";
      *v56 = 9224;
      v55 = 1024;
      *&v56[4] = 2048;
      *&v56[6] = v38 / 0x3B9ACA00;
      *&v56[14] = 2048;
      *&v56[16] = v38 % 0x3B9ACA00 / 0x3E8;
      *&v56[24] = 1024;
      *v57 = v11;
      *&v57[4] = 2048;
      *&v57[6] = Count;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s/%6u: @[%llu.%06llu] getifaddrs nInterfaces[%3u], count[%3ld]\n", buf, 0x36u);
    }

    v8 = 0;
    v7 = 1;
LABEL_53:
    a2 = v47;
    v6 = v48;
  }

  if (!Mutable)
  {
    if (v7)
    {
      v39 = 0;
      if (CFArrayGetCount(0))
      {
        v8 = 0;
      }

      else
      {
        v8 = 4294963393;
      }

      goto LABEL_69;
    }

LABEL_68:
    v39 = 0;
    goto LABEL_69;
  }

LABEL_55:
  v39 = CFArrayGetCount(Mutable);
  if (v8)
  {
LABEL_56:
    CFRelease(Mutable);
    goto LABEL_69;
  }

  if (CFArrayGetCount(Mutable) < 1)
  {
    if (CFArrayGetCount(Mutable))
    {
      v8 = 0;
    }

    else
    {
      v8 = 4294963393;
    }

    goto LABEL_56;
  }

  v8 = 0;
  *a2 = Mutable;
LABEL_69:
  if (v50)
  {
    MEMORY[0x259C1D590]();
  }

  v40 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v41 = v40 - v6;
  if (v41 >= 0xB2D05E00 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136448258;
    v54 = "_logTimeIfThresholdExceeded";
    v55 = 2082;
    *v56 = "*";
    *&v56[8] = 2080;
    *&v56[10] = " total time ";
    *&v56[18] = 1024;
    *&v56[20] = 0;
    *&v56[24] = 1024;
    *v57 = 0;
    *&v57[4] = 2048;
    *&v57[6] = v41 / 0x3B9ACA00;
    *&v57[14] = 2048;
    *&v57[16] = (274877907 * (v41 % 0x3B9ACA00)) >> 38;
    v58 = 2048;
    v59 = 3;
    v60 = 2048;
    v61 = 0;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: ['%{public}s']%s: ioctl[0x%08x/%u] [%llu.%06llu] Exceeded threshold >= [%llu.%06llu]\n", buf, 0x54u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136448002;
    v54 = "_getIfListCopy";
    v55 = 2048;
    *v56 = v40 / 0x3B9ACA00;
    *&v56[8] = 2048;
    *&v56[10] = v40 % 0x3B9ACA00 / 0x3E8;
    *&v56[18] = 1024;
    *&v56[20] = v8;
    *&v56[24] = 1024;
    *v57 = v8;
    *&v57[4] = 2048;
    *&v57[6] = v41 / 0x3B9ACA00;
    *&v57[14] = 2048;
    *&v57[16] = v41 % 0x3B9ACA00 / 0x3E8;
    v58 = 2048;
    v59 = v39;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: @[%llu.%06llu] exit %d/0x%08x, total time [%llu.%06llu], ifCount[%ld]\n", buf, 0x4Au);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL _isVirtualInterface(void *a1, io_registry_entry_t a2)
{
  Service = a2;
  if (!a2)
  {
    Service = _Apple80211FindService(a1);
    if (!Service)
    {
      return 0;
    }
  }

  v4 = _copyStringRegistryPropertyFor(Service, @"IO80211VirtualInterfaceRole");
  v5 = v4;
  if (v4)
  {
    if (CFStringCompare(v4, @"AirLink", 0) && CFStringCompare(v5, @"WiFi-Aware Discovery", 0) && CFStringCompare(v5, @"WiFi-Aware Discovery+Data", 0) && CFStringCompare(v5, @"WiFi-Aware Data", 0))
    {
      v6 = CFStringCompare(v5, @"SoftAP", 0) == kCFCompareEqualTo;
      if (a2)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v6 = 1;
      if (a2)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_11;
  }

  v6 = 0;
  if (!a2)
  {
LABEL_11:
    IOObjectRelease(Service);
  }

LABEL_12:
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t Apple80211GetIfListCopy(uint64_t a1, const __CFArray **a2)
{
  v29 = *MEMORY[0x277D85DE8];
  theArray = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v5 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v18 = "Apple80211GetIfListCopy";
    *buf = 136446722;
    v19 = 2048;
    v20 = v5 / 0x3B9ACA00;
    v21 = 2048;
    v22 = v5 % 0x3B9ACA00 / 0x3E8;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: @[%llu.%06llu] enter\n", buf, 0x20u);
  }

  if (!a2)
  {
    v12 = 4294963396;
LABEL_23:
    Count = CFArrayGetCount(Mutable);
    goto LABEL_15;
  }

  *a2 = 0;
  IfListCopy = _getIfListCopy(a1, &theArray);
  if (IfListCopy)
  {
    v12 = IfListCopy;
    goto LABEL_23;
  }

  v7 = CFArrayGetCount(theArray);
  if (v7 >= 1)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (_isInfraInterface(ValueAtIndex, 0))
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }
  }

  Count = CFArrayGetCount(Mutable);
  if (CFArrayGetCount(Mutable) >= 1)
  {
    v12 = 0;
    *a2 = Mutable;
    goto LABEL_16;
  }

  if (CFArrayGetCount(Mutable))
  {
    v12 = 0;
  }

  else
  {
    v12 = 4294963393;
  }

LABEL_15:
  CFRelease(Mutable);
LABEL_16:
  if (theArray)
  {
    CFRelease(theArray);
  }

  v13 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v18 = "Apple80211GetIfListCopy";
    *buf = 136447490;
    v20 = v13 / 0x3B9ACA00;
    v19 = 2048;
    v21 = 2048;
    v22 = v13 % 0x3B9ACA00 / 0x3E8;
    v23 = 1024;
    v24 = v12;
    v25 = 1024;
    v26 = v12;
    v27 = 2048;
    v28 = Count;
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: @[%llu.%06llu] exit %d/0x%08x, ifCount[%ld]\n", buf, 0x36u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

BOOL _isInfraInterface(void *a1, io_registry_entry_t a2)
{
  Service = a2;
  if (!a2)
  {
    Service = _Apple80211FindService(a1);
    if (!Service)
    {
      return 0;
    }
  }

  v4 = _copyStringRegistryPropertyFor(Service, @"IO80211InterfaceRole");
  v5 = v4;
  if (v4)
  {
    v6 = CFStringCompare(v4, @"Infrastructure", 0) == kCFCompareEqualTo;
    if (a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if (!a2)
  {
LABEL_5:
    IOObjectRelease(Service);
  }

LABEL_6:
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t Apple80211BindToInterfaceWithParams(void *a1, __CFString *a2, uint64_t a3, uint64_t a4, dispatch_queue_t queue)
{
  v27 = *MEMORY[0x277D85DE8];
  label = dispatch_queue_get_label(queue);
  if (label)
  {
    v11 = label;
  }

  else
  {
    v11 = "";
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446210;
    v16 = "Apple80211BindToInterfaceWithParams";
    _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Enter:%{public}s: ", &v15, 0xCu);
  }

  v12 = 4294963396;
  if (a1 && a2)
  {
    a1[245] = a3;
    a1[246] = a4;
    a1[247] = queue;
    if (queue)
    {
      dispatch_retain(queue);
    }

    v12 = Apple80211BindToInterface(a1, a2);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136447490;
      v16 = "Apple80211BindToInterfaceWithParams";
      v17 = 1024;
      v18 = v12;
      v19 = 2048;
      v20 = a1;
      v21 = 2048;
      v22 = a4;
      v23 = 2048;
      v24 = queue;
      v25 = 2082;
      v26 = v11;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Exit: %{public}s err:%d, opaque[%p] context[%p] queue[%p] dq:'%{public}s'", &v15, 0x3Au);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}