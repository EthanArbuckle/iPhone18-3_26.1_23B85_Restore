uint64_t _SetupClientExchange(char *__s, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v304 = *MEMORY[0x1E69E9840];
  memset(v303, 0, sizeof(v303));
  memset(v299, 0, sizeof(v299));
  v288 = 0;
  v289 = 0;
  v286 = 0;
  v287 = 0;
  v284 = 0;
  v285 = 0;
  v282 = 0;
  v283 = 0;
  v300 = v303;
  v301 = xmmword_191FF95F0;
  v302 = 0;
  v297 = xmmword_191FF95F0;
  v296 = v299;
  v298 = 0;
  v15 = __s + 128;
  v14 = __s[128];
  if (!__s[128])
  {
    v14 = 1;
    *v15 = 1;
  }

  v16 = &a2[a3];
  appended = 0;
  if (!a3)
  {
    goto LABEL_12;
  }

  v17 = a2;
  do
  {
    if (v17 == v16)
    {
LABEL_87:
      v43 = -6727;
LABEL_90:
      Int64 = 0;
      v32 = 0;
      goto LABEL_66;
    }

    if (v17 >= v16)
    {
      v43 = -6705;
      goto LABEL_90;
    }

    if ((v16 - v17) < 2)
    {
      goto LABEL_87;
    }

    v18 = v17 + 2;
    v19 = v17[1];
    if (&v17[v19 + 2] > v16)
    {
      v43 = -6750;
      goto LABEL_90;
    }

    v20 = *v17;
    v17 += v19 + 2;
  }

  while (v20 != 6);
  v288 = v19;
  v289 = v18;
  appended = 0;
  if (v19 != 1)
  {
    goto LABEL_392;
  }

  if (*v18 != v14)
  {
    goto LABEL_65;
  }

LABEL_12:
  if (v14 <= 2)
  {
    if (v14 != 1)
    {
      if (v14 != 2)
      {
LABEL_53:
        v41 = *(__s + 2);
        if (*v41 <= 60)
        {
          if (*v41 == -1)
          {
            if (!_LogCategory_Initialize(v41, 0x3Cu))
            {
              goto LABEL_65;
            }

            v41 = *(__s + 2);
            v14 = __s[128];
          }

          LogPrintF(v41, "OSStatus _SetupClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x3Cu, "### PairSetup client bad state: %d\n", a5, a6, a7, a8, v14);
        }

LABEL_65:
        Int64 = 0;
        v32 = 0;
        v43 = -6709;
        goto LABEL_66;
      }

      v280 = __s + 128;
      v27 = *(__s + 2);
      v28 = *v27;
      if (*v27 <= 30)
      {
        if (v28 != -1)
        {
LABEL_27:
          if (v28 > 10)
          {
            v29 = 1;
          }

          else
          {
            v29 = v28 == -1 && !_LogCategory_Initialize(v27, 0xAu);
          }

          LogPrintF(v27, "OSStatus _SetupClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "PairSetup client M2 -- start response\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v29);
          goto LABEL_131;
        }

        if (_LogCategory_Initialize(*(__s + 2), 0x1Eu))
        {
          v27 = *(__s + 2);
          v28 = *v27;
          goto LABEL_27;
        }
      }

LABEL_131:
      v56 = a2;
      v10 = a4;
      while (v56 != v16)
      {
        if (v56 >= v16)
        {
          v111 = -6705;
          goto LABEL_268;
        }

        if ((v16 - v56) < 2)
        {
          break;
        }

        v57 = v56 + 2;
        v58 = v56[1];
        if (&v56[v58 + 2] > v16)
        {
          v111 = -6750;
          goto LABEL_268;
        }

        v59 = *v56;
        v56 += v58 + 2;
        if (v59 == 7)
        {
          appended = 0;
          if (v58 == 1)
          {
            v60 = *v57;
            v9 = a5;
            if (*v57 > 4u)
            {
              v8 = a6;
              if (*v57 <= 6u)
              {
                v15 = v280;
                if (v60 == 5)
                {
                  v61 = -6763;
                }

                else
                {
                  if (v60 != 6)
                  {
                    goto LABEL_165;
                  }

                  v61 = -6764;
                }
              }

              else
              {
                v15 = v280;
                switch(v60)
                {
                  case 7:
                    v61 = -6773;
                    break;
                  case 8:
                    v61 = -71144;
                    break;
                  case 9:
                    v61 = -6776;
                    break;
                  default:
                    goto LABEL_165;
                }
              }

LABEL_168:
              appended = v61;
              v66 = *(__s + 2);
              if (*v66 > 50)
              {
                goto LABEL_190;
              }

              if (*v66 == -1)
              {
                if (!_LogCategory_Initialize(v66, 0x32u))
                {
                  goto LABEL_190;
                }

                v66 = *(__s + 2);
                v60 = *v57;
              }

              LogPrintF(v66, "OSStatus _SetupClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "### PairSetup client M2 bad status: 0x%X, %#m\n", a5, a6, a7, a8, v60);
              goto LABEL_190;
            }

            v8 = a6;
            if (*v57 <= 1u)
            {
              v15 = v280;
              if (*v57)
              {
                v61 = -6700;
              }

              else
              {
                v61 = -6737;
              }

              goto LABEL_168;
            }

            v15 = v280;
            if (v60 == 2)
            {
              v61 = -6754;
              goto LABEL_168;
            }

            if (v60 != 3)
            {
              if (v60 == 4)
              {
                v61 = -6727;
                goto LABEL_168;
              }

LABEL_165:
              if (v60 == 10)
              {
                v61 = -6735;
              }

              else
              {
                v61 = -6700;
              }

              goto LABEL_168;
            }

            UInt64 = TLV8GetUInt64(a2, &a2[a3], 8, &appended, 0);
            if (appended)
            {
              goto LABEL_190;
            }

            v63 = UInt64;
            if (UInt64 >> 31)
            {
              Int64 = 0;
              v32 = 0;
              v43 = -6710;
              goto LABEL_66;
            }

            _PairingSessionReset(__s);
            v64 = *(__s + 6);
            if (v64)
            {
              v65 = v64(*(__s + 25) | 0x20000u, v63, *(__s + 3));
              Int64 = 0;
              v32 = 0;
              if (v65)
              {
                v43 = v65;
              }

              else
              {
                v43 = -6771;
              }

              goto LABEL_66;
            }

LABEL_427:
            Int64 = 0;
            v32 = 0;
            v43 = -6745;
            goto LABEL_66;
          }

LABEL_394:
          Int64 = 0;
          v32 = 0;
          v217 = -6743;
LABEL_395:
          appended = v217;
LABEL_319:
          v9 = a5;
          v8 = a6;
          v15 = v280;
          goto LABEL_192;
        }
      }

      v111 = -6727;
LABEL_268:
      appended = v111;
      *(__s + 74) = TLV8GetUInt64(a2, &a2[a3], 19, 0, 0);
      v121 = TLV8GetUInt64(a2, &a2[a3], 31, 0, 0);
      *(__s + 38) = v121;
      v122 = *(__s + 13);
      if ((v122 & 2) != 0 && (v121 & 3) == 0)
      {
        v123 = *(__s + 2);
        v9 = a5;
        v8 = a6;
        v15 = v280;
        if (*v123 <= 50)
        {
          if (*v123 == -1)
          {
            if (!_LogCategory_Initialize(v123, 0x32u))
            {
              goto LABEL_340;
            }

            v123 = *(__s + 2);
          }

          LogPrintF(v123, "OSStatus _SetupClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "### PairSetup client SPAKE2+ not supported by server", a5, a6, a7, a8, v265);
        }

LABEL_340:
        Int64 = 0;
        v32 = 0;
        v43 = -6735;
        goto LABEL_66;
      }

      if ((v122 & 3) != 0)
      {
        __s[705] = (v121 & 3) != 0;
        if ((v121 & 3) != 0)
        {
LABEL_275:
          v124 = TLV8GetUInt64(a2, &a2[a3], 27, 0, 0);
          v9 = a5;
          v8 = a6;
          v15 = v280;
          if (v124)
          {
            Int64 = CFNumberCreateInt64(v124);
            if (!Int64)
            {
              v32 = 0;
              v43 = -6728;
              goto LABEL_66;
            }

            PairingSessionSetProperty(__s, @"setupCodeType", Int64);
            CFRelease(Int64);
          }

          __s[128] = 3;
          if (!*(__s + 50) || !*(__s + 51))
          {
            v125 = *(__s + 6);
            if (!v125)
            {
              goto LABEL_427;
            }

            v126 = *(__s + 25);
            if (__s[416])
            {
              v127 = v126 | 0x10000;
            }

            else
            {
              v127 = v126;
            }

            appended = v125(v127, 0xFFFFFFFFLL, *(__s + 3));
            if (appended)
            {
              goto LABEL_190;
            }

            if (!*(__s + 50) || !*(__s + 51))
            {
              Int64 = 0;
              v32 = 0;
              v43 = -6771;
              goto LABEL_66;
            }
          }

          v30 = 0;
          goto LABEL_32;
        }
      }

      else
      {
        __s[705] = 0;
      }

      v150 = *(__s + 91);
      if (v150)
      {
        SRPDelete_libsrp(v150);
        *(__s + 91) = 0;
      }

      v151 = malloc_type_calloc(1uLL, 0x38uLL, 0x103004063A0F53DuLL);
      if (!v151)
      {
        Int64 = 0;
        v32 = 0;
        v217 = -6728;
        goto LABEL_395;
      }

      *(__s + 91) = v151;
      appended = 0;
      v152 = *(__s + 94);
      if (v152)
      {
        free(v152);
        *(__s + 94) = 0;
      }

      *(__s + 95) = 0;
      *(__s + 94) = TLV8CopyCoalesced(a2, &a2[a3], 2, __s + 95, &appended);
      if (!appended)
      {
        if (*(__s + 95) <= 0xFuLL)
        {
          Int64 = 0;
          v32 = 0;
          appended = -6743;
          goto LABEL_318;
        }

        v153 = *(__s + 92);
        if (v153)
        {
          free(v153);
          *(__s + 92) = 0;
        }

        *(__s + 93) = 0;
        *(__s + 92) = TLV8CopyCoalesced(a2, &a2[a3], 3, __s + 93, &appended);
        if (!appended)
        {
          v10 = a4;
          if (!*(__s + 93))
          {
            goto LABEL_394;
          }

          goto LABEL_275;
        }
      }

      Int64 = 0;
      v32 = 0;
LABEL_318:
      v10 = a4;
      goto LABEL_319;
    }

    if (a3)
    {
      Int64 = 0;
      v32 = 0;
      v43 = -6705;
      goto LABEL_66;
    }

    appended = TLV8BufferAppendUInt64(&v300, 0, *(__s + 25) & 1);
    if (appended)
    {
      goto LABEL_86;
    }

    appended = TLV8BufferAppend(&v300, 6, v15, 1uLL);
    if (appended)
    {
      goto LABEL_86;
    }

    v36 = *(__s + 25);
    if ((v36 & 0x5770FF34) != 0 && (v36 & 0x7770FF10) != 0)
    {
      appended = TLV8BufferAppendUInt64(&v300, 19, v36 & 0x7770FF10);
      if (appended)
      {
        goto LABEL_86;
      }
    }

    v37 = *(__s + 13);
    if (v37)
    {
      appended = TLV8BufferAppendUInt64(&v300, 31, v37);
      if (appended)
      {
        goto LABEL_86;
      }
    }

    appended = TLV8BufferDetach(&v300, v10, v9);
    if (appended)
    {
      goto LABEL_86;
    }

    __s[128] = 2;
    v38 = *(__s + 2);
    v39 = *v38;
    if (*v38 <= 30)
    {
      if (v39 != -1)
      {
LABEL_50:
        if (v39 > 10)
        {
          v40 = 1;
        }

        else
        {
          v40 = v39 == -1 && !_LogCategory_Initialize(v38, 0xAu);
        }

        LogPrintF(v38, "OSStatus _SetupClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "PairSetup client M1 -- start request\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v40);
        goto LABEL_405;
      }

      if (_LogCategory_Initialize(*(__s + 2), 0x1Eu))
      {
        v38 = *(__s + 2);
        v39 = *v38;
        goto LABEL_50;
      }
    }

LABEL_405:
    v32 = 0;
    goto LABEL_408;
  }

  if (v14 == 3)
  {
    if (!*(__s + 50))
    {
      goto LABEL_427;
    }

    v30 = a3;
    if (!*(__s + 51))
    {
      goto LABEL_427;
    }

LABEL_32:
    appended = TLV8BufferAppend(&v300, 6, v15, 1uLL);
    if (appended)
    {
      Int64 = 0;
      v32 = 0;
      goto LABEL_192;
    }

    if (__s[705])
    {
      v277 = v9;
      v42 = *(__s + 2);
      if (*v42 > 30)
      {
        goto LABEL_222;
      }

      if (*v42 == -1)
      {
        if (!_LogCategory_Initialize(v42, 0x1Eu))
        {
LABEL_222:
          if (*(__s + 51))
          {
            v281 = v10;
            v80 = [[CUSPAKEProver alloc] initWithPasswordPtr:*(__s + 50) passwordLength:*(__s + 51)];
            v81 = *(__s + 89);
            if (v81)
            {
              CFRelease(v81);
            }

            v275 = v8;
            v82 = v80;
            *(__s + 89) = v82;
            __dst[0] = 0;
            v83 = [(CUSPAKEProver *)v82 generateM1AndReturnError:__dst];
            v84 = __dst[0];
            v92 = v84;
            if (v83)
            {
              v273 = v84;
              v93 = v82;
              v94 = [v83 sharePData];
              v95 = [v94 bytes];
              v96 = [v83 sharePData];
              v97 = TLV8BufferAppend(&v300, 34, v95, [v96 length]);

              if (v97 && (v102 = *(__s + 2), *v102 <= 90))
              {
                if (*v102 == -1)
                {
                  v82 = v93;
                  if (!_LogCategory_Initialize(v102, 0x5Au))
                  {
                    goto LABEL_235;
                  }

                  v102 = *(__s + 2);
                }

                else
                {
                  v82 = v93;
                }

                LogPrintF_safe(v102, "OSStatus _SetupClientSPAKE2Start(PairingSessionRef, TLV8Buffer *)", 0x5Au, "### PairSetup client SPAKE2 add M1 SharePData TLV failed: %d", v98, v99, v100, v101, v97);
              }

              else
              {
                v82 = v93;
              }

LABEL_235:
              v92 = v273;
              goto LABEL_324;
            }

            v104 = *(__s + 2);
            if (*v104 <= 90)
            {
              if (*v104 == -1)
              {
                if (!_LogCategory_Initialize(*(__s + 2), 0x5Au))
                {
                  goto LABEL_323;
                }

                v104 = *(__s + 2);
              }

              v105 = NSPrintF("%{error}", v85, v86, v87, v88, v89, v90, v91, v92);
              LogPrintF_safe(v104, "OSStatus _SetupClientSPAKE2Start(PairingSessionRef, TLV8Buffer *)", 0x5Au, "### PairSetup client SPAKE2 generate M1 failed: %@", v106, v107, v108, v109, v105);
            }

LABEL_323:
            LODWORD(v97) = -6700;
LABEL_324:

            appended = v97;
            v9 = v277;
            v10 = v281;
            if (v97)
            {
LABEL_326:
              Int64 = 0;
              v32 = 0;
              goto LABEL_327;
            }

LABEL_325:
            appended = TLV8BufferDetach(&v300, v10, v9);
            if (appended)
            {
              goto LABEL_326;
            }

            __s[128] = 4;
            v154 = *(__s + 2);
            v155 = *v154;
            if (*v154 > 30)
            {
              v32 = 0;
LABEL_335:
              v8 = v275;
LABEL_408:
              Int64 = 0;
              appended = 0;
              goto LABEL_192;
            }

            if (v155 == -1)
            {
              v8 = v275;
              if (!_LogCategory_Initialize(*(__s + 2), 0x1Eu))
              {
LABEL_384:
                v32 = 0;
                goto LABEL_408;
              }

              v154 = *(__s + 2);
              v155 = *v154;
            }

            else
            {
              v8 = v275;
            }

            if (v155 > 10)
            {
              v156 = 1;
            }

            else
            {
              v156 = v155 == -1 && !_LogCategory_Initialize(v154, 0xAu);
            }

            LogPrintF(v154, "OSStatus _SetupClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "PairSetup  client M3 -- verify request\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v156);
            goto LABEL_384;
          }

          v103 = *(__s + 2);
          if (*v103 > 90)
          {
            goto LABEL_245;
          }

          if (*v103 == -1)
          {
            if (!_LogCategory_Initialize(v103, 0x5Au))
            {
              goto LABEL_245;
            }

            v103 = *(__s + 2);
          }

          LogPrintF_safe(v103, "OSStatus _SetupClientSPAKE2Start(PairingSessionRef, TLV8Buffer *)", 0x5Au, "### PairSetup client SPAKE2 start failed: no password", a5, a6, a7, a8, v265);
LABEL_245:
          Int64 = 0;
          v32 = 0;
          v113 = -6745;
LABEL_246:
          appended = v113;
          goto LABEL_192;
        }

        v42 = *(__s + 2);
      }

      LogPrintF_safe(v42, "OSStatus _SetupClientSPAKE2Start(PairingSessionRef, TLV8Buffer *)", 0x1Eu, "PairSetup client SPAKE2 start", a5, a6, a7, a8, v265);
      goto LABEL_222;
    }

    if (v30)
    {
      Int64 = 0;
      v32 = 0;
      v113 = -6705;
      goto LABEL_246;
    }

    v44 = *(__s + 91);
    if (!v44 || (v45 = *(__s + 92)) == 0 || (v46 = *(__s + 93)) == 0 || (a7 = *(__s + 94)) == 0 || (a8 = *(__s + 95)) == 0)
    {
      Int64 = 0;
      v32 = 0;
      v113 = -6703;
      goto LABEL_246;
    }

    if (*(__s + 96))
    {
      free(*(__s + 96));
      *(__s + 96) = 0;
      v44 = *(__s + 91);
      a7 = *(__s + 94);
      a8 = *(__s + 95);
      v45 = *(__s + 92);
      v46 = *(__s + 93);
    }

    *(__s + 97) = 0;
    appended = SRPClientStart_libsrp(v44, &_kSRPParameters_3072_SHA512, "Pair-Setup", 10, *(__s + 50), *(__s + 51), a7, a8, v45, v46, &v285, &v284, __s + 96, __s + 97, &v283, &v282);
    if (!appended)
    {
      v47 = *(__s + 92);
      if (v47)
      {
        free(v47);
        *(__s + 92) = 0;
      }

      *(__s + 93) = 0;
      v48 = *(__s + 94);
      if (v48)
      {
        free(v48);
        *(__s + 94) = 0;
      }

      *(__s + 95) = 0;
      appended = TLV8BufferAppend(&v300, 3, v285, v284);
      if (!appended)
      {
        v275 = v8;
        appended = TLV8BufferAppend(&v300, 4, v283, v282);
        if (appended)
        {
          Int64 = 0;
          v32 = 0;
          goto LABEL_327;
        }

        goto LABEL_325;
      }
    }

LABEL_86:
    Int64 = 0;
    v32 = 0;
    goto LABEL_192;
  }

  if (v14 == 4)
  {
    v279 = a4;
    v33 = *(__s + 2);
    v34 = *v33;
    if (*v33 <= 30)
    {
      if (v34 != -1)
      {
LABEL_36:
        if (v34 > 10)
        {
          v35 = 1;
        }

        else
        {
          v35 = v34 == -1 && !_LogCategory_Initialize(v33, 0xAu);
        }

        LogPrintF(v33, "OSStatus _SetupClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "PairSetup client M4 -- verify response\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v35);
        goto LABEL_93;
      }

      if (_LogCategory_Initialize(*(__s + 2), 0x1Eu))
      {
        v33 = *(__s + 2);
        v34 = *v33;
        goto LABEL_36;
      }
    }

LABEL_93:
    v49 = a2;
    v10 = v279;
    while (1)
    {
      if (v49 == v16)
      {
LABEL_239:
        v110 = -6727;
        goto LABEL_251;
      }

      if (v49 >= v16)
      {
        v110 = -6705;
        goto LABEL_251;
      }

      if ((v16 - v49) < 2)
      {
        goto LABEL_239;
      }

      v50 = v49 + 2;
      v51 = v49[1];
      if (&v49[v51 + 2] > v16)
      {
        break;
      }

      v52 = *v49;
      v49 += v51 + 2;
      if (v52 == 7)
      {
        appended = 0;
        if (v51 == 1)
        {
          v53 = *v50;
          if (*v50 > 4u)
          {
            if (*v50 <= 6u)
            {
              if (v53 == 5)
              {
                v54 = -6763;
              }

              else
              {
                if (v53 != 6)
                {
                  goto LABEL_121;
                }

                v54 = -6764;
              }
            }

            else
            {
              switch(v53)
              {
                case 7:
                  v54 = -6773;
                  break;
                case 8:
                  v54 = -71144;
                  break;
                case 9:
                  v54 = -6776;
                  break;
                default:
                  goto LABEL_121;
              }
            }

LABEL_124:
            appended = v54;
            v55 = *(__s + 2);
            if (*v55 > 50)
            {
              goto LABEL_190;
            }

            if (*v55 == -1)
            {
              if (!_LogCategory_Initialize(v55, 0x32u))
              {
                goto LABEL_190;
              }

              v55 = *(__s + 2);
              v53 = *v50;
            }

            LogPrintF(v55, "OSStatus _SetupClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "### PairSetup client M4 bad status: 0x%X, %#m\n", a5, a6, a7, a8, v53);
            goto LABEL_190;
          }

          if (*v50 <= 1u)
          {
            if (*v50)
            {
              v54 = -6700;
            }

            else
            {
              v54 = -6737;
            }

            goto LABEL_124;
          }

          if (v53 != 2)
          {
            if (v53 == 3)
            {
              v54 = -6760;
            }

            else
            {
              if (v53 == 4)
              {
                v54 = -6727;
                goto LABEL_124;
              }

LABEL_121:
              if (v53 == 10)
              {
                v54 = -6735;
              }

              else
              {
                v54 = -6700;
              }
            }

            goto LABEL_124;
          }

LABEL_402:
          v219 = _SetupClientAuthenticationFailed(__s, a2, v16, a4, a5, a6, a7, a8);
          Int64 = 0;
          v32 = 0;
          appended = v219;
          goto LABEL_192;
        }

LABEL_392:
        Int64 = 0;
        v32 = 0;
        v43 = -6743;
LABEL_66:
        appended = v43;
        goto LABEL_192;
      }
    }

    v110 = -6750;
LABEL_251:
    appended = v110;
    if (!__s[705])
    {
      if (!*(__s + 91))
      {
        Int64 = 0;
        v32 = 0;
        v260 = -6703;
        goto LABEL_493;
      }

      appended = TLV8GetOrCopyCoalesced(a2, &a2[a3], 4, &v289, &v288, &v287, 0);
      v10 = v279;
      if (appended)
      {
        goto LABEL_190;
      }

      v117 = SRPClientVerify_libsrp(*(__s + 91));
      appended = v117;
      if (v287)
      {
        free(v287);
        v287 = 0;
        v117 = appended;
      }

      if (v117)
      {
        Int64 = 0;
        v32 = 0;
        v43 = -6754;
        goto LABEL_66;
      }

      v118 = *(__s + 91);
      if (v118)
      {
        SRPDelete_libsrp(v118);
        *(__s + 91) = 0;
      }

LABEL_263:
      v119 = *(__s + 96);
      if (!v119)
      {
        goto LABEL_428;
      }

      v120 = *(__s + 97);
      if (!v120)
      {
        goto LABEL_428;
      }

      CryptoHKDF(_kCryptoHashDescriptor_SHA512, v119, v120, "Pair-Setup-Encrypt-Salt", 0x17uLL, "Pair-Setup-Encrypt-Info", 23, 0x20uLL, (__s + 430));
      if (__s[100])
      {
        v203 = _MFiClientVerify(__s, a2, a3, "PS-Msg04", *(__s + 96), *(__s + 97), "MFi-Pair-Setup-Salt", 19, "MFi-Pair-Setup-Info", 19, 0);
        if (v203 == -71164 || v203 == 0)
        {
          v205 = v203;
        }

        else
        {
          v205 = -71145;
        }

        appended = v205;
        if (v205)
        {
          goto LABEL_190;
        }
      }

      else
      {
        _ClientDecryptExtra(__s, a2, a3);
      }

      v206 = *(__s + 25);
      if ((v206 & 0x10) == 0 && ((*(__s + 74) ^ v206) & 0x200) == 0)
      {
        v207 = *(__s + 112);
        if (v207)
        {
          v207(3, 0, *(__s + 113));
        }

        v275 = v8;
        v208 = *(__s + 24);
        __s[128] = 5;
        if (v208)
        {
          free(v208);
          *(__s + 24) = 0;
        }

        *(__s + 25) = 0;
        appended = PairingSessionCopyIdentity(__s, 1, __s + 24, __s + 526, (__s + 558));
        if (!appended)
        {
          v209 = strlen(*(__s + 24));
          Int64 = v209;
          *(__s + 25) = v209;
          if (!v209)
          {
            v32 = 0;
            v262 = -6708;
            goto LABEL_512;
          }

          v210 = malloc_type_malloc(v209 + 64, 0x100004077774924uLL);
          v287 = v210;
          if (!v210)
          {
            Int64 = 0;
            goto LABEL_508;
          }

          v211 = v210;
          CryptoHKDF(_kCryptoHashDescriptor_SHA512, *(__s + 96), *(__s + 97), "Pair-Setup-Controller-Sign-Salt", 0x1FuLL, "Pair-Setup-Controller-Sign-Info", 31, 0x20uLL, v210);
          memcpy(v211 + 32, *(__s + 24), *(__s + 25));
          v212 = &v211[*(__s + 25)];
          v213 = *(__s + 542);
          *(v212 + 2) = *(__s + 526);
          *(v212 + 3) = v213;
          v214 = *(__s + 120);
          if (v214)
          {
            v214(*(__s + 25), v211, Int64 + 64, __dst, *(__s + 121));
          }

          else
          {
            ccsha512_di();
            cced25519_sign();
          }

          free(v211);
          v287 = 0;
          appended = TLV8BufferAppend(&v296, 1, *(__s + 24), *(__s + 25));
          if (appended)
          {
            goto LABEL_433;
          }

          appended = TLV8BufferAppend(&v296, 3, __s + 526, 0x20uLL);
          if (appended)
          {
            goto LABEL_433;
          }

          appended = TLV8BufferAppend(&v296, 10, __dst, 0x40uLL);
          if (appended)
          {
            goto LABEL_433;
          }

          v240 = *(__s + 23);
          if (v240)
          {
            DataMutable = OPACKEncoderCreateDataMutable(v240, 0, &appended);
            Int64 = DataMutable;
            if (!DataMutable)
            {
              goto LABEL_434;
            }

            BytePtr = CFDataGetBytePtr(DataMutable);
            Length = CFDataGetLength(Int64);
            appended = TLV8BufferAppend(&v296, 18, BytePtr, Length);
            CFRelease(Int64);
            if (appended)
            {
              goto LABEL_433;
            }
          }

          v244 = *(__s + 28);
          if (v244)
          {
            appended = TLV8BufferAppend(&v296, 16, v244, *(__s + 29));
            if (appended)
            {
              goto LABEL_433;
            }
          }

          v245 = *(__s + 25);
          if ((v245 & 0x5770FF34) != 0 && (v245 & 0x1000E001) == 0)
          {
            SelfInfo = _PairingSessionGetSelfInfo(__s);
            if (SelfInfo)
            {
              v247 = OPACKEncoderCreateDataMutable(SelfInfo, 0, &appended);
              Int64 = v247;
              if (!v247)
              {
                goto LABEL_434;
              }

              v248 = CFDataGetBytePtr(v247);
              v249 = CFDataGetLength(Int64);
              appended = TLV8BufferAppend(&v296, 17, v248, v249);
              CFRelease(Int64);
              if (appended)
              {
                goto LABEL_433;
              }
            }
          }

          v250 = *(__s + 45);
          TypeID = CFDataGetTypeID();
          TypedValue = CFDictionaryGetTypedValue(v250, @"ownershipProof", TypeID, 0);
          if (TypedValue)
          {
            v253 = TypedValue;
            v254 = CFDataGetBytePtr(TypedValue);
            v255 = CFDataGetLength(v253);
            appended = TLV8BufferAppend(&v296, 26, v254, v255);
            if (appended)
            {
              goto LABEL_433;
            }
          }

          appended = _AddAppInfoTLV(*(__s + 45), &v296);
          if (appended)
          {
            goto LABEL_433;
          }

          v256 = malloc_type_malloc(v297 + 16, 0x100004077774924uLL);
          Int64 = v256;
          v287 = v256;
          if (!v256)
          {
            goto LABEL_508;
          }

          _chacha20_poly1305_encrypt_all((__s + 430), "PS-Msg05", 8, 0, 0, v296, v297, v256, v256->i64 + v297);
          appended = TLV8BufferAppend(&v300, 5, Int64, v297 + 16);
          if (appended)
          {
            goto LABEL_433;
          }

          free(Int64);
          v287 = 0;
          appended = TLV8BufferAppend(&v300, 6, v15, 1uLL);
          if (appended)
          {
            goto LABEL_433;
          }

          appended = TLV8BufferDetach(&v300, v279, v9);
          if (appended)
          {
            goto LABEL_433;
          }

          __s[128] = 6;
          v257 = *(__s + 2);
          v258 = *v257;
          if (*v257 <= 30)
          {
            if (v258 != -1)
            {
LABEL_473:
              if (v258 > 10)
              {
                v259 = 1;
              }

              else
              {
                v259 = v258 == -1 && !_LogCategory_Initialize(v257, 0xAu);
              }

              v10 = v279;
              LogPrintF(v257, "OSStatus _SetupClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "PairSetup client M5 -- exchange request\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v259);
              v32 = 0;
              goto LABEL_335;
            }

            if (_LogCategory_Initialize(*(__s + 2), 0x1Eu))
            {
              v257 = *(__s + 2);
              v258 = *v257;
              goto LABEL_473;
            }
          }

          v32 = 0;
          goto LABEL_488;
        }

        Int64 = 0;
        v32 = 0;
LABEL_327:
        v8 = v275;
        goto LABEL_192;
      }

      __s[128] = 7;
      *v10 = 0;
      *v9 = 0;
      v215 = *(__s + 2);
      if (*v215 <= 30)
      {
        if (*v215 == -1)
        {
          if (!_LogCategory_Initialize(v215, 0x1Eu))
          {
            goto LABEL_407;
          }

          v215 = *(__s + 2);
        }

        LogPrintF(v215, "OSStatus _SetupClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "PairSetup transient client done -- server authenticated\n", a5, a6, a7, a8, v266);
      }

LABEL_407:
      v32 = 1;
      goto LABEL_408;
    }

    v294 = 0;
    __dst[0] = 0;
    v293 = 0;
    v114 = TLV8GetOrCopyCoalesced(a2, &a2[a3], 35, __dst, &v294, &v293, 0);
    if (v114)
    {
      v115 = v114;
      v116 = *(__s + 2);
      if (*v116 <= 90)
      {
        if (*v116 == -1)
        {
          if (!_LogCategory_Initialize(v116, 0x5Au))
          {
            goto LABEL_380;
          }

          v116 = *(__s + 2);
        }

        LogPrintF_safe(v116, "OSStatus _SetupClientSPAKE2Verify(PairingSessionRef, const uint8_t *, const uint8_t *const, TLV8Buffer *)", 0x5Au, "### PairSetup SPAKE2 get M2 ShareVData failed: %d", a5, a6, a7, a8, v115);
      }

LABEL_380:
      appended = v115;
LABEL_401:
      v10 = v279;
      goto LABEL_402;
    }

    v276 = v8;
    v140 = objc_alloc_init(CUSPAKEM2);
    v141 = objc_alloc(MEMORY[0x1E695DEF0]);
    v142 = [v141 initWithBytes:__dst[0] length:v294];
    [(CUSPAKEM2 *)v140 setShareVData:v142];

    if (v293)
    {
      free(v293);
      v293 = 0;
    }

    v143 = TLV8GetOrCopyCoalesced(a2, &a2[a3], 33, __dst, &v294, &v293, 0);
    if (v143)
    {
      v148 = v143;
      v149 = *(__s + 2);
      if (*v149 <= 90)
      {
        if (*v149 == -1)
        {
          if (!_LogCategory_Initialize(v149, 0x5Au))
          {
            goto LABEL_400;
          }

          v149 = *(__s + 2);
        }

        LogPrintF_safe(v149, "OSStatus _SetupClientSPAKE2Verify(PairingSessionRef, const uint8_t *, const uint8_t *const, TLV8Buffer *)", 0x5Au, "### PairSetup SPAKE2 get M2 ConfirmVData failed: %d", v144, v145, v146, v147, v148);
      }

LABEL_400:

      appended = v148;
      v8 = v276;
      goto LABEL_401;
    }

    v157 = objc_alloc(MEMORY[0x1E695DEF0]);
    v158 = [v157 initWithBytes:__dst[0] length:v294];
    [(CUSPAKEM2 *)v140 setConfirmVData:v158];

    if (v293)
    {
      free(v293);
      v293 = 0;
    }

    v159 = *(__s + 89);
    if (v159)
    {
      v164 = v159;
      v292 = 0;
      v165 = [v159 generateM3WithM2:v140 error:&v292];
      v166 = v292;
      v174 = v166;
      if (!v165)
      {
        v220 = *(__s + 2);
        if (*v220 > 90)
        {
          v274 = -6754;
          goto LABEL_483;
        }

        v271 = v140;
        if (*v220 == -1)
        {
          if (!_LogCategory_Initialize(v220, 0x5Au))
          {
            v274 = -6754;
            goto LABEL_483;
          }

          v221 = *(__s + 2);
        }

        else
        {
          v221 = *(__s + 2);
        }

        v278 = NSPrintF("%{error}", v167, v168, v169, v170, v171, v172, v173, v174);
        LogPrintF_safe(v221, "OSStatus _SetupClientSPAKE2Verify(PairingSessionRef, const uint8_t *, const uint8_t *const, TLV8Buffer *)", 0x5Au, "### PairSetup client SPAKE2 generate M3 failed: %@", v222, v223, v224, v225, v278);
        v274 = -6754;
        goto LABEL_481;
      }

      v291 = v166;
      v278 = [v164 finishAndReturnError:&v291];
      v272 = v291;

      v175 = *(__s + 89);
      if (v175)
      {
        CFRelease(v175);
        *(__s + 89) = 0;
      }

      v176 = [v278 length];
      if (v176)
      {
        v184 = v176;
        v271 = v140;
        v185 = malloc_type_malloc(v176, 0x100004077774924uLL);
        if (v185)
        {
          v190 = v185;
          v268 = v164;
          memcpy(v185, [v278 bytes], v184);
          v191 = *(__s + 96);
          if (v191)
          {
            memset_s(v191, *(__s + 97), 0, *(__s + 97));
            v192 = *(__s + 96);
            if (v192)
            {
              free(v192);
            }
          }

          *(__s + 96) = v190;
          *(__s + 97) = v184;
          [v165 confirmPData];
          v194 = v193 = v165;
          v195 = [v194 bytes];
          v269 = v193;
          v196 = [v193 confirmPData];
          v197 = TLV8BufferAppend(&v300, 32, v195, [v196 length]);

          v274 = v197;
          if (v197)
          {
            v202 = *(__s + 2);
            if (*v202 <= 90)
            {
              if (*v202 == -1)
              {
                if (!_LogCategory_Initialize(v202, 0x5Au))
                {
                  goto LABEL_477;
                }

                v202 = *(__s + 2);
              }

              LogPrintF_safe(v202, "OSStatus _SetupClientSPAKE2Verify(PairingSessionRef, const uint8_t *, const uint8_t *const, TLV8Buffer *)", 0x5Au, "### PairSetup client SPAKE2 add M3 ConfirmPData TLV failed: %d", v198, v199, v200, v201, v197);
            }
          }

          else
          {
            v274 = 0;
          }

LABEL_477:
          v174 = v272;
          v164 = v268;
          v165 = v269;
LABEL_481:
          v140 = v271;
          goto LABEL_482;
        }

        v239 = *(__s + 2);
        if (*v239 <= 90)
        {
          if (*v239 == -1)
          {
            if (!_LogCategory_Initialize(v239, 0x5Au))
            {
              goto LABEL_480;
            }

            v239 = *(__s + 2);
          }

          LogPrintF_safe(v239, "OSStatus _SetupClientSPAKE2Verify(PairingSessionRef, const uint8_t *, const uint8_t *const, TLV8Buffer *)", 0x5Au, "### PairSetup client SPAKE2 malloc secret failed", v186, v187, v188, v189, v265);
        }

LABEL_480:
        v274 = -6728;
        v174 = v272;
        goto LABEL_481;
      }

      v233 = *(__s + 2);
      if (*v233 > 90)
      {
        v274 = -6700;
        v174 = v272;
LABEL_482:

LABEL_483:
        v8 = v276;
        appended = v274;
        v10 = v279;
        if (v274)
        {
          goto LABEL_402;
        }

        goto LABEL_263;
      }

      v270 = v165;
      if (*v233 == -1)
      {
        if (!_LogCategory_Initialize(v233, 0x5Au))
        {
          v274 = -6700;
          v174 = v272;
          goto LABEL_453;
        }

        v233 = *(__s + 2);
      }

      v234 = NSPrintF("%{error}", v177, v178, v179, v180, v181, v182, v183, v272);
      LogPrintF_safe(v233, "OSStatus _SetupClientSPAKE2Verify(PairingSessionRef, const uint8_t *, const uint8_t *const, TLV8Buffer *)", 0x5Au, "### PairSetup client SPAKE2 finish failed: %@", v235, v236, v237, v238, v234);

      v274 = -6700;
      v174 = v272;
LABEL_453:
      v165 = v270;
      goto LABEL_482;
    }

    v218 = *(__s + 2);
    if (*v218 <= 90)
    {
      if (*v218 == -1)
      {
        if (!_LogCategory_Initialize(v218, 0x5Au))
        {
          goto LABEL_446;
        }

        v218 = *(__s + 2);
      }

      LogPrintF_safe(v218, "OSStatus _SetupClientSPAKE2Verify(PairingSessionRef, const uint8_t *, const uint8_t *const, TLV8Buffer *)", 0x5Au, "### PairSetup client SPAKE2 verify failed: no prover", v160, v161, v162, v163, v265);
    }

LABEL_446:

    appended = -6745;
    goto LABEL_401;
  }

  if (v14 != 6)
  {
    goto LABEL_53;
  }

  if (!*(__s + 96) || !*(__s + 97))
  {
LABEL_428:
    Int64 = 0;
    v32 = 0;
    v43 = -6703;
    goto LABEL_66;
  }

  v279 = a4;
  v21 = *(__s + 2);
  v22 = *v21;
  if (*v21 <= 30)
  {
    if (v22 != -1)
    {
      goto LABEL_20;
    }

    if (_LogCategory_Initialize(*(__s + 2), 0x1Eu))
    {
      v21 = *(__s + 2);
      v22 = *v21;
LABEL_20:
      if (v22 > 10)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22 == -1 && !_LogCategory_Initialize(v21, 0xAu);
      }

      LogPrintF(v21, "OSStatus _SetupClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "PairSetup client M6 -- exchange response\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v23);
    }
  }

  v67 = a2;
  v10 = v279;
  while (2)
  {
    if (v67 == v16)
    {
LABEL_241:
      v112 = -6727;
      goto LABEL_289;
    }

    if (v67 >= v16)
    {
      v112 = -6705;
      goto LABEL_289;
    }

    if ((v16 - v67) < 2)
    {
      goto LABEL_241;
    }

    v68 = v67 + 2;
    v69 = v67[1];
    if (&v67[v69 + 2] > v16)
    {
      v112 = -6750;
LABEL_289:
      appended = v112;
      v128 = TLV8CopyCoalesced(a2, &a2[a3], 5, &v286, &appended);
      Int64 = v128;
      if (appended)
      {
        goto LABEL_191;
      }

      v129 = v286;
      if (v286 > 0xF)
      {
        v286 -= 16;
        v130 = &v128[-1].u8[v129];
        appended = _chacha20_poly1305_decrypt_all((__s + 430), "PS-Msg06", 8, 0, 0, v128, v286, v128, v130, 16);
        if (appended)
        {
LABEL_390:
          v32 = 0;
          goto LABEL_391;
        }

        v131 = *(__s + 30);
        if (v131)
        {
          free(v131);
        }

        v275 = v8;
        *(__s + 31) = 0;
        *(__s + 30) = TLV8CopyCoalesced(Int64, v130, 16, __s + 31, 0);
        v132 = *(__s + 41);
        if (v132)
        {
          CFRelease(v132);
          *(__s + 41) = 0;
        }

        v133 = TLV8CopyCoalesced(Int64, v130, 17, &v288, 0);
        if (v133)
        {
          v134 = v133;
          *(__s + 41) = _OPACKDecodeBytes(0, v133, v288, 0, &appended);
          free(v134);
          v135 = *(__s + 41);
          if (!v135)
          {
            goto LABEL_434;
          }

          v136 = CFGetTypeID(v135);
          v8 = v275;
          if (v136 != CFDictionaryGetTypeID())
          {
            appended = -6756;
            v261 = *(__s + 41);
            if (v261)
            {
              CFRelease(v261);
              v32 = 0;
              *(__s + 41) = 0;
              goto LABEL_435;
            }

LABEL_434:
            v32 = 0;
LABEL_435:
            v8 = v275;
LABEL_391:
            v10 = v279;
            goto LABEL_192;
          }

          v137 = *(__s + 41);
          v138 = CFDictionaryGetTypeID();
          v139 = CFDictionaryGetTypedValue(v137, @"groupInfo", v138, 0);
        }

        else
        {
          v139 = 0;
        }

        PairingSessionSetProperty(__s, @"groupInfoPeer", v139);
        appended = _ExtractAppInfoTLV(__s, Int64, v130);
        if (appended)
        {
          goto LABEL_390;
        }

        v216 = *(__s + 39);
        if (v216)
        {
          free(v216);
          *(__s + 39) = 0;
        }

        *(__s + 40) = 0;
        *(__s + 39) = TLV8CopyCoalesced(Int64, v130, 1, __s + 40, &appended);
        if (appended)
        {
          goto LABEL_390;
        }

        if (!*(__s + 40))
        {
          v32 = 0;
          v262 = -6743;
          goto LABEL_512;
        }

        appended = TLV8GetBytes(Int64, v130, 3, 0x20uLL, 0x20uLL, __s + 622, 0, 0);
        if (appended)
        {
          goto LABEL_434;
        }

        appended = TLV8GetBytes(Int64, v130, 10, 0x40uLL, 0x40uLL, __dst, 0, 0);
        if (appended)
        {
          goto LABEL_434;
        }

        v226 = malloc_type_malloc(*(__s + 40) + 64, 0x100004077774924uLL);
        v287 = v226;
        if (v226)
        {
          v227 = v226;
          CryptoHKDF(_kCryptoHashDescriptor_SHA512, *(__s + 96), *(__s + 97), "Pair-Setup-Accessory-Sign-Salt", 0x1EuLL, "Pair-Setup-Accessory-Sign-Info", 30, 0x20uLL, v226);
          memcpy(v227 + 32, *(__s + 39), *(__s + 40));
          v228 = &v227[*(__s + 40)];
          v229 = *(__s + 638);
          *(v228 + 2) = *(__s + 622);
          *(v228 + 3) = v229;
          ccsha512_di();
          appended = cced25519_verify();
          if (!appended)
          {
            free(v227);
            v287 = 0;
            if (Int64)
            {
              free(Int64);
            }

            v230 = _PairingSessionVerifyAllowed(__s);
            appended = v230;
            if (!v230)
            {
              appended = PairingSessionSavePeer(__s, *(__s + 39), *(__s + 40), __s + 622, a5, a6, a7, a8);
              if (!appended)
              {
                v231 = *(__s + 50);
                if (v231)
                {
                  free(v231);
                  *(__s + 50) = 0;
                }

                *(__s + 51) = 0;
                __s[416] = 0;
                __s[128] = 7;
                *v279 = 0;
                *v9 = 0;
                v232 = *(__s + 2);
                if (*v232 > 30)
                {
                  goto LABEL_487;
                }

                if (*v232 == -1)
                {
                  if (!_LogCategory_Initialize(v232, 0x1Eu))
                  {
                    goto LABEL_487;
                  }

                  v232 = *(__s + 2);
                }

                LogPrintF(v232, "OSStatus _SetupClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "PairSetup client done -- server authenticated\n", a5, a6, a7, a8, v267);
LABEL_487:
                v32 = 1;
LABEL_488:
                v8 = v275;
                v10 = v279;
                goto LABEL_408;
              }

              goto LABEL_433;
            }

            v263 = v230;
            v264 = *(__s + 2);
            if (*v264 <= 50)
            {
              if (*v264 == -1)
              {
                if (!_LogCategory_Initialize(v264, 0x32u))
                {
                  goto LABEL_433;
                }

                v264 = *(__s + 2);
                v263 = appended;
              }

              LogPrintF(v264, "OSStatus _SetupClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "### PairSetup client: server not allowed: %#m\n", a5, a6, a7, a8, v263);
            }

LABEL_433:
            Int64 = 0;
            goto LABEL_434;
          }

          v32 = 0;
          v262 = -6754;
LABEL_512:
          appended = v262;
          goto LABEL_435;
        }

LABEL_508:
        v32 = 0;
        v262 = -6728;
        goto LABEL_512;
      }

      v32 = 0;
      v260 = -6743;
LABEL_493:
      appended = v260;
      goto LABEL_391;
    }

    v70 = *v67;
    v67 += v69 + 2;
    if (v70 != 7)
    {
      continue;
    }

    break;
  }

  if (v69 != 1)
  {
    goto LABEL_392;
  }

  v71 = *v68;
  if (v71 >= 0xA)
  {
    if (v71 == 10)
    {
      v72 = -6735;
    }

    else
    {
      v72 = -6700;
    }
  }

  else
  {
    v72 = dword_191FFB0EC[*v68];
  }

  appended = v72;
  v73 = *(__s + 2);
  if (*v73 <= 50)
  {
    if (*v73 != -1)
    {
LABEL_189:
      LogPrintF(v73, "OSStatus _SetupClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "### PairSetup client M6 bad status: 0x%X, %#m\n", a5, a6, a7, a8, v71);
      goto LABEL_190;
    }

    if (_LogCategory_Initialize(v73, 0x32u))
    {
      v73 = *(__s + 2);
      v71 = *v68;
      goto LABEL_189;
    }
  }

LABEL_190:
  Int64 = 0;
LABEL_191:
  v32 = 0;
LABEL_192:
  if (v9 && v10 && !appended)
  {
    _PairingSessionUpdateTranscript(__s, a2, a3, *v10, *v9);
  }

  *v8 = v32;
  if (v302)
  {
    free(v302);
    v302 = 0;
  }

  if (v298)
  {
    free(v298);
    v298 = 0;
  }

  if (v287)
  {
    free(v287);
  }

  if (Int64)
  {
    free(Int64);
  }

  if (v285)
  {
    free(v285);
  }

  if (v283)
  {
    free(v283);
  }

  v74 = appended;
  if (appended != -6771)
  {
    if (appended)
    {
      v75 = *(__s + 2);
      v76 = *v75;
      if (*v75 <= 50)
      {
        if (v76 != -1)
        {
          goto LABEL_212;
        }

        v78 = _LogCategory_Initialize(*(__s + 2), 0x32u);
        v74 = appended;
        if (v78)
        {
          v75 = *(__s + 2);
          v76 = *v75;
LABEL_212:
          v77 = *v15;
          if (v76 == -1)
          {
            _LogCategory_Initialize(v75, 0x28u);
          }

          LogPrintF(v75, "OSStatus _SetupClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "### PairSetup client state %d failed: %#m\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v77);
          return appended;
        }
      }
    }
  }

  return v74;
}

uint64_t _SetupServerExchange(uint64_t a1, unsigned __int8 *a2, CFIndex a3, UInt8 **a4, size_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a3;
  v303[1] = *MEMORY[0x1E69E9840];
  appended = 0;
  v12 = &a2[a3];
  memset(v302, 0, sizeof(v302));
  memset(v298, 0, sizeof(v298));
  v289 = 0;
  length = 0;
  v287 = 0;
  v288 = 0;
  v285 = 0;
  v286 = 0;
  v283 = 0;
  v284 = 0;
  v281 = 0;
  v282 = 0;
  v279 = 0;
  v280 = 0;
  __dst = 0;
  v299 = v302;
  v300 = xmmword_191FF95F0;
  v301 = 0;
  v295 = v298;
  v296 = xmmword_191FF95F0;
  v13 = a2;
  v297 = 0;
  do
  {
    if (v13 == v12)
    {
LABEL_45:
      v27 = -6727;
      goto LABEL_48;
    }

    if (v13 >= v12)
    {
      v27 = -6705;
      goto LABEL_48;
    }

    if ((v12 - v13) < 2)
    {
      goto LABEL_45;
    }

    v14 = v13 + 2;
    v15 = v13[1];
    if (&v13[v15 + 2] > v12)
    {
      v27 = -6750;
LABEL_48:
      v24 = 0;
      v25 = 0;
      v26 = 0;
      goto LABEL_49;
    }

    v16 = *v13;
    v13 += v15 + 2;
  }

  while (v16 != 6);
  length = v15;
  appended = 0;
  if (v15 != 1)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = -6743;
    goto LABEL_49;
  }

  if (*v14 == 1)
  {
    _PairingSessionReset(a1);
  }

  v18 = (a1 + 128);
  v17 = *(a1 + 128);
  if (!*(a1 + 128))
  {
    v17 = 1;
    *v18 = 1;
  }

  if (*v14 != v17)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v224 = -6709;
    goto LABEL_363;
  }

  v19 = *(a1 + 16);
  v20 = *v19;
  if (v17 == 5)
  {
    if (v20 > 30)
    {
      goto LABEL_88;
    }

    if (v20 == -1)
    {
      if (!_LogCategory_Initialize(*(a1 + 16), 0x1Eu))
      {
        goto LABEL_88;
      }

      v19 = *(a1 + 16);
      v20 = *v19;
    }

    if (v20 > 10)
    {
      v23 = 1;
    }

    else
    {
      v23 = v20 == -1 && !_LogCategory_Initialize(v19, 0xAu);
    }

    LogPrintF(v19, "OSStatus _SetupServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "PairSetup server M5 -- exchange request\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v23);
LABEL_88:
    if (!*(a1 + 705))
    {
      if (!*(a1 + 768))
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v224 = -6703;
        goto LABEL_363;
      }

      v29 = a5;
      if (!*(a1 + 776))
      {
        goto LABEL_371;
      }

LABEL_95:
      v77 = TLV8CopyCoalesced(a2, v12, 5, &v289, &appended);
      v24 = v77;
      if (appended)
      {
        goto LABEL_244;
      }

      v78 = v289;
      if (v289 <= 0xF)
      {
LABEL_425:
        v25 = 0;
        v26 = 0;
        v226 = -6743;
        goto LABEL_372;
      }

      v289 -= 16;
      v79 = &v77[-1].u8[v78];
      appended = _chacha20_poly1305_decrypt_all((a1 + 430), "PS-Msg05", 8, 0, 0, v77, v289, v77, v79, 16);
      if (appended)
      {
LABEL_244:
        v25 = 0;
        v26 = 0;
LABEL_245:
        v8 = a6;
        v36 = a4;
        goto LABEL_310;
      }

      v80 = *(a1 + 288);
      if (v80)
      {
        CFRelease(v80);
        *(a1 + 288) = 0;
      }

      v81 = TLV8CopyCoalesced(v24, v79, 18, &length, 0);
      if (v81)
      {
        v82 = v81;
        v83 = _OPACKDecodeBytes(0, v81, length, 0, &appended);
        free(v82);
        if (!v83)
        {
          goto LABEL_136;
        }

        v84 = CFGetTypeID(v83);
        if (v84 != CFDictionaryGetTypeID())
        {
          appended = -6756;
          CFRelease(v83);
          goto LABEL_136;
        }

        *(a1 + 288) = _PairingSessionIntersectACL(a1, v83, &appended);
        v89 = appended;
        if (appended)
        {
          v90 = *(a1 + 16);
          v8 = a6;
          if (*v90 > 50)
          {
            goto LABEL_285;
          }

          if (*v90 == -1)
          {
            if (!_LogCategory_Initialize(v90, 0x32u))
            {
LABEL_285:
              CFRelease(v83);
              if (appended <= -6764)
              {
                v29 = a5;
                if (appended > -6774)
                {
                  if (appended == -6773)
                  {
                    v214 = 7;
                    goto LABEL_357;
                  }

                  if (appended == -6764)
                  {
                    v214 = 6;
                    goto LABEL_357;
                  }
                }

                else
                {
                  if (appended == -71144)
                  {
                    v214 = 8;
                    goto LABEL_357;
                  }

                  if (appended == -6776)
                  {
                    v214 = 9;
                    goto LABEL_357;
                  }
                }
              }

              else
              {
                v29 = a5;
                if (appended <= -6755)
                {
                  if (appended == -6763)
                  {
                    v214 = 5;
                    goto LABEL_357;
                  }

                  if (appended == -6760)
                  {
                    v214 = 3;
                    goto LABEL_357;
                  }
                }

                else
                {
                  switch(appended)
                  {
                    case 0xFFFFE59E:
                      v214 = 2;
                      goto LABEL_357;
                    case 0xFFFFE5B9:
                      v214 = 4;
                      goto LABEL_357;
                    case 0xFFFFE5D4:
                      v214 = 1;
                      goto LABEL_357;
                  }
                }
              }

              if (appended == -6735)
              {
                v214 = 10;
              }

              else
              {
                v214 = 1;
              }

LABEL_357:
              appended = TLV8BufferAppendUInt64(&v299, 7, v214);
              if (!appended)
              {
                __s[0] = 6;
                appended = TLV8BufferAppend(&v299, 6, __s, 1uLL);
                if (!appended)
                {
                  v216 = TLV8BufferDetach(&v299, a4, v29);
                  v36 = a4;
                  goto LABEL_309;
                }
              }

LABEL_359:
              v25 = 0;
              v26 = 0;
              goto LABEL_205;
            }

            v90 = *(a1 + 16);
            v89 = appended;
          }

          LogPrintF(v90, "OSStatus _SetupServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "### PairVerify server M5 requested ACL not allowed: %#m, %@\n", v85, v86, v87, v88, v89);
          goto LABEL_285;
        }

        CFRelease(v83);
        v29 = a5;
      }

      v177 = *(a1 + 240);
      if (v177)
      {
        free(v177);
      }

      *(a1 + 248) = 0;
      *(a1 + 240) = TLV8CopyCoalesced(v24, v79, 16, (a1 + 248), 0);
      appended = _ExtractAppInfoTLV(a1, v24, v79);
      if (appended)
      {
        goto LABEL_244;
      }

      v178 = *(a1 + 328);
      if (v178)
      {
        CFRelease(v178);
        *(a1 + 328) = 0;
      }

      v179 = TLV8CopyCoalesced(v24, v79, 17, &length, 0);
      if (v179)
      {
        v180 = v179;
        *(a1 + 328) = _OPACKDecodeBytes(0, v179, length, 0, &appended);
        free(v180);
        v181 = *(a1 + 328);
        if (!v181)
        {
          goto LABEL_136;
        }

        v182 = CFGetTypeID(v181);
        if (v182 != CFDictionaryGetTypeID())
        {
          appended = -6756;
          v263 = *(a1 + 328);
          if (v263)
          {
            CFRelease(v263);
            v25 = 0;
            v26 = 0;
            *(a1 + 328) = 0;
            goto LABEL_137;
          }

          goto LABEL_136;
        }

        v183 = *(a1 + 328);
        TypeID = CFDictionaryGetTypeID();
        TypedValue = CFDictionaryGetTypedValue(v183, @"groupInfo", TypeID, 0);
      }

      else
      {
        TypedValue = 0;
      }

      PairingSessionSetProperty(a1, @"groupInfoPeer", TypedValue);
      v200 = TLV8CopyCoalesced(v24, v79, 26, &length, 0);
      if (!v200)
      {
        goto LABEL_273;
      }

      v201 = v200;
      v202 = CFDataCreate(0, v200, length);
      free(v201);
      if (!v202)
      {
        v25 = 0;
        v26 = 0;
        v224 = -6728;
        goto LABEL_363;
      }

      appended = PairingSessionSetProperty(a1, @"ownershipProof", v202);
      CFRelease(v202);
      if (!appended)
      {
LABEL_273:
        v203 = *(a1 + 312);
        if (v203)
        {
          free(v203);
          *(a1 + 312) = 0;
        }

        *(a1 + 320) = 0;
        *(a1 + 312) = TLV8CopyCoalesced(v24, v79, 1, (a1 + 320), &appended);
        v29 = a5;
        if (appended)
        {
          goto LABEL_244;
        }

        if (*(a1 + 320))
        {
          appended = TLV8GetBytes(v24, v79, 3, 0x20uLL, 0x20uLL, (a1 + 622), 0, 0);
          if (!appended)
          {
            appended = TLV8GetBytes(v24, v79, 10, 0x40uLL, 0x40uLL, __s, 0, 0);
            if (!appended)
            {
              length = *(a1 + 320) + 64;
              v204 = malloc_type_malloc(length, 0x100004077774924uLL);
              v25 = v204;
              if (v204)
              {
                CryptoHKDF(_kCryptoHashDescriptor_SHA512, *(a1 + 768), *(a1 + 776), "Pair-Setup-Controller-Sign-Salt", 0x1FuLL, "Pair-Setup-Controller-Sign-Info", 31, 0x20uLL, v204);
                memcpy(&v25[2], *(a1 + 312), *(a1 + 320));
                v205 = &v25->i8[*(a1 + 320)];
                v206 = *(a1 + 638);
                *(v205 + 2) = *(a1 + 622);
                *(v205 + 3) = v206;
                ccsha512_di();
                v207 = cced25519_verify();
                appended = v207;
                if (v207)
                {
                  v212 = v207;
                  v213 = *(a1 + 16);
                  if (*v213 <= 50)
                  {
                    if (*v213 == -1)
                    {
                      if (!_LogCategory_Initialize(v213, 0x32u))
                      {
                        goto LABEL_402;
                      }

                      v213 = *(a1 + 16);
                      v212 = appended;
                    }

                    LogPrintF(v213, "OSStatus _SetupServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "### PairSetup server bad signature: %#m\n", v208, v209, v210, v211, v212);
                  }

LABEL_402:
                  v293[0] = 2;
                  appended = TLV8BufferAppend(&v299, 7, v293, 1uLL);
                  if (!appended)
                  {
                    v293[0] = 6;
                    appended = TLV8BufferAppend(&v299, 6, v293, 1uLL);
                    if (!appended)
                    {
                      appended = TLV8BufferDetach(&v299, a4, a5);
                      if (!appended)
                      {
                        _PairingSessionReset(a1);
                      }
                    }
                  }

                  goto LABEL_478;
                }

                free(v25);
                v229 = _PairingSessionVerifyAllowed(a1);
                appended = v229;
                if (v229)
                {
                  v234 = v229;
                  v235 = *(a1 + 16);
                  if (*v235 <= 50)
                  {
                    if (*v235 == -1)
                    {
                      if (!_LogCategory_Initialize(v235, 0x32u))
                      {
                        goto LABEL_419;
                      }

                      v235 = *(a1 + 16);
                      v234 = appended;
                    }

                    LogPrintF(v235, "OSStatus _SetupServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "### PairSetup server: client not allowed: %#m\n", v230, v231, v232, v233, v234);
                  }

LABEL_419:
                  v293[0] = 9;
                  appended = TLV8BufferAppend(&v299, 7, v293, 1uLL);
                  if (!appended)
                  {
                    v293[0] = 6;
                    appended = TLV8BufferAppend(&v299, 6, v293, 1uLL);
                    if (!appended)
                    {
                      appended = TLV8BufferDetach(&v299, a4, a5);
                      if (!appended)
                      {
                        _PairingSessionReset(a1);
                      }
                    }
                  }

                  goto LABEL_477;
                }

                v236 = PairingSessionSavePeer(a1, *(a1 + 312), *(a1 + 320), (a1 + 622), v230, v231, v232, v233);
                appended = v236;
                if (v236)
                {
                  v241 = *(a1 + 16);
                  if (*v241 > 60)
                  {
                    goto LABEL_449;
                  }

                  if (*v241 == -1)
                  {
                    v260 = _LogCategory_Initialize(*(a1 + 16), 0x3Cu);
                    v236 = appended;
                    if (!v260)
                    {
LABEL_449:
                      if (v236 <= -6764)
                      {
                        if (v236 > -6774)
                        {
                          if (v236 == -6773)
                          {
                            v261 = 7;
                            goto LABEL_475;
                          }

                          if (v236 == -6764)
                          {
                            v261 = 6;
                            goto LABEL_475;
                          }
                        }

                        else
                        {
                          if (v236 == -71144)
                          {
                            v261 = 8;
                            goto LABEL_475;
                          }

                          if (v236 == -6776)
                          {
                            v261 = 9;
                            goto LABEL_475;
                          }
                        }
                      }

                      else if (v236 <= -6755)
                      {
                        if (v236 == -6763)
                        {
                          v261 = 5;
                          goto LABEL_475;
                        }

                        if (v236 == -6760)
                        {
                          v261 = 3;
                          goto LABEL_475;
                        }
                      }

                      else
                      {
                        switch(v236)
                        {
                          case 0xFFFFE59E:
                            v261 = 2;
                            goto LABEL_475;
                          case 0xFFFFE5B9:
                            v261 = 4;
                            goto LABEL_475;
                          case 0xFFFFE5D4:
                            v261 = 1;
                            goto LABEL_475;
                        }
                      }

                      if (v236 == -6735)
                      {
                        v261 = 10;
                      }

                      else
                      {
                        v261 = 1;
                      }

LABEL_475:
                      appended = TLV8BufferAppendUInt64(&v299, 7, v261);
                      if (!appended)
                      {
                        v293[0] = 6;
                        appended = TLV8BufferAppend(&v299, 6, v293, 1uLL);
                        if (!appended)
                        {
                          v29 = a5;
                          v262 = TLV8BufferDetach(&v299, a4, a5);
                          v36 = a4;
                          v25 = 0;
                          v26 = 0;
                          appended = v262;
                          goto LABEL_64;
                        }
                      }

                      goto LABEL_477;
                    }

                    v241 = *(a1 + 16);
                  }

                  LogPrintF(v241, "OSStatus _SetupServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x3Cu, "### PairSetup server save peer failed: %#m\n", v237, v238, v239, v240, v236);
                  LODWORD(v236) = appended;
                  goto LABEL_449;
                }

                v242 = *(a1 + 192);
                *(a1 + 128) = 6;
                if (v242)
                {
                  free(v242);
                  *(a1 + 192) = 0;
                }

                *(a1 + 200) = 0;
                appended = PairingSessionCopyIdentity(a1, 1, (a1 + 192), (a1 + 526), a1 + 558);
                if (appended)
                {
                  goto LABEL_477;
                }

                v243 = strlen(*(a1 + 192));
                *(a1 + 200) = v243;
                if (!v243)
                {
                  v25 = 0;
                  v26 = 0;
                  v264 = -6708;
                  goto LABEL_493;
                }

                v244 = v243 + 64;
                length = v243 + 64;
                v245 = malloc_type_malloc(v243 + 64, 0x100004077774924uLL);
                v25 = v245;
                if (v245)
                {
                  CryptoHKDF(_kCryptoHashDescriptor_SHA512, *(a1 + 768), *(a1 + 776), "Pair-Setup-Accessory-Sign-Salt", 0x1EuLL, "Pair-Setup-Accessory-Sign-Info", 30, 0x20uLL, v245);
                  memcpy(&v25[2], *(a1 + 192), *(a1 + 200));
                  v246 = &v25->i8[*(a1 + 200)];
                  v247 = *(a1 + 542);
                  *(v246 + 2) = *(a1 + 526);
                  *(v246 + 3) = v247;
                  v248 = *(a1 + 960);
                  if (v248)
                  {
                    v248(*(a1 + 100), v25, v244, __s, *(a1 + 968));
                  }

                  else
                  {
                    ccsha512_di();
                    cced25519_sign();
                  }

                  free(v25);
                  appended = TLV8BufferAppend(&v295, 1, *(a1 + 192), *(a1 + 200));
                  if (appended)
                  {
                    goto LABEL_477;
                  }

                  appended = TLV8BufferAppend(&v295, 3, (a1 + 526), 0x20uLL);
                  if (appended)
                  {
                    goto LABEL_477;
                  }

                  appended = TLV8BufferAppend(&v295, 10, __s, 0x40uLL);
                  if (appended)
                  {
                    goto LABEL_477;
                  }

                  v250 = *(a1 + 224);
                  if (v250)
                  {
                    appended = TLV8BufferAppend(&v295, 16, v250, *(a1 + 232));
                    if (appended)
                    {
                      goto LABEL_477;
                    }
                  }

                  if ((*(a1 + 100) & 0x5770FF34) != 0)
                  {
                    SelfInfo = _PairingSessionGetSelfInfo(a1);
                    if (SelfInfo)
                    {
                      DataMutable = OPACKEncoderCreateDataMutable(SelfInfo, 0, &appended);
                      if (!DataMutable)
                      {
                        goto LABEL_477;
                      }

                      v253 = DataMutable;
                      BytePtr = CFDataGetBytePtr(DataMutable);
                      v255 = CFDataGetLength(v253);
                      appended = TLV8BufferAppend(&v295, 17, BytePtr, v255);
                      CFRelease(v253);
                      if (appended)
                      {
                        goto LABEL_477;
                      }
                    }
                  }

                  appended = _AddAppInfoTLV(*(a1 + 360), &v295);
                  if (appended)
                  {
                    goto LABEL_477;
                  }

                  v256 = malloc_type_malloc(v296 + 16, 0x100004077774924uLL);
                  v25 = v256;
                  if (v256)
                  {
                    _chacha20_poly1305_encrypt_all((a1 + 430), "PS-Msg06", 8, 0, 0, v295, v296, v256, v256->i64 + v296);
                    appended = TLV8BufferAppend(&v299, 5, v25->i8, v296 + 16);
                    if (appended)
                    {
LABEL_478:
                      v26 = 0;
                      goto LABEL_137;
                    }

                    free(v25);
                    appended = TLV8BufferAppend(&v299, 6, (a1 + 128), 1uLL);
                    if (!appended)
                    {
                      appended = TLV8BufferDetach(&v299, a4, a5);
                      if (!appended)
                      {
                        *(a1 + 128) = 7;
                        v257 = *(a1 + 16);
                        v258 = *v257;
                        if (*v257 > 30)
                        {
                          goto LABEL_510;
                        }

                        if (v258 == -1)
                        {
                          v265 = _LogCategory_Initialize(*(a1 + 16), 0x1Eu);
                          v257 = *(a1 + 16);
                          if (!v265)
                          {
                            goto LABEL_506;
                          }

                          v258 = *v257;
                        }

                        if (v258 > 10)
                        {
                          v259 = 1;
                        }

                        else
                        {
                          v259 = v258 == -1 && !_LogCategory_Initialize(v257, 0xAu);
                        }

                        LogPrintF(v257, "OSStatus _SetupServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "PairSetup server M6 -- exchange response\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v259);
                        v257 = *(a1 + 16);
LABEL_506:
                        if (*v257 <= 30)
                        {
                          if (*v257 == -1)
                          {
                            if (!_LogCategory_Initialize(v257, 0x1Eu))
                            {
                              goto LABEL_510;
                            }

                            v257 = *(a1 + 16);
                          }

                          LogPrintF(v257, "OSStatus _SetupServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "PairSetup server done -- client authenticated\n", a5, a6, a7, a8, v267);
                        }

LABEL_510:
                        v26 = 1;
                        goto LABEL_377;
                      }
                    }

LABEL_477:
                    v25 = 0;
                    goto LABEL_478;
                  }
                }
              }

              v26 = 0;
              v264 = -6728;
LABEL_493:
              appended = v264;
              goto LABEL_137;
            }
          }

          goto LABEL_136;
        }

        v25 = 0;
        v26 = 0;
        v224 = -6743;
LABEL_363:
        appended = v224;
        goto LABEL_137;
      }

LABEL_136:
      v25 = 0;
      v26 = 0;
LABEL_137:
      v8 = a6;
      goto LABEL_138;
    }

    *__s = 0;
    *v293 = 0;
    v303[0] = 0;
    v70 = TLV8GetOrCopyCoalesced(a2, v12, 32, __s, v293, v303, 0);
    if (v70)
    {
      v75 = v70;
      v76 = *(a1 + 16);
      v8 = a6;
      if (*v76 <= 90)
      {
        if (*v76 == -1)
        {
          if (!_LogCategory_Initialize(v76, 0x5Au))
          {
            goto LABEL_131;
          }

          v76 = *(a1 + 16);
        }

        LogPrintF_safe(v76, "OSStatus _SetupServerSPAKE2Verify(PairingSessionRef, const uint8_t *, const uint8_t *const)", 0x5Au, "### PairSetup SPAKE2 get M3 failed: %d", v71, v72, v73, v74, v75);
      }

LABEL_131:
      appended = v75;
LABEL_306:
      v29 = a5;
      goto LABEL_307;
    }

    v274 = v9;
    v91 = objc_alloc_init(CUSPAKEM3);
    v92 = objc_alloc(MEMORY[0x1E695DEF0]);
    v93 = [v92 initWithBytes:*__s length:*v293];
    [(CUSPAKEM3 *)v91 setConfirmPData:v93];

    if (v303[0])
    {
      free(v303[0]);
    }

    v94 = *(a1 + 720);
    if (v94)
    {
      v99 = v94;
      v292 = 0;
      v100 = [v94 finishWithM3:v91 error:&v292];
      v271 = v292;
      v108 = *(a1 + 720);
      if (v108)
      {
        CFRelease(v108);
        *(a1 + 720) = 0;
      }

      if (v100)
      {
        v109 = [v100 length];
        if (v109)
        {
          v117 = v109;
          v269 = v91;
          v118 = malloc_type_malloc(v109, 0x100004077774924uLL);
          if (v118)
          {
            v123 = v118;
            memcpy(v118, [v100 bytes], v117);
            v124 = *(a1 + 768);
            if (v124)
            {
              memset_s(v124, *(a1 + 776), 0, *(a1 + 776));
              v125 = *(a1 + 768);
              if (v125)
              {
                free(v125);
              }
            }

            *(a1 + 768) = v123;
            *(a1 + 776) = v117;

            appended = 0;
            v9 = v274;
            v29 = a5;
            if (*(a1 + 429))
            {
              v126 = *(a1 + 40);
              if (v126)
              {
                v126(*(a1 + 24));
              }

              *(a1 + 429) = 0;
              v127 = *(a1 + 400);
              if (v127)
              {
                free(v127);
                *(a1 + 400) = 0;
              }

              *(a1 + 408) = 0;
              PairingResetThrottle();
            }

            v128 = *(a1 + 768);
            if (!v128)
            {
              goto LABEL_371;
            }

            v129 = *(a1 + 776);
            if (!v129)
            {
              goto LABEL_371;
            }

            CryptoHKDF(_kCryptoHashDescriptor_SHA512, v128, v129, "Pair-Setup-Encrypt-Salt", 0x17uLL, "Pair-Setup-Encrypt-Info", 23, 0x20uLL, a1 + 430);
            goto LABEL_95;
          }

          v174 = *(a1 + 16);
          if (*v174 <= 90)
          {
            v8 = a6;
            if (*v174 == -1)
            {
              if (!_LogCategory_Initialize(v174, 0x5Au))
              {
                goto LABEL_304;
              }

              v174 = *(a1 + 16);
            }

            LogPrintF_safe(v174, "OSStatus _SetupServerSPAKE2Verify(PairingSessionRef, const uint8_t *, const uint8_t *const)", 0x5Au, "### PairSetup server SPAKE2 malloc secret failed", v119, v120, v121, v122, v266);
LABEL_304:
            v163 = -6728;
            goto LABEL_305;
          }

          v163 = -6728;
          v8 = a6;
LABEL_305:

          appended = v163;
          v9 = v274;
          goto LABEL_306;
        }

        v157 = *(a1 + 16);
        if (*v157 <= 90)
        {
          v8 = a6;
          if (*v157 == -1)
          {
            if (!_LogCategory_Initialize(*(a1 + 16), 0x5Au))
            {
              goto LABEL_255;
            }

            v157 = *(a1 + 16);
          }

          v158 = NSPrintF("%{error}", v110, v111, v112, v113, v114, v115, v116, v271);
          LogPrintF_safe(v157, "OSStatus _SetupServerSPAKE2Verify(PairingSessionRef, const uint8_t *, const uint8_t *const)", 0x5Au, "### PairSetup server SPAKE2 finish failed: %@", v159, v160, v161, v162, v158);

LABEL_255:
          v163 = -6700;
          goto LABEL_305;
        }

        v163 = -6700;
LABEL_201:
        v8 = a6;
        goto LABEL_305;
      }

      v142 = *(a1 + 16);
      if (*v142 > 90)
      {
        v163 = -6754;
        goto LABEL_201;
      }

      v8 = a6;
      if (*v142 == -1)
      {
        if (!_LogCategory_Initialize(*(a1 + 16), 0x5Au))
        {
          goto LABEL_247;
        }

        v142 = *(a1 + 16);
      }

      v143 = NSPrintF("%{error}", v101, v102, v103, v104, v105, v106, v107, v271);
      LogPrintF_safe(v142, "OSStatus _SetupServerSPAKE2Verify(PairingSessionRef, const uint8_t *, const uint8_t *const)", 0x5Au, "### PairSetup server SPAKE2 verify failed: %@", v144, v145, v146, v147, v143);

LABEL_247:
      v163 = -6754;
      goto LABEL_305;
    }

    v130 = *(a1 + 16);
    v8 = a6;
    v29 = a5;
    if (*v130 <= 90)
    {
      if (*v130 == -1)
      {
        if (!_LogCategory_Initialize(v130, 0x5Au))
        {
          goto LABEL_207;
        }

        v130 = *(a1 + 16);
      }

      LogPrintF_safe(v130, "OSStatus _SetupServerSPAKE2Verify(PairingSessionRef, const uint8_t *, const uint8_t *const)", 0x5Au, "### PairSetup server SPAKE2 verify failed: no verifier", v95, v96, v97, v98, v266);
    }

LABEL_207:

    appended = -6745;
LABEL_307:
    v215 = a4;
    v216 = _SetupServerAuthenticationFailed(a1, 6u, &v299, a4, v29, v72, v73, v74);
LABEL_308:
    v36 = v215;
    v24 = 0;
LABEL_309:
    v25 = 0;
    v26 = 0;
    appended = v216;
    goto LABEL_310;
  }

  if (v17 == 3)
  {
    if (v20 > 30)
    {
      goto LABEL_52;
    }

    if (v20 == -1)
    {
      if (!_LogCategory_Initialize(*(a1 + 16), 0x1Eu))
      {
        goto LABEL_52;
      }

      v19 = *(a1 + 16);
      v20 = *v19;
    }

    if (v20 > 10)
    {
      v22 = 1;
    }

    else
    {
      v22 = v20 == -1 && !_LogCategory_Initialize(v19, 0xAu);
    }

    LogPrintF(v19, "OSStatus _SetupServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "PairSetup server M3 -- verify request\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v22);
LABEL_52:
    if (*(a1 + 705))
    {
      v28 = *(a1 + 16);
      if (*v28 > 30)
      {
        goto LABEL_66;
      }

      if (*v28 == -1)
      {
        if (!_LogCategory_Initialize(v28, 0x1Eu))
        {
LABEL_66:
          *__s = 0;
          *v293 = 0;
          v303[0] = 0;
          v37 = TLV8GetOrCopyCoalesced(a2, v12, 34, __s, v293, v303, 0);
          if (v37)
          {
            v38 = v37;
            v39 = *(a1 + 16);
            v8 = a6;
            if (*v39 <= 90)
            {
              if (*v39 == -1)
              {
                if (!_LogCategory_Initialize(v39, 0x5Au))
                {
                  goto LABEL_85;
                }

                v39 = *(a1 + 16);
              }

              LogPrintF_safe(v39, "OSStatus _SetupServerSPAKE2Start(PairingSessionRef, const uint8_t *, const uint8_t *const, TLV8Buffer *)", 0x5Au, "### PairSetup SPAKE2 get M1 SharePData failed: %d", a5, a6, a7, a8, v38);
            }

LABEL_85:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            appended = v38;
            goto LABEL_138;
          }

          v40 = objc_alloc_init(CUSPAKEM1);
          v41 = objc_alloc(MEMORY[0x1E695DEF0]);
          v42 = [v41 initWithBytes:*__s length:*v293];
          [(CUSPAKEM1 *)v40 setSharePData:v42];

          if (v303[0])
          {
            free(v303[0]);
          }

          if (*(a1 + 408))
          {
            v273 = v9;
            v47 = [[CUSPAKEVerifier alloc] initWithPasswordPtr:*(a1 + 400) passwordLength:*(a1 + 408)];
            v48 = *(a1 + 720);
            if (v48)
            {
              CFRelease(v48);
            }

            v49 = v47;
            *(a1 + 720) = v49;
            v292 = 0;
            v50 = [(CUSPAKEVerifier *)v49 generateM2WithM1:v40 error:&v292];
            v51 = v292;
            v59 = v51;
            if (v50)
            {
              v268 = v49;
              v270 = v51;
              v60 = [v50 shareVData];
              v61 = [v60 bytes];
              v62 = [v50 shareVData];
              v63 = TLV8BufferAppend(&v299, 35, v61, [v62 length]);

              if (v63)
              {
                v68 = *(a1 + 16);
                if (*v68 > 90)
                {
                  v49 = v268;
                  v59 = v270;
                }

                else
                {
                  if (*v68 != -1)
                  {
                    v49 = v268;
                    v59 = v270;
LABEL_80:
                    LogPrintF_safe(v68, "OSStatus _SetupServerSPAKE2Start(PairingSessionRef, const uint8_t *, const uint8_t *const, TLV8Buffer *)", 0x5Au, "### PairSetup server SPAKE2 add M2 ShareVData TLV failed: %d", v64, v65, v66, v67, v63);
                    goto LABEL_234;
                  }

                  v49 = v268;
                  v59 = v270;
                  if (_LogCategory_Initialize(v68, 0x5Au))
                  {
                    v68 = *(a1 + 16);
                    goto LABEL_80;
                  }
                }
              }

              else
              {
                v149 = [v50 confirmVData];
                v150 = [v149 bytes];
                v151 = [v50 confirmVData];
                v63 = TLV8BufferAppend(&v299, 33, v150, [v151 length]);

                if (v63)
                {
                  v156 = *(a1 + 16);
                  v49 = v268;
                  v59 = v270;
                  if (*v156 > 90)
                  {
                    goto LABEL_234;
                  }

                  if (*v156 == -1)
                  {
                    if (!_LogCategory_Initialize(v156, 0x5Au))
                    {
                      goto LABEL_234;
                    }

                    v156 = *(a1 + 16);
                  }

                  LogPrintF_safe(v156, "OSStatus _SetupServerSPAKE2Start(PairingSessionRef, const uint8_t *, const uint8_t *const, TLV8Buffer *)", 0x5Au, "### PairSetup server SPAKE2 add M2 ConfirmVData TLV failed: %d", v152, v153, v154, v155, v63);
                  goto LABEL_234;
                }

                v186 = mach_absolute_time();
                v187 = gPairingThrottleNextTicks - v186;
                v49 = v268;
                v59 = v270;
                if (gPairingThrottleNextTicks <= v186)
                {
                  goto LABEL_248;
                }

                if (UpTicksPerSecond_sOnce != -1)
                {
                  dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
                }

                if (v187 == v187 / UpTicksPerSecond_sTicksPerSecond * UpTicksPerSecond_sTicksPerSecond)
                {
                  v188 = v187 / UpTicksPerSecond_sTicksPerSecond;
                }

                else
                {
                  LODWORD(v188) = v187 / UpTicksPerSecond_sTicksPerSecond + 1;
                }

                if (v188 < 1)
                {
LABEL_248:
                  LODWORD(v63) = 0;
                  goto LABEL_234;
                }

                v63 = TLV8BufferAppendUInt64(&v299, 8, v188 & 0x7FFFFFFF);
                if (v63)
                {
                  v193 = *(a1 + 16);
                  if (*v193 <= 90)
                  {
                    if (*v193 == -1)
                    {
                      if (!_LogCategory_Initialize(v193, 0x5Au))
                      {
                        goto LABEL_234;
                      }

                      v193 = *(a1 + 16);
                    }

                    LogPrintF_safe(v193, "OSStatus _SetupServerSPAKE2Start(PairingSessionRef, const uint8_t *, const uint8_t *const, TLV8Buffer *)", 0x5Au, "### PairSetup server SPAKE2 add M2 RetryDelay TLV failed: %d", v189, v190, v191, v192, v63);
                  }
                }
              }

LABEL_234:

              appended = v63;
              v9 = v273;
              if (v63)
              {
                goto LABEL_135;
              }

LABEL_235:
              *v18 = 4;
              appended = TLV8BufferAppend(&v299, 6, (a1 + 128), 1uLL);
              if (appended)
              {
                goto LABEL_135;
              }

              v29 = a5;
              if (v280)
              {
                appended = TLV8BufferAppend(&v299, 4, v280, v279);
                if (appended)
                {
                  goto LABEL_243;
                }
              }

              v194 = *(a1 + 728);
              if (v194)
              {
                SRPDelete_libsrp(v194);
                *(a1 + 728) = 0;
              }

              if (!*(a1 + 705))
              {
                CryptoHKDF(_kCryptoHashDescriptor_SHA512, *(a1 + 768), *(a1 + 776), "Pair-Setup-Encrypt-Salt", 0x17uLL, "Pair-Setup-Encrypt-Info", 23, 0x20uLL, a1 + 430);
                _ServerEncryptExtra(a1, &v299);
              }

              appended = TLV8BufferDetach(&v299, a4, a5);
              if (appended)
              {
                goto LABEL_243;
              }

              v195 = *(a1 + 16);
              v196 = *v195;
              if (*v195 <= 30)
              {
                if (v196 == -1)
                {
                  if (!_LogCategory_Initialize(*(a1 + 16), 0x1Eu))
                  {
                    goto LABEL_375;
                  }

                  v195 = *(a1 + 16);
                  v196 = *v195;
                }

                if (v196 > 10)
                {
                  v197 = 1;
                }

                else
                {
                  v197 = v196 == -1 && !_LogCategory_Initialize(v195, 0xAu);
                }

                LogPrintF(v195, "OSStatus _SetupServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "PairSetup server M4 -- verify response\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v197);
              }

LABEL_375:
              if (*(a1 + 705) || (v227 = *(a1 + 100), (v227 & 0x10) == 0) && ((*(a1 + 700) ^ v227) & 0x200) == 0)
              {
                v24 = 0;
                v26 = 0;
                *v18 = 5;
                goto LABEL_377;
              }

              *(a1 + 128) = 7;
              v228 = *(a1 + 16);
              v29 = a5;
              if (*v228 <= 30)
              {
                if (*v228 != -1)
                {
LABEL_384:
                  v8 = a6;
                  LogPrintF(v228, "OSStatus _SetupServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "PairSetup transient server done -- client authenticated\n", a5, a6, a7, a8, v266);
                  v24 = 0;
                  v26 = 1;
                  v36 = a4;
                  goto LABEL_379;
                }

                if (_LogCategory_Initialize(v228, 0x1Eu))
                {
                  v228 = *(a1 + 16);
                  goto LABEL_384;
                }
              }

              v24 = 0;
              v26 = 1;
              v8 = a6;
              v36 = a4;
              goto LABEL_379;
            }

            v136 = *(a1 + 16);
            if (*v136 <= 90)
            {
              if (*v136 == -1)
              {
                if (!_LogCategory_Initialize(*(a1 + 16), 0x5Au))
                {
                  goto LABEL_233;
                }

                v136 = *(a1 + 16);
              }

              NSPrintF("%{error}", v52, v53, v54, v55, v56, v57, v58, v59);
              v137 = v272 = v59;
              LogPrintF_safe(v136, "OSStatus _SetupServerSPAKE2Start(PairingSessionRef, const uint8_t *, const uint8_t *const, TLV8Buffer *)", 0x5Au, "### PairSetup server SPAKE2 generate M2 failed: %@", v138, v139, v140, v141, v137);

              v59 = v272;
            }

LABEL_233:
            LODWORD(v63) = -6700;
            goto LABEL_234;
          }

          v69 = *(a1 + 16);
          v8 = a6;
          v29 = a5;
          if (*v69 <= 90)
          {
            if (*v69 == -1)
            {
              if (!_LogCategory_Initialize(v69, 0x5Au))
              {
                goto LABEL_203;
              }

              v69 = *(a1 + 16);
            }

            LogPrintF_safe(v69, "OSStatus _SetupServerSPAKE2Start(PairingSessionRef, const uint8_t *, const uint8_t *const, TLV8Buffer *)", 0x5Au, "### PairSetup server SPAKE2 start failed: no password", v43, v44, v45, v46, v266);
          }

LABEL_203:

          v24 = 0;
          v25 = 0;
          v26 = 0;
          v148 = -6745;
          goto LABEL_204;
        }

        v28 = *(a1 + 16);
      }

      LogPrintF_safe(v28, "OSStatus _SetupServerSPAKE2Start(PairingSessionRef, const uint8_t *, const uint8_t *const, TLV8Buffer *)", 0x1Eu, "PairSetup server SPAKE2 start", a5, a6, a7, a8, v266);
      goto LABEL_66;
    }

    v29 = a5;
    if (*(a1 + 728))
    {
      appended = TLV8GetOrCopyCoalesced(a2, v12, 3, &v286, &v285, &v284, 0);
      if (appended)
      {
        goto LABEL_243;
      }

      appended = TLV8GetOrCopyCoalesced(a2, v12, 4, &v283, &v282, &v281, 0);
      if (appended)
      {
        goto LABEL_243;
      }

      v30 = *(a1 + 768);
      if (v30)
      {
        memset_s(v30, *(a1 + 776), 0, *(a1 + 776));
        v31 = *(a1 + 768);
        if (v31)
        {
          free(v31);
          *(a1 + 768) = 0;
        }
      }

      *(a1 + 776) = 0;
      appended = SRPServerVerify_libsrp(*(a1 + 728), v286, v285, v283, v282, (a1 + 768), (a1 + 776), &v280, &v279);
      if (!appended)
      {
        v175 = *(a1 + 40);
        if (v175)
        {
          v175(*(a1 + 24));
        }

        *(a1 + 429) = 0;
        v176 = *(a1 + 400);
        if (v176)
        {
          free(v176);
          *(a1 + 400) = 0;
        }

        *(a1 + 408) = 0;
        PairingResetThrottle();
        goto LABEL_235;
      }

      v29 = a5;
      v35 = _SetupServerAuthenticationFailed(a1, 4u, &v299, a4, a5, v32, v33, v34);
      v36 = a4;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      appended = v35;
LABEL_64:
      v8 = a6;
      goto LABEL_310;
    }

LABEL_371:
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v226 = -6703;
    goto LABEL_372;
  }

  if (v17 != 1)
  {
    v8 = a6;
    if (v20 <= 60)
    {
      if (v20 == -1)
      {
        if (!_LogCategory_Initialize(*(a1 + 16), 0x3Cu))
        {
          goto LABEL_41;
        }

        v19 = *(a1 + 16);
        v17 = *(a1 + 128);
      }

      LogPrintF(v19, "OSStatus _SetupServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x3Cu, "### PairSetup server bad state: %d\n", a5, a6, a7, a8, v17);
    }

LABEL_41:
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = -6709;
LABEL_49:
    appended = v27;
LABEL_138:
    v36 = a4;
    v29 = a5;
    goto LABEL_310;
  }

  if (v20 <= 30)
  {
    if (v20 != -1)
    {
      goto LABEL_18;
    }

    if (_LogCategory_Initialize(*(a1 + 16), 0x1Eu))
    {
      v19 = *(a1 + 16);
      v20 = *v19;
LABEL_18:
      if (v20 > 10)
      {
        v21 = 1;
      }

      else
      {
        v21 = v20 == -1 && !_LogCategory_Initialize(v19, 0xAu);
      }

      LogPrintF(v19, "OSStatus _SetupServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "PairSetup server M1 -- start request\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v21);
    }
  }

  appended = TLV8GetBytes(a2, v12, 0, 1uLL, 1uLL, &__dst, 0, 0);
  if (appended)
  {
LABEL_135:
    v24 = 0;
    goto LABEL_136;
  }

  v131 = __dst;
  v29 = a5;
  if (!__dst)
  {
    *(a1 + 704) = 0;
    *(a1 + 700) = TLV8GetUInt64(a2, v12, 19, 0, 0) & 0x7770FF10;
    *(a1 + 304) = TLV8GetUInt64(a2, v12, 31, 0, 0);
    if ((*(a1 + 103) & 8) == 0)
    {
      v133 = _PairingThrottle();
      v134 = v133;
      if ((v133 & 0x80000000) == 0)
      {
        v135 = *(a1 + 16);
        v8 = a6;
        if (*v135 <= 50)
        {
          if (*v135 == -1)
          {
            if (!_LogCategory_Initialize(v135, 0x32u))
            {
              goto LABEL_250;
            }

            v135 = *(a1 + 16);
          }

          LogPrintF(v135, "OSStatus _SetupServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "PairSetup server throttling for %d second(s)\n", a5, a6, a7, a8, v134);
        }

LABEL_250:
        __s[0] = 3;
        appended = TLV8BufferAppend(&v299, 7, __s, 1uLL);
        if (!appended)
        {
          appended = TLV8BufferAppendUInt64(&v299, 8, v134);
          if (!appended)
          {
            __s[0] = 2;
            appended = TLV8BufferAppend(&v299, 6, __s, 1uLL);
            v29 = a5;
            if (!appended)
            {
LABEL_348:
              v215 = a4;
              v216 = TLV8BufferDetach(&v299, a4, v29);
              goto LABEL_308;
            }

            goto LABEL_347;
          }
        }

        goto LABEL_268;
      }

      v29 = a5;
      if (v133 == -6764)
      {
        v164 = *(a1 + 16);
        v8 = a6;
        if (*v164 <= 50)
        {
          if (*v164 == -1)
          {
            if (!_LogCategory_Initialize(v164, 0x32u))
            {
              goto LABEL_345;
            }

            v164 = *(a1 + 16);
          }

          LogPrintF(v164, "OSStatus _SetupServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "### PairSetup server disabled after too many attempts\n", a5, a6, a7, a8, v266);
        }

LABEL_345:
        __s[0] = 6;
        appended = TLV8BufferAppend(&v299, 7, __s, 1uLL);
        if (!appended)
        {
          __s[0] = 2;
          appended = TLV8BufferAppend(&v299, 6, __s, 1uLL);
          if (!appended)
          {
            goto LABEL_348;
          }
        }

        goto LABEL_347;
      }
    }

    *(a1 + 128) = 2;
    if (*(a1 + 400) && *(a1 + 408))
    {
LABEL_175:
      appended = TLV8BufferAppend(&v299, 6, (a1 + 128), 1uLL);
      if (!appended)
      {
        v166 = *(a1 + 104);
        if ((v166 & 2) == 0 || (*(a1 + 304) & 3) != 0)
        {
          if ((v166 & 3) != 0)
          {
            v167 = *(a1 + 304) & 3;
            v168 = (a1 + 705);
            *(a1 + 705) = v167 != 0;
            v8 = a6;
            if (v167)
            {
LABEL_180:
              v169 = *(a1 + 100) & 0x40000200;
              if (!v169 || (appended = TLV8BufferAppendUInt64(&v299, 19, v169)) == 0)
              {
                Int64Ranged = CFDictionaryGetInt64Ranged(*(a1 + 360), @"setupCodeType", 0, 0xFFFFFFFFLL, 0);
                if (!Int64Ranged || (appended = TLV8BufferAppendUInt64(&v299, 27, Int64Ranged)) == 0)
                {
                  if (!*v168 || (LOBYTE(v303[0]) = 1, (appended = TLV8BufferAppend(&v299, 31, v303, 1uLL)) == 0))
                  {
                    v29 = a5;
                    appended = TLV8BufferDetach(&v299, a4, a5);
                    if (appended)
                    {
LABEL_347:
                      v24 = 0;
                      goto LABEL_359;
                    }

                    *(a1 + 128) = 3;
                    v171 = *(a1 + 16);
                    v172 = *v171;
                    if (*v171 > 30)
                    {
                      v24 = 0;
                      v26 = 0;
                      goto LABEL_378;
                    }

                    if (v172 != -1)
                    {
LABEL_189:
                      if (v172 > 10)
                      {
                        v173 = 1;
                      }

                      else
                      {
                        v173 = v172 == -1 && !_LogCategory_Initialize(v171, 0xAu);
                      }

                      v249 = v171;
                      v29 = a5;
                      LogPrintF(v249, "OSStatus _SetupServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "PairSetup server M2 -- start response\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v173);
                      v36 = a4;
                      v24 = 0;
                      v26 = 0;
                      v8 = a6;
                      goto LABEL_379;
                    }

                    if (_LogCategory_Initialize(*(a1 + 16), 0x1Eu))
                    {
                      v171 = *(a1 + 16);
                      v172 = *v171;
                      goto LABEL_189;
                    }

                    v24 = 0;
                    v26 = 0;
LABEL_377:
                    v8 = a6;
LABEL_378:
                    v36 = a4;
                    v29 = a5;
LABEL_379:
                    v25 = 0;
                    appended = 0;
                    goto LABEL_310;
                  }
                }
              }

LABEL_268:
              v24 = 0;
              v25 = 0;
              v26 = 0;
              goto LABEL_138;
            }
          }

          else
          {
            v168 = (a1 + 705);
            *(a1 + 705) = 0;
            v8 = a6;
          }

          v198 = *(a1 + 728);
          if (v198)
          {
            SRPDelete_libsrp(v198);
            *(a1 + 728) = 0;
          }

          v199 = malloc_type_calloc(1uLL, 0x38uLL, 0x103004063A0F53DuLL);
          if (v199)
          {
            *(a1 + 728) = v199;
            appended = 0;
            appended = SRPServerStart_libsrp(v199, &_kSRPParameters_3072_SHA512, "Pair-Setup", 10, *(a1 + 400), *(a1 + 408), 0x10uLL, v293, &v288, &v287);
            if (appended)
            {
              goto LABEL_268;
            }

            appended = TLV8BufferAppend(&v299, 2, v293, 0x10uLL);
            if (appended)
            {
              goto LABEL_268;
            }

            appended = TLV8BufferAppend(&v299, 3, v288, v287);
            if (appended)
            {
              goto LABEL_268;
            }

            goto LABEL_180;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = -6728;
          goto LABEL_49;
        }

        v223 = *(a1 + 16);
        v8 = a6;
        v36 = a4;
        if (*v223 <= 50)
        {
          if (*v223 == -1)
          {
            v225 = _LogCategory_Initialize(v223, 0x32u);
            v36 = a4;
            if (!v225)
            {
              goto LABEL_368;
            }

            v223 = *(a1 + 16);
          }

          LogPrintF(v223, "OSStatus _SetupServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "### PairSetup client SPAKE2+ not supported by client", a5, a6, a7, a8, v266);
          v36 = a4;
        }

LABEL_368:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        appended = -6735;
        goto LABEL_310;
      }

      goto LABEL_243;
    }

    v165 = *(a1 + 32);
    if (v165)
    {
      appended = v165(*(a1 + 700), __s, 64, *(a1 + 24));
      if (appended)
      {
        goto LABEL_243;
      }

      *(a1 + 429) = 1;
      if (strlen(__s) > 3)
      {
        appended = ReplaceString((a1 + 400), (a1 + 408), __s, 0xFFFFFFFFFFFFFFFFLL);
        if (!appended)
        {
          goto LABEL_175;
        }

LABEL_243:
        v24 = 0;
        goto LABEL_244;
      }

      v24 = 0;
      goto LABEL_425;
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    v226 = -6745;
LABEL_372:
    appended = v226;
    goto LABEL_245;
  }

  v132 = *(a1 + 16);
  v8 = a6;
  if (*v132 <= 50)
  {
    if (*v132 != -1)
    {
      goto LABEL_142;
    }

    if (_LogCategory_Initialize(v132, 0x32u))
    {
      v132 = *(a1 + 16);
      v131 = __dst;
LABEL_142:
      LogPrintF(v132, "OSStatus _SetupServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "### PairSetup server unsupported method: %u\n", a5, a6, a7, a8, v131);
    }
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v148 = -6735;
LABEL_204:
  appended = v148;
LABEL_205:
  v36 = a4;
LABEL_310:
  if (v29 && v36 && !appended)
  {
    _PairingSessionUpdateTranscript(a1, a2, v9, *v36, *v29);
  }

  *v8 = v26;
  if (v301)
  {
    free(v301);
    v301 = 0;
  }

  if (v297)
  {
    free(v297);
    v297 = 0;
  }

  if (v24)
  {
    free(v24);
  }

  if (v25)
  {
    free(v25);
  }

  if (v288)
  {
    free(v288);
  }

  if (v284)
  {
    free(v284);
  }

  if (v281)
  {
    free(v281);
  }

  if (v280)
  {
    free(v280);
  }

  v217 = appended;
  if (appended != -6771)
  {
    if (appended)
    {
      v218 = *(a1 + 16);
      v219 = *v218;
      if (*v218 <= 50)
      {
        if (v219 != -1)
        {
          goto LABEL_334;
        }

        v221 = _LogCategory_Initialize(*(a1 + 16), 0x32u);
        v217 = appended;
        if (v221)
        {
          v218 = *(a1 + 16);
          v219 = *v218;
LABEL_334:
          v220 = *(a1 + 128);
          if (v219 == -1)
          {
            _LogCategory_Initialize(v218, 0x28u);
          }

          LogPrintF(v218, "OSStatus _SetupServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "### PairSetup server state %d failed: %#m\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v220);
          return appended;
        }
      }
    }
  }

  return v217;
}

uint64_t _VerifyClientExchange(uint64_t a1, unsigned __int8 *a2, uint64_t a3, UInt8 **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v10 = a3;
  v172 = *MEMORY[0x1E69E9840];
  v14 = (a1 + 128);
  v13 = *(a1 + 128);
  if (!*(a1 + 128))
  {
    v13 = 1;
    *v14 = 1;
  }

  v15 = &a2[a3];
  if (a3)
  {
    v16 = a2;
    do
    {
      if (v16 == v15)
      {
LABEL_50:
        v22 = 4294960569;
        goto LABEL_100;
      }

      if (v16 >= v15)
      {
        v22 = 4294960591;
        goto LABEL_100;
      }

      if ((v15 - v16) < 2)
      {
        goto LABEL_50;
      }

      v17 = v16 + 2;
      v18 = v16[1];
      if (&v16[v18 + 2] > v15)
      {
        v22 = 4294960546;
        goto LABEL_100;
      }

      v19 = *v16;
      v16 += v18 + 2;
    }

    while (v19 != 6);
    if (v18 != 1)
    {
      v22 = 4294960553;
      goto LABEL_100;
    }

    if (*v17 != v13)
    {
      goto LABEL_39;
    }
  }

  if (v13 == 4)
  {
    v26 = a4;
    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v153 = 0u;
    *&v152[8] = xmmword_191FF95F0;
    *v152 = &v153;
    *&v152[24] = 0;
    v27 = *(a1 + 16);
    v28 = *v27;
    if (*v27 <= 30)
    {
      if (v28 != -1)
      {
LABEL_28:
        if (v28 > 10)
        {
          v29 = 1;
        }

        else
        {
          v29 = v28 == -1 && !_LogCategory_Initialize(v27, 0xAu);
        }

        LogPrintF(v27, "OSStatus _VerifyClientM4(PairingSessionRef, const uint8_t *const, const uint8_t *const)", 0x1Eu, "PairVerify client M4 -- finish response\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v29);
        goto LABEL_83;
      }

      if (_LogCategory_Initialize(*(a1 + 16), 0x1Eu))
      {
        v27 = *(a1 + 16);
        v28 = *v27;
        goto LABEL_28;
      }
    }

LABEL_83:
    v47 = a2;
    while (v15 > v47)
    {
      if ((v15 - v47) < 2)
      {
        break;
      }

      v48 = v47 + 2;
      v49 = v47[1];
      if (&v47[v49 + 2] > v15)
      {
        break;
      }

      v50 = *v47;
      v47 += v49 + 2;
      if (v50 == 7)
      {
        if (v49 == 1)
        {
          v51 = *v48;
          if (v51 >= 0xA)
          {
            if (v51 == 10)
            {
              v22 = 4294960561;
            }

            else
            {
              v22 = 4294960596;
            }
          }

          else
          {
            v22 = dword_191FFB0EC[*v48];
          }

          v52 = *(a1 + 16);
          if (*v52 <= 50)
          {
            if (*v52 != -1)
            {
LABEL_96:
              LogPrintF(v52, "OSStatus _VerifyClientM4(PairingSessionRef, const uint8_t *const, const uint8_t *const)", 0x32u, "### PairVerify client M4 bad status: 0x%X, %#m\n", a5, a6, a7, a8, v51);
              goto LABEL_98;
            }

            if (_LogCategory_Initialize(v52, 0x32u))
            {
              v52 = *(a1 + 16);
              v51 = *v48;
              goto LABEL_96;
            }
          }
        }

        else
        {
          v22 = 4294960553;
        }

        goto LABEL_98;
      }
    }

    v137 = v9;
    v57 = *(a1 + 100);
    if ((v57 & 0x20000000) != 0)
    {
      v58 = "PV-Msg4s";
    }

    else
    {
      v58 = "PV-Msg04";
    }

    if (v57)
    {
      v70 = _MFiClientVerify(a1, a2, v10, v58, a1 + 654, 32, "MFi-Pair-Verify-Salt", 20, "MFi-Pair-Verify-Info", 20, 1);
      if (v70 == -71164 || v70 == 0)
      {
        v22 = v70;
      }

      else
      {
        v22 = 4294896151;
      }

      if (v22)
      {
        goto LABEL_98;
      }

      v60 = 0;
      v9 = v137;
LABEL_134:
      if ((*(a1 + 100) & 2) != 0)
      {
        ccsha512_di();
        v132 = __s;
        cchkdf();
        v73 = *__s;
        *(a1 + 392) = *__s;
        _PairingSaveResumeState(a1, *(a1 + 312), *(a1 + 320), *(a1 + 256), *(a1 + 264), v73, (a1 + 654));
      }

      *(a1 + 128) = 5;
      v74 = *(a1 + 16);
      if (*v74 <= 30)
      {
        if (*v74 != -1)
        {
LABEL_138:
          LogPrintF(v74, "OSStatus _VerifyClientM4(PairingSessionRef, const uint8_t *const, const uint8_t *const)", 0x1Eu, "PairVerify client done\n", a5, a6, a7, a8, v132);
          goto LABEL_191;
        }

        if (_LogCategory_Initialize(v74, 0x1Eu))
        {
          v74 = *(a1 + 16);
          goto LABEL_138;
        }
      }

LABEL_191:
      v22 = 0;
      if (!v60)
      {
LABEL_193:
        if (*&v152[24])
        {
          free(*&v152[24]);
        }

        if (v22)
        {
          goto LABEL_100;
        }

        *v26 = 0;
        *v9 = 0;
        v43 = 1;
        if (v26)
        {
          goto LABEL_71;
        }

        goto LABEL_73;
      }

LABEL_192:
      free(v60);
      goto LABEL_193;
    }

    *__s = 0;
    v59 = TLV8CopyCoalesced(a2, &a2[v10], 5, __s, 0);
    v60 = v59;
    v61 = 0;
    if (v59 && *__s)
    {
      a7 = *__s - 16;
      if (*__s < 0x10uLL)
      {
        v22 = 4294960553;
        goto LABEL_270;
      }

      v61 = &v59->u8[a7];
      v62 = _chacha20_poly1305_decrypt_all((a1 + 430), v58, 8, 0, 0, v59, a7, v59, v59->i64 + a7, 16);
      if (v62)
      {
        v22 = v62;
        v9 = v137;
        goto LABEL_192;
      }
    }

    if ((*(a1 + 103) & 0x20) == 0 || (GroupInfoTLV = _PairingSessionAppleIDVerifyPeer(a1, v60, v61), !GroupInfoTLV))
    {
      GroupInfoTLV = _ExtractGroupInfoTLV(a1, v60, v61);
      v9 = v137;
      if (!GroupInfoTLV)
      {
        goto LABEL_134;
      }
    }

    v22 = GroupInfoTLV;
LABEL_270:
    v9 = v137;
    if (!v60)
    {
      goto LABEL_193;
    }

    goto LABEL_192;
  }

  if (v13 == 2)
  {
    AppInfoTLV = 0;
    memset(v145, 0, sizeof(v145));
    cf = 0;
    v139 = 0;
    v142 = v145;
    v143 = xmmword_191FF95F0;
    v144 = 0;
    v23 = *(a1 + 16);
    v24 = *v23;
    if (*v23 > 30)
    {
      goto LABEL_53;
    }

    if (v24 == -1)
    {
      if (!_LogCategory_Initialize(*(a1 + 16), 0x1Eu))
      {
        goto LABEL_53;
      }

      v23 = *(a1 + 16);
      v24 = *v23;
    }

    if (v24 > 10)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24 == -1 && !_LogCategory_Initialize(v23, 0xAu);
    }

    LogPrintF(v23, "OSStatus _VerifyClientM2(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *)", 0x1Eu, "PairVerify client M2 -- start response\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v25);
LABEL_53:
    Bytes = TLV8GetBytes(a2, &a2[v10], 3, 0x20uLL, 0x20uLL, (a1 + 590), 0, 0);
    AppInfoTLV = Bytes;
    v136 = v9;
    if (!Bytes)
    {
      v133 = (a1 + 590);
      cccurve25519();
      v36 = vorrq_s8(*(v14 + 542), *(v14 + 526));
      if (vorr_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL)))
      {
        ccsha512_di();
        cchkdf();
        v37 = TLV8CopyCoalesced(a2, v15, 5, &v139, &AppInfoTLV);
        v38 = v37;
        v39 = AppInfoTLV;
        if (!AppInfoTLV)
        {
          v40 = v139;
          if (v139 <= 0xF)
          {
            goto LABEL_225;
          }

          v139 -= 16;
          v41 = &v37[-1].u8[v40];
          AppInfoTLV = _chacha20_poly1305_decrypt_all((a1 + 430), "PV-Msg02", 8, 0, 0, v37, v139, v37, v41, 16);
          if (AppInfoTLV)
          {
LABEL_58:
            v42 = 0;
LABEL_59:
            v8 = a6;
LABEL_60:
            v26 = a4;
            goto LABEL_61;
          }

          *(a1 + 208) = TLV8GetUInt64(v38, v41, 25, 0, 0);
          v44 = *(a1 + 100);
          if ((v44 & 0x1000) != 0)
          {
            if ((v44 & 0x20200000) == 0)
            {
              AppInfoTLV = _PairingSessionAppleIDVerifyPeer(a1, v38, v41);
              if (AppInfoTLV)
              {
                goto LABEL_58;
              }
            }

LABEL_150:
            AppInfoTLV = _PairingSessionVerifyACL(a1, cf);
            if (AppInfoTLV)
            {
              v89 = *(a1 + 16);
              v26 = a4;
              v8 = a6;
              if (*v89 <= 50)
              {
                if (*v89 == -1)
                {
                  if (!_LogCategory_Initialize(v89, 0x32u))
                  {
                    goto LABEL_170;
                  }

                  v89 = *(a1 + 16);
                }

                LogPrintF(v89, "OSStatus _VerifyClientM2(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *)", 0x32u, "### PairVerify client -- server lacks ACL: %@\n", v85, v86, v87, v88, *(a1 + 184));
              }

LABEL_170:
              v152[0] = 7;
              AppInfoTLV = TLV8BufferAppend(&v142, 7, v152, 1uLL);
              if (!AppInfoTLV)
              {
                v152[0] = 3;
                AppInfoTLV = TLV8BufferAppend(&v142, 6, v152, 1uLL);
                if (!AppInfoTLV)
                {
                  AppInfoTLV = TLV8BufferDetach(&v142, a4, v136);
                  if (!AppInfoTLV)
                  {
                    _PairingSessionReset(a1);
                  }
                }
              }

              goto LABEL_217;
            }

            v90 = *(a1 + 280);
            if (v90)
            {
              CFRelease(v90);
            }

            *(a1 + 280) = cf;
            cf = 0;
            AppInfoTLV = _ExtractAppInfoTLV(a1, v38, v41);
            if (AppInfoTLV)
            {
              goto LABEL_58;
            }

            *(a1 + 128) = 3;
            v170 = 0u;
            v171 = 0u;
            v168 = 0u;
            v169 = 0u;
            v166 = 0u;
            v167 = 0u;
            v164 = 0u;
            v165 = 0u;
            v162 = 0u;
            v163 = 0u;
            v160 = 0u;
            v161 = 0u;
            v158 = 0u;
            v159 = 0u;
            v156 = 0u;
            v157 = 0u;
            v154 = 0u;
            v155 = 0u;
            v153 = 0u;
            memset(v151, 0, sizeof(v151));
            *&v152[8] = xmmword_191FF95F0;
            *v152 = &v153;
            *&v152[24] = 0;
            v149 = xmmword_191FF95F0;
            *__s = v151;
            v150 = 0;
            v91 = *(a1 + 100);
            if ((v91 & 0x1000) != 0)
            {
              v8 = a6;
              v93 = (a1 + 430);
              if ((v91 & 0x100000) == 0)
              {
                v106 = _PairingSessionAppleIDProveSelf(a1, __s);
                if (v106)
                {
                  goto LABEL_201;
                }
              }

              goto LABEL_176;
            }

            v92 = *(a1 + 976);
            v93 = (a1 + 430);
            if (!v92)
            {
              goto LABEL_162;
            }

            v94 = v9;
            v95 = _Block_copy(v92);
            v96 = *(a1 + 478);
            v146[0] = *(a1 + 462);
            v146[1] = v96;
            v97 = *(a1 + 606);
            v146[2] = *v133;
            v146[3] = v97;
            v98 = (*(v95 + 2))(v95, *(a1 + 100), v146, 64, v147);
            if (!v98)
            {
              LODWORD(v103) = TLV8BufferAppend(__s, 10, v147, 0x40uLL);

              v8 = a6;
              v9 = v94;
              if (v103)
              {
                goto LABEL_202;
              }

              goto LABEL_176;
            }

            v103 = v98;
            v8 = a6;
            if (v98 == -6714)
            {

              v9 = v94;
LABEL_162:
              v104 = *(a1 + 192);
              if (v104)
              {
                free(v104);
                *(a1 + 192) = 0;
              }

              v105 = v9;
              *(a1 + 200) = 0;
              v106 = PairingSessionCopyIdentity(a1, 0, (a1 + 192), (a1 + 526), a1 + 558);
              v8 = a6;
              if (v106)
              {
                goto LABEL_201;
              }

              v107 = strlen(*(a1 + 192));
              *(a1 + 200) = v107;
              if (!v107)
              {
                LODWORD(v103) = -6708;
                goto LABEL_202;
              }

              v108 = v107;
              v109 = malloc_type_malloc(v107 + 64, 0x100004077774924uLL);
              if (!v109)
              {
                goto LABEL_272;
              }

              v110 = v109;
              v111 = *(a1 + 478);
              *v109 = *(a1 + 462);
              *(v109 + 1) = v111;
              memcpy(v109 + 32, *(a1 + 192), *(a1 + 200));
              v112 = &v110[*(a1 + 200)];
              v113 = *(a1 + 606);
              *(v112 + 2) = *v133;
              *(v112 + 3) = v113;
              v114 = *(a1 + 960);
              if (v114)
              {
                v114(*(a1 + 100), v110, v108 + 64, v147, *(a1 + 968));
              }

              else
              {
                ccsha512_di();
                cced25519_sign();
              }

              free(v110);
              v106 = TLV8BufferAppend(__s, 1, *(a1 + 192), *(a1 + 200));
              if (v106)
              {
                goto LABEL_201;
              }

              v9 = v105;
              v106 = TLV8BufferAppend(__s, 10, v147, 0x40uLL);
              if (v106)
              {
                goto LABEL_201;
              }

LABEL_176:
              v106 = _AddAppInfoTLV(*(a1 + 360), __s);
              if (v106)
              {
                goto LABEL_201;
              }

              v106 = _AddGroupInfoTLV(a1, __s);
              if (v106)
              {
                goto LABEL_201;
              }

              v115 = v9;
              v116 = malloc_type_malloc(v149 + 16, 0x100004077774924uLL);
              if (v116)
              {
                v117 = v116;
                _chacha20_poly1305_encrypt_all(v93, "PV-Msg03", 8, 0, 0, *__s, v149, v116, v116->i64 + v149);
                LODWORD(v103) = TLV8BufferAppend(v152, 5, v117, v149 + 16);
                free(v117);
                if (v103)
                {
LABEL_202:
                  if (v150)
                  {
                    free(v150);
                    v150 = 0;
                  }

                  if (*&v152[24])
                  {
                    free(*&v152[24]);
                  }

                  v42 = 0;
                  AppInfoTLV = v103;
                  goto LABEL_60;
                }

                v106 = TLV8BufferAppend(v152, 6, v14, 1uLL);
                if (!v106)
                {
                  v106 = TLV8BufferDetach(v152, a4, v115);
                  if (!v106)
                  {
                    *(a1 + 128) = 4;
                    v118 = *(a1 + 16);
                    v119 = *v118;
                    if (*v118 <= 30)
                    {
                      if (v119 != -1)
                      {
LABEL_184:
                        if (v119 > 10)
                        {
                          v120 = 1;
                        }

                        else
                        {
                          v120 = v119 == -1 && !_LogCategory_Initialize(v118, 0xAu);
                        }

                        LogPrintF(v118, "OSStatus _VerifyClientM3(PairingSessionRef, uint8_t **, size_t *)", 0x1Eu, "PairVerify client M3 -- finish request\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v120);
                        goto LABEL_262;
                      }

                      if (_LogCategory_Initialize(*(a1 + 16), 0x1Eu))
                      {
                        v118 = *(a1 + 16);
                        v119 = *v118;
                        goto LABEL_184;
                      }
                    }

LABEL_262:
                    LODWORD(v103) = 0;
                    v8 = a6;
                    goto LABEL_202;
                  }
                }

LABEL_201:
                LODWORD(v103) = v106;
                goto LABEL_202;
              }

LABEL_272:
              LODWORD(v103) = -6728;
              goto LABEL_202;
            }

            v122 = *(a1 + 16);
            if (*v122 <= 90)
            {
              if (*v122 == -1)
              {
                if (!_LogCategory_Initialize(v122, 0x5Au))
                {
                  goto LABEL_224;
                }

                v122 = *(a1 + 16);
              }

              LogPrintF(v122, "OSStatus _VerifyClientM3(PairingSessionRef, uint8_t **, size_t *)", 0x5Au, "### PairVerify client M3 sign failed: %#m\n", v99, v100, v101, v102, v103);
            }

LABEL_224:

            goto LABEL_202;
          }

          v45 = *(a1 + 984);
          if (v45)
          {
            v46 = _Block_copy(v45);
            AppInfoTLV = TLV8GetBytes(v38, v41, 10, 0x40uLL, 0x40uLL, __dst, 0, 0);
            if (AppInfoTLV)
            {

              goto LABEL_58;
            }

            v63 = *(a1 + 606);
            *v152 = *v133;
            *&v152[16] = v63;
            v64 = *(a1 + 478);
            v153 = *(a1 + 462);
            v154 = v64;
            v65 = (*(v46 + 2))(v46, *(a1 + 100), v152, 64, __dst);
            AppInfoTLV = v65;
            if (v65 != -6714)
            {
              if (!v65)
              {

LABEL_149:
                v9 = v136;
                goto LABEL_150;
              }

              v121 = *(a1 + 16);
              v26 = a4;
              v8 = a6;
              if (*v121 <= 90)
              {
                if (*v121 == -1)
                {
                  if (!_LogCategory_Initialize(*(a1 + 16), 0x5Au))
                  {
                    goto LABEL_216;
                  }

                  v121 = *(a1 + 16);
                  v65 = AppInfoTLV;
                }

                LogPrintF(v121, "OSStatus _VerifyClientM2(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *)", 0x5Au, "### PairVerify client M2 verify signature failed: %#m\n", v66, v67, v68, v69, v65);
              }

LABEL_216:

LABEL_217:
              v42 = 0;
              goto LABEL_61;
            }
          }

          v75 = *(a1 + 312);
          if (v75)
          {
            free(v75);
            *(a1 + 312) = 0;
          }

          *(a1 + 320) = 0;
          v76 = TLV8CopyCoalesced(v38, v41, 1, (a1 + 320), &AppInfoTLV);
          *(a1 + 312) = v76;
          v77 = AppInfoTLV;
          if (!AppInfoTLV)
          {
            v78 = *(a1 + 320);
            if (v78)
            {
              Peer = PairingSessionFindPeerEx(a1, v76, v78, (a1 + 622), &cf, a6, a7, a8);
              AppInfoTLV = Peer;
              if (Peer)
              {
                v128 = Peer;
                v129 = *(a1 + 16);
                if (*v129 <= 90)
                {
                  if (*v129 == -1)
                  {
                    if (!_LogCategory_Initialize(v129, 0x5Au))
                    {
                      goto LABEL_242;
                    }

                    v129 = *(a1 + 16);
                    v128 = AppInfoTLV;
                  }

                  LogPrintF(v129, "OSStatus _VerifyClientM2(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *)", 0x5Au, "### PairVerify client M2 failed: find peer failed, %#m\n", a5, a6, a7, a8, v128);
                }
              }

              else
              {
                v80 = TLV8GetBytes(v38, v41, 10, 0x40uLL, 0x40uLL, __dst, 0, 0);
                AppInfoTLV = v80;
                if (!v80)
                {
                  v81 = malloc_type_malloc(*(a1 + 320) + 64, 0x100004077774924uLL);
                  v42 = v81;
                  if (v81)
                  {
                    v82 = *(a1 + 606);
                    *v81 = *v133;
                    *(v81 + 1) = v82;
                    memcpy(v81 + 32, *(a1 + 312), *(a1 + 320));
                    v83 = &v42[*(a1 + 320)];
                    v84 = *(a1 + 478);
                    *(v83 + 2) = *(a1 + 462);
                    *(v83 + 3) = v84;
                    ccsha512_di();
                    AppInfoTLV = cced25519_verify();
                    if (!AppInfoTLV)
                    {
                      free(v42);
                      goto LABEL_149;
                    }

                    v123 = -6754;
                  }

                  else
                  {
                    v123 = -6728;
                  }

LABEL_226:
                  AppInfoTLV = v123;
                  goto LABEL_59;
                }

                v130 = v80;
                v131 = *(a1 + 16);
                if (*v131 > 90)
                {
                  goto LABEL_242;
                }

                if (*v131 == -1)
                {
                  if (!_LogCategory_Initialize(v131, 0x5Au))
                  {
                    goto LABEL_242;
                  }

                  v131 = *(a1 + 16);
                  v130 = AppInfoTLV;
                }

                LogPrintF(v131, "OSStatus _VerifyClientM2(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *)", 0x5Au, "### PairVerify client M2 failed: get signature failed, %#m\n", a5, a6, a7, a8, v130);
              }

              goto LABEL_242;
            }

LABEL_225:
            v42 = 0;
            v123 = -6743;
            goto LABEL_226;
          }

          v127 = *(a1 + 16);
          if (*v127 <= 90)
          {
            if (*v127 == -1)
            {
              if (!_LogCategory_Initialize(v127, 0x5Au))
              {
                goto LABEL_242;
              }

              v127 = *(a1 + 16);
              v77 = AppInfoTLV;
            }

            LogPrintF(v127, "OSStatus _VerifyClientM2(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *)", 0x5Au, "### PairVerify client M2 failed: get identifier failed, %#m\n", a5, a6, a7, a8, v77);
          }

LABEL_242:
          v42 = 0;
          v26 = a4;
          v8 = a6;
LABEL_61:
          if (cf)
          {
            CFRelease(cf);
          }

          if (v42)
          {
            free(v42);
          }

          if (v38)
          {
            free(v38);
          }

          v9 = v136;
          if (v144)
          {
            free(v144);
          }

          v22 = AppInfoTLV;
          if (!AppInfoTLV)
          {
LABEL_70:
            v43 = 0;
            if (v26)
            {
LABEL_71:
              if (v9)
              {
                _PairingSessionUpdateTranscript(a1, a2, v10, *v26, *v9);
              }
            }

LABEL_73:
            v22 = 0;
            *v8 = v43;
            return v22;
          }

          goto LABEL_100;
        }

        v126 = *(a1 + 16);
        if (*v126 <= 90)
        {
          if (*v126 == -1)
          {
            if (!_LogCategory_Initialize(v126, 0x5Au))
            {
              goto LABEL_242;
            }

            v126 = *(a1 + 16);
            v39 = AppInfoTLV;
          }

          LogPrintF(v126, "OSStatus _VerifyClientM2(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *)", 0x5Au, "### PairVerify client M2 failed: get encrypted data, %#m\n", a5, a6, a7, a8, v39);
          goto LABEL_242;
        }

        v42 = 0;
      }

      else
      {
        v42 = 0;
        v38 = 0;
        AppInfoTLV = -6742;
      }

LABEL_239:
      v26 = a4;
      v8 = a6;
      goto LABEL_61;
    }

    v124 = Bytes;
    v125 = *(a1 + 16);
    if (*v125 <= 90)
    {
      if (*v125 == -1)
      {
        if (!_LogCategory_Initialize(v125, 0x5Au))
        {
          goto LABEL_238;
        }

        v125 = *(a1 + 16);
        v124 = AppInfoTLV;
      }

      LogPrintF(v125, "OSStatus _VerifyClientM2(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *)", 0x5Au, "### PairVerify client M2 failed: get PK, %#m\n", a5, a6, a7, a8, v124);
    }

LABEL_238:
    v42 = 0;
    v38 = 0;
    goto LABEL_239;
  }

  if (v13 != 1)
  {
    v30 = *(a1 + 16);
    if (*v30 <= 60)
    {
      if (*v30 == -1)
      {
        if (!_LogCategory_Initialize(v30, 0x3Cu))
        {
          goto LABEL_39;
        }

        v30 = *(a1 + 16);
        v13 = *(a1 + 128);
      }

      LogPrintF(v30, "OSStatus _VerifyClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x3Cu, "### PairVerify client bad state: %d\n", a5, a6, a7, a8, v13);
    }

LABEL_39:
    v22 = 4294960587;
    goto LABEL_100;
  }

  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v153 = 0u;
  *&v152[8] = xmmword_191FF95F0;
  *v152 = &v153;
  *&v152[24] = 0;
  if (a3)
  {
    v22 = 4294960591;
  }

  else
  {
    RandomBytes((a1 + 494), 0x20uLL);
    ccsha512_di();
    cchkdf();
    cccurve25519_make_pub();
    if ((*(a1 + 100) & 1) == 0 || (__s[0] = 7, appended = TLV8BufferAppend(v152, 0, __s, 1uLL), !appended))
    {
      appended = TLV8BufferAppend(v152, 6, v14, 1uLL);
      if (!appended)
      {
        appended = TLV8BufferAppend(v152, 3, (a1 + 462), 0x20uLL);
        if (!appended)
        {
          v31 = *(a1 + 216);
          if (!v31 || (appended = TLV8BufferAppendUInt64(v152, 25, v31), !appended))
          {
            v26 = a4;
            appended = TLV8BufferDetach(v152, a4, v9);
            if (!appended)
            {
              *(a1 + 128) = 2;
              v32 = *(a1 + 16);
              v33 = *v32;
              v10 = 0;
              if (*v32 > 30)
              {
                goto LABEL_220;
              }

              if (v33 == -1)
              {
                if (!_LogCategory_Initialize(*(a1 + 16), 0x1Eu))
                {
                  goto LABEL_220;
                }

                v32 = *(a1 + 16);
                v33 = *v32;
              }

              if (v33 > 10)
              {
                v34 = 1;
              }

              else
              {
                v34 = v33 == -1 && !_LogCategory_Initialize(v32, 0xAu);
              }

              LogPrintF(v32, "OSStatus _VerifyClientM1(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *)", 0x1Eu, "PairVerify client M1 -- start request\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v34);
LABEL_220:
              if (*&v152[24])
              {
                free(*&v152[24]);
              }

              goto LABEL_70;
            }
          }
        }
      }
    }

    v22 = appended;
LABEL_98:
    if (*&v152[24])
    {
      free(*&v152[24]);
    }
  }

LABEL_100:
  *v8 = 0;
  v53 = *(a1 + 16);
  v54 = *v53;
  if (*v53 <= 50)
  {
    if (v54 == -1)
    {
      if (!_LogCategory_Initialize(*(a1 + 16), 0x32u))
      {
        return v22;
      }

      v53 = *(a1 + 16);
      v54 = *v53;
    }

    v55 = *v14;
    if (v54 == -1)
    {
      _LogCategory_Initialize(v53, 0x28u);
    }

    LogPrintF(v53, "OSStatus _VerifyClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "### PairVerify client state %d failed: %#m\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v55);
  }

  return v22;
}

uint64_t _VerifyServerExchange(uint64_t a1, unsigned __int8 *a2, CFIndex a3, UInt8 **a4, size_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v163 = *MEMORY[0x1E69E9840];
  v11 = (a1 + 654);
  v12 = &a2[a3];
  v13 = a2;
  do
  {
    if (v13 == v12)
    {
LABEL_37:
      v26 = 0;
      v27 = 0;
      Bytes = 4294960569;
      goto LABEL_123;
    }

    if (v13 >= v12)
    {
      v26 = 0;
      v27 = 0;
      Bytes = 4294960591;
      goto LABEL_123;
    }

    if ((v12 - v13) < 2)
    {
      goto LABEL_37;
    }

    v14 = v13 + 2;
    v15 = v13[1];
    if (&v13[v15 + 2] > v12)
    {
      v26 = 0;
      v27 = 0;
      Bytes = 4294960546;
      goto LABEL_123;
    }

    v16 = *v13;
    v13 += v15 + 2;
  }

  while (v16 != 6);
  if (v15 != 1)
  {
    v26 = 0;
    v27 = 0;
    Bytes = 4294960553;
    goto LABEL_123;
  }

  if (*v14 == 1)
  {
    _PairingSessionReset(a1);
  }

  v18 = (a1 + 128);
  v17 = *(a1 + 128);
  if (!*(a1 + 128))
  {
    v17 = 1;
    *v18 = 1;
  }

  if (*v14 != v17)
  {
    goto LABEL_28;
  }

  if (v17 == 3)
  {
    AppInfoTLV = 0;
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v144 = 0u;
    *&v132[0] = 0;
    cf = 0;
    v142 = xmmword_191FF95F0;
    __src = &v144;
    v143 = 0;
    v22 = *(a1 + 16);
    v23 = *v22;
    if (*v22 <= 30)
    {
      if (v23 != -1)
      {
LABEL_22:
        if (v23 > 10)
        {
          v24 = 1;
        }

        else
        {
          v24 = v23 == -1 && !_LogCategory_Initialize(v22, 0xAu);
        }

        LogPrintF(v22, "OSStatus _VerifyServerM3(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *, Boolean *, Boolean *)", 0x1Eu, "PairVerify server M3 -- finish request\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v24);
        goto LABEL_77;
      }

      if (_LogCategory_Initialize(*(a1 + 16), 0x1Eu))
      {
        v22 = *(a1 + 16);
        v23 = *v22;
        goto LABEL_22;
      }
    }

LABEL_77:
    v61 = a2;
    do
    {
      if (v61 == v12)
      {
LABEL_187:
        v92 = -6727;
        goto LABEL_193;
      }

      if (v61 >= v12)
      {
        v92 = -6705;
        goto LABEL_193;
      }

      if ((v12 - v61) < 2)
      {
        goto LABEL_187;
      }

      v62 = v61 + 2;
      v63 = v61[1];
      if (&v61[v63 + 2] > v12)
      {
        v92 = -6750;
LABEL_193:
        v27 = 0;
        AppInfoTLV = v92;
        goto LABEL_96;
      }

      v64 = *v61;
      v61 += v63 + 2;
    }

    while (v64 != 7);
    if (v63 == 1)
    {
      v65 = *v62;
      if (v65 >= 0xA)
      {
        if (v65 == 10)
        {
          v66 = -6735;
        }

        else
        {
          v66 = -6700;
        }
      }

      else
      {
        v66 = dword_191FFB0EC[*v62];
      }

      AppInfoTLV = v66;
      v67 = *(a1 + 16);
      if (*v67 <= 50)
      {
        if (*v67 != -1)
        {
          goto LABEL_91;
        }

        if (_LogCategory_Initialize(v67, 0x32u))
        {
          v67 = *(a1 + 16);
          v65 = *v62;
LABEL_91:
          LogPrintF(v67, "OSStatus _VerifyServerM3(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *, Boolean *, Boolean *)", 0x32u, "### PairVerify server M3 bad status: 0x%X, %#m\n", a5, a6, a7, a8, v65);
        }

        v27 = 1;
        if (AppInfoTLV)
        {
          v68 = 0;
          goto LABEL_97;
        }

LABEL_96:
        v69 = TLV8CopyCoalesced(a2, v12, 5, v132, &AppInfoTLV);
        v68 = v69;
        if (AppInfoTLV)
        {
LABEL_97:
          v26 = 0;
          goto LABEL_98;
        }

        v70 = *&v132[0];
        if (*&v132[0] <= 0xFuLL)
        {
          goto LABEL_248;
        }

        *&v132[0] -= 16;
        v71 = &v69[-1].u8[v70];
        AppInfoTLV = _chacha20_poly1305_decrypt_all((a1 + 430), "PV-Msg03", 8, 0, 0, v69, *&v132[0], v69, v71, 16);
        if (AppInfoTLV)
        {
          v76 = *(a1 + 16);
          if (*v76 <= 50)
          {
            if (*v76 == -1)
            {
              if (!_LogCategory_Initialize(v76, 0x32u))
              {
                goto LABEL_189;
              }

              v76 = *(a1 + 16);
            }

            LogPrintF(v76, "OSStatus _VerifyServerM3(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *, Boolean *, Boolean *)", 0x32u, "### PairVerify server bad auth tag\n", v72, v73, v74, v75, v125);
          }

LABEL_189:
          LOBYTE(__dst) = 2;
          AppInfoTLV = TLV8BufferAppend(&__src, 7, &__dst, 1uLL);
          if (AppInfoTLV)
          {
            goto LABEL_97;
          }

          LOBYTE(__dst) = 4;
          p_dst = &__dst;
LABEL_234:
          AppInfoTLV = TLV8BufferAppend(&__src, 6, p_dst, 1uLL);
          if (!AppInfoTLV)
          {
            AppInfoTLV = TLV8BufferDetach(&__src, a4, a5);
            if (!AppInfoTLV)
            {
              _PairingSessionReset(a1);
            }
          }

          goto LABEL_97;
        }

        v77 = *(a1 + 100);
        if ((v77 & 0x1000) != 0)
        {
          if ((v77 & 0x200000) == 0)
          {
            v80 = _PairingSessionAppleIDVerifyPeer(a1, v68, v71);
            AppInfoTLV = v80;
LABEL_215:
            if (v80)
            {
              v115 = *(a1 + 16);
              if (*v115 <= 50)
              {
                if (*v115 == -1)
                {
                  if (!_LogCategory_Initialize(*(a1 + 16), 0x32u))
                  {
                    goto LABEL_229;
                  }

                  v115 = *(a1 + 16);
                  v80 = AppInfoTLV;
                }

                LogPrintF(v115, "OSStatus _VerifyServerM3(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *, Boolean *, Boolean *)", 0x32u, "### PairVerify server bad signature: %#m\n", v72, v73, v74, v75, v80);
              }

LABEL_229:
              v122 = 2;
LABEL_232:
              __s[0] = v122;
              AppInfoTLV = TLV8BufferAppend(&__src, 7, __s, 1uLL);
              if (AppInfoTLV)
              {
                goto LABEL_97;
              }

              __s[0] = 4;
              p_dst = __s;
              goto LABEL_234;
            }

            AppInfoTLV = _PairingSessionVerifyACL(a1, cf);
            if (AppInfoTLV)
            {
              v120 = *(a1 + 16);
              if (*v120 <= 50)
              {
                if (*v120 == -1)
                {
                  if (!_LogCategory_Initialize(v120, 0x32u))
                  {
                    goto LABEL_231;
                  }

                  v120 = *(a1 + 16);
                }

                LogPrintF(v120, "OSStatus _VerifyServerM3(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *, Boolean *, Boolean *)", 0x32u, "### PairVerify server -- client lacks ACL: %@\n", v116, v117, v118, v119, *(a1 + 184));
              }

LABEL_231:
              v122 = 7;
              goto LABEL_232;
            }

            v121 = *(a1 + 280);
            if (v121)
            {
              CFRelease(v121);
            }

            *(a1 + 280) = cf;
            cf = 0;
            AppInfoTLV = _ExtractAppInfoTLV(a1, v68, v71);
            if (AppInfoTLV)
            {
              goto LABEL_97;
            }

            AppInfoTLV = _ExtractGroupInfoTLV(a1, v68, v71);
            if (AppInfoTLV)
            {
              goto LABEL_97;
            }

            *(a1 + 128) = 4;
            AppInfoTLV = _VerifyServerM4(a1, a4, a5);
            v26 = AppInfoTLV == 0;
LABEL_98:
            if (cf)
            {
              CFRelease(cf);
            }

            if (v68)
            {
              free(v68);
            }

            if (v143)
            {
              free(v143);
            }

            Bytes = AppInfoTLV;
            v8 = a6;
            if (!AppInfoTLV)
            {
              goto LABEL_177;
            }

            goto LABEL_123;
          }

LABEL_214:
          v80 = AppInfoTLV;
          goto LABEL_215;
        }

        v78 = *(a1 + 984);
        if (v78)
        {
          v79 = _Block_copy(v78);
          AppInfoTLV = TLV8GetBytes(v68, v71, 10, 0x40uLL, 0x40uLL, &__dst, 0, 0);
          if (AppInfoTLV)
          {
            goto LABEL_114;
          }

          v94 = *(a1 + 606);
          *__s = *(a1 + 590);
          v138 = v94;
          v95 = *(a1 + 478);
          v139 = *(a1 + 462);
          v140 = v95;
          v96 = v79[2](v79, *(a1 + 100), __s, 64, &__dst);
          AppInfoTLV = v96;
          if (v96 != -6714)
          {
            if (v96)
            {
              v109 = *(a1 + 16);
              if (*v109 <= 90)
              {
                if (*v109 == -1)
                {
                  if (!_LogCategory_Initialize(*(a1 + 16), 0x5Au))
                  {
                    goto LABEL_114;
                  }

                  v109 = *(a1 + 16);
                  v96 = AppInfoTLV;
                }

                LogPrintF(v109, "OSStatus _VerifyServerM3(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *, Boolean *, Boolean *)", 0x5Au, "### PairVerify server M3 verify signature failed: %#m\n", v97, v98, v99, v100, v96);
              }

LABEL_114:

              goto LABEL_97;
            }

            goto LABEL_214;
          }
        }

        v101 = *(a1 + 312);
        if (v101)
        {
          free(v101);
          *(a1 + 312) = 0;
        }

        *(a1 + 320) = 0;
        v102 = TLV8CopyCoalesced(v68, v71, 1, (a1 + 320), &AppInfoTLV);
        *(a1 + 312) = v102;
        if (AppInfoTLV)
        {
          goto LABEL_97;
        }

        v103 = *(a1 + 320);
        if (v103)
        {
          AppInfoTLV = PairingSessionFindPeerEx(a1, v102, v103, (a1 + 622), &cf, a6, a7, a8);
          if (AppInfoTLV)
          {
            v108 = *(a1 + 16);
            if (*v108 <= 50)
            {
              if (*v108 == -1)
              {
                if (!_LogCategory_Initialize(v108, 0x32u))
                {
                  goto LABEL_229;
                }

                v108 = *(a1 + 16);
              }

              LogPrintF(v108, "OSStatus _VerifyServerM3(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *, Boolean *, Boolean *)", 0x32u, "### PairVerify server unknown peer: %.*s\n", v104, v105, v106, v107, *(a1 + 320));
            }

            goto LABEL_229;
          }

          AppInfoTLV = TLV8GetBytes(v68, v71, 10, 0x40uLL, 0x40uLL, &__dst, 0, 0);
          if (AppInfoTLV)
          {
            goto LABEL_97;
          }

          v110 = malloc_type_malloc(*(a1 + 320) + 64, 0x100004077774924uLL);
          if (v110)
          {
            v111 = v110;
            v112 = *(a1 + 606);
            *v110 = *(a1 + 590);
            *(v110 + 1) = v112;
            memcpy(v110 + 32, *(a1 + 312), *(a1 + 320));
            v113 = &v111[*(a1 + 320)];
            v114 = *(a1 + 478);
            *(v113 + 2) = *(a1 + 462);
            *(v113 + 3) = v114;
            ccsha512_di();
            AppInfoTLV = cced25519_verify();
            free(v111);
            goto LABEL_214;
          }

          v26 = 0;
          v123 = -6728;
        }

        else
        {
LABEL_248:
          v26 = 0;
          v123 = -6743;
        }

        AppInfoTLV = v123;
        goto LABEL_98;
      }

      v68 = 0;
      v26 = 0;
    }

    else
    {
      v68 = 0;
      v26 = 0;
      AppInfoTLV = -6743;
    }

    v27 = 1;
    goto LABEL_98;
  }

  if (v17 == 1)
  {
    v19 = *(a1 + 16);
    v20 = *v19;
    if (*v19 <= 30)
    {
      if (v20 != -1)
      {
        goto LABEL_17;
      }

      if (_LogCategory_Initialize(*(a1 + 16), 0x1Eu))
      {
        v19 = *(a1 + 16);
        v20 = *v19;
LABEL_17:
        if (v20 > 10)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20 == -1 && !_LogCategory_Initialize(v19, 0xAu);
        }

        LogPrintF(v19, "OSStatus _VerifyServerM1(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *)", 0x1Eu, "PairVerify server M1 -- start request\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v21);
      }
    }

    LOBYTE(cf) = 0;
    if (TLV8GetBytes(a2, v12, 0, 1uLL, 1uLL, &cf, 0, 0))
    {
      LOBYTE(cf) = 2;
      goto LABEL_43;
    }

    v29 = cf;
    if (cf == 2)
    {
LABEL_43:
      *(a1 + 704) = 2;
      RandomBytes((a1 + 494), 0x20uLL);
      ccsha512_di();
      cchkdf();
      v30 = (a1 + 462);
      cccurve25519_make_pub();
      v31 = (a1 + 590);
      Bytes = TLV8GetBytes(a2, v12, 3, 0x20uLL, 0x20uLL, (a1 + 590), 0, 0);
      if (!Bytes)
      {
        cccurve25519();
        v32 = vorrq_s8(v11[1], *v11);
        if (vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)))
        {
          *(a1 + 208) = TLV8GetUInt64(a2, v12, 25, 0, 0);
          *(a1 + 128) = 2;
          v161 = 0u;
          v162 = 0u;
          v159 = 0u;
          v160 = 0u;
          v157 = 0u;
          v158 = 0u;
          v155 = 0u;
          v156 = 0u;
          v153 = 0u;
          v154 = 0u;
          v151 = 0u;
          v152 = 0u;
          v149 = 0u;
          v150 = 0u;
          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          v144 = 0u;
          memset(v136, 0, sizeof(v136));
          v142 = xmmword_191FF95F0;
          __src = &v144;
          v143 = 0;
          __dst = v136;
          v134 = xmmword_191FF95F0;
          v135 = 0;
          v33 = *(a1 + 100);
          if ((v33 & 0x1000) != 0)
          {
            if ((v33 & 0x20100000) == 0)
            {
              appended = _PairingSessionAppleIDProveSelf(a1, &__dst);
              if (appended)
              {
                goto LABEL_170;
              }
            }

            goto LABEL_62;
          }

          v34 = *(a1 + 976);
          if (!v34)
          {
            goto LABEL_50;
          }

          v35 = _Block_copy(v34);
          v36 = *(a1 + 478);
          v132[0] = *v30;
          v132[1] = v36;
          v37 = *(a1 + 606);
          v132[2] = *v31;
          v132[3] = v37;
          v38 = (*(v35 + 2))(v35, *(a1 + 100), v132, 64, __s);
          if (!v38)
          {
            Bytes = TLV8BufferAppend(&__dst, 10, __s, 0x40uLL);

            if (!Bytes)
            {
              goto LABEL_62;
            }

            goto LABEL_171;
          }

          Bytes = v38;
          if (v38 == -6714)
          {

LABEL_50:
            v43 = *(a1 + 192);
            if (v43)
            {
              free(v43);
              *(a1 + 192) = 0;
            }

            *(a1 + 200) = 0;
            v44 = PairingSessionCopyIdentity(a1, 0, (a1 + 192), (a1 + 526), a1 + 558);
            if (v44)
            {
              Bytes = v44;
              v124 = *(a1 + 16);
              if (*v124 > 90)
              {
                goto LABEL_171;
              }

              if (*v124 == -1)
              {
                if (!_LogCategory_Initialize(v124, 0x5Au))
                {
                  goto LABEL_171;
                }

                v124 = *(a1 + 16);
              }

              LogPrintF(v124, "OSStatus _VerifyServerM2(PairingSessionRef, uint8_t **, size_t *)", 0x5Au, "### PairVerify server M2 failed: copy identity, %#m\n", a5, a6, a7, a8, Bytes);
              goto LABEL_171;
            }

            v45 = strlen(*(a1 + 192));
            *(a1 + 200) = v45;
            if (v45)
            {
              v46 = v45;
              v47 = malloc_type_malloc(v45 + 64, 0x100004077774924uLL);
              if (!v47)
              {
                goto LABEL_252;
              }

              v48 = v47;
              v49 = *(a1 + 478);
              *v47 = *v30;
              *(v47 + 1) = v49;
              memcpy(v47 + 32, *(a1 + 192), *(a1 + 200));
              v50 = &v48[*(a1 + 200)];
              v51 = *(a1 + 606);
              *(v50 + 2) = *v31;
              *(v50 + 3) = v51;
              v52 = *(a1 + 960);
              if (v52)
              {
                v52(*(a1 + 100), v48, v46 + 64, __s, *(a1 + 968));
              }

              else
              {
                ccsha512_di();
                cced25519_sign();
              }

              free(v48);
              appended = TLV8BufferAppend(&__dst, 1, *(a1 + 192), *(a1 + 200));
              if (appended || (appended = TLV8BufferAppend(&__dst, 10, __s, 0x40uLL), appended))
              {
LABEL_170:
                Bytes = appended;
                goto LABEL_171;
              }

LABEL_62:
              v55 = *(a1 + 216);
              if (v55)
              {
                appended = TLV8BufferAppendUInt64(&__dst, 25, v55);
                if (appended)
                {
                  goto LABEL_170;
                }
              }

              appended = _AddAppInfoTLV(*(a1 + 360), &__dst);
              if (appended)
              {
                goto LABEL_170;
              }

              v56 = malloc_type_malloc(v134 + 16, 0x100004077774924uLL);
              if (v56)
              {
                v57 = v56;
                CryptoHKDF(_kCryptoHashDescriptor_SHA512, v11, 32, "Pair-Verify-Encrypt-Salt", 0x18uLL, "Pair-Verify-Encrypt-Info", 24, 0x20uLL, a1 + 430);
                _chacha20_poly1305_encrypt_all((a1 + 430), "PV-Msg02", 8, 0, 0, __dst, v134, v57, v57->i64 + v134);
                Bytes = TLV8BufferAppend(&__src, 5, v57->i8, v134 + 16);
                free(v57);
                if (Bytes)
                {
                  goto LABEL_171;
                }

                *v18 = 2;
                appended = TLV8BufferAppend(&__src, 6, (a1 + 128), 1uLL);
                if (appended)
                {
                  goto LABEL_170;
                }

                appended = TLV8BufferAppend(&__src, 3, (a1 + 462), 0x20uLL);
                if (appended)
                {
                  goto LABEL_170;
                }

                appended = TLV8BufferDetach(&__src, a4, a5);
                if (appended)
                {
                  goto LABEL_170;
                }

                v58 = *(a1 + 16);
                v59 = *v58;
                if (*v58 <= 30)
                {
                  if (v59 != -1)
                  {
                    goto LABEL_72;
                  }

                  if (_LogCategory_Initialize(*(a1 + 16), 0x1Eu))
                  {
                    v58 = *(a1 + 16);
                    v59 = *v58;
LABEL_72:
                    if (v59 > 10)
                    {
                      v60 = 1;
                    }

                    else
                    {
                      v60 = v59 == -1 && !_LogCategory_Initialize(v58, 0xAu);
                    }

                    LogPrintF(v58, "OSStatus _VerifyServerM2(PairingSessionRef, uint8_t **, size_t *)", 0x1Eu, "PairVerify server M2 -- start response\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v60);
                  }
                }

                Bytes = 0;
                *v18 = 3;
              }

              else
              {
LABEL_252:
                Bytes = 4294960568;
              }
            }

            else
            {
              Bytes = 4294960588;
            }

LABEL_171:
            v8 = a6;
LABEL_172:
            if (v135)
            {
              free(v135);
              v135 = 0;
            }

            if (v143)
            {
              free(v143);
            }

            v26 = 0;
            if (!Bytes)
            {
LABEL_177:
              Bytes = 0;
              if (a4 && a5)
              {
                _PairingSessionUpdateTranscript(a1, a2, a3, *a4, *a5);
LABEL_180:
                Bytes = 0;
              }

              goto LABEL_181;
            }

            v27 = 0;
            goto LABEL_123;
          }

          v91 = *(a1 + 16);
          v8 = a6;
          if (*v91 <= 90)
          {
            if (*v91 == -1)
            {
              if (!_LogCategory_Initialize(v91, 0x5Au))
              {
                goto LABEL_198;
              }

              v91 = *(a1 + 16);
            }

            LogPrintF(v91, "OSStatus _VerifyServerM2(PairingSessionRef, uint8_t **, size_t *)", 0x5Au, "### PairVerify server M2 sign failed: %#m\n", v39, v40, v41, v42, Bytes);
          }

LABEL_198:

          goto LABEL_172;
        }

        Bytes = 4294960554;
      }

      goto LABEL_121;
    }

    v53 = *(a1 + 16);
    if (*v53 <= 50)
    {
      if (*v53 == -1)
      {
        if (!_LogCategory_Initialize(v53, 0x32u))
        {
          goto LABEL_120;
        }

        v53 = *(a1 + 16);
        v29 = cf;
      }

      LogPrintF(v53, "OSStatus _VerifyServerM1(PairingSessionRef, const uint8_t *const, const uint8_t *const, uint8_t **, size_t *)", 0x32u, "### PairVerify server unsupported method: %u\n", a5, a6, a7, a8, v29);
    }

LABEL_120:
    Bytes = 4294960561;
LABEL_121:
    v26 = 0;
    v27 = 0;
    goto LABEL_122;
  }

  v25 = *(a1 + 16);
  if (*v25 <= 60)
  {
    v8 = a6;
    if (*v25 == -1)
    {
      if (!_LogCategory_Initialize(v25, 0x3Cu))
      {
        goto LABEL_34;
      }

      v25 = *(a1 + 16);
      v17 = *(a1 + 128);
    }

    LogPrintF(v25, "OSStatus _VerifyServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x3Cu, "### PairVerify server bad state: %d\n", a5, a6, a7, a8, v17);
LABEL_34:
    v26 = 0;
    v27 = 0;
    Bytes = 4294960587;
    goto LABEL_123;
  }

LABEL_28:
  v26 = 0;
  v27 = 0;
  Bytes = 4294960587;
LABEL_122:
  v8 = a6;
LABEL_123:
  v81 = *(a1 + 16);
  v82 = *v81;
  if (*v81 > 50)
  {
    goto LABEL_128;
  }

  if (v82 != -1)
  {
    goto LABEL_125;
  }

  if (!_LogCategory_Initialize(*(a1 + 16), 0x32u))
  {
LABEL_128:
    if (v27)
    {
      goto LABEL_181;
    }

    goto LABEL_132;
  }

  v81 = *(a1 + 16);
  v82 = *v81;
LABEL_125:
  v83 = *(a1 + 128);
  if (v82 == -1)
  {
    _LogCategory_Initialize(v81, 0x28u);
  }

  LogPrintF(v81, "OSStatus _VerifyServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "### PairVerify server state %d failed: %#m\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v83);
  if (v27)
  {
    goto LABEL_181;
  }

LABEL_132:
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v144 = 0u;
  v142 = xmmword_191FF95F0;
  __src = &v144;
  v143 = 0;
  if (Bytes <= -6764)
  {
    if (Bytes > -6774)
    {
      if (Bytes == -6773)
      {
        v84 = 7;
      }

      else
      {
        if (Bytes != -6764)
        {
          goto LABEL_153;
        }

        v84 = 6;
      }
    }

    else if (Bytes == -71144)
    {
      v84 = 8;
    }

    else
    {
      if (Bytes != -6776)
      {
        goto LABEL_153;
      }

      v84 = 9;
    }
  }

  else if (Bytes <= -6755)
  {
    if (Bytes == -6763)
    {
      v84 = 5;
    }

    else
    {
      if (Bytes != -6760)
      {
        goto LABEL_153;
      }

      v84 = 3;
    }
  }

  else
  {
    switch(Bytes)
    {
      case 0xFFFFE59E:
        v84 = 2;
        break;
      case 0xFFFFE5B9:
        v84 = 4;
        break;
      case 0xFFFFE5D4:
        v84 = 1;
        break;
      default:
LABEL_153:
        if (Bytes == -6735)
        {
          v84 = 10;
        }

        else
        {
          v84 = 1;
        }

        break;
    }
  }

  v85 = TLV8BufferAppendUInt64(&__src, 7, v84);
  if (!v85)
  {
    v85 = TLV8BufferAppendUInt64(&__src, 6, *(a1 + 128));
    if (!v85)
    {
      v86 = v142;
      v87 = v143;
      if (!v143)
      {
        if (v142 <= 1)
        {
          v88 = 1;
        }

        else
        {
          v88 = v142;
        }

        v89 = malloc_type_malloc(v88, 0x100004077774924uLL);
        if (!v89)
        {
          Bytes = 4294960568;
          goto LABEL_181;
        }

        v87 = v89;
        if (v86)
        {
          memcpy(v89, __src, v86);
        }
      }

      __src = &v144;
      *&v142 = 0;
      v143 = 0;
      *a4 = v87;
      *a5 = v86;
      _PairingSessionReset(a1);
      goto LABEL_180;
    }
  }

  Bytes = v85;
LABEL_181:
  *v8 = v26;
  return Bytes;
}

uint64_t _ResumePairingClientExchange(uint64_t a1, unsigned __int8 *a2, uint64_t a3, UInt8 **a4, size_t *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = 0;
  v58 = v61;
  v59 = xmmword_191FF95F0;
  v60 = 0;
  v15 = (a1 + 128);
  v14 = *(a1 + 128);
  if (!*(a1 + 128))
  {
    v14 = 1;
    *v15 = 1;
  }

  v16 = &a2[a3];
  memset(v61, 0, sizeof(v61));
  if (a3)
  {
    v17 = a2;
    do
    {
      if (v17 == v16)
      {
        goto LABEL_42;
      }

      if (v17 >= v16)
      {
        goto LABEL_69;
      }

      if (v16 - v17 < 2)
      {
LABEL_42:
        v29 = -6727;
        goto LABEL_71;
      }

      v18 = v17 + 2;
      v19 = v17[1];
      if (&v17[v19 + 2] > v16)
      {
        v29 = -6750;
        goto LABEL_71;
      }

      v20 = *v17;
      v17 += v19 + 2;
    }

    while (v20 != 6);
    if (v19 == 1)
    {
      if (*v18 == v14)
      {
        goto LABEL_12;
      }

      v29 = -6709;
    }

    else
    {
      v29 = -6743;
    }

    goto LABEL_71;
  }

LABEL_12:
  if (v14 == 2)
  {
    v25 = *(a1 + 16);
    v26 = *v25;
    if (*v25 <= 30)
    {
      if (v26 == -1)
      {
        if (!_LogCategory_Initialize(*(a1 + 16), 0x1Eu))
        {
          goto LABEL_45;
        }

        v25 = *(a1 + 16);
        v26 = *v25;
      }

      if (v26 > 10)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26 == -1 && !_LogCategory_Initialize(v25, 0xAu);
      }

      LogPrintF(v25, "OSStatus _ResumePairingClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "Pair-resume client M2 -- resume response\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v27);
    }

LABEL_45:
    Bytes = TLV8GetBytes(a2, &a2[a3], 0, 1uLL, 1uLL, &__dst, 0, 0);
    if (!Bytes && __dst == 6)
    {
      UInt64 = TLV8GetUInt64(a2, &a2[a3], 14, &Bytes, 0);
      *(a1 + 392) = UInt64;
      if (Bytes)
      {
        goto LABEL_57;
      }

      v35 = *(a1 + 478);
      __dst = *(a1 + 462);
      v55 = v35;
      v56 = UInt64;
      ccsha512_di();
      cchkdf();
      v36 = TLV8CopyCoalesced(a2, &a2[a3], 5, &v52, &Bytes);
      v23 = v36;
      if (!Bytes)
      {
        v37 = v52;
        if (v52 <= 0xF)
        {
          v28 = 0;
          Bytes = -6743;
LABEL_35:
          *a6 = v28;
          if (v60)
          {
            free(v60);
            v60 = 0;
          }

          if (!v23)
          {
            goto LABEL_59;
          }

LABEL_38:
          free(v23);
          goto LABEL_59;
        }

        v38 = v52 - 16;
        v52 = v38;
        Bytes = _chacha20_poly1305_decrypt_all(__s, "PR-Msg02", 8, 0, 0, v36, v38, v36, v36[-1].i64 + v37, 16);
        memset_s(__s, 0x20uLL, 0, 0x20uLL);
        if (!Bytes)
        {
          v46 = *(a1 + 88);
          if (!v46 || (Bytes = v46(v23, v38, *(a1 + 24))) == 0)
          {
            CryptoHKDF(_kCryptoHashDescriptor_SHA512, a1 + 654, 32, &__dst, 0x28uLL, "Pair-Resume-Shared-Secret-Info", 30, 0x20uLL, a1 + 654);
            _PairingSaveResumeState(a1, *(a1 + 312), *(a1 + 320), *(a1 + 256), *(a1 + 264), *(a1 + 392), (a1 + 654));
            *a4 = 0;
            *a5 = 0;
            *(a1 + 128) = 3;
            v47 = *(a1 + 16);
            if (*v47 <= 30)
            {
              if (*v47 == -1)
              {
                if (!_LogCategory_Initialize(v47, 0x1Eu))
                {
                  goto LABEL_78;
                }

                v47 = *(a1 + 16);
              }

              LogPrintF(v47, "OSStatus _ResumePairingClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "Pair-resume client done\n", a5, a6, a7, a8, v51);
            }

LABEL_78:
            v28 = 1;
            goto LABEL_34;
          }
        }
      }

      v28 = 0;
      goto LABEL_35;
    }

    v39 = *(a1 + 16);
    if (*v39 <= 50)
    {
      if (*v39 == -1)
      {
        if (!_LogCategory_Initialize(v39, 0x32u))
        {
          goto LABEL_56;
        }

        v39 = *(a1 + 16);
      }

      LogPrintF(v39, "OSStatus _ResumePairingClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "Pair-resume client M2 for ID %llu failed %#m...doing PairVerify\n", v30, v31, v32, v33, *(a1 + 392));
    }

LABEL_56:
    *(a1 + 128) = 2;
    *(a1 + 96) = 3;
    Bytes = _VerifyClientExchange(a1, a2, a3, a4, a5, a6, v32, v33);
    goto LABEL_57;
  }

  if (v14 != 1)
  {
    v23 = 0;
    v28 = 0;
LABEL_34:
    Bytes = 0;
    goto LABEL_35;
  }

  if (a3)
  {
LABEL_69:
    v29 = -6705;
  }

  else if (*(a1 + 368))
  {
    v21 = *(a1 + 312);
    if (v21)
    {
      free(v21);
      *(a1 + 312) = 0;
    }

    *(a1 + 320) = 0;
    if (_PairingFindResumeState(*(a1 + 392), (a1 + 312), (a1 + 320), (a1 + 654)))
    {
      v29 = -6767;
    }

    else
    {
      RandomBytes((a1 + 494), 0x20uLL);
      ccsha512_di();
      cchkdf();
      cccurve25519_make_pub();
      v22 = malloc_type_malloc(*(a1 + 376) + 16, 0x100004077774924uLL);
      if (v22)
      {
        v23 = v22;
        v24 = *(a1 + 478);
        __dst = *(a1 + 462);
        v55 = v24;
        v56 = *(a1 + 392);
        ccsha512_di();
        cchkdf();
        _chacha20_poly1305_encrypt_all(__s, "PR-Msg01", 8, 0, 0, *(a1 + 368), *(a1 + 376), v23, v23->i64 + *(a1 + 376));
        memset_s(__s, 0x20uLL, 0, 0x20uLL);
        Bytes = TLV8BufferAppend(&v58, 6, v15, 1uLL);
        if (Bytes || (v62[0] = 6, (Bytes = TLV8BufferAppend(&v58, 0, v62, 1uLL)) != 0) || (Bytes = TLV8BufferAppendUInt64(&v58, 14, *(a1 + 392))) != 0 || (Bytes = TLV8BufferAppend(&v58, 5, v23->i8, *(a1 + 376) + 16)) != 0 || (Bytes = TLV8BufferAppend(&v58, 3, (a1 + 462), 0x20uLL)) != 0 || (Bytes = TLV8BufferDetach(&v58, a4, a5)) != 0)
        {
          *a6 = 0;
          if (v60)
          {
            free(v60);
            v60 = 0;
          }

          goto LABEL_38;
        }

        v48 = *(a1 + 16);
        v49 = *v48;
        if (*v48 > 30)
        {
          goto LABEL_94;
        }

        if (v49 == -1)
        {
          if (!_LogCategory_Initialize(*(a1 + 16), 0x1Eu))
          {
LABEL_94:
            v28 = 0;
            *v15 = 2;
            goto LABEL_34;
          }

          v48 = *(a1 + 16);
          v49 = *v48;
        }

        if (v49 > 10)
        {
          v50 = 1;
        }

        else
        {
          v50 = v49 == -1 && !_LogCategory_Initialize(v48, 0xAu);
        }

        LogPrintF(v48, "OSStatus _ResumePairingClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "Pair-resume client M1 -- resume request\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v50);
        goto LABEL_94;
      }

      v29 = -6728;
    }
  }

  else
  {
    v29 = -6745;
  }

LABEL_71:
  Bytes = v29;
LABEL_57:
  *a6 = 0;
  if (v60)
  {
    free(v60);
    v60 = 0;
  }

LABEL_59:
  v40 = Bytes;
  if (Bytes)
  {
    v41 = *(a1 + 16);
    v42 = *v41;
    if (*v41 <= 50)
    {
      if (v42 == -1)
      {
        v44 = _LogCategory_Initialize(*(a1 + 16), 0x32u);
        v40 = Bytes;
        if (!v44)
        {
          return v40;
        }

        v41 = *(a1 + 16);
        v42 = *v41;
      }

      v43 = *v15;
      if (v42 == -1)
      {
        _LogCategory_Initialize(v41, 0x28u);
      }

      LogPrintF(v41, "OSStatus _ResumePairingClientExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "### Pair-resume client state %d failed: %#m\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v43);
      return Bytes;
    }
  }

  return v40;
}

uint64_t _ResumePairingServerExchange(uint64_t a1, unsigned __int8 *a2, uint64_t a3, UInt8 **a4, size_t *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v65 = *MEMORY[0x1E69E9840];
  v14 = &a2[a3];
  memset(v63, 0, sizeof(v63));
  __n = 0;
  __src = 0;
  v60 = v63;
  v61 = xmmword_191FF95F0;
  v15 = a2;
  v62 = 0;
  do
  {
    if (v15 == v14)
    {
LABEL_78:
      v27 = -6727;
      goto LABEL_81;
    }

    if (v15 >= v14)
    {
      v27 = -6705;
      goto LABEL_81;
    }

    if ((v14 - v15) < 2)
    {
      goto LABEL_78;
    }

    v16 = v15 + 2;
    v17 = v15[1];
    if (&v15[v17 + 2] > v14)
    {
      v27 = -6750;
LABEL_81:
      v25 = 0;
      v26 = 0;
      goto LABEL_27;
    }

    v18 = *v15;
    v15 += v17 + 2;
  }

  while (v18 != 6);
  Bytes = 0;
  if (v17 != 1)
  {
    v25 = 0;
    goto LABEL_85;
  }

  if (*v16 == 1)
  {
    _PairingSessionReset(a1);
  }

  v20 = (a1 + 128);
  v19 = *(a1 + 128);
  if (*(a1 + 128))
  {
    if (*v16 != v19)
    {
      goto LABEL_26;
    }

    if (v19 != 1)
    {
      v21 = *(a1 + 16);
      if (*v21 <= 60)
      {
        if (*v21 != -1)
        {
          goto LABEL_15;
        }

        if (_LogCategory_Initialize(v21, 0x3Cu))
        {
          v21 = *(a1 + 16);
          v19 = *(a1 + 128);
LABEL_15:
          LogPrintF(v21, "OSStatus _ResumePairingServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x3Cu, "### Pair-resume server bad state: %d\n", a5, a6, a7, a8, v19);
        }
      }

LABEL_26:
      v25 = 0;
      v26 = 0;
      v27 = -6709;
LABEL_27:
      Bytes = v27;
      goto LABEL_35;
    }
  }

  else
  {
    *v20 = 1;
    if (*v16 != 1)
    {
      goto LABEL_26;
    }
  }

  v22 = *(a1 + 16);
  v23 = *v22;
  if (*v22 <= 30)
  {
    if (v23 != -1)
    {
LABEL_19:
      if (v23 > 10)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23 == -1 && !_LogCategory_Initialize(v22, 0xAu);
      }

      LogPrintF(v22, "OSStatus _ResumePairingServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "Pair-resume server M1 -- resume request\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v24);
      goto LABEL_30;
    }

    if (_LogCategory_Initialize(*(a1 + 16), 0x1Eu))
    {
      v22 = *(a1 + 16);
      v23 = *v22;
      goto LABEL_19;
    }
  }

LABEL_30:
  Bytes = TLV8GetBytes(a2, v14, 0, 1uLL, 1uLL, __dst, 0, 0);
  if (Bytes)
  {
    goto LABEL_33;
  }

  if (LOBYTE(__dst[0]) != 6)
  {
    v25 = 0;
    v26 = 0;
    v27 = -6707;
    goto LABEL_27;
  }

  UInt64 = TLV8GetUInt64(a2, v14, 14, &Bytes, 0);
  *(a1 + 392) = UInt64;
  if (Bytes)
  {
    goto LABEL_33;
  }

  if (*(a1 + 312))
  {
    free(*(a1 + 312));
    *(a1 + 312) = 0;
    UInt64 = *(a1 + 392);
  }

  *(a1 + 320) = 0;
  Bytes = _PairingFindResumeState(UInt64, (a1 + 312), (a1 + 320), (a1 + 654));
  if (Bytes)
  {
    v38 = *(a1 + 16);
    if (*v38 <= 50)
    {
      if (*v38 == -1)
      {
        if (!_LogCategory_Initialize(v38, 0x32u))
        {
          goto LABEL_83;
        }

        v38 = *(a1 + 16);
      }

      LogPrintF(v38, "OSStatus _ResumePairingServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "Pair-resume server M1 for ID %llu failed %#m...doing PairVerify\n", v34, v35, v36, v37, *(a1 + 392));
    }

LABEL_83:
    *(a1 + 128) = 0;
    *(a1 + 96) = 3;
    v49 = _VerifyClientExchange(a1, a2, a3, a4, a5, a6, v36, v37);
    v25 = 0;
    v26 = 0;
    Bytes = v49;
    goto LABEL_35;
  }

  Bytes = TLV8GetBytes(a2, v14, 3, 0x20uLL, 0x20uLL, (a1 + 590), 0, 0);
  if (Bytes)
  {
LABEL_33:
    v25 = 0;
LABEL_34:
    v26 = 0;
    goto LABEL_35;
  }

  v55 = 0;
  v40 = *(a1 + 606);
  __dst[0] = *(a1 + 590);
  __dst[1] = v40;
  v58 = *(a1 + 392);
  CryptoHKDF(_kCryptoHashDescriptor_SHA512, a1 + 654, 32, __dst, 0x28uLL, "Pair-Resume-Request-Info", 24, 0x20uLL, __s);
  v41 = TLV8CopyCoalesced(a2, v14, 5, &v55, &Bytes);
  v25 = v41;
  if (Bytes)
  {
    goto LABEL_34;
  }

  if (v55 <= 0xF)
  {
LABEL_85:
    v26 = 0;
    v27 = -6743;
    goto LABEL_27;
  }

  v42 = v55 - 16;
  Bytes = _chacha20_poly1305_decrypt_all(__s, "PR-Msg01", 8, 0, 0, v41, v55 - 16, v41, v41[-1].i64 + v55, 16);
  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  if (Bytes)
  {
    goto LABEL_34;
  }

  _PairingRemoveResumeSessionID(*(a1 + 392));
  RandomBytes(&v58, 8uLL);
  Bytes = 0;
  CryptoHKDF(_kCryptoHashDescriptor_SHA512, &v58, 8, "Pair-Resume-SessionID-Salt", 0x1AuLL, "Pair-Resume-SessionID-Info", 26, 8uLL, &v58);
  *(a1 + 392) = v58;
  v43 = *(a1 + 80);
  if (v43)
  {
    Bytes = v43(*(a1 + 312), *(a1 + 320), v25, v42, &__src, &__n, *(a1 + 24));
    if (Bytes)
    {
      goto LABEL_34;
    }
  }

  if (v25)
  {
    free(v25);
  }

  *v20 = 2;
  v44 = __n + 16;
  v55 = __n + 16;
  v45 = malloc_type_malloc(__n + 16, 0x100004077774924uLL);
  v25 = v45;
  if (!v45)
  {
    v26 = 0;
    v27 = -6728;
    goto LABEL_27;
  }

  if (__n)
  {
    memcpy(v45, __src, __n);
  }

  CryptoHKDF(_kCryptoHashDescriptor_SHA512, a1 + 654, 32, __dst, 0x28uLL, "Pair-Resume-Response-Info", 25, 0x20uLL, __s);
  _chacha20_poly1305_encrypt_all(__s, "PR-Msg02", 8, 0, 0, __src, __n, v25, v25->i64 + __n);
  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  CryptoHKDF(_kCryptoHashDescriptor_SHA512, a1 + 654, 32, __dst, 0x28uLL, "Pair-Resume-Shared-Secret-Info", 30, 0x20uLL, a1 + 654);
  _PairingSaveResumeState(a1, *(a1 + 312), *(a1 + 320), *(a1 + 256), *(a1 + 264), *(a1 + 392), (a1 + 654));
  Bytes = TLV8BufferAppend(&v60, 6, (a1 + 128), 1uLL);
  if (Bytes)
  {
    goto LABEL_34;
  }

  v64[0] = 6;
  Bytes = TLV8BufferAppend(&v60, 0, v64, 1uLL);
  if (Bytes)
  {
    goto LABEL_34;
  }

  Bytes = TLV8BufferAppendUInt64(&v60, 14, *(a1 + 392));
  if (Bytes)
  {
    goto LABEL_34;
  }

  Bytes = TLV8BufferAppend(&v60, 5, v25->i8, v44);
  if (Bytes)
  {
    goto LABEL_34;
  }

  Bytes = TLV8BufferDetach(&v60, a4, a5);
  if (Bytes)
  {
    goto LABEL_34;
  }

  v46 = *(a1 + 16);
  v47 = *v46;
  if (*v46 >= 31)
  {
    *v20 = 3;
    goto LABEL_100;
  }

  if (v47 == -1)
  {
    v50 = _LogCategory_Initialize(*(a1 + 16), 0x1Eu);
    v46 = *(a1 + 16);
    if (!v50)
    {
      goto LABEL_96;
    }

    v47 = *v46;
  }

  if (v47 > 10)
  {
    v48 = 1;
  }

  else
  {
    v48 = v47 == -1 && !_LogCategory_Initialize(v46, 0xAu);
  }

  LogPrintF(v46, "OSStatus _ResumePairingServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "Pair-resume server M2 -- resume response\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v48);
  v46 = *(a1 + 16);
LABEL_96:
  v51 = *v46;
  *v20 = 3;
  if (v51 <= 30)
  {
    if (v51 == -1)
    {
      if (!_LogCategory_Initialize(v46, 0x1Eu))
      {
        goto LABEL_100;
      }

      v46 = *(a1 + 16);
    }

    LogPrintF(v46, "OSStatus _ResumePairingServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x1Eu, "Pair-resume server done\n", a5, a6, a7, a8, v52);
  }

LABEL_100:
  Bytes = 0;
  v26 = 1;
LABEL_35:
  *a6 = v26;
  if (v62)
  {
    free(v62);
    v62 = 0;
  }

  if (__src)
  {
    free(__src);
    __src = 0;
  }

  if (v25)
  {
    free(v25);
  }

  v29 = Bytes;
  if (Bytes)
  {
    v30 = *(a1 + 16);
    v31 = *v30;
    if (*v30 <= 50)
    {
      if (v31 == -1)
      {
        v33 = _LogCategory_Initialize(*(a1 + 16), 0x32u);
        v29 = Bytes;
        if (!v33)
        {
          return v29;
        }

        v30 = *(a1 + 16);
        v31 = *v30;
      }

      v32 = *(a1 + 128);
      if (v31 == -1)
      {
        _LogCategory_Initialize(v30, 0x28u);
      }

      LogPrintF(v30, "OSStatus _ResumePairingServerExchange(PairingSessionRef, const void *, size_t, uint8_t **, size_t *, Boolean *)", 0x32u, "### Pair-resume server state %d failed: %#m\n%?{end}%1{tlv8}\n", a5, a6, a7, a8, v32);
      return Bytes;
    }
  }

  return v29;
}

uint64_t _PairingSessionSavePeerKeychain(uint64_t a1, char *a2, uint64_t a3, unsigned __int8 *a4, unsigned int a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v34[0] = 0;
  pthread_mutex_lock(&gPairingGlobalLock);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    Data = 0;
    goto LABEL_22;
  }

  v15 = Mutable;
  v16 = MEMORY[0x1E695E4D0];
  if ((*(a1 + 840) & 4) != 0)
  {
    CFDictionarySetValue(Mutable, @"homeKitRegistered", *MEMORY[0x1E695E4D0]);
  }

  if (a5)
  {
    CFDictionarySetInt64(v15, @"permissions", a5);
    if (a5)
    {
      v17 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      Data = v17;
      if (v17)
      {
        CFDictionarySetValue(v17, @"com.apple.admin", *v16);
        CFDictionarySetValue(v15, @"acl", Data);
        CFRelease(Data);
        goto LABEL_8;
      }

LABEL_22:
      v20 = 4294960568;
      goto LABEL_23;
    }
  }

LABEL_8:
  if (CFDictionaryGetCount(v15) < 1)
  {
    CFRelease(v15);
    Data = 0;
  }

  else
  {
    Data = CFPropertyListCreateData(0, v15, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    CFRelease(v15);
    if (!Data)
    {
      v20 = 4294960596;
      goto LABEL_23;
    }
  }

  _PairingSessionDeletePeer(a1, a2, a3, v19, v11, v12, v13, v14);
  v34[0] = 0;
  ASPrintF(v34, "%@: %.*s", v21, v22, v23, v24, v25, v26, *(a1 + 816));
  v27 = v34[0];
  if (!v34[0])
  {
    goto LABEL_22;
  }

  for (i = 0; i != 64; i += 2)
  {
    v29 = &v34[1] + i + 7;
    v30 = *a4++;
    *v29 = a0123456789abcd[v30 >> 4];
    v29[1] = a0123456789abcd[v30 & 0xF];
  }

  v35 = 0;
  v31 = KeychainAddFormatted(0, "{%kO=%O%kO=%O%kO=%O%kO=%i%kO=%s%kO=%O%kO=%.*s%kO=%O%kO=%O%kO=%D%kO=%O}", *MEMORY[0x1E697AC30], *MEMORY[0x1E697AE88], *MEMORY[0x1E697ACF0], *(a1 + 816), *MEMORY[0x1E697B3C0], *MEMORY[0x1E697AEB0], *MEMORY[0x1E697AFF8]);
  free(v27);
  if (!v31)
  {
    v20 = 0;
    goto LABEL_17;
  }

  v20 = v31;
LABEL_23:
  v33 = *(a1 + 16);
  if (*v33 > 60)
  {
    goto LABEL_17;
  }

  if (*v33 != -1)
  {
    goto LABEL_25;
  }

  if (_LogCategory_Initialize(v33, 0x3Cu))
  {
    v33 = *(a1 + 16);
LABEL_25:
    LogPrintF(v33, "OSStatus _PairingSessionSavePeerKeychain(PairingSessionRef, const void *, size_t, const uint8_t *, PairingPermissions)", 0x3Cu, "### Save %@ %.*s failed: %#m\n", v11, v12, v13, v14, *(a1 + 816));
  }

LABEL_17:
  if (Data)
  {
    CFRelease(Data);
  }

  pthread_mutex_unlock(&gPairingGlobalLock);
  return v20;
}

void _PairingSessionDeletePeer(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a3;
  if (a3 == -1)
  {
    v31 = strlen(__s);
  }

  v10 = *MEMORY[0x1E697AEF8];
  v11 = KeychainCopyMatchingFormatted(0, "{%kO=%O%kO=%O%kO=%i%kO=%O%kO=%O%kO=%O%kO=%O}", a3, a4, a5, a6, a7, a8, *MEMORY[0x1E697AFF8]);
  if (v11)
  {
    v12 = v11;
    v33 = 0;
    Count = CFArrayGetCount(v11);
    if (Count >= 1)
    {
      v14 = Count;
      v15 = 0;
      v32 = *MEMORY[0x1E697AC30];
      v16 = *MEMORY[0x1E697B3C8];
      do
      {
        TypeID = CFDictionaryGetTypeID();
        TypedValueAtIndex = CFArrayGetTypedValueAtIndex(v12, v15, TypeID, 0);
        if (TypedValueAtIndex)
        {
          v19 = TypedValueAtIndex;
          if (*(a1 + 824) == CFDictionaryGetInt64(TypedValueAtIndex, v10, &v33))
          {
            if (!__s || (v20 = CFDictionaryCopyCString(v19, v32, &v33), !v33) && (v21 = v20, v22 = strnicmpx(__s, v31, v20), free(v21), !v22))
            {
              v23 = CFDataGetTypeID();
              CFDictionaryGetTypedValue(v19, v16, v23, &v33);
              if (!v33)
              {
                v33 = KeychainDeleteFormatted("{%kO=%O}", v24, v25, v26, v27, v28, v29, v30, v16);
              }
            }
          }
        }

        ++v15;
      }

      while (v14 != v15);
    }

    CFRelease(v12);
  }
}

__CFArray *_PairingSessionCopyPeers(int a1, char *__s, uint64_t a3, _DWORD *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a3 == -1)
  {
    strlen(__s);
  }

  v48 = 0;
  v47 = 0;
  pthread_mutex_lock(&gPairingGlobalLock);
  v5 = *MEMORY[0x1E697AC30];
  v45 = *MEMORY[0x1E697AFF8];
  v11 = KeychainCopyMatchingFormatted(&v48, "{%kO=%O%kO=%O%kO=%i%kO=%?.*s%kO=%O%kO=%O%kO=%O}", *MEMORY[0x1E695E4D0], v6, v7, v8, v9, v10, *MEMORY[0x1E697AFF8]);
  if (v48 == -25300)
  {
    v48 = 0;
  }

  else if (v48)
  {
    Mutable = 0;
    goto LABEL_29;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    Mutable = 0;
    v48 = -6728;
    goto LABEL_29;
  }

  v44 = a4;
  if (!v11 || (Count = CFArrayGetCount(v11), Count < 1))
  {
LABEL_27:
    v48 = 0;
    goto LABEL_28;
  }

  v13 = Count;
  v14 = 0;
  v15 = MEMORY[0x1E695E9D8];
  v16 = MEMORY[0x1E695E9E8];
  v43 = *MEMORY[0x1E697ACF0];
  while (1)
  {
    TypeID = CFDictionaryGetTypeID();
    TypedValueAtIndex = CFArrayGetTypedValueAtIndex(v11, v14, TypeID, &v48);
    if (v48)
    {
      goto LABEL_26;
    }

    v19 = TypedValueAtIndex;
    v20 = CFDictionaryCreateMutable(0, 0, v15, v16);
    if (!v20)
    {
      break;
    }

    v21 = v20;
    v22 = CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue(v19, v5, v22, &v48);
    if (v48)
    {
      v24 = v21;
    }

    else
    {
      CFDictionarySetValue(v21, @"identifier", TypedValue);
      v31 = KeychainCopyMatchingFormatted(&v48, "{%kO=%O%kO=%O%kO=%i%kO=%O%kO=%O%kO=%O}", v25, v26, v27, v28, v29, v30, v45);
      v24 = v31;
      if (!v48)
      {
        v47 = 0;
        v32 = v15;
        BytePtr = CFDataGetBytePtr(v31);
        Length = CFDataGetLength(v24);
        v35 = BytePtr;
        v15 = v32;
        v48 = HexToData(v35, Length, 22, bytes, 0x20uLL, &v47, 0, 0);
        if (!v48 && v47 == 32)
        {
          CFDictionarySetData(v21, @"pk", bytes, 32);
          v36 = CFDataGetTypeID();
          v37 = CFDictionaryGetTypedValue(v19, v43, v36, 0);
          if (v37)
          {
            v38 = CFPropertyListCreateWithData(0, v37, 0, 0, 0);
            if (v38)
            {
              v39 = v38;
              v40 = CFGetTypeID(v38);
              if (v40 == CFDictionaryGetTypeID())
              {
                CFDictionarySetValue(v21, @"info", v39);
                Value = CFDictionaryGetValue(v39, @"permissions");
                if (Value)
                {
                  CFDictionarySetValue(v21, @"permissions", Value);
                }
              }

              CFRelease(v39);
              v15 = v32;
            }
          }

          CFArrayAppendValue(Mutable, v21);
        }
      }

      CFRelease(v21);
      if (!v24)
      {
        goto LABEL_26;
      }
    }

    CFRelease(v24);
LABEL_26:
    if (v13 == ++v14)
    {
      goto LABEL_27;
    }
  }

  v48 = -6728;
  CFRelease(Mutable);
  Mutable = 0;
LABEL_28:
  a4 = v44;
LABEL_29:
  if (v11)
  {
    CFRelease(v11);
  }

  if (a4)
  {
    *a4 = v48;
  }

  pthread_mutex_unlock(&gPairingGlobalLock);
  return Mutable;
}

uint64_t _PairingFindResumeState(uint64_t a1, void *a2, void *a3, _OWORD *a4)
{
  v8 = mach_absolute_time();
  pthread_mutex_lock(&gPairingGlobalLock);
  v9 = &gPairingResumeStateList;
  do
  {
    v9 = *v9;
    if (!v9)
    {
      v13 = 4294960569;
      goto LABEL_12;
    }
  }

  while (v9[10] != a1);
  if (v8 >= v9[5])
  {
    v13 = 4294960574;
  }

  else
  {
    if (!a2 || !a3)
    {
      goto LABEL_10;
    }

    v10 = v9[2];
    if (v10)
    {
      v11 = malloc_type_malloc(v10, 0x100004077774924uLL);
      if (v11)
      {
        v12 = v11;
        memcpy(v11, v9[1], v9[2]);
        *a2 = v12;
        *a3 = v9[2];
LABEL_10:
        v13 = 0;
        v14 = *(v9 + 4);
        *a4 = *(v9 + 3);
        a4[1] = v14;
        goto LABEL_12;
      }

      v13 = 4294960568;
    }

    else
    {
      v13 = 4294960553;
    }
  }

LABEL_12:
  pthread_mutex_unlock(&gPairingGlobalLock);
  return v13;
}

uint64_t _PairingRemoveResumeSessionID(uint64_t a1)
{
  pthread_mutex_lock(&gPairingGlobalLock);
  v2 = gPairingResumeStateList;
  if (gPairingResumeStateList)
  {
    v3 = &gPairingResumeStateList;
    do
    {
      v4 = v3;
      v3 = v2;
      while (1)
      {
        v2 = *v3;
        if (v3[10] != a1)
        {
          break;
        }

        *v4 = v2;
        _PairingFreeResumeState(v3);
        v3 = *v4;
        if (!*v4)
        {
          goto LABEL_8;
        }
      }
    }

    while (v2);
  }

LABEL_8:

  return pthread_mutex_unlock(&gPairingGlobalLock);
}

void _PairingSaveResumeState(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5, uint64_t a6, _OWORD *a7)
{
  pthread_mutex_lock(&gPairingGlobalLock);
  v14 = gPairingResumeStateList;
  if (gPairingResumeStateList)
  {
    v15 = &gPairingResumeStateList;
    do
    {
      v16 = v15;
      v15 = v14;
      while (v15[2] == a3 && !memcmp(a2, v15[1], a3) && ((*(a1 + 102) & 0x80) == 0 || v15[4] == a5 && !memcmp(a4, v15[3], a5)))
      {
        *v16 = *v15;
        _PairingFreeResumeState(v15);
        v15 = *v16;
        if (!*v16)
        {
          goto LABEL_12;
        }
      }

      v14 = *v15;
    }

    while (*v15);
LABEL_12:
    v17 = gPairingResumeStateList;
    if (gPairingResumeStateList)
    {
      v18 = 0;
      v19 = &gPairingResumeStateList;
      do
      {
        v20 = v19;
        ++v18;
        v19 = v17;
        while (1)
        {
          v17 = *v19;
          if (v18 <= gPairingMaxResumeSessions)
          {
            break;
          }

          *v20 = v17;
          _PairingFreeResumeState(v19);
          v19 = *v20;
          ++v18;
          if (!*v20)
          {
            goto LABEL_19;
          }
        }
      }

      while (v17);
    }
  }

LABEL_19:
  v21 = malloc_type_calloc(1uLL, 0x58uLL, 0x10300402A0090E4uLL);
  if (v21)
  {
    if (a3)
    {
      v22 = malloc_type_malloc(a3, 0x100004077774924uLL);
      v21[1] = v22;
      if (v22)
      {
        memcpy(v22, a2, a3);
        v21[2] = a3;
        v23 = a5 <= 1 ? 1 : a5;
        v24 = malloc_type_malloc(v23, 0x100004077774924uLL);
        v21[3] = v24;
        if (v24)
        {
          if (a5)
          {
            memcpy(v24, a4, a5);
          }

          v21[4] = a5;
          v25 = a7[1];
          *(v21 + 3) = *a7;
          *(v21 + 4) = v25;
          v21[10] = a6;
          v21[5] = *(a1 + 384) + mach_absolute_time();
          v26 = &gPairingResumeStateList;
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
          *v21 = 0;
          *v27 = v21;
          v21 = 0;
        }
      }
    }
  }

  pthread_mutex_unlock(&gPairingGlobalLock);

  _PairingFreeResumeState(v21);
}

void _PairingFreeResumeState(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      free(v2);
      a1[1] = 0;
    }

    a1[2] = 0;
    v3 = a1[3];
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

uint64_t _PairingSessionAppleIDProveSelf(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 872);
  if (!v4)
  {
    v5 = objc_alloc_init(CUAppleIDClient);
    v4 = v5;
    *(a1 + 872) = v5;
    if (*(a1 + 848))
    {
      [(CUAppleIDClient *)v5 setMyAppleID:?];
    }
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF88]);
  [v6 appendBytes:a1 + 462 length:32];
  [v6 appendBytes:a1 + 590 length:32];
  v53 = 0;
  v7 = [(CUAppleIDClient *)v4 signData:v6 error:&v53];
  v8 = v53;
  v9 = v8;
  if (!v7)
  {
    v19 = NSErrorToOSStatusEx(v8, 0);
    if (v19)
    {
      v11 = v19;
    }

    else
    {
      v11 = 4294960580;
    }

    v24 = *(a1 + 16);
    if (*v24 > 60)
    {
      goto LABEL_7;
    }

    if (*v24 == -1)
    {
      if (!_LogCategory_Initialize(v24, 0x3Cu))
      {
        goto LABEL_7;
      }

      v24 = *(a1 + 16);
    }

    LogPrintF(v24, "OSStatus _PairingSessionAppleIDProveSelf(PairingSessionRef, TLV8Buffer *)", 0x3Cu, "### AppleID sign data failed: %{error}\n", v20, v21, v22, v23, v9);
    goto LABEL_7;
  }

  v10 = TLV8BufferAppend(a2, 10, [v7 bytes], objc_msgSend(v7, "length"));
  if (v10)
  {
    v11 = v10;
    goto LABEL_7;
  }

  v52 = v9;
  v13 = [(CUAppleIDClient *)v4 copyMyCertificateDataAndReturnError:&v52];
  v14 = v52;

  if (!v13)
  {
    v25 = NSErrorToOSStatusEx(v14, 0);
    if (v25)
    {
      v11 = v25;
    }

    else
    {
      v11 = 4294960596;
    }

    v30 = *(a1 + 16);
    if (*v30 > 60)
    {
      goto LABEL_50;
    }

    if (*v30 == -1)
    {
      if (!_LogCategory_Initialize(v30, 0x3Cu))
      {
        goto LABEL_50;
      }

      v30 = *(a1 + 16);
    }

    LogPrintF(v30, "OSStatus _PairingSessionAppleIDProveSelf(PairingSessionRef, TLV8Buffer *)", 0x3Cu, "### AppleID get my certificate failed: %{error}\n", v26, v27, v28, v29, v14);
LABEL_50:
    v12 = 0;
    v9 = v14;
    goto LABEL_15;
  }

  v51 = v14;
  v12 = NSDataCompress(v13, 3, &v51);
  v9 = v51;

  if (v12)
  {
    v15 = TLV8BufferAppend(a2, 9, [v12 bytes], objc_msgSend(v12, "length"));
    if (v15)
    {
      goto LABEL_14;
    }

    v50 = v9;
    v16 = [(CUAppleIDClient *)v4 copyMyValidationDataAndReturnError:&v50];
    v17 = v50;

    if (v16)
    {
      v49 = v17;
      v12 = NSDataCompress(v16, 3, &v49);
      v9 = v49;

      if (!v12)
      {
        v43 = NSErrorToOSStatusEx(v9, 0);
        if (v43)
        {
          v11 = v43;
        }

        else
        {
          v11 = 4294960596;
        }

        v48 = *(a1 + 16);
        if (*v48 > 60)
        {
          goto LABEL_7;
        }

        if (*v48 == -1)
        {
          if (!_LogCategory_Initialize(v48, 0x3Cu))
          {
            goto LABEL_7;
          }

          v48 = *(a1 + 16);
        }

        LogPrintF(v48, "OSStatus _PairingSessionAppleIDProveSelf(PairingSessionRef, TLV8Buffer *)", 0x3Cu, "### Compress AppleID my validatidation data failed: %{error}\n", v44, v45, v46, v47, v9);
        goto LABEL_7;
      }

      v15 = TLV8BufferAppend(a2, 20, [v12 bytes], objc_msgSend(v12, "length"));
LABEL_14:
      v11 = v15;
      goto LABEL_15;
    }

    v9 = v17;
    v37 = NSErrorToOSStatusEx(v17, 0);
    if (v37)
    {
      v11 = v37;
    }

    else
    {
      v11 = 4294960596;
    }

    v42 = *(a1 + 16);
    if (*v42 > 60)
    {
      goto LABEL_7;
    }

    if (*v42 == -1)
    {
      if (!_LogCategory_Initialize(v42, 0x3Cu))
      {
        goto LABEL_7;
      }

      v42 = *(a1 + 16);
    }

    LogPrintF(v42, "OSStatus _PairingSessionAppleIDProveSelf(PairingSessionRef, TLV8Buffer *)", 0x3Cu, "### AppleID get my validatidation data failed: %{error}\n", v38, v39, v40, v41, v17);
  }

  else
  {
    v31 = NSErrorToOSStatusEx(v9, 0);
    if (v31)
    {
      v11 = v31;
    }

    else
    {
      v11 = 4294960596;
    }

    v36 = *(a1 + 16);
    if (*v36 > 60)
    {
      goto LABEL_7;
    }

    if (*v36 == -1)
    {
      if (!_LogCategory_Initialize(v36, 0x3Cu))
      {
        goto LABEL_7;
      }

      v36 = *(a1 + 16);
    }

    LogPrintF(v36, "OSStatus _PairingSessionAppleIDProveSelf(PairingSessionRef, TLV8Buffer *)", 0x3Cu, "### Compress AppleID my certificate failed: %{error}\n", v32, v33, v34, v35, v9);
  }

LABEL_7:
  v12 = 0;
LABEL_15:

  return v11;
}

uint64_t PairingSessionCopyIdentity(uint64_t a1, uint64_t a2, char **a3, _OWORD *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v97 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = *(a1 + 24);

    return v10(a2, a3, a4, a5, v11);
  }

  v13 = *(a1 + 100);
  if ((v13 & 4) != 0)
  {
    v67 = a2 != 0;
    v68 = 2;
    if (a2)
    {
      v68 = 3;
    }

    if (a5)
    {
      v67 = v68;
    }

    v69 = v67 | (v13 >> 19) & 8;
    v70 = v13 >> 21;
    v71 = v69 | (v13 >> 21) & 0x10;
    if ((v13 & 0x80000000) == 0)
    {
      v72 = v71;
    }

    else
    {
      v72 = v71 | 0x100;
    }

    return _PairingSessionCopyIdentityPairingManager(a1, v72 | v70 & 0x20, a3, 0, a4, a5);
  }

  pthread_mutex_lock(&gPairingGlobalLock);
  v80 = *MEMORY[0x1E697AFF8];
  v74 = (v6 | a5) != 0;
  v79 = *MEMORY[0x1E697AC30];
  v20 = 1;
  v78 = *MEMORY[0x1E697B3C0];
  v76 = v6;
  v77 = v7;
  v75 = v8;
  do
  {
    if (v20 != 1)
    {
      usleep(0x4E20u);
    }

    LODWORD(v83[0]) = 0;
    *__str = 0;
    *&v84[0] = 0;
    v27 = KeychainCopyMatchingFormatted(v83, "{%kO=%O%kO=%O%kO=%i%kO=%O%kO=%O%kO=%O}", v14, v15, v16, v17, v18, v19, v80);
    if (!v27)
    {
      if (*(a1 + 800) == 1751216195)
      {
        v27 = KeychainCopyMatchingFormatted(v83, "{%kO=%O%kO=%O%kO=%i%kO=%O%kO=%O%kO=%O}", v21, v22, v23, v24, v25, v26, v80);
      }

      else
      {
        v27 = 0;
      }
    }

    if (!LODWORD(v83[0]))
    {
      if (v7)
      {
        v28 = CFDictionaryCopyCString(v27, v79, v83);
        if (LODWORD(v83[0]))
        {
          goto LABEL_19;
        }

        *v7 = v28;
      }

      if (v74)
      {
        *__str = 0;
        CFDictionaryGetData(v27, v78, __s, 0x84uLL, __str, v83);
        *&v84[0] = __s;
        v29 = *__str;
        LODWORD(v83[0]) = HexToData(__s, *__str, 22, v6, 0x20uLL, __str, 0, v84);
        if (!LODWORD(v83[0]))
        {
          if (*__str != 32)
          {
            goto LABEL_54;
          }

          if (!a5)
          {
            goto LABEL_19;
          }

          v65 = *&v84[0];
          if (*&v84[0] >= &__s[v29] || **&v84[0] != 43)
          {
            v66 = -6742;
            goto LABEL_61;
          }

          ++*&v84[0];
          LODWORD(v83[0]) = HexToData(*&v84[0], &__s[v29 - 1 - v65], 22, a5, 0x20uLL, __str, 0, 0);
          if (!LODWORD(v83[0]) && *__str != 32)
          {
LABEL_54:
            v66 = -6743;
LABEL_61:
            LODWORD(v83[0]) = v66;
          }
        }
      }
    }

LABEL_19:
    if (v27)
    {
      CFRelease(v27);
    }

    memset_s(__s, 0x84uLL, 0, 0x84uLL);
    v33 = LODWORD(v83[0]);
    if (LODWORD(v83[0]) == -25293)
    {
      break;
    }

    if (!LODWORD(v83[0]) || !v8)
    {
      goto LABEL_76;
    }

    _PairingSessionDeleteIdentity(a1, v30, v31, v32, v16, v17, v18, v19);
    v34 = *(a1 + 256);
    if (!v34 || (v35 = *(a1 + 264)) == 0)
    {
      RandomBytes(bytes, 0x10uLL);
      v36 = v87 & 0xF | 0x40;
      v87 = v87 & 0xF | 0x40;
      v37 = v89 & 0x3F | 0x80;
      v89 = v89 & 0x3F | 0x80;
      v34 = __str;
      snprintf(__str, 0x25uLL, "%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x", bytes[0], bytes[1], bytes[2], bytes[3], bytes[4], bytes[5], v36, v88, v37, v90, v91, v92, v93, v94, v95, v96);
      v35 = strlen(__str);
    }

    cced25519_make_key_pair_compat(v84, v83);
    SNPrintF(__s, 132, "%.3H+%.3H", v38, v39, v40, v41, v42, v84);
    v81 = 0;
    ASPrintF(&v81, "%@: %.*s", v43, v44, v45, v46, v47, v48, *(a1 + 792));
    v49 = v81;
    if (v81)
    {
      strlen(__s);
      v33 = KeychainAddFormatted(0, "{%kO=%O%kO=%O%kO=%O%kO=%i%kO=%s%kO=%O%kO=%.*s%kO=%O%kO=%D%kO=%O}", v50, v51, v52, v53, v54, v55, v80);
      free(v49);
      if (v33)
      {
        v6 = v76;
        v7 = v77;
        v8 = v75;
      }

      else
      {
        v6 = v76;
        v7 = v77;
        v8 = v75;
        if (!v77)
        {
          goto LABEL_32;
        }

        v60 = strndup(v34, v35);
        if (v60)
        {
          *v77 = v60;
LABEL_32:
          if (v76)
          {
            v61 = v84[1];
            *v76 = v84[0];
            v76[1] = v61;
          }

          if (a5)
          {
            v62 = v83[1];
            *a5 = v83[0];
            *(a5 + 16) = v62;
          }

          v63 = *(a1 + 16);
          if (*v63 <= 50)
          {
            if (*v63 != -1)
            {
              goto LABEL_38;
            }

            if (_LogCategory_Initialize(v63, 0x32u))
            {
              v63 = *(a1 + 16);
LABEL_38:
              LogPrintF(v63, "OSStatus _PairingSessionCreateIdentityKeychain(PairingSessionRef, char **, uint8_t *, uint8_t *)", 0x32u, "Created %@: %.*s\n", v56, v57, v58, v59, *(a1 + 792));
            }
          }

          v33 = 0;
          goto LABEL_41;
        }

        v33 = 4294960568;
      }
    }

    else
    {
      v33 = 4294960568;
    }

LABEL_41:
    memset_s(v83, 0x20uLL, 0, 0x20uLL);
    memset_s(__s, 0x84uLL, 0, 0x84uLL);
    if (!v33)
    {
      goto LABEL_76;
    }

    v64 = *(a1 + 16);
    if (*v64 > 40)
    {
      goto LABEL_46;
    }

    if (*v64 == -1)
    {
      if (!_LogCategory_Initialize(v64, 0x28u))
      {
        goto LABEL_46;
      }

      v64 = *(a1 + 16);
    }

    LogPrintF(v64, "OSStatus _PairingSessionGetOrCreateIdentityKeychain(PairingSessionRef, Boolean, char **, uint8_t *, uint8_t *)", 0x28u, "### Create %@ failed (try %d of %d): %#m\n", v16, v17, v18, v19, *(a1 + 792));
LABEL_46:
    ++v20;
  }

  while (v20 != 11);
  v73 = *(a1 + 16);
  if (*v73 <= 60)
  {
    if (*v73 != -1)
    {
      goto LABEL_74;
    }

    if (_LogCategory_Initialize(v73, 0x3Cu))
    {
      v73 = *(a1 + 16);
LABEL_74:
      LogPrintF(v73, "OSStatus _PairingSessionGetOrCreateIdentityKeychain(PairingSessionRef, Boolean, char **, uint8_t *, uint8_t *)", 0x3Cu, "### Failed to create %@ after %d tries: %#m\n", v16, v17, v18, v19, *(a1 + 792));
    }
  }

LABEL_76:
  pthread_mutex_unlock(&gPairingGlobalLock);
  return v33;
}

uint64_t _AddAppInfoTLV(const __CFDictionary *a1, uint64_t a2)
{
  TypeID = CFDictionaryGetTypeID();
  TypedValue = CFDictionaryGetTypedValue(a1, @"appInfoSelf", TypeID, 0);
  if (!TypedValue)
  {
    return 0;
  }

  v11 = 0;
  DataMutable = OPACKEncoderCreateDataMutable(TypedValue, 0, &v11);
  if (!DataMutable)
  {
    return v11;
  }

  v7 = DataMutable;
  BytePtr = CFDataGetBytePtr(DataMutable);
  Length = CFDataGetLength(v7);
  v11 = TLV8BufferAppend(a2, 29, BytePtr, Length);
  CFRelease(v7);
  result = v11;
  if (!v11)
  {
    return 0;
  }

  return result;
}

uint64_t _PairingSessionAppleIDVerifyPeer(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v45 = 0;
  v44 = 0;
  v6 = TLV8CopyCoalesced(a2, a3, 9, &v44, &v45);
  if (!v6 || !v44)
  {
    v11 = 0;
    v14 = 0;
    v17 = 0;
    v39 = 0;
LABEL_33:
    v9 = 0;
    v45 = -6711;
    goto LABEL_39;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v6 length:v44];
  v9 = v7;
  if (!v7)
  {
    v39 = 0;
    v17 = 0;
    v14 = 0;
    v11 = 0;
LABEL_35:
    v45 = -6728;
LABEL_52:
    free(v6);
    v6 = 0;
LABEL_53:
    v19 = 0;
    goto LABEL_27;
  }

  v43 = 0;
  v10 = NSDataDecompress(v7, v8, &v43);
  v11 = v43;

  v39 = v10;
  if (!v10)
  {
    if (v11)
    {
      v30 = NSErrorToOSStatusEx(v11, 0);
    }

    else
    {
      v30 = -6700;
    }

    v9 = 0;
    v39 = 0;
    v17 = 0;
    v14 = 0;
    v45 = v30;
    goto LABEL_52;
  }

  v6 = TLV8CopyCoalesced(a2, a3, 20, &v44, &v45);
  if (!v6 || !v44)
  {
    v14 = 0;
    v17 = 0;
    goto LABEL_33;
  }

  v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v6 length:v44];
  v14 = v12;
  if (!v12)
  {
    v9 = 0;
    v17 = 0;
    goto LABEL_35;
  }

  v42 = v11;
  v9 = NSDataDecompress(v12, v13, &v42);
  v15 = v42;

  if (!v9)
  {
    if (v15)
    {
      v31 = NSErrorToOSStatusEx(v15, 0);
    }

    else
    {
      v31 = -6700;
    }

    v9 = 0;
    v17 = 0;
    v14 = 0;
    v45 = v31;
    goto LABEL_51;
  }

  v14 = *(a1 + 872);
  if (!v14)
  {
    v16 = objc_alloc_init(CUAppleIDClient);
    v14 = v16;
    *(a1 + 872) = v16;
    if (*(a1 + 848))
    {
      [(CUAppleIDClient *)v16 setMyAppleID:?];
    }
  }

  v17 = *(a1 + 880);
  if (!v17)
  {
    v17 = objc_alloc_init(CUAppleIDClient);
    *(a1 + 880) = v17;
  }

  [(CUAppleIDClient *)v17 setMyInfoClient:v14];
  if (*(a1 + 856))
  {
    [(CUAppleIDClient *)v17 setPeerAppleID:?];
  }

  if (*(a1 + 864))
  {
    [(CUAppleIDClient *)v17 setPeerAppleIDs:?];
  }

  [(CUAppleIDClient *)v17 setPeerCertificateData:v10];
  [(CUAppleIDClient *)v17 setPeerValidationData:v9];
  v6 = TLV8CopyCoalesced(a2, a3, 10, &v44, &v45);
  if (!v6 || !v44)
  {
    v45 = -6711;
    v11 = v15;
LABEL_39:
    if (!v6)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v6 length:v44];
  if (!v18)
  {
    v45 = -6743;
LABEL_51:
    v11 = v15;
    goto LABEL_52;
  }

  v19 = v18;
  v6 = objc_alloc_init(MEMORY[0x1E695DF88]);
  [v6 appendBytes:a1 + 590 length:32];
  [v6 appendBytes:a1 + 462 length:32];
  v41 = v15;
  v20 = [(CUAppleIDClient *)v17 verifyData:v6 signature:v19 error:&v41];
  v11 = v41;

  if (v20)
  {
    if (*(a1 + 856))
    {
      v25 = 0;
    }

    else
    {
      v25 = *(a1 + 864) == 0;
    }

    v40 = v11;
    v26 = [(CUAppleIDClient *)v17 validatePeerWithFlags:v25 error:&v40];
    v27 = v40;

    if (v26)
    {
      goto LABEL_26;
    }

    v37 = [v27 code] ? objc_msgSend(v27, "code") : -6754;
    v45 = v37;
    v38 = *(a1 + 16);
    if (*v38 > 60)
    {
      goto LABEL_26;
    }

    if (*v38 == -1)
    {
      if (!_LogCategory_Initialize(v38, 0x3Cu))
      {
        goto LABEL_26;
      }

      v38 = *(a1 + 16);
    }

    LogPrintF(v38, "OSStatus _PairingSessionAppleIDVerifyPeer(PairingSessionRef, const uint8_t *, const uint8_t *)", 0x3Cu, "### AppleID validate peer failed: %{error}\n", v33, v34, v35, v36, v27);
LABEL_26:
    v11 = v27;
    goto LABEL_27;
  }

  v45 = -6754;
  v32 = *(a1 + 16);
  if (*v32 <= 60)
  {
    if (*v32 == -1)
    {
      if (!_LogCategory_Initialize(v32, 0x3Cu))
      {
        goto LABEL_27;
      }

      v32 = *(a1 + 16);
    }

    LogPrintF(v32, "OSStatus _PairingSessionAppleIDVerifyPeer(PairingSessionRef, const uint8_t *, const uint8_t *)", 0x3Cu, "### AppleID verify peer signature failed: %{error}\n", v21, v22, v23, v24, v11);
  }

LABEL_27:
  v28 = v45;

  return v28;
}

uint64_t PairingSessionFindPeerEx(uint64_t a1, char *__s, size_t a3, _OWORD *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v98 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 64);
  if (v12)
  {
    if (v12(__s, a3, a4, *(a1 + 24)))
    {
      return 4294960569;
    }

    else
    {
      return 0;
    }
  }

  if ((*(a1 + 100) & 4) != 0)
  {
    v93 = 0;
    v94 = &v93;
    v95 = 0x2020000000;
    v96 = 1;
    v87 = 0;
    v88 = &v87;
    v89 = 0x3032000000;
    v90 = __Block_byref_object_copy__12602;
    v91 = __Block_byref_object_dispose__12603;
    v92 = 0;
    v34 = StringToUUIDEx(__s, a3, 0, 0, &v97, a6, a7, a8);
    *(v94 + 6) = v34;
    if (v34)
    {
      v97 = 0uLL;
      v35 = TextToHardwareAddress(__s, v9, 6, &v97 + 10);
      *(v94 + 6) = v35;
      if (v35)
      {
        v37 = 0;
        v82 = 0;
        v38 = 0;
        v60 = 0;
        goto LABEL_79;
      }

      v36 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (v9 == -1)
      {
        v9 = strlen(__s);
      }

      v82 = [v36 initWithBytes:__s length:v9 encoding:4];
    }

    else
    {
      v82 = 0;
    }

    v37 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v97];
    if (v37)
    {
      v38 = objc_alloc_init(CUPairedPeer);
      [(CUPairedPeer *)v38 setIdentifier:v37];
      if (v82)
      {
        [(CUPairedPeer *)v38 setIdentifierStr:v82];
      }

      v39 = *(a1 + 100);
      if ((v39 & 0x80000000) == 0)
      {
        v40 = (v39 >> 19) & 8 | (v39 >> 21) & 0x10;
      }

      else
      {
        v40 = (v39 >> 19) & 8 | (v39 >> 21) & 0x10 | 0x100;
      }

      v41 = _Block_copy(*(a1 + 1000));
      v42 = v41;
      v43 = (v39 >> 1) & 4 | (v39 >> 21) & 0x20;
      if (v41)
      {
        v83[0] = 0;
        v44 = (*(v41 + 2))(v41, v38, v40 | v43, v83);
        v45 = v83[0];
        v46 = v88[5];
        v88[5] = v44;

        if (!v45)
        {
          if (v88[5])
          {
            v66 = 0;
          }

          else
          {
            v66 = -6700;
          }

          goto LABEL_62;
        }

        v54 = *(a1 + 16);
        if (*v54 <= 90)
        {
          if (*v54 != -1)
          {
LABEL_32:
            v81 = NSPrintF("%{error}", v47, v48, v49, v50, v51, v52, v53, v45);
            LogPrintF(v54, "OSStatus _PairingSessionFindPeerPairingManager(PairingSessionRef, const void *, size_t, uint8_t *, CFDictionaryRef *)", 0x5Au, "### FindPeerHandler failed: %@, %@", v55, v56, v57, v58, v38);

            goto LABEL_59;
          }

          if (_LogCategory_Initialize(*(a1 + 16), 0x5Au))
          {
            v54 = *(a1 + 16);
            goto LABEL_32;
          }
        }

LABEL_59:
        if (v88[5])
        {
          v66 = 0;
        }

        else
        {
          v66 = NSErrorToOSStatusEx(v45, 0);
        }

LABEL_62:
        *(v94 + 6) = v66;

        v60 = 0;
        goto LABEL_63;
      }

      v59 = +[CUPairingDaemon sharedPairingDaemon];
      v60 = v59;
      if (v59)
      {
        v61 = [v59 findPairedPeer:v38 options:v40 | v43 error:v94 + 3];
        v62 = v88[5];
        v88[5] = v61;

        v63 = v94;
        if (!*(v94 + 6))
        {
          if (v88[5])
          {
LABEL_63:
            v64 = 0;
            v65 = 0;
            goto LABEL_64;
          }

          v64 = 0;
          v65 = 0;
          goto LABEL_89;
        }

LABEL_79:
        v64 = 0;
        v65 = 0;
        goto LABEL_73;
      }

      v64 = objc_alloc_init(CUPairingManager);
      v67 = dispatch_queue_create("OSStatus _PairingSessionFindPeerPairingManager(PairingSessionRef, const void *, size_t, uint8_t *, CFDictionaryRef *)", 0);
      [(CUPairingManager *)v64 setDispatchQueue:v67];

      if ((*(a1 + 100) & 0x40) != 0)
      {
        [(CUPairingManager *)v64 setTargetUserSession:1];
      }

      v68 = dispatch_semaphore_create(0);
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = ___PairingSessionFindPeerPairingManager_block_invoke;
      v83[3] = &unk_1E73A4C30;
      v85 = &v87;
      v86 = &v93;
      v65 = v68;
      v84 = v65;
      [(CUPairingManager *)v64 findPairedPeer:v38 options:v40 | v43 completion:v83];

      v69 = dispatch_time(0, 120000000000);
      v70 = dispatch_semaphore_wait(v65, v69);
      [(CUPairingManager *)v64 invalidate];
      v63 = v94;
      if (!v70)
      {
        if (*(v94 + 6))
        {
          v60 = 0;
          goto LABEL_73;
        }

        if (v88[5])
        {
          v60 = 0;
LABEL_64:
          if (!a4)
          {
LABEL_68:
            if (a5)
            {
              *a5 = [v88[5] acl];
            }

            v76 = *(a1 + 272);
            if (v76)
            {
              CFRelease(v76);
            }

            *(a1 + 272) = v88[5];
            goto LABEL_73;
          }

          v71 = [v88[5] publicKey];
          v72 = v71;
          if (v71)
          {
            if ([v71 length] == 32)
            {
              v73 = v72;
              v74 = [v72 bytes];
              v75 = v74[1];
              *a4 = *v74;
              a4[1] = v75;

              goto LABEL_68;
            }

            v80 = -6743;
          }

          else
          {
            v80 = -6727;
          }

          *(v94 + 6) = v80;

LABEL_73:
          v13 = *(v94 + 6);
          _Block_object_dispose(&v87, 8);

          _Block_object_dispose(&v93, 8);
          return v13;
        }

        v60 = 0;
LABEL_89:
        v78 = -6762;
        goto LABEL_90;
      }

      v60 = 0;
      v78 = -6722;
    }

    else
    {
      v38 = 0;
      v60 = 0;
      v64 = 0;
      v65 = 0;
      v63 = v94;
      v78 = -6708;
    }

LABEL_90:
    *(v63 + 6) = v78;
    goto LABEL_73;
  }

  pthread_mutex_lock(&gPairingGlobalLock);
  if (v9 == -1)
  {
    strlen(__s);
  }

  LODWORD(v87) = 0;
  v83[0] = 0;
  v21 = KeychainCopyMatchingFormatted(&v87, "{%kO=%O%kO=%O%kO=%i%kO=%O%kO=%.*s%kO=%O%kO=%O}", v15, v16, v17, v18, v19, v20, *MEMORY[0x1E697AFF8]);
  if (v87)
  {
LABEL_54:
    if (!v21)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  TypeID = CFDataGetTypeID();
  TypedValue = CFDictionaryGetTypedValue(v21, *MEMORY[0x1E697B3C0], TypeID, 0);
  v24 = TypedValue;
  if (TypedValue)
  {
    v83[0] = 0;
    BytePtr = CFDataGetBytePtr(TypedValue);
    Length = CFDataGetLength(v24);
    LODWORD(v87) = HexToData(BytePtr, Length, 22, a4, 0x20uLL, v83, 0, 0);
    if (v87)
    {
      goto LABEL_54;
    }

    if (v83[0] == 32)
    {
      v27 = CFDataGetTypeID();
      v28 = CFDictionaryGetTypedValue(v21, *MEMORY[0x1E697ACF0], v27, 0);
      if (v28)
      {
        v29 = OPACKDecodeData(v28, 0, 0);
        v30 = v29;
        if (v29)
        {
          v31 = CFGetTypeID(v29);
          if (v31 == CFDictionaryGetTypeID())
          {
            v32 = CFDictionaryGetTypeID();
            v33 = CFDictionaryGetTypedValue(v30, @"acl", v32, 0);
LABEL_48:
            if (a5)
            {
              if (v33)
              {
                CFRetain(v33);
              }

              *a5 = v33;
            }

            if (v30)
            {
              CFRelease(v30);
            }

            goto LABEL_54;
          }
        }
      }

      else
      {
        v30 = 0;
      }

      v33 = 0;
      goto LABEL_48;
    }

    v79 = -6743;
  }

  else
  {
    v79 = -6737;
  }

  LODWORD(v87) = v79;
  if (v21)
  {
LABEL_55:
    CFRelease(v21);
  }

LABEL_56:
  pthread_mutex_unlock(&gPairingGlobalLock);
  if (v87)
  {
    return 4294960569;
  }

  else
  {
    return 0;
  }
}

void sub_191FB15B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

const __CFDictionary *_PairingSessionVerifyACL(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  result = *(a1 + 184);
  if (result)
  {
    if (CFDictionaryGetCount(result) < 1)
    {
      return 0;
    }

    else if (a2)
    {
      v6 = 0;
      CFDictionaryApplyFunction(*(a1 + 184), _PairingSessionVerifyACLApplier, &v5);
      return v6;
    }

    else
    {
      return 4294960523;
    }
  }

  return result;
}

uint64_t _ExtractAppInfoTLV(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v10 = 0;
  v9 = 0;
  v4 = TLV8CopyCoalesced(a2, a3, 29, &v9, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = _OPACKDecodeBytes(0, v4, v9, 0, &v10);
  free(v5);
  if (v6)
  {
    v7 = CFGetTypeID(v6);
    if (v7 != CFDictionaryGetTypeID())
    {
      v10 = -6756;
      CFRelease(v6);
      return v10;
    }

    PairingSessionSetProperty(a1, @"appInfoPeer", v6);
    CFRelease(v6);
    return 0;
  }

  return v10;
}

uint64_t _ExtractGroupInfoTLV(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v10 = 0;
  v9 = 0;
  v4 = TLV8CopyCoalesced(a2, a3, 30, &v9, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = _OPACKDecodeBytes(0, v4, v9, 0, &v10);
  free(v5);
  if (v6)
  {
    v7 = CFGetTypeID(v6);
    if (v7 != CFDictionaryGetTypeID())
    {
      v10 = -6756;
      CFRelease(v6);
      return v10;
    }

    PairingSessionSetProperty(a1, @"groupInfoPeer", v6);
    CFRelease(v6);
    return 0;
  }

  return v10;
}

uint64_t _VerifyServerM4(uint64_t a1, void *a2, size_t *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  memset(v35, 0, sizeof(v35));
  memset(v31, 0, sizeof(v31));
  __src = v35;
  v33 = xmmword_191FF95F0;
  v34 = 0;
  v28 = v31;
  v29 = xmmword_191FF95F0;
  v30 = 0;
  v6 = TLV8BufferAppend(&__src, 6, (a1 + 128), 1uLL);
  if (v6 || ((*(a1 + 100) & 0x20000000) != 0 ? (v8 = "PV-Msg4s") : (v8 = "PV-Msg04"), (v6 = _AddGroupInfoTLV(a1, &v28), v6) || (*(a1 + 103) & 0x20) != 0 && (v6 = _PairingSessionAppleIDProveSelf(a1, &v28), v6)))
  {
    v7 = v6;
    goto LABEL_37;
  }

  if (v29)
  {
    v13 = malloc_type_malloc(v29 + 16, 0x100004077774924uLL);
    if (!v13)
    {
      goto LABEL_42;
    }

    v14 = v13;
    ccsha512_di();
    cchkdf();
    _chacha20_poly1305_encrypt_all((a1 + 430), v8, 8, 0, 0, v28, v29, v14, v14->i64 + v29);
    v7 = TLV8BufferAppend(&__src, 5, v14->i8, v29 + 16);
    free(v14);
    if (v7)
    {
      goto LABEL_37;
    }
  }

  v15 = v33;
  v16 = v34;
  if (v34)
  {
    goto LABEL_19;
  }

  if (v33 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v33;
  }

  v18 = malloc_type_malloc(v17, 0x100004077774924uLL);
  if (v18)
  {
    v16 = v18;
    if (v15)
    {
      memcpy(v18, __src, v15);
    }

LABEL_19:
    __src = v35;
    *&v33 = 0;
    v34 = 0;
    *a2 = v16;
    *a3 = v15;
    if ((*(a1 + 100) & 2) != 0)
    {
      ccsha512_di();
      v26 = &v27;
      cchkdf();
      v19 = v27;
      *(a1 + 392) = v27;
      _PairingSaveResumeState(a1, *(a1 + 312), *(a1 + 320), *(a1 + 256), *(a1 + 264), v19, (a1 + 654));
    }

    v20 = *(a1 + 16);
    v21 = *v20;
    if (*v20 >= 31)
    {
      v7 = 0;
      *(a1 + 128) = 5;
      goto LABEL_37;
    }

    if (v21 == -1)
    {
      v23 = _LogCategory_Initialize(*(a1 + 16), 0x1Eu);
      v20 = *(a1 + 16);
      if (!v23)
      {
        goto LABEL_32;
      }

      v21 = *v20;
    }

    if (v21 > 10)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21 == -1 && !_LogCategory_Initialize(v20, 0xAu);
    }

    LogPrintF(v20, "OSStatus _VerifyServerM4(PairingSessionRef, uint8_t **, size_t *)", 0x1Eu, "PairVerify server M4 -- finish response\n%?{end}%1{tlv8}\n", v9, v10, v11, v12, v22);
    v20 = *(a1 + 16);
LABEL_32:
    v24 = *v20;
    *(a1 + 128) = 5;
    if (v24 <= 30)
    {
      if (v24 == -1)
      {
        if (!_LogCategory_Initialize(v20, 0x1Eu))
        {
          goto LABEL_36;
        }

        v20 = *(a1 + 16);
      }

      LogPrintF(v20, "OSStatus _VerifyServerM4(PairingSessionRef, uint8_t **, size_t *)", 0x1Eu, "PairVerify server done\n", v9, v10, v11, v12, v26);
    }

LABEL_36:
    v7 = 0;
    goto LABEL_37;
  }

LABEL_42:
  v7 = 4294960568;
LABEL_37:
  if (v30)
  {
    free(v30);
    v30 = 0;
  }

  if (v34)
  {
    free(v34);
  }

  return v7;
}

void _PairingSessionUpdateTranscript(uint64_t a1, UInt8 *bytes, CFIndex length, UInt8 *a4, CFIndex a5)
{
  if (*(a1 + 696))
  {
    Mutable = *(a1 + 688);
    if (Mutable || (Mutable = CFDataCreateMutable(0, 0), (*(a1 + 688) = Mutable) != 0))
    {
      if (bytes && length)
      {
        CFDataAppendBytes(Mutable, bytes, length);
      }

      if (a4 && a5)
      {
        v11 = *(a1 + 688);

        CFDataAppendBytes(v11, a4, a5);
      }
    }
  }
}

uint64_t _AddGroupInfoTLV(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 360);
  TypeID = CFDictionaryGetTypeID();
  TypedValue = CFDictionaryGetTypedValue(v4, @"groupInfoSelf", TypeID, 0);
  if (TypedValue)
  {
    v7 = TypedValue;
  }

  else
  {
    v8 = *(a1 + 272);
    if (v8)
    {
      v9 = v8;
    }

    v10 = [v8 info];
    v11 = CFDictionaryGetTypeID();
    v7 = CFDictionaryGetTypedValue(v10, @"groupInfo", v11, 0);

    if (!v7)
    {
      return 0;
    }
  }

  v17 = 0;
  DataMutable = OPACKEncoderCreateDataMutable(v7, 0, &v17);
  if (!DataMutable)
  {
    return v17;
  }

  v13 = DataMutable;
  BytePtr = CFDataGetBytePtr(DataMutable);
  Length = CFDataGetLength(v13);
  v17 = TLV8BufferAppend(a2, 30, BytePtr, Length);
  CFRelease(v13);
  result = v17;
  if (!v17)
  {
    return 0;
  }

  return result;
}

unint64_t _PairingSessionVerifyACLApplier(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    v4 = result;
    v5 = *a3;
    result = CFDictionaryGetInt64(*a3, result, 0);
    if (!result)
    {
      result = CFDictionaryGetInt64(v5, @"com.apple.admin", 0);
      if (!result)
      {
        result = CFEqual(v4, @"com.apple.ScreenCapture");
        if (!result || (result = CFDictionaryGetInt64(v5, @"com.apple.developer", 0)) == 0)
        {
          *(a3 + 8) = -6773;
        }
      }
    }
  }

  return result;
}

uint64_t __Block_byref_object_copy__12602(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _PairingSessionCopyIdentityPairingManager(uint64_t a1, uint64_t a2, char **a3, void *a4, _OWORD *a5, _OWORD *a6)
{
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 1;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__12602;
  v67 = __Block_byref_object_dispose__12603;
  v68 = 0;
  v12 = (*(a1 + 100) >> 1) & 4;
  v13 = _Block_copy(*(a1 + 992));
  if (v13)
  {
    v14 = v13;
    v62 = 0;
    v15 = (v13[2].isa)(v13, v12 | a2, &v62);
    v16 = v62;
    v17 = v64[5];
    v64[5] = v15;

    if (!v16)
    {
      if (v64[5])
      {
        v38 = 0;
      }

      else
      {
        v38 = -6700;
      }

      goto LABEL_24;
    }

    v25 = *(a1 + 16);
    if (*v25 <= 90)
    {
      if (*v25 != -1)
      {
LABEL_5:
        v26 = NSPrintF("%{error}", v18, v19, v20, v21, v22, v23, v24, v16);
        LogPrintF(v25, "OSStatus _PairingSessionCopyIdentityPairingManager(PairingSessionRef, CUPairingOptions, char **, CFDataRef *, uint8_t *, uint8_t *)", 0x5Au, "### CopyIdentityHandler failed: %@", v27, v28, v29, v30, v26);

        goto LABEL_21;
      }

      if (_LogCategory_Initialize(*(a1 + 16), 0x5Au))
      {
        v25 = *(a1 + 16);
        goto LABEL_5;
      }
    }

LABEL_21:
    if (v64[5])
    {
      v38 = 0;
    }

    else
    {
      v38 = NSErrorToOSStatusEx(v16, 0);
    }

LABEL_24:
    *(v70 + 6) = v38;

    v36 = 0;
    v37 = 0;
LABEL_25:

    v32 = 0;
    if (!a3)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v31 = +[CUPairingDaemon sharedPairingDaemon];
  v32 = v31;
  if (!v31)
  {
    v36 = objc_alloc_init(CUPairingManager);
    v39 = dispatch_queue_create("OSStatus _PairingSessionCopyIdentityPairingManager(PairingSessionRef, CUPairingOptions, char **, CFDataRef *, uint8_t *, uint8_t *)", 0);
    [(CUPairingManager *)v36 setDispatchQueue:v39];

    if ((*(a1 + 100) & 0x40) != 0)
    {
      [(CUPairingManager *)v36 setTargetUserSession:1];
    }

    v40 = dispatch_semaphore_create(0);
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = ___PairingSessionCopyIdentityPairingManager_block_invoke;
    v58[3] = &unk_1E73A4C58;
    v60 = &v63;
    v61 = &v69;
    v37 = v40;
    v59 = v37;
    [(CUPairingManager *)v36 getPairingIdentityWithOptions:v12 | a2 completion:v58];
    v41 = dispatch_time(0, 120000000000);
    v42 = dispatch_semaphore_wait(v37, v41);
    [(CUPairingManager *)v36 invalidate];
    if (v42)
    {
      v57 = -6722;
    }

    else
    {
      if (*(v70 + 6))
      {
LABEL_55:

        v32 = 0;
        goto LABEL_56;
      }

      if (v64[5])
      {
        v14 = v59;
        goto LABEL_25;
      }

      v57 = -6762;
    }

    *(v70 + 6) = v57;
    goto LABEL_55;
  }

  v33 = [v31 copyIdentityWithOptions:v12 | a2 error:v70 + 3];
  v34 = v64[5];
  v64[5] = v33;

  v35 = v70;
  if (*(v70 + 6))
  {
    v36 = 0;
    v37 = 0;
    goto LABEL_56;
  }

  if (!v64[5])
  {
    v36 = 0;
    v37 = 0;
    v48 = 0;
    v55 = -6762;
    goto LABEL_46;
  }

  v36 = 0;
  v37 = 0;
  if (a3)
  {
LABEL_26:
    v43 = [v64[5] identifier];
    v44 = [v43 UUIDString];

    if (v44)
    {
      v45 = CFCopyCString(v44, 0);
      if (v45)
      {
        *a3 = v45;

        goto LABEL_29;
      }

      v56 = -6728;
    }

    else
    {
      v56 = -6727;
    }

    *(v70 + 6) = v56;

LABEL_56:
    v48 = 0;
    goto LABEL_43;
  }

LABEL_29:
  if (a4)
  {
    v46 = [v64[5] altIRK];
    if (v46)
    {
      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    *a4 = v47;
    if (a5)
    {
      goto LABEL_39;
    }

LABEL_33:
    if (!a6)
    {
LABEL_42:
      v48 = v47;
      goto LABEL_43;
    }

    goto LABEL_34;
  }

  v47 = 0;
  if (!a5)
  {
    goto LABEL_33;
  }

LABEL_39:
  v48 = [v64[5] publicKey];

  if (!v48)
  {
    goto LABEL_44;
  }

  if ([v48 length] != 32)
  {
    goto LABEL_45;
  }

  v51 = [v48 bytes];
  v52 = v51[1];
  *a5 = *v51;
  a5[1] = v52;
  v47 = v48;
  if (!a6)
  {
    goto LABEL_42;
  }

LABEL_34:
  v48 = [v64[5] secretKey];

  if (!v48)
  {
LABEL_44:
    v35 = v70;
    v55 = -6727;
LABEL_46:
    *(v35 + 6) = v55;
    goto LABEL_43;
  }

  if ([v48 length] != 32)
  {
LABEL_45:
    v35 = v70;
    v55 = -6743;
    goto LABEL_46;
  }

  v49 = [v48 bytes];
  v50 = v49[1];
  *a6 = *v49;
  a6[1] = v50;
LABEL_43:
  v53 = *(v70 + 6);

  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v69, 8);
  return v53;
}

void sub_191FB23FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void _PairingSessionDeleteIdentity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E697AEF8];
  v10 = KeychainCopyMatchingFormatted(0, "{%kO=%O%kO=%O%kO=%i%kO=%O%kO=%O%kO=%O%kO=%O}", a3, a4, a5, a6, a7, a8, *MEMORY[0x1E697AFF8]);
  if (v10)
  {
    v11 = v10;
    v27 = 0;
    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      v13 = Count;
      v14 = 0;
      v15 = *MEMORY[0x1E697B3C8];
      do
      {
        TypeID = CFDictionaryGetTypeID();
        TypedValueAtIndex = CFArrayGetTypedValueAtIndex(v11, v14, TypeID, 0);
        if (TypedValueAtIndex)
        {
          v18 = TypedValueAtIndex;
          if (*(a1 + 800) == CFDictionaryGetInt64(TypedValueAtIndex, v9, &v27))
          {
            v19 = CFDataGetTypeID();
            CFDictionaryGetTypedValue(v18, v15, v19, &v27);
            if (!v27)
            {
              v27 = KeychainDeleteFormatted("{%kO=%O}", v20, v21, v22, v23, v24, v25, v26, v15);
            }
          }
        }

        ++v14;
      }

      while (v13 != v14);
    }

    CFRelease(v11);
  }
}

uint64_t _MFiClientVerify(uint64_t a1, unsigned __int8 *a2, uint64_t a3, __int32 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v42 = *MEMORY[0x1E69E9840];
  GroupInfoTLV = 0;
  v39 = 0;
  v36 = 0;
  v33 = 0;
  v13 = TLV8CopyCoalesced(a2, &a2[a3], 5, &v39, &GroupInfoTLV);
  v18 = v13;
  if (GroupInfoTLV)
  {
    goto LABEL_18;
  }

  if (v39 <= 0xF)
  {
    v29 = -6743;
LABEL_29:
    GroupInfoTLV = v29;
    goto LABEL_16;
  }

  v19 = &v13[-1].u8[v39];
  GroupInfoTLV = _chacha20_poly1305_decrypt_all((a1 + 430), a4, 8, 0, 0, v13, v39 - 16, v13, v19, 16);
  if (!GroupInfoTLV)
  {
    v37 = 0;
    v38 = 0;
    GroupInfoTLV = TLV8GetOrCopyCoalesced(v18, v19, 10, &v38, &v37, &v36, 0);
    if (!GroupInfoTLV)
    {
      v34 = 0;
      v35 = 0;
      GroupInfoTLV = TLV8GetOrCopyCoalesced(v18, v19, 9, &v35, &v34, &v33, 0);
      if (!GroupInfoTLV)
      {
        ccsha512_di();
        cchkdf();
        v21 = v34;
        v20 = v35;
        GroupInfoTLV = MFiPlatform_VerifySignatureEx(v41, 32, v38, v37, v35, v34, 0, v22);
        if (!GroupInfoTLV)
        {
          length = 0;
          bytes = 0;
          v30 = 0;
          TLV8GetOrCopyCoalesced(v18, v19, 28, &bytes, &length, &v30, 0);
          if (bytes)
          {
            v23 = CFDataCreate(0, bytes, length);
            if (v30)
            {
              free(v30);
            }

            if (!v23)
            {
LABEL_31:
              v29 = -6728;
              goto LABEL_29;
            }

            GroupInfoTLV = PairingSessionSetProperty(a1, @"productData", v23);
            CFRelease(v23);
            if (GroupInfoTLV)
            {
              goto LABEL_16;
            }
          }

          if (!a11 || (GroupInfoTLV = _ExtractGroupInfoTLV(a1, v18, v19)) == 0)
          {
            v24 = CFDataCreate(0, v20, v21);
            if (v24)
            {
              v25 = v24;
              GroupInfoTLV = PairingSessionSetProperty(a1, @"certificate", v24);
              CFRelease(v25);
              goto LABEL_16;
            }

            goto LABEL_31;
          }
        }
      }
    }
  }

LABEL_16:
  if (v33)
  {
    free(v33);
  }

LABEL_18:
  if (v36)
  {
    free(v36);
  }

  if (v18)
  {
    free(v18);
  }

  result = GroupInfoTLV;
  if (GroupInfoTLV)
  {
    v27 = *(a1 + 16);
    if (*v27 <= 90)
    {
      if (*v27 != -1)
      {
LABEL_25:
        LogPrintF(v27, "OSStatus _MFiClientVerify(PairingSessionRef, const void *, size_t, const uint8_t *, const void *, size_t, const void *, size_t, const void *, size_t, Boolean)", 0x5Au, "### MFi verify failed: %#m\n", v14, v15, v16, v17, result);
        return GroupInfoTLV;
      }

      v28 = _LogCategory_Initialize(*(a1 + 16), 0x5Au);
      result = GroupInfoTLV;
      if (v28)
      {
        v27 = *(a1 + 16);
        goto LABEL_25;
      }
    }
  }

  return result;
}