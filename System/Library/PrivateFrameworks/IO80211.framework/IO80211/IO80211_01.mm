uint64_t Apple80211IOCTLGetWrapper()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v66 = *MEMORY[0x277D85DE8];
  v4 = *(v1 + 16);
  if (!*(v0 + 109))
  {
    if (*(v0 + 1817))
    {
      bzero(buf, 0x3C30uLL);
      *buf = -1071093303;
      v7 = v3 + 4;
      __strlcpy_chk();
      v64 = v4;
      v65 = v2[5];
      if (*(v3 + 2008))
      {
        v8 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          if (v4 > 584)
          {
            v9 = "Error Invalid ioctl";
          }

          else if (v4 == -1)
          {
            v9 = "APPLE80211_IOC_CARD_SPECIFIC";
          }

          else if (v4 < 0 || (v9 = gAppleIoucIndexToString[v4]) == 0)
          {
            v9 = "unknown Apple80211_IOC_";
          }

          v16 = v2[6];
          *v41 = 136448002;
          *&v41[4] = "Apple80211IOCTLGetWrapper";
          *&v41[12] = 1024;
          *&v41[14] = 8095;
          *&v41[18] = 2048;
          *&v41[20] = v8 / 0x3B9ACA00;
          *&v41[28] = 2048;
          *&v41[30] = v8 % 0x3B9ACA00 / 0x3E8;
          v42 = 2082;
          v43 = v3 + 4;
          v44 = 1024;
          v45 = v4;
          v46 = 2082;
          v47 = v9;
          v48 = 1024;
          v49 = v16;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s:%u @[%llu.%06llu] ifname['%{public}s'] IOUC type %d/'%{public}s', len[%d]\n", v41, 0x46u);
        }
      }

      v17 = v2[6];
      if ((v17 - 1) >> 10 >= 0xF)
      {
        v18 = *(v2 + 4);
      }

      else
      {
        LODWORD(v55) = v2[6];
        v18 = *(v2 + 4);
        __memcpy_chk();
      }

      if (v17)
      {
        v19 = v18 == 0;
      }

      else
      {
        v19 = 1;
      }

      v20 = v19;
      v21 = 4;
      if (!v19)
      {
        v21 = v17;
      }

      outputStructCnt = v21;
      v22 = *(v3 + 1820);
      if (v22)
      {
        if (v20)
        {
          v23 = v2 + 5;
        }

        else
        {
          v23 = v18;
        }

        v24 = IOConnectCallStructMethod(v22, 0, buf, 0x3C30uLL, v23, &outputStructCnt);
        if (v24)
        {
          *__error() = v24;
          v25 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            if (v4 > 584)
            {
              v26 = "Error Invalid ioctl";
            }

            else if (v4 == -1)
            {
              v26 = "APPLE80211_IOC_CARD_SPECIFIC";
            }

            else if (v4 < 0 || (v26 = gAppleIoucIndexToString[v4]) == 0)
            {
              v26 = "unknown Apple80211_IOC_";
            }

            v39 = v2[6];
            *v41 = 136448514;
            *&v41[4] = "Apple80211IOCTLGetWrapper";
            *&v41[12] = 1024;
            *&v41[14] = 8128;
            *&v41[18] = 2048;
            *&v41[20] = v25 / 0x3B9ACA00;
            *&v41[28] = 2048;
            *&v41[30] = v25 % 0x3B9ACA00 / 0x3E8;
            v42 = 2082;
            v43 = v7;
            v44 = 1024;
            v45 = v4;
            v46 = 2082;
            v47 = v26;
            v48 = 1024;
            v49 = v39;
            v50 = 1024;
            v51 = v24;
            v52 = 1024;
            v53 = v24;
            _os_log_debug_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}s:%u @[%llu.%06llu] ifname['%{public}s'] IOUC type %d/'%{public}s', len[%d] return %d/0x%08x\n", v41, 0x52u);
          }
        }

        else
        {
          v2[6] = outputStructCnt;
        }

        goto LABEL_70;
      }

      v24 = 3758097088;
      v27 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
LABEL_70:
        v38 = *MEMORY[0x277D85DE8];
        return v24;
      }

      if (v4 > 584)
      {
        v28 = "Error Invalid ioctl";
      }

      else if (v4 == -1)
      {
        v28 = "APPLE80211_IOC_CARD_SPECIFIC";
      }

      else if (v4 < 0 || (v28 = gAppleIoucIndexToString[v4]) == 0)
      {
        v28 = "unknown Apple80211_IOC_";
      }

      *v41 = 136447746;
      *&v41[4] = "Apple80211IOCTLGetWrapper";
      *&v41[12] = 1024;
      *&v41[14] = 8113;
      *&v41[18] = 2048;
      *&v41[20] = v27 / 0x3B9ACA00;
      *&v41[28] = 2048;
      *&v41[30] = v27 % 0x3B9ACA00 / 0x3E8;
      v42 = 2082;
      v43 = v7;
      v44 = 1024;
      v45 = v4;
      v46 = 2082;
      v47 = v28;
      v29 = MEMORY[0x277D86220];
      v30 = "%{public}s:%u @[%llu.%06llu] ifname['%{public}s'] WiFi is in the middle of recovery, ignore command, type %d/'%{public}s'\n";
      v31 = v41;
      v32 = 64;
    }

    else
    {
      memset(v41, 0, 32);
      v10 = v0 + 4;
      __strlcpy_chk();
      v11 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      ioctl(*v3, 0xC0206911uLL, v41);
      v12 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v11;
      if (v12 > 0x3B9AC9FF && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136448258;
        v55 = "_logTimeIfThresholdExceeded";
        v56 = 2082;
        *v57 = v41;
        *&v57[8] = 2080;
        *&v57[10] = " 'SIOCGIFFLAGS' ";
        *&v57[18] = 1024;
        *&v57[20] = -1071617775;
        v58 = 1024;
        *v59 = -1071617775;
        *&v59[4] = 2048;
        *&v59[6] = v12 / 0x3B9ACA00;
        v60 = 2048;
        *v61 = v12 % 0x3B9ACA00 / 0x3E8;
        *&v61[8] = 2048;
        *&v61[10] = 1;
        *&v61[18] = 2048;
        v62 = 0;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: ['%{public}s']%s: ioctl[0x%08x/%u] [%llu.%06llu] Exceeded threshold >= [%llu.%06llu]\n", buf, 0x54u);
      }

      __strlcpy_chk();
      if (*(v3 + 2008))
      {
        v13 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v14 = v2[4];
          if (v14 > 584)
          {
            v15 = "Error Invalid ioctl";
          }

          else if (v14 == -1)
          {
            v15 = "APPLE80211_IOC_CARD_SPECIFIC";
          }

          else if (v14 < 0 || (v15 = gAppleIoucIndexToString[v14]) == 0)
          {
            v15 = "unknown Apple80211_IOC_";
          }

          v33 = v2[6];
          *buf = 136448258;
          v55 = "Apple80211IOCTLGetWrapper";
          v56 = 1024;
          *v57 = 8150;
          *&v57[4] = 2048;
          *&v57[6] = v13 / 0x3B9ACA00;
          *&v57[14] = 2048;
          *&v57[16] = v13 % 0x3B9ACA00 / 0x3E8;
          v58 = 2082;
          *v59 = v3 + 4;
          *&v59[8] = 1024;
          *&v59[10] = *&v41[16];
          v60 = 1024;
          *v61 = v14;
          *&v61[4] = 2082;
          *&v61[6] = v15;
          *&v61[14] = 1024;
          *&v61[16] = v33;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s:%u @[%llu.%06llu] ifname['%{public}s']/0x%08x IOCTL type %d/'%{public}s', len[%d]\n", buf, 0x4Cu);
        }
      }

      v24 = ioctl(*v3, 0xC02869C9uLL, v2);
      if (!v24)
      {
        goto LABEL_70;
      }

      v34 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_70;
      }

      v35 = v2[4];
      if (v35 > 584)
      {
        v36 = "Error Invalid ioctl";
      }

      else if (v35 == -1)
      {
        v36 = "APPLE80211_IOC_CARD_SPECIFIC";
      }

      else if (v35 < 0 || (v36 = gAppleIoucIndexToString[v35]) == 0)
      {
        v36 = "unknown Apple80211_IOC_";
      }

      v37 = v2[6];
      *buf = 136448770;
      v55 = "Apple80211IOCTLGetWrapper";
      v56 = 1024;
      *v57 = 8156;
      *&v57[4] = 2048;
      *&v57[6] = v34 / 0x3B9ACA00;
      *&v57[14] = 2048;
      *&v57[16] = v34 % 0x3B9ACA00 / 0x3E8;
      v58 = 2082;
      *v59 = v10;
      *&v59[8] = 1024;
      *&v59[10] = *&v41[16];
      v60 = 1024;
      *v61 = v35;
      *&v61[4] = 2082;
      *&v61[6] = v36;
      *&v61[14] = 1024;
      *&v61[16] = v37;
      LOWORD(v62) = 1024;
      *(&v62 + 2) = v24;
      HIWORD(v62) = 1024;
      v63 = v24;
      v29 = MEMORY[0x277D86220];
      v30 = "%{public}s:%u @[%llu.%06llu] ifname['%{public}s']/0x%08x IOCTL type %d/'%{public}s', len[%d] return %d/0x%08x\n";
      v31 = buf;
      v32 = 88;
    }

    _os_log_impl(&dword_254882000, v29, OS_LOG_TYPE_DEFAULT, v30, v31, v32);
    goto LABEL_70;
  }

  v5 = *MEMORY[0x277D85DE8];

  return _Apple80211AWDLCompatibilityCall(v0, v1, 0);
}

uint64_t _addScanResultToList(uint64_t a1, _WORD *a2, const __CFArray *a3, const __CFArray *a4, CFTypeRef cf, int a6, int a7, int a8, unsigned __int8 a9, char a10, char a11, char a12)
{
  v190 = *MEMORY[0x277D85DE8];
  idx = 0xAAAAAAAAAAAAAAAALL;
  if (!a2)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v163 = 4294963396;
      goto LABEL_327;
    }

    v20 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v157 = 0;
    v26 = 0;
    v28 = 0;
    cf1 = 0;
    v164 = 0;
    v163 = 4294963396;
    goto LABEL_339;
  }

  v178 = *(a1 + 99);
  v18 = MEMORY[0x277CBECE8];
  if (cf)
  {
    Mutable = CFRetain(cf);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v20 = Mutable;
  if (!Mutable)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v163 = 4294963395;
      goto LABEL_327;
    }

    v20 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v157 = 0;
    v26 = 0;
    v28 = 0;
    cf1 = 0;
    v164 = 0;
    v163 = 4294963395;
    goto LABEL_339;
  }

  v21 = 134217984;
  theArray = a4;
  v179 = a3;
  if ((v178 & 0x40) == 0)
  {
    v174 = 0;
LABEL_9:
    if (*(a2 + 96) && *(a2 + 97))
    {
      v23 = *v18;
      v24 = 1;
      do
      {
        v25 = CFStringCreateWithBytes(v23, a2 + 97, *(a2 + 96), v21, 0);
        v26 = v25;
        if ((v24 & 1) == 0)
        {
          break;
        }

        v24 = 0;
        v21 = 1280;
      }

      while (!v25);
      v27 = CFDataCreate(v23, a2 + 97, *(a2 + 96));
      v28 = 0;
      a3 = v179;
      if (!v27)
      {
        v163 = 4294963395;
        v160 = 0;
        v161 = 0;
        v162 = 0;
        v157 = 0;
        cf1 = 0;
        goto LABEL_337;
      }

      cf1 = v27;
    }

    else
    {
      cf1 = 0;
      v28 = 0;
      v26 = 0;
    }

    goto LABEL_19;
  }

  v22 = *(a2 + 136);
  v174 = (v22 >> 2) & 1;
  if ((v22 & 8) == 0)
  {
    goto LABEL_9;
  }

  valuePtr = *(a2 + 97);
  v29 = CFNumberCreate(*v18, kCFNumberSInt32Type, &valuePtr);
  cf1 = 0;
  if (!v29)
  {
    v163 = 4294963395;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v157 = 0;
    v26 = 0;
    v28 = 0;
    goto LABEL_337;
  }

  v28 = v29;
  v26 = 0;
LABEL_19:
  v30 = ether_ntoa((a2 + 14));
  if (v30)
  {
    v168 = a6;
    v31 = *v18;
    cf2 = CFStringCreateWithCString(*v18, v30, 0x8000100u);
    if (cf2)
    {
      v169 = a1;
      v167 = a7;
      v172 = v26;
      v173 = v28;
      theDict = v20;
      if (a3)
      {
        Count = CFArrayGetCount(a3);
        idx = 0;
        if (Count >= 1)
        {
          v33 = Count;
          v34 = 0;
          v35 = *MEMORY[0x277CBED28];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a3, v34);
            if (ValueAtIndex)
            {
              v37 = ValueAtIndex;
              Value = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
              v39 = CFDictionaryGetValue(v37, @"SSID");
              if ((v178 & 0x40) != 0)
              {
                v40 = CFDictionaryGetValue(v37, @"SHORT_SSID");
                v41 = CFDictionaryGetValue(v37, @"SCAN_RESULT_FROM_FILS_DISC_FRAME") == v35;
                if (!Value)
                {
                  goto LABEL_42;
                }
              }

              else
              {
                v40 = 0;
                v41 = 0;
                if (!Value)
                {
                  goto LABEL_42;
                }
              }

              if (CFEqual(Value, cf2))
              {
                if (cf1 && v39)
                {
                  if (!CFEqual(v39, cf1))
                  {
                    goto LABEL_42;
                  }
                }

                else if (cf1 || v39)
                {
                  goto LABEL_42;
                }

                if (v41 == v174)
                {
                  if (v173 && v40)
                  {
                    if (CFEqual(v40, v173))
                    {
                      v160 = 0;
                      v161 = 0;
                      v162 = 0;
                      v163 = 4294963394;
                      goto LABEL_332;
                    }
                  }

                  else if (!(v173 | v40))
                  {
                    v160 = 0;
                    v161 = 0;
                    v162 = 0;
                    v28 = 0;
                    v163 = 4294963394;
                    v20 = theDict;
                    v157 = cf2;
                    goto LABEL_337;
                  }
                }
              }
            }

LABEL_42:
            v34 = idx + 1;
            idx = v34;
            a3 = v179;
          }

          while (v34 < v33);
        }
      }

      else
      {
        idx = 0;
      }

      if (!a12 && v174)
      {
        v160 = 0;
        v161 = 0;
        v162 = 0;
        goto LABEL_357;
      }

      cfa = 0;
      v42 = 0;
      v20 = theDict;
      if (!v168 || !cf1)
      {
        goto LABEL_98;
      }

      v43 = theArray;
      if (!theArray)
      {
        v42 = 0;
        cfa = 0;
        idx = 0;
        goto LABEL_98;
      }

      v44 = CFArrayGetCount(theArray);
      idx = 0;
      if (v44 < 1)
      {
        v42 = 0;
        cfa = 0;
        goto LABEL_98;
      }

      v45 = v44;
      cfa = 0;
      v46 = 0;
      while (1)
      {
        v47 = CFArrayGetValueAtIndex(v43, v46);
        if (!v47)
        {
          goto LABEL_74;
        }

        v48 = v47;
        v49 = CFDictionaryGetValue(v47, @"SSID");
        if (!v49)
        {
          goto LABEL_74;
        }

        if (!CFEqual(cf1, v49))
        {
          goto LABEL_74;
        }

        LOWORD(v185) = -21846;
        v50 = CFDictionaryGetValue(v48, @"AP_MODE");
        if (!v50 || !CFNumberGetValue(v50, kCFNumberSInt16Type, &v185))
        {
          goto LABEL_74;
        }

        if (v185 != 2)
        {
          break;
        }

        if (a2[13])
        {
          goto LABEL_62;
        }

LABEL_74:
        v46 = idx + 1;
        idx = v46;
        if (v46 >= v45)
        {
          v42 = 0;
          goto LABEL_98;
        }
      }

      if (v185 == 1 && (a2[13] & 2) == 0)
      {
        goto LABEL_74;
      }

LABEL_62:
      if (a8)
      {
        v51 = a2[69];
        if ((v51 - 3) <= 0x7FD)
        {
          v56 = 0;
          v57 = 0;
          v58 = (a2 + 70);
          do
          {
            v59 = v51 - 2;
            v60 = v58[1];
            v97 = v59 >= v60;
            v51 = v59 - v60;
            if (!v97)
            {
              break;
            }

            v61 = *v58;
            if (v60 >= 4 && v61 == 127)
            {
              if ((v58[4] & 8) != 0)
              {
                v57 = 1;
              }
            }

            else if (v60 >= 5 && v61 == 11)
            {
              if (*(v58 + 1) != -1)
              {
                break;
              }

              v56 = 1;
            }

            if (v57 && v56)
            {
              goto LABEL_74;
            }

            v63 = &v58[v60 + 2];
            if (v51 > 0)
            {
              v58 = v63;
            }
          }

          while (v51 > 2);
        }
      }

      if (a10)
      {
        v52 = CFDictionaryGetValue(v48, @"SCAN_BSSID_LIST");
        if (v52)
        {
          v53 = v52;
          if (cfa)
          {
            CFRelease(cfa);
          }

          cfa = CFArrayCreateMutableCopy(v31, 0, v53);
        }

        v43 = theArray;
      }

      v54 = CFDictionaryGetValue(v48, @"RSSI");
      if (!v54)
      {
        goto LABEL_74;
      }

      v183 = -21846;
      if (!CFNumberGetValue(v54, kCFNumberSInt16Type, &v183))
      {
        goto LABEL_74;
      }

      v55 = CFDictionaryGetValue(v48, @"CHANNEL_FLAGS");
      if (!v55)
      {
        goto LABEL_74;
      }

      valuePtr = -1431655766;
      if (!CFNumberGetValue(v55, kCFNumberSInt32Type, &valuePtr))
      {
        goto LABEL_74;
      }

      v165 = *(a2 + 3);
      if ((valuePtr & 0x2000) != 0)
      {
        if ((v165 & 0x2000) == 0)
        {
LABEL_345:
          CFArrayRemoveValueAtIndex(v43, idx);
          v42 = 0;
          goto LABEL_98;
        }
      }

      else if ((v165 & 0x2000) != 0)
      {
LABEL_346:
        if (cfa)
        {
          CFArrayAppendValue(cfa, cf2);
          CFDictionarySetValue(v48, @"SCAN_BSSID_LIST", cfa);
          CFRelease(cfa);
        }

        cfa = 0;
        v42 = 1;
LABEL_98:
        v64 = CFNumberCreate(v31, kCFNumberSInt32Type, a2 + 4);
        if (!v64)
        {
          goto LABEL_333;
        }

        v65 = v64;
        CFDictionarySetValue(theDict, @"CHANNEL", v64);
        CFRelease(v65);
        v66 = CFNumberCreate(v31, kCFNumberSInt32Type, a2 + 6);
        if (!v66)
        {
          goto LABEL_333;
        }

        v67 = v66;
        CFDictionarySetValue(theDict, @"CHANNEL_FLAGS", v66);
        CFRelease(v67);
        if (!a2[8])
        {
          goto LABEL_104;
        }

        v68 = CFNumberCreate(v31, kCFNumberSInt16Type, a2 + 9);
        if (!v68)
        {
          goto LABEL_333;
        }

        v69 = v68;
        CFDictionarySetValue(theDict, @"NOISE", v68);
        CFRelease(v69);
        v70 = CFNumberCreate(v31, kCFNumberSInt16Type, a2 + 10);
        if (!v70)
        {
          goto LABEL_333;
        }

        v71 = v70;
        CFDictionarySetValue(theDict, @"SNR", v70);
        CFRelease(v71);
LABEL_104:
        v72 = CFNumberCreate(v31, kCFNumberSInt16Type, a2 + 11);
        if (!v72)
        {
          goto LABEL_333;
        }

        v73 = v72;
        CFDictionarySetValue(theDict, @"RSSI", v72);
        CFRelease(v73);
        v74 = CFNumberCreate(v31, kCFNumberSInt16Type, a2 + 12);
        if (!v74)
        {
          goto LABEL_333;
        }

        v75 = v74;
        CFDictionarySetValue(theDict, @"BEACON_INT", v74);
        CFRelease(v75);
        v76 = (a2[13] & 1) != 0 ? 2 : (a2[13] >> 1) & 1;
        v182 = v76;
        v77 = CFNumberCreate(v31, kCFNumberSInt16Type, &v182);
        if (!v77)
        {
          goto LABEL_333;
        }

        v78 = v77;
        CFDictionarySetValue(theDict, @"AP_MODE", v77);
        CFRelease(v78);
        v79 = a2 + 18;
        v80 = *(a2 + 34);
        v180 = 0;
        LOBYTE(v183) = 0;
        LOBYTE(v185) = 0;
        LOBYTE(valuePtr) = 0;
        if (v80)
        {
          v81 = 0;
          while (1)
          {
            v82 = *&v79[2 * v81];
            if (v82 > 0x36)
            {
              break;
            }

            if (((1 << v82) & 0x41001001041240) != 0)
            {
              p_valuePtr = &v185;
            }

            else if (((1 << v82) & 0x826) != 0)
            {
              p_valuePtr = &valuePtr;
            }

            else
            {
              if (((1 << v82) & 0x200400000) == 0)
              {
                break;
              }

              p_valuePtr = &v183;
            }

LABEL_120:
            *p_valuePtr = 1;
            v84 = valuePtr;
            if (valuePtr != 1 || v185 != 1 || v183 != 1 || (v84 = 1, (v180 & 1) == 0))
            {
              if (++v81 < v80)
              {
                continue;
              }
            }

            goto LABEL_127;
          }

          p_valuePtr = &v180;
          goto LABEL_120;
        }

        v84 = 0;
LABEL_127:
        v85 = *(a2 + 3);
        if ((v85 & 0x2018) == 0)
        {
          v88 = 0;
          goto LABEL_187;
        }

        v86 = a2[69];
        if (v86 < 3)
        {
          v87 = 0;
          if ((v85 & 0x10) != 0)
          {
            goto LABEL_182;
          }

LABEL_163:
          if ((v85 & 8) == 0)
          {
LABEL_183:
            v88 = v87;
            goto LABEL_187;
          }

          if (v84)
          {
            v88 = v87;
            if ((v185 & 1) == 0)
            {
              v88 = v87;
              if ((v180 & 1) == 0)
              {
                v88 = v87 | 4;
                if ((v87 & 0x10) != 0)
                {
                  v88 = v87;
                }
              }

LABEL_175:
              if (v183 != 1)
              {
                goto LABEL_187;
              }
            }
          }

          else
          {
            v88 = v87;
            if ((v185 & 1) == 0)
            {
              goto LABEL_175;
            }
          }

          if ((v180 & 1) == 0 && (v87 & 0x10) == 0)
          {
            v88 |= 8u;
          }

          goto LABEL_187;
        }

        v89 = 0;
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v93 = (a2 + 70);
        do
        {
          v94 = *v93;
          switch(v94)
          {
            case 61:
              v95 = v93[1];
              v100 = v95 > 0x15 && v86 - 2 >= v95;
              v92 |= v100;
              break;
            case 191:
              v95 = v93[1];
              v97 = v95 > 0xB && v86 - 2 >= v95;
              v98 = v97;
              v91 |= v98;
              break;
            case 255:
              v95 = v93[1];
              if (v86 - 2 >= v95)
              {
                v101 = v93[2];
                v90 |= v101 == 35;
                v96 = v101 == 108;
              }

              else
              {
                v96 = 0;
              }

              v89 = v96 || v89;
              break;
            default:
              v95 = v93[1];
              break;
          }

          v102 = v95 + 2;
          v86 -= v102;
          v93 += v102;
        }

        while (v86 > 2);
        if (v92)
        {
          if (v91)
          {
            v87 = 144;
          }

          else
          {
            v87 = 16;
          }

          if ((v90 & 1) == 0)
          {
            if (!v89)
            {
              goto LABEL_162;
            }

LABEL_181:
            v87 |= 0x200u;
            if ((v85 & 0x10) == 0)
            {
              goto LABEL_163;
            }

LABEL_182:
            if (v84 & 1 | ((v185 & 1) == 0))
            {
              goto LABEL_183;
            }

            if (v180 & 1 | ((~v87 & 0x90) == 0))
            {
              v88 = v87;
            }

            else
            {
              v88 = v87 | 2;
            }

LABEL_187:
            v181 = v88;
            v103 = CFNumberCreate(v31, kCFNumberSInt32Type, &v181);
            if (v103)
            {
              v104 = v103;
              CFDictionarySetValue(theDict, @"PHY_MODE", v103);
              CFRelease(v104);
              v105 = CFNumberCreate(v31, kCFNumberSInt16Type, a2 + 13);
              if (v105)
              {
                v106 = v105;
                CFDictionarySetValue(theDict, @"CAPABILITIES", v105);
                CFRelease(v106);
                CFDictionarySetValue(theDict, @"BSSID", cf2);
                if (cf1)
                {
                  CFDictionarySetValue(theDict, @"SSID", cf1);
                }

                v28 = v173;
                if (v26)
                {
                  CFDictionarySetValue(theDict, @"SSID_STR", v26);
                }

                if (v173)
                {
                  CFDictionarySetValue(theDict, @"SHORT_SSID", v173);
                }

                v160 = CFArrayCreateMutable(v31, 0, MEMORY[0x277CBF128]);
                if (!v160)
                {
                  v162 = 0;
                  v163 = 4294963395;
                  goto LABEL_336;
                }

                idx = 0;
                if (*(a2 + 34))
                {
                  v107 = 0;
                  do
                  {
                    v108 = CFNumberCreate(v31, kCFNumberSInt32Type, &v79[2 * v107]);
                    if (!v108)
                    {
                      goto LABEL_334;
                    }

                    v109 = v108;
                    CFArrayAppendValue(v160, v108);
                    CFRelease(v109);
                    v107 = idx + 1;
                    idx = v107;
                  }

                  while (v107 < *(a2 + 34));
                }

                CFDictionarySetValue(theDict, @"RATES", v160);
                v110 = CFNumberCreate(v31, kCFNumberSInt32Type, a2 + 66);
                if (v110)
                {
                  v111 = v110;
                  CFDictionarySetValue(theDict, @"AGE", v110);
                  CFRelease(v111);
                  v112 = CFNumberCreate(v31, kCFNumberSInt64Type, a2 + 1128);
                  if (v112)
                  {
                    v113 = v112;
                    CFDictionarySetValue(theDict, @"TIMESTAMP", v112);
                    CFRelease(v113);
                    v114 = v174 | a9;
                    if (v114)
                    {
                      v163 = 4294963395;
                      goto LABEL_229;
                    }

                    if ((a2[13] & 0x10) != 0)
                    {
                      v115 = Apple80211ParseWPAIE(a2 + 140, a2[69], theDict);
                      v116 = v115 == 0;
                      v117 = Apple80211ParseRSNIE((a2 + 70), a2[69], theDict);
                      v118 = v117 == 0;
                      if (v117 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        valuePtr = 136315650;
                        *v187 = "_parseSecurity";
                        *&v187[8] = 1024;
                        *&v187[10] = 17731;
                        v188 = 1024;
                        v189 = v117;
                        _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d] parse RSNIE returns 0x%X\n", &valuePtr, 0x18u);
                      }

                      Apple80211ParseRSNXE(a2 + 140, a2[69], theDict);
                      v119 = Apple80211ParseWAPIIE(a2 + 140, a2[69], theDict);
                      if (v115 && v117)
                      {
                        v118 = 0;
                        v116 = 0;
                      }

                      else if ((*(v169 + 90) & 0x20) == 0)
                      {
                        v120 = CFDictionaryGetValue(theDict, @"WPA_IE");
                        v185 = -1431655766;
                        if (v120)
                        {
                          v121 = CFDictionaryGetValue(v120, @"IE_KEY_WPA_MCIPHER");
                          if (v121)
                          {
                            if (CFNumberGetValue(v121, kCFNumberSInt32Type, &v185) && v185 == 5)
                            {
                              CFDictionaryRemoveValue(theDict, @"WPA_IE");
                              v116 = 0;
                            }
                          }
                        }

                        v122 = CFDictionaryGetValue(theDict, @"RSN_IE");
                        if (v122)
                        {
                          v123 = CFDictionaryGetValue(v122, @"IE_KEY_RSN_MCIPHER");
                          if (v123)
                          {
                            if (CFNumberGetValue(v123, kCFNumberSInt32Type, &v185) && v185 == 5)
                            {
                              CFDictionaryRemoveValue(theDict, @"RSN_IE");
                              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                              {
                                valuePtr = 136315394;
                                *v187 = "_parseSecurity";
                                *&v187[8] = 1024;
                                *&v187[10] = 17773;
                                _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d] removing RSN IE\n", &valuePtr, 0x12u);
                              }

                              v118 = 0;
                            }
                          }
                        }
                      }

                      v163 = 0;
                      if (v118 || v116 || !v119)
                      {
LABEL_229:
                        v124 = (a2 + 68);
                        if ((a2[68] & 0x10) != 0)
                        {
                          valuePtr = -1431655766;
                          v125 = CFDictionaryGetValue(theDict, @"RSN_IE");
                          if (v125)
                          {
                            v126 = CFDictionaryGetValue(v125, @"IE_KEY_RSN_AUTHSELS");
                            if (v126)
                            {
                              v127 = v126;
                              v128 = CFArrayGetCount(v126);
                              if (v128)
                              {
                                v129 = v128;
                                idx = 0;
                                if (v128 >= 1)
                                {
                                  v130 = 0;
                                  while (1)
                                  {
                                    v131 = CFArrayGetValueAtIndex(v127, v130);
                                    if (v131)
                                    {
                                      if (CFNumberGetValue(v131, kCFNumberSInt32Type, &valuePtr) && valuePtr == 18)
                                      {
                                        break;
                                      }
                                    }

                                    v130 = idx + 1;
                                    idx = v130;
                                    if (v130 >= v129)
                                    {
                                      goto LABEL_241;
                                    }
                                  }

                                  if (!a11)
                                  {
                                    v162 = 0;
                                    v163 = 4294963394;
                                    v20 = theDict;
                                    goto LABEL_330;
                                  }
                                }
                              }
                            }
                          }
                        }

LABEL_241:
                        v162 = CFArrayCreateMutable(v31, 0, MEMORY[0x277CBF128]);
                        if (v162)
                        {
                          v132 = 0;
                          idx = 0;
                          do
                          {
                            if ((v124[v132 / 8] >> (v132 % 8)))
                            {
                              v133 = CFNumberCreate(v31, kCFNumberSInt32Type, &idx);
                              if (!v133)
                              {
                                goto LABEL_331;
                              }

                              v134 = v133;
                              CFArrayAppendValue(v162, v133);
                              CFRelease(v134);
                              v132 = idx;
                            }

                            idx = v132 + 1;
                          }

                          while (v132++ < 5);
                          v136 = theDict;
                          CFDictionarySetValue(theDict, @"SCAN_RESULT_NET_FLAGS", v162);
                          v137 = *MEMORY[0x277CBED28];
                          v138 = *MEMORY[0x277CBED10];
                          if (*v124)
                          {
                            v139 = *MEMORY[0x277CBED28];
                          }

                          else
                          {
                            v139 = *MEMORY[0x277CBED10];
                          }

                          CFDictionarySetValue(theDict, @"SCAN_RESULT_FROM_PROBE_RSP", v139);
                          if ((*v124 & 0x10) != 0)
                          {
                            v140 = v137;
                          }

                          else
                          {
                            v140 = v138;
                          }

                          CFDictionarySetValue(theDict, @"SCAN_RESULT_OWE_MULTI_SSID", v140);
                          if ((v178 & 0x40) != 0)
                          {
                            v141 = *v124;
                            if ((*v124 & 8) != 0)
                            {
                              CFDictionarySetValue(theDict, @"SCAN_RESULT_INCL_SHORT_SSID", v137);
                              v141 = *v124;
                            }

                            v136 = theDict;
                            if ((v141 & 4) != 0)
                            {
                              CFDictionarySetValue(theDict, @"SCAN_RESULT_FROM_FILS_DISC_FRAME", v137);
                            }
                          }

                          v142 = _parseIEs(a2 + 140, a2[69], v136, v169 + 88);
                          v20 = v136;
                          if (!v142)
                          {
                            LOWORD(valuePtr) = 20;
                            v143 = CFDictionaryGetValue(v136, @"HE_OP_IE");
                            if (v143)
                            {
                              v144 = v143;
                              v145 = CFDictionaryGetValue(v143, @"6GHZ_OP_INFO_CHANNEL_WIDTH");
                              if (v145 && CFNumberGetValue(v145, kCFNumberSInt8Type, &valuePtr))
                              {
                                if (valuePtr > 1u)
                                {
                                  if (valuePtr == 2)
                                  {
                                    goto LABEL_289;
                                  }

                                  if (valuePtr == 3)
                                  {
                                    goto LABEL_288;
                                  }
                                }

                                else
                                {
                                  if (!valuePtr)
                                  {
                                    v153 = 20;
                                    goto LABEL_291;
                                  }

                                  if (valuePtr == 1)
                                  {
                                    goto LABEL_287;
                                  }
                                }
                              }

                              else
                              {
                                v146 = CFDictionaryGetValue(v144, @"VHT_OP_INFO_CHANNEL_WIDTH");
                                if (v146 && CFNumberGetValue(v146, kCFNumberSInt8Type, &valuePtr))
                                {
                                  if (valuePtr - 2 < 2)
                                  {
                                    goto LABEL_288;
                                  }

                                  if (valuePtr == 1)
                                  {
                                    goto LABEL_289;
                                  }

                                  if (!valuePtr)
                                  {
                                    LOWORD(valuePtr) = 20;
                                  }
                                }
                              }
                            }

                            v147 = CFDictionaryGetValue(v136, @"VHT_IE");
                            if (!v147)
                            {
                              goto LABEL_281;
                            }

                            v148 = CFDictionaryGetValue(v147, @"VHT_CHAN_WIDTH");
                            if (!v148 || !CFNumberGetValue(v148, kCFNumberSInt8Type, &valuePtr))
                            {
                              goto LABEL_281;
                            }

                            if (valuePtr - 2 >= 2)
                            {
                              if (valuePtr != 1)
                              {
                                if (!valuePtr)
                                {
                                  LOWORD(valuePtr) = 20;
                                }

LABEL_281:
                                v149 = CFDictionaryGetValue(v136, @"HT_IE");
                                if (!v149)
                                {
                                  goto LABEL_292;
                                }

                                v150 = CFDictionaryGetValue(v149, @"HT_STA_CHAN_WIDTH");
                                if (!v150)
                                {
                                  goto LABEL_292;
                                }

                                if (CFBooleanGetValue(v150) != 1)
                                {
                                  goto LABEL_292;
                                }

                                v151 = CFDictionaryGetValue(v136, @"HT_CAPS_IE");
                                if (!v151)
                                {
                                  goto LABEL_292;
                                }

                                LOWORD(v185) = 0;
                                v152 = CFDictionaryGetValue(v151, @"CAPS");
                                if (!v152)
                                {
                                  goto LABEL_292;
                                }

                                CFNumberGetValue(v152, kCFNumberSInt16Type, &v185);
                                if ((v185 & 2) == 0)
                                {
                                  goto LABEL_292;
                                }

LABEL_287:
                                v153 = 40;
LABEL_291:
                                LOWORD(valuePtr) = v153;
LABEL_292:
                                v154 = CFNumberCreate(v31, kCFNumberSInt16Type, &valuePtr);
                                if (v154)
                                {
                                  v155 = v154;
                                  CFDictionarySetValue(v136, @"CHANNEL_WIDTH", v154);
                                  CFRelease(v155);
                                }

                                if (v179)
                                {
                                  CFDictionaryRemoveValue(v136, @"HT_CAPS_IE");
                                  CFDictionaryRemoveValue(v136, @"VHT_CAPS_IE");
                                }

                                CFDictionaryRemoveValue(v136, @"VHT_IE");
                                CFDictionaryRemoveValue(v136, @"HT_IE");
                                v28 = v173;
                                if (v167)
                                {
                                  CFDictionarySetValue(v136, @"SCAN_DIRECTED", v137);
                                }

                                if (v179)
                                {
                                  CFArrayAppendValue(v179, v136);
                                }

                                v26 = v172;
                                if (theArray)
                                {
                                  v156 = v42;
                                }

                                else
                                {
                                  v156 = 1;
                                }

                                if (v156)
                                {
                                  v163 = 0;
                                  v157 = cf2;
                                  v161 = cfa;
                                }

                                else
                                {
                                  v161 = cfa;
                                  if (a10 && (cfa || (v161 = CFArrayCreateMutable(v31, 0, MEMORY[0x277CBF128])) != 0))
                                  {
                                    v157 = cf2;
                                    CFArrayAppendValue(v161, cf2);
                                    CFDictionarySetValue(v20, @"SCAN_BSSID_LIST", v161);
                                  }

                                  else
                                  {
                                    v157 = cf2;
                                  }

                                  CFArrayAppendValue(theArray, v20);
                                  v163 = 0;
                                }

                                goto LABEL_311;
                              }

LABEL_289:
                              v153 = 80;
                              goto LABEL_291;
                            }

LABEL_288:
                            v153 = 160;
                            goto LABEL_291;
                          }

                          v163 = v142;
LABEL_330:
                          v26 = v172;
LABEL_335:
                          v28 = v173;
LABEL_336:
                          v157 = cf2;
                          v161 = cfa;
                          goto LABEL_337;
                        }

LABEL_331:
                        v161 = cfa;
                        if (v114)
                        {
LABEL_332:
                          v20 = theDict;
                          v157 = cf2;
                          v26 = v172;
                          v28 = v173;
                          goto LABEL_337;
                        }

LABEL_357:
                        v163 = 0;
                        v20 = theDict;
                        v157 = cf2;
                        v26 = v172;
                        v28 = v173;
                        goto LABEL_311;
                      }

                      CFDictionarySetValue(theDict, @"WEP", *MEMORY[0x277CBED28]);
                    }

                    v163 = 0;
                    goto LABEL_229;
                  }
                }

LABEL_334:
                v162 = 0;
                v163 = 4294963395;
                goto LABEL_335;
              }
            }

LABEL_333:
            v160 = 0;
            goto LABEL_334;
          }

          v87 |= 0x100u;
          if (v89)
          {
            goto LABEL_181;
          }
        }

        else if (v90)
        {
          v87 = 256;
          if (v89)
          {
            goto LABEL_181;
          }
        }

        else
        {
          v87 = 0;
          if (v89)
          {
            goto LABEL_181;
          }
        }

