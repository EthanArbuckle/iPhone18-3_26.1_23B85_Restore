uint64_t mt_CalculateMTPreciseContactVelocity(uint64_t result, uint64_t a2, double a3)
{
  if (result && a2)
  {
    if (*(a2 + 1) - 7 < 0xFFFFFFFD || *(a2 + 12) == 3.4028e38 && *(a2 + 16) == 3.4028e38)
    {
      *(a2 + 12) = 0;
      *(a2 + 16) = 0;
    }

    else
    {
      v3 = vdup_n_s32(0x447A0000u);
      v4 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vmul_f32(vsub_f32(vdiv_f32(*(a2 + 4), v3), *(result + 68)), v3)), vdupq_lane_s64(COERCE__INT64(a3 - *(result + 8)), 0)));
      *(a2 + 12) = v4;
      if (v4.f32[0] == 0.0 && v4.f32[1] == 0.0)
      {
        *(a2 + 12) = 1123680256;
      }
    }
  }

  return result;
}

float mt_FillMTContactDirectFromBinary(unsigned __int16 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, char a5, double a6)
{
  if (a1 && a2 && a3)
  {
    v9 = *(a2 + 8);
    v10 = *(a2 + 20);
    *a2 = a4;
    *(a2 + 8) = a6;
    v11 = v10 - 3;
    v12 = a6 - v9;
    if (v12 < 0.04 && v11 < 2 && a3[1] == 0)
    {
      v15 = 7;
    }

    else
    {
      v15 = a3[1];
    }

    *(a2 + 16) = *a3;
    *(a2 + 20) = v15;
    v16 = a3[3];
    *(a2 + 24) = a3[2];
    *(a2 + 28) = v16;
    LOWORD(v12) = *(a3 + 13);
    v17 = LODWORD(v12);
    *(a2 + 48) = vcvts_n_f32_u32(*(a3 + 9), 8uLL);
    *(a2 + 52) = v17;
    LOWORD(v17) = *(a3 + 10);
    v18.f32[0] = *(a3 + 12) * 3.1416;
    v18.f32[1] = LODWORD(v17);
    *(a2 + 88) = vmul_f32(v18, 0x3B80000038000000);
    v19.i32[0] = *(a3 + 4);
    v19.i32[1] = *(a3 + 5);
    v20 = vcvt_f32_s32(vadd_s32(v19, v19));
    *(a2 + 76) = vmul_f32(v20, vdup_n_s32(0x3D800000u));
    v21 = a1[1];
    v22 = (*a1 - v21);
    v23 = (v20.f32[0] / 160.0) * 1000.0 / v22;
    v24 = a1[3];
    v25 = (a1[2] - v24);
    *&v26 = (v20.f32[1] / 160.0) * 1000.0 / v25;
    *(a2 + 40) = v23;
    *(a2 + 44) = *&v26;
    HIWORD(v26) = 14336;
    *&v27 = (*(a3 + 8) * 3.1416) * 0.000030518;
    LOWORD(v26) = *(a3 + 6);
    *(a2 + 56) = *&v27;
    *(a2 + 60) = v26 / 100.0;
    LOWORD(v27) = *(a3 + 7);
    *(a2 + 64) = v27 / 100.0;
    v28 = *(a3 + 2);
    v29 = *(a3 + 3);
    if ((a5 & 1) == 0)
    {
      v28 = alg_ClipPosPointToScreenEdge(v28 | (v29 << 16), a1);
      v29 = HIWORD(v28);
      v21 = a1[1];
      v24 = a1[3];
      v22 = (*a1 - v21);
      v25 = (a1[2] - v24);
    }

    *(a2 + 68) = v28 / 100.0;
    *(a2 + 72) = v29 / 100.0;
    *&a6 = (v28 - v21) / v22;
    *(a2 + 32) = LODWORD(a6);
    *(a2 + 36) = (v29 - v24) / v25;
    *(a2 + 84) = *(a3 + 14);
  }

  return *&a6;
}

uint64_t MTDeviceBeginRecordingToFile(uint64_t a1, const char *a2, int a3)
{
  result = 3758097090;
  if (a1 && a2)
  {
    if (*(a1 + 2176))
    {
      if (*(a1 + 2168))
      {
        return 3758097093;
      }

      else
      {
        RecordingHeader = _mt_CreateRecordingHeader(a1);
        *(a1 + 2164) = a3;
        *(a1 + 2208) = 0u;
        if (!RecordingHeader)
        {
          return 3758097084;
        }

        v8 = RecordingHeader;
        v9 = open(a2, 1537, 420);
        *(a1 + 2184) = v9;
        if ((v9 & 0x80000000) == 0)
        {
          fchmod(v9, 0x1A4u);
          dispatch_semaphore_wait(*(a1 + 2176), 0xFFFFFFFFFFFFFFFFLL);
          *(a1 + 2168) = 1;
          __buf = 2;
          Length = CFDataGetLength(v8);
          TimeStamp_ms = mt_GetTimeStamp_ms(a1);
          write(*(a1 + 2184), &__buf, 1uLL);
          ++*(a1 + 2216);
          v18 = TimeStamp_ms;
          write(*(a1 + 2184), &v18, 8uLL);
          *(a1 + 2216) += 8;
          v17 = Length;
          write(*(a1 + 2184), &v17, 4uLL);
          *(a1 + 2216) += 4;
          v12 = *(a1 + 2184);
          BytePtr = CFDataGetBytePtr(v8);
          v14 = CFDataGetLength(v8);
          write(v12, BytePtr, v14);
          *(a1 + 2216) += CFDataGetLength(v8);
          v15.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v15.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          *&v16.st_blksize = v15;
          *v16.st_qspare = v15;
          v16.st_birthtimespec = v15;
          *&v16.st_size = v15;
          v16.st_mtimespec = v15;
          v16.st_ctimespec = v15;
          *&v16.st_uid = v15;
          v16.st_atimespec = v15;
          *&v16.st_dev = v15;
          if (!fstat(*(a1 + 2184), &v16))
          {
            *(a1 + 2216) = v16.st_size;
          }

          dispatch_semaphore_signal(*(a1 + 2176));
          MTRegisterFullFrameCallback(a1, _mt_RecordingFullFrameCallback, 0);
        }

        CFRelease(v8);
        if ((*(a1 + 2184) & 0x80000000) != 0)
        {
          return 3758097084;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 3758097095;
    }
  }

  return result;
}

CFDataRef _mt_CreateRecordingHeader(uint64_t a1)
{
  properties = 0;
  v2 = *MEMORY[0x277CBECE8];
  Data = 0;
  if (IORegistryEntryCreateCFProperties(*(a1 + 16), &properties, *MEMORY[0x277CBECE8], 0))
  {
    goto LABEL_34;
  }

  if (!CFDictionaryGetValue(properties, @"LocationID"))
  {
    v19 = 0;
    MTDeviceGetDeviceID(a1, &v19);
    valuePtr = v19;
    v4 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
    if (v4)
    {
      v5 = v4;
      CFDictionarySetValue(properties, @"LocationID", v4);
      CFRelease(v5);
    }
  }

  valuePtr = -1431655766;
  v19 = 0;
  MTDeviceGetDriverType(a1, &valuePtr);
  *iterator = 0;
  Service = MTDeviceGetService(a1);
  v7 = 0;
  parent = Service;
  if (valuePtr >= 4)
  {
    if (valuePtr == 4)
    {
      IORegistryEntryGetParentEntry(Service, "IOService", &parent);
      v7 = 1;
      if (parent)
      {
LABEL_7:
        if (!MEMORY[0x25F855470]())
        {
          do
          {
            v8 = IOIteratorNext(iterator[1]);
            if (!v8)
            {
              break;
            }

            v9 = v8;
            if (IOObjectConformsTo(v8, "IOHIDInterface"))
            {
              if (!MEMORY[0x25F855470](v9, "IOService", iterator) && v19 == 0)
              {
                do
                {
                  v11 = IOIteratorNext(iterator[0]);
                  if (!v11)
                  {
                    break;
                  }

                  v12 = v11;
                  if (IOObjectConformsTo(v11, "IOHIDEventService"))
                  {
                    IORegistryEntryCreateCFProperties(v12, &v19, v2, 0);
                  }

                  IOObjectRelease(v12);
                }

                while (!v19);
              }
            }

            IOObjectRelease(v9);
          }

          while (!v19);
        }
      }
    }
  }

  else if (Service)
  {
    goto LABEL_7;
  }

  if (iterator[1])
  {
    IOObjectRelease(iterator[1]);
  }

  if (iterator[0])
  {
    IOObjectRelease(iterator[0]);
  }

  v13 = v7 ^ 1;
  if (!parent)
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    IOObjectRelease(parent);
  }

  v14 = v19;
  if (v19)
  {
    CFDictionarySetValue(properties, @"Event Driver Properties", v19);
    CFRelease(v14);
  }

  Data = CFPropertyListCreateData(v2, properties, kCFPropertyListBinaryFormat_v1_0, 0, 0);
LABEL_34:
  if (properties)
  {
    CFRelease(properties);
  }

  return Data;
}

intptr_t _mt_RecordingFullFrameCallback(uint64_t a1, const void *a2, unsigned int a3)
{
  dispatch_semaphore_wait(*(a1 + 2176), 0xFFFFFFFFFFFFFFFFLL);
  if (*(a1 + 2168) == 1)
  {
    __buf = a3;
    *bytes = mt_GetTimeStamp_ms(a1);
    v9 = 0;
    v6 = *(a1 + 2184);
    if ((v6 & 0x80000000) == 0)
    {
      write(v6, &__buf, 4uLL);
      write(*(a1 + 2184), bytes, 8uLL);
      write(*(a1 + 2184), &v9, 1uLL);
      write(*(a1 + 2184), a2, a3);
    }

    v7 = *(a1 + 2192);
    if (v7)
    {
      CFDataAppendBytes(v7, &__buf, 4);
      CFDataAppendBytes(*(a1 + 2192), bytes, 8);
      CFDataAppendBytes(*(a1 + 2192), &v9, 1);
      CFDataAppendBytes(*(a1 + 2192), a2, a3);
    }

    ++*(a1 + 2208);
    _mt_truncateRecordingIfNeeded(a1);
  }

  return dispatch_semaphore_signal(*(a1 + 2176));
}

uint64_t MTDeviceBeginRecordingToData(uint64_t a1, const void *a2, int a3)
{
  result = 3758097090;
  if (a1 && a2)
  {
    if (*(a1 + 2176))
    {
      if (*(a1 + 2168))
      {
        return 3758097093;
      }

      else
      {
        RecordingHeader = _mt_CreateRecordingHeader(a1);
        *(a1 + 2164) = a3;
        *(a1 + 2208) = 0u;
        if (RecordingHeader)
        {
          v8 = RecordingHeader;
          dispatch_semaphore_wait(*(a1 + 2176), 0xFFFFFFFFFFFFFFFFLL);
          CFRetain(a2);
          *(a1 + 2192) = a2;
          *(a1 + 2168) = 1;
          bytes = 2;
          Length = CFDataGetLength(v8);
          TimeStamp_ms = mt_GetTimeStamp_ms(a1);
          CFDataAppendBytes(*(a1 + 2192), &bytes, 1);
          *v15 = TimeStamp_ms;
          CFDataAppendBytes(*(a1 + 2192), v15, 8);
          *v14 = Length;
          CFDataAppendBytes(*(a1 + 2192), v14, 4);
          v11 = *(a1 + 2192);
          BytePtr = CFDataGetBytePtr(v8);
          v13 = CFDataGetLength(v8);
          CFDataAppendBytes(v11, BytePtr, v13);
          *(a1 + 2216) = CFDataGetLength(*(a1 + 2192));
          dispatch_semaphore_signal(*(a1 + 2176));
          MTRegisterFullFrameCallback(a1, _mt_RecordingFullFrameCallback, 0);
          CFRelease(v8);
          return 0;
        }

        else
        {
          return 3758097084;
        }
      }
    }

    else
    {
      return 3758097095;
    }
  }

  return result;
}

uint64_t MTDeviceEndRecording(uint64_t a1)
{
  result = 3758097090;
  if (a1)
  {
    if (*(a1 + 2176))
    {
      if (*(a1 + 2168))
      {
        dispatch_semaphore_wait(*(a1 + 2176), 0xFFFFFFFFFFFFFFFFLL);
        _mt_truncateRecordingIfNeeded(a1);
        *(a1 + 2168) = 0;
        MTUnregisterFullFrameCallback(a1, _mt_RecordingFullFrameCallback);
        v3 = *(a1 + 2192);
        if (v3)
        {
          CFRelease(v3);
          *(a1 + 2192) = 0;
        }

        v4 = *(a1 + 2184);
        if ((v4 & 0x80000000) == 0)
        {
          close(v4);
          *(a1 + 2184) = -1;
        }

        dispatch_semaphore_signal(*(a1 + 2176));
        return 0;
      }

      else
      {
        return 3758097101;
      }
    }

    else
    {
      return 3758097095;
    }
  }

  return result;
}

void _mt_truncateRecordingIfNeeded(uint64_t a1)
{
  v2 = *(a1 + 2192);
  if (v2)
  {
    v3 = *(a1 + 2200);
    if (v3)
    {
      if (*(a1 + 2208) >= (2 * v3))
      {
        MutableBytePtr = CFDataGetMutableBytePtr(v2);
        v5.location = *(a1 + 2216);
        v6 = *(a1 + 2208);
        v7 = *(a1 + 2200);
        if (v6 <= v7)
        {
          v5.length = 0;
        }

        else
        {
          v5.length = 0;
          do
          {
            v5.length += *&MutableBytePtr[v5.location + v5.length] + 13;
            --v6;
          }

          while (v6 > v7);
        }

        CFDataDeleteBytes(*(a1 + 2192), v5);
        *(a1 + 2208) = *(a1 + 2200);
      }
    }
  }
}

intptr_t MTDeviceMarkRecording(intptr_t result, const char *a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 2168))
    {
      dispatch_semaphore_wait(*(result + 2176), 0xFFFFFFFFFFFFFFFFLL);
      if (!a2)
      {
        a2 = "";
      }

      if (*(v2 + 2168) == 1)
      {
        v4 = strlen(a2);
        v5 = (v4 + 1);
        __buf = v4 + 1;
        *bytes = mt_GetTimeStamp_ms(v2);
        v8 = 1;
        v6 = *(v2 + 2184);
        if (v6)
        {
          write(v6, &__buf, 4uLL);
          write(*(v2 + 2184), bytes, 8uLL);
          write(*(v2 + 2184), &v8, 1uLL);
          write(*(v2 + 2184), a2, v5);
        }

        v7 = *(v2 + 2192);
        if (v7)
        {
          CFDataAppendBytes(v7, &__buf, 4);
          CFDataAppendBytes(*(v2 + 2192), bytes, 8);
          CFDataAppendBytes(*(v2 + 2192), &v8, 1);
          CFDataAppendBytes(*(v2 + 2192), a2, v5);
        }
      }

      return dispatch_semaphore_signal(*(v2 + 2176));
    }
  }

  return result;
}

