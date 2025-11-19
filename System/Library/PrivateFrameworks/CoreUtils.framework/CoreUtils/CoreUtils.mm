id NSPrintF(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = NSPrintV(a1, &a9, a3, a4, a5, a6, a7, a8);

  return v9;
}

__CFString *NSPrintV(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  VASPrintF(&v11, a1, a2, a4, a5, a6, a7, a8);
  v8 = v11;
  if (v11)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    free(v8);
  }

  else
  {
    v9 = &stru_1F068B090;
  }

  return v9;
}

uint64_t PrintFCoreVAList(uint64_t (**a1)(unsigned __int8 *, int64_t, void), unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = 0;
  v436 = *MEMORY[0x1E69E9840];
  v423[1] = a3;
  v421 = 0u;
  v422 = 0u;
  v423[0] = a3;
  v11 = *a2;
  v420 = *MEMORY[0x1E695E4D0];
  v12 = 42;
  while (2)
  {
    v13 = v8 + 1;
    v14 = v8;
    if (v11)
    {
      do
      {
        if (v11 == 37)
        {
          break;
        }

        v15 = *++v14;
        v11 = v15;
        ++v13;
      }

      while (v15);
    }

    v16 = v14 - v8;
    if (v14 != v8)
    {
      v17 = (*a1)(v8, v16, a1);
      if ((v17 & 0x80000000) != 0)
      {
        return v17;
      }

      v10 = (v10 + v16);
      v12 = 42;
    }

    if (!v11)
    {
      return v10;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v421 = 0u;
    v422 = 0u;
    while (1)
    {
      v23 = *v13;
      if (v23 <= 0x2C)
      {
        break;
      }

      if (*v13 <= 0x3Eu)
      {
        if (v23 == 45)
        {
          v22 |= 1u;
        }

        else
        {
          if (v23 != 48)
          {
            goto LABEL_35;
          }

          v22 |= 4u;
        }

        goto LABEL_29;
      }

      if (v23 == 63)
      {
        v24 = v423[0];
        v423[0] += 8;
        v22 = v22 & 0xFFFFFFEF | (16 * (*v24 == 0));
        goto LABEL_29;
      }

      if (v23 != 126)
      {
        goto LABEL_35;
      }

      v19 = 1;
      BYTE11(v422) = 1;
LABEL_30:
      ++v13;
    }

    if (*v13 <= 0x26u)
    {
      if (v23 == 32)
      {
        v18 = 32;
        BYTE4(v421) = 32;
      }

      else
      {
        if (v23 != 35)
        {
          goto LABEL_35;
        }

        BYTE3(v421) = ++v20;
      }

      goto LABEL_30;
    }

    if (v23 == 39)
    {
      BYTE8(v422) = ++v21;
      goto LABEL_30;
    }

    if (v23 == 43)
    {
      v22 |= 2u;
LABEL_29:
      LOBYTE(v421) = v22;
      goto LABEL_30;
    }

    if (v23 != 42)
    {
LABEL_35:
      if (v23 - 48 > 9)
      {
        v26 = 0;
      }

      else
      {
        LODWORD(v26) = 0;
        do
        {
          v26 = 10 * v26 + v23 - 48;
          DWORD2(v421) = v26;
          v27 = *++v13;
          v23 = v27;
        }

        while (v27 - 48 < 0xA);
      }

      goto LABEL_40;
    }

    v25 = v423[0];
    v423[0] += 8;
    v26 = *v25;
    if ((v26 & 0x80000000) != 0)
    {
      v26 = -v26;
      LOBYTE(v22) = v22 | 1;
      LOBYTE(v421) = v22;
    }

    DWORD2(v421) = v26;
    v23 = *++v13;
LABEL_40:
    if (v23 == 46)
    {
      v28 = v13 + 1;
      v23 = v13[1];
      if (v23 == 42)
      {
        v29 = v423[0];
        v423[0] += 8;
        v30 = *v29;
        *&v422 = v30;
        LOBYTE(v23) = v13[2];
        v28 = v13 + 2;
      }

      else if (v23 - 48 > 9)
      {
        v30 = 0;
      }

      else
      {
        v30 = 0;
        do
        {
          v30 = (v23 & 0xF) + 10 * v30;
          *&v422 = v30;
          v31 = *++v28;
          LOBYTE(v23) = v31;
        }

        while ((v31 - 48) < 0xA);
      }

      LOBYTE(v22) = v22 | 8;
      LOBYTE(v421) = v22;
      v13 = v28;
      if (v22)
      {
LABEL_51:
        LOBYTE(v22) = v22 & 0xFB;
        LOBYTE(v421) = v22;
      }
    }

    else
    {
      v30 = 0;
      if (v22)
      {
        goto LABEL_51;
      }
    }

    v32 = 0;
    v33 = 0;
    while (2)
    {
      v34 = (((v23 - 104) >> 1) | ((v23 - 104) << 7));
      if (v34 <= 1)
      {
        if (((v23 - 104) >> 1) | ((v23 - 104) << 7))
        {
          goto LABEL_61;
        }

        BYTE1(v421) = ++v32;
        goto LABEL_58;
      }

      if (v34 == 2)
      {
        BYTE2(v421) = ++v33;
LABEL_58:
        v35 = *++v13;
        LOBYTE(v23) = v35;
        continue;
      }

      break;
    }

    if (v34 == 6 || v34 == 9)
    {
LABEL_61:
      if (!(v32 | v33))
      {
        v32 = 0;
        v33 = 1;
        BYTE2(v421) = 1;
        v36 = *++v13;
        LOBYTE(v23) = v36;
        goto LABEL_63;
      }

      return 0xFFFFFFFFLL;
    }

    v41 = 0xFFFFFFFFLL;
    if (v32 > 2 || v33 > 2)
    {
      return v41;
    }

    if (v32 && v33)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_63:
    v37 = v23;
    v38 = 10;
    v39 = "0123456789ABCDEF";
    switch(v23)
    {
      case '@':
        v122 = v423[0];
        v423[0] += 8;
        if ((v22 & 0x10) != 0)
        {
          goto LABEL_818;
        }

        v123 = *v122;
        if (v123)
        {
          v124 = v123;
        }

        else
        {
          v124 = @"NULL";
        }

        if (!v21 || (v22 & 8) == 0)
        {
          goto LABEL_226;
        }

        if (v30 < 2)
        {
          *&v422 = 0;
          BYTE8(v422) = 0;
        }

        else
        {
          *&v422 = v30 - 2;
LABEL_226:
          if (v21 == 2)
          {
            v125 = 8738;
          }

          else
          {
            if (v21 != 1)
            {
              goto LABEL_412;
            }

            v125 = 10023;
          }

          *(&v422 + 9) = v125;
        }

LABEL_412:
        if (v20 == 1)
        {
          Data = CFPropertyListCreateData(0, v124, kCFPropertyListXMLFormat_v1_0, 0, 0);
          if (Data)
          {
            v201 = Data;
            BytePtr = CFDataGetBytePtr(Data);
            Length = CFDataGetLength(v201);
            v41 = PrintFWriteMultiLineText(a1, &v421, BytePtr, Length);
            CFRelease(v201);
            goto LABEL_715;
          }

          v213 = PrintFCore(a1, "<<PLIST NOT XML-ABLE>>", v195, v196, v197, v198, v199, v200, usedBufLen);
          goto LABEL_691;
        }

        while (2)
        {
          v204 = BYTE3(v421);
          v205 = CFGetTypeID(v124);
          if (v205 == CFBooleanGetTypeID())
          {
            if (v420 == v124)
            {
              v239 = 4;
            }

            else
            {
              v239 = 5;
            }

            if (v420 == v124)
            {
              p_str = "true";
            }

            else
            {
              p_str = "false";
            }

            goto LABEL_689;
          }

          if (v205 == CFNumberGetTypeID())
          {
            if (CFNumberIsFloatType(v124))
            {
              *__format = 0;
              CFNumberGetValue(v124, kCFNumberDoubleType, __format);
              v248 = SNPrintF(&__str, 300, "%f", v243, v244, v245, v246, v247, *__format);
            }

            else
            {
              *__format = 0;
              CFNumberGetValue(v124, kCFNumberSInt64Type, __format);
              v248 = SNPrintF(&__str, 300, "%lld", v321, v322, v323, v324, v325, *__format);
            }

            v239 = v248;
            goto LABEL_688;
          }

          if (v205 != CFStringGetTypeID())
          {
            if (v205 == CFNullGetTypeID())
            {
              v256 = a1;
              p_str = "Null";
              v239 = 4;
              goto LABEL_690;
            }

            if (v205 == CFURLGetTypeID())
            {
              v124 = CFURLGetString(v124);
              v41 = 4294960596;
              if (!v124)
              {
                return v41;
              }

              continue;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              memset(__format, 0, sizeof(__format));
              [(__CFString *)v124 getUUIDBytes:__format];
              goto LABEL_655;
            }

            if (v205 == CFUUIDGetTypeID())
            {
              *__format = CFUUIDGetUUIDBytes(v124);
LABEL_655:
              if (BYTE11(v422))
              {
                v307 = "%~#U";
              }

              else
              {
                v307 = "%#U";
              }

              v308 = SNPrintF(&__str, 300, v307, v257, v258, v259, v260, v261, __format);
              v309 = v422;
              if (v308 < v422)
              {
                v309 = v308;
              }

              if ((v421 & 8) != 0)
              {
                v310 = v309;
              }

              else
              {
                v310 = v308;
              }

              v239 = v310;
LABEL_688:
              p_str = &__str;
LABEL_689:
              v256 = a1;
LABEL_690:
              v213 = PrintFWriteText(v256, &v421, p_str, v239);
LABEL_691:
              v41 = v213;
              goto LABEL_715;
            }

            if (v205 != CFDataGetTypeID())
            {
              v435 = 0;
              *__format = a1;
              *&__format[8] = &v421;
              v434 = DWORD2(v421);
              v41 = PrintFWriteCFObjectLevel(__format, v124, 0);
              if ((v41 & 0x80000000) != 0 || v204 == 2 || v205 != CFArrayGetTypeID() && v205 != CFDictionaryGetTypeID() && v205 != CFSetGetTypeID())
              {
                goto LABEL_715;
              }

              v346 = (*a1)("\n", 1, a1);
              if (v346 <= 0)
              {
                v347 = 0;
              }

              else
              {
                v347 = v41;
              }

              goto LABEL_905;
            }

            v338 = CFDataGetBytePtr(v124);
            v339 = CFDataGetLength(v124);
            v340 = v339;
            v341 = v422;
            if ((v421 & 8) == 0)
            {
              v341 = v339;
            }

            v342 = 32;
            if (v341 < 0x20)
            {
              v342 = v341;
            }

            if (v204 == 2)
            {
              v341 = v342;
            }

            if (BYTE8(v422))
            {
              v343 = (v421 & 8) == 0;
            }

            else
            {
              v343 = 1;
            }

            if (v343)
            {
              v344 = v341;
            }

            else
            {
              v344 = v341 + 2;
            }

            if (v339 >= 0x21 && v344 > 0x20)
            {
              v41 = (*a1)("\n", 1, a1);
              if ((v41 & 0x80000000) != 0)
              {
                return v41;
              }

              v346 = PrintFWriteHex(a1, &v421, 0, v338, v340, v344, 0, v345);
              if (v346 >= 0)
              {
                v347 = v41;
              }

              else
              {
                v347 = 0;
              }

LABEL_905:
              v41 = (v347 + v346);
              goto LABEL_715;
            }

            if (BYTE9(v422))
            {
              v41 = (*a1)(&v422 + 9, 1, a1);
              if ((v41 & 0x80000000) != 0)
              {
                return v41;
              }
            }

            else
            {
              LODWORD(v41) = 0;
            }

            if (v340 >= v344)
            {
              v384 = v344;
            }

            else
            {
              v384 = v340;
            }

            v17 = PrintFWriteHexByteStream(a1, 0, v338, v384);
            if ((v17 & 0x80000000) == 0)
            {
              v385 = v17 + v41;
              if (BYTE10(v422))
              {
                v346 = (*a1)(&v422 + 10, 1, a1);
                if (v346 >= 0)
                {
                  v347 = v385;
                }

                else
                {
                  v347 = 0;
                }

                goto LABEL_905;
              }

              v10 = (v385 + v10);
LABEL_398:
              v12 = 42;
              goto LABEL_818;
            }

            return v17;
          }

          break;
        }

        v249 = CFStringGetLength(v124);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v249, 0x8000100u);
        v432.tv_sec = MaximumSizeForEncoding;
        if (!MaximumSizeForEncoding)
        {
          v256 = a1;
          p_str = "";
          v239 = 0;
          goto LABEL_690;
        }

        v251 = MaximumSizeForEncoding;
        v252 = malloc_type_malloc(MaximumSizeForEncoding, 0x100004077774924uLL);
        if (v252)
        {
          v253 = v252;
          v424 = 0;
          v437.location = 0;
          v437.length = v249;
          CFStringGetBytes(v124, v437, 0x8000100u, 0x5Eu, 0, v252, v251, &v424);
          tv_sec = v424;
          if (BYTE11(v422))
          {
            v255 = __format;
            _PrintFObfuscateString(v253, v424, __format, &v432.tv_sec);
            tv_sec = v432.tv_sec;
            v424 = v432.tv_sec;
          }

          else
          {
            v255 = v253;
          }

          if ((v421 & 8) != 0 && tv_sec > v422)
          {
            tv_sec = v422;
            v424 = v422;
            if (v422 >= 1)
            {
              while ((v255[tv_sec] & 0xC0) == 0x80)
              {
                v424 = tv_sec - 1;
                v219 = tv_sec-- < 2;
                if (v219)
                {
                  tv_sec = 0;
                  break;
                }
              }
            }
          }

          v41 = PrintFWriteText(a1, &v421, v255, tv_sec);
          free(v253);
        }

        else
        {
          v41 = 4294960568;
        }

LABEL_715:
        v12 = 42;
        if ((v41 & 0x80000000) == 0)
        {
          v10 = (v41 + v10);
          goto LABEL_818;
        }

        return v41;
      case 'C':
        v114 = v423[0];
        v423[0] += 8;
        if ((v22 & 0x10) != 0)
        {
          goto LABEL_818;
        }

        v115 = *v114;
        if (v21)
        {
          __str = 39;
          v116 = 1;
        }

        else
        {
          v116 = 0;
        }

        v175 = HIBYTE(v115);
        v50 = &__str;
        v176 = &v429[v116 - 1];
        if (HIBYTE(v115))
        {
          v177 = 94;
        }

        else
        {
          v177 = 46;
        }

        if (v115 >> 24 < 32 || v175 == 127)
        {
          LOBYTE(v175) = v177;
        }

        *v176 = v175;
        v179 = BYTE2(v115);
        if (BYTE2(v115))
        {
          v180 = 94;
        }

        else
        {
          v180 = 46;
        }

        if (BYTE2(v115) - 127 < 0xFFFFFFA1)
        {
          v179 = v180;
        }

        v176[1] = v179;
        v181 = BYTE1(v115);
        if (v181)
        {
          v182 = 94;
        }

        else
        {
          v182 = 46;
        }

        if ((v181 - 127) < 0xFFFFFFA1)
        {
          LOBYTE(v181) = v182;
        }

        v176[2] = v181;
        if (v115)
        {
          v183 = 94;
        }

        else
        {
          v183 = 46;
        }

        if ((v115 - 32) >= 0x5F)
        {
          LOBYTE(v115) = v183;
        }

        v176[3] = v115;
        if (v21)
        {
          LODWORD(v41) = v116 + 5;
          v429[(v116 | 4) - 1] = 39;
          v37 = 67;
        }

        else
        {
          v37 = 67;
          LODWORD(v41) = v116 | 4;
        }

        goto LABEL_813;
      case 'E':
      case 'F':
      case 'G':
      case 'e':
      case 'f':
      case 'g':
        __format[0] = 37;
        if ((v22 & 2) != 0)
        {
          __format[1] = 43;
          v40 = 2;
        }

        else
        {
          v40 = 1;
        }

        if (v20)
        {
          __format[v40++] = 35;
        }

        if ((v22 & 4) != 0)
        {
          __format[v40++] = 48;
        }

        v42 = v40 + 1;
        __format[v40] = 42;
        if ((v22 & 8) != 0)
        {
          __format[v42] = 46;
          v42 = v40 + 3;
          __format[v40 + 2] = 42;
        }

        v43 = &__format[v42];
        *v43 = v23;
        v43[1] = 0;
        if (v22)
        {
          v44 = -v26;
        }

        else
        {
          v44 = v26;
        }

        v45 = v423[0];
        v423[0] += 8;
        if ((v22 & 0x10) != 0)
        {
          goto LABEL_818;
        }

        v46 = *v45;
        if ((v22 & 8) != 0)
        {
          v47 = snprintf(&__str, 0x12CuLL, __format, v46, v44, v30, *v45, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417);
        }

        else
        {
          v47 = snprintf(&__str, 0x12CuLL, __format, v46, v44, *v45, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417);
        }

        v41 = v47;
        if ((v47 & 0x80000000) == 0)
        {
          goto LABEL_90;
        }

        return v41;
      case 'H':
        v103 = v423[0];
        v423[0] += 8;
        v104 = *v103;
        v423[0] = v103 + 16;
        v105 = *(v103 + 8);
        v423[0] = v103 + 24;
        if ((v22 & 0x10) != 0)
        {
          goto LABEL_818;
        }

        v106 = *(v103 + 16);
        if (!v104 && v105)
        {
          v41 = PrintFCore(a1, "<<NULL %zu/%zu>>", 42, a4, a5, a6, a7, a8, v105);
          if ((v41 & 0x80000000) != 0)
          {
            return v41;
          }

LABEL_397:
          v10 = (v41 + v10);
          goto LABEL_398;
        }

        if (v105 == -1)
        {
          v105 = strlen(v104);
        }

        if (v30 <= 1)
        {
          if (!v30)
          {
            if (v105 >= v106)
            {
              v266 = v106;
            }

            else
            {
              v266 = v105;
            }

            v265 = PrintFWriteHexOneLine(a1, &v421, v104, v266);
            goto LABEL_714;
          }

          if (v30 != 1)
          {
LABEL_568:
            v267 = a1;
            v268 = "<< BAD %%H PRECISION >>";
LABEL_702:
            v265 = PrintFCore(v267, v268, v12, a4, a5, a6, a7, a8, usedBufLen);
            goto LABEL_714;
          }

          v207 = a1;
          v208 = v26;
        }

        else
        {
          if (v30 != 2)
          {
            if (v30 == 3)
            {
              if (v105 >= v106)
              {
                v165 = v106;
              }

              else
              {
                v165 = v105;
              }

              v166 = a1;
              v167 = 0;
              goto LABEL_563;
            }

            if (v30 == 4)
            {
              if (v105 >= v106)
              {
                v165 = v106;
              }

              else
              {
                v165 = v105;
              }

              v166 = a1;
              v167 = 1;
LABEL_563:
              v265 = PrintFWriteHexByteStream(v166, v167, v104, v165);
LABEL_714:
              v41 = v265;
              goto LABEL_715;
            }

            goto LABEL_568;
          }

          if (!v105)
          {
            v267 = a1;
            v268 = "(0 bytes)\n";
            goto LABEL_702;
          }

          if (v105 > 0x10)
          {
            v17 = PrintFCore(a1, "\n", v12, a4, a5, a6, a7, a8, usedBufLen);
            if ((v17 & 0x80000000) != 0)
            {
              return v17;
            }

            v208 = DWORD2(v421);
            v207 = a1;
          }

          else
          {
            v207 = a1;
            v208 = 0;
          }
        }

        v265 = PrintFWriteHex(v207, &v421, v208, v104, v105, v106, 1, a8);
        goto LABEL_714;
      case 'N':
        if ((v22 & 0x10) != 0)
        {
          goto LABEL_818;
        }

        v432.tv_sec = 0;
        *&v432.tv_usec = 0;
        v424 = 0;
        gettimeofday(&v432, 0);
        v424 = v432.tv_sec;
        if (BYTE3(v421) == 2)
        {
          v96 = gmtime(&v424);
          strftime(__format, 0x18uLL, "%Y-%m-%d-%H:%M:%S", v96);
          v102 = SNPrintF(&__str, 300, "%s.%06u", v97, v98, v99, v100, v101, __format);
        }

        else
        {
          v157 = localtime(&v424);
          if (BYTE3(v421))
          {
            v158 = "%Y-%m-%d_%I-%M-%S";
          }

          else
          {
            v158 = "%Y-%m-%d %I:%M:%S";
          }

          strftime(__format, 0x18uLL, v158, v157);
          strftime(v431, 8uLL, "%p", v157);
          v164 = 32;
          if (BYTE3(v421))
          {
            v164 = 45;
          }

          v407 = v164;
          v408 = v431;
          v102 = SNPrintF(&__str, 300, "%s.%06u%c%s", v159, v160, v161, v162, v163, __format);
        }

        LODWORD(v41) = v102;
        v37 = 78;
        goto LABEL_90;
      case 'S':
        v85 = v423[0];
        v423[0] += 8;
        if ((v22 & 0x10) != 0)
        {
          goto LABEL_818;
        }

        v86 = *v85;
        v87 = (v22 & 8) == 0;
        if (v86)
        {
          if (!v21 || (v22 & 8) == 0)
          {
LABEL_361:
            if (v87)
            {
LABEL_363:
              v174 = *v86;
              if (v174 == 255)
              {
                if (v86[1] == 254)
                {
                  v20 = 2;
                  goto LABEL_457;
                }
              }

              else if (v174 == 254 && v86[1] == 255)
              {
                v20 = 1;
LABEL_457:
                BYTE3(v421) = v20;
                v86 += 2;
                *&v422 = --v30;
                goto LABEL_459;
              }

LABEL_458:
              if (v20 - 1 >= 2)
              {
                if (v20)
                {
                  LODWORD(v41) = SNPrintF(&__str, 300, "<< ERROR: %%S with too many #'s (%d) >>", a4, a5, a6, a7, a8, v20);
                  v21 = BYTE8(v422);
                  goto LABEL_497;
                }

                v223 = v30 > 0 || v87;
                if (v223 == 1)
                {
                  v41 = 0;
                  v224 = 300;
                  do
                  {
                    v225 = *&v86[2 * v41];
                    if (*&v86[2 * v41])
                    {
                      v226 = v224 < 1;
                    }

                    else
                    {
                      v226 = 1;
                    }

                    if (v226)
                    {
                      break;
                    }

                    if ((v225 - 32) >= 0x5F)
                    {
                      LOBYTE(v225) = 94;
                    }

                    v429[v41++ - 1] = v225;
                    v227 = v41 < v30 || v87;
                    --v224;
                  }

                  while (v227);
LABEL_497:
                  if (v21 == 2)
                  {
                    v228 = 8738;
                  }

                  else
                  {
                    if (v21 != 1)
                    {
LABEL_502:
                      v37 = 83;
                      goto LABEL_90;
                    }

                    v228 = 10023;
                  }

                  *(&v422 + 9) = v228;
                  goto LABEL_502;
                }

LABEL_495:
                LODWORD(v41) = 0;
                goto LABEL_497;
              }

LABEL_459:
              v216 = v30 > 0 || v87;
              if (v216 == 1)
              {
                v41 = 0;
                v217 = 300;
                v218 = 2 - v20;
                do
                {
                  if (*&v86[2 * v41])
                  {
                    v219 = v217 < 1;
                  }

                  else
                  {
                    v219 = 1;
                  }

                  if (v219)
                  {
                    break;
                  }

                  v220 = v86[v218];
                  if (v86[v218])
                  {
                    v221 = 94;
                  }

                  else
                  {
                    v221 = 46;
                  }

                  if ((v220 - 32) >= 0x5F)
                  {
                    LOBYTE(v220) = v221;
                  }

                  v429[v41++ - 1] = v220;
                  v222 = v41 < v30 || v87;
                  --v217;
                  v218 += 2;
                }

                while (v222);
                goto LABEL_497;
              }

              goto LABEL_495;
            }

LABEL_362:
            if (!v30)
            {
              goto LABEL_458;
            }

            goto LABEL_363;
          }

          v88 = v30 >= 2;
          v30 -= 2;
          if (v88)
          {
            v87 = 0;
            *&v422 = v30;
            goto LABEL_362;
          }
        }

        else
        {
          v37 = 83;
          LODWORD(v41) = 4;
          if ((v22 & 8) == 0 || v30)
          {
            goto LABEL_401;
          }

          if (!v21)
          {
            v87 = 0;
            v21 = 0;
            v30 = 0;
            goto LABEL_362;
          }
        }

        v87 = 0;
        v21 = 0;
        v30 = 0;
        *&v422 = 0;
        BYTE8(v422) = 0;
        goto LABEL_361;
      case 'U':
        v75 = v423[0];
        v423[0] += 8;
        if ((v22 & 0x10) != 0)
        {
          goto LABEL_818;
        }

        p_s = *v75;
        if (!*v75)
        {
          v37 = 85;
          goto LABEL_400;
        }

        if (v19)
        {
          if (gObfuscateOnce != -1)
          {
            dispatch_once_f(&gObfuscateOnce, 0, _PrintFObfuscateInit);
          }

          if (!v20)
          {
            *__format = vqtbl1q_s8(*p_s, xmmword_191FF9600);
            p_s = __format;
          }

          v77 = SipHash(gObfuscateKey, p_s, 16);
          __s.i16[0] = 187;
          __s.i8[2] = HIBYTE(v77);
          __s.i8[3] = BYTE2(v77);
          __s.i8[4] = BYTE1(v77);
          __s.i8[5] = v77;
          *(__s.i64 + 6) = 0xFBF31F0000800010;
          __s.i16[7] = -8320;
          if (!v20)
          {
            __s = vqtbl1q_s8(__s, xmmword_191FF9600);
          }

          p_s = &__s;
          v20 = BYTE3(v421);
        }

        if (v20)
        {
          v78 = p_s->u8[0];
          v79 = p_s->u8[2];
          v80 = p_s->u8[3];
          v81 = p_s->u8[4];
          v82 = p_s->u8[5];
          v83 = p_s->u8[6];
          v84 = p_s->u8[7];
        }

        else
        {
          v78 = p_s->u8[3];
          v79 = p_s->u8[1];
          v80 = p_s->u8[0];
          v81 = p_s->u8[5];
          v82 = p_s->u8[4];
          v83 = p_s->u8[7];
          v84 = p_s->u8[6];
        }

        v206 = p_s->u8[14];
        v419 = p_s->u8[15];
        v417 = p_s->u8[12];
        v418 = p_s->u8[13];
        v415 = p_s->u8[10];
        v416 = p_s->u8[11];
        v413 = p_s->u8[8];
        v414 = p_s->u8[9];
        v411 = v83;
        v412 = v84;
        v409 = v81;
        v410 = v82;
        v407 = v79;
        v408 = v80;
        v50 = &__str;
        LODWORD(v41) = SNPrintF(&__str, 300, "%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x", v418, v206, v419, a7, a8, v78);
        v37 = 85;
        goto LABEL_813;
      case 'V':
        v92 = v423[0];
        v423[0] += 8;
        v93 = *v92;
        v423[0] = v92 + 2;
        if ((v22 & 0x10) != 0)
        {
          goto LABEL_818;
        }

        v37 = 86;
        LODWORD(v41) = 4;
        if (!v93)
        {
          goto LABEL_401;
        }

        v94 = v92[1];
        if (!v94)
        {
          goto LABEL_401;
        }

        v95 = PrintFCoreVAList(a1, v93, *v94);
LABEL_396:
        v41 = v95;
        if ((v95 & 0x80000000) == 0)
        {
          goto LABEL_397;
        }

        return v41;
      case 'X':
        goto LABEL_112;
      case 'a':
        v128 = v423[0];
        v423[0] += 8;
        if ((v22 & 0x10) != 0)
        {
          goto LABEL_818;
        }

        v129 = *v128;
        if (!*v128)
        {
          v37 = 97;
          goto LABEL_400;
        }

        if (v20 == 2)
        {
          v209 = v129[1];
          if (v209 <= 0x11)
          {
            if (!v129[1])
            {
              v319 = "<< AF_UNSPEC >>";
LABEL_790:
              v318 = SNPrintF(&__str, 300, v319, a4, a5, a6, a7, a8, usedBufLen);
              goto LABEL_791;
            }

            if (v209 != 2)
            {
              goto LABEL_680;
            }

            v210 = (v129 + 4);
            if (v19)
            {
              _PrintFObfuscateIPv4(v210, __format);
              v210 = __format;
            }

            IPv4AddressToCString(bswap32(*v210), bswap32(*(v129 + 1)) >> 16, &__str);
LABEL_759:
            LODWORD(v41) = strlen(&__str);
            goto LABEL_792;
          }

          if (v209 != 18)
          {
            if (v209 != 30)
            {
LABEL_680:
              v318 = SNPrintF(&__str, 300, "<< ERROR: %%##a used with unknown family: %d >>", a4, a5, a6, a7, a8, v129[1]);
              goto LABEL_791;
            }

            v212 = (v129 + 8);
            if (v19)
            {
              _PrintFObfuscateIPv6(v212, __format);
              v212 = __format;
            }

            v241 = *(v129 + 6);
            v242 = bswap32(*(v129 + 1)) >> 16;
            goto LABEL_758;
          }

          v320 = &v129[v129[5] + 8];
          if (v129[6] != 6)
          {
            v407 = v129[6];
            v318 = SNPrintF(&__str, 300, "<< AF_LINK %H >>", a4, a5, a6, a7, a8, v320);
            goto LABEL_791;
          }

          if (v19)
          {
            _PrintFObfuscateHardwareAddress(&v129[v129[5] + 8], 6uLL, __format);
            v320 = __format;
          }

          v409 = v320[4];
          v410 = v320[5];
          v407 = v320[2];
          v408 = v320[3];
          usedBufLen = *v320;
        }

        else
        {
          if (v20 == 1)
          {
            if (v30 != 6)
            {
              if (v30 == 4)
              {
                if (v19)
                {
                  if (v129 == __format)
                  {
                    v353 = &__format[3];
                    v352 = &__format[1];
                    do
                    {
                      v354 = *(v352 - 1);
                      *(v352 - 1) = *v353;
                      *v353-- = v354;
                      v88 = v352++ >= v353;
                    }

                    while (!v88);
                  }

                  else
                  {
                    v130 = v129 + 4;
                    v131 = __format;
                    do
                    {
                      v132 = *--v130;
                      *v131++ = v132;
                    }

                    while (v130 > v129);
                  }

                  _PrintFObfuscateIPv4(__format, __format);
                  v262 = __format[0];
                  v263 = __format[2];
                  v264 = __format[3];
                }

                else
                {
                  v262 = v129[3];
                  v263 = v129[1];
                  v264 = *v129;
                }

                goto LABEL_782;
              }

              if (*v129 != 6)
              {
                if (*v129 != 4)
                {
                  v318 = SNPrintF(&__str, 300, "<< ERROR: %%#a used with unsupported type: %d >>", a4, a5, a6, a7, a8, *v129);
                  goto LABEL_791;
                }

                v276 = (v129 + 4);
                if (v19)
                {
                  _PrintFObfuscateIPv4(v276, __format);
                  v276 = __format;
                }

                v262 = *v276;
                v263 = v276[2];
                v264 = v276[3];
                goto LABEL_782;
              }

              v212 = (v129 + 4);
              if (v19)
              {
                _PrintFObfuscateIPv6(v212, __format);
                v212 = __format;
              }

              goto LABEL_757;
            }

            if (v19)
            {
              if (v129 == __format)
              {
                v355 = &__format[1];
                v356 = &__format[5];
                do
                {
                  v357 = *(v355 - 1);
                  *(v355 - 1) = *v356;
                  *v356-- = v357;
                  v88 = v355++ >= v356;
                }

                while (!v88);
              }

              else
              {
                v273 = v129 + 6;
                v274 = __format;
                do
                {
                  v275 = *--v273;
                  *v274++ = v275;
                }

                while (v273 > v129);
              }

              _PrintFObfuscateHardwareAddress(__format, 6uLL, __format);
              v326 = __format[0];
              v327 = __format[2];
              v328 = __format[3];
              v329 = __format[4];
              v330 = __format[5];
            }

            else
            {
              v326 = v129[5];
              v327 = v129[3];
              v328 = v129[2];
              v329 = v129[1];
              v330 = *v129;
            }
          }

          else
          {
            v211 = __ROR8__(v30 - 2, 1);
            if (v211 <= 1)
            {
              if (!v211)
              {
                v331 = v129[1];
                v407 = v331 >> 4;
                v408 = v331 & 0xF;
                usedBufLen = *v129 >> 4;
LABEL_783:
                v319 = "%u.%u.%u.%u";
                goto LABEL_790;
              }

              if (v211 != 1)
              {
LABEL_700:
                v318 = SNPrintF(&__str, 300, "%s", a4, a5, a6, a7, a8, "<< ERROR: Must specify address size (i.e. %.4a=IPv4, %.6a=Enet, %.8a=Fibre, %.16a=IPv6) >>");
                goto LABEL_791;
              }

              if (v19)
              {
                _PrintFObfuscateIPv4(v129, __format);
                v129 = __format;
              }

              v262 = *v129;
              v263 = v129[2];
              v264 = v129[3];
LABEL_782:
              v407 = v263;
              v408 = v264;
              usedBufLen = v262;
              goto LABEL_783;
            }

            if (v211 != 2)
            {
              if (v211 == 3)
              {
                if (v19)
                {
                  _PrintFObfuscateHardwareAddress(v129, 8uLL, __format);
                  v129 = __format;
                }

                v411 = v129[6];
                v412 = v129[7];
                v409 = v129[4];
                v410 = v129[5];
                v407 = v129[2];
                v408 = v129[3];
                v318 = SNPrintF(&__str, 300, "%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X", a4, a5, a6, a7, a8, *v129);
LABEL_791:
                LODWORD(v41) = v318;
LABEL_792:
                v37 = 97;
LABEL_90:
                v50 = &__str;
                goto LABEL_813;
              }

              if (v211 != 7)
              {
                goto LABEL_700;
              }

              if (v19)
              {
                _PrintFObfuscateIPv6(v129, __format);
                v129 = __format;
              }

              v212 = v129;
LABEL_757:
              v241 = 0;
              v242 = 0;
LABEL_758:
              IPv6AddressToCString(v212, v241, v242, 0xFFFFFFFF, &__str, 0);
              goto LABEL_759;
            }

            if (v19)
            {
              _PrintFObfuscateHardwareAddress(v129, 6uLL, __format);
              v129 = __format;
            }

            v326 = *v129;
            v327 = v129[2];
            v328 = v129[3];
            v329 = v129[4];
            v330 = v129[5];
          }

          v409 = v329;
          v410 = v330;
          v407 = v327;
          v408 = v328;
          usedBufLen = v326;
        }

        v319 = "%02X:%02X:%02X:%02X:%02X:%02X";
        goto LABEL_790;
      case 'b':
        v38 = 2;
        goto LABEL_173;
      case 'c':
        v133 = v423[0];
        v423[0] += 8;
        if ((v22 & 0x10) != 0)
        {
          goto LABEL_818;
        }

        v134 = *v133;
        if (v21)
        {
          __str = 39;
          if (v134)
          {
            v135 = 94;
          }

          else
          {
            v135 = 46;
          }

          if ((v134 - 32) >= 0x5F)
          {
            v136 = v135;
          }

          else
          {
            v136 = v134;
          }

          v429[0] = v136;
          v429[1] = 39;
          v37 = 99;
          LODWORD(v41) = 3;
        }

        else
        {
          __str = *v133;
          v37 = 99;
          LODWORD(v41) = 1;
        }

        goto LABEL_90;
      case 'd':
      case 'i':
        if (v33 == 1 || v33 == 2)
        {
          v48 = v423[0];
          v423[0] += 8;
          v49 = *v48;
        }

        else
        {
          v137 = v423[0];
          v423[0] += 8;
          v49 = *v137;
        }

        if (v32 == 1)
        {
          v49 = v49;
        }

        if (v32 == 2)
        {
          v91 = v49;
        }

        else
        {
          v91 = v49;
        }

        if ((v91 & 0x8000000000000000) != 0)
        {
          v91 = -v91;
          v38 = 10;
          v89 = 45;
          v18 = 45;
          goto LABEL_182;
        }

        v38 = 10;
        if ((v22 & 2) != 0)
        {
          v18 = 45;
          v89 = 43;
LABEL_182:
          BYTE4(v421) = v89;
        }

        if ((v22 & 0x10) != 0)
        {
LABEL_818:
          v11 = v13[1];
          v8 = v13 + 1;
          continue;
        }

        if (v38 == 2 && v20 >= 2)
        {
          *__format = &__str;
          if ((v22 & 8) != 0)
          {
            if (v30 >= 0x41)
            {
              SNPrintF_Add(__format, v431, "ERROR: << precision must be 0-%d >>", a4, a5, a6, a7, a8, 64);
LABEL_310:
              v50 = &__str;
              LODWORD(v41) = *__format - &__str;
LABEL_813:
              v272 = PrintFWriteText(a1, &v421, v50, v41);
              goto LABEL_814;
            }

            if (v30)
            {
LABEL_296:
              v148 = (v30 - 1);
              if (v20 == 2)
              {
                do
                {
                  if ((v91 >> v148))
                  {
                    v149 = "";
                    if (*__format != &__str)
                    {
                      v149 = " ";
                    }

                    SNPrintF_Add(__format, v431, "%s%d", a4, a5, a6, a7, a8, v149);
                  }

                  v219 = v148-- <= 0;
                }

                while (!v219);
              }

              else
              {
                for (i = 0; i != v30; ++i)
                {
                  if ((v91 >> v148))
                  {
                    v151 = "";
                    if (*__format != &__str)
                    {
                      v151 = " ";
                    }

                    SNPrintF_Add(__format, v431, "%s%d", a4, a5, a6, a7, a8, v151);
                  }

                  LODWORD(v148) = v148 - 1;
                }
              }

              goto LABEL_310;
            }

            v30 = 1;
          }

          else if (v32 == 1)
          {
            v30 = 16;
          }

          else if (v32 == 2)
          {
            v30 = 8;
          }

          else if (((v33 - 1) & 0xFE) != 0)
          {
            v30 = 32;
          }

          else
          {
            v30 = 64;
          }

          *&v422 = v30;
          goto LABEL_296;
        }

        if ((v22 & 8) != 0)
        {
          goto LABEL_204;
        }

        if ((v22 & 4) != 0)
        {
          v112 = 2 * (v38 != 10);
          if (v38 == 8)
          {
            v112 = 1;
          }

          if (!v20)
          {
            v112 = 0;
          }

          if (v18)
          {
            ++v112;
          }

          v88 = v26 >= v112;
          v113 = v26 - v112;
          if (v88)
          {
            v30 = v113;
          }

          else
          {
            v30 = 0;
          }

          *&v422 = v30;
        }

        if (v30)
        {
LABEL_204:
          if (v30 < 0x12C)
          {
            goto LABEL_272;
          }

          v30 = 299;
        }

        else
        {
          v30 = 1;
        }

        *&v422 = v30;
LABEL_272:
        if (v21)
        {
          v142 = 0;
          v143 = -1;
          v144 = 1;
          for (j = v431; ; j = v50)
          {
            if (HIDWORD(v91))
            {
              v146 = v91 / v38;
              *(j - 1) = v39[v91 % v38];
              v50 = j - 1;
              LODWORD(v41) = v142 + 1;
            }

            else
            {
              v146 = v91 / v38;
              *(j - 1) = v39[v91 % v38];
              v50 = j - 1;
              LODWORD(v41) = v142 + 1;
              if (v38 > v91)
              {
                LODWORD(v30) = v422;
                goto LABEL_321;
              }
            }

            v91 = v146;
            if (!(v143 + 3 * (v144 / 3)))
            {
              *(j - 2) = 44;
              LODWORD(v41) = v142 + 2;
              v50 = j - 2;
            }

            --v143;
            ++v144;
            v142 = v41;
          }
        }

        LODWORD(v41) = 0;
        if (v91)
        {
          v50 = v431;
          do
          {
            if (HIDWORD(v91))
            {
              v147 = v91 % v38;
            }

            else
            {
              v147 = v91 % v38;
            }

            if (HIDWORD(v91))
            {
              v91 /= v38;
            }

            else
            {
              v91 = v91 / v38;
            }

            *--v50 = v39[v147];
            LODWORD(v41) = v41 + 1;
          }

          while (v91);
        }

        else
        {
          v50 = v431;
        }

LABEL_321:
        if (v41 < v30)
        {
          do
          {
            *--v50 = 48;
            LODWORD(v41) = v41 + 1;
          }

          while (v41 < v422);
        }

        if (!BYTE3(v421))
        {
          goto LABEL_329;
        }

        if (v38 == 8)
        {
          v155 = 1;
          v156 = -1;
        }

        else
        {
          if (v38 == 10)
          {
            goto LABEL_329;
          }

          *(v50 - 1) = v37;
          v155 = 2;
          v156 = -2;
        }

        v50 += v156;
        *v50 = 48;
        LODWORD(v41) = v155 + v41;
LABEL_329:
        if (BYTE4(v421))
        {
          *--v50 = BYTE4(v421);
          LODWORD(v41) = v41 + 1;
        }

        goto LABEL_813;
      case 'm':
        v117 = v423[0];
        v423[0] += 8;
        if ((v22 & 0x10) != 0)
        {
          goto LABEL_818;
        }

        v118 = *v117;
        if (v20)
        {
          if ((v118 - 0x20000000) >> 24 > 0x5E || BYTE2(v118) - 32 > 0x5E || BYTE1(v118) - 32 > 0x5E || *v117 - 32 > 0x5E)
          {
            v119 = v20 == 2;
            v120 = "%d/0x%X ";
            v121 = "%-11d    0x%08X    '^^^^'    ";
          }

          else
          {
            v119 = v20 == 2;
            v120 = "%d/0x%X/'%C' ";
            v121 = "%-11d    0x%08X    '%C'    ";
          }

          if (v119)
          {
            v153 = v121;
          }

          else
          {
            v153 = v120;
          }

          v407 = v118;
          v154 = SNPrintF(&__str, 300, v153, a4, a5, a6, a7, a8, v118);
        }

        else
        {
          v154 = 0;
        }

        DebugGetErrorStringEx(0, v118, &v429[v154 - 1], 300 - v154);
        v184 = strlen(&__str);
        v95 = PrintFWriteText(a1, &v421, &__str, v184);
        goto LABEL_396;
      case 'n':
        v126 = v423[0];
        v423[0] += 8;
        v127 = *v126;
        if (v32 == 2)
        {
          *v127 = v10;
          goto LABEL_818;
        }

        if (v32 == 1)
        {
          *v127 = v10;
          goto LABEL_818;
        }

        if (v33 == 2)
        {
          v152 = v10;
        }

        else
        {
          if (v33 != 1)
          {
            *v127 = v10;
            goto LABEL_818;
          }

          v152 = v10;
        }

        *v127 = v152;
        goto LABEL_818;
      case 'o':
        v38 = 8;
        goto LABEL_173;
      case 'p':
        v89 = 0;
        v18 = 0;
        v90 = v423[0];
        v423[0] += 8;
        v91 = *v90;
        v30 = 16;
        *&v422 = 16;
        LOBYTE(v22) = v22 | 8;
        LOBYTE(v421) = v22;
        v20 = 1;
        BYTE3(v421) = 1;
        v37 = 120;
        v38 = 16;
        goto LABEL_182;
      case 's':
        v53 = v423[0];
        v423[0] += 8;
        if ((v22 & 0x10) != 0)
        {
          goto LABEL_818;
        }

        v50 = *v53;
        if (!*v53)
        {
          v37 = 115;
          LODWORD(v41) = 4;
          if ((v22 & 8) == 0 || v30)
          {
            goto LABEL_401;
          }
        }

        if (v19)
        {
          if ((v22 & 8) == 0)
          {
            v30 = strlen(*v53);
          }

          _PrintFObfuscateString(v50, v30, &__s, 0);
          v21 = BYTE8(v422);
          v50 = &__s;
        }

        if (v21 && (v421 & 8) != 0)
        {
          if (v422 < 2)
          {
            *&v422 = 0;
            BYTE8(v422) = 0;
          }

          else
          {
            *&v422 = v422 - 2;
          }
        }

        if (BYTE3(v421) > 1u)
        {
          if (BYTE3(v421) != 2)
          {
            if (BYTE3(v421) == 3)
            {
              v230 = *v50;
              if (v230 == 43 || v230 == 45)
              {
                LODWORD(v231) = v50 + strlen(v50);
                goto LABEL_513;
              }

              v299 = v50 + 1;
              v300 = v50 + 1;
              v301 = *v50;
              v302 = v50;
              while (1)
              {
                if (v301 == 32)
                {
                  v302 = v300;
                }

                else if (!v301 || v301 == 58)
                {
                  v304 = (v300 - 1);
                  if (v301 == 58)
                  {
                    v305 = *++v304;
                    v301 = v305;
                  }

                  if (v301 != 58)
                  {
                    while (1)
                    {
                      if (v230 == 32)
                      {
                        v50 = v299;
                      }

                      else if (!v230 || v230 == 40)
                      {
                        v231 = v299 - 1;
                        goto LABEL_707;
                      }

                      v306 = *v299++;
                      v230 = v306;
                    }
                  }

                  v231 = (v304 + 1);
                  v50 = v302;
                  while (1)
                  {
LABEL_707:
                    v333 = *v231;
                    if (!*v231 || v333 == 32)
                    {
                      goto LABEL_771;
                    }

                    if (v333 == 40)
                    {
                      break;
                    }

                    ++v231;
                  }

                  if (v231[1] == 41)
                  {
                    v348 = (v231 + 2);
                    v349 = v231[2];
                    v350 = 3;
                    if (v349 != 39)
                    {
                      v350 = 0;
                    }

                    v231 += v350;
                    if (v349 == 40)
                    {
                      v231 = v348;
                    }
                  }

LABEL_771:
                  if (v50 < v231 && *v50 == 42)
                  {
                    ++v50;
                  }

LABEL_513:
                  LODWORD(v41) = v231 - v50;
                  goto LABEL_799;
                }

                v303 = *v300++;
                v301 = v303;
              }
            }

            goto LABEL_514;
          }

          *__format = &__str;
          v234 = *v50;
          if (*v50 || (*__format = v429, __str = 46, v234 = *v50, *v50))
          {
            while (1)
            {
              if (v234 >= 0x40)
              {
                SNPrintF_Add(__format, v431, "<<INVALID DNS LABEL LENGTH %u>>", a4, a5, a6, a7, a8, v234);
                goto LABEL_665;
              }

              if (*__format + v234 >= v430)
              {
                break;
              }

              SNPrintF_Add(__format, v431, "%#s.", a4, a5, a6, a7, a8, v50);
              v235 = &v50[*v50];
              v236 = v235[1];
              v50 = v235 + 1;
              v234 = v236;
              if (!v236)
              {
                goto LABEL_665;
              }
            }

            SNPrintF_Add(__format, v431, "<<DNS NAME TOO LONG>>", a4, a5, a6, a7, a8, usedBufLen);
          }

LABEL_665:
          v50 = &__str;
          LODWORD(v41) = *__format - &__str;
        }

        else
        {
          if (BYTE3(v421))
          {
            if (BYTE3(v421) == 1)
            {
              v229 = *v50++;
              LODWORD(v41) = v229;
              goto LABEL_799;
            }

LABEL_514:
            v50 = &__str;
            LODWORD(v41) = SNPrintF(&__str, 300, "<< ERROR: %%s with too many #'s (%d) >>", a4, a5, a6, a7, a8, SBYTE3(v421));
            goto LABEL_799;
          }

          if ((v421 & 8) != 0)
          {
            v269 = v422;
            if (v422 < 1)
            {
              goto LABEL_726;
            }

            v270 = 0;
            while (v50[v270])
            {
              if ((v422 & 0x7FFFFFFF) == ++v270)
              {
                goto LABEL_720;
              }
            }

            v269 = v270;
LABEL_720:
            if (v269)
            {
              v334 = 0;
              v335 = v269;
              while (1)
              {
                v336 = v50[v335 - 1];
                if ((v50[v335 - 1] & 0x80000000) == 0)
                {
                  break;
                }

                ++v334;
                v337 = v335 - 1;
                if (v335 >= 2)
                {
                  --v335;
                  if ((v336 & 0xC0) == 0x80)
                  {
                    continue;
                  }
                }

                goto LABEL_794;
              }

              v337 = v335;
LABEL_794:
              v358 = v334 - 2;
              if ((((255 << (8 - v334)) | (1 << (7 - v334))) & v336) != ((255 << (8 - v334)) & 0xFE))
              {
                v334 = 0;
              }

              v359 = v334 + v337;
              if (v358 <= 4)
              {
                LODWORD(v41) = v359;
              }

              else
              {
                LODWORD(v41) = v337;
              }
            }

            else
            {
LABEL_726:
              LODWORD(v41) = 0;
            }
          }

          else
          {
            v232 = 0;
            do
            {
              LODWORD(v41) = v232;
            }

            while (v50[v232++]);
          }
        }

LABEL_799:
        if ((v421 & 8) != 0 && v41 > v422)
        {
          LODWORD(v41) = v422;
          if (v422 >= 1)
          {
            v41 = v422 & 0x7FFFFFFF;
            while ((v50[v41] & 0xC0) == 0x80)
            {
              v219 = v41-- <= 1;
              if (v219)
              {
                LODWORD(v41) = 0;
                break;
              }
            }
          }
        }

        if (BYTE8(v422) == 2)
        {
          v360 = 8738;
        }

        else
        {
          if (BYTE8(v422) != 1)
          {
LABEL_812:
            v37 = 115;
            goto LABEL_813;
          }

          v360 = 10023;
        }

        *(&v422 + 9) = v360;
        goto LABEL_812;
      case 'u':
        goto LABEL_173;
      case 'v':
        v54 = v423[0];
        v423[0] += 8;
        if ((v22 & 0x10) != 0)
        {
          goto LABEL_818;
        }

        v55 = *v54;
        v56 = HIWORD(*v54) & 0xF;
        *__format = &__str;
        SNPrintF_Add(__format, v431, "%u", a4, a5, a6, a7, a8, HIBYTE(v55));
        SNPrintF_Add(__format, v431, ".%u", v57, v58, v59, v60, v61, (v55 >> 20) & 0xF);
        if (v56)
        {
          SNPrintF_Add(__format, v431, ".%u", v62, v63, v64, v65, v66, HIWORD(v55) & 0xF);
        }

        HIDWORD(v68) = BYTE1(v55) - 32;
        LODWORD(v68) = HIDWORD(v68);
        v67 = v68 >> 5;
        if (v67 > 1)
        {
          if (v67 == 2)
          {
            v69 = "b%u";
          }

          else
          {
            if (v67 != 3)
            {
LABEL_443:
              v69 = "<< ERROR: invalid NumVersion stage: 0x%02X >>";
              goto LABEL_446;
            }

            v69 = "f%u";
            if (!v55)
            {
              goto LABEL_447;
            }
          }
        }

        else
        {
          if (v67)
          {
            if (v67 == 1)
            {
              v69 = "a%u";
              goto LABEL_446;
            }

            goto LABEL_443;
          }

          v69 = "d%u";
        }

LABEL_446:
        SNPrintF_Add(__format, v431, v69, v62, v63, v64, v65, v66, v55);
LABEL_447:
        v50 = &__str;
        LODWORD(v41) = *__format - &__str;
        v37 = 118;
        goto LABEL_813;
      case 'x':
        v39 = "0123456789abcdef";
LABEL_112:
        v38 = 16;
LABEL_173:
        if (v33 == 2 || v33 == 1)
        {
          v107 = v423[0];
          v423[0] += 8;
          v108 = *v107;
        }

        else
        {
          v109 = v423[0];
          v423[0] += 8;
          v108 = *v109;
        }

        v110 = v108;
        v111 = v108;
        if (v32 != 1)
        {
          v111 = v108;
        }

        v89 = 0;
        v18 = 0;
        if (v32 == 2)
        {
          v91 = v110;
        }

        else
        {
          v91 = v111;
        }

        goto LABEL_182;
      case '{':
        v70 = ++v13;
        while (1)
        {
          v37 = *v13;
          if (!*v13 || v37 == 125)
          {
            break;
          }

          ++v13;
        }

        if (strnicmpx(v70, v13 - v70, "asbd"))
        {
          if (strnicmpx(v70, v13 - v70, "cec"))
          {
            if (strnicmpx(v70, v13 - v70, "DateCF"))
            {
              if (strnicmpx(v70, v13 - v70, "dur"))
              {
                if (!strnicmpx(v70, v13 - v70, "end"))
                {
                  v41 = v10;
                  v12 = 42;
                  if ((v421 & 0x10) == 0)
                  {
                    return v41;
                  }

                  goto LABEL_817;
                }

                if (strnicmpx(v70, v13 - v70, "error"))
                {
                  if (!strnicmpx(v70, v13 - v70, "fill"))
                  {
                    v311 = v423[0];
                    v423[0] += 8;
                    v312 = *v311;
                    v423[0] = v311 + 4;
                    if ((v421 & 0x10) == 0)
                    {
                      v313 = v311[2];
                      if (v313)
                      {
                        v314 = 0;
                        v315 = v313;
                        do
                        {
                          if (v315 >= 0x12C)
                          {
                            v316 = 300;
                          }

                          else
                          {
                            v316 = v315;
                          }

                          memset(&__str, v312, v316);
                          v317 = (*a1)(&__str, v316, a1);
                          v41 = v317;
                          if ((v317 & 0x80000000) != 0)
                          {
                            return v41;
                          }

                          v314 += v317;
                          v315 -= v316;
                        }

                        while (v315);
                        v10 = (v314 + v10);
                      }
                    }

                    goto LABEL_816;
                  }

                  if (!strnicmpx(v70, v13 - v70, "flags"))
                  {
                    if (BYTE2(v421) == 2 || BYTE2(v421) == 1)
                    {
                      v332 = v423[0];
                      v423[0] += 8;
                      a4 = *v332;
                    }

                    else
                    {
                      v370 = v423[0];
                      v423[0] += 8;
                      a4 = *v370;
                    }

                    if (BYTE1(v421) == 2)
                    {
                      a4 = a4;
                    }

                    else if (BYTE1(v421) == 1)
                    {
                      a4 = a4;
                    }

                    v371 = v423[0];
                    v423[0] += 8;
                    if ((v421 & 0x10) != 0)
                    {
                      goto LABEL_816;
                    }

                    v372 = *v371;
                    if (v372)
                    {
                      v373 = v372;
                    }

                    else
                    {
                      v373 = &unk_191FFB180;
                    }

                    v272 = PrintFWriteFlags(a1, SBYTE3(v421), v373, a4, a5, a6, a7, a8);
                    goto LABEL_814;
                  }

                  if (strnicmpx(v70, v13 - v70, "mask"))
                  {
                    if (strnicmpx(v70, v13 - v70, "pid"))
                    {
                      if (!strnicmpx(v70, v13 - v70, "ptr"))
                      {
                        v374 = v423[0];
                        v423[0] += 8;
                        if ((v421 & 0x10) == 0)
                        {
                          v10 = PrintFWriteObfuscatedPtr(a1, *v374, v73, a4, a5, a6, a7, a8) + v10;
                        }

                        goto LABEL_816;
                      }

                      if (!strnicmpx(v70, v13 - v70, "sline"))
                      {
                        v375 = v423[0];
                        v423[0] += 8;
                        v376 = *v375;
                        v423[0] = v375 + 16;
                        if ((v421 & 0x10) != 0)
                        {
                          goto LABEL_816;
                        }

                        v377 = *(v375 + 8);
                        if (v377 == -1)
                        {
                          v377 = strlen(v376);
                        }

                        v272 = PrintFWriteSingleLineText(a1, v376, v377, SBYTE3(v421));
                        goto LABEL_814;
                      }

                      if (!strnicmpx(v70, v13 - v70, "text"))
                      {
                        v381 = v423[0];
                        v423[0] += 8;
                        v382 = *v381;
                        v423[0] = v381 + 16;
                        if ((v421 & 0x10) != 0)
                        {
                          goto LABEL_816;
                        }

                        v383 = *(v381 + 8);
                        if (v383 == -1)
                        {
                          v383 = strlen(v382);
                        }

                        v272 = PrintFWriteMultiLineText(a1, &v421, v382, v383);
                        goto LABEL_814;
                      }

                      if (!strnicmpx(v70, v13 - v70, "tlv8"))
                      {
                        v386 = v423[0];
                        v423[0] += 8;
                        v387 = *v386;
                        v423[0] = v386 + 16;
                        a4 = *(v386 + 8);
                        v423[0] = v386 + 24;
                        if ((v421 & 0x10) != 0)
                        {
                          goto LABEL_816;
                        }

                        if (v387)
                        {
                          v388 = v387;
                        }

                        else
                        {
                          v388 = &unk_191FFB180;
                        }

                        v272 = PrintFWriteTLV8(a1, &v421, v388, a4, *(v386 + 16));
                        goto LABEL_814;
                      }

                      if (!strnicmpx(v70, v13 - v70, "txt"))
                      {
                        v389 = v423[0];
                        v423[0] += 8;
                        v390 = *v389;
                        v423[0] = v389 + 16;
                        if ((v421 & 0x10) != 0)
                        {
                          goto LABEL_816;
                        }

                        v272 = PrintFWriteTXTRecord(a1, &v421, v390, *(v389 + 8), a5, a6, a7, a8);
                        goto LABEL_814;
                      }

                      if (!strnicmpx(v70, v13 - v70, "xml"))
                      {
                        v391 = v423[0];
                        v423[0] += 8;
                        v392 = *v391;
                        v423[0] = v391 + 16;
                        if ((v421 & 0x10) != 0)
                        {
                          goto LABEL_816;
                        }

                        v41 = PrintFWriteXMLEscaped(a1, v392, *(v391 + 8), a4, a5, a6, a7, a8);
                        if ((v41 & 0x80000000) != 0)
                        {
                          return v41;
                        }

LABEL_922:
                        v10 = (v41 + v10);
                        goto LABEL_816;
                      }

                      if (strnicmpx(v70, v13 - v70, "xpc"))
                      {
                        pthread_mutex_lock(&gPrintFUtilsLock);
                        v74 = &gExtensionList;
                        do
                        {
                          v74 = *v74;
                          if (!v74)
                          {
                            pthread_mutex_unlock(&gPrintFUtilsLock);
                            usedBufLena = (v13 - v70);
                            v50 = &__str;
                            LODWORD(v41) = SNPrintF(&__str, 300, "<<UNKNOWN PRINTF EXTENSION '%.*s'>>", v399, v400, v401, v402, v403, usedBufLena);
                            goto LABEL_813;
                          }
                        }

                        while (strnicmpx(v70, v13 - v70, v74 + 24));
                        v41 = (v74[1])(a1, &v421, v423, v74[2]);
                        pthread_mutex_unlock(&gPrintFUtilsLock);
                        if ((v41 & 0x80000000) != 0)
                        {
                          return v41;
                        }

                        goto LABEL_922;
                      }

                      v393 = v423[0];
                      v423[0] += 8;
                      v394 = *v393;
                      v395 = v394;
                      if ((v421 & 0x10) == 0)
                      {
                        if (v394)
                        {
                          v396 = MEMORY[0x193B07900](v394);
                          if (v396)
                          {
                            v397 = v396;
                            v398 = strlen(v396);
                            v41 = PrintFWriteMultiLineText(a1, &v421, v397, v398);
                            free(v397);
                            if ((v41 & 0x80000000) != 0)
                            {

                              return v41;
                            }

                            v10 = (v41 + v10);
                            goto LABEL_928;
                          }

                          LODWORD(v41) = 17;
                          v50 = "<<NULL XPC DESC>>";
                        }

                        else
                        {
                          LODWORD(v41) = 4;
                          v50 = "NULL";
                        }

                        goto LABEL_813;
                      }

LABEL_928:

                      goto LABEL_816;
                    }

                    v361 = v423[0];
                    v423[0] += 8;
                    if ((v421 & 0x10) != 0)
                    {
                      goto LABEL_816;
                    }

                    v362 = *v361;
                    __str = 0;
                    GetProcessNameByPID(v362, &__str, 0x12CuLL);
                    if (__str)
                    {
                      if (BYTE3(v421))
                      {
                        v369 = PrintFCore(a1, "%s:%lld", v363, v364, v365, v366, v367, v368, &__str);
                      }

                      else
                      {
                        v369 = PrintFCore(a1, "%s", v363, v364, v365, v366, v367, v368, &__str);
                      }
                    }

                    else
                    {
                      v369 = PrintFCore(a1, "%lld", v363, v364, v365, v366, v367, v368, v362);
                    }

                    v41 = v369;
                    v12 = 42;
                    if ((v369 & 0x80000000) != 0)
                    {
                      return v41;
                    }

                    v10 = (v369 + v10);
LABEL_817:
                    v11 = 0;
                    v8 = v13;
                    if (!v37)
                    {
                      continue;
                    }

                    goto LABEL_818;
                  }

                  v351 = v423[0];
                  v423[0] += 8;
                  if ((v421 & 0x10) == 0)
                  {
                    if (*v351)
                    {
                      v272 = PrintFWriteMaskObject(a1, *v351);
                      goto LABEL_814;
                    }

LABEL_400:
                    LODWORD(v41) = 4;
LABEL_401:
                    v50 = "NULL";
                    goto LABEL_813;
                  }
                }

                else
                {
                  v271 = v423[0];
                  v423[0] += 8;
                  if ((v421 & 0x10) == 0)
                  {
                    v272 = PrintFWriteErrorObject(a1, *v271, v72, a4, a5, a6, a7, a8, usedBufLen);
                    goto LABEL_814;
                  }
                }

LABEL_816:
                v12 = 42;
                goto LABEL_817;
              }

              if (BYTE2(v421) == 2 || BYTE2(v421) == 1)
              {
                v214 = v423[0];
                v423[0] += 8;
                v215 = *v214;
              }

              else
              {
                v297 = v423[0];
                v423[0] += 8;
                v215 = *v297;
              }

              if (BYTE1(v421) == 1)
              {
                v215 = v215;
              }

              if (BYTE1(v421) == 2)
              {
                v298 = v215;
              }

              else
              {
                v298 = v215;
              }

              if ((v421 & 0x10) != 0)
              {
                goto LABEL_816;
              }

              v50 = &__str;
              v52 = PrintFWriteTimeDuration(v298, SBYTE3(v421), &__str);
            }

            else
            {
              v185 = v423[0];
              v423[0] += 8;
              if ((v421 & 0x10) != 0)
              {
                goto LABEL_816;
              }

              v186 = *v185;
              v187 = *v185;
              LODWORD(v432.tv_sec) = 0;
              LODWORD(v424) = 0;
              *v431 = 0;
              v426 = 0;
              v425 = 0;
              SecondsToYMD_HMS(v187 + 0xEB1E31100, &v432, &v424, v431, &v426 + 1, &v426, &v425);
              v188 = modf(v186, __format);
              v410 = v425;
              v411 = (fabs(v188) * 1000.0);
              v408 = HIDWORD(v426);
              v409 = v426;
              v407 = *v431;
              v50 = &__str;
              v52 = SNPrintF(&__str, 300, "%04d-%02d-%02d-%02d:%02d:%02d.%03d", v189, v190, v191, v192, v193, LODWORD(v432.tv_sec));
            }

LABEL_95:
            LODWORD(v41) = v52;
            goto LABEL_813;
          }

          v168 = v423[0];
          v423[0] += 8;
          v169 = *v168;
          v423[0] = v168 + 2;
          if ((v421 & 0x10) != 0)
          {
            goto LABEL_816;
          }

          v170 = *(v168 + 2);
          if (v170 < 1)
          {
LABEL_891:
            v407 = 64;
            v272 = PrintFCore(a1, "<< MALFORMED CEC: %H >>", v12, a4, a5, a6, a7, a8, v169);
LABEL_814:
            v41 = v272;
            if ((v272 & 0x80000000) != 0)
            {
              return v41;
            }

LABEL_815:
            v10 = (v41 + v10);
            goto LABEL_816;
          }

          v171 = *v169;
          if (v170 == 1)
          {
            v172 = "<Poll>";
            v173 = "";
            goto LABEL_886;
          }

          v237 = v169 + 2;
          v238 = v169[1];
          if (v238 > 0x45)
          {
            switch(v169[1])
            {
              case 0x80u:
                if (v170 < 6)
                {
                  goto LABEL_891;
                }

                v173 = &v432;
                SNPrintF(&v432, 32, "%.2a -> %.2a", a4, a5, a6, a7, a8, (v169 + 2));
                v172 = "<Routing Change>";
                break;
              case 0x81u:
              case 0x88u:
              case 0x89u:
              case 0x8Au:
              case 0x8Bu:
              case 0x91u:
              case 0x92u:
              case 0x93u:
              case 0x94u:
              case 0x95u:
              case 0x96u:
              case 0x97u:
              case 0x98u:
              case 0x99u:
              case 0x9Au:
              case 0x9Bu:
              case 0x9Cu:
                goto LABEL_859;
              case 0x82u:
                if (v170 < 4)
                {
                  goto LABEL_891;
                }

                v173 = &v432;
                SNPrintF(&v432, 32, "%.2a", a4, a5, a6, a7, a8, (v169 + 2));
                v172 = "<Active Source>";
                break;
              case 0x83u:
                v172 = "<Give Physical Address>";
                goto LABEL_885;
              case 0x84u:
                v172 = "<Report Physical Address>";
                goto LABEL_885;
              case 0x85u:
                v172 = "<Request Active Source>";
                goto LABEL_885;
              case 0x86u:
                if (v170 < 4)
                {
                  goto LABEL_891;
                }

                v173 = &v432;
                SNPrintF(&v432, 32, "%.2a", a4, a5, a6, a7, a8, (v169 + 2));
                v172 = "<Set Stream Path>";
                break;
              case 0x87u:
                if (v170 < 5)
                {
                  goto LABEL_891;
                }

                v173 = &v432;
                SNPrintF(&v432, 32, "%02X-%02X-%02X", a4, a5, a6, a7, a8, v169[2]);
                v172 = "<Device Vendor ID>";
                break;
              case 0x8Cu:
                v172 = "<Give Device Vendor ID>";
                goto LABEL_885;
              case 0x8Du:
                v172 = "<Menu Request>";
                goto LABEL_885;
              case 0x8Eu:
                v172 = "<Menu Status>";
                goto LABEL_885;
              case 0x8Fu:
                v172 = "<Give Power Status>";
                goto LABEL_885;
              case 0x90u:
                v172 = "<Report Power Status>";
                goto LABEL_885;
              case 0x9Du:
                v172 = "<Inactive Source>";
                goto LABEL_885;
              case 0x9Eu:
                if (v170 < 3)
                {
                  goto LABEL_891;
                }

                if (*v237 - 4 >= 3)
                {
                  v173 = &v432;
                  SNPrintF(&v432, 32, "Other %H", a4, a5, a6, a7, a8, (v169 + 2));
                }

                else
                {
                  v173 = off_1E73A4D38[(*v237 - 4)];
                }

                v172 = "<CEC Version>";
                break;
              case 0x9Fu:
                v172 = "<Get CEC Version>";
                goto LABEL_885;
              case 0xA0u:
                v172 = "<Vendor Command with ID>";
                goto LABEL_885;
              default:
                if (v238 == 70)
                {
                  v172 = "<Get OSD Name>";
                  goto LABEL_885;
                }

                if (v238 != 71)
                {
                  goto LABEL_859;
                }

                v173 = &v432;
                SNPrintF(&v432, 32, "'%.*s'", a4, a5, a6, a7, a8, v170 - 2);
                v172 = "<Set OSD Name>";
                break;
            }

LABEL_886:
            v378 = "TV";
            if (v171 >= 0x10)
            {
              v379 = (v171 >> 4) - 1;
              v378 = "Broadcast";
              if (v379 <= 0xD)
              {
                v378 = off_1E73A4D50[v379];
              }
            }

            v407 = v172;
            v408 = v173;
            v380 = PrintFCore(a1, "%-9s -> %9s: %s %s", v12, a4, a5, a6, a7, a8, v378);
            v12 = 42;
            if ((v380 & 0x80000000) == 0)
            {
              v10 = (v380 + v10);
              goto LABEL_817;
            }

            goto LABEL_891;
          }

          if (v169[1] > 0x31u)
          {
            if (v169[1] <= 0x43u)
            {
              if (v238 == 50)
              {
                v173 = &v432;
                SNPrintF(&v432, 32, "'%.*s'", a4, a5, a6, a7, a8, v170 - 2);
                v172 = "<Set Menu Language>";
                goto LABEL_886;
              }

              if (v238 != 54)
              {
                goto LABEL_859;
              }

              v172 = "<Standby>";
              goto LABEL_885;
            }

            if (v238 == 68)
            {
              v172 = "<User Control Pressed>";
              goto LABEL_885;
            }

            if (v238 == 69)
            {
              v172 = "<User Control Released>";
              goto LABEL_885;
            }
          }

          else
          {
            if (v169[1] <= 0xCu)
            {
              if (v169[1])
              {
                v172 = "<Image View On>";
                if (v238 != 4)
                {
                  goto LABEL_859;
                }
              }

              else
              {
                v172 = "<Feature Abort>";
              }

LABEL_885:
              v173 = &v432;
              SNPrintF(&v432, 32, "%H", a4, a5, a6, a7, a8, v237);
              goto LABEL_886;
            }

            if (v238 == 13)
            {
              v172 = "<Text View On>";
              goto LABEL_885;
            }

            if (v238 == 26)
            {
              v172 = "<Give Deck Status>";
              goto LABEL_885;
            }
          }

LABEL_859:
          v172 = __format;
          SNPrintF(__format, 32, "<<? 0x%02X>>", a4, a5, a6, a7, a8, v169[1]);
          v237 = v169 + 2;
          goto LABEL_885;
        }

        v138 = v423[0];
        v423[0] += 8;
        if ((v421 & 0x10) != 0)
        {
          goto LABEL_816;
        }

        v139 = *v138;
        v140 = *(*v138 + 8);
        if (v140 <= 1634492770)
        {
          if (v140 != 1633772320)
          {
            v141 = "ELD,";
            if (v140 == 1633772389)
            {
              goto LABEL_590;
            }

            goto LABEL_454;
          }

          v141 = "AAC,";
        }

        else
        {
          switch(v140)
          {
            case 0x616C6163:
              v141 = "ALAC,";
              break;
            case 0x6C70636D:
              v141 = "PCM,";
              break;
            case 0x6F707573:
              v141 = "Opus,";
              break;
            default:
LABEL_454:
              v141 = __format;
              SNPrintF(__format, 32, "%C,", a4, a5, a6, a7, a8, v140);
              break;
          }
        }

LABEL_590:
        v41 = PrintFCore(a1, "%-5s %5u Hz", v71, a4, a5, a6, a7, a8, v141);
        if ((v41 & 0x80000000) != 0)
        {
          return v41;
        }

        if (v139[8])
        {
          v17 = PrintFCore(a1, ", %2u-bit", v277, v278, v279, v280, v281, v282, v139[8]);
        }

        else
        {
          if (v139[2] != 1634492771)
          {
            goto LABEL_599;
          }

          v283 = v139[3] - 1;
          v284 = "??-bit";
          if (v283 <= 3)
          {
            v284 = off_1E73A4D18[v283];
          }

          v17 = PrintFCore(a1, ", %s", v277, v278, v279, v280, v281, v282, v284);
        }

        if ((v17 & 0x80000000) != 0)
        {
          return v17;
        }

        LODWORD(v41) = v17 + v41;
LABEL_599:
        v285 = v139[7];
        if (v285 == 1)
        {
          v286 = "Mono";
        }

        else if (v285 == 2)
        {
          v286 = "Stereo";
        }

        else
        {
          v286 = __format;
          SNPrintF(__format, 32, "%u ch", v278, v279, v280, v281, v282, v139[7]);
        }

        v17 = PrintFCore(a1, ", %s", v277, v278, v279, v280, v281, v282, v286);
        if ((v17 & 0x80000000) != 0)
        {
          return v17;
        }

        v288 = v17 + v41;
        if ((v139[3] & 0x20) != 0)
        {
          v289 = PrintFCore(a1, ", Non-interleaved", v287, a4, a5, a6, a7, a8, usedBufLen);
          v41 = v289;
          if ((v289 & 0x80000000) != 0)
          {
            return v41;
          }

          v288 += v289;
        }

        if (v139[2] != 1819304813)
        {
          goto LABEL_620;
        }

        v290 = v139[3];
        if ((v290 & 2) != 0)
        {
          v291 = PrintFCore(a1, ", Swapped", v287, a4, a5, a6, a7, a8, usedBufLen);
          v41 = v291;
          if ((v291 & 0x80000000) != 0)
          {
            return v41;
          }

          v288 += v291;
          v290 = v139[3];
        }

        if (v290)
        {
          v294 = PrintFCore(a1, ", Float", v287, a4, a5, a6, a7, a8, usedBufLen);
        }

        else
        {
          if ((v290 & 4) == 0 || (v292 = v139[8]) == 0 || (v293 = v290 & 0x1F80) == 0)
          {
LABEL_620:
            if (v139[5] > 1u)
            {
              v295 = PrintFCore(a1, ", %u samples/packet", v287, a4, a5, a6, a7, a8, v139[5]);
              if (v295 >= 0)
              {
                v296 = v288;
              }

              else
              {
                v296 = 0;
              }

              v41 = (v296 + v295);
              if (v296 + v295 < 0)
              {
                return v41;
              }

              goto LABEL_815;
            }

            v10 = (v288 + v10);
            goto LABEL_816;
          }

          v294 = PrintFCore(a1, ", %u.%u", v287, a4, a5, a6, a7, a8, v292 - (v293 >> 7));
        }

        v41 = v294;
        if ((v294 & 0x80000000) != 0)
        {
          return v41;
        }

        v288 += v294;
        goto LABEL_620;
      default:
        if ((v23 - 32) >= 0x5F)
        {
          v51 = 32;
        }

        else
        {
          v51 = v23;
        }

        v50 = &__str;
        v52 = SNPrintF(&__str, 300, "<<UNKNOWN FORMAT CONVERSION CODE '%%%c'>>", a4, a5, a6, a7, a8, v51);
        goto LABEL_95;
    }
  }
}