LABEL_162:
        if ((v85 & 0x10) == 0)
        {
          goto LABEL_163;
        }

        goto LABEL_182;
      }

      if (v183 >= a2[11])
      {
        goto LABEL_346;
      }

      goto LABEL_345;
    }
  }

  v160 = 0;
  v161 = 0;
  v162 = 0;
  v157 = 0;
  v163 = 4294963395;
LABEL_337:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v164 = CFDictionaryGetValue(v20, @"BSSID");
LABEL_339:
    valuePtr = 67109378;
    *v187 = v163;
    *&v187[4] = 2112;
    *&v187[6] = v164;
    _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to add scan result to list (err=%d, bssid=%@)", &valuePtr, 0x12u);
  }

LABEL_311:
  if (v20)
  {
    CFRelease(v20);
  }

  if (v160)
  {
    CFRelease(v160);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  if (v157)
  {
    CFRelease(v157);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v162)
  {
    CFRelease(v162);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v161)
  {
    CFRelease(v161);
  }

LABEL_327:
  v158 = *MEMORY[0x277D85DE8];
  return v163;
}

uint64_t Apple80211ParseWPAIE(unsigned __int8 *a1, signed int a2, __CFDictionary *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = 4294963393;
  if (a1 && a2 >= 2)
  {
    v5 = a1;
    while (1)
    {
      v6 = v5[1];
      v7 = *v5 == 221 && v6 >= 5;
      v8 = v7 && (v6 + 2) <= a2;
      if (v8 && *(v5 + 2) == 32657408)
      {
        break;
      }

      a2 = a2 - v6 - 2;
      if (a2 >= 1)
      {
        v9 = &v5[v5[1]];
        v5 = v9 + 2;
        if (v9[3] + 2 <= a2)
        {
          continue;
        }
      }

      v3 = 4294963393;
      goto LABEL_16;
    }

    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *(v56 + 12) = v12;
    v55 = v12;
    v56[0] = v12;
    v53 = v12;
    v54 = v12;
    v51 = v12;
    v52 = v12;
    v49 = v12;
    v50 = v12;
    v13 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v15 = Mutable;
    valuePtr = -21846;
    if (!a3)
    {
      goto LABEL_57;
    }

    if (!Mutable)
    {
      v3 = 4294963395;
      goto LABEL_16;
    }

    v16 = v5[1];
    if (v16 >= 6)
    {
      valuePtr = *(v5 + 3);
      v17 = CFNumberCreate(v13, kCFNumberSInt16Type, &valuePtr);
      if (!v17)
      {
        v3 = 4294963395;
        goto LABEL_56;
      }

      v18 = v17;
      CFDictionarySetValue(v15, @"IE_KEY_WPA_VERSION", v17);
      CFRelease(v18);
      if (valuePtr != 1)
      {
        CFDictionarySetValue(a3, @"WPA_IE", v15);
        v3 = 0;
LABEL_56:
        CFRelease(v15);
        goto LABEL_16;
      }

      v49 = 0u;
      v50 = 0u;
      v55 = 0u;
      memset(v56, 0, 28);
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v19 = &v50;
      v20 = 2;
      DWORD2(v49) = 2;
      WORD6(v49) = 1;
      LOWORD(v52) = 1;
      v21 = &v52 + 4;
      DWORD1(v52) = 1;
      LODWORD(v50) = 2;
      if (((v16 - 6) & 0xFFFFFFFC) == 0 || (v20 = v5[11], DWORD2(v49) = v20, ((v16 - 10) & 0xFFFFFFFE) == 0))
      {
        v24 = 0;
        goto LABEL_39;
      }

      valuePtr = *(v5 + 6);
      v22 = valuePtr;
      if (valuePtr <= 8u)
      {
        v23 = v16 - 12;
        v24 = valuePtr == 0;
        v25 = 0;
        if (valuePtr)
        {
          v26 = v5 + 17;
          do
          {
            v7 = v23 >= 4;
            v23 -= 4;
            if (!v7)
            {
              WORD6(v49) = v25;
              goto LABEL_57;
            }

            v27 = *v26;
            v26 += 4;
            *(&v50 + v25++) = v27;
          }

          while (v22 != v25);
          v25 = v22;
        }

        WORD6(v49) = v22;
        v28 = v23 - 2;
        if (v23 >= 2)
        {
          v29 = &v5[4 * v25];
          valuePtr = *(v29 + 7);
          v30 = valuePtr;
          if (valuePtr > 0x10u)
          {
LABEL_57:
            v3 = 4294963396;
            goto LABEL_53;
          }

          if (valuePtr)
          {
            v31 = 0;
            v32 = v29 + 19;
            while (1)
            {
              v7 = v28 >= 4;
              v28 -= 4;
              if (!v7)
              {
                break;
              }

              v33 = *v32;
              v32 += 4;
              *(&v52 + ++v31) = v33;
              if (v30 == v31)
              {
                goto LABEL_38;
              }
            }

            LOWORD(v52) = v31;
            goto LABEL_57;
          }

LABEL_38:
          LOWORD(v52) = v30;
        }

LABEL_39:
        v48 = v20;
        v34 = CFNumberCreate(v13, kCFNumberSInt32Type, &v48);
        if (v34)
        {
          v35 = v34;
          CFDictionarySetValue(v15, @"IE_KEY_WPA_MCIPHER", v34);
          CFRelease(v35);
          v36 = CFArrayCreateMutable(v13, 0, MEMORY[0x277CBF128]);
          if (v36)
          {
            v37 = v36;
            if (v24)
            {
LABEL_45:
              CFDictionarySetValue(v15, @"IE_KEY_WPA_UCIPHERS", v37);
              v41 = CFArrayCreateMutable(v13, 0, MEMORY[0x277CBF128]);
              if (v41)
              {
                v42 = v41;
                if (v52)
                {
                  v43 = 0;
                  while (1)
                  {
                    v44 = CFNumberCreate(v13, kCFNumberSInt32Type, v21);
                    if (!v44)
                    {
                      break;
                    }

                    v45 = v44;
                    CFArrayAppendValue(v42, v44);
                    CFRelease(v45);
                    ++v43;
                    v21 += 4;
                    if (v43 >= v52)
                    {
                      goto LABEL_50;
                    }
                  }

                  v46 = 0;
                  v3 = 4294963395;
                }

                else
                {
LABEL_50:
                  CFDictionarySetValue(v15, @"IE_KEY_WPA_AUTHSELS", v42);
                  v3 = 0;
                  v46 = 1;
                }

                CFRelease(v37);
                CFRelease(v42);
                if (v46)
                {
                  CFDictionarySetValue(a3, @"WPA_IE", v15);
                  v3 = 0;
                }

LABEL_53:
                if (!v15)
                {
                  goto LABEL_16;
                }

                goto LABEL_56;
              }
            }

            else
            {
              v38 = 0;
              while (1)
              {
                v39 = CFNumberCreate(v13, kCFNumberSInt32Type, v19);
                if (!v39)
                {
                  break;
                }

                v40 = v39;
                CFArrayAppendValue(v37, v39);
                CFRelease(v40);
                ++v38;
                v19 = (v19 + 4);
                if (v38 >= WORD6(v49))
                {
                  goto LABEL_45;
                }
              }
            }

            CFRelease(v37);
          }
        }

        v3 = 4294963395;
        goto LABEL_53;
      }
    }

    v3 = 4294963396;
    goto LABEL_56;
  }

LABEL_16:
  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t Apple80211ParseRSNIE(uint64_t a1, int a2, __CFDictionary *a3)
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = 4294963393;
  if (!a1 || !a2)
  {
    goto LABEL_12;
  }

  v5 = a1;
  while (a2 < 3 || *v5 != 48)
  {
    v7 = *(v5 + 1);
    a2 = a2 - v7 - 2;
    if (a2 < 1)
    {
      goto LABEL_11;
    }

    v8 = v5 + v7;
    v5 = v8 + 2;
    v6 = *(v8 + 3);
LABEL_10:
    if (v6 + 2 > a2)
    {
LABEL_11:
      v3 = 4294963393;
      goto LABEL_12;
    }
  }

  v6 = *(v5 + 1);
  if (a2 - 2 < v6)
  {
    goto LABEL_10;
  }

  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = Mutable;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v87 + 12) = v14;
  v86 = v14;
  v87[0] = v14;
  v84 = v14;
  v85 = v14;
  v82 = v14;
  v83 = v14;
  v80 = v14;
  v81 = v14;
  valuePtr = -21846;
  if (!a3)
  {
    v3 = 4294963396;
    goto LABEL_121;
  }

  if (!Mutable)
  {
    v3 = 4294963395;
    goto LABEL_12;
  }

  v15 = *(v5 + 1);
  valuePtr = *(v5 + 2);
  v16 = CFNumberCreate(v11, kCFNumberSInt16Type, &valuePtr);
  if (!v16)
  {
    v3 = 4294963395;
    goto LABEL_122;
  }

  v17 = v16;
  CFDictionarySetValue(v13, @"IE_KEY_RSN_VERSION", v16);
  CFRelease(v17);
  if (valuePtr != 1)
  {
    CFDictionarySetValue(a3, @"RSN_IE", v13);
    v3 = 0;
    goto LABEL_122;
  }

  v80 = 0u;
  v81 = 0u;
  v86 = 0u;
  memset(v87, 0, 28);
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v18 = &v81;
  v19 = 4;
  DWORD2(v80) = 4;
  WORD6(v80) = 1;
  LODWORD(v81) = 4;
  LOWORD(v83) = 1;
  v20 = &v83 + 4;
  DWORD1(v83) = 1;
  if (v15 == 2)
  {
    goto LABEL_66;
  }

  v3 = 4294963396;
  if (v15 < 3 || v15 - 2 < 4)
  {
    goto LABEL_122;
  }

  v19 = *(v5 + 7);
  DWORD2(v80) = v19;
  if (v15 == 6)
  {
LABEL_66:
    v79 = v19;
    v44 = CFNumberCreate(v11, kCFNumberSInt32Type, &v79);
    if (!v44 || (v45 = v44, CFDictionarySetValue(v13, @"IE_KEY_RSN_MCIPHER", v44), CFRelease(v45), (v46 = CFArrayCreateMutable(v11, 0, MEMORY[0x277CBF128])) == 0))
    {
      v3 = 4294963395;
      goto LABEL_121;
    }

    v47 = v46;
    if (WORD6(v80))
    {
      v48 = 0;
      do
      {
        v49 = CFNumberCreate(v11, kCFNumberSInt32Type, v18);
        if (!v49)
        {
          goto LABEL_123;
        }

        v50 = v49;
        CFArrayAppendValue(v47, v49);
        CFRelease(v50);
        ++v48;
        v18 = (v18 + 4);
      }

      while (v48 < WORD6(v80));
    }

    CFDictionarySetValue(v13, @"IE_KEY_RSN_UCIPHERS", v47);
    v51 = CFArrayCreateMutable(v11, 0, MEMORY[0x277CBF128]);
    if (!v51)
    {
LABEL_123:
      v3 = 4294963395;
LABEL_118:
      CFRelease(v47);
LABEL_119:
      if (!v3)
      {
        CFDictionarySetValue(a3, @"RSN_IE", v13);
      }

      goto LABEL_121;
    }

    v52 = v51;
    if (v83)
    {
      v53 = 0;
      while (1)
      {
        v54 = CFNumberCreate(v11, kCFNumberSInt32Type, v20);
        if (!v54)
        {
          break;
        }

        v55 = v54;
        CFArrayAppendValue(v52, v54);
        CFRelease(v55);
        ++v53;
        v20 += 4;
        if (v53 >= v83)
        {
          goto LABEL_77;
        }
      }

      v57 = 0;
      goto LABEL_125;
    }

LABEL_77:
    CFDictionarySetValue(v13, @"IE_KEY_RSN_AUTHSELS", v52);
    if (WORD2(v87[0]))
    {
      v56 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v57 = v56;
      if (!v56)
      {
        goto LABEL_125;
      }

      v58 = *MEMORY[0x277CBED10];
      v59 = *MEMORY[0x277CBED28];
      v60 = ((BYTE4(v87[0]) & 1) != 0 ? *MEMORY[0x277CBED28] : *MEMORY[0x277CBED10]);
      CFDictionaryAddValue(v56, @"PRE_AUTH", v60);
      v61 = ((BYTE4(v87[0]) & 2) != 0 ? v59 : v58);
      CFDictionaryAddValue(v57, @"NO_PAIRWISE", v61);
      v62 = ((BYTE4(v87[0]) & 0x40) != 0 ? v59 : v58);
      CFDictionaryAddValue(v57, @"MFP_REQUIRED", v62);
      v63 = ((BYTE4(v87[0]) & 0x80) != 0 ? v59 : v58);
      CFDictionaryAddValue(v57, @"MFP_CAPABLE", v63);
      v64 = (WORD2(v87[0]) >> 2) & 3;
      if (v64 > 1)
      {
        v65 = v64 == 2 ? 4 : 16;
      }

      else
      {
        v65 = v64 ? 2 : 1;
      }

      v78 = v65;
      v66 = CFNumberCreate(v11, kCFNumberSInt16Type, &v78);
      if (!v66)
      {
        goto LABEL_125;
      }

      v67 = v66;
      CFDictionaryAddValue(v57, @"PTKSA_REPLAY_COUNTERS", v66);
      CFRelease(v67);
      v68 = (WORD2(v87[0]) >> 4) & 3;
      if (v68 > 1)
      {
        v69 = v68 == 2 ? 4 : 16;
      }

      else
      {
        v69 = v68 ? 2 : 1;
      }

      v78 = v69;
      v70 = CFNumberCreate(v11, kCFNumberSInt16Type, &v78);
      if (!v70)
      {
        goto LABEL_125;
      }

      v71 = v70;
      CFDictionaryAddValue(v57, @"GTKSA_REPLAY_COUNTERS", v70);
      CFRelease(v71);
      v72 = ((WORD2(v87[0]) & 0x4000) != 0 ? v59 : v58);
      CFDictionaryAddValue(v57, @"OCV", v72);
      v73 = CFNumberCreate(v11, kCFNumberShortType, v87 + 4);
      if (!v73)
      {
        goto LABEL_125;
      }

      v74 = v73;
      CFDictionaryAddValue(v57, @"RSN_CAPABILITIES", v73);
      CFRelease(v74);
      CFDictionaryAddValue(v13, @"IE_KEY_RSN_CAPS", v57);
    }

    else
    {
      v57 = 0;
    }

    if (!DWORD2(v87[1]))
    {
LABEL_116:
      v3 = 0;
      goto LABEL_117;
    }

    v79 = DWORD2(v87[1]);
    v75 = CFNumberCreate(v11, kCFNumberSInt32Type, &v79);
    if (v75)
    {
      v76 = v75;
      CFDictionarySetValue(v13, @"IE_KEY_RSN_BCIPHER", v75);
      CFRelease(v76);
      goto LABEL_116;
    }

LABEL_125:
    v3 = 4294963395;
LABEL_117:
    CFRelease(v47);
    CFRelease(v52);
    v47 = v57;
    if (!v57)
    {
      goto LABEL_119;
    }

    goto LABEL_118;
  }

  v3 = 4294963392;
  if (v15 < 8)
  {
    goto LABEL_122;
  }

  valuePtr = *(v5 + 8);
  v21 = valuePtr;
  v22 = v15 - 8;
  v23 = 0;
  if (!valuePtr)
  {
LABEL_37:
    WORD6(v80) = v23;
    if (v22)
    {
      v27 = __OFSUB__(v22, 2);
      v28 = v22 - 2;
      if (v28 < 0 != v27)
      {
        v3 = 4294963392;
        goto LABEL_121;
      }

      v29 = v5 + 4 * v21;
      v32 = *(v29 + 10);
      v31 = v29 + 10;
      v30 = v32;
      valuePtr = v32;
      v33 = 0;
      if (v32)
      {
        v34 = v31 + 2;
        v35 = v30;
        v36 = v28 - 4 * v30;
        while (1)
        {
          v3 = 4294963392;
          v27 = __OFSUB__(v28, 4);
          v28 -= 4;
          if (v28 < 0 != v27 || v33 > 0xF)
          {
            goto LABEL_121;
          }

          if ((*v34 == 28053248 || *v34 == 44830464 || *v34 == 61607680 || *v34 == 78384896 || *v34 == 95162112 || *v34 == 111939328 || *v34 == 145493760 || *v34 == 162270976 || *v34 == 212602624 || *v34 == 229379840 || *v34 == 313265920 || *v34 == 413929216 || *v34 == 430706432) && *(v34 + 3))
          {
            *(&v83 + ++v33) = *(v34 + 3);
          }

          v34 += 4;
          if (!--v35)
          {
            v37 = v30;
            v28 = v36;
            goto LABEL_62;
          }
        }
      }

      v37 = 0;
LABEL_62:
      LOWORD(v83) = v33;
      if (v28 >= 2)
      {
        v38 = v31 + 4 * v37;
        v40 = *(v38 + 2);
        v39 = v38 + 2;
        WORD2(v87[0]) = v40;
        if (v28 >= 8)
        {
          v42 = *(v39 + 2);
          v41 = v39 + 2;
          valuePtr = v42;
          v43 = (16 * v42) | 2;
          if (v28 - v43 - 2 >= 4)
          {
            DWORD2(v87[1]) = *(v41 + v43 + 3);
          }
        }
      }
    }

    goto LABEL_66;
  }

  v24 = v5 + 10;
  v25 = valuePtr;
  v26 = v22 - 4 * valuePtr;
  while (1)
  {
    v27 = __OFSUB__(v22, 4);
    v22 -= 4;
    if (v22 < 0 != v27 || v23 > 7)
    {
      break;
    }

    if ((*v24 == 78384896 || *v24 == 162270976 || *v24 == 145493760 || *v24 == 179048192 || *v24 == 28053248 || *v24 == 95162112 || *v24 == 44830464) && *(v24 + 3))
    {
      *(&v81 + v23++) = *(v24 + 3);
    }

    v24 += 4;
    if (!--v25)
    {
      v21 = v21;
      v22 = v26;
      goto LABEL_37;
    }
  }