NSObject *MTDeviceSetRecordingDesiredFrameCount(NSObject *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    result = result[272].isa;
    if (result)
    {
      dispatch_semaphore_wait(result, 0xFFFFFFFFFFFFFFFFLL);
      *(v2 + 2200) = a2;
      if (*(v2 + 2168) == 1)
      {
        _mt_truncateRecordingIfNeeded(v2);
      }

      v4 = *(v2 + 2176);

      return dispatch_semaphore_signal(v4);
    }
  }

  return result;
}

CFDataRef MTPlayerCreateFromData(CFDataRef theData, char a2)
{
  v2 = theData;
  v139 = *MEMORY[0x277D85DE8];
  if (!theData)
  {
    goto LABEL_34;
  }

  BytePtr = CFDataGetBytePtr(theData);
  v5 = CFDataGetLength(v2);
  v6 = v5;
  if (!v5)
  {
    goto LABEL_33;
  }

  v7 = *BytePtr;
  v8 = v5 - 1;
  if (v7 != 2)
  {
    if (v7 == 1)
    {
      memset(__src, 0, sizeof(__src));
      if (v8 >= 0x21C)
      {
        v136 = 0uLL;
        v137 = 0uLL;
        v134 = 0uLL;
        v135 = 0uLL;
        v132 = 0uLL;
        v133 = 0uLL;
        v130 = 0uLL;
        v131 = 0uLL;
        v128 = 0uLL;
        v129 = 0uLL;
        v126 = 0uLL;
        v127 = 0uLL;
        v124 = 0uLL;
        v125 = 0uLL;
        v122 = 0uLL;
        v123 = 0uLL;
        v107 = 0uLL;
        v108 = 0uLL;
        v109 = 0uLL;
        v110 = 0uLL;
        v111 = 0uLL;
        v112 = 0uLL;
        v113 = 0uLL;
        v114 = 0uLL;
        v115 = 0uLL;
        v116 = 0uLL;
        v117 = 0uLL;
        v118 = 0uLL;
        v119 = 0uLL;
        v120 = 0uLL;
        v9 = v5 - 13;
        v121 = 0uLL;
        if (v5 - 13 >= 0x21C)
        {
          v18 = *(BytePtr + 13);
          v19 = *(BytePtr + 29);
          v20 = *(BytePtr + 225);
          v21 = *(BytePtr + 241);
          v22 = *(BytePtr + 161);
          v23 = *(BytePtr + 193);
          v131 = *(BytePtr + 177);
          v132 = v23;
          v133 = *(BytePtr + 209);
          v134 = v20;
          v24 = *(BytePtr + 97);
          v25 = *(BytePtr + 129);
          v127 = *(BytePtr + 113);
          v128 = v25;
          v129 = *(BytePtr + 145);
          v130 = v22;
          v26 = *(BytePtr + 33);
          v27 = *(BytePtr + 65);
          v123 = *(BytePtr + 49);
          v124 = v27;
          v125 = *(BytePtr + 81);
          v126 = v24;
          v28 = *(BytePtr + 257);
          v29 = *(BytePtr + 273);
          v135 = v21;
          v136 = v28;
          v137 = v29;
          v30 = *(BytePtr + 289);
          v31 = *(BytePtr + 501);
          v119 = *(BytePtr + 485);
          v120 = v31;
          v121 = *(BytePtr + 517);
          v122 = v26;
          v32 = *(BytePtr + 437);
          v115 = *(BytePtr + 421);
          v116 = v32;
          v33 = *(BytePtr + 469);
          v117 = *(BytePtr + 453);
          v118 = v33;
          v34 = *(BytePtr + 373);
          v111 = *(BytePtr + 357);
          v112 = v34;
          v35 = *(BytePtr + 405);
          v113 = *(BytePtr + 389);
          v114 = v35;
          v37 = *(BytePtr + 309);
          v107 = *(BytePtr + 293);
          v36 = v107;
          v108 = v37;
          v13 = *(BytePtr + 549);
          v14 = BytePtr + 553;
          v36.i32[0] = -1;
          v37.i32[0] = v13;
          v38 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v37, v36), 0), vrev32q_s8(v18), v18);
          v39 = *(BytePtr + 341);
          v9 = v5 - 553;
          v40 = bswap32(v19);
          v41 = bswap32(v30);
          v109 = *(BytePtr + 325);
          v110 = v39;
          if (v13 == -1)
          {
            v10 = v41;
          }

          else
          {
            v40 = v19;
            v10 = v30;
          }

          v12 = BytePtr[533];
          *bytes = v38;
          if (v9 >= 0x200 && v12 == 1)
          {
            v97 = *v14;
            v14 = BytePtr + 1065;
            v9 = v5 - 1065;
            v99 = 1;
          }

          else
          {
            v99 = 0;
            v97 = 0u;
          }

          v11 = v40;
        }

        else
        {
          v97 = 0uLL;
          *bytes = 0uLL;
          v99 = 0;
          v10 = 0;
          v11 = 0;
          LOBYTE(v12) = 0;
          v13 = 0;
          v14 = BytePtr + 13;
        }

        v100 = *(BytePtr + 1);
        v60 = *MEMORY[0x277CBECE8];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v102 = *bytes;
        *&length[244] = v137;
        *&length[196] = v134;
        *&length[212] = v135;
        *&length[228] = v136;
        *&length[132] = v130;
        *&length[148] = v131;
        *&length[164] = v132;
        *&length[180] = v133;
        *&length[68] = v126;
        *&length[84] = v127;
        *&length[100] = v128;
        *&length[116] = v129;
        *&length[4] = v122;
        *&length[20] = v123;
        *length = v11;
        *&length[36] = v124;
        *&length[52] = v125;
        *&length[260] = v10;
        *&length[456] = v119;
        *&length[472] = v120;
        *&length[488] = v121;
        *&length[392] = v115;
        *&length[408] = v116;
        *&length[424] = v117;
        *&length[440] = v118;
        *&length[328] = v111;
        *&length[344] = v112;
        *&length[360] = v113;
        *&length[376] = v114;
        *&length[264] = v107;
        *&length[280] = v108;
        *&length[296] = v109;
        *&length[312] = v110;
        v104 = v12;
        memset(v105, 0, sizeof(v105));
        v106 = v13;
        valuePtr = 2880294925;
        v62 = CFNumberCreate(v60, kCFNumberSInt64Type, &valuePtr);
        if (v62)
        {
          v63 = v62;
          CFDictionarySetValue(Mutable, @"LocationID", v62);
          CFRelease(v63);
        }

        CFDictionarySetValue(Mutable, @"Transport", @"Dummy");
        CFDictionarySetValue(Mutable, @"HIDServiceSupport", *MEMORY[0x277CBED28]);
        v64 = CFDictionaryCreateMutable(v60, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v64)
        {
          v65 = v64;
          CFDictionaryAddValue(v64, @"0516B563-B15B-11DA-96EB-0014519758EF", @"AppleMultitouchDriver.kext/Contents/PlugIns/MultitouchHID.plugin");
          CFDictionarySetValue(Mutable, @"IOCFPlugInTypes", v65);
          CFRelease(v65);
        }

        v66 = CFNumberCreate(v60, kCFNumberSInt32Type, &v102);
        if (v66)
        {
          v67 = v66;
          CFDictionarySetValue(Mutable, @"Family ID", v66);
          CFRelease(v67);
        }

        v68 = CFNumberCreate(v60, kCFNumberSInt32Type, &v102 + 4);
        if (v68)
        {
          v69 = v68;
          CFDictionarySetValue(Mutable, @"Sensor Rows", v68);
          CFRelease(v69);
        }

        v70 = CFNumberCreate(v60, kCFNumberSInt32Type, &v102 + 8);
        if (v70)
        {
          v71 = v70;
          CFDictionarySetValue(Mutable, @"Sensor Columns", v70);
          CFRelease(v71);
        }

        v72 = CFNumberCreate(v60, kCFNumberSInt32Type, (&v102 | 0xC));
        if (v72)
        {
          v73 = v72;
          CFDictionarySetValue(Mutable, @"bcdVersion", v72);
          CFRelease(v73);
        }

        v74 = CFDataCreate(v60, &length[4], *length);
        if (v74)
        {
          v75 = v74;
          CFDictionarySetValue(Mutable, @"Sensor Region Descriptor", v74);
          CFRelease(v75);
        }

        v76 = CFDataCreate(v60, &length[264], *&length[260]);
        if (v76)
        {
          v77 = v76;
          CFDictionarySetValue(Mutable, @"Sensor Region Param", v76);
          CFRelease(v77);
        }

        if (v99)
        {
          v102 = v97;
          memcpy(length, __src, 0x1F0uLL);
          v78 = CFNumberCreate(v60, kCFNumberSInt32Type, &v102);
          if (v78)
          {
            v79 = v78;
            CFDictionarySetValue(Mutable, @"Sensor Surface Width", v78);
            CFRelease(v79);
          }

          v80 = CFNumberCreate(v60, kCFNumberSInt32Type, &v102 + 4);
          if (v80)
          {
            v81 = v80;
            CFDictionarySetValue(Mutable, @"Sensor Surface Height", v80);
            CFRelease(v81);
          }

          v82 = CFNumberCreate(v60, kCFNumberSInt32Type, &v102 + 8);
          if (v82)
          {
            v83 = v82;
            CFDictionarySetValue(Mutable, @"parser-type", v82);
            CFRelease(v83);
          }

          v84 = CFNumberCreate(v60, kCFNumberSInt32Type, (&v102 | 0xC));
          if (v84)
          {
            v85 = v84;
            CFDictionarySetValue(Mutable, @"parser-options", v84);
            CFRelease(v85);
          }
        }

        v2 = MTPlayerCreate(Mutable, a2);
        CFRelease(Mutable);
        if (v2)
        {
          if (v9 >= 8)
          {
            v86 = 0;
            do
            {
              if ((v9 & 0xFFFFFFFC) == 8)
              {
                break;
              }

              v87 = *(v14 + 2);
              v88 = v9 - 12;
              v89 = bswap64(*v14);
              v90 = bswap32(v87);
              v91 = v100 == -1 ? v89 : *v14;
              v92 = v100 == -1 ? v90 : v87;
              v9 = v88 - v92;
              if (v88 < v92)
              {
                break;
              }

              v93 = malloc_type_malloc(0x28uLL, 0x1030040B1B30B78uLL);
              v93[28] = 0;
              *v93 = 0;
              *(v93 + 1) = *(v2 + 7);
              v94 = malloc_type_malloc(v92, 0x274ED21CuLL);
              *(v93 + 2) = v94;
              memcpy(v94, v14 + 12, v92);
              *(v93 + 6) = v92;
              if (*(v2 + 6))
              {
                v95 = (v91 - v86) / 1000.0;
              }

              else
              {
                v86 = (v91 / 1000.0);
                v95 = v86;
                *(v2 + 6) = v93;
              }

              *(v93 + 4) = v95;
              v96 = *(v2 + 7);
              if (v96)
              {
                *v96 = v93;
              }

              v14 += v92 + 12;
              *(v2 + 7) = v93;
            }

            while (v9 > 7);
          }

LABEL_79:
          *(v2 + 8) = *(v2 + 6);
          goto LABEL_34;
        }

        goto LABEL_34;
      }
    }