uint64_t VASPrintF(void **a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = 0;
  v17 = 0;
  v12 = PrintFCallBackAllocatedString;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v9 = PrintFCoreVAList(&v12, a2, a3, a4, a5, a6, a7, a8);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = v12("", 1, &v12);
    if ((v10 & 0x80000000) == 0)
    {
      *a1 = v13;
      return v9;
    }

    v9 = v10;
  }

  if (v13)
  {
    free(v13);
  }

  return v9;
}

uint64_t PrintFWriteFlags(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  if (a2)
  {
    v11 = PrintFCore(a1, "0x%llX ", a3, a4, a5, a6, a7, a8, a4);
    if ((v11 & 0x80000000) != 0)
    {
      return v11;
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  v12 = PrintFCore(a1, "<", a3, a4, a5, a6, a7, a8, v27);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v19 = v12 + v11;
  if (v8)
  {
    v20 = 0;
    do
    {
      if (((1 << v20) & v8) != 0)
      {
        v8 &= ~(1 << v20);
        for (i = a3; ; i += v22 + 2)
        {
          v22 = strlen(i + 1);
          if (!v22)
          {
            break;
          }

          if (v20 == *i)
          {
            v23 = PrintFCore(a1, " %s", v13, v14, v15, v16, v17, v18, (i + 1));
            v11 = v23;
            if ((v23 & 0x80000000) != 0)
            {
              return v11;
            }

            v19 += v23;
            break;
          }
        }
      }

      if (v20 > 0x3E)
      {
        break;
      }

      ++v20;
    }

    while (v8);
  }

  v24 = PrintFCore(a1, " >", v13, v14, v15, v16, v17, v18, v28);
  if (v24 >= 0)
  {
    v25 = v19;
  }

  else
  {
    v25 = 0;
  }

  return (v25 + v24);
}

uint64_t PrintFCallBackAllocatedString(const void *a1, size_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a3 + 16);
  v7 = v6 + a2;
  if (v6 + a2 <= *(a3 + 24))
  {
    v9 = *(a3 + 8);
  }

  else
  {
    if (v7 >= 0x100)
    {
      v8 = (v7 + 1023) & 0xFFFFFC00;
    }

    else
    {
      v8 = 256;
    }

    v9 = malloc_type_realloc(*(a3 + 8), v8, 0x100004077774924uLL);
    if (!v9)
    {
      return 4294960568;
    }

    *(a3 + 8) = v9;
    *(a3 + 24) = v8;
    v6 = *(a3 + 16);
  }

  memcpy(&v9[v6], a1, v4);
  *(a3 + 16) += v4;
  return v4;
}

uint64_t PrintFWriteText(uint64_t (**a1)(const char *, uint64_t, void), uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = (a2 + 25);
  if (*(a2 + 25))
  {
    v9 = a4 + 1;
  }

  else
  {
    v9 = a4;
  }

  v10 = (a2 + 26);
  if (*(a2 + 26))
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v9;
  }

  if ((*a2 & 1) == 0 && v11 < *(a2 + 8))
  {
    v12 = 0;
    while (1)
    {
      v13 = (*a1)(" ", 1, a1);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      ++v12;
      v14 = *(a2 + 8) - 1;
      *(a2 + 8) = v14;
      if (v11 >= v14)
      {
        if (*v8)
        {
          goto LABEL_15;
        }

        goto LABEL_17;
      }
    }
  }

  v12 = 0;
  if (*(a2 + 25))
  {
LABEL_15:
    v13 = (*a1)(v8, 1, a1);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    ++v12;
  }

LABEL_17:
  v13 = (*a1)(a3, a4, a1);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v15 = (v12 + a4);
  if (!*v10)
  {
    goto LABEL_21;
  }

  v13 = (*a1)(v10, 1, a1);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v15 = (v15 + 1);
LABEL_21:
  if (v11 < *(a2 + 8))
  {
    while (1)
    {
      v13 = (*a1)(" ", 1, a1);
      if ((v13 & 0x80000000) != 0)
      {
        break;
      }

      v15 = (v15 + 1);
      if (++v11 >= *(a2 + 8))
      {
        return v15;
      }
    }

    return v13;
  }

  return v15;
}