LABEL_121:
  if (v13)
  {
LABEL_122:
    CFRelease(v13);
  }

LABEL_12:
  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t Apple80211ParseHEOperationIE(unsigned __int8 *a1, int a2, __CFDictionary *a3)
{
  v87 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (!a1 || !a3)
  {
    goto LABEL_99;
  }

  v4 = a2;
  if (!a2)
  {
    v3 = 0;
    goto LABEL_99;
  }

  v5 = a1;
  v6 = 0;
  v76 = 0;
  v7 = *MEMORY[0x277CBECE8];
  v8 = *MEMORY[0x277CBED28];
  v9 = *MEMORY[0x277CBED10];
  do
  {
    if (v4 < 2 || (v10 = v5[1], v4 < (v10 + 2)))
    {
      v3 = v76;
      goto LABEL_95;
    }

    if (v10 < 3 || *v5 != 255 || v10 < 7 || v5[2] != 36)
    {
      v46 = 0;
      v5 += v10 + 2;
      v4 -= v10 + 2;
      continue;
    }

    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      v3 = 4294963395;
      goto LABEL_99;
    }

    v6 = Mutable;
    v12 = v5[5];
    v13 = *(v5 + 3);
    valuePtr = v13 & 7;
    v14 = CFNumberCreate(v7, kCFNumberSInt8Type, &valuePtr);
    if (!v14)
    {
      goto LABEL_86;
    }

    v15 = v14;
    v16 = v13 | (v12 << 16);
    CFDictionarySetValue(v6, @"DEFAULT_PE_DURATION", v14);
    CFRelease(v15);
    if ((v16 & 8) != 0)
    {
      v17 = v8;
    }

    else
    {
      v17 = v9;
    }

    if (v17 == v8)
    {
      CFDictionarySetValue(v6, @"TWT_REQUIRED", v17);
    }

    v85 = (v16 >> 4) & 0x3FF;
    v18 = CFNumberCreate(v7, kCFNumberSInt16Type, &v85);
    if (!v18)
    {
      goto LABEL_86;
    }

    v19 = v18;
    CFDictionarySetValue(v6, @"TXOP_DURATION_RTS_THRESHOLD", v18);
    CFRelease(v19);
    if ((v16 & 0x8000) != 0)
    {
      v20 = v8;
    }

    else
    {
      v20 = v9;
    }

    if (v20 == v8)
    {
      CFDictionarySetValue(v6, @"CO_HOSTED_BSS", v20);
    }

    if ((v16 & 0x10000) != 0)
    {
      v21 = v8;
    }

    else
    {
      v21 = v9;
    }

    if (v21 == v8)
    {
      CFDictionarySetValue(v6, @"ER_SU_DISABLE", v21);
    }

    v84 = v5[6] & 0x3F;
    v22 = CFNumberCreate(v7, kCFNumberSInt8Type, &v84);
    if (!v22)
    {
      goto LABEL_86;
    }

    v23 = v22;
    CFDictionarySetValue(v6, @"BSS_COLOR", v22);
    CFRelease(v23);
    v24 = v5[6];
    if ((v24 & 0x40) != 0)
    {
      v25 = v8;
    }

    else
    {
      v25 = v9;
    }

    if (v25 == v8)
    {
      CFDictionarySetValue(v6, @"PARTIAL_BSS_COLOR", v25);
      v24 = v5[6];
    }

    if (v24 >= 0)
    {
      v26 = v9;
    }

    else
    {
      v26 = v8;
    }

    if (v26 == v8)
    {
      CFDictionarySetValue(v6, @"BSS_COLOR_DISABLED", v26);
    }

    v27 = *(v5 + 7);
    v83 = v27 & 3;
    v28 = CFNumberCreate(v7, kCFNumberSInt8Type, &v83);
    if (!v28)
    {
      goto LABEL_86;
    }

    v29 = v28;
    CFDictionarySetValue(v6, @"MAX_HE_MCS_1SS", v28);
    CFRelease(v29);
    v83 = (v27 >> 2) & 3;
    v30 = CFNumberCreate(v7, kCFNumberSInt8Type, &v83);
    if (!v30)
    {
      goto LABEL_86;
    }

    v31 = v30;
    CFDictionarySetValue(v6, @"MAX_HE_MCS_2SS", v30);
    CFRelease(v31);
    v83 = (v27 >> 4) & 3;
    v32 = CFNumberCreate(v7, kCFNumberSInt8Type, &v83);
    if (!v32)
    {
      goto LABEL_86;
    }

    v33 = v32;
    CFDictionarySetValue(v6, @"MAX_HE_MCS_3SS", v32);
    CFRelease(v33);
    v83 = v27 >> 6;
    v34 = CFNumberCreate(v7, kCFNumberSInt8Type, &v83);
    if (!v34)
    {
      goto LABEL_86;
    }

    v35 = v34;
    CFDictionarySetValue(v6, @"MAX_HE_MCS_4SS", v34);
    CFRelease(v35);
    v83 = BYTE1(v27) & 3;
    v36 = CFNumberCreate(v7, kCFNumberSInt8Type, &v83);
    if (!v36)
    {
      goto LABEL_86;
    }

    v37 = v36;
    CFDictionarySetValue(v6, @"MAX_HE_MCS_5SS", v36);
    CFRelease(v37);
    v83 = (v27 >> 10) & 3;
    v38 = CFNumberCreate(v7, kCFNumberSInt8Type, &v83);
    if (!v38)
    {
      goto LABEL_86;
    }

    v39 = v38;
    CFDictionarySetValue(v6, @"MAX_HE_MCS_6SS", v38);
    CFRelease(v39);
    v83 = (v27 >> 12) & 3;
    v40 = CFNumberCreate(v7, kCFNumberSInt8Type, &v83);
    if (!v40)
    {
      goto LABEL_86;
    }

    v41 = v40;
    CFDictionarySetValue(v6, @"MAX_HE_MCS_7SS", v40);
    CFRelease(v41);
    v83 = v27 >> 14;
    v42 = CFNumberCreate(v7, kCFNumberSInt8Type, &v83);
    if (!v42)
    {
      goto LABEL_86;
    }

    v43 = v42;
    CFDictionarySetValue(v6, @"MAX_HE_MCS_8SS", v42);
    CFRelease(v43);
    v44 = (v5 + 9);
    v45 = v4 - 9;
    if ((v16 & 0x4000) == 0 && v9 != v8)
    {
      v4 -= 9;
      goto LABEL_60;
    }

    v47 = v4 >= 0xC;
    v4 -= 12;
    if (v47)
    {
      v82 = *v44;
      v48 = CFNumberCreate(v7, kCFNumberSInt8Type, &v82);
      if (v48)
      {
        v49 = v48;
        CFDictionarySetValue(v6, @"VHT_OP_INFO_CHANNEL_WIDTH", v48);
        CFRelease(v49);
        v81 = v5[10];
        v50 = CFNumberCreate(v7, kCFNumberSInt8Type, &v81);
        if (v50)
        {
          v51 = v50;
          CFDictionarySetValue(v6, @"VHT_OP_INFO_CENTER_CHANNEL_FREQ_SEG0", v50);
          CFRelease(v51);
          v80 = v5[11];
          v52 = CFNumberCreate(v7, kCFNumberSInt8Type, &v80);
          if (v52)
          {
            v53 = v52;
            CFDictionarySetValue(v6, @"VHT_OP_INFO_CENTER_CHANNEL_FREQ_SEG1", v52);
            CFRelease(v53);
            v44 = (v5 + 12);
LABEL_60:
            if (v20 == v8)
            {
              if (v4 < 1)
              {
                goto LABEL_89;
              }

              v82 = *v44;
              v54 = CFNumberCreate(v7, kCFNumberSInt8Type, &v82);
              if (!v54)
              {
                goto LABEL_86;
              }

              v55 = v54;
              CFDictionarySetValue(v6, @"MAX_CO_HOSTED_BSSID_IND", v54);
              CFRelease(v55);
              ++v44;
              --v4;
              if ((v16 & 0x20000) != 0)
              {
LABEL_68:
                if (v4 >= 5)
                {
                  v82 = *v44;
                  v56 = CFNumberCreate(v7, kCFNumberSInt8Type, &v82);
                  if (v56)
                  {
                    v57 = v56;
                    CFDictionarySetValue(v6, @"6GHZ_OP_INFO_PRIMARY_CHANNEL", v56);
                    CFRelease(v57);
                    v81 = v44[1] & 3;
                    v58 = CFNumberCreate(v7, kCFNumberSInt8Type, &v81);
                    if (v58)
                    {
                      v59 = v58;
                      CFDictionarySetValue(v6, @"6GHZ_OP_INFO_CHANNEL_WIDTH", v58);
                      CFRelease(v59);
                      v60 = v44[1];
                      v61 = (v60 & 4) != 0 ? v8 : v9;
                      if (v61 == v8)
                      {
                        CFDictionarySetValue(v6, @"6GHZ_OP_INFO_DUPLICATE_BEACON", v61);
                        v60 = v44[1];
                      }

                      v80 = (v60 >> 3) & 7;
                      v62 = CFNumberCreate(v7, kCFNumberSInt8Type, &v80);
                      if (v62)
                      {
                        v63 = v62;
                        CFDictionarySetValue(v6, @"6GHZ_OP_INFO_REG_INFO", v62);
                        CFRelease(v63);
                        if (v80)
                        {
                          if (v80 != 1)
                          {
LABEL_82:
                            v79 = v44[2];
                            v65 = CFNumberCreate(v7, kCFNumberSInt8Type, &v79);
                            if (v65)
                            {
                              v66 = v65;
                              CFDictionarySetValue(v6, @"6GHZ_OP_INFO_CENTER_CHANNEL_FREQ_SEG0", v65);
                              CFRelease(v66);
                              v78 = v44[3];
                              v67 = CFNumberCreate(v7, kCFNumberSInt8Type, &v78);
                              if (v67)
                              {
                                v68 = v67;
                                CFDictionarySetValue(v6, @"6GHZ_OP_INFO_CENTER_CHANNEL_FREQ_SEG1", v67);
                                CFRelease(v68);
                                v77 = v44[4];
                                v69 = CFNumberCreate(v7, kCFNumberSInt8Type, &v77);
                                if (v69)
                                {
                                  v70 = v69;
                                  CFDictionarySetValue(v6, @"6GHZ_OP_INFO_MIN_RATE", v69);
                                  CFRelease(v70);
                                  v46 = 8;
                                  v4 -= 5;
                                  continue;
                                }
                              }
                            }

                            goto LABEL_86;
                          }

                          v64 = @"6GHZ_OP_INFO_STANDARD_POWER_AP";
                        }

                        else
                        {
                          v64 = @"6GHZ_OP_INFO_INDOOR_AP";
                        }

                        CFDictionarySetValue(v6, v64, v8);
                        goto LABEL_82;
                      }
                    }
                  }

LABEL_86:
                  v46 = 4;
                  v71 = -3901;
LABEL_87:
                  v76 = v71;
                  continue;
                }

LABEL_89:
                v46 = 4;
                v71 = -3904;
                goto LABEL_87;
              }
            }

            else if ((v16 & 0x20000) != 0)
            {
              goto LABEL_68;
            }

            if (v9 != v8)
            {
              v46 = 8;
              continue;
            }

            goto LABEL_68;
          }
        }
      }

      v46 = 4;
      v72 = -3901;
    }

    else
    {
      v46 = 4;
      v72 = -3904;
    }

    v76 = v72;
    v4 = v45;
  }

  while (!v46);
  if (v46 != 4)
  {
    v3 = v76;
LABEL_95:
    if (!v6)
    {
      goto LABEL_99;
    }

    CFDictionarySetValue(a3, @"HE_OP_IE", v6);
    goto LABEL_98;
  }

  v3 = v76;
  if (!v6)
  {
    goto LABEL_99;
  }

LABEL_98:
  CFRelease(v6);
LABEL_99:
  v73 = *MEMORY[0x277D85DE8];
  return v3;
}

void _dispatchlqmChangedEvent(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v71 = *MEMORY[0x277D85DE8];
  if (a3 < 0x1D8)
  {
    goto LABEL_124;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    goto LABEL_124;
  }

  v6 = Mutable;
  v7 = *MEMORY[0x277CBECE8];
  if (*a2)
  {
    v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, (a2 + 4));
    if (!v8)
    {
      DictFromRoamState = v6;
LABEL_123:
      CFRelease(DictFromRoamState);
      goto LABEL_124;
    }

    cf = v8;
    CFDictionaryAddValue(v6, @"RSSI", v8);
  }

  else
  {
    cf = 0;
  }

  if (*(a2 + 8))
  {
    v9 = (a2 + 9);
    v10 = *(a2 + 9);
    if (v10 == 128)
    {
      LOBYTE(v10) = 0;
    }

    *v9 = v10;
    v12 = (a2 + 10);
    v11 = *(a2 + 10);
    if (v11 == 128)
    {
      LOBYTE(v11) = 0;
    }

    *v12 = v11;
    v13 = CFNumberCreate(v7, kCFNumberSInt8Type, v9);
    v68 = CFNumberCreate(v7, kCFNumberSInt8Type, v12);
    v69 = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
    if (!v69)
    {
      v62 = 0;
      v59 = 0;
      v60 = 0;
      v57 = 0;
      v58 = 0;
      v56 = 0;
      v54 = 0;
      v52 = 0;
      v66 = 0;
      v67 = 0;
      v65 = 0;
      v50 = 0;
      v51 = 0;
      v64 = 0;
      v55 = 0;
      v53 = 0;
      v49 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      DictFromCCAStats = 0;
      v61 = 0;
      v21 = 0;
      v22 = 0;
      DictFromRoamState = 0;
      v23 = cf;
      v24 = v68;
      if (!cf)
      {
        goto LABEL_70;
      }

LABEL_69:
      CFRelease(v23);
      goto LABEL_70;
    }

    if (v13)
    {
      CFArrayAppendValue(v69, v13);
    }

    if (v68)
    {
      CFArrayAppendValue(v69, v68);
    }

    CFDictionaryAddValue(v6, @"PER_CORE_RSSI", v69);
  }

  else
  {
    v68 = 0;
    v69 = 0;
    v13 = 0;
  }

  if (*(a2 + 11))
  {
    v14 = CFNumberCreate(v7, kCFNumberSInt16Type, (a2 + 12));
    if (!v14)
    {
      v62 = 0;
      goto LABEL_38;
    }

    v62 = v14;
    CFDictionaryAddValue(v6, @"SNR", v14);
  }

  else
  {
    v62 = 0;
  }

  if (!*(a2 + 14))
  {
    v60 = 0;
LABEL_30:
    if (*(a2 + 328))
    {
      v21 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 330));
      value = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 331));
      v25 = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
      DictFromCCAStats = v25;
      if (!v25)
      {
        v58 = 0;
        v59 = 0;
        v56 = 0;
        v57 = 0;
        v54 = 0;
        v52 = 0;
        v66 = 0;
        v67 = 0;
        v65 = 0;
        v50 = 0;
        v51 = 0;
        v64 = 0;
        v55 = 0;
        v53 = 0;
        v49 = 0;
        v17 = 0;
        v18 = 0;
        v61 = 0;
LABEL_66:
        DictFromRoamState = 0;
        goto LABEL_67;
      }

      if (v21)
      {
        CFArrayAppendValue(v25, v21);
      }

      if (value)
      {
        CFArrayAppendValue(DictFromCCAStats, value);
      }

      CFDictionaryAddValue(v6, @"PER_CORE_NOISE", DictFromCCAStats);
    }

    else
    {
      DictFromCCAStats = 0;
      v21 = 0;
      value = 0;
    }

    v61 = DictFromCCAStats;
    if (*(a2 + 18))
    {
      v26 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 19));
      if (!v26)
      {
        v59 = 0;
        goto LABEL_57;
      }

      v59 = v26;
      CFDictionaryAddValue(v6, @"CCA", v26);
    }

    else
    {
      v59 = 0;
    }

    v27 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 20));
    if (v27)
    {
      v58 = v27;
      CFDictionaryAddValue(v6, @"TXFAIL", v27);
      v28 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 24));
      if (v28)
      {
        v57 = v28;
        CFDictionaryAddValue(v6, @"TXRETRANS", v28);
        v29 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 28));
        if (v29)
        {
          v56 = v29;
          CFDictionaryAddValue(v6, @"TXFRAMES", v29);
          v30 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 64));
          if (v30)
          {
            v55 = v30;
            CFDictionaryAddValue(v6, @"TXRATE", v30);
            v31 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 68));
            if (v31)
            {
              v53 = v31;
              CFDictionaryAddValue(v6, @"TXFBRATE", v31);
              if (!*(a2 + 49))
              {
                v54 = 0;
                v52 = 0;
                v67 = 0;
LABEL_127:
                v36 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 36));
                if (v36)
                {
                  v66 = v36;
                  CFDictionaryAddValue(v6, @"RXFRAMES", v36);
                  v37 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 32));
                  if (v37)
                  {
                    v65 = v37;
                    CFDictionaryAddValue(v6, @"RXRETRYFRMS", v37);
                    v38 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 72));
                    if (v38)
                    {
                      v50 = v38;
                      CFDictionaryAddValue(v6, @"RXRATE", v38);
                      if (*(a2 + 48))
                      {
                        v39 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 40));
                        if (v39)
                        {
                          v51 = v39;
                          CFDictionaryAddValue(v6, @"RXBEACONFRMS", v39);
                          v40 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 44));
                          if (v40)
                          {
                            v64 = v40;
                            CFDictionaryAddValue(v6, @"RXBEACONSCHED", v40);
                            goto LABEL_141;
                          }
                        }

                        else
                        {
                          v51 = 0;
                        }

                        v64 = 0;
                        goto LABEL_63;
                      }

                      v51 = 0;
                      v64 = 0;
LABEL_141:
                      if (!*(a2 + 80))
                      {
                        v49 = 0;
                        v17 = 0;
                        v18 = 0;
                        goto LABEL_149;
                      }

                      valuePtr = *(a2 + 82);
                      v41 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr);
                      if (v41)
                      {
                        v49 = v41;
                        CFDictionaryAddValue(v6, @"QBSS_STA_COUNT", v41);
                        v17 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 84));
                        if (v17)
                        {
                          CFDictionaryAddValue(v6, @"QBSS_CHAN_UTIL", v17);
                          v18 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 88));
                          if (v18)
                          {
                            CFDictionaryAddValue(v6, @"QBSS_AAC", v18);
LABEL_149:
                            if (*(a2 + 94))
                            {
                              DictFromRoamState = _createDictFromRoamState((a2 + 92));
                              if (!DictFromRoamState)
                              {
                                DictFromCCAStats = 0;
                                goto LABEL_67;
                              }

                              CFDictionaryAddValue(v6, @"ROAM_STATE", DictFromRoamState);
                              CFRelease(DictFromRoamState);
                            }

                            if (*(a2 + 308))
                            {
                              DictFromCCAStats = _createDictFromCCAStats(a2 + 308);
                              if (DictFromCCAStats)
                              {
                                CFDictionaryAddValue(v6, @"CCA_STATS", DictFromCCAStats);
                              }
                            }

                            else
                            {
                              DictFromCCAStats = 0;
                            }

                            if (!*(a2 + 332))
                            {
                              DictFromRoamState = 0;
LABEL_168:
                              v19 = v69;
                              if (*(a2 + 468))
                              {
                                v44 = MEMORY[0x277CBED28];
                                if (!*(a2 + 469))
                                {
                                  v44 = MEMORY[0x277CBED10];
                                }

                                CFDictionaryAddValue(v6, @"TXRX_STATS_VALID", *v44);
                              }

                              (*(a1 + 72))(0, a1, 39, v6, 8, *(a1 + 80));
                              v23 = cf;
                              v24 = v68;
LABEL_68:
                              v22 = value;
                              if (!v23)
                              {
                                goto LABEL_70;
                              }

                              goto LABEL_69;
                            }

                            DictFromRoamState = _createDictFromMloOpStats(a2 + 332);
                            if (DictFromRoamState)
                            {
                              CFDictionaryAddValue(v6, @"MLO_OP_STATS", DictFromRoamState);
                            }

                            if (!*(a2 + 332))
                            {
                              goto LABEL_168;
                            }

                            theArray = CFArrayCreateMutable(v7, 0, MEMORY[0x277CBF128]);
                            if (theArray)
                            {
                              if (*(a2 + 332))
                              {
                                v47 = 0;
                                v42 = a2 + 348;
                                do
                                {
                                  DictFromMLOStats = _createDictFromMLOStats(v42);
                                  if (DictFromMLOStats)
                                  {
                                    v46 = DictFromMLOStats;
                                    CFArrayAppendValue(theArray, DictFromMLOStats);
                                    CFRelease(v46);
                                  }

                                  v42 += 40;
                                  ++v47;
                                }

                                while (v47 < *(a2 + 332));
                              }

                              CFDictionaryAddValue(v6, @"MLO_LQM_STATS", theArray);
                              CFRelease(theArray);
                              goto LABEL_168;
                            }

LABEL_67:
                            v23 = cf;
                            v24 = v68;
                            v19 = v69;
                            goto LABEL_68;
                          }

                          goto LABEL_65;
                        }

LABEL_64:
                        v18 = 0;
LABEL_65:
                        DictFromCCAStats = 0;
                        goto LABEL_66;
                      }

LABEL_63:
                      v49 = 0;
                      v17 = 0;
                      goto LABEL_64;
                    }

                    goto LABEL_139;
                  }

LABEL_138:
                  v65 = 0;
LABEL_139:
                  v51 = 0;
                  v64 = 0;
                  goto LABEL_62;
                }

LABEL_137:
                v66 = 0;
                goto LABEL_138;
              }

              v32 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 52));
              if (v32)
              {
                v54 = v32;
                CFDictionaryAddValue(v6, @"TXFWFAIL", v32);
                v33 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 56));
                if (v33)
                {
                  v52 = v33;
                  CFDictionaryAddValue(v6, @"TXFWRETRANS", v33);
                  v34 = CFNumberCreate(v7, kCFNumberIntType, (a2 + 60));
                  if (v34)
                  {
                    v67 = v34;
                    CFDictionaryAddValue(v6, @"TXFWFRAMES", v34);
                    goto LABEL_127;
                  }

LABEL_136:
                  v67 = 0;
                  goto LABEL_137;
                }
              }

              else
              {
                v54 = 0;
              }

              v52 = 0;
              goto LABEL_136;
            }

            v54 = 0;
            v52 = 0;
            v66 = 0;
            v67 = 0;
            v65 = 0;
            v51 = 0;
            v64 = 0;
LABEL_61:
            v53 = 0;
LABEL_62:
            v50 = 0;
            goto LABEL_63;
          }

LABEL_60:
          v54 = 0;
          v52 = 0;
          v66 = 0;
          v67 = 0;
          v65 = 0;
          v51 = 0;
          v64 = 0;
          v55 = 0;
          goto LABEL_61;
        }

LABEL_59:
        v56 = 0;
        goto LABEL_60;
      }

LABEL_58:
      v57 = 0;
      goto LABEL_59;
    }

LABEL_57:
    v58 = 0;
    goto LABEL_58;
  }

  v16 = CFNumberCreate(v7, kCFNumberSInt16Type, (a2 + 16));
  if (v16)
  {
    v60 = v16;
    CFDictionaryAddValue(v6, @"NOISE", v16);
    goto LABEL_30;
  }

LABEL_38:
  v59 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v54 = 0;
  v52 = 0;
  v66 = 0;
  v67 = 0;
  v65 = 0;
  v50 = 0;
  v51 = 0;
  v64 = 0;
  v55 = 0;
  v53 = 0;
  v49 = 0;
  v17 = 0;
  v18 = 0;
  DictFromCCAStats = 0;
  v61 = 0;
  v21 = 0;
  v22 = 0;
  DictFromRoamState = 0;
  v23 = cf;
  v24 = v68;
  v19 = v69;
  if (cf)
  {
    goto LABEL_69;
  }

LABEL_70:
  if (v19)
  {
    CFRelease(v19);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  CFRelease(v6);
  if (DictFromCCAStats)
  {
    CFRelease(DictFromCCAStats);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (DictFromRoamState)
  {
    goto LABEL_123;
  }

LABEL_124:
  v35 = *MEMORY[0x277D85DE8];
}

__CFDictionary *_createDictFromCCAStats(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return Mutable;
  }

  v4 = CFNumberCreate(v2, kCFNumberSInt16Type, (a1 + 2));
  if (!v4)
  {
    return Mutable;
  }

  v5 = v4;
  CFDictionaryAddValue(Mutable, @"CCA_TIMESTAMP_TOTAL", v4);
  v6 = CFNumberCreate(v2, kCFNumberSInt8Type, (a1 + 4));
  if (!v6)
  {
    v17 = v5;
LABEL_35:
    CFRelease(v17);
    return Mutable;
  }

  v7 = v6;
  CFDictionaryAddValue(Mutable, @"CCA_SELF_TOTAL", v6);
  v8 = CFNumberCreate(v2, kCFNumberSInt8Type, (a1 + 5));
  v21 = v7;
  cf = v5;
  v20 = v8;
  if (!v8 || (CFDictionaryAddValue(Mutable, @"CCA_OTHER_TOTAL", v8), (v9 = CFNumberCreate(v2, kCFNumberSInt8Type, (a1 + 6))) == 0))
  {
    v19 = 0;
    v10 = 0;
    goto LABEL_38;
  }

  v19 = v9;
  CFDictionaryAddValue(Mutable, @"CCA_INTERFERENCE_TOTAL", v9);
  v10 = CFNumberCreate(v2, kCFNumberSInt16Type, (a1 + 8));
  if (!v10)
  {
LABEL_38:
    v11 = 0;
    goto LABEL_39;
  }

  CFDictionaryAddValue(Mutable, @"CCA_TIMESTAMP_SLEEP", v10);
  v11 = CFNumberCreate(v2, kCFNumberSInt8Type, (a1 + 10));
  if (!v11)
  {
LABEL_39:
    v12 = 0;
    goto LABEL_40;
  }

  CFDictionaryAddValue(Mutable, @"CCA_SELF_SLEEP", v11);
  v12 = CFNumberCreate(v2, kCFNumberSInt8Type, (a1 + 11));
  if (!v12)
  {
LABEL_40:
    v13 = 0;
    goto LABEL_41;
  }

  CFDictionaryAddValue(Mutable, @"CCA_OTHER_SLEEP", v12);
  v13 = CFNumberCreate(v2, kCFNumberSInt8Type, (a1 + 12));
  if (!v13)
  {
LABEL_41:
    v14 = 0;
    goto LABEL_42;
  }

  CFDictionaryAddValue(Mutable, @"CCA_INTERFERENCE_SLEEP", v13);
  v14 = CFNumberCreate(v2, kCFNumberSInt16Type, (a1 + 14));
  if (!v14)
  {
LABEL_42:
    v15 = 0;
    goto LABEL_43;
  }

  CFDictionaryAddValue(Mutable, @"CCA_TIMESTAMP_WAKE", v14);
  v15 = CFNumberCreate(v2, kCFNumberSInt8Type, (a1 + 16));
  if (!v15)
  {
LABEL_43:
    v16 = 0;
    goto LABEL_44;
  }

  CFDictionaryAddValue(Mutable, @"CCA_SELF_WAKE", v15);
  v16 = CFNumberCreate(v2, kCFNumberSInt8Type, (a1 + 17));
  if (!v16)
  {
LABEL_44:
    v17 = 0;
    goto LABEL_16;
  }

  CFDictionaryAddValue(Mutable, @"CCA_OTHER_WAKE", v16);
  v17 = CFNumberCreate(v2, kCFNumberSInt8Type, (a1 + 18));
  if (v17)
  {
    CFDictionaryAddValue(Mutable, @"CCA_INTERFERENCE_WAKE", v17);
  }

LABEL_16:
  CFRelease(cf);
  CFRelease(v21);
  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    goto LABEL_35;
  }

  return Mutable;
}