LABEL_33:
    v2 = 0;
    goto LABEL_34;
  }

  v2 = 0;
  if (v5 < 9)
  {
    goto LABEL_34;
  }

  if ((v8 & 0xFFFFFFFC) == 8)
  {
    goto LABEL_34;
  }

  v15 = *(BytePtr + 9);
  v16 = malloc_type_malloc(v15, 0x8F6053DuLL);
  v2 = v16;
  if (!v16)
  {
    goto LABEL_34;
  }

  v17 = v6 - 13;
  if (v6 - 13 < v15)
  {
    free(v16);
    goto LABEL_33;
  }

  v42 = (BytePtr + 13);
  memcpy(v16, v42, v15);
  v43 = *MEMORY[0x277CBECE8];
  v44 = CFDataCreate(*MEMORY[0x277CBECE8], v2, v15);
  if (!v44)
  {
    goto LABEL_33;
  }

  v45 = v44;
  v46 = CFPropertyListCreateWithData(v43, v44, 2uLL, 0, 0);
  CFRelease(v45);
  free(v2);
  if (!v46)
  {
    goto LABEL_33;
  }

  v2 = MTPlayerCreate(v46, a2);
  CFRelease(v46);
  if (v2)
  {
    v47 = v17 - v15;
    if (v17 - v15 >= 4)
    {
      v48 = 0;
      v49 = &v42[v15];
      do
      {
        if (v47 - 4 < 8)
        {
          break;
        }

        if (v47 == 12)
        {
          break;
        }

        v50 = *v49;
        v51 = v47 - 13;
        v47 = v47 - 13 - v50;
        if (v51 < v50)
        {
          break;
        }

        v52 = *(v49 + 4);
        v53 = v49[12];
        v54 = v49 + 13;
        v55 = malloc_type_malloc(0x28uLL, 0x1030040B1B30B78uLL);
        v55[28] = v53;
        *v55 = 0;
        *(v55 + 1) = *(v2 + 7);
        v56 = malloc_type_malloc(v50, 0x9CD84CB4uLL);
        *(v55 + 2) = v56;
        memcpy(v56, v54, v50);
        *(v55 + 6) = v50;
        if (!*(v2 + 6))
        {
          *(v2 + 6) = v55;
          v48 = v52;
        }

        *(v55 + 4) = (v52 - v48) / 1000.0;
        v57 = *(v2 + 7);
        if (v57)
        {
          *v57 = v55;
        }

        v49 = &v54[v50];
        *(v2 + 7) = v55;
      }

      while (v47 > 3);
    }

    goto LABEL_79;
  }

LABEL_34:
  v58 = *MEMORY[0x277D85DE8];
  return v2;
}

CFDataRef MTPlayerCreateFromFile(const char *a1, char a2)
{
  v3 = open(a1, 0);
  if (v3 < 0)
  {
    return 0;
  }

  v4 = v3;
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v12.st_blksize = v5;
  *v12.st_qspare = v5;
  v12.st_birthtimespec = v5;
  *&v12.st_size = v5;
  v12.st_mtimespec = v5;
  v12.st_ctimespec = v5;
  *&v12.st_uid = v5;
  v12.st_atimespec = v5;
  *&v12.st_dev = v5;
  if (fstat(v3, &v12) || (v7 = mmap(0, v12.st_size, 1, 2, v4, 0), v7 == -1))
  {
    v6 = 0;
  }

  else
  {
    v8 = v7;
    v9 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v7, v12.st_size, *MEMORY[0x277CBED00]);
    if (v9)
    {
      v10 = v9;
      v6 = MTPlayerCreateFromData(v9, a2);
      CFRelease(v10);
    }

    else
    {
      v6 = 0;
    }

    munmap(v8, v12.st_size);
  }

  close(v4);
  return v6;
}

uint64_t MTPlayerLoad(uint64_t a1)
{
  if (!a1)
  {
    return 3758097090;
  }

  if (*(a1 + 112))
  {
    return 3758097093;
  }

  existing = -1431655766;
  v4 = IOServiceMatching("AppleMultitouchDummyV2");
  if (!v4)
  {
    return 3758097084;
  }

  v2 = 3758097084;
  if (!IOServiceGetMatchingServices(0, v4, &existing))
  {
    if (*(a1 + 112))
    {
      IOObjectRelease(existing);
LABEL_10:
      if (!*(a1 + 112))
      {
        return 3758097086;
      }

      v5 = *(a1 + 136);
      if (v5)
      {
        v5(a1, 3, 0, *(a1 + 144));
      }

      return 0;
    }

    v6 = IOIteratorNext(existing);
    if (v6)
    {
      v7 = v6;
      v8 = *MEMORY[0x277CBECE8];
      v9 = MEMORY[0x277D85F48];
      v10 = MEMORY[0x277CBF138];
      v11 = MEMORY[0x277CBF150];
      do
      {
        connect[0] = 0;
        v12 = IOServiceOpen(v7, *v9, 0, connect);
        if (v12)
        {
          v2 = v12;
        }

        else
        {
          *(a1 + 112) = connect[0];
          Mutable = CFDictionaryCreateMutable(v8, 0, v10, v11);
          if (!Mutable || (v14 = Mutable, CFDictionarySetValue(Mutable, @"Multitouch Properties", *(a1 + 16)), v2 = IOConnectSetCFProperties(*(a1 + 112), v14), CFRelease(v14), !v2))
          {
            v25 = 0;
            v26 = 0;
            NotificationPort = IODataQueueAllocateNotificationPort();
            if (NotificationPort)
            {
              v16 = NotificationPort;
              if (!MEMORY[0x25F855330](*(a1 + 112), 32, NotificationPort, 0) && !MEMORY[0x25F855310](*(a1 + 112), 32, *v9, &v26, &v25, 1))
              {
                v17 = v26;
                v18 = dispatch_source_create(MEMORY[0x277D85D08], v16, 0, *(a1 + 24));
                *(a1 + 128) = v18;
                handler[0] = MEMORY[0x277D85DD0];
                handler[1] = 0x40000000;
                handler[2] = __mt_PlayerLoadForService_block_invoke;
                handler[3] = &__block_descriptor_tmp_73;
                handler[4] = a1;
                handler[5] = v26;
                v24 = v16;
                dispatch_source_set_cancel_handler(v18, handler);
                v19 = *(a1 + 128);
                v21[0] = MEMORY[0x277D85DD0];
                v21[1] = 0x40000000;
                v21[2] = __mt_PlayerLoadForService_block_invoke_2;
                v21[3] = &__block_descriptor_tmp_76;
                v21[4] = a1;
                v21[5] = v17;
                v22 = v16;
                dispatch_source_set_event_handler(v19, v21);
                dispatch_resume(*(a1 + 128));
              }
            }

            v2 = 0;
          }
        }

        IOObjectRelease(v7);
        if (*(a1 + 112))
        {
          break;
        }

        v7 = IOIteratorNext(existing);
      }

      while (v7);
    }

    else
    {
      v2 = 0;
    }

    IOObjectRelease(existing);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  return v2;
}

uint64_t MTPlayerUnload(uint64_t a1)
{
  result = 3758097090;
  if (a1)
  {
    v3 = *(a1 + 112);
    if (v3)
    {
      if (*(a1 + 128))
      {
        dispatch_group_enter(*(a1 + 32));
        dispatch_source_cancel(*(a1 + 128));
        dispatch_release(*(a1 + 128));
        *(a1 + 128) = 0;
        v3 = *(a1 + 112);
      }

      IOServiceClose(v3);
      *(a1 + 112) = 0;
      v4 = *(a1 + 136);
      if (v4)
      {
        v4(a1, 4, 0, *(a1 + 144));
      }

      return 0;
    }

    else
    {
      return 3758097101;
    }
  }

  return result;
}

uint64_t MTPlayerSetEventCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 136) = a2;
    *(result + 144) = a3;
  }

  return result;
}

uint64_t MTPlayerSetFramePlaybackCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 152) = a2;
    *(result + 160) = a3;
  }

  return result;
}

uint64_t MTPlayerSetAnnotationCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 168) = a2;
    *(result + 176) = a3;
  }

  return result;
}

double MTPlayerGetLength(uint64_t a1)
{
  result = 0.0;
  if (a1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = *(a1 + 56);
      if (v3)
      {
        return *(v3 + 32) - *(v2 + 32);
      }
    }
  }

  return result;
}