uint64_t LogPrintV(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v85 = *MEMORY[0x1E69E9840];
  v80 = a5;
  memset(v82, 0, 512);
  __s = 0;
  v79 = 0;
  v8 = a3 & 0x4200000;
  if ((a3 & 0x4200000) != 0)
  {
    v79 = v80;
    VASPrintF(&__s, a4, v80);
  }

  LogUtils_EnsureInitialized();
  pthread_mutex_lock(&gLogUtilsLock);
  *&v82[0] = a1;
  DWORD2(v82[0]) = a3;
  BYTE12(v82[0]) = 0;
  v83 = 0;
  v84 = 0;
  if ((a3 & 0x80000) == 0)
  {
    v14 = *(a1 + 16);
    if ((a3 & 0x400000) == 0 && *(a1 + 88))
    {
      if (!*(a1 + 80))
      {
        *(a1 + 80) = *(a1 + 72) + mach_absolute_time();
      }

      if (mach_absolute_time() >= *(a1 + 80))
      {
        v15 = 0;
        *(a1 + 80) = 0;
        *(a1 + 92) = 0;
      }

      else
      {
        v15 = *(a1 + 92);
      }

      if (v15 >= *(a1 + 88))
      {
        pthread_mutex_unlock(&gLogUtilsLock);
        v39 = 0;
        v40 = __s;
        goto LABEL_81;
      }

      *(a1 + 92) = v15 + 1;
    }

    if (v14)
    {
      v16 = SNPrintF(v81, 64, "%N ", v9, v10, v11, v12, v13, v76);
      if (v16 >= 1)
      {
        _LogPrintFWrite(v82, v81, v16, 1);
      }
    }

    if ((a3 >> 14) & 0x40 | (a3 >> 17) & 0x80 | v14 & 0xFE)
    {
      v17 = CPrintF(_LogPrintFCallBack, v82, "[", v9, v10, v11, v12, v13, v76);
      v24 = v17 & ~(v17 >> 31);
      v25 = v24;
      if ((v14 & 4) != 0)
      {
        v41 = getprogname();
        v47 = CPrintF(_LogPrintFCallBack, v82, "%s", v42, v43, v44, v45, v46, v41);
        v25 = (v47 & ~(v47 >> 31)) + v24;
        if ((v14 & 2) == 0)
        {
LABEL_19:
          if ((v14 & 8) == 0)
          {
LABEL_20:
            if ((v14 & 0x20) == 0)
            {
              if (!((a3 >> 14) & 0x40 | v14 & 0x40))
              {
                goto LABEL_22;
              }

              goto LABEL_51;
            }

            v55 = ",";
            if (v24 == v25)
            {
              v55 = "";
            }

            v56 = "%s%.*s";
LABEL_50:
            v57 = CPrintF(_LogPrintFCallBack, v82, v56, v19, v20, v21, v22, v23, v55);
            v25 += v57 & ~(v57 >> 31);
            if (!((a3 >> 14) & 0x40 | v14 & 0x40))
            {
LABEL_22:
              if (!((a3 >> 17) & 0x80 | v14 & 0x80))
              {
                goto LABEL_23;
              }

              goto LABEL_54;
            }

LABEL_51:
            v58 = ",";
            if (v24 == v25)
            {
              v58 = "";
            }

            v59 = CPrintF(_LogPrintFCallBack, v82, "%s%s", v19, v20, v21, v22, v23, v58);
            v25 += v59 & ~(v59 >> 31);
            if (!((a3 >> 17) & 0x80 | v14 & 0x80))
            {
LABEL_23:
              if ((v14 & 0x10) == 0)
              {
LABEL_28:
                v33 = CPrintF(_LogPrintFCallBack, v82, "] ", v19, v20, v21, v22, v23, v77);
                v34 = (v33 & ~(v33 >> 31)) + v25;
                goto LABEL_30;
              }

LABEL_24:
              if (v24 == v25)
              {
                v26 = "";
              }

              else
              {
                v26 = "@";
              }

              _LULevelToString(a3, v81, v18, v19, v20, v21, v22, v23);
              v32 = CPrintF(_LogPrintFCallBack, v82, "%s%s", v27, v28, v29, v30, v31, v26);
              v25 += v32 & ~(v32 >> 31);
              goto LABEL_28;
            }

LABEL_54:
            v60 = pthread_self();
            pthread_getname_np(v60, v81, 0x40uLL);
            if (!v81[0])
            {
              dispatch_queue_get_label(0);
            }

            v66 = ",";
            if (v24 == v25)
            {
              v66 = "";
            }

            v67 = CPrintF(_LogPrintFCallBack, v82, "%s%s", v61, v62, v63, v64, v65, v66);
            v25 += v67 & ~(v67 >> 31);
            if ((v14 & 0x10) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_24;
          }

LABEL_42:
          v55 = ",";
          if (v24 == v25)
          {
            v55 = "";
          }

          v56 = "%s%s";
          goto LABEL_50;
        }
      }

      else if ((v14 & 2) == 0)
      {
        goto LABEL_19;
      }

      if (v24 == v25)
      {
        v48 = "";
      }

      else
      {
        v48 = ":";
      }

      getpid();
      v54 = CPrintF(_LogPrintFCallBack, v82, "%s%llu", v49, v50, v51, v52, v53, v48);
      v25 += v54 & ~(v54 >> 31);
      if ((v14 & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_42;
    }
  }

  v34 = 0;
LABEL_30:
  v35 = VCPrintF(_LogPrintFCallBack, v82, a4, v80);
  v36 = v35 & ~(v35 >> 31);
  v84 = 1;
  v37 = _LogPrintFCallBack("", 0, v82);
  v38 = v34 + (v37 & ~(v37 >> 31));
  pthread_mutex_unlock(&gLogUtilsLock);
  if ((a3 & 0x10000) != 0 && gLogCategory_DebugServicesStackTrace <= 254 && (gLogCategory_DebugServicesStackTrace != -1 || _LogCategory_Initialize(&gLogCategory_DebugServicesStackTrace, 0xFEu)) && gLogCategory_DebugServicesLogging <= 90 && (gLogCategory_DebugServicesLogging != -1 || _LogCategory_Initialize(&gLogCategory_DebugServicesLogging, 0x5Au)))
  {
    LogPrintF(&gLogCategory_DebugServicesLogging, "OSStatus DebugStackTrace(LogLevel)", 90, "### stack tracing not supported on this platform\n");
  }

  v39 = (v36 + v38);
  if ((a3 & 0x20000) != 0 && DebugIsDebuggerPresent())
  {
    __debugbreak();
  }

  v40 = __s;
  if (v8 && __s)
  {
    v68 = &__s[strlen(__s)];
    do
    {
      v69 = v68;
      if (v68 <= __s)
      {
        break;
      }

      --v68;
    }

    while (*(v69 - 1) == 10);
    *v69 = 0;
    if (ReportCriticalError_sInitOnce != -1)
    {
      dispatch_once(&ReportCriticalError_sInitOnce, &__block_literal_global_256);
    }

    v70 = CFStringCreateWithCString(0, v40, 0x8000100u);
    if (v70)
    {
      if ((a3 & 0x200000) == 0)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v70 = @"<< No memory for reason >>";
      CFRetain(@"<< No memory for reason >>");
      if ((a3 & 0x200000) == 0)
      {
LABEL_73:
        v71 = ReportCriticalError_sWriteStackShot_f;
        if (ReportCriticalError_sWriteStackShot_f)
        {
          v72 = getpid();
          v71(v70, 0, v72);
        }

        else
        {
          syslog(5, "### WriteStackShot() missing: %s");
        }

LABEL_80:
        CFRelease(v70);
        goto LABEL_81;
      }
    }

    v73 = ReportCriticalError_sSimulateCrash_f;
    if (ReportCriticalError_sSimulateCrash_f)
    {
      v74 = getpid();
      v73(v74, 0, v70);
    }

    else
    {
      syslog(5, "### SimulateCrash() missing: %s");
    }

    goto LABEL_80;
  }

LABEL_81:
  if (v40)
  {
    free(v40);
  }

  return v39;
}

void LogUtils_EnsureInitialized()
{
  if ((gLogCFInitialized & 1) == 0 && (gLogUtilsInitializing & 1) == 0)
  {
    pthread_mutex_lock(&gLogUtilsLock);
    gLogUtilsInitializing = 1;
    if ((gLogCFInitialized & 1) == 0)
    {
      gLogCFInitialized = 1;
      notify_register_dispatch("com.apple.managedconfiguration.defaultsdidchange", &gLogUtilsMCDefaultsChangedToken, MEMORY[0x1E69E96A0], &__block_literal_global_11503);
      _LogUtils_ReadCFPreferences(0);
    }

    gLogUtilsInitializing = 0;

    pthread_mutex_unlock(&gLogUtilsLock);
  }
}

uint64_t VCPrintF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = PrintFCallBackUserCallBack;
  memset(&v7[1], 0, 24);
  v7[4] = a1;
  v7[5] = a2;
  v4 = PrintFCoreVAList(v7, a3, a4);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = (v7[0])("", 0, v7);
    if (v5 >= 0)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  return v4;
}

size_t _LogPrintFCallBack(void *__src, size_t __n, uint64_t a3)
{
  if (!__n && *(a3 + 2072))
  {
    v6 = *(a3 + 2064);
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_4:
    _LogPrintFWrite(a3, (a3 + 12), v6, 0);
    v6 = 0;
    *(a3 + 2064) = 0;
    goto LABEL_5;
  }

  v6 = *(a3 + 2064);
  if (v6 + __n >= 0x801 && v6)
  {
    goto LABEL_4;
  }

LABEL_5:
  if (__n < 0x801)
  {
    if (__n)
    {
      memcpy((a3 + v6 + 12), __src, __n);
      *(a3 + 2064) += __n;
    }
  }

  else
  {
    _LogPrintFWrite(a3, __src, __n, 0);
  }

  return __n;
}

uint64_t strnicmpx(unsigned __int8 *a1, uint64_t a2, _BYTE *a3)
{
  if (a2)
  {
    v4 = a2;
    while (1)
    {
      --v4;
      v6 = __tolower(*a1);
      result = __tolower(*a3);
      if (v6 < result)
      {
        return 0xFFFFFFFFLL;
      }

      if (v6 > result)
      {
        return 1;
      }

      if (!result)
      {
        return result;
      }

      ++a1;
      ++a3;
      if (!v4)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (*a3)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }
}

void _LogOutputOSLog_Writer(uint64_t a1, uint64_t a2, char *__s1, size_t __n)
{
  v34 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v8 = *(a2 + 56);
  if (!v8)
  {
    OSLogHandle = _LogCategoryGetOSLogHandle(*a1, &v31);
    if (OSLogHandle)
    {
      v8 = OSLogHandle;
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
    }
  }

  if (*(a2 + 64))
  {
    v10 = *(a2 + 65);
    if (__n)
    {
LABEL_7:
      __n -= __s1[__n - 1] == 10;
    }
  }

  else
  {
    v26 = *(a1 + 8);
    if (v26 > 0xA)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    if (v26 > 0x14)
    {
      v27 = 0;
    }

    if (v26 <= 0x59)
    {
      v28 = v27;
    }

    else
    {
      v28 = 16;
    }

    if (v26 <= 0x72)
    {
      v10 = v28;
    }

    else
    {
      v10 = OS_LOG_TYPE_FAULT;
    }

    if (__n)
    {
      goto LABEL_7;
    }
  }

  if (*(a2 + 67) || (v11 = *(a1 + 8), (v11 & 0x800000) != 0))
  {
    v20 = v31;
    v21 = os_log_type_enabled(v8, v10);
    if (v20)
    {
      if (!v21)
      {
        return;
      }

      *buf = 136446723;
      *v33 = v20;
      *&v33[8] = 1040;
      *&v33[10] = __n;
      *&v33[14] = 2081;
      *&v33[16] = __s1;
      v22 = "%{public}s: %{private}.*s";
      goto LABEL_19;
    }

    if (!v21)
    {
      return;
    }

    *buf = 68157955;
    *v33 = __n;
    *&v33[4] = 2081;
    *&v33[6] = __s1;
    v22 = "%{private}.*s";
    goto LABEL_35;
  }

  if (*(a2 + 66) || *(*a1 + 16) & 0x200 | v11 & 0x2000000)
  {
    v12 = strndup(__s1, __n);
    if (!v12)
    {
      return;
    }

    v13 = v12;
    v14 = v31;
    v15 = os_log_type_enabled(v8, v10);
    if (v14)
    {
      if (v15)
      {
        *buf = 136446466;
        *v33 = v14;
        *&v33[8] = 2082;
        *&v33[10] = v13;
        v16 = "%{public}s: %{public}s";
        v17 = v10;
        v18 = v8;
        v19 = 22;
LABEL_39:
        _os_log_impl(&dword_191EAF000, v18, v17, v16, buf, v19);
      }
    }

    else if (v15)
    {
      *buf = 136446210;
      *v33 = v13;
      v16 = "%{public}s";
      v17 = v10;
      v18 = v8;
      v19 = 12;
      goto LABEL_39;
    }

    free(v13);
    return;
  }

  v29 = v31;
  v30 = os_log_type_enabled(v8, v10);
  if (!v29)
  {
    if (!v30)
    {
      return;
    }

    *buf = 68157954;
    *v33 = __n;
    *&v33[4] = 2080;
    *&v33[6] = __s1;
    v22 = "%.*s";
LABEL_35:
    v23 = v10;
    v24 = v8;
    v25 = 18;
    goto LABEL_36;
  }

  if (v30)
  {
    *buf = 136446722;
    *v33 = v29;
    *&v33[8] = 1040;
    *&v33[10] = __n;
    *&v33[14] = 2080;
    *&v33[16] = __s1;
    v22 = "%{public}s: %.*s";
LABEL_19:
    v23 = v10;
    v24 = v8;
    v25 = 28;
LABEL_36:
    _os_log_impl(&dword_191EAF000, v24, v23, v22, buf, v25);
  }
}

uint64_t _LogPrintFWrite(uint64_t result, const void *a2, size_t a3, int a4)
{
  v6 = result;
  v7 = *result;
  if (!a4)
  {
    v12 = *(v7 + 56);
    if (v12)
    {
      v13 = *(v12 + 24);
      v14 = v13 != -1 && *(result + 8) < v13;
      if (!v14 && ((*(result + 8) & 0x800000) == 0 || *(v12 + 40) == 14))
      {
        result = (*(v12 + 32))(result);
        v7 = *v6;
      }
    }
  }

  v8 = *(v7 + 64);
  if (v8)
  {
    v9 = *(v8 + 24);
    v10 = v9 != -1 && *(v6 + 8) < v9;
    if (!v10 && ((*(v6 + 8) & 0x800000) == 0 || *(v8 + 40) == 14))
    {
      result = (*(v8 + 32))(v6);
    }
  }

  if ((*(v6 + 8) & 0x840000) == 0x40000)
  {
    result = open("/dev/console", 1, 0);
    if ((result & 0x80000000) == 0)
    {
      v11 = result;
      write(result, a2, a3);
      close(v11);

      return usleep(0xC8u);
    }
  }

  return result;
}

os_log_t _LogCategoryGetOSLogHandle(uint64_t a1, void *a2)
{
  if ((*(a1 + 18) & 2) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 104);
  if (!v4)
  {
    return 0;
  }

  v2 = *v4;
  if (*v4)
  {
    goto LABEL_14;
  }

  v6 = *(a1 + 96);
  if (!v6)
  {
    v6 = getprogname();
  }

  v7 = *(a1 + 24);
  if (!v7)
  {
    return 0;
  }

  v8 = strchr(v7, 45);
  if (!v8)
  {
    v2 = os_log_create(v6, v7);
    *v4 = v2;
    if (!a2)
    {
      return v2;
    }

    goto LABEL_15;
  }

  v9 = v8;
  v10 = v4[1];
  if (v10)
  {
    free(v10);
    v4[1] = 0;
  }

  v11 = strdup(v9 + 1);
  v4[1] = v11;
  if (!v11)
  {
    return 0;
  }

  v12 = strndup(v7, v9 - v7);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v2 = os_log_create(v6, v12);
  *v4 = v2;
  free(v13);
LABEL_14:
  if (a2)
  {
LABEL_15:
    *a2 = v4[1];
  }

  return v2;
}

char *__cdecl strndup(const char *__s1, size_t __n)
{
  v3 = 0;
  if (__n)
  {
    while (__s1[v3])
    {
      if (__n == ++v3)
      {
        v3 = __n;
        break;
      }
    }
  }

  v4 = malloc_type_malloc(v3 + 1, 0x100004077774924uLL);
  v5 = v4;
  if (v4)
  {
    memcpy(v4, __s1, v3);
    v5[v3] = 0;
  }

  return v5;
}

uint64_t PrintFWriteCFObjectLevel(uint64_t (***a1)(CFUUIDBytes *), const __CFArray *a2, uint64_t a3)
{
  while (1)
  {
    v3 = a3;
    v4 = a2;
    v5 = a1;
    v171 = *MEMORY[0x1E69E9840];
    v6 = a1[1];
    v7 = *(v6 + 3);
    v166 = 0;
    v8 = CFGetTypeID(a2);
    if (v8 == CFArrayGetTypeID())
    {
      if (v7 == 2)
      {
        Count = CFArrayGetCount(v4);
        LODWORD(v16) = 0;
        if (Count > 0)
        {
          v17 = Count;
          v18 = "[ ";
LABEL_11:
          v26 = (**v5)(v18, 2);
          if ((v26 & 0x80000000) != 0)
          {
            return v26;
          }

          v27 = 0;
          v28 = v26 + v16;
          while (1)
          {
            ++*(v5 + 4);
            ValueAtIndex = CFArrayGetValueAtIndex(v4, v27);
            v16 = PrintFWriteCFObjectLevel(v5, ValueAtIndex, 1);
            --*(v5 + 4);
            if ((v16 & 0x80000000) != 0)
            {
              return v16;
            }

            if (++v27 >= v17)
            {
              if (v7 != 2)
              {
                v31 = &v164;
                v30 = 1;
                goto LABEL_21;
              }

              v30 = 0;
            }

            else
            {
              v164 = 44;
              if (v7 != 2)
              {
                v31 = &v165;
                v30 = 2;
LABEL_21:
                *v31 = 10;
                goto LABEL_22;
              }

              v165 = 32;
              v30 = 2;
            }

LABEL_22:
            v26 = (**v5)(&v164, v30);
            if ((v26 & 0x80000000) != 0)
            {
              return v26;
            }

            v28 += v16 + v26;
            if (v17 == v27)
            {
              v37 = *v5;
              if (v7 == 2)
              {
                v38 = (*v37)(" ]", 2);
              }

              else
              {
                v47 = PrintFCore(v37, "%*s", v37, v32, v33, v34, v35, v36, (4 * *(v5 + 4)));
                v16 = v47;
                if ((v47 & 0x80000000) != 0)
                {
                  return v16;
                }

                v28 += v47;
                v38 = (**v5)("]", 1);
              }

              if (v38 >= 0)
              {
                v46 = v28;
              }

              else
              {
                v46 = 0;
              }

              return (v46 + v38);
            }
          }
        }
      }

      else
      {
        v16 = PrintFCore(*v5, "%*s", v9, v10, v11, v12, v13, v14, (4 * *(v5 + 4)));
        if ((v16 & 0x80000000) != 0)
        {
          return v16;
        }

        v25 = CFArrayGetCount(v4);
        if (v25 >= 1)
        {
          v17 = v25;
          v18 = "[\n";
          goto LABEL_11;
        }
      }

      v38 = (**v5)("[]", 2);
LABEL_40:
      if (v38 >= 0)
      {
        v46 = v16;
      }

      else
      {
        v46 = 0;
      }

      return (v46 + v38);
    }

    if (v8 == CFBooleanGetTypeID())
    {
      if (v7 == 2)
      {
        LODWORD(v16) = 0;
      }

      else
      {
        v16 = PrintFCore(*v5, "%*s", v19, v20, v21, v22, v23, v24, (4 * *(v5 + 4)));
        if ((v16 & 0x80000000) != 0)
        {
          return v16;
        }
      }

      if (*MEMORY[0x1E695E4D0] == v4)
      {
        v48 = 4;
      }

      else
      {
        v48 = 5;
      }

      if (*MEMORY[0x1E695E4D0] == v4)
      {
        v49 = "true";
      }

      else
      {
        v49 = "false";
      }

      v26 = (**v5)(v49, v48);
      if ((v26 & 0x80000000) != 0)
      {
        return v26;
      }

      return (v26 + v16);
    }

    if (v8 == CFDataGetTypeID())
    {
      break;
    }

    if (v8 == CFDateGetTypeID())
    {
      LODWORD(v16) = 0;
      *&context.byte0 = 0;
      LODWORD(usedBufLen) = 0;
      v163 = 0;
      v161 = 0;
      v162 = 0;
      if (v7 != 2)
      {
        v16 = PrintFCore(*v5, "%*s", v50, v51, v52, v53, v54, v55, (4 * *(v5 + 4)));
        if ((v16 & 0x80000000) != 0)
        {
          return v16;
        }
      }

      CFDateGetComponents(v4, &context, &usedBufLen, &v163, &v162 + 1, &v162, &v161 + 1, &v161);
      v62 = PrintFCore(*v5, "%04d-%02d-%02d %02d:%02d:%02d.%03d", v56, v57, v58, v59, v60, v61, *&context.byte0);
      goto LABEL_62;
    }

    if (v8 == CFDictionaryGetTypeID())
    {
      if (v7 == 2)
      {
        LODWORD(v16) = 0;
      }

      else
      {
        v16 = PrintFCore(*v5, "%*s", v66, v67, v68, v69, v70, v71, (4 * *(v5 + 4)));
        if ((v16 & 0x80000000) != 0)
        {
          return v16;
        }
      }

      if (CFDictionaryGetCount(v4) < 1)
      {
        v38 = (**v5)("{}", 2);
        goto LABEL_40;
      }

      v170 = 0;
      if (v7 == 2)
      {
        v78 = "{ ";
      }

      else
      {
        v78 = "{\n";
      }

      v79 = (**v5)(v78, 2);
      v80 = v79;
      if ((v79 & 0x80000000) != 0)
      {
        return v79;
      }

      *&context.byte0 = *v5;
      *&context.byte8 = v6;
      v81 = *(v5 + 4) + 1;
      v169 = 0;
      LODWORD(v170) = 0;
      v168 = v81;
      CFDictionaryApplyFunction(v4, PrintFWriteCFObjectApplier, &context);
      if ((v170 & 0x80000000) != 0)
      {
        return v170;
      }

      v88 = v80 + v16 + v169;
      if (v7 != 2)
      {
        v89 = PrintFCore(*v5, "%*s", v82, v83, v84, v85, v86, v87, (4 * *(v5 + 4)));
        v16 = v89;
        if ((v89 & 0x80000000) != 0)
        {
          return v16;
        }

        v88 += v89;
      }

      v62 = (**v5)("}", 1);
      v63 = v62 + v88;
      goto LABEL_85;
    }

    if (v8 == CFNumberGetTypeID())
    {
      if (v7 == 2)
      {
        LODWORD(v16) = 0;
      }

      else
      {
        v16 = PrintFCore(*v5, "%*s", v72, v73, v74, v75, v76, v77, (4 * *(v5 + 4)));
        if ((v16 & 0x80000000) != 0)
        {
          return v16;
        }
      }

      *&context.byte0 = 0;
      if (CFNumberIsFloatType(v4))
      {
        CFNumberGetValue(v4, kCFNumberDoubleType, &context);
        v38 = PrintFCore(*v5, "%f", v97, v98, v99, v100, v101, v102, *&context.byte0);
      }

      else
      {
        CFNumberGetValue(v4, kCFNumberSInt64Type, &context);
        v38 = PrintFCore(*v5, "%lld", v109, v110, v111, v112, v113, v114, *&context.byte0);
      }

      goto LABEL_40;
    }

    if (v8 == CFStringGetTypeID())
    {
      if (v7 == 2)
      {
        LODWORD(v16) = 0;
      }

      else
      {
        v16 = PrintFCore(*v5, "%*s", v90, v91, v92, v93, v94, v95, (4 * *(v5 + 4)));
        if ((v16 & 0x80000000) != 0)
        {
          return v16;
        }
      }

      v26 = (**v5)("", 1);
      if ((v26 & 0x80000000) != 0)
      {
        return v26;
      }

      LODWORD(v16) = v26 + v16;
      Length = CFStringGetLength(v4);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v166 = MaximumSizeForEncoding;
      if (MaximumSizeForEncoding)
      {
        v117 = MaximumSizeForEncoding;
        v118 = malloc_type_malloc(MaximumSizeForEncoding, 0x100004077774924uLL);
        if (!v118)
        {
          return 4294960568;
        }

        v119 = v118;
        usedBufLen = 0;
        v173.location = 0;
        v173.length = Length;
        CFStringGetBytes(v4, v173, 0x8000100u, 0x5Eu, 0, v118, v117, &usedBufLen);
        if (*(v6 + 27))
        {
          p_context = &context;
          _PrintFObfuscateString(v119, usedBufLen, &context, &v166);
          usedBufLen = v166;
        }

        else
        {
          p_context = v119;
        }

        v128 = (**v5)(p_context);
        free(v119);
        v16 = (v16 & ~(v128 >> 31)) + v128;
        if (v128 < 0)
        {
          return v16;
        }
      }

      v62 = (**v5)("", 1);
LABEL_62:
      v63 = v62 + v16;
LABEL_85:
      if (v62 >= 0)
      {
        return v63;
      }

      else
      {
        return v62;
      }
    }

    if (v8 == CFNullGetTypeID())
    {
      if (v7 == 2)
      {
        LODWORD(v16) = 0;
      }

      else
      {
        v16 = PrintFCore(*v5, "%*s", v103, v104, v105, v106, v107, v108, (4 * *(v5 + 4)));
        if ((v16 & 0x80000000) != 0)
        {
          return v16;
        }
      }

      v62 = (**v5)("Null", 4);
      goto LABEL_62;
    }

    if (v8 != CFURLGetTypeID())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *&context.byte0 = 0;
        *&context.byte8 = 0;
        if (v7 == 2)
        {
          LODWORD(v16) = 0;
LABEL_127:
          [(__CFArray *)v4 getUUIDBytes:&context];
          v141 = *v5;
          if (*(v6 + 27))
          {
            v142 = "%~#U";
          }

          else
          {
            v142 = "%#U";
          }

LABEL_138:
          v26 = PrintFCore(v141, v142, v135, v136, v137, v138, v139, v140, &context);
          if ((v26 & 0x80000000) != 0)
          {
            return v26;
          }

          return (v26 + v16);
        }

        else
        {
          v16 = PrintFCore(*v5, "%*s", v122, v123, v124, v125, v126, v127, (4 * *(v5 + 4)));
          if ((v16 & 0x80000000) == 0)
          {
            goto LABEL_127;
          }
        }

        return v16;
      }

      if (v8 == CFUUIDGetTypeID())
      {
        if (v7 == 2)
        {
          LODWORD(v16) = 0;
        }

        else
        {
          v16 = PrintFCore(*v5, "%*s", v129, v130, v131, v132, v133, v134, (4 * *(v5 + 4)));
          if ((v16 & 0x80000000) != 0)
          {
            return v16;
          }
        }

        context = CFUUIDGetUUIDBytes(v4);
        v141 = *v5;
        if (*(v6 + 27))
        {
          v142 = "%~#U";
        }

        else
        {
          v142 = "%#U";
        }

        goto LABEL_138;
      }

      if (v8 == CFSetGetTypeID())
      {
        v149 = [(__CFArray *)v4 allObjects];
        if (v149)
        {
          v16 = PrintFWriteCFObjectLevel(v5, v149, v3);
        }

        else
        {
          v16 = 4294960568;
        }

        return v16;
      }

      if (v7 == 2)
      {
        LODWORD(v16) = 0;
      }

      else
      {
        v16 = PrintFCore(*v5, "%*s", v143, v144, v145, v146, v147, v148, (4 * *(v5 + 4)));
        if ((v16 & 0x80000000) != 0)
        {
          return v16;
        }
      }

      v156 = CFCopyDescription(v4);
      v157 = *v5;
      if (v156)
      {
        v158 = PrintFCore(v157, "%@", v150, v151, v152, v153, v154, v155, v156);
        CFRelease(v156);
        if (v158 >= 0)
        {
          v159 = v16;
        }

        else
        {
          v159 = 0;
        }

        return (v159 + v158);
      }

      v38 = PrintFCore(v157, "<<UNKNOWN CF OBJECT TYPE: %d>>", v150, v151, v152, v153, v154, v155, v8);
      goto LABEL_40;
    }

    v121 = CFURLGetString(v4);
    if (!v121)
    {
      return 4294960596;
    }

    a2 = v121;
    a1 = v5;
    a3 = v3;
  }

  BytePtr = CFDataGetBytePtr(v4);
  v40 = CFDataGetLength(v4);
  v42 = v40;
  v43 = v40;
  if ((*v6 & 8) != 0)
  {
    v43 = *(v6 + 16);
  }

  if (v7 == 2)
  {
    if (v43 >= v40)
    {
      v44 = v40;
    }

    else
    {
      v44 = v43;
    }

    if (v44 >= 0x40)
    {
      v45 = 64;
    }

    else
    {
      v45 = v44;
    }

    v16 = PrintFWriteHexByteStream(*v5, 0, BytePtr, v45);
    if ((v16 & 0x80000000) == 0 && v45 < v42)
    {
      v38 = (**v5)("...", 3);
      goto LABEL_40;
    }
  }

  else
  {
    v64 = *(v5 + 4);
    if (v3 || v40 >= 0x11)
    {
      if (v3)
      {
        LODWORD(v16) = 0;
      }

      else
      {
        v16 = (**v5)("\n", 1);
        if ((v16 & 0x80000000) != 0)
        {
          return v16;
        }
      }

      v65 = (v64 + 1);
    }

    else
    {
      v65 = 0;
      LODWORD(v16) = 0;
    }

    *(v5 + 4) = v65;
    v26 = PrintFWriteHex(*v5, v6, v65, BytePtr, v42, v43, 0, v41);
    if ((v26 & 0x80000000) != 0)
    {
      return v26;
    }

    v16 = (v26 + v16);
    *(v5 + 4) = v64;
  }

  return v16;
}

void NSAppendPrintV(CFMutableStringRef *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*a1)
  {
    *a1 = [MEMORY[0x1E696AD60] string];
  }

  cStr = 0;
  VASPrintF(&cStr, a2, a3, a4, a5, a6, a7, a8);
  v11 = cStr;
  if (cStr)
  {
    CFStringAppendCString(*a1, cStr, 0x8000100u);

    free(v11);
  }
}