void _dispatchWeightedAvgLQMUpdateEvent(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return;
  }

  if (a3 != 16)
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
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2);
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(v6, @"WEIGHT_AVG_RSSI", v8);
    v10 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 4));
    if (v10)
    {
      v11 = v10;
      CFDictionaryAddValue(v6, @"WEIGHT_AVG_SNR", v10);
      v12 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 8));
      if (v12)
      {
        CFDictionaryAddValue(v6, @"WEIGHT_AVG_TX_RATE", v12);
        v13 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 12));
        if (v13)
        {
          CFDictionaryAddValue(v6, @"WEIGHT_AVG_RX_RATE", v13);
          (*(a1 + 72))(0, a1, 145, v6, 8, *(a1 + 80));
        }
      }

      else
      {
        v13 = 0;
      }

      CFRelease(v9);
      CFRelease(v11);
      if (v12)
      {
        CFRelease(v12);
      }

      if (!v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v13 = v9;
    }

    CFRelease(v13);
  }

LABEL_16:

  CFRelease(v6);
}

void _dispatchLqmTxStatsUpdate(uint64_t a1, uint64_t a2, int a3)
{
  v41 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    if (a3 == 136)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v7 = Mutable;
        v8 = *MEMORY[0x277CBECE8];
        v9 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, a2);
        if (v9)
        {
          v10 = v9;
          CFDictionaryAddValue(v7, @"LQM_TX_STATS_TX_SUCCESS", v9);
          CFRelease(v10);
          v11 = CFNumberCreate(v8, kCFNumberSInt64Type, (a2 + 128));
          if (v11)
          {
            v12 = v11;
            CFDictionaryAddValue(v7, @"APPLE80211KEY_LQM_TX_STATS_TX_DROP_MISC", v11);
            CFRelease(v12);
            v13 = CFNumberCreate(v8, kCFNumberSInt64Type, (a2 + 24));
            if (v13)
            {
              v14 = v13;
              CFDictionaryAddValue(v7, @"APPLE80211KEY_LQM_TX_STATS_TX_NO_BUFF", v13);
              CFRelease(v14);
              v15 = CFNumberCreate(v8, kCFNumberSInt64Type, (a2 + 48));
              if (v15)
              {
                v16 = v15;
                CFDictionaryAddValue(v7, @"APPLE80211KEY_LQM_TX_STATS_TX_NO_RESOURCE", v15);
                CFRelease(v16);
                v17 = CFNumberCreate(v8, kCFNumberSInt64Type, (a2 + 32));
                if (v17)
                {
                  v18 = v17;
                  CFDictionaryAddValue(v7, @"APPLE80211KEY_LQM_TX_STATS_TX_NO_ACK", v17);
                  CFRelease(v18);
                  v19 = CFNumberCreate(v8, kCFNumberSInt64Type, (a2 + 72));
                  if (v19)
                  {
                    v20 = v19;
                    CFDictionaryAddValue(v7, @"APPLE80211KEY_LQM_TX_STATS_TX_CHIP_MODE_ERROR", v19);
                    CFRelease(v20);
                    v21 = CFNumberCreate(v8, kCFNumberSInt64Type, (a2 + 16));
                    if (v21)
                    {
                      v22 = v21;
                      CFDictionaryAddValue(v7, @"APPLE80211KEY_LQM_TX_STATS_TX_EXPIRED", v21);
                      CFRelease(v22);
                      v23 = CFNumberCreate(v8, kCFNumberSInt64Type, (a2 + 40));
                      if (v23)
                      {
                        v24 = v23;
                        CFDictionaryAddValue(v7, @"APPLE80211KEY_LQM_TX_STATS_TX_FAIL", v23);
                        CFRelease(v24);
                        v25 = CFNumberCreate(v8, kCFNumberSInt64Type, (a2 + 104));
                        if (v25)
                        {
                          v26 = v25;
                          CFDictionaryAddValue(v7, @"APPLE80211KEY_LQM_TX_STATS_TX_FW_FREE_PACKET", v25);
                          CFRelease(v26);
                          v27 = CFNumberCreate(v8, kCFNumberSInt64Type, (a2 + 112));
                          if (v27)
                          {
                            v28 = v27;
                            CFDictionaryAddValue(v7, @"APPLE80211KEY_LQM_TX_STATS_TX_MAX_RETRIES", v27);
                            CFRelease(v28);
                            v29 = CFNumberCreate(v8, kCFNumberSInt64Type, (a2 + 120));
                            if (v29)
                            {
                              v30 = v29;
                              CFDictionaryAddValue(v7, @"APPLE80211KEY_LQM_TX_STATS_TX_FORCE_LIFETIME_EXPIRED", v29);
                              CFRelease(v30);
                              (*(a1 + 72))(0, a1, 169, v7, 8, *(a1 + 80));
LABEL_17:
                              CFRelease(v7);
                              goto LABEL_18;
                            }

                            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_17;
                            }

                            v37 = 136315138;
                            v38 = "_dispatchLqmTxStatsUpdate";
                            v35 = MEMORY[0x277D86220];
                            v36 = "%s: Failed to allocate txForceLifetimeExpiredRef";
                          }

                          else
                          {
                            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_17;
                            }

                            v37 = 136315138;
                            v38 = "_dispatchLqmTxStatsUpdate";
                            v35 = MEMORY[0x277D86220];
                            v36 = "%s: Failed to allocate txMaxRetriesRef";
                          }
                        }

                        else
                        {
                          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_17;
                          }

                          v37 = 136315138;
                          v38 = "_dispatchLqmTxStatsUpdate";
                          v35 = MEMORY[0x277D86220];
                          v36 = "%s: Failed to allocate txFWFreePacketRef";
                        }
                      }

                      else
                      {
                        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_17;
                        }

                        v37 = 136315138;
                        v38 = "_dispatchLqmTxStatsUpdate";
                        v35 = MEMORY[0x277D86220];
                        v36 = "%s: Failed to allocate txFailRef";
                      }
                    }

                    else
                    {
                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_17;
                      }

                      v37 = 136315138;
                      v38 = "_dispatchLqmTxStatsUpdate";
                      v35 = MEMORY[0x277D86220];
                      v36 = "%s: Failed to allocate txExpiredRef";
                    }
                  }

                  else
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_17;
                    }

                    v37 = 136315138;
                    v38 = "_dispatchLqmTxStatsUpdate";
                    v35 = MEMORY[0x277D86220];
                    v36 = "%s: Failed to allocate txChipModeErrorRef";
                  }
                }

                else
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_17;
                  }

                  v37 = 136315138;
                  v38 = "_dispatchLqmTxStatsUpdate";
                  v35 = MEMORY[0x277D86220];
                  v36 = "%s: Failed to allocate txNoACKRef";
                }
              }

              else
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_17;
                }

                v37 = 136315138;
                v38 = "_dispatchLqmTxStatsUpdate";
                v35 = MEMORY[0x277D86220];
                v36 = "%s: Failed to allocate txNoResourcesRef";
              }
            }

            else
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_17;
              }

              v37 = 136315138;
              v38 = "_dispatchLqmTxStatsUpdate";
              v35 = MEMORY[0x277D86220];
              v36 = "%s: Failed to allocate txNoBuffRef";
            }
          }

          else
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_17;
            }

            v37 = 136315138;
            v38 = "_dispatchLqmTxStatsUpdate";
            v35 = MEMORY[0x277D86220];
            v36 = "%s: Failed to allocate txDroppedMiscRef";
          }
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_17;
          }

          v37 = 136315138;
          v38 = "_dispatchLqmTxStatsUpdate";
          v35 = MEMORY[0x277D86220];
          v36 = "%s: Failed to allocate txSuccessRef";
        }

        _os_log_impl(&dword_254882000, v35, OS_LOG_TYPE_DEFAULT, v36, &v37, 0xCu);
        goto LABEL_17;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v37 = 136315138;
      v38 = "_dispatchLqmTxStatsUpdate";
      v32 = MEMORY[0x277D86220];
      v33 = "%s: NULL lqmTxStatsEventDict, Bail out\n";
      v34 = 12;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v37 = 136315394;
      v38 = "_dispatchLqmTxStatsUpdate";
      v39 = 1024;
      v40 = a3;
      v32 = MEMORY[0x277D86220];
      v33 = "%s:wrong DataLen:%u\n";
      v34 = 18;
    }

    _os_log_impl(&dword_254882000, v32, OS_LOG_TYPE_DEFAULT, v33, &v37, v34);
  }

LABEL_18:
  v31 = *MEMORY[0x277D85DE8];
}

uint64_t _parseIEs(unsigned __int8 *a1, unsigned int a2, const __CFDictionary *a3, uint64_t a4)
{
  result = 0;
  v81 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    if (a2 >= 0x801)
    {
      v70 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      result = 4294963396;
      if (v70)
      {
        v71 = 67110146;
        v72 = -3900;
        v73 = 2112;
        Value = CFDictionaryGetValue(a3, @"BSSID");
        v75 = 2048;
        v76 = a1;
        v77 = 1024;
        v78 = a2;
        v79 = 1024;
        v80 = 2048;
        _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed: Invalid IE length parameter check, (err=%d, bssid=%@), [%p], size[%u] > max size[%u]", &v71, 0x28u);
        result = 4294963396;
      }
    }

    else
    {
      v9 = Apple80211ParseAppleIE(a1, a2, a3);
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v71 = 67109378;
          v72 = v10;
          v73 = 2112;
          Value = CFDictionaryGetValue(a3, @"BSSID");
          _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse Apple IE (err=%d, bssid=%@)", &v71, 0x12u);
        }
      }

      v11 = Apple80211ParseAppleiOSIE(a1, a2, a3);
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v51 = CFDictionaryGetValue(a3, @"BSSID");
          v71 = 67109378;
          v72 = v12;
          v73 = 2112;
          Value = v51;
          _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse Apple iOS IE (err=%d, bssid=%@)", &v71, 0x12u);
        }
      }

      v13 = Apple80211ParseAppleDeviceIE(a1, a2, a3);
      if (v13)
      {
        v14 = v13;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v52 = CFDictionaryGetValue(a3, @"BSSID");
          v71 = 67109378;
          v72 = v14;
          v73 = 2112;
          Value = v52;
          _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse Apple device IE (err=%d, bssid=%@)", &v71, 0x12u);
        }
      }

      v15 = Apple80211Parse80211dIE(a1, a2, a3);
      if (v15)
      {
        v16 = v15;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v53 = CFDictionaryGetValue(a3, @"BSSID");
          v71 = 67109378;
          v72 = v16;
          v73 = 2112;
          Value = v53;
          _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse Country IE (err=%d, bssid=%@)", &v71, 0x12u);
        }
      }

      v17 = Apple80211ParseSES_IE(a1, a2, a3);
      if (v17)
      {
        v18 = v17;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v54 = CFDictionaryGetValue(a3, @"BSSID");
          v71 = 67109378;
          v72 = v18;
          v73 = 2112;
          Value = v54;
          _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse SES IE (err=%d, bssid=%@)", &v71, 0x12u);
        }
      }

      v19 = Apple80211ParseHT_Caps(a1, a2, a3);
      if (v19)
      {
        v20 = v19;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v55 = CFDictionaryGetValue(a3, @"BSSID");
          v71 = 67109378;
          v72 = v20;
          v73 = 2112;
          Value = v55;
          _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse HT Caps IE (err=%d, bssid=%@)", &v71, 0x12u);
        }
      }

      v21 = Apple80211ParseHT_IE(a1, a2, a3);
      if (v21)
      {
        v22 = v21;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v56 = CFDictionaryGetValue(a3, @"BSSID");
          v71 = 67109378;
          v72 = v22;
          v73 = 2112;
          Value = v56;
          _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse HT IE (err=%d, bssid=%@)", &v71, 0x12u);
        }
      }

      v23 = Apple80211ParseVHT_Caps(a1, a2, a3);
      if (v23)
      {
        v24 = v23;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v57 = CFDictionaryGetValue(a3, @"BSSID");
          v71 = 67109378;
          v72 = v24;
          v73 = 2112;
          Value = v57;
          _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse VHT Caps IE (err=%d, bssid=%@)", &v71, 0x12u);
        }
      }

      v25 = Apple80211ParseVHT_IE(a1, a2, a3);
      if (v25)
      {
        v26 = v25;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v58 = CFDictionaryGetValue(a3, @"BSSID");
          v71 = 67109378;
          v72 = v26;
          v73 = 2112;
          Value = v58;
          _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse VHT IE (err=%d, bssid=%@)", &v71, 0x12u);
        }
      }

      v27 = Apple80211ParseInterworkingIE(a1, a2, a3);
      if (v27)
      {
        v28 = v27;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v59 = CFDictionaryGetValue(a3, @"BSSID");
          v71 = 67109378;
          v72 = v28;
          v73 = 2112;
          Value = v59;
          _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse Interworking IE (err=%d, bssid=%@)", &v71, 0x12u);
        }
      }

      v29 = Apple80211ParseHS20IE(a1, a2, a3);
      if (v29)
      {
        v30 = v29;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v60 = CFDictionaryGetValue(a3, @"BSSID");
          v71 = 67109378;
          v72 = v30;
          v73 = 2112;
          Value = v60;
          _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse HS20 IE (err=%d, bssid=%@)", &v71, 0x12u);
        }
      }

      v31 = Apple80211ParseQBSSLoadIE(a1, a2, a3);
      if (v31)
      {
        v32 = v31;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v61 = CFDictionaryGetValue(a3, @"BSSID");
          v71 = 67109378;
          v72 = v32;
          v73 = 2112;
          Value = v61;
          _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse QBSS Load IE (err=%d, bssid=%@)", &v71, 0x12u);
        }
      }

      v33 = Apple80211ParseMobilityDomainIE(a1, a2, a3);
      if (v33)
      {
        v34 = v33;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v62 = CFDictionaryGetValue(a3, @"BSSID");
          v71 = 67109378;
          v72 = v34;
          v73 = 2112;
          Value = v62;
          _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse Mobility Domain IE (err=%d, bssid=%@)", &v71, 0x12u);
        }
      }

      v35 = Apple80211ParseExtCapsIE(a1, a2, a3);
      if (v35)
      {
        v36 = v35;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v63 = CFDictionaryGetValue(a3, @"BSSID");
          v71 = 67109378;
          v72 = v36;
          v73 = 2112;
          Value = v63;
          _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse Extended Caps IE (err=%d, bssid=%@)", &v71, 0x12u);
        }
      }

      v37 = Apple80211ParseCyclopsIE(a1, a2, a3);
      if (v37)
      {
        v38 = v37;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v64 = CFDictionaryGetValue(a3, @"BSSID");
          v71 = 67109378;
          v72 = v38;
          v73 = 2112;
          Value = v64;
          _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse Cyclops IE (err=%d, bssid=%@)", &v71, 0x12u);
        }
      }

      v39 = Apple80211ParseHE_IEs(a1, a2, a3);
      if (v39)
      {
        v40 = v39;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v65 = CFDictionaryGetValue(a3, @"BSSID");
          v71 = 67109378;
          v72 = v40;
          v73 = 2112;
          Value = v65;
          _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse HE IEs (err=%d, bssid=%@)", &v71, 0x12u);
        }
      }

      if ((*(a4 + 11) & 0x40) != 0)
      {
        v41 = Apple80211ParseRNRIE(a1, a2, a3);
        if (v41)
        {
          v42 = v41;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v67 = CFDictionaryGetValue(a3, @"BSSID");
            v71 = 67109378;
            v72 = v42;
            v73 = 2112;
            Value = v67;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse RNR IE (err=%d, bssid=%@)", &v71, 0x12u);
          }
        }

        v43 = Apple80211ParseMBOOCEIE(a1, a2, a3);
        if (v43)
        {
          v44 = v43;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v68 = CFDictionaryGetValue(a3, @"BSSID");
            v71 = 67109378;
            v72 = v44;
            v73 = 2112;
            Value = v68;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse MBO-OCE IE (err=%d, bssid=%@)", &v71, 0x12u);
          }
        }

        v45 = Apple80211ParseHEOperationIE(a1, a2, a3);
        if (v45)
        {
          v46 = v45;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v69 = CFDictionaryGetValue(a3, @"BSSID");
            v71 = 67109378;
            v72 = v46;
            v73 = 2112;
            Value = v69;
            _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse HE Op IE (err=%d, bssid=%@)", &v71, 0x12u);
          }
        }
      }

      v47 = Apple80211ParseWPS_IE(a1, a2, a3);
      if (v47)
      {
        v48 = v47;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v66 = CFDictionaryGetValue(a3, @"BSSID");
          v71 = 67109378;
          v72 = v48;
          v73 = 2112;
          Value = v66;
          _os_log_error_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to parse WPS IE (err=%d, bssid=%@)", &v71, 0x12u);
        }
      }

      result = CFDataCreate(*MEMORY[0x277CBECE8], a1, a2);
      if (result)
      {
        v49 = result;
        CFDictionarySetValue(a3, @"IE", result);
        CFRelease(v49);
        result = 0;
      }
    }
  }

  v50 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Apple80211ParseRSNXE(unsigned __int8 *a1, int a2, __CFDictionary *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = 4294963393;
  if (!a1 || !a2)
  {
    goto LABEL_12;
  }

  v5 = a1;
  while (a2 < 3 || *v5 != 244)
  {
    v7 = v5[1];
    a2 = a2 - v7 - 2;
    if (a2 < 1)
    {
      goto LABEL_11;
    }

    v8 = &v5[v7];
    v5 = v8 + 2;
    v6 = v8[3];
LABEL_10:
    if (v6 + 2 > a2)
    {
LABEL_11:
      v3 = 4294963393;
      goto LABEL_12;
    }
  }

  v6 = v5[1];
  if (a2 - 2 < v6)
  {
    goto LABEL_10;
  }

  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = Mutable;
  if (!a3)
  {
    v3 = 4294963396;
    if (Mutable)
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  if (!Mutable)
  {
    v3 = 4294963395;
    goto LABEL_12;
  }

  if (*v5 != 244)
  {
    v3 = 4294963379;
    goto LABEL_32;
  }

  if (!v5[2])
  {
    goto LABEL_30;
  }

  v14 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v14)
  {
LABEL_37:
    v3 = 4294963395;
    goto LABEL_32;
  }

  v15 = v14;
  v16 = *MEMORY[0x277CBED10];
  v17 = *MEMORY[0x277CBED28];
  if ((v5[2] & 0x10) != 0)
  {
    v18 = *MEMORY[0x277CBED28];
  }

  else
  {
    v18 = *MEMORY[0x277CBED10];
  }

  CFDictionaryAddValue(v14, @"RSNXE_PROTECTED_TWT", v18);
  if ((v5[2] & 0x20) != 0)
  {
    v19 = v17;
  }

  else
  {
    v19 = v16;
  }

  CFDictionaryAddValue(v15, @"RSNXE_SAE_H2E", v19);
  if ((v5[2] & 0x40) != 0)
  {
    v20 = v17;
  }

  else
  {
    v20 = v16;
  }

  CFDictionaryAddValue(v15, @"RSNXE_SAE_PK", v20);
  valuePtr = v5[1];
  v21 = CFNumberCreate(v11, kCFNumberSInt16Type, &valuePtr);
  if (!v21 || (v22 = v21, CFDictionaryAddValue(v15, @"RSNXE_CAP_LEN", v21), CFRelease(v22), v25 = v5[2] & 0xF, (v23 = CFNumberCreate(v11, kCFNumberSInt16Type, &v25)) == 0))
  {
    CFRelease(v15);
    goto LABEL_37;
  }

  v24 = v23;
  CFDictionaryAddValue(v15, @"RSNXE_CAP_RSNXE_LEN", v23);
  CFRelease(v24);
  CFDictionaryAddValue(v13, @"IE_KEY_RSNXE_CAPS", v15);
  CFRelease(v15);
LABEL_30:
  CFDictionarySetValue(a3, @"RSN_XE", v13);
  v3 = 0;
LABEL_32:
  CFRelease(v13);
LABEL_12:
  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t Apple80211ParseWAPIIE(_BYTE *a1, signed int a2, CFDictionaryRef theDict)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = 4294963393;
  if (a1 && a2 >= 2)
  {
    while (1)
    {
      v5 = a1[1];
      v6 = *a1 == 68 && v5 >= 5;
      v7 = v6 && (v5 + 2) <= a2;
      if (v7 && a1[2] == 1)
      {
        break;
      }

      a2 = a2 - v5 - 2;
      if (a2 >= 1)
      {
        v8 = &a1[a1[1]];
        a1 = v8 + 2;
        if (v8[3] + 2 <= a2)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    v11 = a1[4];
    if (4 * v11 + 6 <= v5 && a1[4])
    {
      v12 = a1 + 6;
      v13 = *MEMORY[0x277CBECE8];
      v3 = 4294963393;
      while (1)
      {
        if (*v12 != 5120 || v12[2] != 114)
        {
          goto LABEL_33;
        }

        valuePtr = 3;
        Value = CFDictionaryGetValue(theDict, @"WAPI");
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
        }

        v16 = v12[3];
        v17 = valuePtr;
        if (v16 == 2)
        {
          v3 = 0;
          v17 = valuePtr + 4;
        }

        else
        {
          if (v16 != 1)
          {
            goto LABEL_31;
          }

          v3 = 0;
          v17 = valuePtr + 8;
        }

        valuePtr = v17;
LABEL_31:
        if (v17 >= 4)
        {
          v18 = CFNumberCreate(v13, kCFNumberIntType, &valuePtr);
          CFDictionarySetValue(theDict, @"WAPI", v18);
          CFRelease(v18);
        }

LABEL_33:
        v12 += 4;
        if (!--v11)
        {
          goto LABEL_15;
        }
      }
    }

LABEL_14:
    v3 = 4294963393;
  }

LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t Apple80211ParseAppleIE(unsigned __int8 *a1, int a2, __CFDictionary *a3)
{
  v3 = 4294963396;
  if (a1 && a2 && a3)
  {
    if (a2 < 2)
    {
      return 0;
    }

    else
    {
      v5 = a1;
      while (1)
      {
        v6 = v5[1];
        v7 = a2 >= (v6 + 2);
        a2 -= v6 + 2;
        if (!v7)
        {
          return 0;
        }

        if (v6 >= 3 && *v5 == 221)
        {
          v8 = Apple80211ParseAppleIE_appleOUI == *(v5 + 1) && byte_27F611CE2 == v5[4];
          v9 = !v8;
          if (v6 >= 7 && !v9)
          {
            break;
          }
        }

        v10 = &v5[v6 + 2];
        if (a2 > 0)
        {
          v5 = v10;
        }

        if (a2 <= 1)
        {
          return 0;
        }
      }

      v12 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v14 = Mutable;
        v15 = CFNumberCreate(v12, kCFNumberSInt8Type, v5 + 5);
        if (!v15)
        {
          goto LABEL_48;
        }

        v16 = v15;
        CFDictionarySetValue(v14, @"APPLE_IE_VERSION", v15);
        CFRelease(v16);
        if (v5[5] != 1)
        {
          goto LABEL_37;
        }

        v17 = CFNumberCreate(v12, kCFNumberSInt8Type, v5 + 6);
        if (!v17)
        {
LABEL_48:
          v3 = 4294963395;
          goto LABEL_38;
        }

        v18 = v17;
        CFDictionarySetValue(v14, @"APPLE_IE_PRODUCT_ID", v17);
        CFRelease(v18);
        v19 = bswap32(*(v5 + 7)) >> 16;
        v20 = MEMORY[0x277CBED28];
        if (v19)
        {
          CFDictionarySetValue(v14, @"APPLE_IE_INT_MIT", *MEMORY[0x277CBED28]);
          if ((v19 & 2) == 0)
          {
LABEL_29:
            if ((v19 & 4) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_41;
          }
        }

        else if ((v19 & 2) == 0)
        {
          goto LABEL_29;
        }

        CFDictionarySetValue(v14, @"APPLE_IE_UNCONFIGURED", *v20);
        if ((v19 & 4) == 0)
        {
LABEL_30:
          if ((v19 & 8) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_42;
        }

LABEL_41:
        CFDictionarySetValue(v14, @"APPLE_IE_FOUND_PPPOE", *v20);
        if ((v19 & 8) == 0)
        {
LABEL_31:
          if ((v19 & 0x10) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_43;
        }

LABEL_42:
        CFDictionarySetValue(v14, @"APPLE_IE_GUEST_NETWORK", *v20);
        if ((v19 & 0x10) == 0)
        {
LABEL_32:
          if ((v19 & 0x20) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_44;
        }

LABEL_43:
        CFDictionarySetValue(v14, @"APPLE_IE_LEGACY_WDS", *v20);
        if ((v19 & 0x20) == 0)
        {
LABEL_33:
          if ((v19 & 0x40) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_45;
        }

LABEL_44:
        CFDictionarySetValue(v14, @"APPLE_IE_WSC_CAP", *v20);
        if ((v19 & 0x40) == 0)
        {
LABEL_34:
          if ((v19 & 0x80) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_46;
        }

LABEL_45:
        CFDictionarySetValue(v14, @"APPLE_IE_WSC_ACTIVE", *v20);
        if ((v19 & 0x80) == 0)
        {
LABEL_35:
          if ((v19 & 0x100) != 0)
          {
LABEL_36:
            CFDictionarySetValue(v14, @"APPLE_IE_WOW_SUPPORTED", *v20);
          }

LABEL_37:
          CFDictionarySetValue(a3, @"APPLE_IE", v14);
          v3 = 0;
LABEL_38:
          CFRelease(v14);
          return v3;
        }

LABEL_46:
        CFDictionarySetValue(v14, @"APPLE_IE_WSC_SOLICITABLE", *v20);
        if ((v19 & 0x100) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      return 4294963395;
    }
  }

  return v3;
}

uint64_t Apple80211ParseAppleiOSIE(unsigned __int8 *a1, int a2, CFMutableDictionaryRef theDict)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (!a1)
  {
    goto LABEL_41;
  }

  v4 = a2;
  if (!a2 || !theDict)
  {
    goto LABEL_41;
  }

  if (a2 < 3)
  {
LABEL_40:
    v3 = 0;
    goto LABEL_41;
  }

  v6 = a1;
  v7 = 0;
  valuePtr = -86;
  v8 = *MEMORY[0x277CBECE8];
  value = *MEMORY[0x277CBED28];
  while (1)
  {
    v9 = v6[1];
    if (v9 + 2 > v4)
    {
LABEL_37:
      if (v7)
      {
        CFDictionarySetValue(theDict, @"IOS_IE", v7);
        v3 = 0;
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v9 >= 4 && *v6 == 221 && Apple80211ParseAppleiOSIE_iosSignature == *(v6 + 2))
    {
      if (!v7)
      {
        Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!Mutable)
        {
          v3 = 4294963395;
          goto LABEL_41;
        }

        v7 = Mutable;
        v9 = v6[1];
      }

      v11 = v9 - 4;
      if (v9 - 4 >= 3)
      {
        break;
      }
    }

LABEL_34:
    v4 = v4 - v9 - 2;
    v29 = &v6[v9 + 2];
    if (v4 > 0)
    {
      v6 = v29;
    }

    if (v4 <= 2)
    {
      goto LABEL_37;
    }
  }

  v12 = v6 + 6;
  while (1)
  {
    v13 = *v12;
    v14 = v12[1];
    valuePtr = v12[1];
    v15 = v12[2];
    v16 = v11 - 3;
    if (v15 > (v11 - 3))
    {
LABEL_42:
      v3 = 4294963394;
      goto LABEL_39;
    }

    v17 = v12 + 3;
    if (v14 != 1)
    {
      goto LABEL_32;
    }

    if (v13 == 4)
    {
      v28 = CFNumberCreate(v8, kCFNumberSInt8Type, &valuePtr);
      if (!v28)
      {
        goto LABEL_43;
      }

      v25 = v28;
      v26 = v7;
      v27 = @"IOS_NAN_PH_INFO_VERSION";
      goto LABEL_31;
    }

    if (v13 == 2)
    {
      break;
    }

    if (v13 == 1)
    {
      if (!v12[2])
      {
        goto LABEL_42;
      }

      v18 = CFNumberCreate(v8, kCFNumberSInt8Type, &valuePtr);
      if (!v18)
      {
        goto LABEL_43;
      }

      v19 = v18;
      CFDictionarySetValue(v7, @"IOS_IE_FEATURE_VERSION", v18);
      CFRelease(v19);
      v20 = CFDataCreate(v8, v17, v15);
      if (!v20)
      {
        goto LABEL_43;
      }

      v21 = v20;
      CFDictionarySetValue(v7, @"IOS_IE_FEATURES", v20);
      CFRelease(v21);
      if (*v17)
      {
        CFDictionarySetValue(v7, @"IOS_IE_FEATURE_WOW_DISALLOWED", value);
      }
    }

LABEL_32:
    v11 = v16 - v15;
    v12 = &v17[v15];
    if ((v16 - v15) <= 2u)
    {
      v9 = v6[1];
      goto LABEL_34;
    }
  }

  if (v15 < 6)
  {
    goto LABEL_42;
  }

  v22 = CFNumberCreate(v8, kCFNumberSInt8Type, &valuePtr);
  if (v22)
  {
    v23 = v22;
    CFDictionarySetValue(v7, @"IOS_IE_BTMAC_VERSION", v22);
    CFRelease(v23);
    v24 = CFDataCreate(v8, v17, 6);
    if (v24)
    {
      v25 = v24;
      v26 = v7;
      v27 = @"IOS_IE_BTMAC";
LABEL_31:
      CFDictionarySetValue(v26, v27, v25);
      CFRelease(v25);
      goto LABEL_32;
    }
  }

LABEL_43:
  v3 = 4294963395;
LABEL_39:
  CFRelease(v7);
LABEL_41:
  v30 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t Apple80211GetPowerState(uint64_t a1, _DWORD *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  v3 = Apple80211CopyValue();
  if (!v3)
  {
    Count = CFArrayGetCount(0xAAAAAAAAAAAAAAAALL);
    if (Count >= 1)
    {
      v5 = 0;
      do
      {
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(0xAAAAAAAAAAAAAAAALL, v5);
          if (ValueAtIndex)
          {
            break;
          }

          if (++v5 >= Count)
          {
            goto LABEL_11;
          }
        }

        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, a2);
        ++v5;
      }

      while (*a2 != 1 && v5 < Count);
    }

LABEL_11:
    CFRelease(0xAAAAAAAAAAAAAAAALL);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t Apple80211GetPower(uint64_t a1, BOOL *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = -1431655766;
  result = Apple80211GetPowerState(a1, &v5);
  *a2 = v5 == 1;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void _dispatchRealtimeSessionEvent(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return;
  }

  if (a3 != 20)
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
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt8Type, (a2 + 1));
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(v6, @"ASR_SESSION_STATE", v8);
    v10 = CFNumberCreate(v7, kCFNumberSInt8Type, a2);
    if (!v10)
    {
LABEL_27:
      CFRelease(v9);
      goto LABEL_28;
    }

    v11 = v10;
    CFDictionaryAddValue(v6, @"RT_TRAFFIC_STATE", v10);
    v12 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v12)
    {
      (*(a1 + 72))(0, a1, 156, v6, 8, *(a1 + 80));
      goto LABEL_26;
    }

    v13 = v12;
    v14 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 8));
    if (!v14)
    {
LABEL_25:
      CFDictionaryAddValue(v6, @"QUAL_SCORE", v13);
      (*(a1 + 72))(0, a1, 156, v6, 8, *(a1 + 80));
      CFRelease(v11);
      v11 = v9;
      v9 = v13;
LABEL_26:
      CFRelease(v11);
      goto LABEL_27;
    }

    v15 = v14;
    CFDictionaryAddValue(v13, @"CHANQUAL_SCORE", v14);
    v16 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 4));
    if (!v16)
    {
      v21 = v15;
LABEL_24:
      CFRelease(v21);
      goto LABEL_25;
    }

    v22 = v16;
    cf = v15;
    CFDictionaryAddValue(v13, @"TX_LATENCY_SCORE", v16);
    v17 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 5));
    v24 = v11;
    if (v17)
    {
      CFDictionaryAddValue(v13, @"RX_LATENCY_SCORE", v17);
      v18 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 6));
      if (v18)
      {
        CFDictionaryAddValue(v13, @"TX_LOSS_SCORE", v18);
        v19 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 7));
        if (v19)
        {
          CFDictionaryAddValue(v13, @"RX_LOSS_SCORE", v19);
          v20 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 12));
          if (v20)
          {
            CFDictionaryAddValue(v13, @"P95_TX_LATENCY_SCORE", v20);
            v21 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 16));
            if (v21)
            {
              CFDictionaryAddValue(v13, @"LINK_RECOMMENDATION_FLAGS", v21);
            }