void mt_PlayerPlaybackTimerHandler(uint64_t a1)
{
  v2 = *(a1 + 88);
  Current = MTAbsoluteTimeGetCurrent();
  if (*(a1 + 40))
  {
    v4 = Current;
    v5 = *(a1 + 96) + v2 * (Current - *(a1 + 80));
    v6 = *(a1 + 64);
    if (!v6)
    {
LABEL_20:
      *(a1 + 64) = 0;
      *(a1 + 80) = v4;
      *(a1 + 96) = v5;
      *(a1 + 104) = v5;
      v10 = *(a1 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __mt_PlayerPlaybackTimerHandler_block_invoke;
      block[3] = &__block_descriptor_tmp_1;
      block[4] = a1;
      dispatch_async(v10, block);
      return;
    }

    while (1)
    {
      if (v2 > 0.0 && (v7 = *(v6 + 32), v7 <= v5))
      {
        if (v7 >= *(a1 + 96))
        {
          goto LABEL_13;
        }

        if (v2 >= 0.0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v2 >= 0.0 || (v7 = *(v6 + 32), v7 < v5))
        {
          *(a1 + 64) = v6;
          *(a1 + 80) = v4;
          *(a1 + 96) = v5;
          *(a1 + 104) = v5;
          return;
        }

        if (v2 > 0.0 && v7 >= *(a1 + 96))
        {
LABEL_13:
          if (*(v6 + 28) == 1)
          {
            v9 = *(a1 + 168);
            if (v9)
            {
              v9(a1, *(v6 + 16), *(a1 + 176));
            }
          }

          else if (!*(v6 + 28))
          {
            mt_PlayerDispatchFrame(a1, *(v6 + 16), *(v6 + 24));
            v8 = *(a1 + 152);
            if (v8)
            {
              v8(a1, *(v6 + 16), *(v6 + 24), *(a1 + 160), *(v6 + 32));
              *(a1 + 104) = *(v6 + 32);
            }
          }

          goto LABEL_19;
        }
      }

      if (v7 <= *(a1 + 96))
      {
        goto LABEL_13;
      }

LABEL_19:
      v6 = *(v6 + 8 * (v2 < 0.0));
      if (!v6)
      {
        goto LABEL_20;
      }
    }
  }
}

BOOL MTPlayerIsPlaying(_BOOL8 result)
{
  if (result)
  {
    return *(result + 40) != 0;
  }

  return result;
}

uint64_t mt_PlayerDispatchFrame(uint64_t a1, const void *a2, unsigned int a3)
{
  input[3] = *MEMORY[0x277D85DE8];
  v3 = 3758097101;
  if (*(a1 + 112))
  {
    if (*(a1 + 116) >= a3)
    {
      dispatch_semaphore_wait(*(a1 + 216), 0xFFFFFFFFFFFFFFFFLL);
      memcpy(*(a1 + 120), a2, a3);
      outputCnt = 0;
      v7 = *(a1 + 112);
      v8 = *(a1 + 116);
      input[0] = *(a1 + 120);
      input[1] = v8;
      input[2] = a3;
      v3 = IOConnectCallScalarMethod(v7, 0, input, 3u, 0, &outputCnt);
      dispatch_semaphore_signal(*(a1 + 216));
    }

    else
    {
      v3 = 3758097128;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t MTPlayerStop(void *a1)
{
  if (!a1)
  {
    return 3758097090;
  }

  _doMTPlayerPause(a1);
  a1[12] = 0;
  a1[13] = 0;
  a1[8] = a1[6];
  v2 = a1[17];
  if (v2)
  {
    v2(a1, 0, 0, a1[18]);
  }

  return 0;
}

uint64_t MTPlayerPlay(uint64_t a1)
{
  result = 3758097090;
  if (a1)
  {
    if (*(a1 + 40))
    {
      return 3758097093;
    }

    else
    {
      dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
      Current = MTAbsoluteTimeGetCurrent();
      *(a1 + 72) = Current;
      *(a1 + 80) = Current;
      v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 24));
      *(a1 + 40) = v4;
      dispatch_source_set_timer(v4, 0, 0xF4240uLL, 0);
      v5 = *(a1 + 40);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = __MTPlayerPlay_block_invoke;
      handler[3] = &__block_descriptor_tmp_4;
      handler[4] = a1;
      dispatch_source_set_event_handler(v5, handler);
      dispatch_resume(*(a1 + 40));
      v6 = *(a1 + 136);
      if (v6)
      {
        v6(a1, 1, 0, *(a1 + 144));
      }

      return 0;
    }
  }

  return result;
}

void __MTPlayerPlay_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __MTPlayerPlay_block_invoke_2;
  block[3] = &__block_descriptor_tmp_3;
  block[4] = v1;
  dispatch_group_async(v2, v3, block);
}

uint64_t MTPlayerPlayNextFrame(void *a1)
{
  result = 3758097090;
  if (a1)
  {
    if (a1[5])
    {
      return 3758097093;
    }

    else
    {
      v3 = a1[8];
      if (v3)
      {
        if (*(v3 + 28) == 1)
        {
          v5 = a1[21];
          if (v5)
          {
            v5(a1, v3[2], a1[22], *(v3 + 4));
          }
        }

        else if (!*(v3 + 28))
        {
          mt_PlayerDispatchFrame(a1, v3[2], *(v3 + 6));
          v4 = a1[19];
          if (v4)
          {
            v4(a1, v3[2], *(v3 + 6), a1[20], *(v3 + 4));
          }
        }

        v6 = *v3;
        a1[8] = *v3;
        v7 = v3[4];
        a1[12] = v7;
        a1[13] = v7;
        if (v6 == 0.0)
        {
          v8 = a1[3];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __MTPlayerPlayNextFrame_block_invoke;
          block[3] = &__block_descriptor_tmp_5;
          block[4] = a1;
          dispatch_async(v8, block);
        }

        return 0;
      }

      else
      {
        return 3758097128;
      }
    }
  }

  return result;
}

uint64_t MTPlayerPlayPreviousFrame(void *a1)
{
  result = 3758097128;
  if (!a1)
  {
    return 3758097090;
  }

  if (a1[5])
  {
    return 3758097093;
  }

  v3 = a1[8];
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        if (*(v5 + 28) == 1)
        {
          v7 = a1[21];
          if (v7)
          {
            v7(a1, v5[2], a1[22], *(v5 + 4));
          }
        }

        else if (!*(v5 + 28))
        {
          mt_PlayerDispatchFrame(a1, v5[2], *(v5 + 6));
          v6 = a1[19];
          if (v6)
          {
            v6(a1, v5[2], *(v5 + 6), a1[20], *(v5 + 4));
          }
        }

        v8 = *v5;
        a1[8] = *v5;
        v9 = v5[4];
        a1[12] = v9;
        a1[13] = v9;
        if (!*(*(*&v8 + 8) + 8))
        {
          v10 = a1[3];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __MTPlayerPlayPreviousFrame_block_invoke;
          block[3] = &__block_descriptor_tmp_6;
          block[4] = a1;
          dispatch_async(v10, block);
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t MTPlayerPause(uint64_t a1)
{
  if (!a1)
  {
    return 3758097090;
  }

  if (!_doMTPlayerPause(a1))
  {
    v2 = *(a1 + 136);
    if (v2)
    {
      v2(a1, 2, 0, *(a1 + 144));
    }
  }

  return 0;
}

uint64_t _doMTPlayerPause(uint64_t a1)
{
  result = 3758097101;
  if (a1)
  {
    if (*(a1 + 40))
    {
      dispatch_source_cancel(*(a1 + 40));
      dispatch_release(*(a1 + 40));
      result = 0;
      *(a1 + 40) = 0;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
    }
  }

  return result;
}

void MTPlayerSetRate(uint64_t a1, double a2)
{
  if (!a1 || !*(a1 + 40))
  {
    v4 = *(a1 + 64);
    if (v4)
    {
      v5 = v4[1];
      if (v5 && a2 < 0.0 && *(a1 + 88) > 0.0)
      {
        v6 = v5[1];
        *(a1 + 64) = v6;
        if (!v6)
        {
          v7 = *(a1 + 24);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __MTPlayerSetRate_block_invoke;
          block[3] = &__block_descriptor_tmp_7;
          block[4] = a1;
          dispatch_async(v7, block);
          goto LABEL_14;
        }

LABEL_13:
        v9 = *(v6 + 32);
        *(a1 + 96) = v9;
        *(a1 + 104) = v9;
        goto LABEL_14;
      }

      v8 = *v4;
      if (v8 && a2 > 0.0 && *(a1 + 88) < 0.0)
      {
        v6 = *v8;
        *(a1 + 64) = v6;
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  *(a1 + 88) = a2;
}

void MTPlayerSetPosition(uint64_t a1, double a2)
{
  v4 = *(a1 + 96);
  if (v4 > a2 && *(a1 + 88) > 0.0)
  {
    *(a1 + 64) = *(a1 + 48);
  }

  if (v4 < a2 && *(a1 + 88) < 0.0)
  {
    *(a1 + 64) = *(a1 + 56);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    dispatch_suspend(v5);
    *(a1 + 96) = a2;
    *(a1 + 104) = a2;
    dispatch_resume(*(a1 + 40));
  }

  else
  {
    *(a1 + 96) = a2;
    *(a1 + 104) = a2;
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    while (v6[4] > a2)
    {
      v6 = *(v6 + 1);
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    do
    {
      if (v6[4] >= a2)
      {
        break;
      }

      v6 = *v6;
    }

    while (v6);
  }

LABEL_16:
  *(a1 + 64) = v6;
}

uint64_t MTPlayerGetDeviceProperties(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t MTPlayerDispatchFrame(uint64_t a1, const void *a2, unsigned int a3)
{
  if (a1)
  {
    return mt_PlayerDispatchFrame(a1, a2, a3);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t MTPlayerSetGetReportHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 184) = a2;
    *(result + 192) = a3;
  }

  return result;
}

uint64_t MTPlayerSetSetReportHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 200) = a2;
    *(result + 208) = a3;
  }

  return result;
}

uint64_t MTPlayerGetTypeID()
{
  result = __kMTPlayerTypeID;
  if (!__kMTPlayerTypeID)
  {
    pthread_once(&__playerTypeInit, __MTPlayerRegister);
    return __kMTPlayerTypeID;
  }

  return result;
}

uint64_t __MTPlayerRegister()
{
  result = _CFRuntimeRegisterClass();
  __kMTPlayerTypeID = result;
  return result;
}

uint64_t MTPlayerCreate(const __CFDictionary *a1, char a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *MEMORY[0x277CBECE8];
  if (!__kMTPlayerTypeID)
  {
    pthread_once(&__playerTypeInit, __MTPlayerRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v4, 0, a1);
    *(Instance + 16) = MutableCopy;
    if (a2)
    {
      CFDictionaryRemoveValue(MutableCopy, @"IOCFPlugInTypes");
      CFDictionaryRemoveValue(*(Instance + 16), @"MTHIDDevice");
      CFDictionaryRemoveValue(*(Instance + 16), @"parser-type");
      CFDictionaryRemoveValue(*(Instance + 16), @"parser-options");
      MutableCopy = *(Instance + 16);
    }

    Value = CFDictionaryGetValue(MutableCopy, @"Max Packet Size");
    if (Value)
    {
      v8 = Value;
      v9 = CFGetTypeID(Value);
      v10 = 4096;
      if (v9 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        v11 = CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
        if (valuePtr > 511 && v11 == 1)
        {
          v10 = valuePtr;
        }

        else
        {
          v10 = 4096;
        }
      }
    }

    else
    {
      v10 = 4096;
    }

    *(Instance + 116) = v10;
    *(Instance + 120) = malloc_type_malloc(v10, 0x6BF63EE8uLL);
  }

  return Instance;
}

dispatch_semaphore_t __MTPlayerInit(dispatch_semaphore_t result)
{
  if (result)
  {
    v1 = result;
    *&result[24].isa = 0u;
    *&result[26].isa = 0u;
    *&result[20].isa = 0u;
    *&result[22].isa = 0u;
    *&result[16].isa = 0u;
    *&result[18].isa = 0u;
    *&result[12].isa = 0u;
    *&result[14].isa = 0u;
    *&result[8].isa = 0u;
    *&result[10].isa = 0u;
    *&result[4].isa = 0u;
    *&result[6].isa = 0u;
    *&result[2].isa = 0u;
    result[3].isa = dispatch_queue_create("com.apple.MultitouchSupport.playback", 0);
    v1[4].isa = dispatch_group_create();
    v1[5].isa = 0;
    v1[7].isa = 0;
    v1[8].isa = 0;
    v1[12].isa = 0;
    v1[13].isa = 0;
    v1[11].isa = 0x3FF0000000000000;
    *&v1[16].isa = 0u;
    *&v1[18].isa = 0u;
    *&v1[20].isa = 0u;
    *&v1[22].isa = 0u;
    *&v1[24].isa = 0u;
    v1[26].isa = 0;
    result = dispatch_semaphore_create(1);
    v1[27].isa = result;
    HIDWORD(v1[14].isa) = 4096;
    v1[15].isa = 0;
  }

  return result;
}

void __MTPlayerRelease(uint64_t a1)
{
  if (a1 && *(a1 + 40))
  {
    MTPlayerStop(a1);
  }

  if (*(a1 + 112))
  {
    MTPlayerUnload(a1);
  }

  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(*(a1 + 32));
  *(a1 + 32) = 0;
  dispatch_release(*(a1 + 24));
  *(a1 + 24) = 0;
  dispatch_release(*(a1 + 216));
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v4 = (a1 + 48);
  v3 = *(a1 + 48);
  if (v3)
  {
    do
    {
      v5 = *v3;
      free(v3);
      *v4 = v5;
      v3 = v5;
    }

    while (v5);
  }

  *v4 = 0;
  *(a1 + 56) = 0;
  v6 = *(a1 + 120);
  if (v6)
  {
    free(v6);
    *(a1 + 120) = 0;
  }
}

uint64_t mtalg_FillinValidPixelRange(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((*(a2 + 24) & 0x50) != 0)
    {
      v2 = 30720;
      v3 = 34816;
    }

    else
    {
      v2 = 0;
      v3 = *(a2 + 36);
    }

    *(a2 + 28) = v3;
    *(a2 + 32) = v2;
  }

  return result;
}

uint64_t mt_ForwardSpecificImageRegion()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v0;
  v35 = *MEMORY[0x277D85DE8];
  memset(__b, 170, sizeof(__b));
  v16 = *(v6 + 12);
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = v16 / 1000.0;
  *&v28 = *(v6 + 4);
  v31 = 1 << *v10;
  LODWORD(v32) = v4;
  v17 = v10[5];
  v29 = v10[5];
  v18 = v10[2];
  v30 = v10[2];
  WORD2(v33) = v8;
  BYTE6(v33) = v2;
  if (v18)
  {
    v19 = 0;
    v20 = v10[3];
    v21 = v12 * v10[1];
    v22 = __b;
    do
    {
      if (v17)
      {
        v23 = v21 + v10[4];
        v24 = v17;
        v25 = v22;
        do
        {
          *v25++ = *(v14 + 2 * v23++);
          --v24;
        }

        while (v24);
      }

      v19 += v20;
      v22 += 2 * v17 * v20;
      v21 += v12 * v20;
    }

    while (v19 < v18);
  }

  result = MTAlg_IssueImageCallbacks(v15, __b, &v28);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mt_ForwardCombinedImageRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  v11 = MEMORY[0x28223BE20]();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v11;
  v49 = *MEMORY[0x277D85DE8];
  v23 = *(a9 + 12);
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  *(&v42 + 1) = v23 / 1000.0;
  *&v42 = *(a9 + 4);
  LODWORD(v46) = a10;
  v43 = v12;
  v44 = v24;
  WORD2(v47) = v25;
  BYTE6(v47) = a11;
  bzero(v48, 0x8000uLL);
  if (v15 < 1)
  {
    v29 = 0;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = (v17 - v26 + 8 * v26);
      if (v26)
      {
        if (v30[1] != *(v30 - 6))
        {
          v27 += *(v30 - 5);
        }

        if (v30[4] != *(v30 - 3))
        {
          v28 += *(v30 - 2);
        }
      }

      v31 = v30[2];
      if (v30[2])
      {
        v32 = 0;
        v33 = v30[5];
        v34 = v30[3];
        v35 = v28 + v13 * v27;
        v36 = v19 * v30[1];
        do
        {
          if (v33)
          {
            v37 = v36 + v30[4];
            v38 = v33;
            v39 = v35;
            do
            {
              v48[v39++] = *(v21 + 2 * v37++);
              --v38;
            }

            while (v38);
          }

          v32 += v34;
          v35 += v13 * v34;
          v36 += v19 * v34;
        }

        while (v32 < v31);
      }

      v29 |= 1 << *v30;
      ++v26;
    }

    while (v26 != v15);
  }

  v45 = v29;
  result = MTAlg_IssueImageCallbacks(v22, v48, &v42);
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mt_ForwardImageRegion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x28223BE20]();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v9;
  v46 = *MEMORY[0x277D85DE8];
  memset(__b, 170, sizeof(__b));
  *(v44 + 3) = -1431655766;
  v44[0] = -1431655766;
  result = MTDeviceGetSensorRegionOfType(v24, v44, v23);
  if (!result)
  {
    v42 = 0xAAAAAAAAAAAAAAAALL;
    v43 = 0xAAAAAAAAAAAAAAAALL;
    *(&v38 + 1) = *(v15 + 12) / 1000.0;
    *&v38 = *(v15 + 4);
    v41 = v21;
    LODWORD(v42) = v13;
    v26 = BYTE1(v44[1]);
    v39 = BYTE1(v44[1]);
    v27 = BYTE2(v44[0]);
    v40 = BYTE2(v44[0]);
    WORD2(v43) = v11;
    BYTE6(v43) = a9;
    if (BYTE2(v44[0]))
    {
      v28 = 0;
      v29 = HIBYTE(v44[0]);
      v30 = 2 * BYTE1(v44[1]) * HIBYTE(v44[0]);
      v31 = LOBYTE(v44[1]) + v17 * BYTE1(v44[0]);
      v32 = v17 * HIBYTE(v44[0]);
      v33 = __b;
      do
      {
        if (v26)
        {
          v34 = v26;
          v35 = v31;
          v36 = v33;
          do
          {
            *v36++ = *(v19 + 2 * v35++);
            --v34;
          }

          while (v34);
        }

        v28 += v29;
        v33 += v30;
        v31 += v32;
      }

      while (v28 < v27);
    }

    result = MTAlg_IssueImageCallbacks(v24, __b, &v38);
  }

  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mtp_ForwardDeviceImageSubRegions(uint64_t a1)
{
  v6 = 0;
  v5 = 0;
  result = MTAlg_DeviceGetSensorRegionArray(a1, &v5, &v6);
  if (!result)
  {
    v2 = v6;
    if (v6)
    {
      v3 = 0;
      v4 = 0;
      do
      {
        if (*(v5 + v3))
        {
          result = mt_ForwardSpecificImageRegion();
          v2 = v6;
        }

        ++v4;
        v3 += 7;
      }

      while (v4 < v2);
    }
  }

  return result;
}

uint64_t mtp_ForwardDeviceImageBuffer(uint64_t a1, const void *a2, __int16 a3, __int16 a4, uint64_t a5, int a6, int a7, int a8, int a9, char a10)
{
  v11 = *(a5 + 12);
  v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = v11 / 1000.0;
  *&v14 = *(a5 + 4);
  if (a6)
  {
    v12 = a6;
  }

  else
  {
    v12 = 2147483646;
  }

  v17 = v12;
  v18 = a7;
  v15 = a4;
  v16 = a3;
  WORD2(v20) = a9 - a8;
  BYTE6(v20) = a10;
  v19 = a9;
  LODWORD(v20) = a8;
  result = MTAlg_IssueImageCallbacks(a1, a2, &v14);
  if (v17 == 2147483646)
  {
    return mtp_ForwardDeviceImageSubRegions(a1);
  }

  return result;
}

uint64_t MTActuatorGetTypeID()
{
  result = __kMTActuatorTypeID;
  if (!__kMTActuatorTypeID)
  {
    pthread_once(&__actuatorTypeInit, __MTActuatorRegister);
    return __kMTActuatorTypeID;
  }

  return result;
}

uint64_t __MTActuatorRegister()
{
  result = _CFRuntimeRegisterClass();
  __kMTActuatorTypeID = result;
  return result;
}

uint64_t MTActuatorCreate(io_object_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277CBECE8];
  if (!__kMTActuatorTypeID)
  {
    pthread_once(&__actuatorTypeInit, __MTActuatorRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    if (a1)
    {
      IOObjectRetain(a1);
      *(Instance + 16) = a1;
    }

    *(Instance + 20) = 0;
    *(Instance + 24) = 0;
    *(Instance + 32) = a2;
    *(Instance + 48) = 1;
    *(Instance + 56) = 0;
  }

  return Instance;
}

uint64_t MTActuatorSetFirmwareClicks(uint64_t a1, char a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = 3758097084;
  if (a1)
  {
    if (MTActuatorIsOpen(a1))
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        if ((a2 & 8) != 0)
        {
          v6 = 4294967294;
        }

        else
        {
          v6 = 2;
        }

        v7 = [MEMORY[0x277CCABB0] numberWithInt:v6];
        v8 = [v5 objectForKeyedSubscript:v7];

        if (v8)
        {
          v9 = MTActuationSetFirmwareDownClick(v8, a1);
          if (v9)
          {
            v10 = v9;
            v11 = MTLoggingFramework();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v20 = 67109120;
              v21 = v10;
              _os_log_impl(&dword_25AD59000, v11, OS_LOG_TYPE_ERROR, "Error updating firmware primary down click, 0x%08x", &v20, 8u);
            }
          }
        }

        if ((a2 & 8) != 0)
        {
          v12 = 0xFFFFFFFFLL;
        }

        else
        {
          v12 = 1;
        }

        v13 = [MEMORY[0x277CCABB0] numberWithInt:v12];
        v14 = [v5 objectForKeyedSubscript:v13];

        if (v14)
        {
          v15 = MTActuationSetFirmwareUpClick(v14, a1);
          if (v15)
          {
            v16 = v15;
            v17 = MTLoggingFramework();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v20 = 67109120;
              v21 = v16;
              _os_log_impl(&dword_25AD59000, v17, OS_LOG_TYPE_ERROR, "Error updating firmware primary up click, 0x%08x", &v20, 8u);
            }
          }
        }

        v2 = 0;
      }
    }

    else
    {
      v2 = 3758097101;
    }
  }

  else
  {
    v2 = 3758097090;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t MTActuatorActuate(uint64_t a1, unsigned int a2, char a3)
{
  v3 = 3758097090;
  if (a1)
  {
    if (MTActuatorIsOpen(a1))
    {
      v7 = *(a1 + 40);
      if (v7)
      {
        if (a2 <= 0x24)
        {
          if ((a3 & 8) != 0)
          {
            v8 = -a2;
          }

          else
          {
            v8 = a2;
          }

          v9 = [MEMORY[0x277CCABB0] numberWithInt:v8];
          v10 = [v7 objectForKeyedSubscript:v9];

          if (v10)
          {
            v3 = MTActuationActuate(v10, a1);
          }

          else
          {
            v3 = 3758097136;
          }
        }
      }

      else
      {
        v3 = 3758097084;
      }
    }

    else
    {
      return 3758097101;
    }
  }

  return v3;
}

void _MTActuationLoadActuationsFromPropertyListV2orV3(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Actuator_%d", *(a1 + 68)];
    v8 = [v5 objectForKeyedSubscript:v7];
    if (v8 || ([v5 objectForKeyedSubscript:@"Default"], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      v31 = v7;
      v32 = v5;
      v10 = *(a1 + 40);
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (!v12)
      {
        goto LABEL_29;
      }

      v13 = v12;
      v14 = *v35;
      obj = v11;
      while (1)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          v17 = [v16 objectForKeyedSubscript:@"ActuationID"];
          v18 = [MEMORY[0x277CCABB0] numberWithInt:{-objc_msgSend(v17, "intValue")}];
          if ([v6 intValue] == 3)
          {
            v19 = [v16 objectForKeyedSubscript:@"Default"];
          }

          else
          {
            v19 = v16;
          }

          v20 = v19;
          v21 = [v16 objectForKeyedSubscript:@"Silent"];
          if (([v17 intValue] & 0x80000000) != 0 || !v20)
          {
            v26 = MTLoggingFramework();
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            *buf = 67109376;
            *v39 = v17 == 0;
            *&v39[4] = 1024;
            *&v39[6] = v20 == 0;
            v27 = v26;
            v28 = "Error parsing click playlist, unable to determine actuation id(%d) or default waveform not defined(%d)";
            v29 = 14;
LABEL_25:
            _os_log_impl(&dword_25AD59000, v27, OS_LOG_TYPE_ERROR, v28, buf, v29);
            goto LABEL_26;
          }

          v22 = MTActuationCreateFromDictionary(v20, 0);
          [v10 setObject:v22 forKeyedSubscript:v17];

          v23 = [v10 objectForKeyedSubscript:v17];

          if (!v23)
          {
            v26 = MTLoggingFramework();
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            *buf = 138412290;
            *v39 = v17;
            v27 = v26;
            v28 = "Error parsing click playlist, failed to create default waveform for actuationID=%@";
LABEL_24:
            v29 = 12;
            goto LABEL_25;
          }

          if (!v21)
          {
            v21 = v20;
          }

          v24 = MTActuationCreateFromDictionary(v21, 0);
          [v10 setObject:v24 forKeyedSubscript:v18];

          v25 = [v10 objectForKeyedSubscript:v18];

          if (!v25)
          {
            [v10 setObject:0 forKeyedSubscript:v17];
            v26 = MTLoggingFramework();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v39 = v18;
              v27 = v26;
              v28 = "Error parsing click playlist, failed to create silent waveform for actuationID=%@";
              goto LABEL_24;
            }

LABEL_26:
          }
        }

        v11 = obj;
        v13 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (!v13)
        {
LABEL_29:

          v7 = v31;
          v5 = v32;
          goto LABEL_30;
        }
      }
    }

    v11 = MTLoggingFramework();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v39 = v6;
      _os_log_impl(&dword_25AD59000, v11, OS_LOG_TYPE_ERROR, "Error parsing click playlist, revision %@ and default not found", buf, 0xCu);
    }