uint64_t VSNPrintF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = 0;
  v7 = PrintFCallBackFixedString;
  v8 = a1;
  v5 = a2 - 1;
  if (!a2)
  {
    v5 = 0;
  }

  v9 = 0;
  v10 = v5;
  result = PrintFCoreVAList(&v7, a3, a4);
  if (a2)
  {
    *(v8 + v9) = 0;
  }

  return result;
}

size_t PrintFCallBackFixedString(_BYTE *__src, size_t __n, void *a3)
{
  v4 = __n;
  v5 = a3[2];
  v6 = a3[3] - v5;
  if (v6 >= __n)
  {
    if (!__n)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v6)
  {
    while ((__src[v6] & 0xC0) == 0x80)
    {
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    v4 = v6;
LABEL_9:
    memcpy((a3[1] + v5), __src, v4);
    v5 = a3[2];
    goto LABEL_10;
  }

LABEL_5:
  v4 = 0;
LABEL_10:
  a3[2] = v5 + v4;
  return v4;
}

unint64_t CFDictionaryGetInt64(const __CFDictionary *a1, const void *a2, int *a3)
{
  if (a1 && (Value = CFDictionaryGetValue(a1, a2)) != 0)
  {

    return CFGetInt64(Value, a3);
  }

  else
  {
    if (a3)
    {
      *a3 = -6727;
    }

    return 0;
  }
}

int64_t CFDictionaryGetInt64Ranged(const __CFDictionary *a1, const void *a2, int64_t a3, int64_t a4, int *a5)
{
  if (a1 && (Value = CFDictionaryGetValue(a1, a2)) != 0)
  {

    return CFGetInt64Ranged(Value, a3, a4, a5);
  }

  else
  {
    if (a5)
    {
      *a5 = -6727;
    }

    return 0;
  }
}

int64_t CFGetInt64Ranged(const __CFString *a1, int64_t a2, int64_t a3, int *a4)
{
  v9 = 0;
  result = CFGetInt64(a1, &v9);
  v8 = v9;
  if (v9)
  {
LABEL_5:
    if (!a4)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (result >= a2 && result <= a3)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v8 = -6710;
  if (!a4)
  {
    return result;
  }

LABEL_6:
  *a4 = v8;
  return result;
}

unint64_t CFGetInt64(const __CFString *a1, int *a2)
{
  valuePtr[16] = *MEMORY[0x1E69E9840];
  v20 = 0;
  if (!a1)
  {
    v12 = -6705;
    goto LABEL_39;
  }

  v4 = CFGetTypeID(a1);
  if (v4 == CFNumberGetTypeID())
  {
    if (CFNumberIsFloatType(a1))
    {
      valuePtr[0] = 0.0;
      CFNumberGetValue(a1, kCFNumberDoubleType, valuePtr);
      v5 = valuePtr[0];
      if (valuePtr[0] < -9.22337204e18)
      {
        v6 = 0x8000000000000000;
LABEL_26:
        v20 = v6;
        v12 = -6710;
        goto LABEL_39;
      }

      if (valuePtr[0] >= 9.22337204e18)
      {
        v6 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_26;
      }

      goto LABEL_36;
    }

    CFNumberGetValue(a1, kCFNumberSInt64Type, &v20);
LABEL_38:
    v12 = 0;
    goto LABEL_39;
  }

  if (*MEMORY[0x1E695E4D0] == a1)
  {
    goto LABEL_22;
  }

  if (*MEMORY[0x1E695E4C0] == a1)
  {
LABEL_27:
    v20 = 0;
    goto LABEL_38;
  }

  if (v4 == CFStringGetTypeID())
  {
    if (CFStringGetCString(a1, valuePtr, 128, 0x600u))
    {
      if (strnicmpx(valuePtr, -1, "true") && strnicmpx(valuePtr, -1, "yes") && strnicmpx(valuePtr, -1, "y") && strnicmpx(valuePtr, -1, "on") && strnicmpx(valuePtr, -1, "1"))
      {
        if (strnicmpx(valuePtr, -1, "false") && strnicmpx(valuePtr, -1, "no") && strnicmpx(valuePtr, -1, "n") && strnicmpx(valuePtr, -1, "off") && strnicmpx(valuePtr, -1, "0"))
        {
          if (SNScanF(valuePtr, 0xFFFFFFFFFFFFFFFFLL, "%lli", v7, v8, v9, v10, v11, &v20) != 1)
          {
            v12 = -6717;
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        goto LABEL_27;
      }

LABEL_22:
      v13 = 1;
LABEL_37:
      v20 = v13;
      goto LABEL_38;
    }

    goto LABEL_45;
  }

  if (v4 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    if (Length <= 8)
    {
      if (Length >= 1)
      {
        v16 = 0;
        v17 = &BytePtr[Length];
        do
        {
          v18 = *BytePtr++;
          v16 = v18 | (v16 << 8);
          v20 = v16;
        }

        while (BytePtr < v17);
      }

      goto LABEL_38;
    }

LABEL_45:
    v12 = -6743;
    goto LABEL_39;
  }

  if (v4 == CFDateGetTypeID())
  {
    v5 = MEMORY[0x193B04FE0](a1);
LABEL_36:
    v13 = v5;
    goto LABEL_37;
  }

  if (v4 == CFNullGetTypeID())
  {
    goto LABEL_38;
  }

  v12 = -6756;
LABEL_39:
  if (a2)
  {
    *a2 = v12;
  }

  return v20;
}

double CFDictionaryGetDouble(const __CFDictionary *a1, const void *a2, _DWORD *a3)
{
  if (a1 && (Value = CFDictionaryGetValue(a1, a2)) != 0)
  {

    return CFGetDouble(Value, a3);
  }

  else
  {
    if (a3)
    {
      *a3 = -6727;
    }

    return 0.0;
  }
}

double CFGetDouble(const __CFString *a1, _DWORD *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  valuePtr = 0.0;
  v14 = 0;
  if (!a1)
  {
    v12 = -6705;
LABEL_31:
    v14 = v12;
    goto LABEL_24;
  }

  v4 = CFGetTypeID(a1);
  if (v4 == CFNumberGetTypeID())
  {
    CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
    goto LABEL_23;
  }

  if (v4 == CFStringGetTypeID())
  {
    v13 = 0;
    if (CFStringGetCString(a1, buffer, 128, 0x600u))
    {
      if (!strnicmpx(buffer, -1, "true") || !strnicmpx(buffer, -1, "yes") || !strnicmpx(buffer, -1, "y") || !strnicmpx(buffer, -1, "on") || !strnicmpx(buffer, -1, "1"))
      {
        valuePtr = 1.0;
        goto LABEL_23;
      }

      if (!strnicmpx(buffer, -1, "false") || !strnicmpx(buffer, -1, "no") || !strnicmpx(buffer, -1, "n") || !strnicmpx(buffer, -1, "off") || !strnicmpx(buffer, -1, "0"))
      {
        valuePtr = 0.0;
        goto LABEL_23;
      }

      if (sscanf(buffer, "%lf", &valuePtr) == 1)
      {
LABEL_23:
        v14 = 0;
        goto LABEL_24;
      }

      if (SNScanF(buffer, 0xFFFFFFFFFFFFFFFFLL, "%lli", v5, v6, v7, v8, v9, &v13) == 1)
      {
        v10 = v13;
LABEL_21:
        valuePtr = v10;
        goto LABEL_23;
      }

      v12 = -6717;
    }

    else
    {
      v12 = -6743;
    }

    goto LABEL_31;
  }

  if (v4 == CFDateGetTypeID())
  {
    v10 = MEMORY[0x193B04FE0](a1);
    goto LABEL_21;
  }

  valuePtr = CFGetInt64(a1, &v14);
LABEL_24:
  if (a2)
  {
    *a2 = v14;
  }

  return valuePtr;
}

__CFString *CUPrintNSDataAddress(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v10 = __ROR8__(v2, 1);
  if (v10 > 2)
  {
    switch(v10)
    {
      case 3:
        v50 = [v1 bytes];
        NSPrintF("%.6a", v25, v26, v27, v28, v29, v30, v31, v50);
        goto LABEL_16;
      case 4:
        v52 = [v1 bytes];
        NSPrintF("%.8a", v40, v41, v42, v43, v44, v45, v46, v52);
        goto LABEL_16;
      case 8:
        v49 = [v1 bytes];
        NSPrintF("%.16a", v18, v19, v20, v21, v22, v23, v24, v49);
        goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  if (v10 == 1)
  {
    v51 = [v1 bytes];
    NSPrintF("%.2a", v33, v34, v35, v36, v37, v38, v39, v51);
    goto LABEL_16;
  }

  if (v10 != 2)
  {
LABEL_11:
    if (v1)
    {
      NSPrintF("<< ERROR: Bad Address Size: %zu >>", v3, v4, v5, v6, v7, v8, v9, v2);
      goto LABEL_16;
    }

LABEL_13:
    v32 = @"NULL";
    goto LABEL_17;
  }

  v48 = [v1 bytes];
  NSPrintF("%.4a", v11, v12, v13, v14, v15, v16, v17, v48);
  v32 = LABEL_16:;
LABEL_17:

  return v32;
}

id CUPrintNSDataHex(void *a1, uint64_t a2, int a3)
{
  v4 = a1;
  v5 = [v4 bytes];
  [v4 length];

  if (a3)
  {
    v13 = "%H";
  }

  else
  {
    v13 = "%.3H";
  }

  v14 = NSPrintF(v13, v6, v7, v8, v9, v10, v11, v12, v5);

  return v14;
}

CFDictionaryRef __CUXPCCreateCFObjectFromXPCObject_block_invoke_2(void *a1, const char *a2, void *a3)
{
  result = CUXPCCreateCFObjectFromXPCObject(a3);
  if (result)
  {
    v6 = result;
    v7 = CFStringCreateWithCString(0, a2, 0x8000100u);
    if (v7)
    {
      *(a1[5] + 8 * *(*(a1[4] + 8) + 24)) = v7;
      v9 = a1[5];
      v8 = a1[6];
      v10 = *(a1[4] + 8);
      v11 = *(v10 + 24);
      *(v10 + 24) = v11 + 1;
      *(v9 + 8 * v8 + 8 * v11) = v6;
      return 1;
    }

    else
    {
      CFRelease(v6);
      return 0;
    }
  }

  return result;
}

uint64_t CUXPCDecodeNSString(void *a1, const char *a2, void **a3, void *a4)
{
  v7 = a1;
  string = xpc_dictionary_get_string(v7, a2);
  if (string)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
    v10 = *a3;
    *a3 = v9;
LABEL_5:
    v17 = 1;
    goto LABEL_6;
  }

  v11 = xpc_dictionary_get_value(v7, a2);
  v10 = v11;
  if (!v11 || MEMORY[0x193B07A70](v11) == MEMORY[0x1E69E9F10])
  {
    goto LABEL_5;
  }

  if (a4)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC non-string type: '%s'", v12, v13, v14, v15, v16, a2);
    *a4 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_6:

  return v17;
}

CFDictionaryRef CUXPCCreateCFObjectFromXPCObject(void *a1)
{
  v64 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MEMORY[0x193B07A70]();
  if (v2 == MEMORY[0x1E69E9ED0])
  {
    v7 = MEMORY[0x1E695E738];
LABEL_18:
    v9 = CFRetain(*v7);
    goto LABEL_19;
  }

  if (v2 == MEMORY[0x1E69E9E58])
  {
    value = xpc_BOOL_get_value(v1);
    v7 = MEMORY[0x1E695E4D0];
    if (!value)
    {
      v7 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_18;
  }

  if (v2 == MEMORY[0x1E69E9F10])
  {
    string_ptr = xpc_string_get_string_ptr(v1);
    v9 = CFStringCreateWithCString(0, string_ptr, 0x8000100u);
  }

  else if (v2 == MEMORY[0x1E69E9E70])
  {
    length = xpc_data_get_length(v1);
    if ((length & 0x8000000000000000) != 0)
    {
      goto LABEL_46;
    }

    v14 = length;
    bytes_ptr = xpc_data_get_bytes_ptr(v1);
    v9 = CFDataCreate(0, bytes_ptr, v14);
  }

  else if (v2 == MEMORY[0x1E69E9EB0])
  {
    *&valuePtr = xpc_int64_get_value(v1);
    v9 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  }

  else if (v2 == MEMORY[0x1E69E9F18])
  {
    *&valuePtr = xpc_uint64_get_value(v1);
    v9 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  }

  else if (v2 == MEMORY[0x1E69E9E88])
  {
    *&valuePtr = xpc_double_get_value(v1);
    v9 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  }

  else if (v2 == MEMORY[0x1E69E9E78])
  {
    v16 = xpc_date_get_value(v1);
    v9 = CFDateCreate(0, v16 / 1000000000.0 - *MEMORY[0x1E695E468]);
  }

  else
  {
    if (v2 != MEMORY[0x1E69E9F20])
    {
      if (v2 != MEMORY[0x1E69E9E50])
      {
        if (v2 == MEMORY[0x1E69E9E80])
        {
          count = xpc_dictionary_get_count(v1);
          if (!(count >> 62))
          {
            v4 = count;
            v5 = 2 * count;
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            valuePtr = 0u;
            v33 = 0u;
            if (count < 0x81)
            {
              p_valuePtr = &valuePtr;
LABEL_44:
              v28 = 0;
              v29 = &v28;
              v30 = 0x2020000000;
              v31 = 0;
              v26[0] = MEMORY[0x1E69E9820];
              v26[1] = 3221225472;
              v26[2] = __CUXPCCreateCFObjectFromXPCObject_block_invoke_2;
              v26[3] = &unk_1E73A4450;
              v26[4] = &v28;
              v26[5] = p_valuePtr;
              v26[6] = v4;
              xpc_dictionary_apply(v1, v26);
              if (v29[3] == v4)
              {
                v10 = CFDictionaryCreate(0, p_valuePtr, &p_valuePtr[v4], v4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              }

              else
              {
                v10 = 0;
              }

              if (v4)
              {
                v25 = p_valuePtr;
                do
                {
                  if (*v25)
                  {
                    CFRelease(*v25);
                  }

                  ++v25;
                  --v5;
                }

                while (v5);
              }

              if (p_valuePtr == &valuePtr)
              {
                goto LABEL_56;
              }

              v24 = p_valuePtr;
LABEL_55:
              free(v24);
LABEL_56:
              _Block_object_dispose(&v28, 8);
              goto LABEL_20;
            }

            p_valuePtr = malloc_type_calloc(2 * count, 8uLL, 0xC0040B8AA526DuLL);
            if (p_valuePtr)
            {
              goto LABEL_44;
            }
          }
        }

        goto LABEL_46;
      }

      v17 = xpc_array_get_count(v1);
      if ((v17 & 0x8000000000000000) == 0)
      {
        v18 = v17;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        valuePtr = 0u;
        v33 = 0u;
        if (v17 < 0x101)
        {
          v19 = &valuePtr;
LABEL_33:
          v28 = 0;
          v29 = &v28;
          v30 = 0x2020000000;
          v31 = 0;
          applier[0] = MEMORY[0x1E69E9820];
          applier[1] = 3221225472;
          applier[2] = __CUXPCCreateCFObjectFromXPCObject_block_invoke;
          applier[3] = &unk_1E73A4428;
          applier[4] = &v28;
          applier[5] = v19;
          xpc_array_apply(v1, applier);
          v20 = v29;
          v21 = v29[3];
          if (v21 == v18)
          {
            v10 = CFArrayCreate(0, v19, v18, MEMORY[0x1E695E9C0]);
            v20 = v29;
            v21 = v29[3];
          }

          else
          {
            v10 = 0;
          }

          if (v21)
          {
            v22 = 0;
            do
            {
              v23 = v19[v22];
              if (v23)
              {
                CFRelease(v23);
                v20 = v29;
              }

              ++v22;
            }

            while (v22 < v20[3]);
          }

          if (v19 == &valuePtr)
          {
            goto LABEL_56;
          }

          v24 = v19;
          goto LABEL_55;
        }

        v19 = malloc_type_calloc(v17, 8uLL, 0xC0040B8AA526DuLL);
        if (v19)
        {
          goto LABEL_33;
        }
      }

LABEL_46:
      v10 = 0;
      goto LABEL_20;
    }

    v65 = *xpc_uuid_get_bytes(v1);
    v9 = CFUUIDCreateFromUUIDBytes(0, v65);
  }

LABEL_19:
  v10 = v9;
LABEL_20:

  return v10;
}

void sub_191EB6AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void NSDecodeObjectIfPresent(void *a1, void *a2, uint64_t a3, void **a4)
{
  v11 = a1;
  v7 = a2;
  if ([v11 containsValueForKey:v7])
  {
    v8 = [v11 decodeObjectOfClass:a3 forKey:v7];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"bad type for key %@", v7}];
    }

    v9 = *a4;
    *a4 = v8;
    v10 = v8;
  }
}

uint64_t NSDecodeSInt64RangedIfPresent(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = [v9 containsValueForKey:v10];
  if (v11)
  {
    v12 = [v9 decodeInt64ForKey:v10];
    v13 = v12;
    if (v12 < a3 || v12 > a4)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Key '%@', value (%lld) out-of-range (%lld - %lld)", v10, v12, a3, a4}];
    }

    *a5 = v13;
  }

  return v11;
}

id CUXPCDictionaryCreateReply(void *a1)
{
  v1 = a1;
  v2 = objc_getAssociatedObject(v1, &sCUXPCResponseHandlerKey);
  if (v2)
  {
    reply = xpc_dictionary_create(0, 0, 0);
    objc_setAssociatedObject(reply, &sCUXPCResponseHandlerKey, v2, 0x301);
  }

  else
  {
    reply = xpc_dictionary_create_reply(v1);
  }

  return reply;
}

uint64_t IsAppleInternalBuild()
{
  if (IsAppleInternalBuild_sOnce != -1)
  {
    dispatch_once(&IsAppleInternalBuild_sOnce, &__block_literal_global_116);
  }

  return IsAppleInternalBuild_sIsInternal;
}

uint64_t PrintFWriteObfuscatedPtr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a2;
  if (gObfuscateOnce != -1)
  {
    dispatch_once_f(&gObfuscateOnce, 0, _PrintFObfuscateInit);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = SipHash(gObfuscateKey, &v13, 8);
LABEL_6:
  v11 = PrintFCore(a1, "0x%04X", a3, a4, a5, a6, a7, a8, v10);
  return v11 & ~(v11 >> 31);
}

void PrintFWriteCFObjectApplier(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    v4 = 0;

    goto LABEL_4;
  }

  v7 = *(*(a3 + 8) + 3);
  v8 = PrintFWriteCFObjectLevel(a3, a1, 0);
  if (v8 < 0)
  {
    v4 = 0;
  }

  else
  {
    v9 = (**a3)(" : ", 3);
    if ((v9 & 0x80000000) == 0)
    {
      v10 = CFGetTypeID(a2);
      if (v10 == CFSetGetTypeID())
      {
        v4 = [a2 allObjects];
        if (!v4)
        {
          goto LABEL_50;
        }

        a2 = v4;
        v10 = CFGetTypeID(v4);
        v31 = a2;
      }

      else
      {
        v31 = 0;
      }

      v11 = v9 + v8;
      if (v10 == CFArrayGetTypeID())
      {
        if (CFArrayGetCount(a2) >= 1)
        {
          if (v7 == 2)
          {
            v12 = a3;
            v13 = a2;
            v14 = 1;
            goto LABEL_19;
          }

          v8 = (**a3)("\n", 1);
          if ((v8 & 0x80000000) == 0)
          {
            v21 = a3;
            v22 = a2;
            v23 = 1;
LABEL_39:
            v27 = PrintFWriteCFObjectLevel(v21, v22, v23);
            if ((v27 & 0x80000000) == 0)
            {
              v11 += v8 + v27;
              v16 = ",\n";
              goto LABEL_41;
            }

            v8 = v27;
            goto LABEL_56;
          }

          goto LABEL_56;
        }

        v18 = **a3;
        v19 = "[],\n";
        v20 = "[], ";
      }

      else
      {
        if (v10 != CFDictionaryGetTypeID())
        {
          if (v10 == CFDataGetTypeID())
          {
            v17 = PrintFWriteCFObjectLevel(a3, a2, 0);
            v8 = v17;
            if (v17 < 0)
            {
              goto LABEL_56;
            }

            v11 += v17;
          }

          else
          {
            v24 = *(a3 + 16);
            *(a3 + 16) = 0;
            v25 = PrintFWriteCFObjectLevel(a3, a2, 0);
            v8 = v25;
            if (v25 < 0)
            {
              goto LABEL_56;
            }

            v11 += v25;
            *(a3 + 16) = v24;
          }

          v18 = **a3;
          if (v7 == 2)
          {
            v16 = ", ";
          }

          else
          {
            v16 = ",\n";
          }

          goto LABEL_42;
        }

        if (CFDictionaryGetCount(a2) >= 1)
        {
          if (v7 == 2)
          {
            v12 = a3;
            v13 = a2;
            v14 = 0;
LABEL_19:
            v15 = PrintFWriteCFObjectLevel(v12, v13, v14);
            v8 = v15;
            if ((v15 & 0x80000000) == 0)
            {
              v11 += v15;
              v16 = ", ";
LABEL_41:
              v18 = **a3;
LABEL_42:
              v26 = 2;
              goto LABEL_43;
            }

            goto LABEL_56;
          }

          v8 = (**a3)("\n", 1);
          if ((v8 & 0x80000000) == 0)
          {
            v21 = a3;
            v22 = a2;
            v23 = 0;
            goto LABEL_39;
          }

LABEL_56:
          v4 = v31;
          goto LABEL_49;
        }

        v18 = **a3;
        v19 = "{},\n";
        v20 = "{}, ";
      }

      if (v7 == 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = v19;
      }

      v26 = 4;
LABEL_43:
      v28 = v18(v16, v26);
      v8 = v28;
      if (v28 >= 0)
      {
        v29 = v11;
      }

      else
      {
        v29 = 0;
      }

      v30 = v29 + v28;
      v4 = v31;
      if (v30 >= 1)
      {
        *(a3 + 20) += v30;
      }

      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v4 = 0;
    v8 = v9;
  }

LABEL_49:
  *(a3 + 24) = v8;
LABEL_50:

LABEL_4:
}

uint64_t CFDateGetComponents(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  v16 = CFCalendarCopyCurrent();
  if (v16)
  {
    v17 = v16;
    v18 = CFTimeZoneCreateWithName(0, @"GMT", 0);
    if (v18)
    {
      v19 = v18;
      CFCalendarSetTimeZone(v17, v18);
      CFRelease(v19);
      v20 = MEMORY[0x193B04FE0](a1);
      if (CFCalendarDecomposeAbsoluteTime(v17, v20, "yMdHms", a2, a3, a4, a5, a6, a7))
      {
        if (a8)
        {
          *a8 = (modf(v20, &__y) * 1000000.0);
        }

        CFRelease(v17);
        return 0;
      }
    }

    CFRelease(v17);
  }

  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  if (a8)
  {
    *a8 = 0;
  }

  return 4294960596;
}

uint64_t GestaltGetDeviceClass()
{
  if (GestaltGetDeviceClass_sOnce != -1)
  {
    dispatch_once(&GestaltGetDeviceClass_sOnce, &__block_literal_global_13571);
  }

  return GestaltGetDeviceClass_deviceClass;
}

const char *GetProcessNameByPID(int a1, char *a2, size_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return "";
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v10 = 0u;
  memset(buffer, 0, sizeof(buffer));
  if (proc_pidinfo(a1, 3, 0, buffer, 136) == 136)
  {
    if (LOBYTE(v11[0]))
    {
      v6 = v11;
    }

    else
    {
      v6 = &v10;
    }

    goto LABEL_12;
  }

  *v15 = 0xE00000001;
  v16 = 1;
  v17 = a1;
  bzero(v13, 0x288uLL);
  v8 = 648;
  if (!sysctl(v15, 4u, v13, &v8, 0, 0) || *__error() && !*__error())
  {
    v6 = v14;
LABEL_12:
    strlcpy(a2, v6, a3);
    return a2;
  }

  *a2 = 0;
  return a2;
}

id CUXPCDecodeNSErrorIfNeeded(void *a1)
{
  v1 = a1;
  if (MEMORY[0x193B07A70]() == MEMORY[0x1E69E9E80])
  {
    v16 = 0;
    v17 = 0;
    CUXPCDecodeNSError(v1, "errO", "errC", "errD", "errM", "errO", &v17, &v16);
    v10 = v17;
    v11 = v16;
    v12 = v11;
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = v11;
    }

    v14 = v13;
  }

  else
  {
    if (v1 == MEMORY[0x1E69E9E18])
    {
      v7 = *MEMORY[0x1E696A768];
      v8 = "XPC connection interrupted";
      v9 = 4294896154;
    }

    else
    {
      v7 = *MEMORY[0x1E696A768];
      if (v1 == MEMORY[0x1E69E9E20])
      {
        v8 = "XPC connection invalidated";
        v9 = 4294896148;
      }

      else
      {
        v8 = "XPC unknown type";
        v9 = 4294960540;
      }
    }

    v14 = NSErrorF_safe(v7, v9, v8, v2, v3, v4, v5, v6, v16);
  }

  return v14;
}

uint64_t CUXPCDecodeNSError(void *a1, const char *a2, const char *a3, const char *a4, const char *a5, const char *a6, void *a7, void *a8)
{
  v14 = xpc_dictionary_get_value(a1, a2);
  v15 = v14;
  if (v14)
  {
    if (MEMORY[0x193B07A70](v14) == MEMORY[0x1E69E9E80])
    {
      v21 = _CUXPCDecodeNSError(v15, a3, a4, a5, a6, 1u, 0, a7, a8);
    }

    else if (a8)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC non-dictionary error object", v16, v17, v18, v19, v20, v23);
      *a8 = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 1;
  }

  return v21;
}

uint64_t SipHash(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3 & 7;
  v4 = a1[1];
  v5 = *a1 ^ 0x736F6D6570736575;
  v6 = v4 ^ 0x646F72616E646F6DLL;
  v7 = *a1 ^ 0x6C7967656E657261;
  v8 = v4 ^ 0x7465646279746573;
  if ((a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v9 = &a2[a3 & 0xFFFFFFFFFFFFFFF8];
    do
    {
      v10 = *a2;
      a2 += 8;
      v11 = v10 ^ v8;
      v12 = v6 + v5;
      v13 = v12 ^ __ROR8__(v6, 51);
      v14 = v11 + v7;
      v15 = __ROR8__(v11, 48);
      v16 = (v14 ^ v15) + __ROR8__(v12, 32);
      v17 = v16 ^ __ROR8__(v14 ^ v15, 43);
      v18 = v14 + v13;
      v19 = v18 ^ __ROR8__(v13, 47);
      v20 = v16 + v19;
      v21 = v20 ^ __ROR8__(v19, 51);
      v22 = v17 + __ROR8__(v18, 32);
      v23 = __ROR8__(v17, 48);
      v24 = (v22 ^ v23) + __ROR8__(v20, 32);
      v8 = v24 ^ __ROR8__(v22 ^ v23, 43);
      v25 = v22 + v21;
      v6 = v25 ^ __ROR8__(v21, 47);
      v7 = __ROR8__(v25, 32);
      v5 = v24 ^ v10;
    }

    while (a2 != v9);
    a2 = v9;
  }

  v26 = a3 << 56;
  if ((a3 & 7u) > 3uLL)
  {
    if ((a3 & 7u) > 5uLL)
    {
      if (v3 != 6)
      {
        v26 |= a2[6] << 48;
      }

      v26 |= a2[5] << 40;
    }

    else if (v3 == 4)
    {
      goto LABEL_18;
    }

    v26 |= a2[4] << 32;
LABEL_18:
    v26 |= a2[3] << 24;
LABEL_19:
    v26 |= a2[2] << 16;
    goto LABEL_20;
  }

  if ((a3 & 7u) <= 1uLL)
  {
    if ((a3 & 7) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v3 != 2)
  {
    goto LABEL_19;
  }

LABEL_20:
  v26 |= a2[1] << 8;
LABEL_21:
  v26 |= *a2;
LABEL_22:
  v27 = v26 ^ v8;
  v28 = v6 + v5;
  v29 = v28 ^ __ROR8__(v6, 51);
  v30 = v27 + v7;
  v31 = __ROR8__(v27, 48);
  v32 = (v30 ^ v31) + __ROR8__(v28, 32);
  v33 = v32 ^ __ROR8__(v30 ^ v31, 43);
  v34 = v30 + v29;
  v35 = v34 ^ __ROR8__(v29, 47);
  v36 = v32 + v35;
  v37 = v36 ^ __ROR8__(v35, 51);
  v38 = v33 + __ROR8__(v34, 32);
  v39 = __ROR8__(v33, 48);
  v40 = (v38 ^ v39) + __ROR8__(v36, 32);
  v41 = v40 ^ __ROR8__(v38 ^ v39, 43);
  v42 = v38 + v37;
  v43 = v42 ^ __ROR8__(v37, 47);
  v44 = (v40 ^ v26) + v43;
  v45 = v44 ^ __ROR8__(v43, 51);
  v46 = (__ROR8__(v42, 32) ^ 0xFFLL) + v41;
  v47 = __ROR8__(v41, 48);
  v48 = __ROR8__(v44, 32) + (v46 ^ v47);
  v49 = v48 ^ __ROR8__(v46 ^ v47, 43);
  v50 = v45 + v46;
  v51 = v50 ^ __ROR8__(v45, 47);
  v52 = v51 + v48;
  v53 = v52 ^ __ROR8__(v51, 51);
  v54 = __ROR8__(v50, 32) + v49;
  v55 = __ROR8__(v49, 48);
  v56 = __ROR8__(v52, 32) + (v54 ^ v55);
  v57 = v56 ^ __ROR8__(v54 ^ v55, 43);
  v58 = v53 + v54;
  v59 = v58 ^ __ROR8__(v53, 47);
  v60 = v59 + v56;
  v61 = v60 ^ __ROR8__(v59, 51);
  v62 = __ROR8__(v58, 32) + v57;
  v63 = __ROR8__(v57, 48);
  v64 = __ROR8__(v60, 32) + (v62 ^ v63);
  v65 = v64 ^ __ROR8__(v62 ^ v63, 43);
  v66 = v61 + v62;
  v67 = v66 ^ __ROR8__(v61, 47);
  v68 = (v67 + v64) ^ __ROR8__(v67, 51);
  v69 = __ROR8__(v66, 32) + v65;
  return __ROR8__(v69 ^ __ROR8__(v65, 48), 43) ^ __ROR8__(v68, 47) ^ __ROR8__(v68 + v69, 32) ^ (v68 + v69);
}

unint64_t _PrintFObfuscateString(unint64_t __s, uint64_t a2, _BYTE *a3, uint64_t *a4)
{
  v6 = __s;
  if (a2 == -1)
  {
    __s = strlen(__s);
  }

  else
  {
    v7 = a2;
    if (!a2)
    {
LABEL_15:
      *a3 = 0;
      if (!a4)
      {
        return __s;
      }

      v9 = 0;
      goto LABEL_17;
    }

    __s = 0;
    while (v6[__s])
    {
      if (a2 == ++__s)
      {
        goto LABEL_9;
      }
    }
  }

  v7 = __s;
  if (!__s)
  {
    goto LABEL_15;
  }

LABEL_9:
  if (gObfuscateOnce != -1)
  {
    dispatch_once_f(&gObfuscateOnce, 0, _PrintFObfuscateInit);
  }

  __s = SipHash(gObfuscateKey, v6, v7);
  *a3 = 16962;
  for (i = 2; i != 8; ++i)
  {
    a3[i] = aAbcdefghijklmn[__s % 0x34];
    __s >>= 8;
  }

  a3[8] = 0;
  if (a4)
  {
    v9 = 8;
LABEL_17:
    *a4 = v9;
  }

  return __s;
}

uint64_t DataBuffer_Init(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = a3;
  *(result + 48) = 0;
  *(result + 52) = 0;
  return result;
}

uint64_t DataBuffer_Append(uint64_t a1, char *__s, size_t a3)
{
  v3 = a3;
  if (a3 == -1)
  {
    v3 = strlen(__s);
  }

  __dst = 0;
  v6 = DataBuffer_Resize(a1, *(a1 + 32) + v3, &__dst);
  if (!v6)
  {
    memcpy(__dst, __s, v3);
  }

  return v6;
}

uint64_t DataBuffer_Detach(uint64_t a1, void *a2, size_t *a3)
{
  v6 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v7 = *(a1 + 24);
LABEL_9:
    result = 0;
    v11 = *(a1 + 8);
    *(a1 + 24) = *a1;
    *(a1 + 32) = 0;
    *(a1 + 40) = v11;
    *(a1 + 48) = 0;
    *(a1 + 52) = 0;
    *a2 = v7;
    *a3 = v6;
    return result;
  }

  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 32);
  }

  v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
  if (v9)
  {
    v7 = v9;
    if (v6)
    {
      memcpy(v9, *(a1 + 24), v6);
    }

    goto LABEL_9;
  }

  return 4294960568;
}

void DataBuffer_Free(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      free(v2);
    }
  }

  v3 = *(a1 + 8);
  *(a1 + 24) = *a1;
  *(a1 + 32) = 0;
  *(a1 + 40) = v3;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
}