LABEL_15:
            CFRelease(cf);
            CFRelease(v22);
            if (v17)
            {
              CFRelease(v17);
            }

            if (v18)
            {
              CFRelease(v18);
            }

            if (v19)
            {
              CFRelease(v19);
            }

            if (v20)
            {
              CFRelease(v20);
            }

            v11 = v24;
            if (!v21)
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }

LABEL_37:
          v21 = 0;
          goto LABEL_15;
        }

LABEL_36:
        v20 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = 0;
    goto LABEL_36;
  }

LABEL_28:

  CFRelease(v6);
}

void _dispatchCCAChangedEvent(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 < 0x1C)
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
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2);
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(v6, @"TIMESTAMP", v8);
    v10 = CFNumberCreate(v7, kCFNumberSInt16Type, a2 + 4);
    if (!v10)
    {
      DictFromCCAStats = v9;
LABEL_17:
      CFRelease(DictFromCCAStats);
      goto LABEL_18;
    }

    v11 = v10;
    CFDictionaryAddValue(v6, @"CHANNEL", v10);
    v12 = CFNumberCreate(v7, kCFNumberSInt8Type, a2 + 6);
    if (v12)
    {
      CFDictionaryAddValue(v6, @"CCA", v12);
      v14 = a2[8];
      v13 = (a2 + 8);
      if (v14)
      {
        DictFromCCAStats = _createDictFromCCAStats(v13);
        if (!DictFromCCAStats)
        {
          goto LABEL_14;
        }

        CFDictionaryAddValue(v6, @"CCA_STATS", DictFromCCAStats);
      }

      else
      {
        DictFromCCAStats = 0;
      }

      (*(a1 + 72))(0, a1, 60, v6, 8, *(a1 + 80));
    }

    else
    {
      DictFromCCAStats = 0;
    }

LABEL_14:
    CFRelease(v9);
    CFRelease(v11);
    if (v12)
    {
      CFRelease(v12);
    }

    if (!DictFromCCAStats)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_18:

  CFRelease(v6);
}

uint64_t Apple80211SetProperty()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v37 = *MEMORY[0x277D85DE8];
  values = v1;
  keys = v3;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  bzero(&v32, 0x1004uLL);
  v31 = 1;
  error = 0;
  if (!v4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 4294963396;
      goto LABEL_32;
    }

    *buf = 136315138;
    v27 = "Apple80211SetProperty";
    v8 = MEMORY[0x277D86220];
    v9 = "%s: key NULL\n";
LABEL_37:
    v10 = 12;
    goto LABEL_17;
  }

  if (!v2)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    v27 = "Apple80211SetProperty";
    v8 = MEMORY[0x277D86220];
    v9 = "%s: property NULL\n";
    goto LABEL_37;
  }

  if (!v5)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v11 = 0;
    v6 = -1;
LABEL_16:
    *buf = 136315906;
    v27 = "Apple80211SetProperty";
    v28 = 2048;
    *v29 = v5;
    *&v29[8] = 1024;
    LODWORD(v30[0]) = v6;
    WORD2(v30[0]) = 2048;
    *(v30 + 6) = v11;
    v8 = MEMORY[0x277D86220];
    v9 = "%s: bad opaque: opaque=%p, opaque->sockfd=%d, name-len=%lu\n";
    v10 = 38;
LABEL_17:
    _os_log_impl(&dword_254882000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, v10);
    goto LABEL_18;
  }

  v6 = *v5;
  if ((*v5 & 0x80000000) != 0 || !*(v5 + 4))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v11 = strlen((v5 + 4));
    goto LABEL_16;
  }

  if (CFStringGetLength(v4) <= 79)
  {
    v7 = 0;
    while (!CFEqual(v4, _isValidProperty_DEPRECATED_validProperties_DEPRECATED[v7]))
    {
      if (++v7 == 62)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        *buf = 136315394;
        v27 = "Apple80211SetProperty";
        v28 = 2112;
        *v29 = v4;
        v8 = MEMORY[0x277D86220];
        v9 = "%s: Key: %@ is not a valid property\n";
        v10 = 22;
        goto LABEL_17;
      }
    }

    v14 = *MEMORY[0x277CBECE8];
    v15 = CFDictionaryCreate(*MEMORY[0x277CBECE8], &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v15)
    {
      v13 = 3758097085;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v27 = "Apple80211SetProperty";
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: could not build wrapper dictionary\n", buf, 0xCu);
      }

      v12 = 0;
      goto LABEL_28;
    }

    v12 = v15;
    v16 = CFPropertyListCreateData(v14, v15, kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (v16)
    {
      v17 = v16;
      v18 = CFDataGetLength(v16) + 1;
      v32 = v18;
      if (v18 > 0x1000)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v27 = "Apple80211SetProperty";
          v28 = 2048;
          *v29 = v18;
          *&v29[8] = 1024;
          LODWORD(v30[0]) = 4096;
          WORD2(v30[0]) = 2112;
          *(v30 + 6) = values;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: serialized property dictionary too long (%lu => %i). Consider changing APPLE80211_MAX_PROPERTY_SERIAL_LEN: %@\n", buf, 0x26u);
        }

        v13 = 4294963396;
      }

      else
      {
        v38.length = CFDataGetLength(v17);
        v38.location = 0;
        CFDataGetBytes(v17, v38, v33);
        v33[v32 - 1] = 0;
        v34 = 0u;
        v35 = 0u;
        v36 = 0;
        LODWORD(v35) = 383;
        __strlcpy_chk();
        DWORD2(v35) = 4104;
        v36 = &v31;
        v13 = Apple80211RawSet();
        if (v13)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v19 = keys;
            v20 = *__error();
            *buf = 136315906;
            v27 = "Apple80211SetProperty";
            v28 = 2112;
            *v29 = v19;
            *&v29[8] = 1024;
            LODWORD(v30[0]) = v13;
            WORD2(v30[0]) = 1024;
            *(v30 + 6) = v20;
            _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: failed to set %@: bsdErr=%d, errno=%d\n", buf, 0x22u);
          }

          v13 = *__error();
        }
      }

      CFRelease(v17);
      goto LABEL_28;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v27 = "Apple80211SetProperty";
      v28 = 2112;
      *v29 = error;
      *&v29[8] = 2112;
      v30[0] = v12;
      _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: cannot serialize: error: %@ property- %@\n", buf, 0x20u);
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v27 = "Apple80211SetProperty";
    v28 = 1024;
    *v29 = CFStringGetLength(v4);
    *&v29[4] = 1024;
    *&v29[6] = 80;
    v8 = MEMORY[0x277D86220];
    v9 = "%s: C-string in key is too long (%u >= %u)\n";
    v10 = 24;
    goto LABEL_17;
  }

LABEL_18:
  v12 = 0;
LABEL_19:
  v13 = 4294963396;
LABEL_28:
  if (error)
  {
    CFRelease(error);
    error = 0;
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_32:
  v21 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t Apple80211RawSet()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v57 = *MEMORY[0x277D85DE8];
  if (*(v1 + 24) < 0x3C01u)
  {
    v4 = *MEMORY[0x277D85DE8];

    return Apple80211IOCTLSetWrapper();
  }

  if (!*(v0 + 109))
  {
    v7 = *(v1 + 16);
    if (!*(v0 + 1817))
    {
      memset(v35, 0, 32);
      v11 = v0 + 4;
      __strlcpy_chk();
      v12 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      ioctl(*v3, 0xC0206911uLL, v35);
      v13 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v12;
      if (v13 > 0x3B9AC9FF && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136448258;
        v47 = "_logTimeIfThresholdExceeded";
        v48 = 2082;
        *v49 = v35;
        *&v49[8] = 2080;
        *&v49[10] = " 'SIOCGIFFLAGS' ";
        *&v49[18] = 1024;
        *&v49[20] = -1071617775;
        v50 = 1024;
        *v51 = -1071617775;
        *&v51[4] = 2048;
        *&v51[6] = v13 / 0x3B9ACA00;
        v52 = 2048;
        *v53 = v13 % 0x3B9ACA00 / 0x3E8;
        *&v53[8] = 2048;
        *&v53[10] = 1;
        *&v53[18] = 2048;
        v54 = 0;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s: ['%{public}s']%s: ioctl[0x%08x/%u] [%llu.%06llu] Exceeded threshold >= [%llu.%06llu]\n", buf, 0x54u);
      }

      __strlcpy_chk();
      if (*(v3 + 2008))
      {
        v14 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          if (v7 > 584)
          {
            v15 = "Error Invalid ioctl";
          }

          else if (v7 == -1)
          {
            v15 = "APPLE80211_IOC_CARD_SPECIFIC";
          }

          else if (v7 < 0 || (v15 = gAppleIoucIndexToString[v7]) == 0)
          {
            v15 = "unknown Apple80211_IOC_";
          }

          v24 = *(v2 + 24);
          *buf = 136448258;
          v47 = "_Apple80211LargeIOCTLSetWrapper";
          v48 = 1024;
          *v49 = 604;
          *&v49[4] = 2048;
          *&v49[6] = v14 / 0x3B9ACA00;
          *&v49[14] = 2048;
          *&v49[16] = v14 % 0x3B9ACA00 / 0x3E8;
          v50 = 2082;
          *v51 = v3 + 4;
          *&v51[8] = 1024;
          *&v51[10] = v7;
          v52 = 1024;
          *v53 = *&v35[16];
          *&v53[4] = 2082;
          *&v53[6] = v15;
          *&v53[14] = 1024;
          *&v53[16] = v24;
          _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s:%u  @[%llu.%06llu] ifname['%{public}s']/0x%08x IOCTL type %d/'%{public}s', len[%d]\n", buf, 0x4Cu);
        }
      }

      v21 = ioctl(*v3, 0x802869C8uLL, v2);
      if (!v21)
      {
        goto LABEL_68;
      }

      v25 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_68;
      }

      if (v7 > 584)
      {
        v26 = "Error Invalid ioctl";
      }

      else if (v7 == -1)
      {
        v26 = "APPLE80211_IOC_CARD_SPECIFIC";
      }

      else if (v7 < 0 || (v26 = gAppleIoucIndexToString[v7]) == 0)
      {
        v26 = "unknown Apple80211_IOC_";
      }

      v27 = *(v2 + 24);
      *buf = 136448514;
      v47 = "_Apple80211LargeIOCTLSetWrapper";
      v48 = 1024;
      *v49 = 610;
      *&v49[4] = 2048;
      *&v49[6] = v25 / 0x3B9ACA00;
      *&v49[14] = 2048;
      *&v49[16] = v25 % 0x3B9ACA00 / 0x3E8;
      v50 = 2082;
      *v51 = v11;
      *&v51[8] = 1024;
      *&v51[10] = *&v35[16];
      v52 = 1024;
      *v53 = v7;
      *&v53[4] = 2082;
      *&v53[6] = v26;
      *&v53[14] = 1024;
      *&v53[16] = v27;
      LOWORD(v54) = 1024;
      *(&v54 + 2) = v21;
      v28 = MEMORY[0x277D86220];
      v29 = "%{public}s:%u @[%llu.%06llu] ifname['%{public}s']/0x%08x IOCTL type %d/'%{public}s', len[%d] return %d\n";
      v30 = buf;
      v31 = 82;
LABEL_67:
      _os_log_impl(&dword_254882000, v28, OS_LOG_TYPE_DEFAULT, v29, v30, v31);
      goto LABEL_68;
    }

    bzero(buf, 0x3C030uLL);
    *buf = -2144835128;
    v8 = v3 + 4;
    __strlcpy_chk();
    v55 = v7;
    if (*(v3 + 2008))
    {
      v9 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        if (v7 > 584)
        {
          v10 = "Error Invalid ioctl";
        }

        else if (v7 == -1)
        {
          v10 = "APPLE80211_IOC_CARD_SPECIFIC";
        }

        else if (v7 < 0 || (v10 = gAppleIoucIndexToString[v7]) == 0)
        {
          v10 = "unknown Apple80211_IOC_";
        }

        v16 = *(v2 + 24);
        *v35 = 136448002;
        *&v35[4] = "_Apple80211LargeIOCTLSetWrapper";
        *&v35[12] = 1024;
        *&v35[14] = 554;
        *&v35[18] = 2048;
        *&v35[20] = v9 / 0x3B9ACA00;
        *&v35[28] = 2048;
        *&v35[30] = v9 % 0x3B9ACA00 / 0x3E8;
        v36 = 2082;
        v37 = v3 + 4;
        v38 = 1024;
        v39 = v7;
        v40 = 2082;
        v41 = v10;
        v42 = 1024;
        v43 = v16;
        _os_log_impl(&dword_254882000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s:%u  @[%llu.%06llu] ifname['%{public}s'] IOUC type %d/'%{public}s', len[%d]\n", v35, 0x46u);
      }
    }

    if (*(v2 + 20))
    {
      v56 = *(v2 + 20);
    }

    v17 = *(v2 + 24);
    if (v17 > 0x3C000)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 136315394;
        *&v35[4] = "_Apple80211LargeIOCTLSetWrapper";
        *&v35[12] = 1024;
        *&v35[14] = v17;
        v18 = MEMORY[0x277D86220];
        v19 = "%s: req_len %d exceeds max input buffer length\n";
LABEL_42:
        _os_log_impl(&dword_254882000, v18, OS_LOG_TYPE_DEFAULT, v19, v35, 0x12u);
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    v20 = *(v2 + 32);
    if (v17)
    {
      if (v20)
      {
        LODWORD(v47) = *(v2 + 24);
        __memcpy_chk();
        goto LABEL_45;
      }
    }

    else if (!v20)
    {
      v17 = 0;
LABEL_45:
      outputStructCnt = v17;
      v21 = IOConnectCallStructMethod(*(v3 + 1820), 6u, buf, 0x3C030uLL, v20, &outputStructCnt);
      if (!v21)
      {
        goto LABEL_68;
      }

      *__error() = v21;
      v22 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_68;
      }

      if (v7 > 584)
      {
        v23 = "Error Invalid ioctl";
      }

      else if (v7 == -1)
      {
        v23 = "APPLE80211_IOC_CARD_SPECIFIC";
      }

      else if (v7 < 0 || (v23 = gAppleIoucIndexToString[v7]) == 0)
      {
        v23 = "unknown Apple80211_IOC_";
      }

      v32 = *(v2 + 24);
      *v35 = 136448258;
      *&v35[4] = "_Apple80211LargeIOCTLSetWrapper";
      *&v35[12] = 1024;
      *&v35[14] = 583;
      *&v35[18] = 2048;
      *&v35[20] = v22 / 0x3B9ACA00;
      *&v35[28] = 2048;
      *&v35[30] = v22 % 0x3B9ACA00 / 0x3E8;
      v36 = 2082;
      v37 = v8;
      v38 = 1024;
      v39 = v7;
      v40 = 2082;
      v41 = v23;
      v42 = 1024;
      v43 = v32;
      v44 = 1024;
      v45 = v21;
      v28 = MEMORY[0x277D86220];
      v29 = "%{public}s:%u @[%llu.%06llu] ifname['%{public}s'] IOUC type %d/'%{public}s', len[%d] return %d\n";
      v30 = v35;
      v31 = 76;
      goto LABEL_67;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 136315394;
      *&v35[4] = "_Apple80211LargeIOCTLSetWrapper";
      *&v35[12] = 1024;
      *&v35[14] = v17;
      v18 = MEMORY[0x277D86220];
      v19 = "%s: Invalid data or length in req: len %d\n";
      goto LABEL_42;
    }

LABEL_43:
    v21 = 22;
LABEL_68:
    v33 = *MEMORY[0x277D85DE8];
    return v21;
  }

  v6 = *MEMORY[0x277D85DE8];

  return _Apple80211AWDLCompatibilityCall();
}