LABEL_30:
  }

  v30 = *MEMORY[0x277D85DE8];
}

void _MTActuationLoadActuationsFromPropertyList(uint64_t a1, void *cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFDictionaryGetTypeID()))
  {
    v5 = cf;
    v6 = [v5 objectForKeyedSubscript:@"Version"];
    if (([v6 intValue] & 0xFFFFFFFE) == 2)
    {
      _MTActuationLoadActuationsFromPropertyListV2orV3(a1, v5, v6);
    }

    else
    {
      v7 = MTLoggingFramework();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(&dword_25AD59000, v7, OS_LOG_TYPE_ERROR, "Error parsing click playlist, unknown version", v8, 2u);
      }
    }
  }

  else
  {
    v5 = MTLoggingFramework();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25AD59000, v5, OS_LOG_TYPE_ERROR, "Failed to load actuations from plist - Invalid plist reference", buf, 2u);
    }
  }
}

void MTActuatorLoadActuations(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 40) = 0;
    }

    v3 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 40) = Mutable;
    if (Mutable)
    {
      ProductionPlist = MTActuatorGetProductionPlist();
      if (ProductionPlist)
      {
        v6 = ProductionPlist;
        v7 = CFPropertyListCreateWithData(v3, ProductionPlist, 0, 0, 0);
        if (v7)
        {
          v8 = v7;
          _MTActuationLoadActuationsFromPropertyList(a1, v7);
          CFRelease(v8);
        }

        CFRelease(v6);
      }

      if (CFPreferencesGetAppBooleanValue(@"ClickOverrideEnabled", @"com.apple.MultitouchSupport", 0))
      {
        v9 = CFPreferencesCopyAppValue(@"ClickOverridePlaylist", @"com.apple.MultitouchSupport");
        if (v9)
        {
          v10 = v9;
          _MTActuationLoadActuationsFromPropertyList(a1, v9);

          CFRelease(v10);
        }
      }
    }
  }
}

uint8_t *MTActuatorGetProductionPlist()
{
  size = 0xAAAAAAAAAAAAAAAALL;
  result = getsectiondata(&dword_25AD59000, "__TEXT", "__tpad_act_plist", &size);
  if (result)
  {
    return CFDataCreate(*MEMORY[0x277CBECE8], result, size);
  }

  return result;
}

uint64_t _GetMTActuationID(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return dword_25AD7B3C0[a1 - 1];
  }
}

double __MTActuatorInit(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 64) = 0;
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t __MTActuatorRelease(uint64_t result)
{
  v1 = result;
  if (result)
  {
    MTActuatorClose(result);
    v2 = *(v1 + 40);
    if (v2)
    {
      CFRelease(v2);
      *(v1 + 40) = 0;
    }

    result = *(v1 + 16);
    if (result)
    {
      result = IOObjectRelease(result);
      *(v1 + 16) = 0;
    }
  }

  *(v1 + 32) = 0;
  return result;
}

uint64_t alg_ComputeContactDensity(int a1, int a2, int a3, int a4)
{
  if (a2 <= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a2;
  }

  return (400 * a1 / (v4 - a4));
}

uint64_t alg_ComputeContactDensityFromRadii(int a1, int a2, int a3, int a4, int a5)
{
  if (a3 <= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a3;
  }

  if (a2 <= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a2;
  }

  v10 = lsqrt(v8 * v9);
  if (v10 <= a4)
  {
    v10 = a4;
  }

  return (400 * a1 / (v10 - a5));
}

uint64_t MTActuationGetTypeID()
{
  result = __kMTActuationTypeID;
  if (!__kMTActuationTypeID)
  {
    pthread_once(&__actuationTypeInit, __MTActuationRegister);
    return __kMTActuationTypeID;
  }

  return result;
}