uint64_t __DataBuffer_PrintFCallBack(char *__s, size_t a2, uint64_t a3)
{
  v3 = a2;
  LODWORD(result) = DataBuffer_Append(a3, __s, a2);
  if (result)
  {
    return result;
  }

  else
  {
    return v3;
  }
}

uint64_t DataBuffer_Resize(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  result = *(a1 + 52);
  if (!result)
  {
    v7 = *(a1 + 32);
    if (v7 >= a2)
    {
      *(a1 + 32) = a2;
      if (a3)
      {
        result = 0;
        v15 = *(a1 + 24);
        goto LABEL_24;
      }

      return 0;
    }

    if (*(a1 + 40) < a2)
    {
      if (*(a1 + 16) < a2)
      {
        result = 4294960545;
      }

      else
      {
        v8 = 4096;
        if (a2 >> 17)
        {
          v9 = (a2 + 0x1FFFF) & 0xFFFE0000;
        }

        else
        {
          v9 = (a2 + 0x3FFF) & 0x3C000;
        }

        if (a2 >= 0x1000)
        {
          v8 = v9;
        }

        if (a2 >= 0x100)
        {
          v10 = v8;
        }

        else
        {
          v10 = 256;
        }

        v11 = malloc_type_malloc(v10, 0x100004077774924uLL);
        if (v11)
        {
          v12 = v11;
          v13 = *(a1 + 32);
          if (v13)
          {
            memcpy(v11, *(a1 + 24), v13);
          }

          if (*(a1 + 48))
          {
            v14 = *(a1 + 24);
            if (v14)
            {
              free(v14);
            }
          }

          *(a1 + 40) = v10;
          *(a1 + 24) = v12;
          *(a1 + 48) = 1;
          goto LABEL_20;
        }

        result = 4294960568;
      }

      *(a1 + 52) = result;
      return result;
    }

LABEL_20:
    *(a1 + 32) = a2;
    if (a3)
    {
      result = 0;
      v15 = *(a1 + 24) + v7;
LABEL_24:
      *a3 = v15;
      return result;
    }

    return 0;
  }

  return result;
}