uint64_t Apple80211ParseAppleDeviceIE(unsigned __int8 *a1, int a2, __CFDictionary *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_15;
  }

  if (a2 < 2)
  {
LABEL_14:
    v3 = 0;
    goto LABEL_15;
  }

  v5 = a1;
  while (1)
  {
    v6 = v5[1];
    v7 = a2 >= (v6 + 2);
    a2 -= v6 + 2;
    if (!v7)
    {
      goto LABEL_14;
    }

    if (v6 >= 4 && *v5 == 221 && Apple80211ParseAppleDeviceIE_signature == *(v5 + 2))
    {
      break;
    }

    v8 = &v5[v6 + 2];
    if (a2 > 0)
    {
      v5 = v8;
    }

    if (a2 <= 1)
    {
      goto LABEL_14;
    }
  }

  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v3 = 4294963395;
    goto LABEL_15;
  }

  v13 = Mutable;
  v14 = v5[1] - 4;
  if ((v5[1] - 4) < 2u)
  {
LABEL_110:
    CFDictionarySetValue(a3, @"APPLE_DEVICE_IE", v13);
    v3 = 0;
    goto LABEL_111;
  }

  v15 = v5 + 6;
  v16 = *MEMORY[0x277CBED28];
  while (1)
  {
    v17 = v15[1];
    v18 = v14 - 2;
    if (v17 > (v14 - 2))
    {
LABEL_112:
      v3 = 4294963394;
      goto LABEL_111;
    }

    v19 = v15 + 2;
    v20 = *v15;
    if (v20 > 3)
    {
      break;
    }

    if (*v15 <= 1u)
    {
      if (*v15)
      {
        if (!v15[1])
        {
          goto LABEL_112;
        }

        v21 = CFStringCreateWithBytes(v11, v15 + 2, v15[1], 0x8000100u, 0);
        if (!v21)
        {
          goto LABEL_113;
        }

        v22 = v21;
        v23 = v13;
        v24 = @"APPLE_DEVICE_IE_FRIENDLY_NAME";
        goto LABEL_84;
      }

      if (!v15[1])
      {
        goto LABEL_112;
      }

      v30 = CFDataCreate(v11, v15 + 2, v15[1]);
      if (!v30)
      {
        goto LABEL_113;
      }

      v31 = v30;
      CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_FLAGS", v30);
      CFRelease(v31);
      v32 = *v19;
      if (v32 < 0)
      {
        CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_AIRPLAY", v16);
        LOBYTE(v32) = *v19;
        if ((*v19 & 0x40) == 0)
        {
LABEL_48:
          if ((v32 & 0x20) != 0)
          {
            CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_MFI_CONFIG_V1", v16);
            LOBYTE(v32) = *v19;
            if ((*v19 & 0x10) == 0)
            {
LABEL_50:
              if ((v32 & 8) == 0)
              {
                goto LABEL_51;
              }

              goto LABEL_89;
            }
          }

          else if ((v32 & 0x10) == 0)
          {
            goto LABEL_50;
          }

          CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_WOW", v16);
          LOBYTE(v32) = *v19;
          if ((*v19 & 8) == 0)
          {
LABEL_51:
            if ((v32 & 4) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_90;
          }

LABEL_89:
          CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_INTERFERENCE_ROBUSTNESS", v16);
          LOBYTE(v32) = *v19;
          if ((*v19 & 4) == 0)
          {
LABEL_52:
            if ((v32 & 2) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_91;
          }

LABEL_90:
          CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_REMOTE_PPPOE_SERVER", v16);
          LOBYTE(v32) = *v19;
          if ((*v19 & 2) == 0)
          {
LABEL_53:
            if ((v32 & 1) == 0)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          }

LABEL_91:
          CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_WPS", v16);
          if ((*v19 & 1) == 0)
          {
LABEL_55:
            if (v17 == 1)
            {
              goto LABEL_85;
            }

            v33 = v15[3];
            if (v33 < 0)
            {
              CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_AIRPRINT", v16);
              LOBYTE(v33) = v15[3];
              if ((v33 & 0x40) == 0)
              {
LABEL_59:
                if ((v33 & 0x20) != 0)
                {
                  CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_CARPLAY", v16);
                  LOBYTE(v33) = v15[3];
                  if ((v33 & 0x10) == 0)
                  {
LABEL_61:
                    if ((v33 & 8) == 0)
                    {
                      goto LABEL_62;
                    }

                    goto LABEL_97;
                  }
                }

                else if ((v33 & 0x10) == 0)
                {
                  goto LABEL_61;
                }

                CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_PROVIDES_INTERNET_ACCESS", v16);
                LOBYTE(v33) = v15[3];
                if ((v33 & 8) == 0)
                {
LABEL_62:
                  if ((v33 & 4) == 0)
                  {
                    goto LABEL_63;
                  }

                  goto LABEL_98;
                }

LABEL_97:
                CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_ACP_CONFIG_V1", v16);
                LOBYTE(v33) = v15[3];
                if ((v33 & 4) == 0)
                {
LABEL_63:
                  if ((v33 & 2) == 0)
                  {
                    goto LABEL_64;
                  }

                  goto LABEL_99;
                }

LABEL_98:
                CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_RECENT_PHYSICAL_CONTACT", v16);
                LOBYTE(v33) = v15[3];
                if ((v33 & 2) == 0)
                {
LABEL_64:
                  if ((v33 & 1) == 0)
                  {
                    goto LABEL_66;
                  }

                  goto LABEL_65;
                }

LABEL_99:
                CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_24GHZ_WIFI_NETWORKS", v16);
                if ((v15[3] & 1) == 0)
                {
LABEL_66:
                  if (v17 < 3)
                  {
                    goto LABEL_85;
                  }

                  v34 = v15[4];
                  if ((v34 & 0x40) != 0)
                  {
                    CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_HOMEKIT", v16);
                    v34 = v15[4];
                    if ((v34 & 0x20) == 0)
                    {
LABEL_69:
                      if ((v34 & 0x10) == 0)
                      {
                        goto LABEL_70;
                      }

                      goto LABEL_105;
                    }
                  }

                  else if ((v15[4] & 0x20) == 0)
                  {
                    goto LABEL_69;
                  }

                  CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_HOMEKIT_V2", v16);
                  v34 = v15[4];
                  if ((v34 & 0x10) == 0)
                  {
LABEL_70:
                    if ((v34 & 8) == 0)
                    {
                      goto LABEL_71;
                    }

                    goto LABEL_106;
                  }

LABEL_105:
                  CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_BUFFERED_AIRPLAY", v16);
                  v34 = v15[4];
                  if ((v34 & 8) == 0)
                  {
LABEL_71:
                    if ((v34 & 4) == 0)
                    {
                      goto LABEL_72;
                    }

                    goto LABEL_107;
                  }

LABEL_106:
                  CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_SECURE_WAC", v16);
                  v34 = v15[4];
                  if ((v34 & 4) == 0)
                  {
LABEL_72:
                    if ((v34 & 2) == 0)
                    {
                      goto LABEL_73;
                    }

LABEL_108:
                    CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_SOFTWARE_TOKEN_AUTH", v16);
                    if (v15[4])
                    {
LABEL_109:
                      CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_SOFTWARE_CERT_AUTH", v16);
                      goto LABEL_85;
                    }

                    goto LABEL_85;
                  }

LABEL_107:
                  CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_MFI_HARDWARE_AUTH", v16);
                  v34 = v15[4];
                  if ((v34 & 2) == 0)
                  {
LABEL_73:
                    if (v34)
                    {
                      goto LABEL_109;
                    }

                    goto LABEL_85;
                  }

                  goto LABEL_108;
                }

LABEL_65:
                CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_5GHZ_WIFI_NETWORKS", v16);
                goto LABEL_66;
              }
            }

            else if ((v33 & 0x40) == 0)
            {
              goto LABEL_59;
            }

            CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_IAP_OVER_WIFI", v16);
            LOBYTE(v33) = v15[3];
            goto LABEL_59;
          }

LABEL_54:
          CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_WPS_ACTIVE", v16);
          goto LABEL_55;
        }
      }

      else if ((v32 & 0x40) == 0)
      {
        goto LABEL_48;
      }

      CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_FEATURE_UNCONFIGURED", v16);
      LOBYTE(v32) = *v19;
      goto LABEL_48;
    }

    if (v20 == 2)
    {
      if (!v15[1])
      {
        goto LABEL_112;
      }

      v36 = CFStringCreateWithBytes(v11, v15 + 2, v15[1], 0x8000100u, 0);
      if (!v36)
      {
        goto LABEL_113;
      }

      v22 = v36;
      v23 = v13;
      v24 = @"APPLE_DEVICE_IE_MANUFACTURER_NAME";
      goto LABEL_84;
    }

    if (v20 == 3)
    {
      if (!v15[1])
      {
        goto LABEL_112;
      }

      v28 = CFStringCreateWithBytes(v11, v15 + 2, v15[1], 0x8000100u, 0);
      if (!v28)
      {
        goto LABEL_113;
      }

      v22 = v28;
      v23 = v13;
      v24 = @"APPLE_DEVICE_IE_MODEL_NAME";
      goto LABEL_84;
    }

LABEL_85:
    v15 = &v19[v17];
    v14 = v18 - v17;
    if ((v18 - v17) <= 1u)
    {
      goto LABEL_110;
    }
  }

  if (*v15 <= 5u)
  {
    if (v20 == 4)
    {
      if (v17 < 3)
      {
        goto LABEL_112;
      }

      v35 = CFDataCreate(v11, v15 + 2, 3);
      if (!v35)
      {
        goto LABEL_113;
      }

      v22 = v35;
      v23 = v13;
      v24 = @"APPLE_DEVICE_IE_OUI";
      goto LABEL_84;
    }

    if (v20 == 5)
    {
      if (v17 < 2)
      {
        goto LABEL_112;
      }

      valuePtr = *v19;
      v25 = CFNumberCreate(v11, kCFNumberSInt8Type, &valuePtr);
      if (!v25)
      {
        goto LABEL_113;
      }

      v26 = v25;
      CFDictionarySetValue(v13, @"APPLE_DEVICE_IE_DWDS_ROLE", v25);
      CFRelease(v26);
      v38 = v15[3];
      v27 = CFNumberCreate(v11, kCFNumberSInt8Type, &v38);
      if (!v27)
      {
        goto LABEL_113;
      }

      v22 = v27;
      v23 = v13;
      v24 = @"APPLE_DEVICE_IE_DWDS_FLAGS";
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  if (v20 != 6)
  {
    if (v20 == 7)
    {
      if (v17 < 6)
      {
        goto LABEL_112;
      }

      v29 = CFDataCreate(v11, v15 + 2, 6);
      if (!v29)
      {
        goto LABEL_113;
      }

      v22 = v29;
      v23 = v13;
      v24 = @"APPLE_DEVICE_IE_DEVICE_ID";
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  if (v17 < 6)
  {
    goto LABEL_112;
  }

  v37 = CFDataCreate(v11, v15 + 2, 6);
  if (v37)
  {
    v22 = v37;
    v23 = v13;
    v24 = @"APPLE_DEVICE_IE_BLUETOOTH_MAC";
LABEL_84:
    CFDictionarySetValue(v23, v24, v22);
    CFRelease(v22);
    goto LABEL_85;
  }

LABEL_113:
  v3 = 4294963395;
LABEL_111:
  CFRelease(v13);
LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t Apple80211Parse80211dIE(uint64_t a1, signed int a2, __CFDictionary *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (a1 && a3)
  {
    if (a2 < 2)
    {
LABEL_14:
      v3 = 0;
    }

    else
    {
      v5 = a1;
      while (1)
      {
        v6 = *(v5 + 1);
        v7 = *v5 == 7 && v6 >= 6;
        if (v7 && (v6 + 2) <= a2)
        {
          break;
        }

        a2 = a2 - v6 - 2;
        if (a2 >= 1)
        {
          v9 = v5 + *(v5 + 1);
          v5 = v9 + 2;
          if (*(v9 + 3) + 2 <= a2)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      memset(v20, 0, sizeof(v20));
      *cStr = *(v5 + 2);
      if (v6 - 6 > 0xFFFFFFFC)
      {
        v11 = 0;
      }

      else
      {
        if ((v6 - 6) / 3 >= 0x53)
        {
          v10 = 83;
        }

        else
        {
          v10 = (v6 - 6) / 3;
        }

        memcpy(&v20[2], (v5 + 5), 3 * v10 + 3);
        v11 = v10 + 1;
      }

      v20[1] = v11;
      v12 = *MEMORY[0x277CBECE8];
      v13 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
      if (v13)
      {
        v14 = v13;
        Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v16 = Mutable;
          CFDictionarySetValue(Mutable, @"IE_KEY_80211D_COUNTRY_CODE", v14);
          CFDictionarySetValue(a3, @"80211D_IE", v16);
          CFRelease(v14);
          v3 = 0;
          v14 = v16;
        }

        else
        {
          v3 = 4294963395;
        }

        CFRelease(v14);
      }

      else
      {
        v3 = 4294963395;
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t Apple80211ParseSES_IE(unsigned __int8 *a1, signed int a2, __CFDictionary *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (a1 && a3)
  {
    if (a2 < 2)
    {
LABEL_19:
      v3 = 0;
    }

    else
    {
      v5 = a1;
      while (1)
      {
        v6 = v5[1];
        v7 = *v5 == 221 && v6 >= 7;
        if (v7 && (v6 + 2) <= a2 && *(v5 + 2) == 21794816 && v5[6] == 1)
        {
          break;
        }

        a2 = a2 - v6 - 2;
        if (a2 >= 1)
        {
          v10 = &v5[v5[1]];
          v5 = v10 + 2;
          if (v10[3] + 2 <= a2)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v13 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v15 = Mutable;
        valuePtr = v5[9];
        v16 = CFNumberCreate(v13, kCFNumberSInt32Type, &valuePtr);
        if (v16)
        {
          v17 = v16;
          CFDictionarySetValue(v15, @"IE_KEY_SES_VERSION", v16);
          CFRelease(v17);
          if (v5[9] == 16)
          {
            v18 = *MEMORY[0x277CBED28];
            v19 = *MEMORY[0x277CBED10];
            if (v5[10])
            {
              v20 = *MEMORY[0x277CBED28];
            }

            else
            {
              v20 = *MEMORY[0x277CBED10];
            }

            CFDictionarySetValue(v15, @"IE_KEY_SES_RWO", v20);
            if ((v5[10] & 2) != 0)
            {
              v21 = v18;
            }

            else
            {
              v21 = v19;
            }

            CFDictionarySetValue(v15, @"IE_KEY_SES_WDS_RWO", v21);
          }

          CFDictionarySetValue(a3, @"SES_IE", v15);
          v3 = 0;
        }

        else
        {
          v3 = 4294963395;
        }

        CFRelease(v15);
      }

      else
      {
        v3 = 4294963395;
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t Apple80211ParseHT_Caps(uint64_t a1, int a2, __CFDictionary *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (!a1 || !a3)
  {
    goto LABEL_15;
  }

  if (a2 < 3)
  {
LABEL_14:
    v3 = 0;
    goto LABEL_15;
  }

  v5 = a1;
  while (*v5 != 45)
  {
    v7 = *(v5 + 1);
    v6 = a2 - 2;
LABEL_13:
    a2 = v6 - v7;
    v5 += v7 + 2;
    if ((v6 - v7) <= 2)
    {
      goto LABEL_14;
    }
  }

  v6 = a2 - 2;
  v7 = *(v5 + 1);
  if (v7 < 0x1A || v6 < v7)
  {
    goto LABEL_13;
  }

  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v13 = Mutable;
    v26 = -1431655766;
    valuePtr = *(v5 + 2);
    v14 = CFNumberCreate(v11, kCFNumberSInt16Type, &valuePtr);
    if (!v14)
    {
      goto LABEL_25;
    }

    v15 = v14;
    CFDictionarySetValue(v13, @"CAPS", v14);
    CFRelease(v15);
    v16 = CFNumberCreate(v11, kCFNumberSInt8Type, (v5 + 4));
    if (!v16)
    {
      goto LABEL_25;
    }

    v17 = v16;
    CFDictionarySetValue(v13, @"AMPDU_PARAMS", v16);
    CFRelease(v17);
    v18 = CFDataCreate(v11, (v5 + 5), 16);
    if (!v18)
    {
      goto LABEL_25;
    }

    v19 = v18;
    CFDictionarySetValue(v13, @"MCS_SET", v18);
    CFRelease(v19);
    valuePtr = *(v5 + 21);
    v20 = CFNumberCreate(v11, kCFNumberSInt16Type, &valuePtr);
    if (!v20)
    {
      goto LABEL_25;
    }

    v21 = v20;
    CFDictionarySetValue(v13, @"EXT_CAPS", v20);
    CFRelease(v21);
    v26 = *(v5 + 23);
    v22 = CFNumberCreate(v11, kCFNumberSInt32Type, &v26);
    if (!v22)
    {
      goto LABEL_25;
    }

    v23 = v22;
    CFDictionarySetValue(v13, @"TXBF_CAPS", v22);
    CFRelease(v23);
    v24 = CFNumberCreate(v11, kCFNumberSInt8Type, (v5 + 27));
    if (v24)
    {
      v25 = v24;
      CFDictionarySetValue(v13, @"ASEL_CAPS", v24);
      CFRelease(v25);
      CFDictionarySetValue(a3, @"HT_CAPS_IE", v13);
      v3 = 0;
    }

    else
    {
LABEL_25:
      v3 = 4294963395;
    }

    CFRelease(v13);
  }

  else
  {
    v3 = 4294963395;
  }

LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t Apple80211ParseHT_IE(uint64_t a1, int a2, __CFDictionary *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (!a1 || !a3)
  {
    goto LABEL_15;
  }

  if (a2 < 3)
  {
LABEL_14:
    v3 = 0;
    goto LABEL_15;
  }

  v5 = a1;
  while (*v5 != 61)
  {
    v7 = *(v5 + 1);
    v6 = a2 - 2;
LABEL_13:
    a2 = v6 - v7;
    v5 += v7 + 2;
    if ((v6 - v7) <= 2)
    {
      goto LABEL_14;
    }
  }

  v6 = a2 - 2;
  v7 = *(v5 + 1);
  if (v7 < 0x16 || v6 < v7)
  {
    goto LABEL_13;
  }

  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v13 = Mutable;
    v39 = -86;
    valuePtr = *(v5 + 2);
    v14 = CFNumberCreate(v11, kCFNumberSInt16Type, &valuePtr);
    if (!v14)
    {
      goto LABEL_60;
    }

    v15 = v14;
    CFDictionarySetValue(v13, @"HT_PRIMARY_CHAN", v14);
    CFRelease(v15);
    v39 = *(v5 + 3) & 3;
    v16 = CFNumberCreate(v11, kCFNumberSInt8Type, &v39);
    if (!v16)
    {
      goto LABEL_60;
    }

    v17 = v16;
    CFDictionarySetValue(v13, @"HT_SECONDARY_CHAN_OFFSET", v16);
    CFRelease(v17);
    v18 = *MEMORY[0x277CBED28];
    v19 = *MEMORY[0x277CBED10];
    v20 = ((*(v5 + 3) & 4) != 0 ? *MEMORY[0x277CBED28] : *MEMORY[0x277CBED10]);
    CFDictionarySetValue(v13, @"HT_STA_CHAN_WIDTH", v20);
    v21 = ((*(v5 + 3) & 8) != 0 ? v18 : v19);
    CFDictionarySetValue(v13, @"HT_RIFS_MODE", v21);
    v22 = ((*(v5 + 3) & 0x10) != 0 ? v18 : v19);
    CFDictionarySetValue(v13, @"HT_PSMP_STAS_ONLY", v22);
    v39 = *(v5 + 3) >> 5;
    v23 = CFNumberCreate(v11, kCFNumberSInt8Type, &v39);
    if (!v23)
    {
      goto LABEL_60;
    }

    v24 = v23;
    CFDictionarySetValue(v13, @"HT_SERVICE_INT", v23);
    CFRelease(v24);
    v39 = *(v5 + 4) & 3;
    v25 = CFNumberCreate(v11, kCFNumberSInt8Type, &v39);
    if (!v25)
    {
      goto LABEL_60;
    }

    v26 = v25;
    CFDictionarySetValue(v13, @"HT_OP_MODE", v25);
    CFRelease(v26);
    v27 = ((*(v5 + 4) & 4) != 0 ? v18 : v19);
    CFDictionarySetValue(v13, @"HT_NON_GF_STAS_PRESENT", v27);
    v28 = ((*(v5 + 4) & 8) != 0 ? v18 : v19);
    CFDictionarySetValue(v13, @"HT_TX_BURST_LIMIT", v28);
    v29 = ((*(v5 + 4) & 0x10) != 0 ? v18 : v19);
    CFDictionarySetValue(v13, @"HT_OBSS_NON_HT_STAS_PRESENT", v29);
    v30 = ((*(v5 + 6) & 0x40) != 0 ? v18 : v19);
    CFDictionarySetValue(v13, @"HT_DUAL_BEACON", v30);
    v31 = (*(v5 + 6) >= 0 ? v19 : v18);
    CFDictionarySetValue(v13, @"HT_DUAL_CTS_PROT", v31);
    v32 = ((*(v5 + 7) & 1) != 0 ? v18 : v19);
    CFDictionarySetValue(v13, @"HT_SECONDARY_BEACON", v32);
    v33 = ((*(v5 + 7) & 2) != 0 ? v18 : v19);
    CFDictionarySetValue(v13, @"HT_LSIG_TXOP_PROT_FULL", v33);
    v34 = ((*(v5 + 7) & 4) != 0 ? v18 : v19);
    CFDictionarySetValue(v13, @"HT_PCO_ACTIVE", v34);
    v35 = ((*(v5 + 7) & 8) != 0 ? v18 : v19);
    CFDictionarySetValue(v13, @"HT_PCO_PHASE", v35);
    v36 = CFDataCreate(v11, (v5 + 8), 16);
    if (v36)
    {
      v37 = v36;
      CFDictionarySetValue(v13, @"HT_BASIC_MCS_SET", v36);
      CFRelease(v37);
      CFDictionarySetValue(a3, @"HT_IE", v13);
      v3 = 0;
    }

    else
    {
LABEL_60:
      v3 = 4294963395;
    }

    CFRelease(v13);
  }

  else
  {
    v3 = 4294963395;
  }

LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t Apple80211ParseVHT_Caps(unsigned __int8 *a1, int a2, __CFDictionary *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (!a1 || !a3)
  {
    goto LABEL_15;
  }

  if (a2 < 3)
  {
LABEL_14:
    v3 = 0;
    goto LABEL_15;
  }

  v5 = a1;
  while (*v5 != 191)
  {
    v7 = v5[1];
    v6 = a2 - 2;
LABEL_13:
    a2 = v6 - v7;
    v5 += v7 + 2;
    if ((v6 - v7) <= 2)
    {
      goto LABEL_14;
    }
  }

  v6 = a2 - 2;
  v7 = v5[1];
  if (v7 < 0xC || v6 < v7)
  {
    goto LABEL_13;
  }

  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v13 = Mutable;
    valuePtr = *(v5 + 2);
    v14 = CFNumberCreate(v11, kCFNumberSInt32Type, &valuePtr);
    if (v14 && (v15 = v14, CFDictionarySetValue(v13, @"VHT_CAPS", v14), CFRelease(v15), (v16 = CFDataCreate(v11, v5 + 6, 8)) != 0))
    {
      v17 = v16;
      CFDictionarySetValue(v13, @"VHT_SUPPORTED_MCS_SET", v16);
      CFRelease(v17);
      CFDictionarySetValue(a3, @"VHT_CAPS_IE", v13);
      v3 = 0;
    }

    else
    {
      v3 = 4294963395;
    }

    CFRelease(v13);
  }

  else
  {
    v3 = 4294963395;
  }

LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t Apple80211ParseVHT_IE(unsigned __int8 *a1, int a2, __CFDictionary *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (!a1 || !a3)
  {
    goto LABEL_15;
  }

  if (a2 < 3)
  {
LABEL_14:
    v3 = 0;
    goto LABEL_15;
  }

  v5 = a1;
  while (*v5 != 192)
  {
    v7 = v5[1];
    v6 = a2 - 2;
LABEL_13:
    a2 = v6 - v7;
    v5 += v7 + 2;
    if ((v6 - v7) <= 2)
    {
      goto LABEL_14;
    }
  }

  v6 = a2 - 2;
  v7 = v5[1];
  if (v7 < 5 || v6 < v7)
  {
    goto LABEL_13;
  }

  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v13 = Mutable;
    v22 = -21846;
    valuePtr = v5[2];
    v14 = CFNumberCreate(v11, kCFNumberSInt8Type, &valuePtr);
    if (!v14)
    {
      goto LABEL_23;
    }

    v15 = v14;
    CFDictionarySetValue(v13, @"VHT_CHAN_WIDTH", v14);
    CFRelease(v15);
    valuePtr = v5[3];
    v16 = CFNumberCreate(v11, kCFNumberSInt8Type, &valuePtr);
    if (!v16)
    {
      goto LABEL_23;
    }

    v17 = v16;
    CFDictionarySetValue(v13, @"VHT_CENTER_CHAN_SEGMENT0", v16);
    CFRelease(v17);
    valuePtr = v5[4];
    v18 = CFNumberCreate(v11, kCFNumberSInt8Type, &valuePtr);
    if (!v18)
    {
      goto LABEL_23;
    }

    v19 = v18;
    CFDictionarySetValue(v13, @"VHT_CENTER_CHAN_SEGMENT1", v18);
    CFRelease(v19);
    v22 = *(v5 + 5);
    v20 = CFNumberCreate(v11, kCFNumberSInt16Type, &v22);
    if (v20)
    {
      v21 = v20;
      CFDictionarySetValue(v13, @"VHT_BASIC_MCS_SET", v20);
      CFRelease(v21);
      CFDictionarySetValue(a3, @"VHT_IE", v13);
      v3 = 0;
    }

    else
    {
LABEL_23:
      v3 = 4294963395;
    }

    CFRelease(v13);
  }

  else
  {
    v3 = 4294963395;
  }

LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t Apple80211ParseInterworkingIE(_BYTE *a1, signed int a2, __CFDictionary *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (a1 && a3)
  {
    if (!a2)
    {
LABEL_35:
      v3 = 0;
      goto LABEL_36;
    }

    v5 = a1;
    while (*v5 != 107 || !v5[1])
    {
      a2 = a2 - v5[1] - 2;
      if (a2 >= 1)
      {
        v6 = &v5[v5[1]];
        v5 = v6 + 2;
        if (v6[3] + 2 <= a2)
        {
          continue;
        }
      }

      goto LABEL_35;
    }

    v7 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      v3 = 4294963395;
      goto LABEL_36;
    }

    v9 = Mutable;
    valuePtr = v5[2] & 0xF;
    v10 = CFNumberCreate(v7, kCFNumberSInt8Type, &valuePtr);
    if (!v10)
    {
      v3 = 4294963395;
      goto LABEL_40;
    }

    v11 = v10;
    CFDictionarySetValue(v9, @"INTERWORKING_ACCESS_NETWORK_TYPE", v10);
    CFRelease(v11);
    v12 = *MEMORY[0x277CBED28];
    v13 = *MEMORY[0x277CBED10];
    if ((v5[2] & 0x10) != 0)
    {
      v14 = *MEMORY[0x277CBED28];
    }

    else
    {
      v14 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v9, @"INTERWORKING_ACCESS_INTERNET", v14);
    if ((v5[2] & 0x20) != 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = v13;
    }

    CFDictionarySetValue(v9, @"INTERWORKING_ACCESS_ASRA", v15);
    if ((v5[2] & 0x40) != 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = v13;
    }

    CFDictionarySetValue(v9, @"INTERWORKING_ACCESS_ESR", v16);
    if (v5[2] >= 0)
    {
      v17 = v13;
    }

    else
    {
      v17 = v12;
    }

    CFDictionarySetValue(v9, @"INTERWORKING_ACCESS_UESA", v17);
    v18 = v5[1];
    if (v18 == 9 || v18 == 3)
    {
      v19 = CFNumberCreate(v7, kCFNumberSInt8Type, v5 + 3);
      if (!v19 || (v20 = v19, CFDictionaryAddValue(v9, @"INTERWORKING_ACCESS_VENTURE_GRP", v19), CFRelease(v20), (v21 = CFNumberCreate(v7, kCFNumberSInt8Type, v5 + 4)) == 0))
      {
LABEL_37:
        v3 = 0;
LABEL_40:
        CFRelease(v9);
        goto LABEL_36;
      }

      v22 = v21;
      CFDictionaryAddValue(v9, @"INTERWORKING_ACCESS_VENTURE_TYPE", v21);
      CFRelease(v22);
      v18 = v5[1];
      v23 = 5;
    }

    else
    {
      v23 = 3;
    }

    if (v18 != 9 && v18 != 7)
    {
      goto LABEL_34;
    }

    v24 = CFStringCreateWithFormat(v7, 0, @"%02x:%02x:%02x:%02x:%02x:%02x", v5[v23], v5[v23 + 1], v5[v23 + 2], v5[v23 + 3], v5[v23 + 4], v5[v23 + 5]);
    if (v24)
    {
      v25 = v24;
      CFDictionarySetValue(v9, @"INTERWORKING_ACCESS_HESSID", v24);
      CFRelease(v25);
LABEL_34:
      CFDictionarySetValue(a3, @"11U_INTERWORKING_IE", v9);
      CFRelease(v9);
      goto LABEL_35;
    }

    goto LABEL_37;
  }

LABEL_36:
  v26 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t Apple80211ParseHS20IE(unsigned __int8 *a1, unsigned int a2, __CFDictionary *a3)
{
  v3 = 4294963396;
  if (a1 && a3)
  {
    if (a2 >= 2)
    {
      v5 = a1;
      v6 = a2;
      v7 = *MEMORY[0x277CBECE8];
      do
      {
        v8 = v5[1];
        v9 = v6 - (v8 + 2);
        if (v6 < v8 + 2)
        {
          break;
        }

        if (v6 >= 7 && v8 >= 5 && *v5 == 221 && v5[2] == 80 && v5[3] == 111 && v5[4] == 154 && v5[5] == 16)
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (!Mutable)
          {
            return 4294963395;
          }

          v12 = Mutable;
          v13 = CFNumberCreate(v7, kCFNumberSInt8Type, v5 + 6);
          if (v13)
          {
            v14 = v13;
            CFDictionarySetValue(v12, @"HOTSPOT20_CONFIGURATION", v13);
            CFRelease(v14);
            CFDictionarySetValue(a3, @"HOTSPOT20_IE", v12);
            v3 = 0;
          }

          else
          {
            v3 = 4294963395;
          }

          CFRelease(v12);
          return v3;
        }

        v5 += v8 + 2;
        v6 -= v8 + 2;
      }

      while (v9 >= 2);
    }

    return 0;
  }

  return v3;
}

uint64_t Apple80211ParseQBSSLoadIE(_BYTE *a1, int a2, __CFDictionary *a3)
{
  v3 = 4294963396;
  if (a1 && a3)
  {
    if (!a2)
    {
      return 0;
    }

    if (a2 > 2048)
    {
      return v3;
    }

    if (a2 < 3)
    {
      return 0;
    }

    v5 = a1;
    v6 = *MEMORY[0x277CBECE8];
    while (1)
    {
      v7 = a2 - 2;
      v8 = v5[1];
      a2 = a2 - 2 - v8;
      if (v7 < v8)
      {
        return 4294963396;
      }

      if (v8 >= 5 && *v5 == 11)
      {
        break;
      }

      if (a2 > 0)
      {
        v5 += v5[1] + 2;
      }

      if (a2 <= 2)
      {
        return 0;
      }
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v11 = Mutable;
      v12 = CFNumberCreate(v6, kCFNumberSInt16Type, v5 + 2);
      if (!v12)
      {
        goto LABEL_24;
      }

      v13 = v12;
      CFDictionarySetValue(v11, @"QBSS_STA_COUNT", v12);
      CFRelease(v13);
      v14 = CFNumberCreate(v6, kCFNumberSInt8Type, v5 + 4);
      if (!v14)
      {
        goto LABEL_24;
      }

      v15 = v14;
      CFDictionarySetValue(v11, @"QBSS_CHAN_UTIL", v14);
      CFRelease(v15);
      v16 = CFNumberCreate(v6, kCFNumberSInt16Type, v5 + 5);
      if (v16)
      {
        v17 = v16;
        CFDictionarySetValue(v11, @"QBSS_AAC", v16);
        CFRelease(v17);
        CFDictionarySetValue(a3, @"QBSS_LOAD_IE", v11);
        v3 = 0;
      }

      else
      {
LABEL_24:
        v3 = 4294963395;
      }

      CFRelease(v11);
    }

    else
    {
      return 4294963395;
    }
  }

  return v3;
}

uint64_t Apple80211ParseMobilityDomainIE(uint64_t a1, int a2, __CFDictionary *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  result = 4294963396;
  if (!a1 || !a3)
  {
    goto LABEL_24;
  }

  if (!a2)
  {
    goto LABEL_23;
  }

  if (a2 > 2048)
  {
    goto LABEL_24;
  }

  if (a2 < 3)
  {
    goto LABEL_23;
  }

  while (*a1 != 54)
  {
    v7 = *(a1 + 1);
    v6 = a2 - 2;
LABEL_14:
    a2 = v6 - v7;
    a1 += v7 + 2;
    if ((v6 - v7) <= 2)
    {
      goto LABEL_23;
    }
  }

  v6 = a2 - 2;
  v7 = *(a1 + 1);
  if (v7 < 3 || v6 < v7)
  {
    goto LABEL_14;
  }

  v9 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = *(a1 + 2);
  v11 = CFNumberCreate(v9, kCFNumberSInt16Type, &valuePtr);
  CFDictionarySetValue(Mutable, @"MOBILITY_DOMAIN_IDENTIFIER", v11);
  CFRelease(v11);
  v12 = *MEMORY[0x277CBED28];
  v13 = *MEMORY[0x277CBED10];
  if (*(a1 + 4))
  {
    v14 = *MEMORY[0x277CBED28];
  }

  else
  {
    v14 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"MOBILITY_DOMAIN_FT_OVER_DS", v14);
  if ((*(a1 + 4) & 2) != 0)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  CFDictionarySetValue(Mutable, @"MOBILITY_DOMAIN_RESOURCE_REQ_PROTO", v15);
  CFDictionarySetValue(a3, @"MOBILITY_DOMAIN_IE", Mutable);
  CFRelease(Mutable);
LABEL_23:
  result = 0;
LABEL_24:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Apple80211ParseExtCapsIE(uint64_t a1, int a2, __CFDictionary *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (a1 && a3)
  {
    v5 = a2;
    if (a2)
    {
      if (a2 <= 2048)
      {
        v6 = a1;
        v3 = 0;
        v7 = 0;
        v8 = 0;
        v9 = *MEMORY[0x277CBECE8];
        while (v5 >= 3)
        {
          v10 = *(v6 + 1);
          if (v5 - 2 < v10)
          {
            v3 = 4294963396;
            goto LABEL_32;
          }

          if (v10 >= 4 && *v6 == 127)
          {
            Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (!Mutable)
            {
              v3 = 4294963395;
              goto LABEL_32;
            }

            v7 = Mutable;
            valuePtr = 1;
            v8 = CFNumberCreate(v9, kCFNumberSInt8Type, &valuePtr);
            if (v8)
            {
              if ((*(v6 + 4) & 8) != 0)
              {
                CFDictionarySetValue(v7, @"BSS_TRANS_MGMT", v8);
              }

              v12 = *(v6 + 1);
              if (v12 >= 0xB)
              {
                if ((*(v6 + 13) & 0x10) != 0)
                {
                  CFDictionarySetValue(v7, @"BEACON_PROTECTION", v8);
                  v12 = *(v6 + 1);
                }

                if (v12 >= 0xC && (*(v6 + 13) & 0x100) != 0)
                {
                  CFDictionarySetValue(v7, @"SAE_PK_PASSWD_USED", v8);
                }
              }

              if (CFDictionaryGetCount(v7))
              {
                CFDictionarySetValue(a3, @"EXT_CAPS", v7);
              }
            }

            else
            {
              v3 = 4294963395;
            }

            break;
          }

          if ((v5 - 2 - v10) > 0)
          {
            v6 += *(v6 + 1) + 2;
          }

          v5 = v5 - 2 - v10;
        }

        if (v7)
        {
          CFRelease(v7);
        }

        if (v8)
        {
          CFRelease(v8);
        }
      }
    }

    else
    {
      v3 = 0;
    }
  }

LABEL_32:
  v13 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t Apple80211ParseCyclopsIE(unsigned __int8 *a1, int a2, __CFDictionary *a3)
{
  result = 4294963396;
  if (a1 && a3)
  {
    if (!a2)
    {
      return 0;
    }

    if (a2 > 2048)
    {
      return result;
    }

    if (a2 < 3)
    {
      return 0;
    }

    v6 = *MEMORY[0x277CBED28];
    v7 = *MEMORY[0x277CBED10];
    while (1)
    {
      v8 = a2 - 2;
      v9 = a1[1];
      a2 = a2 - 2 - v9;
      if (v8 < v9)
      {
        return 4294963396;
      }

      if (v9 >= 4 && *a1 == 221)
      {
        v10 = *(a1 + 1) == 0x4000 && a1[4] == 150;
        if (v10 && a1[5] == 11)
        {
          break;
        }
      }

      if (a2 > 0)
      {
        a1 += a1[1] + 2;
      }

      if (a2 <= 2)
      {
        return 0;
      }
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v12 = Mutable;
      if ((a1[6] & 0x40) != 0)
      {
        v13 = v6;
      }

      else
      {
        v13 = v7;
      }

      CFDictionarySetValue(Mutable, @"FT_STATE", v13);
      if ((a1[6] & 0x20) != 0)
      {
        v14 = v6;
      }

      else
      {
        v14 = v7;
      }

      CFDictionarySetValue(v12, @"FASTLANE_STATE", v14);
      CFDictionarySetValue(a3, @"FAST_ENTERPRISE_NETWORK", v12);
      CFRelease(v12);
      return 0;
    }

    return 4294963395;
  }

  return result;
}

uint64_t Apple80211ParseHE_IEs(const UInt8 *a1, int a2, __CFDictionary *a3)
{
  result = 4294963396;
  if (a1 && a3)
  {
    if (a2 < 3)
    {
      return 0;
    }

    v6 = *MEMORY[0x277CBECE8];
    while (1)
    {
      v7 = a2 - 2;
      if (*a1 != 255)
      {
        goto LABEL_8;
      }

      v9 = a1[1];
      if (v7 >= v9 && a1[2] == 35)
      {
        Mutable = CFDataCreateMutable(v6, 0);
        if (!Mutable)
        {
          return 4294963395;
        }

        v11 = Mutable;
        CFDataAppendBytes(Mutable, a1, a1[1] + 2);
        CFDictionarySetValue(a3, @"HE_CAP", v11);
        CFRelease(v11);
        if (*a1 != 255)
        {
          goto LABEL_8;
        }

        v9 = a1[1];
      }

      if (v7 >= v9 && a1[2] == 36)
      {
        v12 = CFDataCreateMutable(v6, 0);
        if (!v12)
        {
          return 4294963395;
        }

        v13 = v12;
        CFDataAppendBytes(v12, a1, a1[1] + 2);
        CFDictionarySetValue(a3, @"HE_OP", v13);
        CFRelease(v13);
        if (*a1 != 255)
        {
          goto LABEL_8;
        }

        v9 = a1[1];
      }

      if (v7 >= v9 && a1[2] == 38)
      {
        v14 = CFDataCreateMutable(v6, 0);
        if (!v14)
        {
          return 4294963395;
        }

        v15 = v14;
        CFDataAppendBytes(v14, a1, a1[1] + 2);
        CFDictionarySetValue(a3, @"HE_MU_EDCA", v15);
        CFRelease(v15);
        if (*a1 != 255)
        {
          goto LABEL_8;
        }

        v9 = a1[1];
      }

      if (v7 >= v9 && a1[2] == 47)
      {
        v16 = CFDataCreateMutable(v6, 0);
        if (!v16)
        {
          return 4294963395;
        }

        v17 = v16;
        CFDataAppendBytes(v16, a1, a1[1] + 2);
        CFDictionarySetValue(a3, @"HE_QBSS_LOAD", v17);
        CFRelease(v17);
      }

LABEL_8:
      v8 = a1[1];
      a2 = v7 - v8;
      a1 += v8 + 2;
      if ((v7 - v8) <= 2)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t Apple80211ParseRNRIE(unsigned __int8 *a1, int a2, __CFDictionary *a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (a1 && a3)
  {
    if (a2 >= 2)
    {
      v5 = a1;
      while (1)
      {
        v6 = v5[1];
        v7 = a2 >= (v6 + 2);
        a2 -= v6 + 2;
        if (!v7)
        {
          goto LABEL_10;
        }

        if (v6 >= 4 && *v5 == 201)
        {
          break;
        }

        v5 += v6 + 2;
        if (a2 <= 1)
        {
          goto LABEL_10;
        }
      }

      v10 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        v3 = 4294963395;
        goto LABEL_11;
      }

      v12 = Mutable;
      v60 = a3;
      v62 = CFArrayCreateMutable(v10, 0, MEMORY[0x277CBF128]);
      if (!v62)
      {
        v3 = 4294963395;
        goto LABEL_95;
      }

      v61 = v12;
      v13 = v5[1];
      if (v13 < 4)
      {
LABEL_88:
        v12 = v61;
        CFDictionarySetValue(v61, @"NEIGHBOR_AP_INFO_LIST", v62);
        CFRelease(v62);
        CFDictionarySetValue(v60, @"RNR_IE", v61);
        v3 = 0;
LABEL_95:
        CFRelease(v12);
        goto LABEL_11;
      }

      v14 = v5 + 2;
      v64 = *MEMORY[0x277CBED28];
      v15 = *MEMORY[0x277CBED10];
LABEL_16:
      v16 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v16)
      {
        v3 = 4294963395;
        v12 = v61;
        goto LABEL_94;
      }

      v17 = v16;
      v18 = *v14;
      valuePtr = *v14 & 2;
      v19 = CFNumberCreate(v10, kCFNumberSInt8Type, &valuePtr);
      if (v19)
      {
        v20 = v19;
        CFDictionarySetValue(v17, @"TYPE", v19);
        CFRelease(v20);
        if ((v18 & 4) != 0)
        {
          v21 = v64;
        }

        else
        {
          v21 = v15;
        }

        CFDictionarySetValue(v17, @"FILTERED_AP", v21);
        if ((v18 & 8) != 0)
        {
          v22 = v64;
        }

        else
        {
          v22 = v15;
        }

        theDict = v17;
        CFDictionarySetValue(v17, @"COLOCATED_AP", v22);
        v23 = HIBYTE(v18);
        v65 = v18 >> 4;
        v24 = HIBYTE(v18) * v65 + HIBYTE(v18);
        if (v24 > v13)
        {
          v3 = 4294963392;
          goto LABEL_100;
        }

        v72 = v14[2];
        v25 = CFNumberCreate(v10, kCFNumberSInt8Type, &v72);
        if (!v25)
        {
          v3 = 4294963395;
          v12 = v61;
          goto LABEL_93;
        }

        v26 = v25;
        CFDictionarySetValue(v17, @"OPERATING_CLASS", v25);
        CFRelease(v26);
        v71 = v14[3];
        v27 = CFNumberCreate(v10, kCFNumberSInt8Type, &v71);
        if (v27)
        {
          v28 = v27;
          CFDictionarySetValue(v17, @"CHANNEL", v27);
          CFRelease(v28);
          v70 = _channelFlagsFromIEEEOperatingClass(v14[2]);
          v29 = CFNumberCreate(v10, kCFNumberSInt32Type, &v70);
          if (v29)
          {
            v30 = v29;
            CFDictionarySetValue(v17, @"CHANNEL_FLAGS", v29);
            CFRelease(v30);
            v13 -= 4;
            if (v13 < v24)
            {
              theArray = 0;
              v3 = 4294963392;
LABEL_91:
              v12 = v61;
              v17 = theDict;
              if (theArray)
              {
                CFRelease(theArray);
              }

              goto LABEL_93;
            }

            v31 = CFArrayCreateMutable(v10, 0, MEMORY[0x277CBF128]);
            if (v31)
            {
              v32 = 0;
              v14 += 4;
              v35 = (v18 & 0xFB00) == 0x200 || (v18 & 0xFE00) == 2048 || HIBYTE(v18) == 12;
              v66 = v18;
              v67 = v35;
              theArray = v31;
              while (1)
              {
                v36 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (!v36)
                {
                  goto LABEL_90;
                }

                v37 = v36;
                v38 = v14;
                if (v18 < 0x100u)
                {
                  goto LABEL_46;
                }

                LOBYTE(v69) = *v14;
                v39 = CFNumberCreate(v10, kCFNumberSInt8Type, &v69);
                if (!v39)
                {
                  goto LABEL_89;
                }

                v40 = v39;
                CFDictionarySetValue(v37, @"TBTT_OFFSET", v39);
                CFRelease(v40);
                v38 = (v14 + 1);
                if (v18 <= 0xCFFu)
                {
LABEL_46:
                  if (v23 > 0xC || ((1 << v23) & 0x1B80) == 0)
                  {
                    goto LABEL_52;
                  }

                  v41 = 0;
                }

                else
                {
                  v41 = 1;
                }

                v42 = ether_ntoa(v38);
                if (!v42 || (v43 = CFStringCreateWithCString(v10, v42, 0x8000100u)) == 0)
                {
LABEL_89:
                  CFRelease(v37);
                  goto LABEL_90;
                }

                v44 = v43;
                CFDictionarySetValue(v37, @"BSSID", v43);
                CFRelease(v44);
                ++v38;
                if (v41)
                {
                  v45 = 1;
LABEL_54:
                  v69 = *v38->octet;
                  v46 = CFNumberCreate(v10, kCFNumberSInt32Type, &v69);
                  if (!v46)
                  {
                    goto LABEL_89;
                  }

                  v47 = v46;
                  CFDictionarySetValue(v37, @"SHORT_SSID", v46);
                  CFRelease(v47);
                  v38 = (v38 + 4);
                  goto LABEL_56;
                }

LABEL_52:
                v45 = 0;
                if (v23 <= 0xC && ((1 << v23) & 0x1860) != 0)
                {
                  goto LABEL_54;
                }

LABEL_56:
                if ((v67 | v45) == 1)
                {
                  LOBYTE(v69) = v38->octet[0];
                  v48 = CFNumberCreate(v10, kCFNumberSInt8Type, &v69);
                  if (!v48)
                  {
                    goto LABEL_89;
                  }

                  v49 = v48;
                  CFDictionarySetValue(v37, @"BSS_PARAMS", v48);
                  CFRelease(v49);
                  if (v69)
                  {
                    v50 = v64;
                  }

                  else
                  {
                    v50 = v15;
                  }

                  CFDictionarySetValue(v37, @"OCT_RECOMMENDED", v50);
                  if ((v69 & 2) != 0)
                  {
                    v51 = v64;
                  }

                  else
                  {
                    v51 = v15;
                  }

                  CFDictionarySetValue(v37, @"SAME_SSID", v51);
                  if ((v69 & 4) != 0)
                  {
                    v52 = v64;
                  }

                  else
                  {
                    v52 = v15;
                  }

                  CFDictionarySetValue(v37, @"MULTIPLE_BSSID", v52);
                  if ((v69 & 8) != 0)
                  {
                    v53 = v64;
                  }

                  else
                  {
                    v53 = v15;
                  }

                  CFDictionarySetValue(v37, @"TRANSMITTED_BSSID", v53);
                  if ((v69 & 0x10) != 0)
                  {
                    v54 = v64;
                  }

                  else
                  {
                    v54 = v15;
                  }

                  CFDictionarySetValue(v37, @"MEMBER_OF_ESS_WITH_2GHZ_OR_5GHZ_COLOCATED_AP", v54);
                  if ((v69 & 0x20) != 0)
                  {
                    v55 = v64;
                  }

                  else
                  {
                    v55 = v15;
                  }

                  CFDictionarySetValue(v37, @"UPR_ACTIVE", v55);
                  if ((v69 & 0x40) != 0)
                  {
                    v56 = v64;
                  }

                  else
                  {
                    v56 = v15;
                  }

                  CFDictionarySetValue(v37, @"COLOCATED_AP", v56);
                  v38 = (v38 + 1);
                }

                v57 = v45 ^ 1;
                if (v23 == 9)
                {
                  v57 = 0;
                }

                v18 = v66;
                if ((v57 & 1) == 0)
                {
                  LOBYTE(v69) = v38->octet[0];
                  v58 = CFNumberCreate(v10, kCFNumberSInt8Type, &v69);
                  if (!v58)
                  {
                    goto LABEL_89;
                  }

                  v59 = v58;
                  CFDictionarySetValue(v37, @"20MHZ_PSD", v58);
                  CFRelease(v59);
                }

                CFArrayAppendValue(theArray, v37);
                CFRelease(v37);
                v14 += v23;
                v13 -= v23;
                v7 = v32++ >= v65;
                if (v7)
                {
                  CFDictionarySetValue(theDict, @"TBTT_INFO_SET", theArray);
                  CFRelease(theArray);
                  CFArrayAppendValue(v62, theDict);
                  CFRelease(theDict);
                  if (v13 > 3)
                  {
                    goto LABEL_16;
                  }

                  goto LABEL_88;
                }
              }
            }
          }

          theArray = 0;
LABEL_90:
          v3 = 4294963395;
          goto LABEL_91;
        }
      }

      v3 = 4294963395;
LABEL_100:
      v12 = v61;
LABEL_93:
      CFRelease(v17);
LABEL_94:
      CFRelease(v62);
      goto LABEL_95;
    }

LABEL_10:
    v3 = 0;
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t Apple80211ParseMBOOCEIE(unsigned __int8 *a1, int a2, __CFDictionary *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (!a1 || !a3)
  {
    goto LABEL_5;
  }

  if (a2 < 2)
  {
    v3 = 0;
    goto LABEL_5;
  }

  v7 = a1;
  while (1)
  {
    v3 = 0;
    if (a2 < 6)
    {
      goto LABEL_5;
    }

    v8 = v7[1];
    v9 = a2 >= (v8 + 2);
    a2 -= v8 + 2;
    if (!v9)
    {
      goto LABEL_5;
    }

    if (v8 >= 4 && *v7 == 221 && v7[2] == 80 && v7[3] == 111 && v7[4] == 154 && v7[5] == 22)
    {
      break;
    }

    v3 = 0;
    v7 += v8 + 2;
    if (a2 <= 1)
    {
      goto LABEL_5;
    }
  }

  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v3 = 4294963395;
    goto LABEL_5;
  }

  v12 = Mutable;
  v13 = v7[1];
  if (v13 < 6)
  {
    v14 = 0;
    v15 = 0;
LABEL_84:
    CFDictionarySetValue(a3, @"MBO_OCE_IE", v12);
    v29 = 0;
    v22 = 0;
    v3 = 0;
    goto LABEL_85;
  }

  v14 = 0;
  v15 = 0;
  v16 = v13 - 4;
  v17 = v7 + 6;
  v18 = *MEMORY[0x277CBED10];
  v36 = *MEMORY[0x277CBED10];
  v37 = *MEMORY[0x277CBED28];
  v34 = Mutable;
  while (1)
  {
    v19 = v17[1];
    v20 = v19 + 2;
    v9 = v16 >= (v19 + 2);
    v16 -= v19 + 2;
    if (!v9)
    {
LABEL_96:
      v29 = 0;
      v22 = 0;
      v3 = 4294963392;
      goto LABEL_85;
    }

    v21 = *v17;
    if (v21 > 4)
    {
      if (*v17 > 6u)
      {
        if (v21 == 7)
        {
          if (v19 != 1)
          {
            goto LABEL_96;
          }

          LOBYTE(v41) = v17[2];
          v22 = CFNumberCreate(v10, kCFNumberSInt8Type, &v41);
          if (!v22)
          {
LABEL_97:
            v29 = 0;
LABEL_98:
            v3 = 4294963395;
            goto LABEL_85;
          }

          v30 = v12;
          v31 = @"TRANS_REJECT_REASON_CODE";
        }

        else
        {
          if (v21 != 8)
          {
            goto LABEL_77;
          }

          if (v19 != 2)
          {
            goto LABEL_96;
          }

          LOWORD(v41) = *(v17 + 1);
          v22 = CFNumberCreate(v10, kCFNumberSInt16Type, &v41);
          if (!v22)
          {
            goto LABEL_97;
          }

          v30 = v12;
          v31 = @"ASSOC_RETRY_DELAY";
        }
      }

      else if (v21 == 5)
      {
        if (v19 != 1)
        {
          goto LABEL_96;
        }

        LOBYTE(v41) = v17[2];
        v22 = CFNumberCreate(v10, kCFNumberSInt8Type, &v41);
        if (!v22)
        {
          goto LABEL_97;
        }

        v30 = v12;
        v31 = @"CELL_CONN_PREF";
      }

      else
      {
        if (v21 != 6)
        {
          goto LABEL_77;
        }

        if (v19 != 1)
        {
          goto LABEL_96;
        }

        LOBYTE(v41) = v17[2];
        v22 = CFNumberCreate(v10, kCFNumberSInt8Type, &v41);
        if (!v22)
        {
          goto LABEL_97;
        }

        v30 = v12;
        v31 = @"TRANS_REASON_CODE";
      }

LABEL_75:
      CFDictionarySetValue(v30, v31, v22);
      v33 = v22;
      goto LABEL_76;
    }

    if (*v17 > 2u)
    {
      if (v21 == 3)
      {
        if (v19 != 1)
        {
          goto LABEL_96;
        }

        LOBYTE(v41) = v17[2];
        v22 = CFNumberCreate(v10, kCFNumberSInt8Type, &v41);
        if (!v22)
        {
          goto LABEL_97;
        }

        v30 = v12;
        v31 = @"CELL_DATA_CONNECTIVITY";
      }

      else
      {
        if (v21 != 4)
        {
          goto LABEL_77;
        }

        if (v19 != 1)
        {
          goto LABEL_96;
        }

        LOBYTE(v41) = v17[2];
        v22 = CFNumberCreate(v10, kCFNumberSInt8Type, &v41);
        if (!v22)
        {
          goto LABEL_97;
        }

        v30 = v12;
        v31 = @"ASSOC_DISALLOWED_REASON_CODE";
      }

      goto LABEL_75;
    }

    if (v21 == 1)
    {
      if (v19 != 1)
      {
        goto LABEL_96;
      }

      LOBYTE(v41) = v17[2];
      v22 = CFNumberCreate(v10, kCFNumberSInt8Type, &v41);
      if (!v22)
      {
        goto LABEL_97;
      }

      CFDictionarySetValue(v12, @"AP_CAP", v22);
      CFRelease(v22);
      if ((v41 & 0x40) != 0)
      {
        v32 = v37;
      }

      else
      {
        v32 = v36;
      }

      CFDictionarySetValue(v12, @"AP_CAP_CELL_DATA_AWARE", v32);
      goto LABEL_77;
    }

    if (v21 == 2)
    {
      break;
    }

LABEL_77:
    v17 += v20;
    if (v16 <= 1)
    {
      if (v15)
      {
        CFDictionarySetValue(v12, @"NON_PREF_CHANNEL_REPORT_LIST", v15);
      }

      goto LABEL_84;
    }
  }

  if ((v19 - 1) < 2)
  {
    goto LABEL_96;
  }

  if (!v15 && (v15 = CFArrayCreateMutable(v10, 0, MEMORY[0x277CBF128])) == 0 || (theDict = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) == 0)
  {
    v29 = 0;
    v22 = 0;
    goto LABEL_98;
  }

  if (!v19)
  {
    v29 = theDict;
    goto LABEL_80;
  }

  valuePtr = v17[2];
  v22 = CFNumberCreate(v10, kCFNumberSInt8Type, &valuePtr);
  if (!v22)
  {
    v3 = 4294963395;
    goto LABEL_95;
  }

  CFDictionarySetValue(theDict, @"OPERATING_CLASS", v22);
  CFRelease(v22);
  v41 = _channelFlagsFromIEEEOperatingClass(valuePtr);
  v22 = CFNumberCreate(v10, kCFNumberSInt32Type, &v41);
  v35 = v15;
  if (!v22)
  {
    goto LABEL_94;
  }

  CFDictionarySetValue(theDict, @"CHANNEL_FLAGS", v22);
  CFRelease(v22);
  v22 = CFArrayCreateMutable(v10, 0, MEMORY[0x277CBF128]);
  if (!v22)
  {
    goto LABEL_94;
  }

  v23 = (v17 + 3);
  if (v19 >= 4)
  {
    v24 = v19 - 3;
    while (1)
    {
      v14 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v14)
      {
        break;
      }

      v40 = *v23;
      v25 = CFNumberCreate(v10, kCFNumberSInt8Type, &v40);
      if (!v25)
      {
        break;
      }

      v26 = v25;
      CFDictionarySetValue(v14, @"CHANNEL", v25);
      CFRelease(v26);
      v39 = v41;
      v27 = CFNumberCreate(v10, kCFNumberSInt32Type, &v39);
      if (!v27)
      {
        break;
      }

      v28 = v27;
      CFDictionarySetValue(v14, @"CHANNEL_FLAGS", v27);
      CFRelease(v28);
      CFArrayAppendValue(v22, v14);
      CFRelease(v14);
      ++v23;
      if (!--v24)
      {
        goto LABEL_41;
      }
    }

LABEL_94:
    v3 = 4294963395;
    v12 = v34;
    v15 = v35;
LABEL_95:
    v29 = theDict;
    goto LABEL_85;
  }

LABEL_41:
  v29 = theDict;
  CFDictionarySetValue(theDict, @"CHANNEL_LIST", v22);
  CFRelease(v22);
  LOBYTE(v39) = *v23;
  v22 = CFNumberCreate(v10, kCFNumberSInt8Type, &v39);
  if (v22)
  {
    CFDictionarySetValue(theDict, @"PREF", v22);
    CFRelease(v22);
    v40 = v23[1];
    v22 = CFNumberCreate(v10, kCFNumberSInt8Type, &v40);
    v12 = v34;
    v15 = v35;
    if (!v22)
    {
      goto LABEL_98;
    }

    CFDictionarySetValue(theDict, @"REASON_CODE", v22);
    CFRelease(v22);
LABEL_80:
    CFArrayAppendValue(v15, v29);
    v33 = v29;
LABEL_76:
    CFRelease(v33);
    goto LABEL_77;
  }

  v3 = 4294963395;
  v12 = v34;
  v15 = v35;
LABEL_85:
  if (v14)
  {
    CFRelease(v14);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  CFRelease(v12);
LABEL_5:
  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t Apple80211ParseWPS_IE(unsigned __int8 *a1, unsigned int a2, __CFDictionary *a3)
{
  v213 = *MEMORY[0x277D85DE8];
  v3 = 4294963396;
  if (a1 && a3)
  {
    v5 = a2;
    if (a2 >= 3)
    {
      v6 = a1;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        if (*v6 == 221 && v5 >= 6)
        {
          v9 = v6[1];
          v10 = v9 - 4;
          if (v9 >= 4)
          {
            v11 = v9 + 2;
            if (*(v6 + 2) == 82989056 && v11 <= v5)
            {
              if (v8)
              {
                v13 = malloc_type_realloc(v8, (v10 + v7), 0x331FADA9uLL);
                if (!v13)
                {
                  goto LABEL_223;
                }

                v14 = v13;
                memcpy(&v13[v7], v6 + 6, v10);
                v8 = v14;
                v7 += v10;
              }

              else
              {
                v15 = malloc_type_malloc(v10, 0x100004077774924uLL);
                if (!v15)
                {
                  v3 = 4294963395;
                  goto LABEL_221;
                }

                v8 = v15;
                memcpy(v15, v6 + 6, v10);
                v7 = v10;
              }
            }
          }
        }

        v16 = v6[1];
        v17 = v16 + 2;
        v6 += v16 + 2;
        v18 = v5 - (v16 + 2);
        if (v5 >= v17)
        {
          v5 = v18;
        }

        else
        {
          v5 = 0;
        }

        if (v5 <= 2)
        {
          if (!v8)
          {
            break;
          }

          if (v7 < 5)
          {
            goto LABEL_122;
          }

          if (*v8 != 18960)
          {
            goto LABEL_122;
          }

          if (*(v8 + 4) != 16)
          {
            goto LABEL_122;
          }

          v19 = bswap32(v8[1]);
          v20 = v7 - HIWORD(v19) - 4;
          if (v20 < 5)
          {
            goto LABEL_122;
          }

          v21 = (v8 + HIWORD(v19) + 4);
          v22 = bswap32(*v21) >> 16;
          if (v22 != 4155)
          {
            if (v22 == 4164)
            {
              v23 = *MEMORY[0x277CBECE8];
              Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (Mutable)
              {
                v25 = Mutable;
                v3 = 4294963396;
                if (!v21[1] || __rev16(v21[1]) + 4 > v20 || *v21 != 17424)
                {
                  goto LABEL_219;
                }

                v26 = CFNumberCreate(v23, kCFNumberSInt8Type, v21 + 2);
                if (!v26)
                {
                  goto LABEL_224;
                }

                v27 = v26;
                CFDictionarySetValue(v25, @"IE_KEY_WPS_SC_STATE", v26);
                CFRelease(v27);
                v28 = bswap32(v21[1]);
                v29 = v20 - HIWORD(v28) - 4;
                if (v29 < 4)
                {
                  goto LABEL_217;
                }

                v30 = v21 + HIWORD(v28) + 4;
                v31 = *(v30 + 1);
                v32 = __rev16(v31);
                v33 = v32 + 4;
                if (*(v30 + 1) && v33 <= v29 && *v30 == 22288)
                {
                  v35 = v30[4];
                  v34 = (v30 + 4);
                  if (v35)
                  {
                    v36 = MEMORY[0x277CBED28];
                  }

                  else
                  {
                    v36 = MEMORY[0x277CBED10];
                  }

                  CFDictionarySetValue(v25, @"IE_KEY_WPS_AP_SETUP_LOCKED", *v36);
                  v37 = bswap32(*(v34 - 1));
                  v29 = v29 - HIWORD(v37) - 4;
                  if (v29 >= 4)
                  {
                    v30 = v34 + HIWORD(v37);
                    v31 = *(v30 + 1);
                    v32 = __rev16(v31);
                    v33 = v32 + 4;
                    goto LABEL_42;
                  }

LABEL_217:
                  v202 = @"WPS_BEACON_IE";
LABEL_218:
                  CFDictionarySetValue(a3, v202, v25);
                  v3 = 0;
LABEL_219:
                  CFRelease(v25);
LABEL_220:
                  free(v8);
                  goto LABEL_221;
                }

LABEL_42:
                if (v33 <= v29)
                {
                  if (v32)
                  {
                    if (*v30 == 16656)
                    {
                      v39 = v30[4];
                      v38 = (v30 + 4);
                      if (v39)
                      {
                        v40 = MEMORY[0x277CBED28];
                      }

                      else
                      {
                        v40 = MEMORY[0x277CBED10];
                      }

                      CFDictionarySetValue(v25, @"IE_KEY_WPS_SEL_REG", *v40);
                      v41 = bswap32(*(v38 - 1));
                      v29 = v29 - HIWORD(v41) - 4;
                      if (v29 < 4)
                      {
                        goto LABEL_217;
                      }

                      v30 = v38 + HIWORD(v41);
                      v31 = *(v30 + 1);
                      v32 = __rev16(v31);
                      v33 = v32 + 4;
                    }

                    goto LABEL_50;
                  }

LABEL_211:
                  if (!v31 || __rev16(v31) + 4 > v29 || *v30 != 15376)
                  {
                    goto LABEL_217;
                  }

                  v209 = CFNumberCreate(v23, kCFNumberSInt8Type, v30 + 4);
                  if (v209)
                  {
                    v204 = v209;
                    v205 = @"IE_KEY_WPS_RF_BANDS";
                    goto LABEL_216;
                  }

                  goto LABEL_224;
                }

LABEL_50:
                v42 = v33 <= v29 && v32 >= 2;
                if (v42 && *v30 == 4624)
                {
                  valuePtr = bswap32(*(v30 + 2)) >> 16;
                  v43 = CFNumberCreate(v23, kCFNumberSInt16Type, &valuePtr);
                  if (!v43)
                  {
                    goto LABEL_224;
                  }

                  v44 = v43;
                  CFDictionarySetValue(v25, @"IE_KEY_WPS_DEV_PW_ID", v43);
                  CFRelease(v44);
                  v45 = bswap32(*(v30 + 1));
                  v29 = v29 - HIWORD(v45) - 4;
                  if (v29 < 4)
                  {
                    goto LABEL_217;
                  }

                  v30 += HIWORD(v45) + 4;
                  v31 = *(v30 + 1);
                  v32 = __rev16(v31);
                  v33 = v32 + 4;
                }

                if (v33 <= v29 && v32 >= 2)
                {
                  v46 = *v30;
                  if (v46 == 21264 || v46 == 21249)
                  {
                    valuePtr = bswap32(*(v30 + 2)) >> 16;
                    v47 = CFNumberCreate(v23, kCFNumberSInt16Type, &valuePtr);
                    if (!v47)
                    {
                      goto LABEL_224;
                    }

                    v48 = v47;
                    CFDictionarySetValue(v25, @"IE_KEY_WPS_REG_CFG_METHODS", v47);
                    CFRelease(v48);
                    v49 = bswap32(*(v30 + 1));
                    v29 = v29 - HIWORD(v49) - 4;
                    if (v29 < 4)
                    {
                      goto LABEL_217;
                    }

                    v30 += HIWORD(v49) + 4;
                    v31 = *(v30 + 1);
                    v32 = __rev16(v31);
                    v33 = v32 + 4;
                  }
                }

                if (v33 > v29 || !v32)
                {
                  goto LABEL_211;
                }

                v50 = *v30;
                if (v50 != 15120)
                {
                  if (v32 < 0x10)
                  {
                    goto LABEL_211;
                  }

                  if (v50 == 18192)
                  {
                    v206 = CFDataCreate(v23, v30 + 4, 16);
                    if (v206)
                    {
                      v207 = v206;
                      CFDictionarySetValue(v25, @"IE_KEY_WPS_UUID_E", v206);
                      CFRelease(v207);
                      v208 = bswap32(*(v30 + 1));
                      LODWORD(v29) = v29 - HIWORD(v208) - 4;
                      if (v29 < 4)
                      {
                        goto LABEL_217;
                      }

                      v30 += HIWORD(v208) + 4;
                      v31 = *(v30 + 1);
                      goto LABEL_211;
                    }
                  }

                  else
                  {
                    if (v50 != 6672)
                    {
                      goto LABEL_211;
                    }

                    v203 = CFDataCreate(v23, v30 + 4, 16);
                    if (v203)
                    {
                      v204 = v203;
                      v205 = @"IE_KEY_WPS_ENRL_NONCE";
LABEL_216:
                      CFDictionarySetValue(v25, v205, v204);
                      CFRelease(v204);
                      goto LABEL_217;
                    }
                  }

LABEL_224:
                  v3 = 4294963395;
                  goto LABEL_219;
                }

                v51 = CFNumberCreate(v23, kCFNumberSInt8Type, v30 + 4);
                if (!v51)
                {
                  goto LABEL_224;
                }

                v52 = v51;
                CFDictionarySetValue(v25, @"IE_KEY_WPS_RESP_TYPE", v51);
                CFRelease(v52);
                v53 = bswap32(*(v30 + 1));
                v54 = v29 - HIWORD(v53) - 4;
                if (v54 >= 4)
                {
                  v55 = &v30[HIWORD(v53) + 4];
                  v56 = bswap32(*(v55 + 2)) >> 16;
                  v3 = 4294963396;
                  if (v56 < 0x10 || v56 + 4 > v54 || *v55 != 18192)
                  {
                    goto LABEL_219;
                  }

                  v57 = CFDataCreate(v23, (v55 + 4), 16);
                  if (!v57)
                  {
                    goto LABEL_224;
                  }

                  v58 = v57;
                  CFDictionarySetValue(v25, @"IE_KEY_WPS_UUID_E", v57);
                  CFRelease(v58);
                  v59 = bswap32(*(v55 + 2));
                  v60 = v54 - HIWORD(v59) - 4;
                  if (v60 >= 4)
                  {
                    v61 = v55 + 4 + HIWORD(v59);
                    v62 = bswap32(*(v61 + 2)) >> 16;
                    v3 = 4294963396;
                    if (v62 > 0x40 || v62 + 4 > v60 || *v61 != 8464)
                    {
                      goto LABEL_219;
                    }

                    v63 = CFStringCreateWithBytes(v23, (v61 + 4), v62, 0x8000100u, 0);
                    if (!v63)
                    {
                      goto LABEL_224;
                    }

                    v64 = v63;
                    CFDictionarySetValue(v25, @"IE_KEY_WPS_MANUFACTURER", v63);
                    CFRelease(v64);
                    v65 = bswap32(*(v61 + 2));
                    v66 = v60 - HIWORD(v65) - 4;
                    if (v66 >= 4)
                    {
                      v67 = v61 + 4 + HIWORD(v65);
                      v68 = bswap32(*(v67 + 2)) >> 16;
                      v3 = 4294963396;
                      if (v68 > 0x20 || v68 + 4 > v66 || *v67 != 8976)
                      {
                        goto LABEL_219;
                      }

                      v69 = CFStringCreateWithBytes(v23, (v67 + 4), v68, 0x8000100u, 0);
                      if (!v69)
                      {
                        goto LABEL_224;
                      }

                      v70 = v69;
                      CFDictionarySetValue(v25, @"IE_KEY_WPS_MODEL_NAME", v69);
                      CFRelease(v70);
                      v71 = bswap32(*(v67 + 2));
                      v72 = v66 - HIWORD(v71) - 4;
                      if (v72 >= 4)
                      {
                        v73 = v67 + 4 + HIWORD(v71);
                        v74 = bswap32(*(v73 + 2)) >> 16;
                        v3 = 4294963396;
                        if (v74 > 0x20 || v74 + 4 > v72 || *v73 != 9232)
                        {
                          goto LABEL_219;
                        }

                        v75 = CFStringCreateWithBytes(v23, (v73 + 4), v74, 0x8000100u, 0);
                        if (!v75)
                        {
                          goto LABEL_224;
                        }

                        v76 = v75;
                        CFDictionarySetValue(v25, @"IE_KEY_WPS_MODEL_NUM", v75);
                        CFRelease(v76);
                        v77 = bswap32(*(v73 + 2));
                        v78 = v72 - HIWORD(v77) - 4;
                        if (v78 >= 4)
                        {
                          v79 = v73 + 4 + HIWORD(v77);
                          v80 = bswap32(*(v79 + 2)) >> 16;
                          v3 = 4294963396;
                          if (v80 > 0x20 || v80 + 4 > v78 || *v79 != 16912)
                          {
                            goto LABEL_219;
                          }

                          v81 = CFStringCreateWithBytes(v23, (v79 + 4), v80, 0x8000100u, 0);
                          if (!v81)
                          {
                            goto LABEL_224;
                          }

                          v82 = v81;
                          CFDictionarySetValue(v25, @"IE_KEY_WPS_SERIAL_NUM", v81);
                          CFRelease(v82);
                          v83 = bswap32(*(v79 + 2));
                          v84 = v78 - HIWORD(v83) - 4;
                          if (v84 >= 4)
                          {
                            v85 = v79 + 4 + HIWORD(v83);
                            valuePtr = -21846;
                            v86 = bswap32(*(v85 + 2)) >> 16;
                            v3 = 4294963396;
                            if (v86 < 8 || v86 + 4 > v84 || *v85 != 21520)
                            {
                              goto LABEL_219;
                            }

                            v87 = CFDictionaryCreateMutable(v23, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                            if (!v87)
                            {
                              goto LABEL_224;
                            }

                            v88 = v87;
                            v89 = v85 + 4;
                            valuePtr = bswap32(*(v85 + 4)) >> 16;
                            v90 = CFNumberCreate(v23, kCFNumberSInt16Type, &valuePtr);
                            if (!v90)
                            {
                              goto LABEL_227;
                            }

                            v91 = v90;
                            CFDictionarySetValue(v88, @"WPS_DEV_TYPE_CAT", v90);
                            CFRelease(v91);
                            v92 = CFDataCreate(v23, (v85 + 6), 4);
                            if (!v92)
                            {
                              goto LABEL_227;
                            }

                            v93 = v92;
                            CFDictionarySetValue(v88, @"WPS_DEV_TYPE_OUI", v92);
                            CFRelease(v93);
                            valuePtr = bswap32(*(v85 + 10)) >> 16;
                            v94 = CFNumberCreate(v23, kCFNumberSInt16Type, &valuePtr);
                            if (!v94)
                            {
                              goto LABEL_227;
                            }

                            v95 = v94;
                            CFDictionarySetValue(v88, @"WPS_DEV_TYPE_SUB_CAT", v94);
                            CFRelease(v95);
                            CFDictionarySetValue(v25, @"IE_KEY_WPS_PRIMARY_DEV_TYPE", v88);
                            v96 = bswap32(*(v85 + 2));
                            v97 = v84 - HIWORD(v96) - 4;
                            if (v97 < 4)
                            {
                              goto LABEL_228;
                            }

                            v98 = v89 + HIWORD(v96);
                            v99 = bswap32(*(v98 + 2)) >> 16;
                            v3 = 4294963396;
                            if (v99 > 0x20 || v99 + 4 > v97 || *v98 != 4368)
                            {
                              goto LABEL_120;
                            }

                            v100 = CFStringCreateWithBytes(v23, (v98 + 4), v99, 0x8000100u, 0);
                            if (!v100)
                            {
                              goto LABEL_227;
                            }

                            v101 = v100;
                            CFDictionarySetValue(v25, @"IE_KEY_WPS_DEV_NAME", v100);
                            CFRelease(v101);
                            v102 = bswap32(*(v98 + 2));
                            v103 = v97 - HIWORD(v102) - 4;
                            if (v103 < 4)
                            {
LABEL_228:
                              v3 = 4294963396;
                            }

                            else
                            {
                              v104 = (v98 + 4 + HIWORD(v102));
                              v105 = bswap32(v104[1]) >> 16;
                              v3 = 4294963396;
                              if (v105 >= 2 && v105 + 4 <= v103 && *v104 == 2064)
                              {
                                valuePtr = bswap32(v104[2]) >> 16;
                                v106 = CFNumberCreate(v23, kCFNumberSInt16Type, &valuePtr);
                                if (!v106)
                                {
                                  goto LABEL_227;
                                }

                                v107 = v106;
                                CFDictionarySetValue(v25, @"IE_KEY_WPS_CFG_METHODS", v106);
                                CFRelease(v107);
                                v108 = bswap32(v104[1]);
                                v109 = v103 - HIWORD(v108) - 4;
                                if (v109 >= 4 && (v110 = (v104 + HIWORD(v108) + 4), v110[1]) && __rev16(v110[1]) + 4 <= v109 && *v110 == 15376)
                                {
                                  v111 = CFNumberCreate(v23, kCFNumberSInt8Type, v110 + 2);
                                  if (v111)
                                  {
                                    v112 = v111;
                                    CFDictionarySetValue(v25, @"IE_KEY_WPS_RF_BANDS", v111);
                                    CFRelease(v112);
                                    goto LABEL_119;
                                  }

LABEL_227:
                                  v3 = 4294963395;
                                }

                                else
                                {
LABEL_119:
                                  CFDictionarySetValue(a3, @"WPS_PROB_RESP_IE", v25);
                                  v3 = 0;
                                }
                              }
                            }

LABEL_120:
                            CFRelease(v88);
                            goto LABEL_219;
                          }
                        }
                      }
                    }
                  }
                }

                goto LABEL_222;
              }

LABEL_223:
              v3 = 4294963395;
              goto LABEL_220;
            }

LABEL_122:
            v3 = 0;
            goto LABEL_220;
          }

          v113 = *MEMORY[0x277CBECE8];
          v114 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (!v114)
          {
            goto LABEL_223;
          }

          v25 = v114;
          valuePtr = -21846;
          v3 = 4294963396;
          if (!v21[1] || __rev16(v21[1]) + 4 > v20 || *v21 != 15120)
          {
            goto LABEL_219;
          }

          v115 = v21 + 2;
          v116 = CFNumberCreate(v113, kCFNumberSInt8Type, v21 + 2);
          CFDictionarySetValue(v25, @"IE_KEY_WPS_RESP_TYPE", v116);
          CFRelease(v116);
          v117 = bswap32(v21[1]);
          v118 = v20 - HIWORD(v117) - 4;
          if (v118 < 4)
          {
            goto LABEL_222;
          }

          v119 = v115 + HIWORD(v117);
          v120 = bswap32(*(v119 + 1)) >> 16;
          if (v120 < 0x10 || v120 + 4 > v118)
          {
            goto LABEL_222;
          }

          v122 = *v119;
          if (v122 == 18192)
          {
            v123 = @"IE_KEY_WPS_UUID_E";
          }

          else
          {
            if (v122 != 18448)
            {
              goto LABEL_222;
            }

            v123 = @"IE_KEY_WPS_UUID_R";
          }

          v124 = CFDataCreate(v113, v119 + 4, 16);
          if (!v124)
          {
            goto LABEL_224;
          }

          v125 = v124;
          CFDictionarySetValue(v25, v123, v124);
          CFRelease(v125);
          v126 = bswap32(*(v119 + 1));
          v127 = v118 - HIWORD(v126) - 4;
          if (v127 < 4)
          {
            goto LABEL_222;
          }

          v128 = &v119[HIWORD(v126) + 4];
          v3 = 4294963396;
          if (!*(v128 + 1) || __rev16(*(v128 + 1)) + 4 > v127 || *v128 != 17424)
          {
            goto LABEL_219;
          }

          v129 = CFNumberCreate(v113, kCFNumberSInt8Type, v128 + 4);
          if (!v129)
          {
            goto LABEL_224;
          }

          v130 = v129;
          CFDictionarySetValue(v25, @"IE_KEY_WPS_SC_STATE", v129);
          CFRelease(v130);
          v131 = bswap32(*(v128 + 1));
          v132 = v127 - HIWORD(v131) - 4;
          if (v132 < 4)
          {
            goto LABEL_222;
          }

          v133 = &v128[HIWORD(v131) + 4];
          v134 = bswap32(*(v133 + 2)) >> 16;
          v3 = 4294963396;
          if (v134 > 0x40 || v134 + 4 > v132 || *v133 != 8464)
          {
            goto LABEL_219;
          }

          v135 = CFStringCreateWithBytes(v113, (v133 + 4), v134, 0x8000100u, 0);
          if (!v135)
          {
            goto LABEL_224;
          }

          v136 = v135;
          CFDictionarySetValue(v25, @"IE_KEY_WPS_MANUFACTURER", v135);
          CFRelease(v136);
          v137 = bswap32(*(v133 + 2));
          v138 = v132 - HIWORD(v137) - 4;
          if (v138 < 4)
          {
            goto LABEL_222;
          }

          v139 = v133 + 4 + HIWORD(v137);
          v140 = bswap32(*(v139 + 2)) >> 16;
          v3 = 4294963396;
          if (v140 > 0x20 || v140 + 4 > v138 || *v139 != 8976)
          {
            goto LABEL_219;
          }

          v141 = CFStringCreateWithBytes(v113, (v139 + 4), v140, 0x8000100u, 0);
          if (!v141)
          {
            goto LABEL_224;
          }

          v142 = v141;
          CFDictionarySetValue(v25, @"IE_KEY_WPS_MODEL_NAME", v141);
          CFRelease(v142);
          v143 = bswap32(*(v139 + 2));
          v144 = v138 - HIWORD(v143) - 4;
          if (v144 < 4)
          {
            goto LABEL_222;
          }

          v145 = v139 + 4 + HIWORD(v143);
          v146 = bswap32(*(v145 + 2)) >> 16;
          v3 = 4294963396;
          if (v146 > 0x20 || v146 + 4 > v144 || *v145 != 9232)
          {
            goto LABEL_219;
          }

          v147 = CFStringCreateWithBytes(v113, (v145 + 4), v146, 0x8000100u, 0);
          if (!v147)
          {
            goto LABEL_224;
          }

          v148 = v147;
          CFDictionarySetValue(v25, @"IE_KEY_WPS_MODEL_NUM", v147);
          CFRelease(v148);
          v149 = bswap32(*(v145 + 2));
          v150 = v144 - HIWORD(v149) - 4;
          if (v150 < 4)
          {
            goto LABEL_222;
          }

          v151 = v145 + 4 + HIWORD(v149);
          v152 = bswap32(*(v151 + 2)) >> 16;
          v3 = 4294963396;
          if (v152 > 0x20 || v152 + 4 > v150 || *v151 != 16912)
          {
            goto LABEL_219;
          }

          v153 = CFStringCreateWithBytes(v113, (v151 + 4), v152, 0x8000100u, 0);
          if (!v153)
          {
            goto LABEL_224;
          }

          v154 = v153;
          CFDictionarySetValue(v25, @"IE_KEY_WPS_SERIAL_NUM", v153);
          CFRelease(v154);
          v155 = bswap32(*(v151 + 2));
          v156 = v150 - HIWORD(v155) - 4;
          if (v156 < 4)
          {
            goto LABEL_222;
          }

          v157 = v151 + 4 + HIWORD(v155);
          v158 = bswap32(*(v157 + 2)) >> 16;
          v3 = 4294963396;
          if (v158 < 8 || v158 + 4 > v156 || *v157 != 21520)
          {
            goto LABEL_219;
          }

          v159 = CFDictionaryCreateMutable(v113, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (!v159)
          {
            goto LABEL_224;
          }

          v160 = v159;
          valuePtr = bswap32(*(v157 + 4)) >> 16;
          v161 = CFNumberCreate(v113, kCFNumberSInt16Type, &valuePtr);
          if (!v161)
          {
            goto LABEL_226;
          }

          v162 = v161;
          CFDictionarySetValue(v160, @"WPS_DEV_TYPE_CAT", v161);
          CFRelease(v162);
          v163 = CFDataCreate(v113, (v157 + 6), 4);
          if (!v163 || (v164 = v163, CFDictionarySetValue(v160, @"WPS_DEV_TYPE_OUI", v163), CFRelease(v164), valuePtr = bswap32(*(v157 + 10)) >> 16, (v165 = CFNumberCreate(v113, kCFNumberSInt16Type, &valuePtr)) == 0))
          {
LABEL_226:
            CFRelease(v25);
            v3 = 4294963395;
            v25 = v160;
            goto LABEL_219;
          }

          v166 = v165;
          CFDictionarySetValue(v160, @"WPS_DEV_TYPE_SUB_CAT", v165);
          CFRelease(v166);
          CFDictionarySetValue(v25, @"IE_KEY_WPS_PRIMARY_DEV_TYPE", v160);
          CFRelease(v160);
          v167 = bswap32(*(v157 + 2));
          v168 = v156 - HIWORD(v167) - 4;
          if (v168 < 4)
          {
            goto LABEL_222;
          }

          v169 = v157 + 4 + HIWORD(v167);
          v170 = bswap32(*(v169 + 2)) >> 16;
          v3 = 4294963396;
          if (v170 > 0x20 || v170 + 4 > v168 || *v169 != 4368)
          {
            goto LABEL_219;
          }

          v171 = CFStringCreateWithBytes(v113, (v169 + 4), v170, 0x8000100u, 0);
          if (!v171)
          {
            goto LABEL_224;
          }

          v172 = v171;
          CFDictionarySetValue(v25, @"IE_KEY_WPS_DEV_NAME", v171);
          CFRelease(v172);
          v173 = bswap32(*(v169 + 2));
          v174 = v168 - HIWORD(v173) - 4;
          if (v174 < 6)
          {
            goto LABEL_222;
          }

          v175 = (v169 + 4 + HIWORD(v173));
          if (*v175 != 2064)
          {
            goto LABEL_222;
          }

          valuePtr = bswap32(v175[2]) >> 16;
          v176 = CFNumberCreate(v113, kCFNumberSInt16Type, &valuePtr);
          if (!v176)
          {
            goto LABEL_224;
          }

          v177 = v176;
          CFDictionarySetValue(v25, @"IE_KEY_WPS_CFG_METHODS", v176);
          CFRelease(v177);
          v178 = bswap32(v175[1]);
          v179 = v174 - HIWORD(v178) - 4;
          if (v179 < 5 || (v180 = v175 + HIWORD(v178) + 4, *v180 != 16656))
          {
LABEL_222:
            v3 = 4294963396;
            goto LABEL_219;
          }

          v182 = *(v180 + 4);
          v181 = v180 + 4;
          v183 = *MEMORY[0x277CBED28];
          v184 = *MEMORY[0x277CBED10];
          if (v182)
          {
            v185 = *MEMORY[0x277CBED28];
          }

          else
          {
            v185 = *MEMORY[0x277CBED10];
          }

          CFDictionarySetValue(v25, @"IE_KEY_WPS_SEL_REG", v185);
          v186 = bswap32(*(v181 - 2));
          v187 = v179 - HIWORD(v186) - 4;
          if (v187 >= 5)
          {
            v188 = (v181 + HIWORD(v186));
            if (*v188 == 22288)
            {
              v190 = v188[4];
              v189 = (v188 + 4);
              if (v190)
              {
                v191 = v183;
              }

              else
              {
                v191 = v184;
              }

              CFDictionarySetValue(v25, @"IE_KEY_WPS_AP_SETUP_LOCKED", v191);
              v192 = bswap32(*(v189 - 1));
              v188 = v189 + HIWORD(v192);
              v187 = v187 - HIWORD(v192) - 4;
            }

            if (v187 >= 6)
            {
              v193 = *v188;
              if (v193 == 21264 || v193 == 21249)
              {
                valuePtr = bswap32(*(v188 + 2)) >> 16;
                v194 = CFNumberCreate(v113, kCFNumberSInt16Type, &valuePtr);
                if (!v194)
                {
                  goto LABEL_224;
                }

                v195 = v194;
                CFDictionarySetValue(v25, @"IE_KEY_WPS_REG_CFG_METHODS", v194);
                CFRelease(v195);
                v196 = bswap32(*(v188 + 1));
                v187 = v187 - HIWORD(v196) - 4;
                if (v187 >= 6)
                {
                  v188 += HIWORD(v196) + 4;
                  v193 = *v188;
                  goto LABEL_195;
                }
              }

              else
              {
LABEL_195:
                if (v193 == 4624)
                {
                  valuePtr = bswap32(*(v188 + 2)) >> 16;
                  v197 = CFNumberCreate(v113, kCFNumberSInt16Type, &valuePtr);
                  if (!v197)
                  {
                    goto LABEL_224;
                  }

                  v198 = v197;
                  CFDictionarySetValue(v25, @"IE_KEY_WPS_DEV_PW_ID", v197);
                  CFRelease(v198);
                  v199 = bswap32(*(v188 + 1));
                  v188 += HIWORD(v199) + 4;
                  v187 = v187 - HIWORD(v199) - 4;
                }

                if (v187 >= 0x14 && *v188 == 6672)
                {
                  v200 = CFDataCreate(v113, v188 + 4, 16);
                  if (!v200)
                  {
                    goto LABEL_224;
                  }

                  v201 = v200;
                  CFDictionarySetValue(v25, @"IE_KEY_WPS_ENRL_NONCE", v200);
                  CFRelease(v201);
                }
              }
            }
          }

          v202 = @"WPS_PROB_RESP_IE";
          goto LABEL_218;
        }
      }
    }

    v3 = 0;
  }

LABEL_221:
  v210 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t Apple80211Get(uint64_t a1)
{
  if (a1)
  {
    return Apple80211GetWithIOCTL();
  }

  else
  {
    return 4294963396;
  }
}

void _dispatchBTCoexStatsUpdateEvent(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return;
  }

  if (a3 != 28)
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
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, (a2 + 8));
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(v6, @"BTC_STATS_TOT_DUR_MS", v8);
    v10 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 12));
    if (!v10)
    {
      v17 = v9;
LABEL_31:
      CFRelease(v17);
      goto LABEL_32;
    }

    v11 = v10;
    CFDictionaryAddValue(v6, @"BTC_STATS_BT_DUR_MS", v10);
    v12 = CFNumberCreate(v7, kCFNumberSInt32Type, a2);
    if (v12)
    {
      CFDictionaryAddValue(v6, @"BTC_STATS_HYBRID_CNT", v12);
      v13 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 4));
      if (v13)
      {
        CFDictionaryAddValue(v6, @"BTC_STATS_TDD_CNT", v13);
        v14 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 16));
        if (v14)
        {
          v19 = v14;
          CFDictionaryAddValue(v6, @"BTC_STATS_PARALLEL_CNT", v14);
          v15 = CFNumberCreate(v7, kCFNumberSInt32Type, (a2 + 20));
          if (v15)
          {
            CFDictionaryAddValue(v6, @"BTC_STATS_BT_DUR_AIR_MS", v15);
            v16 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 24));
            if (v16)
            {
              CFDictionaryAddValue(v6, @"BTC_STATS_WLRSSI_COEX", v16);
              v17 = CFNumberCreate(v7, kCFNumberSInt8Type, (a2 + 25));
              if (v17)
              {
                CFDictionaryAddValue(v6, @"BTC_STATS_BTRSSI_COEX", v17);
                (*(a1 + 72))(0, a1, 190, v6, 8, *(a1 + 80));
              }

              goto LABEL_19;
            }
          }

          else
          {
            v16 = 0;
          }

          v17 = 0;
LABEL_19:
          v18 = v19;
LABEL_20:
          CFRelease(v9);
          CFRelease(v11);
          if (v12)
          {
            CFRelease(v12);
          }

          if (v13)
          {
            CFRelease(v13);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          if (v15)
          {
            CFRelease(v15);
          }

          if (v16)
          {
            CFRelease(v16);
          }

          if (!v17)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    v18 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_20;
  }

LABEL_32:

  CFRelease(v6);
}

uint64_t Apple80211ScanAsync()
{
  v0 = MEMORY[0x28223BE20]();
  v20 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v11 = 0;
  if (v0 && (v2 = v0, (*v0 & 0x80000000) == 0) && *(v0 + 4))
  {
    v3 = v1;
    memset(__b, 170, sizeof(__b));
    v14 = -1431655766;
    v15 = -1431655766;
    v13 = -86;
    result = _getScanData(v3, __b, 0, &v13, &v14, &v15, &v12, &v11 + 1, v2 + 88, &v11);
    if (!result)
    {
      *(&uu + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&uu = 0xAAAAAAAAAAAAAAAALL;
      MEMORY[0x259C1D950](&uu);
      uuid_unparse(&uu, &__b[681] + 4);
      uu = 0u;
      v18 = 0u;
      v19 = 0;
      LODWORD(v18) = 10;
      __strlcpy_chk();
      DWORD2(v18) = 5528;
      v19 = __b;
      if (Apple80211RawSet())
      {
        result = *__error();
      }

      else
      {
        __strlcpy_chk();
        pthread_mutex_lock((v2 + 160));
        if (!*(v2 + 232))
        {
          if (v3)
          {
            Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v3);
          }

          else
          {
            Copy = 0;
          }

          *(v2 + 144) = Copy;
          *(v2 + 240) = 0;
          *(v2 + 236) = v15;
          *(v2 + 232) = 1;
          *(v2 + 120) = v13;
          *(v2 + 121) = v12;
          *(v2 + 124) = v14;
          *(v2 + 224) = pthread_self();
          *(v2 + 264) = 0;
          *(v2 + 128) = HIBYTE(v11);
          *(v2 + 129) = v11;
          *(v2 + 136) = __b[609];
          v6 = *(v2 + 248);
          if (v6)
          {
            Current = CFAbsoluteTimeGetCurrent();
            CFRunLoopTimerSetNextFireDate(v6, Current + 315360000.0);
          }

          v8 = *(v2 + 256);
          if (v8)
          {
            v9 = dispatch_time(0, 315360000000000000);
            dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
          }
        }

        pthread_mutex_unlock((v2 + 160));
        result = 0;
      }
    }
  }

  else
  {
    result = 4294963396;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}