uint64_t __MTActuationRegister()
{
  result = _CFRuntimeRegisterClass();
  __kMTActuationTypeID = result;
  return result;
}

const __CFDictionary *MTActuationCreateFromDictionary(const void *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"BaseWaveform");
  if (!Value)
  {
    return 0;
  }

  v6 = CFGetTypeID(Value);
  if (v6 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return _MTActuationCreateFromParameterizedWaveform(a1, a2);
}

const __CFDictionary *_MTActuationCreateFromParameterizedWaveform(const __CFDictionary *result, int a2)
{
  v81 = *MEMORY[0x277D85DE8];
  v76 = 0.0;
  valuePtr = 0.0;
  if (result)
  {
    v3 = result;
    result = CFDictionaryGetValue(result, @"BaseWaveform");
    if (result)
    {
      v4 = result;
      v5 = CFGetTypeID(result);
      if (v5 == CFDictionaryGetTypeID())
      {
        *&v6 = 0xAAAAAAAAAAAAAAAALL;
        *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
        buffer[2] = v6;
        buffer[3] = v6;
        buffer[0] = v6;
        buffer[1] = v6;
        Value = CFDictionaryGetValue(v4, @"Type");
        v8 = Value;
        if (Value)
        {
          v9 = CFGetTypeID(Value);
          if (v9 == CFStringGetTypeID() && CFStringGetCString(v8, buffer, 64, 0x600u))
          {
            LODWORD(v8) = MTActuationBaseWaveformGetTypeForKey(buffer);
          }

          else
          {
            LODWORD(v8) = 0;
          }
        }

        v10 = CFDictionaryGetValue(v4, @"DurationMS");
        if (v10)
        {
          v11 = v10;
          v12 = CFGetTypeID(v10);
          if (v12 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v11, kCFNumberDoubleType, &valuePtr);
          }
        }

        v13 = CFDictionaryGetValue(v4, @"Amplitude");
        if (v13)
        {
          v14 = v13;
          v15 = CFGetTypeID(v13);
          if (v15 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v14, kCFNumberDoubleType, &v76);
          }
        }

        v16 = v76;
        v17 = valuePtr;
        MTActuationWaveformCreateWithBase(v8, v74, v16, v17);
        v78[5] = v74[5];
        v78[6] = v74[6];
        v79[0] = v75[0];
        *(v79 + 12) = *(v75 + 12);
        v78[2] = v74[2];
        v78[3] = v74[3];
        v78[4] = v74[4];
        v78[0] = v74[0];
        v78[1] = v74[1];
        v18 = CFDictionaryGetValue(v3, @"Tones");
        if (v18)
        {
          v19 = v18;
          v20 = CFGetTypeID(v18);
          if (v20 == CFArrayGetTypeID() && CFArrayGetCount(v19) >= 1)
          {
            v21 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v19, v21);
              if (ValueAtIndex)
              {
                v23 = ValueAtIndex;
                v24 = CFGetTypeID(ValueAtIndex);
                if (v24 == CFDictionaryGetTypeID())
                {
                  v73 = 0.0;
                  *&v74[0] = 0;
                  v71 = 0.0;
                  v72 = 0.0;
                  v25 = CFDictionaryGetValue(v23, @"Type");
                  v26 = v25;
                  if (v25)
                  {
                    v27 = CFGetTypeID(v25);
                    if (v27 == CFStringGetTypeID() && CFStringGetCString(v26, buffer, 64, 0x600u))
                    {
                      LODWORD(v26) = MTActuationToneWaveformGetTypeForKey(buffer);
                    }

                    else
                    {
                      LODWORD(v26) = 0;
                    }
                  }

                  v28 = CFDictionaryGetValue(v23, @"DelayMS");
                  if (v28)
                  {
                    v29 = v28;
                    v30 = CFGetTypeID(v28);
                    if (v30 == CFNumberGetTypeID())
                    {
                      CFNumberGetValue(v29, kCFNumberDoubleType, v74);
                    }
                  }

                  v31 = CFDictionaryGetValue(v23, @"DurationMS");
                  if (v31)
                  {
                    v32 = v31;
                    v33 = CFGetTypeID(v31);
                    if (v33 == CFNumberGetTypeID())
                    {
                      CFNumberGetValue(v32, kCFNumberDoubleType, &v73);
                    }
                  }

                  v34 = CFDictionaryGetValue(v23, @"Amplitude");
                  if (v34)
                  {
                    v35 = v34;
                    v36 = CFGetTypeID(v34);
                    if (v36 == CFNumberGetTypeID())
                    {
                      CFNumberGetValue(v35, kCFNumberDoubleType, &v72);
                    }
                  }

                  v37 = CFDictionaryGetValue(v23, @"FrequencykHz");
                  if (v37)
                  {
                    v38 = v37;
                    v39 = CFGetTypeID(v37);
                    if (v39 == CFNumberGetTypeID())
                    {
                      CFNumberGetValue(v38, kCFNumberDoubleType, &v71);
                    }
                  }

                  v40 = *v74;
                  v41 = v73;
                  v42 = v72;
                  v43 = v71;
                  MTActuationAppendToWaveform(v78, v26, v40, v41, v42, v43);
                }
              }

              ++v21;
            }

            while (CFArrayGetCount(v19) > v21);
          }
        }

        v44 = CFDictionaryGetValue(v3, @"BaseMultipliers");
        if (v44)
        {
          v45 = v44;
          v46 = CFGetTypeID(v44);
          if (v46 == CFDictionaryGetTypeID())
          {
            LODWORD(v74[0]) = 1065353216;
            LODWORD(v73) = 1065353216;
            LODWORD(v72) = 1065353216;
            v47 = CFDictionaryGetValue(v45, @"Light");
            if (v47)
            {
              v48 = v47;
              v49 = CFGetTypeID(v47);
              if (v49 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v48, kCFNumberFloatType, v74);
              }
            }

            v50 = CFDictionaryGetValue(v45, @"Medium");
            if (v50)
            {
              v51 = v50;
              v52 = CFGetTypeID(v50);
              if (v52 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v51, kCFNumberFloatType, &v73);
              }
            }

            v53 = CFDictionaryGetValue(v45, @"Firm");
            v54 = 1.0;
            if (v53)
            {
              v55 = v53;
              v56 = CFGetTypeID(v53);
              if (v56 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v55, kCFNumberFloatType, &v72);
                v54 = *&v72;
              }
            }

            MTActuationSetBaseMultipliers(v78, *v74, *&v73, v54);
          }
        }

        v57 = CFDictionaryGetValue(v3, @"ToneMultipliers");
        if (v57)
        {
          v58 = v57;
          v59 = CFGetTypeID(v57);
          if (v59 == CFDictionaryGetTypeID())
          {
            LODWORD(v74[0]) = 1065353216;
            LODWORD(v73) = 1065353216;
            LODWORD(v72) = 1065353216;
            v60 = CFDictionaryGetValue(v58, @"Light");
            if (v60)
            {
              v61 = v60;
              v62 = CFGetTypeID(v60);
              if (v62 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v61, kCFNumberFloatType, v74);
              }
            }

            v63 = CFDictionaryGetValue(v58, @"Medium");
            if (v63)
            {
              v64 = v63;
              v65 = CFGetTypeID(v63);
              if (v65 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v64, kCFNumberFloatType, &v73);
              }
            }

            v66 = CFDictionaryGetValue(v58, @"Firm");
            v67 = 1.0;
            if (v66)
            {
              v68 = v66;
              v69 = CFGetTypeID(v66);
              if (v69 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v68, kCFNumberFloatType, &v72);
                v67 = *&v72;
              }
            }

            MTActuationSetToneMultipliers(v78, *v74, *&v73, v67);
          }
        }

        result = _MTActuationCreateFromWaveform(v78, a2);
      }

      else
      {
        result = 0;
      }
    }
  }

  v70 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _MTActuationCreateFromWaveform(_OWORD *a1, int a2)
{
  v4 = *MEMORY[0x277CBECE8];
  if (!__kMTActuationTypeID)
  {
    pthread_once(&__actuationTypeInit, __MTActuationRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v6 = 0;
  if (a1 && Instance)
  {
    *(Instance + 24) = *a1;
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1[3];
    *(Instance + 88) = a1[4];
    *(Instance + 72) = v9;
    *(Instance + 56) = v8;
    *(Instance + 40) = v7;
    v10 = a1[5];
    v11 = a1[6];
    v12 = a1[7];
    *(Instance + 148) = *(a1 + 124);
    *(Instance + 136) = v12;
    *(Instance + 120) = v11;
    *(Instance + 104) = v10;
    *(Instance + 16) = 2;
    *(Instance + 20) = a2;
    return Instance;
  }

  return v6;
}

uint64_t MTActuationCalculateWaveform(uint64_t result, _BYTE *a2, float a3, float a4, uint64_t a5, char a6)
{
  if (!result)
  {
    return result;
  }

  if (a6)
  {
    v10 = *(result + 36);
    v11 = *(result + 48);
  }

  else if ((a6 & 2) != 0)
  {
    v10 = *(result + 40);
    v11 = *(result + 52);
  }

  else
  {
    if ((a6 & 4) == 0)
    {
      v9 = a3;
      goto LABEL_10;
    }

    v10 = *(result + 44);
    v11 = *(result + 56);
  }

  v9 = v11 * a3;
  a3 = v10 * a3;
LABEL_10:
  v13 = *(result + 24);
  v12 = (result + 24);
  if (!v13)
  {
    return 0;
  }

  v22 = v6;
  v23 = v7;
  if (v9 > 2.0)
  {
    v9 = 2.0;
  }

  v14 = v12[7];
  v20[6] = v12[6];
  v21[0] = v14;
  if (v9 >= 0.0)
  {
    v15 = v9;
  }

  else
  {
    v15 = 0.0;
  }

  if (a3 > 2.0)
  {
    a3 = 2.0;
  }

  *(v21 + 12) = *(v12 + 124);
  if (a3 >= 0.0)
  {
    v16 = a3;
  }

  else
  {
    v16 = 0.0;
  }

  v17 = v12[3];
  v20[2] = v12[2];
  v20[3] = v17;
  v18 = v12[5];
  v20[4] = v12[4];
  v20[5] = v18;
  v19 = v12[1];
  v20[0] = *v12;
  v20[1] = v19;
  return MTActuationFillParametricBufferWithWaveform(v20, a2, 0.041667, v16, v15, a4);
}

uint64_t MTActuationSetFirmwareDownClick(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = 3758097090;
  if (a1 && a2)
  {
    v4 = MEMORY[0x28223BE20]();
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v13[12] = v5;
    v12[1] = v5;
    *v13 = v5;
    v12[0] = v5;
    v9 = MTActuationCalculateWaveform(v4, v12, v7, v8, 60, v6);
    if (v9 < 1)
    {
      v2 = 3758097084;
    }

    else
    {
      v2 = MTActuatorSetReport(a2, 34, v12, v9);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t MTActuationSetFirmwareUpClick(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = 3758097090;
  if (a1 && a2)
  {
    v4 = MEMORY[0x28223BE20]();
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v13[12] = v5;
    v12[1] = v5;
    *v13 = v5;
    v12[0] = v5;
    v9 = MTActuationCalculateWaveform(v4, v12, v7, v8, 60, v6);
    if (v9 < 1)
    {
      v2 = 3758097084;
    }

    else
    {
      v2 = MTActuatorSetReport(a2, 35, v12, v9);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t MTActuationActuate(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = 3758097090;
  if (a1 && a2)
  {
    v4 = MEMORY[0x28223BE20]();
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v13[12] = v5;
    v12[1] = v5;
    *v13 = v5;
    v12[0] = v5;
    v9 = MTActuationCalculateWaveform(v4, v12, v7, v8, 60, v6);
    if (v9 < 1)
    {
      v2 = 3758097084;
    }

    else
    {
      v2 = MTActuatorSetWaveform(a2, 83, v12, v9);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

double __MTActuationInit(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 160) = 0;
    result = 0.0;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t touchpadCodecDecodeImage(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v81 = 0;
  v80 = 0;
  v7 = *(a1 + 664);
  v76 = *(a1 + 668);
  v85 = 0;
  v86 = 0;
  v82 = a4;
  v83 = a5;
  v84 = 0;
  if (!codecReadHeader(&v82, &v80))
  {
    return 0;
  }

  v74 = v80;
  if (v80)
  {
    if (*(a1 + 664) != __PAIR64__(HIWORD(v80), WORD2(v80)) || v81 != *(a1 + 672))
    {
      return 0;
    }

    codecResetModel(a1);
  }

  if (v76)
  {
    v8 = 0;
    v9 = 0;
    v10 = v84;
    v11 = v85;
    v73 = *(a1 + 632);
    v12 = v86;
    v13 = HIDWORD(v86);
    while (1)
    {
      v14 = -v7;
      if ((v74 & (v9 != 0)) == 0)
      {
        v14 = 0;
      }

      v79 = a2;
      v78 = v8;
      v77 = v9;
      if (v7)
      {
        break;
      }

LABEL_97:
      v9 = v77 + 1;
      a2 = (v79 + a3);
      v8 = v78 + v7;
      if (v77 + 1 == v76)
      {
        goto LABEL_100;
      }
    }

    v15 = (v73 + 2 * v8);
    v16 = *(v73 + 2 * (v7 * v9) + 2 * v14);
    v17 = 2 * v14 + 2;
    v18 = 1;
    v19 = v7;
    v21 = v82;
    v20 = v83;
    v22 = v16;
    v23 = v16;
    v24 = v11;
    while (1)
    {
      v25 = v16;
      if (v18 < v7)
      {
        v16 = *(v15 + v17);
      }

      v26 = v22 - v23;
      if (v22 - v23 <= -2)
      {
        v27 = -50;
      }

      else
      {
        v27 = 0;
      }

      if (v26 > 1)
      {
        v27 = 50;
      }

      if (v26 < -40)
      {
        v27 = -25;
      }

      if (v26 > 40)
      {
        v27 = 25;
      }

      v28 = v23 - v25;
      if (v28 <= -2)
      {
        v29 = -10;
      }

      else
      {
        v29 = 0;
      }

      if (v28 > 1)
      {
        v29 = 10;
      }

      if (v28 < -40)
      {
        v29 = -5;
      }

      if (v28 <= 40)
      {
        v30 = v29;
      }

      else
      {
        v30 = 5;
      }

      v31 = v30 + v27;
      v32 = v25 - v16;
      if (v25 - v16 <= -2)
      {
        v33 = -2;
      }

      else
      {
        v33 = 0;
      }

      if (v32 > 1)
      {
        v33 = 2;
      }

      if (v32 < -40)
      {
        v33 = -1;
      }

      if (v32 <= 40)
      {
        v34 = v33;
      }

      else
      {
        v34 = 1;
      }

      v35 = v31 + v34;
      v36 = v26 + v25;
      if (v36 <= v22)
      {
        v37 = v22;
      }

      else
      {
        v37 = v36;
      }

      if (v36 < v22)
      {
        v22 = v36;
      }

      if (v37 >= v25)
      {
        v38 = v25;
      }

      else
      {
        v38 = v37;
      }

      if (v22 <= v38)
      {
        LOWORD(v22) = v38;
      }

      if (v35 >= 0)
      {
        v39 = v35;
      }

      else
      {
        v39 = -v35;
      }

      if (v13 <= 15)
      {
        v40 = v10 + 1;
        v84 = v10 + 1;
        if (v10 < v20)
        {
          v11 = v24 + 1;
          v85 = v24 + 1;
          v12 |= *(v21 + v24) << v13;
          v13 += 8;
          v86 = __PAIR64__(v13, v12);
          ++v24;
        }

        v10 += 2;
        v84 = v10;
        if (v40 < v20)
        {
          v11 = v24 + 1;
          v85 = v24 + 1;
          v12 |= *(v21 + v24) << v13;
          v13 += 8;
          ++v24;
        }
      }

      v41 = a1 + 10 * v39;
      v42 = *(v41 + 8);
      v43 = __clz(__rbit32(v12 | 0x10000));
      if (v43 > 0xF)
      {
        v48 = HIWORD(v12);
        v49 = v13 - 16;
        LODWORD(v86) = HIWORD(v12);
        HIDWORD(v86) = v13 - 16;
        if (v13 <= 31)
        {
          v50 = v10 + 1;
          v84 = v10 + 1;
          if (v10 < v20)
          {
            v11 = v24 + 1;
            v85 = v24 + 1;
            v48 |= *(v21 + v24) << v49;
            v49 = v13 - 8;
            LODWORD(v86) = v48;
            HIDWORD(v86) = v13 - 8;
            ++v24;
          }

          v10 += 2;
          v84 = v10;
          if (v50 < v20)
          {
            v11 = v24 + 1;
            v85 = v24 + 1;
            v48 |= *(v21 + v24) << v49;
            v49 += 8;
            ++v24;
          }
        }

        v12 = HIWORD(v48);
        v13 = v49 - 16;
        LODWORD(v86) = HIWORD(v48);
        HIDWORD(v86) = v49 - 16;
      }

      else
      {
        v44 = v12 >> (v43 + 1);
        v45 = v13 - (v43 + 1);
        v86 = __PAIR64__(v45, v44);
        if (v45 <= 15)
        {
          v46 = v10 + 1;
          v84 = v10 + 1;
          if (v10 < v20)
          {
            v11 = v24 + 1;
            v85 = v24 + 1;
            v44 |= *(v21 + v24) << v45;
            v45 += 8;
            v86 = __PAIR64__(v45, v44);
            ++v24;
          }

          v10 += 2;
          v84 = v10;
          if (v46 < v20)
          {
            v11 = v24 + 1;
            v85 = v24 + 1;
            v44 |= *(v21 + v24) << v45;
            v45 += 8;
            ++v24;
          }
        }

        v47 = v44 & ((-1 << v42) ^ 0xFFFF);
        v12 = v44 >> v42;
        v13 = v45 - v42;
        v86 = __PAIR64__(v13, v12);
        v48 = v47 + (v43 << v42);
      }

      v51 = v48 & 1;
      v52 = (v48 >> 1) ^ -v51;
      v54 = *v41;
      v53 = *(v41 + 4);
      v55 = *(v41 + 9) + 1;
      *(v41 + 9) = v55;
      v56 = v52 >= 0 ? v52 : -v52;
      if (v52 > 0)
      {
        break;
      }

      if (v51)
      {
        v57 = -1;
        goto LABEL_81;
      }

LABEL_82:
      v58 = v56 + v54;
      v59 = v55 << v42;
      if (v42)
      {
        v60 = v59 < 2 * v58;
      }

      else
      {
        v60 = 1;
      }

      v61 = !v60;
      v62 = v61 << 31 >> 31;
      if (v59 >= v58)
      {
        v63 = v62;
      }

      else
      {
        v63 = 1;
      }

      *v41 = v58;
      *(v41 + 8) = v42 + v63;
      if (v55 == 64)
      {
        *(v41 + 9) = 32;
        *v41 = v58 - (v58 >> 1);
      }

      if (v35 >= 0)
      {
        LOWORD(v64) = v52 + ((v53 + 8) >> 4);
      }

      else
      {
        v64 = -(v52 + ((v53 + 8) >> 4));
      }

      v65 = v64 + v22;
      *a2++ = v65;
      v22 = v65;
      *v15++ = v65;
      ++v18;
      v23 = v25;
      if (!--v19)
      {
        goto LABEL_97;
      }
    }

    v57 = 1;
LABEL_81:
    *(v41 + 4) = v53 + v57;
    goto LABEL_82;
  }

  v13 = HIDWORD(v86);
LABEL_100:
  if (v13 <= 15)
  {
    v66 = v84;
    v67 = ++v84;
    if (v66 < v83)
    {
      v68 = v85++;
      v69 = *(v82 + v68) << v13;
      v13 += 8;
      LODWORD(v86) = v69 | v86;
      HIDWORD(v86) = v13;
    }

    v84 = v66 + 2;
    if (v67 < v83)
    {
      v70 = v85++;
      LODWORD(v86) = v86 | (*(v82 + v70) << v13);
      v13 += 8;
    }
  }

  v71 = v86 & 0xFFF;
  LODWORD(v86) = v86 >> 12;
  HIDWORD(v86) = v13 - 12;
  if (v71 == codecGetFooterID(a1) && (v86 & 0x8000000000000000) == 0)
  {
    return v85 - (HIDWORD(v86) >> 3);
  }

  return 0;
}

uint64_t touchpadGetInfoWithCompressedBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  v6[0] = a3;
  v6[1] = a4;
  memset(&v6[2], 0, 24);
  if (a2 == 9)
  {
    if (codecReadHeader(v6, a1))
    {
      return 9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL codecReadHeader(uint64_t *a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  *a2 = 0;
  v2 = *(a1 + 9);
  if (v2 <= 15)
  {
    v4 = a1[1];
    v3 = a1[2];
    a1[2] = v3 + 1;
    if (v3 < v4)
    {
      v5 = *a1;
      v6 = a1[3];
      a1[3] = v6 + 1;
      LODWORD(v5) = (*(v5 + v6) << v2) | *(a1 + 8);
      v2 += 8;
      *(a1 + 8) = v5;
      *(a1 + 9) = v2;
    }

    a1[2] = v3 + 2;
    if (v3 + 1 < v4)
    {
      v7 = *a1;
      v8 = a1[3];
      a1[3] = v8 + 1;
      *(a1 + 8) |= *(v7 + v8) << v2;
      v2 += 8;
    }
  }

  v9 = a1[4] & 0x1F;
  v10 = *(a1 + 8) >> 5;
  v11 = v2 - 5;
  *(a1 + 8) = v10;
  *(a1 + 9) = v2 - 5;
  v12 = v9 - 16;
  if (v9 > 0x10)
  {
    if (v2 <= 20)
    {
      v24 = a1[1];
      v23 = a1[2];
      a1[2] = v23 + 1;
      if (v23 < v24)
      {
        v25 = *a1;
        v26 = a1[3];
        a1[3] = v26 + 1;
        v10 |= *(v25 + v26) << v11;
        v11 = v2 + 3;
        *(a1 + 8) = v10;
        *(a1 + 9) = v2 + 3;
      }

      a1[2] = v23 + 2;
      if (v23 + 1 < v24)
      {
        v27 = *a1;
        v28 = a1[3];
        a1[3] = v28 + 1;
        v10 |= *(v27 + v28) << v11;
        v11 += 8;
      }
    }

    v29 = HIWORD(v10);
    v30 = v11 - 16;
    *(a1 + 8) = HIWORD(v10);
    *(a1 + 9) = v11 - 16;
    if (v11 <= 31)
    {
      v32 = a1[1];
      v31 = a1[2];
      a1[2] = v31 + 1;
      if (v31 < v32)
      {
        v33 = *a1;
        v34 = a1[3];
        a1[3] = v34 + 1;
        v29 |= *(v33 + v34) << v30;
        v30 = v11 - 8;
        *(a1 + 8) = v29;
        *(a1 + 9) = v11 - 8;
      }

      a1[2] = v31 + 2;
      if (v31 + 1 < v32)
      {
        v35 = *a1;
        v36 = a1[3];
        a1[3] = v36 + 1;
        v29 |= *(v35 + v36) << v30;
        v30 += 8;
      }
    }

    v37 = v29 & ~(-1 << v12);
    v20 = v29 >> v12;
    v21 = v30 - v12;
    *(a1 + 8) = v20;
    *(a1 + 9) = v30 - v12;
    v22 = v10 | (v37 << 16);
    v19 = -1 << v9;
  }

  else
  {
    if (v2 <= 20)
    {
      v14 = a1[1];
      v13 = a1[2];
      a1[2] = v13 + 1;
      if (v13 < v14)
      {
        v15 = *a1;
        v16 = a1[3];
        a1[3] = v16 + 1;
        v10 |= *(v15 + v16) << v11;
        v11 = v2 + 3;
        *(a1 + 8) = v10;
        *(a1 + 9) = v2 + 3;
      }

      a1[2] = v13 + 2;
      if (v13 + 1 < v14)
      {
        v17 = *a1;
        v18 = a1[3];
        a1[3] = v18 + 1;
        v10 |= *(v17 + v18) << v11;
        v11 += 8;
      }
    }

    v19 = -1 << v9;
    v20 = v10 >> v9;
    v21 = v11 - v9;
    *(a1 + 8) = v10 >> v9;
    *(a1 + 9) = v21;
    v22 = v10 & ~(-1 << v9);
  }

  v38 = v22 + ~v19;
  *a2 = v38;
  if (v38)
  {
    if (v21 <= 15)
    {
      v40 = a1[1];
      v39 = a1[2];
      a1[2] = v39 + 1;
      if (v39 < v40)
      {
        v41 = *a1;
        v42 = a1[3];
        a1[3] = v42 + 1;
        v20 |= *(v41 + v42) << v21;
        v21 += 8;
        *(a1 + 8) = v20;
        *(a1 + 9) = v21;
      }

      a1[2] = v39 + 2;
      if (v39 + 1 < v40)
      {
        v43 = *a1;
        v44 = a1[3];
        a1[3] = v44 + 1;
        v20 |= *(v43 + v44) << v21;
        v21 += 8;
      }
    }

    v45 = v20 & 0xF;
    v46 = v20 >> 4;
    v47 = v21 - 4;
    *(a1 + 8) = v46;
    *(a1 + 9) = v21 - 4;
    v48 = v45 + 1;
    if (v21 <= 19)
    {
      v50 = a1[1];
      v49 = a1[2];
      a1[2] = v49 + 1;
      if (v49 < v50)
      {
        v51 = *a1;
        v52 = a1[3];
        a1[3] = v52 + 1;
        v46 |= *(v51 + v52) << v47;
        v47 = v21 + 4;
        *(a1 + 8) = v46;
        *(a1 + 9) = v21 + 4;
      }

      a1[2] = v49 + 2;
      if (v49 + 1 < v50)
      {
        v53 = *a1;
        v54 = a1[3];
        a1[3] = v54 + 1;
        v46 |= *(v53 + v54) << v47;
        v47 += 8;
      }
    }

    v55 = ~(-2 << v45);
    v56 = v46 & v55;
    v57 = v46 >> v48;
    v58 = v47 - v48;
    *(a1 + 8) = v57;
    *(a1 + 9) = v47 - v48;
    *(a2 + 4) = v56;
    if (v47 - v48 <= 15)
    {
      v60 = a1[1];
      v59 = a1[2];
      a1[2] = v59 + 1;
      if (v59 < v60)
      {
        v61 = *a1;
        v62 = a1[3];
        a1[3] = v62 + 1;
        v57 |= *(v61 + v62) << v58;
        v58 += 8;
        *(a1 + 8) = v57;
        *(a1 + 9) = v58;
      }

      a1[2] = v59 + 2;
      if (v59 + 1 < v60)
      {
        v63 = *a1;
        v64 = a1[3];
        a1[3] = v64 + 1;
        v57 |= *(v63 + v64) << v58;
        v58 += 8;
      }
    }

    v65 = v57 & v55;
    v66 = v57 >> v48;
    v67 = v58 - v48;
    *(a1 + 8) = v66;
    *(a1 + 9) = v67;
    *(a2 + 6) = v65;
    if (v67 <= 15)
    {
      v69 = a1[1];
      v68 = a1[2];
      a1[2] = v68 + 1;
      if (v68 < v69)
      {
        v70 = *a1;
        v71 = a1[3];
        a1[3] = v71 + 1;
        v66 |= *(v70 + v71) << v67;
        v67 += 8;
        *(a1 + 8) = v66;
        *(a1 + 9) = v67;
      }

      a1[2] = v68 + 2;
      if (v68 + 1 < v69)
      {
        v72 = *a1;
        v73 = a1[3];
        a1[3] = v73 + 1;
        v66 |= *(v72 + v73) << v67;
        v67 += 8;
      }
    }

    v74 = v66 & 0x1F;
    v75 = v66 >> 5;
    v21 = v67 - 5;
    *(a1 + 8) = v75;
    *(a1 + 9) = v67 - 5;
    *(a2 + 8) = v74 + 1;
  }

  return (v21 & 0x80000000) == 0 && a1[3] != v21 >> 3;
}

uint64_t *codecWriteHeader(uint64_t *result, int a2, int a3, __int16 a4, int a5)
{
  v5 = __clz(a5 + 1);
  v6 = 31 - v5;
  v7 = *(result + 9);
  v8 = *(result + 8) | ((31 - v5) << v7);
  v9 = v7 + 5;
  *(result + 8) = v8;
  *(result + 9) = v7 + 5;
  if (v7 >= 12)
  {
    v10 = result[1];
    v11 = result[2];
    v12 = v11 + 1;
    result[2] = v11 + 1;
    if (v11 < v10)
    {
      v13 = *result;
      v14 = result[3];
      result[3] = v14 + 1;
      *(v13 + v14) = v8;
      v8 = *(result + 8);
      v9 = *(result + 9);
      v10 = result[1];
      v12 = result[2];
    }

    v15 = v8 >> 8;
    v16 = v9 - 8;
    *(result + 8) = v15;
    *(result + 9) = v16;
    result[2] = v12 + 1;
    if (v12 < v10)
    {
      v17 = *result;
      v18 = result[3];
      result[3] = v18 + 1;
      *(v17 + v18) = v15;
      v15 = *(result + 8);
      v16 = *(result + 9);
    }

    v8 = v15 >> 8;
    v9 = v16 - 8;
  }

  v19 = v8 | ((a5 + 1 - (0x80000000 >> v5)) << v9);
  v20 = v9 + v6;
  *(result + 8) = v19;
  *(result + 9) = v9 + v6;
  if ((v9 + v6) >= 17)
  {
    v21 = result[1];
    v22 = result[2];
    v23 = v22 + 1;
    result[2] = v22 + 1;
    if (v22 < v21)
    {
      v24 = *result;
      v25 = result[3];
      result[3] = v25 + 1;
      *(v24 + v25) = v19;
      v19 = *(result + 8);
      v20 = *(result + 9);
      v21 = result[1];
      v23 = result[2];
    }

    v26 = v19 >> 8;
    v27 = v20 - 8;
    *(result + 8) = v26;
    *(result + 9) = v27;
    result[2] = v23 + 1;
    if (v23 < v21)
    {
      v28 = *result;
      v29 = result[3];
      result[3] = v29 + 1;
      *(v28 + v29) = v26;
      v26 = *(result + 8);
      v27 = *(result + 9);
    }

    v19 = v26 >> 8;
    v20 = v27 - 8;
    *(result + 8) = v19;
    *(result + 9) = v20;
  }

  if (a5)
  {
    v30 = __clz(a3 | a2);
    v31 = v19 | ((31 - v30) << v20);
    v32 = v20 + 4;
    *(result + 8) = v31;
    *(result + 9) = v20 + 4;
    if (v20 >= 13)
    {
      v33 = result[1];
      v34 = result[2];
      v35 = v34 + 1;
      result[2] = v34 + 1;
      if (v34 < v33)
      {
        v36 = *result;
        v37 = result[3];
        result[3] = v37 + 1;
        *(v36 + v37) = v31;
        v31 = *(result + 8);
        v32 = *(result + 9);
        v33 = result[1];
        v35 = result[2];
      }

      v38 = v31 >> 8;
      v39 = v32 - 8;
      *(result + 8) = v38;
      *(result + 9) = v39;
      result[2] = v35 + 1;
      if (v35 < v33)
      {
        v40 = *result;
        v41 = result[3];
        result[3] = v41 + 1;
        *(v40 + v41) = v38;
        v38 = *(result + 8);
        v39 = *(result + 9);
      }

      v31 = v38 >> 8;
      v32 = v39 - 8;
    }

    v42 = 32 - v30;
    v43 = v31 | (a2 << v32);
    v44 = v32 + v42;
    *(result + 8) = v43;
    *(result + 9) = v32 + v42;
    if ((v32 + v42) >= 17)
    {
      v45 = result[1];
      v46 = result[2];
      v47 = v46 + 1;
      result[2] = v46 + 1;
      if (v46 < v45)
      {
        v48 = *result;
        v49 = result[3];
        result[3] = v49 + 1;
        *(v48 + v49) = v43;
        v43 = *(result + 8);
        v44 = *(result + 9);
        v45 = result[1];
        v47 = result[2];
      }

      v50 = v43 >> 8;
      v51 = v44 - 8;
      *(result + 8) = v50;
      *(result + 9) = v51;
      result[2] = v47 + 1;
      if (v47 < v45)
      {
        v52 = *result;
        v53 = result[3];
        result[3] = v53 + 1;
        *(v52 + v53) = v50;
        v50 = *(result + 8);
        v51 = *(result + 9);
      }

      v43 = v50 >> 8;
      v44 = v51 - 8;
    }

    v54 = v43 | (a3 << v44);
    v55 = v44 + v42;
    *(result + 8) = v54;
    *(result + 9) = v55;
    if (v55 >= 17)
    {
      v56 = result[1];
      v57 = result[2];
      v58 = v57 + 1;
      result[2] = v57 + 1;
      if (v57 < v56)
      {
        v59 = *result;
        v60 = result[3];
        result[3] = v60 + 1;
        *(v59 + v60) = v54;
        v54 = *(result + 8);
        v55 = *(result + 9);
        v56 = result[1];
        v58 = result[2];
      }

      v61 = v54 >> 8;
      v62 = v55 - 8;
      *(result + 8) = v61;
      *(result + 9) = v62;
      result[2] = v58 + 1;
      if (v58 < v56)
      {
        v63 = *result;
        v64 = result[3];
        result[3] = v64 + 1;
        *(v63 + v64) = v61;
        v61 = *(result + 8);
        v62 = *(result + 9);
      }

      v54 = v61 >> 8;
      v55 = v62 - 8;
    }

    v65 = v54 | ((a4 - 1) << v55);
    v66 = v55 + 5;
    *(result + 8) = v65;
    *(result + 9) = v55 + 5;
    if (v55 >= 12)
    {
      v67 = result[1];
      v68 = result[2];
      v69 = v68 + 1;
      result[2] = v68 + 1;
      if (v68 < v67)
      {
        v70 = *result;
        v71 = result[3];
        result[3] = v71 + 1;
        *(v70 + v71) = v65;
        v65 = *(result + 8);
        v66 = *(result + 9);
        v67 = result[1];
        v69 = result[2];
      }

      v72 = v65 >> 8;
      v73 = v66 - 8;
      *(result + 8) = v72;
      *(result + 9) = v73;
      result[2] = v69 + 1;
      if (v69 < v67)
      {
        v74 = *result;
        v75 = result[3];
        result[3] = v75 + 1;
        *(v74 + v75) = v72;
        v72 = *(result + 8);
        v73 = *(result + 9);
      }

      *(result + 8) = v72 >> 8;
      *(result + 9) = v73 - 8;
    }
  }

  return result;
}

void *touchpadCodecCreate(int a1, int a2, int a3, int a4, uint64_t a5)
{
  v5 = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3 == 16 && !a4 && !a5)
      {
        v8 = calloc(1uLL, 0x2A8uLL);
        v5 = v8;
        if (v8)
        {
          v8[81] = (a2 * a1);
          v8[80] = 2 * (a2 * a1);
          v8[82] = 0;
          *(v8 + 166) = a1;
          *(v8 + 167) = a2;
          *(v8 + 672) = 16;
          v9 = malloc(2 * (a2 * a1));
          v5[79] = v9;
          if (v9)
          {
            bzero(v9, 2 * (a2 * a1));
            for (i = 0; i != 630; i += 10)
            {
              v11 = v5 + i;
              *v11 = 32;
              *(v11 + 4) = 261;
            }

            v5[82] = 0;
          }

          else
          {
            free(v5);
            return 0;
          }
        }
      }
    }
  }

  return v5;
}

void codecResetModel(uint64_t a1)
{
  bzero(*(a1 + 632), *(a1 + 640));
  v2 = a1 + 9;
  v3 = 63;
  do
  {
    *(v2 - 9) = 32;
    *(v2 - 1) = 261;
    v2 += 10;
    --v3;
  }

  while (v3);
  *(a1 + 656) = 0;
}

void touchpadCodecDestroy(void **a1)
{
  if (a1)
  {
    free(a1[79]);

    free(a1);
  }
}

uint64_t codecGetFooterID(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  do
  {
    v2 = *(a1 + v1) ^ __ROR4__(v2, 31);
    v1 += 10;
  }

  while (v1 != 630);
  return (-1640531535 * v2) >> 20;
}

void __MTDeviceCreateMultitouchDispatchSource_block_invoke_cold_1(int a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = MTLoggingFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_25AD59000, v2, OS_LOG_TYPE_FAULT, "mach_msg failed: 0x%08x", v4, 8u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void mt_CreateBinaryFilters_cold_1()
{
  v1 = MTLoggingFramework();
  if (OUTLINED_FUNCTION_1(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mt_CreateBinaryFilters_cold_2(uint8_t *a1, uint64_t a2, void *a3)
{
  v7 = MTLoggingFramework();
  if (OUTLINED_FUNCTION_1(v7))
  {
    *a1 = 138543362;
    *a3 = a2;
    OUTLINED_FUNCTION_0();
    _os_log_impl(v8, v9, v10, v11, a1, 0xCu);
  }
}

void mt_CreateBinaryFilters_cold_3(uint8_t *a1, _BYTE *a2)
{
  v5 = MTLoggingFramework();
  if (OUTLINED_FUNCTION_1(v5))
  {
    *a1 = 0;
    *a2 = 0;
    OUTLINED_FUNCTION_0();
    _os_log_impl(v6, v7, v8, v9, a1, 2u);
  }
}

void mt_CreateBinaryFilters_cold_4(uint8_t *a1, void *a2, void *a3)
{
  v7 = MTLoggingFramework();
  if (OUTLINED_FUNCTION_1(v7))
  {
    v8 = [a2 objectForKeyedSubscript:@"Name"];
    *a1 = 138543362;
    *a3 = v8;
    OUTLINED_FUNCTION_0();
    _os_log_impl(v9, v10, v11, v12, a1, 0xCu);
  }
}

void mt_CreateBinaryFilters_cold_5(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MTLoggingFramework();
  if (OUTLINED_FUNCTION_1(v3))
  {
    [a1 count];
    OUTLINED_FUNCTION_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0xEu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void mt_UpdateMaxPacketSize_cold_1(void *a1, NSObject **a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = MTLoggingFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 67109120;
    v6[1] = [a1 maxFrameSize];
    _os_log_impl(&dword_25AD59000, v4, OS_LOG_TYPE_DEBUG, "Setting a max injection packet size of %u", v6, 8u);
  }

  *a2 = v4;
  v5 = *MEMORY[0x277D85DE8];
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}