BOOL _LogCategory_Initialize(uint64_t a1, unsigned __int8 a2)
{
  if (gLogUtilsInitializing)
  {
    return 0;
  }

  LogUtils_EnsureInitialized();
  pthread_mutex_lock(&gLogUtilsLock);
  if (*a1 == -1)
  {
    *a1 = *(a1 + 4);
    v5 = &gLogCategoryList;
    v6 = gLogCategoryList;
    if (gLogCategoryList)
    {
      while (strnicmpx(*(v6 + 24), -1, *(a1 + 24)) < 1)
      {
        v7 = *(v6 + 48);
        v5 = (v6 + 48);
        v6 = v7;
        if (!v7)
        {
          goto LABEL_10;
        }
      }

      v7 = *v5;
    }

    else
    {
      v7 = 0;
    }

LABEL_10:
    *(a1 + 48) = v7;
    *v5 = a1;
    if ((*(a1 + 18) & 2) != 0)
    {
      *(a1 + 104) = malloc_type_calloc(1uLL, 0x10uLL, 0x90040C859B4A5uLL);
    }

    v8 = *(a1 + 8);
    if (v8)
    {
      _LogControlLocked(v8, 0);
    }

    _LogCategory_ApplyActions(a1);
    v9 = a1 + 56;
    if (!*(a1 + 56))
    {
      _LogOutputCreate("console", (a1 + 56));
      if (*v9)
      {
        ++*(*v9 + 8);
      }

      _LogCategory_ApplyActions(a1);
    }
  }

  v10 = *a1;
  pthread_mutex_unlock(&gLogUtilsLock);
  return v10 <= a2;
}

uint64_t PrintFWriteHexByteStream(uint64_t (**a1)(_BYTE *, uint64_t, void), int a2, unsigned __int8 *a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = "0123456789ABCDEF";
  }

  else
  {
    v4 = "0123456789abcdef";
  }

  if (a4 < 1)
  {
    return 0;
  }

  v5 = a3;
  v7 = 0;
  v8 = 0;
  v9 = &a3[a4];
  do
  {
    if (v7 == 64)
    {
      v10 = (*a1)(v15, 64, a1);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      v7 = 0;
      v8 = (v8 + 64);
    }

    v11 = &v15[v7];
    v12 = *v5++;
    *v11 = v4[v12 >> 4];
    v7 += 2;
    v11[1] = v4[v12 & 0xF];
  }

  while (v5 < v9);
  if (v7)
  {
    v13 = (*a1)(v15, v7, a1);
    if (v13 >= 0)
    {
      return (v8 + v7);
    }

    else
    {
      return v13;
    }
  }

  return v8;
}

uint64_t PrintFWriteHexOneLine(uint64_t (**a1)(const char *, uint64_t, void), uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a4;
  if (*(a2 + 3) == 2)
  {
    v8 = 1;
    v9 = (*a1)("|", 1, a1);
    if ((v9 & 0x80000000) == 0)
    {
LABEL_14:
      v16 = v8 + v4;
      while (1)
      {
        v18 = *a3++;
        v17 = v18;
        if ((v18 - 127) < 0xFFFFFFA1)
        {
          v17 = 94;
        }

        v21 = v17;
        v9 = (*a1)(&v21, 1, a1);
        if ((v9 & 0x80000000) != 0)
        {
          break;
        }

        if (!--v4)
        {
          v19 = (*a1)("|", 1, a1);
          if (v19 >= 0)
          {
            return (v16 + 1);
          }

          else
          {
            return v19;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
    LODWORD(v11) = 0;
    while (1)
    {
      if (v10)
      {
        v22[0] = 32;
        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      v13 = a3[v10];
      v14 = &v22[v12];
      *v14 = a0123456789abcd[v13 >> 4];
      v15 = v12 | 2;
      v14[1] = a0123456789abcd[v13 & 0xF];
      v9 = (*a1)(v22, v12 | 2, a1);
      if ((v9 & 0x80000000) != 0)
      {
        break;
      }

      v11 = (v11 + v15);
      if (v4 == ++v10)
      {
        if (*(a2 + 3) < 1)
        {
          return v11;
        }

        v9 = (*a1)(" |", 2, a1);
        if ((v9 & 0x80000000) == 0)
        {
          v8 = v11 + 2;
          goto LABEL_14;
        }

        return v9;
      }
    }
  }

  return v9;
}

uint64_t CUXPCGetNextClientID()
{
  if (CUXPCGetNextClientID_sOnce != -1)
  {
    dispatch_once(&CUXPCGetNextClientID_sOnce, &__block_literal_global_10515);
  }

  return atomic_fetch_add(&CUXPCGetNextClientID_sNext, 1u) + 1;
}

uint64_t __CUXPCGetNextClientID_block_invoke()
{
  result = RandomBytes(&CUXPCGetNextClientID_sNext, 4uLL);
  CUXPCGetNextClientID_sNext = word_1EADEBB7A << 16;
  return result;
}

uint64_t RandomBytes(void *bytes, size_t count)
{
  while (1)
  {
    result = CCRandomGenerateBytes(bytes, count);
    if (!result)
    {
      break;
    }

    if (gLogCategory_RandomNumberUtils <= 60)
    {
      v9 = result;
      if (gLogCategory_RandomNumberUtils != -1 || _LogCategory_Initialize(&gLogCategory_RandomNumberUtils, 0x3Cu))
      {
        LogPrintF(&gLogCategory_RandomNumberUtils, "OSStatus RandomBytes(void *, size_t)", 0x3Cu, "### CCRandomGenerateBytes failed: %#m\n", v5, v6, v7, v8, v9);
      }
    }

    sleep(1u);
  }

  return result;
}

uint64_t __IsAppleInternalBuild_block_invoke()
{
  result = os_variant_allows_internal_security_policies();
  if (result)
  {
    result = os_variant_has_internal_content();
  }

  IsAppleInternalBuild_sIsInternal = result;
  return result;
}

uint64_t CUXPCDecodeUInt64RangedEx(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v11 = xpc_dictionary_get_value(a1, a2);
  v12 = v11;
  if (!v11)
  {
    v19 = 2;
    goto LABEL_14;
  }

  v13 = MEMORY[0x193B07A70](v11);
  if (v13 == MEMORY[0x1E69E9F18])
  {
    value = xpc_uint64_get_value(v12);
    goto LABEL_11;
  }

  if (v13 == MEMORY[0x1E69E9EB0])
  {
    value = xpc_int64_get_value(v12);
LABEL_11:
    if (value >= a3 && value <= a4)
    {
      *a5 = value;
      v19 = 6;
      goto LABEL_14;
    }

    if (!a6)
    {
      goto LABEL_7;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960586, "XPC out-of-range: '%s', %llu vs min %llu, max %llu", v21, v22, v23, v24, v25, a2);
    goto LABEL_6;
  }

  if (a6)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC non-uint64 type: '%s'", v14, v15, v16, v17, v18, a2);
    *a6 = LABEL_6:;
  }

LABEL_7:
  v19 = 5;
LABEL_14:

  return v19;
}

CFStringRef CFStringCreateV(int *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cStr = 0;
  if ((VASPrintF(&cStr, a2, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
  {
    v10 = 0;
    v11 = -6700;
    if (!a1)
    {
      return v10;
    }

    goto LABEL_6;
  }

  v9 = cStr;
  v10 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  free(v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = -6728;
  }

  if (a1)
  {
LABEL_6:
    *a1 = v11;
  }

  return v10;
}

uint64_t BonjourBrowser_Start(dispatch_queue_t *a1, const char *a2, const char *a3, const char *a4, uint64_t a5)
{
  v10 = malloc_type_calloc(1uLL, 0x28uLL, 0x1030040D16A4755uLL);
  if (v10)
  {
    v11 = v10;
    *v10 = a1;
    v10[4] = a5;
    v12 = strdup(a2);
    v11[1] = v12;
    if (v12)
    {
      v13 = v12;
      if (a3)
      {
        v14 = a3;
      }

      else
      {
        v14 = "";
      }

      v15 = strdup(v14);
      v11[2] = v15;
      if (v15)
      {
        if (!a4 || !*a4 || (v16 = strdup(a4), (v11[3] = v16) != 0))
        {
          CFRetain(a1);
          dispatch_async_f(a1[2], v11, _BonjourBrowser_Start);
          return 0;
        }
      }

      free(v13);
    }

    else
    {
      v15 = v11[2];
    }

    if (v15)
    {
      free(v15);
    }

    v18 = v11[3];
    if (v18)
    {
      free(v18);
    }

    free(v11);
  }

  return 4294960568;
}

void _BonjourBrowser_Start(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v10 = *(*a1 + 136);
  if (v10)
  {
    free(v10);
  }

  *(v9 + 136) = a1[1];
  v11 = *(v9 + 144);
  if (v11)
  {
    free(v11);
  }

  *(v9 + 144) = a1[2];
  v12 = *(v9 + 152);
  if (v12)
  {
    free(v12);
  }

  v13 = a1[4];
  *(v9 + 152) = a1[3];
  *(v9 + 160) = v13;
  if (!*(v9 + 104))
  {
    CFRetain(v9);
    *(v9 + 104) = 1;
    *(v9 + 112) = mach_absolute_time();
  }

  _BonjourBrowser_EnsureStarted(v9, a2, a3, a4, a5, a6, a7, a8);
  free(a1);

  CFRelease(v9);
}

void _BonjourBrowser_EnsureStarted(DNSServiceRef *sdRef, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sdRef[20];
  if ((v9 & 0x80000000000000) != 0)
  {
    _BonjourBrowser_EnsureStoppedDNSSD(sdRef);
    goto LABEL_74;
  }

  sdRefa[0] = 0;
  v10 = sdRef + 3;
  if (!sdRef[3])
  {
    if (gLogCategory_BonjourBrowser <= 30 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_EnsureStartedDNSSD(BonjourBrowserRef)", 0x1Eu, "Creating shared connection to browse for %s\n", a5, a6, a7, a8, sdRef[17]);
    }

    Connection = DNSServiceCreateConnection(sdRef + 3);
    if (Connection)
    {
      goto LABEL_35;
    }

    DNSServiceSetDispatchQueue(sdRef[3], sdRef[2]);
  }

  if (!sdRef[5])
  {
    v20 = v9 | 0x2000000;
    if ((v9 & 0x1000000000000000) != 0)
    {
      v20 = v9 & 0xFDEFFFFF | 0x2000000;
    }

    if ((v9 & 0x2000000000000000) != 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = v9;
    }

    v22 = sdRef[19];
    if (v22)
    {
      if (*v22 == 45 && *(v22 + 1) == 49 && !*(v22 + 2))
      {
        v23 = -1;
      }

      else
      {
        v23 = if_nametoindex(v22);
      }
    }

    else
    {
      v23 = 0;
    }

    sdRefa[0] = *v10;
    if (gLogCategory_BonjourBrowser <= 30 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_EnsureStartedDNSSD(BonjourBrowserRef)", 0x1Eu, "Starting browse for %s on if %s, flagsAlt 0x%X, flags %#ll{flags}", a5, a6, a7, a8, sdRef[17]);
    }

    Connection = DNSServiceBrowse(sdRefa, v21 | 0x4000, v23, sdRef[17], sdRef[18], _BonjourBrowser_BrowseHandler, sdRef);
    if (!Connection)
    {
      sdRef[5] = sdRefa[0];
      if ((v9 & 0x4000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_39:
      v25 = sdRef[6];
      if (v25)
      {
        if (gLogCategory_BonjourBrowser > 40)
        {
          goto LABEL_45;
        }

        if (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x28u))
        {
          LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_EnsureStartedDNSSD(BonjourBrowserRef)", 0x28u, "Stopping detail browse for %s, if %s, flags 0x%X\n", a5, a6, a7, a8, sdRef[17]);
        }

        v25 = sdRef[6];
        if (v25)
        {
LABEL_45:
          DNSServiceRefDeallocate(v25);
          sdRef[6] = 0;
        }

        if ((v9 & 0x1000000000000000) != 0 && (v9 & 0x2000000000000000) != 0)
        {
          _BonjourBrowser_RemoveAWDLServices(sdRef);
        }
      }

      goto LABEL_49;
    }

LABEL_35:
    v24 = Connection;
    if (gLogCategory_BonjourBrowser <= 60 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_EnsureStartedDNSSD(BonjourBrowserRef)", 0x3Cu, "### Start browse for %s on if %s, flags 0x%llX failed: %#m\n", a5, a6, a7, a8, sdRef[17]);
    }

    _BonjourBrowser_NANEnsureStopped(sdRef, 1, a3, a4, a5, a6, a7, a8);
    _BonjourBrowser_EnsureStoppedDNSSD(sdRef);
    goto LABEL_73;
  }

  if ((v9 & 0x4000000000000000) != 0)
  {
    goto LABEL_39;
  }

LABEL_12:
  if ((v9 & 0x2000000000000000) == 0 || sdRef[6])
  {
LABEL_49:
    v26 = v9;
    goto LABEL_50;
  }

  v18 = sdRef[19];
  if (v18)
  {
    if (*v18 == 45 && *(v18 + 1) == 49 && !*(v18 + 2))
    {
      v19 = -1;
    }

    else
    {
      v19 = if_nametoindex(v18);
    }
  }

  else
  {
    v19 = 0;
  }

  v26 = v9 & 0xFDFFFFFF;
  sdRefa[0] = *v10;
  if (gLogCategory_BonjourBrowser <= 40 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x28u)))
  {
    LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_EnsureStartedDNSSD(BonjourBrowserRef)", 0x28u, "Starting detail browse for %s, if %s, flags 0x%X\n", a5, a6, a7, a8, sdRef[17]);
  }

  if (!DNSServiceBrowse(sdRefa, v9 & 0xFDFFBFFF | 0x4000, v19, sdRef[17], sdRef[18], _BonjourBrowser_IgnoredBrowseHandler, sdRef))
  {
    sdRef[6] = sdRefa[0];
  }

LABEL_50:
  v27 = sdRef[4];
  if ((v9 & 0x400000000000000) != 0)
  {
    if (!v27)
    {
      if (gLogCategory_BonjourBrowser <= 40 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x28u)))
      {
        LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_EnsureStartedDNSSD(BonjourBrowserRef)", 0x28u, "Starting AWDL browse for %s, flags 0x%llX\n", a5, a6, a7, a8, sdRef[17]);
      }

      LODWORD(a3) = *(sdRef + 32);
      if (a3 || (a3 = if_nametoindex("awdl0"), (*(sdRef + 32) = a3) != 0))
      {
        sdRefa[0] = sdRef[3];
        if (!DNSServiceBrowse(sdRefa, v26 | 0x4000, a3, sdRef[17], sdRef[18], _BonjourBrowser_BrowseHandler, sdRef))
        {
          v24 = 0;
          sdRef[4] = sdRefa[0];
          goto LABEL_73;
        }
      }
    }

    goto LABEL_72;
  }

  if (!v27)
  {
    goto LABEL_72;
  }

  if (gLogCategory_BonjourBrowser <= 40 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x28u)))
  {
    LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_EnsureStartedDNSSD(BonjourBrowserRef)", 0x28u, "Stopping AWDL browse for %s, flags 0x%llX\n", a5, a6, a7, a8, sdRef[17]);
  }

  _BonjourBrowser_RemoveAWDLServices(sdRef);
  v28 = sdRef[4];
  if (!v28)
  {
LABEL_72:
    v24 = 0;
    goto LABEL_73;
  }

  DNSServiceRefDeallocate(v28);
  v24 = 0;
  sdRef[4] = 0;
LABEL_73:
  _BonjourBrowser_HandleError(sdRef, v24, a3, a4, a5, a6, a7, a8, v30);
LABEL_74:
  if ((*(sdRef + 167) & 2) != 0)
  {
    if (!sdRef[9])
    {
      if (gLogCategory_BonjourBrowser <= 30 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x1Eu)))
      {
        LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_NANEnsureStarted(BonjourBrowserRef)", 0x1Eu, "NAN subscriber start: %s\n", v13, v14, v15, v16, sdRef[17]);
      }

      v29 = objc_alloc_init(CUNANSubscriber);
      sdRef[9] = v29;
      [(CUNANSubscriber *)v29 setChangeFlags:4294967291];
      [(CUNANSubscriber *)v29 setControlFlags:*(sdRef + 14)];
      [(CUNANSubscriber *)v29 setDispatchQueue:sdRef[2]];
      -[CUNANSubscriber setServiceType:](v29, "setServiceType:", [MEMORY[0x1E696AEC0] stringWithUTF8String:sdRef[17]]);
      if (sdRef[8])
      {
        [(CUNANSubscriber *)v29 setWfaDiscoveryMode:?];
      }

      sdRefa[0] = MEMORY[0x1E69E9820];
      sdRefa[1] = 3221225472;
      sdRefa[2] = ___BonjourBrowser_NANEnsureStarted_block_invoke;
      sdRefa[3] = &unk_1E73A2800;
      sdRefa[4] = v29;
      sdRefa[5] = sdRef;
      [(CUNANSubscriber *)v29 setEndpointFoundHandler:sdRefa];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = ___BonjourBrowser_NANEnsureStarted_block_invoke_2;
      v33[3] = &unk_1E73A2800;
      v33[4] = v29;
      v33[5] = sdRef;
      [(CUNANSubscriber *)v29 setEndpointLostHandler:v33];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = ___BonjourBrowser_NANEnsureStarted_block_invoke_3;
      v32[3] = &unk_1E73A2828;
      v32[4] = v29;
      v32[5] = sdRef;
      [(CUNANSubscriber *)v29 setEndpointChangedHandler:v32];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = ___BonjourBrowser_NANEnsureStarted_block_invoke_4;
      v31[3] = &unk_1E73A2850;
      v31[4] = v29;
      v31[5] = sdRef;
      [(CUNANSubscriber *)v29 activateWithCompletion:v31];
    }
  }

  else
  {
    _BonjourBrowser_NANEnsureStopped(sdRef, 0, v11, v12, v13, v14, v15, v16);
  }
}

void _LogUtils_ReadCFPreferences(int a1)
{
  if (gLogCFPrefsAppID)
  {
    v2 = gLogCFPrefsAppID;
  }

  else
  {
    v2 = *MEMORY[0x1E695E8A8];
  }

  CFPreferencesAppSynchronize(v2);
  v3 = CFPreferencesCopyAppValue(@"logconfig", v2);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFStringGetTypeID() && ((a1 & 4) != 0 || v4 != gLogCFLastControlPref && (!gLogCFLastControlPref || !CFEqual(v4, gLogCFLastControlPref))))
    {
      _LogControlLockedCF(v4, a1 | 2);
      v6 = gLogCFLastControlPref;
      CFRetain(v4);
      gLogCFLastControlPref = v4;
      if (v6)
      {
        CFRelease(v6);
      }
    }

    CFRelease(v4);
  }
}

void _LogCategory_ApplyActions(uint64_t a1)
{
  v1 = gLogActionList;
  if (gLogActionList)
  {
    do
    {
      if (!strnicmpx(*(v1 + 16), -1, "level"))
      {
        v3 = LUStringToLevel(*(v1 + 24));
        if (v3 != -1)
        {
          v4 = gLogCategoryList;
          if (gLogCategoryList)
          {
            v5 = v3;
            do
            {
              if ((!a1 || v4 == a1) && _LogCategoryMatch(*(v4 + 16), *(v4 + 24), *(v1 + 8)))
              {
                *v4 = v5;
              }

              v4 = *(v4 + 48);
            }

            while (v4);
          }
        }
      }

      v1 = *v1;
    }

    while (v1);
    v6 = gLogActionList;
    if (gLogActionList)
    {
      do
      {
        if (!strnicmpx(*(v6 + 16), -1, "flags"))
        {
          v7 = *(v6 + 24);
          v8 = 0;
          v9 = &v7[strlen(v7)];
LABEL_17:
          v10 = v7;
          while (v10 < v9)
          {
            if (*v10 == 59)
            {
              v11 = v10;
              v12 = 1;
            }

            else
            {
              v13 = v9 - 1 - v10;
              v11 = v10;
              while (v13)
              {
                v14 = *++v11;
                --v13;
                if (v14 == 59)
                {
                  goto LABEL_26;
                }
              }

              v11 = v9;
LABEL_26:
              v12 = v11 < v9;
            }

            v15 = v11 - v10;
            v7 = &v11[v12];
            if (!strnicmpx(v10, v11 - v10, "none"))
            {
              v8 = 0;
              goto LABEL_17;
            }

            if (!strnicmpx(v10, v15, "time"))
            {
              v8 |= 1u;
              goto LABEL_17;
            }

            if (!strnicmpx(v10, v15, "pid"))
            {
              v8 |= 2u;
              goto LABEL_17;
            }

            if (!strnicmpx(v10, v15, "program"))
            {
              v8 |= 4u;
              goto LABEL_17;
            }

            if (!strnicmpx(v10, v15, "category"))
            {
              v8 |= 8u;
              goto LABEL_17;
            }

            if (!strnicmpx(v10, v15, "level"))
            {
              v8 |= 0x10u;
              goto LABEL_17;
            }

            if (!strnicmpx(v10, v15, "prefix"))
            {
              v8 |= 0x20u;
              goto LABEL_17;
            }

            if (!strnicmpx(v10, v15, "function"))
            {
              v8 |= 0x40u;
              goto LABEL_17;
            }

            if (!strnicmpx(v10, v15, "thread"))
            {
              v8 |= 0x80u;
              goto LABEL_17;
            }

            v16 = strnicmpx(v10, v15, "public");
            v10 = v7;
            if (!v16)
            {
              v8 |= 0x200u;
              goto LABEL_17;
            }
          }

          for (i = gLogCategoryList; i; i = *(i + 48))
          {
            if ((!a1 || i == a1) && _LogCategoryMatch(*(i + 16), *(i + 24), *(v6 + 8)))
            {
              if ((v8 & 0x20) != 0)
              {
                v18 = *(i + 24);
                v19 = strchr(v18, 95);
                if (!v19)
                {
                  LODWORD(v19) = v18 + strlen(v18);
                }

                *(i + 32) = v18;
                *(i + 40) = v19 - v18;
              }

              *(i + 16) = *(i + 16) & 0x70000 | v8;
            }
          }
        }

        v6 = *v6;
      }

      while (v6);
      v20 = gLogActionList;
      if (gLogActionList)
      {
        do
        {
          if (!strnicmpx(*(v20 + 16), -1, "rate"))
          {
            v21 = *(v20 + 24);
            v22 = strlen(v21);
            v23 = &v21[v22];
            if (v22 < 1)
            {
              v24 = 0;
              v26 = 0;
            }

            else
            {
              v24 = 0;
              do
              {
                v25 = *v21 - 48;
                if (v25 > 9)
                {
                  break;
                }

                v24 = v25 + 10 * v24;
                ++v21;
              }

              while (v21 < v23);
              v26 = v25 > 9;
            }

            v27 = &v21[v26];
            if (v27 >= v23)
            {
              v28 = 0;
            }

            else
            {
              v28 = 0;
              do
              {
                v29 = *v27;
                if ((v29 - 48) > 9)
                {
                  break;
                }

                v28 = v29 + 10 * v28 - 48;
                ++v27;
              }

              while (v27 < v23);
            }

            if (UpTicksPerSecond_sOnce != -1)
            {
              dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
            }

            v30 = gLogCategoryList;
            if (gLogCategoryList)
            {
              v31 = UpTicksPerSecond_sTicksPerSecond * v28 / 0x3E8uLL;
              do
              {
                if ((!a1 || v30 == a1) && _LogCategoryMatch(*(v30 + 16), *(v30 + 24), *(v20 + 8)))
                {
                  *(v30 + 72) = v31;
                  *(v30 + 88) = v24;
                }

                v30 = *(v30 + 48);
              }

              while (v30);
            }
          }

          v20 = *v20;
        }

        while (v20);
        v32 = gLogActionList;
        if (gLogActionList)
        {
          do
          {
            v33 = strnicmpx(*(v32 + 16), -1, "output");
            if (!v33 || !strnicmpx(*(v32 + 16), -1, "output2"))
            {
              v34 = gLogCategoryList;
              if (gLogCategoryList)
              {
                if (v33)
                {
                  v35 = 64;
                }

                else
                {
                  v35 = 56;
                }

                do
                {
                  if ((!a1 || v34 == a1) && _LogCategoryMatch(*(v34 + 16), *(v34 + 24), *(v32 + 8)))
                  {
                    v36 = *(v32 + 24);
                    if (!*v36)
                    {
                      v37 = 0;
LABEL_96:
                      v38 = *(v34 + v35);
                      if (v38 != v37)
                      {
                        if (v38)
                        {
                          --*(v38 + 8);
                        }

                        if (v37)
                        {
                          ++*(v37 + 2);
                        }

                        *(v34 + v35) = v37;
                      }

                      goto LABEL_102;
                    }

                    v45 = 0;
                    if (!_LogOutputCreate(v36, &v45))
                    {
                      v37 = v45;
                      goto LABEL_96;
                    }
                  }

LABEL_102:
                  v34 = *(v34 + 48);
                }

                while (v34);
              }
            }

            v32 = *v32;
          }

          while (v32);
          v39 = gLogActionList;
          if (gLogActionList)
          {
            while (strnicmpx(*(v39 + 16), -1, "o1l"))
            {
              if (!strnicmpx(*(v39 + 16), -1, "o2l"))
              {
                goto LABEL_109;
              }

              if (!strnicmpx(*(v39 + 16), -1, "output1Level"))
              {
                break;
              }

              if (!strnicmpx(*(v39 + 16), -1, "output2Level"))
              {
LABEL_109:
                v40 = 64;
                goto LABEL_111;
              }

LABEL_119:
              v39 = *v39;
              if (!v39)
              {
                goto LABEL_120;
              }
            }

            v40 = 56;
LABEL_111:
            v41 = LUStringToLevel(*(v39 + 24));
            v42 = gLogCategoryList;
            if (gLogCategoryList)
            {
              v43 = v41;
              do
              {
                if ((!a1 || v42 == a1) && _LogCategoryMatch(*(v42 + 16), *(v42 + 24), *(v39 + 8)))
                {
                  v44 = *(v42 + v40);
                  if (v44)
                  {
                    *(v44 + 24) = v43;
                  }
                }

                v42 = *(v42 + 48);
              }

              while (v42);
            }

            goto LABEL_119;
          }
        }
      }
    }
  }

LABEL_120:

  _LogOutputDeleteUnused();
}

void _LogOutputDeleteUnused()
{
  v0 = gLogOutputList;
  if (gLogOutputList)
  {
    v1 = &gLogOutputList;
    do
    {
      v2 = v1;
      v1 = v0;
      while (1)
      {
        v0 = *v1;
        if (*(v1 + 2))
        {
          break;
        }

        *v2 = v0;
        _LogOutputDelete(v1);
        v1 = *v2;
        if (!*v2)
        {
          return;
        }
      }
    }

    while (v0);
  }
}

uint64_t _LogOutputCreate(char *a1, uint64_t **a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = &gLogOutputList;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (!strnicmpx(v4[2], -1, a1))
    {
      v5 = 0;
      goto LABEL_146;
    }
  }

  v6 = malloc_type_calloc(1uLL, 0x68uLL, 0x10B2040D471ABDAuLL);
  if (!v6)
  {
    return 4294960568;
  }

  v4 = v6;
  *(v6 + 2) = 0;
  v7 = strdup(a1);
  v4[2] = v7;
  if (!v7)
  {
LABEL_149:
    v5 = 4294960568;
    goto LABEL_139;
  }

  *(v4 + 6) = -1;
    ;
  }

  v9 = i - a1;
  if (i == a1)
  {
    v5 = 4294960540;
    goto LABEL_139;
  }

  if (*i)
  {
    v10 = i + 1;
  }

  else
  {
    v10 = i;
  }

  if (strnicmpx(a1, i - a1, "callback"))
  {
    if (strnicmpx(a1, v9, "console"))
    {
      if (strnicmpx(a1, v9, "file"))
      {
        if (!strnicmpx(a1, v9, "oslog"))
        {
          v18 = _LogOutputOSLog_Setup(v4, v10);
          if (v18)
          {
LABEL_141:
            v5 = v18;
            goto LABEL_139;
          }

          goto LABEL_145;
        }

        if (strnicmpx(a1, v9, "syslog"))
        {
LABEL_20:
          v5 = 4294960591;
LABEL_139:
          _LogOutputDelete(v4);
          return v5;
        }

        goto LABEL_44;
      }

      v4[4] = _LogOutputFile_Writer;
      *(v4 + 10) = 2;
      v19 = v4[7];
      if (v19)
      {
        if (v19 != *MEMORY[0x1E69E9848] && v19 != *MEMORY[0x1E69E9858])
        {
          fclose(v19);
        }
      }

      v4[7] = 0;
      if (*v10 && strnicmpx(v10, -1, "stderr"))
      {
        if (strnicmpx(v10, -1, "stdout"))
        {
          v21 = *v10;
          if (*v10)
          {
            while (1)
            {
              v22 = v10;
              if (!v21)
              {
                break;
              }

              while (v21 != 61)
              {
                v23 = *++v22;
                v21 = v23;
                if (!v23)
                {
                  goto LABEL_138;
                }
              }

              v24 = v22 + 1;
              v25 = -1;
              for (j = 1; v22[j] && v22[j] != 59; ++j)
              {
                ++v25;
              }

              v27 = &v22[j];
              if (v22[j])
              {
                v28 = v27 + 1;
              }

              else
              {
                v28 = &v22[j];
              }

              if (strnicmpx(v10, v22 - v10, "path"))
              {
                if (strnicmpx(v10, v22 - v10, "roll"))
                {
                  if (!strnicmpx(v10, v22 - v10, "backup"))
                  {
                    if (j < 2)
                    {
                      v31 = 0;
                      v29 = 1;
                      v30 = v22 + 1;
                    }

                    else if (*v24 == 35)
                    {
                      v29 = 1;
                      v30 = v22 + 1;
                      v31 = 1;
                    }

                    else
                    {
                      v48 = 2;
                      while (1)
                      {
                        v49 = v48;
                        if (!v25)
                        {
                          break;
                        }

                        v50 = v22[v48++];
                        --v25;
                        if (v50 == 35)
                        {
                          v29 = v49;
                          v30 = &v22[v49];
                          goto LABEL_118;
                        }
                      }

                      v30 = &v22[v48];
                      v29 = j;
LABEL_118:
                      v31 = v29 < j;
                    }

                    if (v29 != j && *v30 != 35)
                    {
                      goto LABEL_20;
                    }

                    v51 = v29 - 1;
                    if (v29 == 1)
                    {
                      v52 = 0;
                    }

                    else
                    {
                      v53 = malloc_type_malloc(v29, 0x100004077774924uLL);
                      if (!v53)
                      {
                        goto LABEL_149;
                      }

                      v52 = v53;
                      memcpy(v53, v24, v51);
                      v52[v51] = 0;
                    }

                    v54 = v4[11];
                    if (v54)
                    {
                      free(v54);
                    }

                    v4[11] = v52;
                    v55 = &v30[v31];
                    if (&v30[v31] >= v27)
                    {
                      v56 = 0;
                    }

                    else
                    {
                      v56 = 0;
                      do
                      {
                        v57 = *v55;
                        if ((v57 - 48) > 9)
                        {
                          break;
                        }

                        v56 = v57 + 10 * v56 - 48;
                        ++v55;
                      }

                      while (v55 < v27);
                    }

                    if (v55 != v27)
                    {
                      goto LABEL_20;
                    }

                    *(v4 + 24) = v56;
                  }
                }

                else
                {
                  v38 = 0;
                  if (j >= 2)
                  {
                    while (1)
                    {
                      v39 = *v24;
                      v40 = v39;
                      if ((v39 - 48) > 9)
                      {
                        break;
                      }

                      v38 = v39 + 10 * v38 - 48;
                      if (++v24 >= v27)
                      {
                        goto LABEL_100;
                      }
                    }

                    v41 = v38 << 20;
                    if (v39 == 66)
                    {
                      v42 = v24 + 1;
                    }

                    else
                    {
                      v42 = v24;
                    }

                    v43 = v39 == 75;
                    if (v39 == 75)
                    {
                      v44 = v24 + 1;
                    }

                    else
                    {
                      v44 = v42;
                    }

                    if (v43)
                    {
                      v38 <<= 10;
                    }

                    if (v40 == 77)
                    {
                      ++v24;
                    }

                    else
                    {
                      v24 = v44;
                    }

                    if (v40 == 77)
                    {
                      v38 = v41;
                    }
                  }

LABEL_100:
                  if (v24 != v27 && *v24 != 35)
                  {
                    goto LABEL_20;
                  }

                  v4[9] = v38;
                  v45 = v24 >= v27 ? v24 : v24 + 1;
                  if (v45 >= v27)
                  {
                    v46 = 0;
                  }

                  else
                  {
                    v46 = 0;
                    do
                    {
                      v47 = *v45;
                      if ((v47 - 48) > 9)
                      {
                        break;
                      }

                      v46 = v47 + 10 * v46 - 48;
                      ++v45;
                    }

                    while (v45 < v27);
                  }

                  if (v45 != v27)
                  {
                    goto LABEL_20;
                  }

                  *(v4 + 20) = v46;
                }
              }

              else
              {
                if (j == 1)
                {
                  goto LABEL_153;
                }

                v32 = malloc_type_malloc(j, 0x100004077774924uLL);
                if (!v32)
                {
                  goto LABEL_149;
                }

                v33 = v32;
                memcpy(v32, v22 + 1, j - 1);
                v33[j - 1] = 0;
                v34 = v4[6];
                if (v34)
                {
                  free(v34);
                }

                v4[6] = v33;
                v35 = strrchr(v33, 47);
                if (v35)
                {
                  v36 = v35 - v33;
                  if ((v35 - v33) > 0x400)
                  {
LABEL_153:
                    v5 = 4294960592;
                    goto LABEL_139;
                  }

                  __memcpy_chk();
                  v62[v36] = 0;
                  mkpath(v62, 0x1F8u, 504);
                  v33 = v4[6];
                }

                v37 = fopen(v33, "a");
                v4[7] = v37;
                if (!v37)
                {
                  v5 = 4294960541;
                  goto LABEL_139;
                }

                fseeko(v37, 0, 2);
                v4[8] = ftello(v4[7]);
              }

              v21 = *v28;
              v10 = v28;
              if (!*v28)
              {
                goto LABEL_136;
              }
            }

LABEL_138:
            v5 = 4294960554;
            goto LABEL_139;
          }

LABEL_136:
          v58 = v4[7];
          if (!v58)
          {
            goto LABEL_20;
          }

          goto LABEL_144;
        }

        v59 = MEMORY[0x1E69E9858];
      }

      else
      {
        v59 = MEMORY[0x1E69E9848];
      }

      v58 = *v59;
      v4[7] = *v59;
LABEL_144:
      setvbuf(v58, 0, 2, 0);
      goto LABEL_145;
    }

    if (_LogOutputOSLog_Setup(v4, v10))
    {
LABEL_44:
      v18 = _LogOutputSysLog_Setup(v4, v10);
      if (v18)
      {
        goto LABEL_141;
      }
    }
  }

  else
  {
    v61 = 0;
    v4[6] = 0;
    v4[7] = 0;
    v11 = *v10;
    if (*v10)
    {
      do
      {
        v12 = v10;
        if (!v11)
        {
          goto LABEL_138;
        }

        while (v11 != 61)
        {
          v13 = *++v12;
          v11 = v13;
          if (!v13)
          {
            goto LABEL_138;
          }
        }

        v14 = v12 - v10;
          ;
        }

        v16 = k - (v12 + 1);
        if (*k)
        {
          v17 = k + 1;
        }

        else
        {
          v17 = k;
        }

        if (strnicmpx(v10, v14, "func"))
        {
          if (!strnicmpx(v10, v14, "arg"))
          {
            if (v16 > 0x3F)
            {
              goto LABEL_152;
            }

            __memcpy_chk();
            v62[v16] = 0;
            if (sscanf(v62, "%p", v4 + 7) != 1)
            {
              goto LABEL_138;
            }
          }
        }

        else
        {
          if (v16 > 0x3F)
          {
LABEL_152:
            v5 = 4294960553;
            goto LABEL_139;
          }

          __memcpy_chk();
          v62[v16] = 0;
          if (sscanf(v62, "%p", &v61) != 1)
          {
            goto LABEL_138;
          }

          v4[6] = v61;
        }

        v11 = *v17;
        v10 = v17;
      }

      while (*v17);
    }

    v4[4] = _LogOutputCallBack_Writer;
    *(v4 + 10) = 11;
  }

LABEL_145:
  v5 = 0;
  *v4 = gLogOutputList;
  gLogOutputList = v4;
LABEL_146:
  *a2 = v4;
  return v5;
}

uint64_t _LogOutputOSLog_Setup(uint64_t a1, unsigned __int8 *a2)
{
  *(a1 + 32) = _LogOutputOSLog_Writer;
  *(a1 + 40) = 14;
  v4 = *(a1 + 48);
  if (v4)
  {
    free(v4);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 56);
  if (v5)
  {

    *(a1 + 56) = 0;
  }

  *(a1 + 64) = 0;
  v6 = *(a1 + 72);
  if (v6)
  {
    free(v6);
    *(a1 + 72) = 0;
  }

  v7 = *a2;
  if (!*a2)
  {
    return 0;
  }

  do
  {
    v8 = a2;
    if (!v7)
    {
      return 4294960554;
    }

    while (v7 != 61)
    {
      v9 = *++v8;
      v7 = v9;
      if (!v9)
      {
        return 4294960554;
      }
    }

    v10 = v8 - a2;
    v11 = v8 + 1;
      ;
    }

    v13 = i - v11;
    if (*i)
    {
      v14 = i + 1;
    }

    else
    {
      v14 = i;
    }

    if (strnicmpx(a2, v10, "category"))
    {
      if (strnicmpx(a2, v10, "public"))
      {
        if (strnicmpx(a2, v10, "sensitive"))
        {
          if (strnicmpx(a2, v10, "subsystem"))
          {
            if (strnicmpx(a2, v10, "type"))
            {
              goto LABEL_57;
            }

            if (strnicmpx(v11, v13, "debug"))
            {
              if (strnicmpx(v11, v13, "default"))
              {
                if (strnicmpx(v11, v13, "error"))
                {
                  if (strnicmpx(v11, v13, "fault"))
                  {
                    if (strnicmpx(v11, v13, "info"))
                    {
                      goto LABEL_57;
                    }

                    v15 = 1;
                  }

                  else
                  {
                    v15 = 17;
                  }
                }

                else
                {
                  v15 = 16;
                }
              }

              else
              {
                v15 = 0;
              }
            }

            else
            {
              v15 = 2;
            }

            *(a1 + 64) = 1;
            *(a1 + 65) = v15;
          }

          else
          {
            v21 = malloc_type_malloc(v13 + 1, 0x100004077774924uLL);
            if (!v21)
            {
              return 4294960568;
            }

            v22 = v21;
            memcpy(v21, v11, v13);
            v22[v13] = 0;
            v23 = *(a1 + 72);
            if (v23)
            {
              free(v23);
            }

            *(a1 + 72) = v22;
          }
        }

        else
        {
          v20 = !strnicmpx(v11, v13, "true") || !strnicmpx(v11, v13, "yes") || !strnicmpx(v11, v13, "y") || !strnicmpx(v11, v13, "on") || strnicmpx(v11, v13, "1") == 0;
          *(a1 + 67) = v20;
        }
      }

      else
      {
        v19 = !strnicmpx(v11, v13, "true") || !strnicmpx(v11, v13, "yes") || !strnicmpx(v11, v13, "y") || !strnicmpx(v11, v13, "on") || strnicmpx(v11, v13, "1") == 0;
        *(a1 + 66) = v19;
      }
    }

    else
    {
      v16 = malloc_type_malloc(v13 + 1, 0x100004077774924uLL);
      if (!v16)
      {
        return 4294960568;
      }

      v17 = v16;
      memcpy(v16, v11, v13);
      v17[v13] = 0;
      v18 = *(a1 + 48);
      if (v18)
      {
        free(v18);
      }

      *(a1 + 48) = v17;
    }

LABEL_57:
    v7 = *v14;
    a2 = v14;
  }

  while (*v14);
  v24 = *(a1 + 72);
  if (v24)
  {
    v25 = *(a1 + 48);
    if (v25)
    {
      v26 = os_log_create(v24, v25);
      *(a1 + 56) = v26;
      if (!v26)
      {
        return 4294960568;
      }
    }
  }

  return 0;
}

void CUAppendV(id *a1, int *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = 0;
  VASPrintF(&v16, a3, a4, a4, a5, a6, a7, a8);
  v10 = v16;
  if (!v16)
  {
    return;
  }

  if (*v16)
  {
    v11 = *a1;
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E696AD60]);
      *a1 = v11;
    }

    v12 = *a2;
    v15 = v11;
    if ((*a2 & 1) == 0)
    {
      v12 |= 1u;
LABEL_20:
      CFStringAppendCString(*a1, v10, 0x8000100u);
      free(v10);
      *a2 = v12;

      return;
    }

    if ((v12 & 2) != 0)
    {
      if ((v12 & 8) != 0)
      {
        [v11 appendString:{@", "}];
      }

      goto LABEL_20;
    }

    if ((v12 & 4) != 0)
    {
      v14 = @": ";
    }

    else
    {
      if ((v12 & 8) == 0)
      {
LABEL_19:
        v12 |= 2u;
        goto LABEL_20;
      }

      v14 = @", ";
    }

    [v11 appendString:{v14, v11}];
    goto LABEL_19;
  }

  v13 = v16;

  free(v13);
}

uint64_t PrintFWriteErrorObject(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v70 = *MEMORY[0x1E69E9840];
  v10 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    LODWORD(v20) = 0;
    v68 = 0;
    v21 = *MEMORY[0x1E696AA08];
    while (1)
    {
      if (v19)
      {
        v22 = PrintFCore(a1, " -> ", v11, v12, v13, v14, v15, v16, v67);
        if ((v22 & 0x80000000) != 0)
        {
          v20 = v22;
          v23 = v18;
          goto LABEL_34;
        }

        LODWORD(v20) = v22 + v20;
      }

      v23 = [v10 userInfo];

      v24 = [v23 objectForKeyedSubscript:@"cuErrorDesc"];

      if (v24)
      {
        v31 = PrintFCore(a1, "%@", v25, v26, v27, v28, v29, v30, v24);
        if ((v31 & 0x80000000) != 0)
        {
          v20 = v31;
          v17 = v24;
          goto LABEL_34;
        }

        v20 = (v31 + v20);
        v17 = v24;
      }

      else
      {
        v32 = CUErrorCFErrorToString(v10);
        if (v32)
        {
          v39 = PrintFCore(a1, "%s", v33, v34, v35, v36, v37, v38, v32);
          if ((v39 & 0x80000000) != 0)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v69[0] = 0;
          v40 = NSErrorToOSStatusEx(v10, &v68);
          if (v68)
          {
            DebugGetErrorStringEx(0, v40, v69, 128);
          }

          if (v69[0])
          {
            v39 = PrintFCore(a1, "%s", v41, v42, v43, v44, v45, v46, v69);
            if ((v39 & 0x80000000) != 0)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v47 = [v10 domain];
            [v10 code];
            v39 = PrintFCore(a1, "%@:%ld", v48, v49, v50, v51, v52, v53, v47);

            if ((v39 & 0x80000000) != 0)
            {
LABEL_37:
              v17 = 0;
              v20 = v39;
              goto LABEL_34;
            }
          }
        }

        v20 = (v39 + v20);
        TypeID = CFStringGetTypeID();
        v17 = CFDictionaryGetTypedValue(v23, @"cuErrorMsg", TypeID, 0);
        if ([v17 length])
        {
          v61 = PrintFCore(a1, " '%@'", v55, v56, v57, v58, v59, v60, v17);
          v20 = (v20 & ~(v61 >> 31)) + v61;
          if (v61 < 0)
          {
            goto LABEL_34;
          }
        }
      }

      v62 = [v23 objectForKeyedSubscript:v21];

      if (!v62)
      {
        v10 = 0;
        goto LABEL_34;
      }

      v10 = v62;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      ++v19;
      v18 = v23;
      if (v19 == 4)
      {
        goto LABEL_34;
      }
    }

    v65 = PrintFCore(a1, "-> ?", v11, v12, v13, v14, v15, v16, v67);
    if (v65 >= 0)
    {
      v66 = v20;
    }

    else
    {
      v66 = 0;
    }

    v20 = (v66 + v65);
LABEL_34:

    return v20;
  }

  else if (v10)
  {
    v63 = PrintFCore(a1, "<<non-error>>", v11, v12, v13, v14, v15, v16, v67);

    return v63;
  }

  else
  {

    return PrintFCore(a1, "kNoErr", v11, v12, v13, v14, v15, v16, a9);
  }
}

__CFError *CUErrorCFErrorToString(__CFError *result)
{
  if (result)
  {
    v1 = result;
    Domain = CFErrorGetDomain(result);
    Code = CFErrorGetCode(v1);

    return CUErrorDomainCodeToString(Domain, Code);
  }

  return result;
}

uint64_t CUErrorDomainCodeToString(const __CFString *a1, int a2)
{
  v11 = 0;
  v12 = 0;
  CFStringGetOrCopyCStringUTF8(a1, &v12, &v11, 0);
  v3 = v12;
  if (!v12)
  {
    return 0;
  }

  if (MEMORY[0x1EEE86640] && (v4 = CUErrorDomainTableGet(), (v5 = *v4) != 0))
  {
    while (1)
    {
      if (!strcasecmp(v5, v3))
      {
        v6 = *(v4 + 8);
        v7 = *(v6 + 8);
        if (v7)
        {
          v8 = 0;
          do
          {
            if (*v6 == a2)
            {
              v8 = v7;
            }

            v7 = *(v6 + 24);
            v6 += 16;
          }

          while (v7);
          if (v8)
          {
            break;
          }
        }
      }

      v9 = *(v4 + 16);
      v4 += 16;
      v5 = v9;
      if (!v9)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v8 = 0;
  }

  if (v11)
  {
    free(v11);
  }

  return v8;
}

uint64_t CFStringGetOrCopyCStringUTF8(const __CFString *a1, const char **a2, UInt8 **a3, size_t *a4)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v9 = CStringPtr;
    if (!a4)
    {
      v11 = 0;
      goto LABEL_9;
    }

    v10 = strlen(CStringPtr);
    v11 = 0;
    goto LABEL_7;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  usedBufLen = MaximumSizeForEncoding;
  v14 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (!v14)
  {
    return 4294960568;
  }

  v11 = v14;
  v17.location = 0;
  v17.length = Length;
  if (CFStringGetBytes(a1, v17, 0x8000100u, 0, 0, v14, MaximumSizeForEncoding, &usedBufLen) != Length)
  {
    free(v11);
    return 4294960596;
  }

  v10 = usedBufLen;
  v11[usedBufLen] = 0;
  v9 = v11;
  if (a4)
  {
LABEL_7:
    *a4 = v10;
  }

LABEL_9:
  result = 0;
  *a2 = v9;
  *a3 = v11;
  return result;
}

void CUDispatchTimerSetEx(NSObject *a1, int a2, double a3, double a4, double a5)
{
  v8 = (a3 * 1000000000.0);
  v9 = dispatch_time((a2 != 0) << 63, v8);
  if (a5 <= -10.0)
  {
    v10 = v8 / 0xA;
  }

  else if (a5 <= -4.0)
  {
    v10 = v8 >> 2;
  }

  else
  {
    v10 = (a5 * 1000000000.0);
  }

  if (a4 < 0.0)
  {
    v11 = -1;
  }

  else
  {
    v11 = (a4 * 1000000000.0);
  }

  dispatch_source_set_timer(a1, v9, v11, v10);
}

const __CFDictionary *CFDictionaryGetTypedValue(const __CFDictionary *result, const void *a2, uint64_t a3, int *a4)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v6 = result;
      v7 = CFGetTypeID(result);
      v8 = v7 == a3;
      if (v7 == a3)
      {
        result = v6;
      }

      else
      {
        result = 0;
      }

      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = -6756;
      }
    }

    else
    {
      v9 = -6727;
    }
  }

  else
  {
    v9 = -6705;
  }

  if (a4)
  {
    *a4 = v9;
  }

  return result;
}

id CUDescriptionWithLevel(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    v11 = [v3 descriptionWithLevel:a2];
    goto LABEL_10;
  }

  if (a2 > 0x14u)
  {
    if (a2 >= 0x32u && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v11 = [v3 shortDescription];
      goto LABEL_10;
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v11 = [v3 detailedDescription];
    goto LABEL_10;
  }

  v11 = NSPrintF("%@", v4, v5, v6, v7, v8, v9, v10, v3);
LABEL_10:
  v12 = v11;

  return v12;
}

void NSDecodeNSDictionaryOfClassesIfPresent(void *a1, void *a2, uint64_t a3, uint64_t a4, void **a5)
{
  v8 = a1;
  v9 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if ([v8 containsValueForKey:v9])
  {
    v10 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), a3, a4, 0}];
    v11 = [v8 decodeObjectOfClasses:v10 forKey:v9];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = MEMORY[0x1E695DF30];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      [v12 raise:*MEMORY[0x1E695D940] format:{@"bad dictionary type for key %@, %@", v9, v14}];
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __NSDecodeNSDictionaryOfClassesIfPresent_block_invoke;
    v19[3] = &unk_1E73A4728;
    v22 = a3;
    v15 = v9;
    v20 = v15;
    v21 = &v24;
    v23 = a4;
    [v11 enumerateKeysAndObjectsUsingBlock:v19];
    if (*(v25 + 24) == 1)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"bad element type for key %@", v15}];
    }

    v16 = *a5;
    *a5 = v11;
    v17 = v11;
  }

  _Block_object_dispose(&v24, 8);
}

void sub_191EBB3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void NSDecodeNSArrayOfClassIfPresent(void *a1, void *a2, uint64_t a3, void **a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a2;
  v25 = v6;
  if ([v6 containsValueForKey:v7])
  {
    v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), a3, 0}];
    v9 = [v25 decodeObjectOfClasses:v8 forKey:v7];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v23 = v8;
    v11 = MEMORY[0x1E695D940];
    if ((isKindOfClass & 1) == 0)
    {
      v12 = MEMORY[0x1E695DF30];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      [v12 raise:*v11 format:{@"bad array type for key %@, class %@", v7, v14}];
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v16)
    {
      v17 = *v27;
      v18 = *v11;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v26 + 1) + 8 * i);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [MEMORY[0x1E695DF30] raise:v18 format:{@"bad array element type for key %@ : %@", v7, v20}];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }

    v21 = *a4;
    *a4 = v15;
    v22 = v15;
  }
}

void NSDecodeStandardContainerIfPresent(void *a1, void *a2, uint64_t a3, void **a4)
{
  v19 = a1;
  v6 = a2;
  if ([v19 containsValueForKey:v6])
  {
    v18 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v18 setWithObjects:{v17, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [v19 decodeObjectOfClasses:v13 forKey:v6];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"bad type for key %@ : %@", v6, v14}];
    }

    v15 = *a4;
    *a4 = v14;
    v16 = v14;
  }
}

char *IPv6AddressToCString(_BYTE *a1, unsigned int a2, int a3, unsigned int a4, char *a5, char a6)
{
  v8 = a3;
  v9 = a2;
  v52 = *MEMORY[0x1E69E9840];
  if (a3 > 0 || (v10 = a5, a3 == -2))
  {
    *a5 = 91;
    v10 = a5 + 1;
  }

  if (*a1 || a1[1] || a1[2] || a1[3])
  {
    v11 = 0;
    goto LABEL_9;
  }

  v11 = !a1[4] && !a1[5] && !a1[6] && !a1[7] && !a1[8] && !a1[9] && a1[10] == 255 && a1[11] == 255;
  if (a1[4] || a1[5] || a1[6] || a1[7] || a1[8] || a1[9] || a1[10] || a1[11])
  {
LABEL_9:
    v12 = 0;
    if (v11)
    {
      goto LABEL_93;
    }

LABEL_10:
    if (!v12)
    {
      v13 = 0;
      v14 = v51;
      while (1)
      {
        v15 = v13 | 1;
        v16 = a1[v13];
        if (v16 >= 0x10)
        {
          *v14 = a0123456789abcd[v16 >> 4];
          LODWORD(v16) = v16 & 0xF;
          v17 = 1;
        }

        else
        {
          if (!a1[v13])
          {
            v19 = 0;
            v21 = 0;
            v13 += 2;
            v20 = a1[v15];
            if (v20 < 0x10)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }

          v17 = 0;
        }

        v18 = a0123456789abcd[v16];
        v19 = v17 + 1;
        v14[v17] = v18;
        v13 += 2;
        v20 = a1[v15];
LABEL_17:
        v21 = v19 + 1;
        v14[v19] = a0123456789abcd[v20 >> 4];
LABEL_18:
        *&v14[v21] = a0123456789abcd[v20 & 0xF];
        v14 += 5;
        if (v13 >= 16)
        {
          v22 = 0;
          v23 = a1 + 15;
          for (i = 28; i != -4; i -= 4)
          {
            if (*(v23 - 1))
            {
              v22 = 0;
            }

            else if (*v23)
            {
              v22 = 0;
            }

            else
            {
              ++v22;
            }

            *&v50[i + 64] = v22;
            v23 -= 2;
          }

          v25 = 0;
          v26 = 1;
          v27 = -1;
          do
          {
            if (*&v50[4 * v25 + 64] > v26)
            {
              v26 = *&v50[4 * v25 + 64];
              v27 = v25;
            }

            ++v25;
          }

          while (v25 != 8);
          v28 = 0;
          while (1)
          {
            if (v28 == v27)
            {
              if (!v27)
              {
                *v10++ = 58;
              }

              *v10 = 58;
              v28 = v27 - 1 + *&v50[4 * v27 + 64];
            }

            else
            {
              v29 = v51[5 * v28];
              if (v29)
              {
                v30 = &v51[5 * v28 + 1];
                do
                {
                  *v10++ = v29;
                  v31 = *v30++;
                  v29 = v31;
                }

                while (v31);
              }

              if (v28 == 7)
              {
                goto LABEL_43;
              }

              *v10 = 58;
            }

            ++v10;
            v32 = v28++ < 7;
            if (!v32)
            {
              goto LABEL_43;
            }
          }
        }
      }
    }

LABEL_93:
    *v10 = 14906;
    v44 = v10 + 2;
    if (v11)
    {
      goto LABEL_94;
    }

LABEL_90:
    v10 = v44;
    goto LABEL_95;
  }

  if (!a1[12] && !a1[13] && !a1[14])
  {
    v12 = a1[15] > 1u;
    if (v11)
    {
      goto LABEL_93;
    }

    goto LABEL_10;
  }

  *v10 = 14906;
  v44 = v10 + 2;
  if (!v11)
  {
    goto LABEL_90;
  }

LABEL_94:
  v10[2] = 102;
  *(v10 + 3) = 979789414;
  v10 += 7;
LABEL_95:
  for (j = 12; ; ++j)
  {
    v46 = a1[j];
    v47 = v50;
    do
    {
      *v47++ = (v46 % 0xA) | 0x30;
      v32 = v46 > 9;
      v46 /= 0xAu;
    }

    while (v32);
    while (v47 > v50)
    {
      v48 = *--v47;
      *v10++ = v48;
    }

    if (j == 15)
    {
      break;
    }

    *v10++ = 46;
  }

LABEL_43:
  if (a2)
  {
    *v10 = 37;
    if (a6)
    {
      *(v10 + 1) = 13618;
      v10 += 3;
    }

    else
    {
      ++v10;
    }

    v33 = if_indextoname(a2, v50);
    if (v33 && (v34 = *v33) != 0)
    {
      v35 = (v33 + 1);
      do
      {
        *v10++ = v34;
        v36 = *v35++;
        v34 = v36;
      }

      while (v36);
    }

    else
    {
      v39 = v49;
      do
      {
        *v39++ = (v9 % 0xA) | 0x30;
        v32 = v9 > 9;
        v9 /= 0xAu;
      }

      while (v32);
      while (v39 > v49)
      {
        v40 = *--v39;
        *v10++ = v40;
      }
    }
  }

  if (v8 < 1)
  {
    if (v8 == -2)
    {
      *v10++ = 93;
    }
  }

  else
  {
    *v10 = 14941;
    v37 = v50;
    do
    {
      *v37++ = (v8 % 0xA) | 0x30;
      v32 = v8 > 9;
      v8 /= 0xAu;
    }

    while (v32);
    v10 += 2;
    while (v37 > v50)
    {
      v38 = *--v37;
      *v10++ = v38;
    }
  }

  if ((a4 & 0x80000000) == 0)
  {
    *v10 = 47;
    v41 = v50;
    do
    {
      *v41++ = (a4 % 0xA) | 0x30;
      v32 = a4 > 9;
      a4 /= 0xAu;
    }

    while (v32);
    ++v10;
    while (v41 > v50)
    {
      v42 = *--v41;
      *v10++ = v42;
    }
  }

  *v10 = 0;
  return a5;
}