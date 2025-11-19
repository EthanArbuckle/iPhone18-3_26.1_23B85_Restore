uint64_t IOMobileFramebufferSwapWait(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2472)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t kern_SwapWait(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = 0;
  result = IOConnectCallScalarMethod(*(a1 + 20), 6u, v5, 3u, 0, 0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOMobileFramebufferSwapBegin(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2416)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t kern_SwapBegin(uint64_t a1, _DWORD *a2)
{
  output[2] = *MEMORY[0x277D85DE8];
  output[0] = 0xAAAAAAAAAAAAAAAALL;
  output[1] = 0xAAAAAAAAAAAAAAAALL;
  outputCnt = 1;
  if (IOConnectCallScalarMethod(*(a1 + 20), 4u, 0, 0, output, &outputCnt))
  {
    result = 3758097084;
  }

  else
  {
    bzero((a1 + 24), 0x560uLL);
    v5 = *(a1 + 3464);
    if (v5)
    {
      IOMFBGainMapRelease(a1, v5);
      *(a1 + 3464) = 0;
    }

    v6 = output[0];
    *(a1 + 176) = output[0];
    if (a2)
    {
      *a2 = v6;
    }

    result = 0;
    *(a1 + 404) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_ingest_timestamp(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 && !*(a1 + 2148))
  {
    v3 = mach_continuous_time();
    return v3 + v2 - mach_absolute_time();
  }

  return v2;
}

uint64_t iomfb_SwapSetTimestamps(uint64_t a1, int *a2, uint64_t *a3, int a4)
{
  v4 = 3758097090;
  if (!a1)
  {
    return v4;
  }

  v5 = a2;
  if (!a2)
  {
    return v4;
  }

  v6 = a3;
  if (!a3)
  {
    return v4;
  }

  LODWORD(v7) = a4;
  if (!a4)
  {
    return v4;
  }

  pthread_mutex_lock((a1 + 2072));
  v7 = v7;
  while (1)
  {
    v10 = *v5++;
    v9 = v10;
    if (v10 <= 3)
    {
      break;
    }

    if (v9 > 5)
    {
      v11 = (a1 + 64);
      if (v9 != 6)
      {
        v11 = (a1 + 72);
        if (v9 != 7)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      v11 = (a1 + 48);
      if (v9 != 4)
      {
        v11 = (a1 + 56);
        if (v9 != 5)
        {
          goto LABEL_21;
        }
      }
    }

LABEL_17:
    v12 = *v6++;
    *v11 = (*(a1 + 2984))(a1, v12);
    if (!--v7)
    {
      v4 = 0;
      goto LABEL_19;
    }
  }

  v11 = (a1 + 24);
  if (v9 == 1)
  {
    goto LABEL_17;
  }

  v11 = (a1 + 32);
  if (v9 == 2)
  {
    goto LABEL_17;
  }

  v11 = (a1 + 40);
  if (v9 == 3)
  {
    goto LABEL_17;
  }

LABEL_21:
  syslog(4, "IOMFB: unknown timestamp type: %d\n", v9);
  v4 = 3758097090;
LABEL_19:
  pthread_mutex_unlock((a1 + 2072));
  return v4;
}

uint64_t IOMobileFramebufferSwapSetTimestamps(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2312)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

void PackAndDispatchFrameInfoNotifictionData(uint64_t a1)
{
  v2 = *(a1 + 3584);
  v3 = *(a1 + 3592);
  v20 = v2;
  if (v2 < 0)
  {
    v4 = v2 & 0x7FFFFFFF;
  }

  else
  {
    v4 = v2;
  }

  v5 = *MEMORY[0x277CBECE8];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (theDict)
  {
    v19 = v3;
    if (v4)
    {
      v6 = 0;
      v7 = a1 + 3584;
      v8 = 2;
      do
      {
        v9 = 1 << v6;
        v10 = ((1 << v6) & v4) == 0;
        v11 = 1 << v6 < v4 && ((1 << v6) & v4) == 0;
        if (v11)
        {
          do
          {
            ++v6;
            v12 = v4 & (2 * v9);
            v9 *= 2;
            v10 = v12 == 0;
          }

          while (v9 < v4 && !v12);
        }

        if (v10)
        {
          break;
        }

        v13 = v8 + 1;
        v14 = *(v7 + 8 * v8);
        if (v20 < 0)
        {
          v8 += 2;
          v14 |= *(v7 + 8 * v13) << 32;
        }

        else
        {
          ++v8;
        }

        v15 = CFStringCreateWithCString(v5, *(*(a1 + 2032) + 8 * v6), 0x600u);
        valuePtr = adjust_ni_timestamp(a1, *(*(a1 + 2032) + 8 * v6), v14);
        v16 = CFNumberCreate(v5, kCFNumberLongLongType, &valuePtr);
        v17 = v16;
        if (v15)
        {
          v18 = v16 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          CFRelease(theDict);
          if (v15)
          {
            CFRelease(v15);
          }

          if (v17)
          {
            goto LABEL_27;
          }

          return;
        }

        CFDictionarySetValue(theDict, v15, v16);
        CFRelease(v17);
        CFRelease(v15);
        v11 = v9 == v4;
        v4 ^= v9;
      }

      while (!v11);
    }

    if (*(a1 + 3512) == 1)
    {
      kdebug_trace();
    }

    v17 = theDict;
    (*(a1 + 1768))(a1, v19, theDict, *(a1 + 1712));
LABEL_27:
    CFRelease(v17);
  }
}

void FrameInfoNotifyFuncIOShq(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  dataSize = 0;
  v4 = *(a4 + 1752);
  if (v4)
  {
    v6 = IODataQueuePeek(v4);
    if (v6)
    {
      v7 = v6;
      v8 = 1;
      do
      {
        memcpy((a4 + 3584), v7->data, v7->size);
        PackAndDispatchFrameInfoNotifictionData(a4);
        IODataQueueDequeue(*(a4 + 1752), 0, &dataSize);
        v7 = IODataQueuePeek(*(a4 + 1752));
        ++v8;
      }

      while (v7);
    }
  }

  else
  {
    syslog(3, "FrameInfoNotifyFunc IO Data Queue not available");
  }
}

uint64_t adjust_ni_timestamp(uint64_t a1, char *__s2, uint64_t a3)
{
  if (*(a1 + 2148) == 1)
  {
    return a3;
  }

  v6 = "Issued_time";
  v7 = off_2784F8AF8;
  while (strcmp(v6, __s2))
  {
    v8 = *v7++;
    v6 = v8;
    if (!v8)
    {
      return a3;
    }
  }

  v10 = *(a1 + 2992);

  return v10(a1, a3);
}

uint64_t IOMobileFramebufferSwapSetEventWait(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2248)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t kern_SwapSetEventWait(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 4 * a2 + 704) = MEMORY[0x223DF84E0](a3);
  *(a1 + 8 * a2 + 104) = a4;
  return 0;
}

uint64_t IOMobileFramebufferSwapSetEventSignal(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2264)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t kern_SwapSetEventSignal(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 4 * a2 + 724) = MEMORY[0x223DF84E0](a3);
  *(a1 + 8 * a2 + 144) = a4;
  return 0;
}

uint64_t IOMobileFramebufferSwapSetLayer(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2232)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t kern_SwapSetLayer(uint64_t a1, unsigned int a2, IOSurfaceRef buffer, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v78 = 0u;
  if (a2 >= 4)
  {
    syslog(3, "%s - layer index too large: %d\n", "IOReturn kern_SwapSetLayer(IOMobileFramebufferRef, uint32_t, IOSurfaceRef, CGRect, CGRect, uint32_t)", a2);
    return 3758097090;
  }

  v25 = a1 + 356;
  if (buffer)
  {
    v26 = 0;
    v27 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v77 = _Q0;
    v33 = a1 + 180;
    do
    {
      if (4 * a2 != v26 && *(v33 + v26))
      {
        ++v27;
      }

      v26 += 4;
    }

    while (v26 != 16);
    if (v27 > 2)
    {
      syslog(3, "%s - too many active layers: %d\n", "IOReturn kern_SwapSetLayer(IOMobileFramebufferRef, uint32_t, IOSurfaceRef, CGRect, CGRect, uint32_t)", v27 + 1);
    }

    *(v33 + 4 * a2) = IOSurfaceGetID(buffer);
    v34.f64[0] = *(a1 + 1456);
    if (v34.f64[0] != 0.0 && *(a1 + 1464) != 0.0)
    {
      v34.f64[1] = *(a1 + 1464);
      v35 = vdivq_f64(v34, *(v25 + 1076));
      a9 = a9 * v35.f64[0];
      a10 = vmuld_lane_f64(a10, v35, 1);
      a11 = a11 * v35.f64[0];
      v77 = v35;
      a12 = vmuld_lane_f64(a12, v35, 1);
    }

    *(a1 + 356) |= 1 << a2;
    *(a1 + 360) &= ~(1 << a2);
  }

  else
  {
    *v25 = vorr_s8(*v25, vdup_n_s32(1 << a2));
    __asm { FMOV            V0.2D, #1.0 }

    v77 = _Q0;
  }

  v37 = (a4 & 0xF) - 2;
  if (v37 > 0xC)
  {
    v38 = 0;
  }

  else
  {
    v38 = dword_223D0EFD8[v37];
  }

  *(a1 + 4 * a2 + 372) = v38;
  if ((a4 & 0x20) != 0)
  {
    *(a1 + 846) = 1;
    if ((a4 & 0x80000000) == 0)
    {
LABEL_21:
      if ((a4 & 0x40) == 0)
      {
        goto LABEL_22;
      }

LABEL_32:
      *(a1 + 871) = 1;
      if ((a4 & 0x80) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else if ((a4 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  *(a1 + 848) = 1;
  if ((a4 & 0x40) != 0)
  {
    goto LABEL_32;
  }

LABEL_22:
  if ((a4 & 0x80) != 0)
  {
LABEL_23:
    *(a1 + 873) = 1;
  }

LABEL_24:
  if ((a4 & 0x100) != 0)
  {
    *(a1 + 875) = 1;
  }

  if ((a4 & 0x200) != 0)
  {
    *(a1 + a2 + 1334) = 1;
  }

  v39 = *(a1 + 2208);
  v76 = a8;
  if (v39)
  {
    v39(a1, &v78);
    v40 = 0uLL;
    v41 = v78;
  }

  else
  {
    v40 = 0uLL;
    v41 = 0uLL;
  }

  v83 = vmulq_f64(v77, v40);
  v84 = vmulq_f64(v77, v41);
  v79 = a9;
  v80 = a10;
  v81 = a11;
  v82 = a12;
  v42 = vmovn_s64(vceqq_f64(vabsq_f64(v83), vdupq_n_s64(0x7FF0000000000000uLL)));
  v43 = 0.0;
  if (((v42.i32[0] | v42.i32[1]) & 1) != 0 || (v62 = fabs(a10) == INFINITY, fabs(a9) == INFINITY) || v62 || (__CGRectStandardize(v83.f64), __CGRectStandardize(&v79), v63 = fmax(v83.f64[0], v79), v64 = fmin(v83.f64[0] + v84.f64[0], v79 + v81), v63 > v64))
  {
    v44 = 0.0;
    v45 = 0.0;
    v46 = 0.0;
  }

  else
  {
    v65 = fmax(v83.f64[1], v80);
    v66 = fmin(v84.f64[1] + v83.f64[1], v82 + v80);
    v44 = 0.0;
    v45 = 0.0;
    v46 = 0.0;
    if (v65 <= v66)
    {
      v44 = v64 - v63;
      v43 = v66 - v65;
      v45 = v65;
      v46 = v63;
    }
  }

  if (!buffer || (v47 = fabs(v46) == INFINITY, fabs(v45) == INFINITY) || v47 || v43 == 0.0 || v44 == 0.0 || (v48 = fabs(a6) == INFINITY, fabs(a5) == INFINITY) || v48 || a7 == 0.0 || v76 == 0.0)
  {
    result = 0;
    v61 = (a1 + 16 * a2);
    *(v61 + 204) = 0;
    *(v61 + 196) = 0;
    v61 = (v61 + 292);
    *v61 = 0;
    v61[1] = 0;
  }

  else
  {
    if (v38 <= 7 && ((1 << v38) & 0xCA) != 0)
    {
      v49 = a12;
      v50 = v43;
      v51 = v44;
    }

    else
    {
      v49 = a11;
      a11 = a12;
      v50 = v44;
      v51 = v43;
    }

    v52 = a5 + (v46 - a9) * (a7 / v49);
    v53 = a6 + (v45 - a10) * (v76 / a11);
    v54 = a5 + (v50 + v46 - a9) * (a7 / v49) - v52;
    v55 = (a1 + 16 * a2);
    *&v52 = v52;
    v56 = llroundf(*&v52);
    *&v52 = v53;
    v57 = llroundf(*&v52);
    v58 = a6 + (v51 + v45 - a10) * (v76 / a11);
    v55[49] = v56;
    v55[50] = v57;
    if (a7 / v49 <= 1.0)
    {
      v67 = v54 + -0.001;
      v60 = ceilf(v67);
    }

    else
    {
      v59 = v54 + 0.001;
      v60 = floorf(v59);
    }

    v68 = v58 - v53;
    v55[51] = v60;
    if (v76 / a11 <= 1.0)
    {
      v71 = v68 + -0.001;
      v70 = ceilf(v71);
    }

    else
    {
      v69 = v68 + 0.001;
      v70 = floorf(v69);
    }

    v55[52] = v70;
    v72 = (a5 + a7);
    if (v60 + v56 > v72)
    {
      v55[49] = v72 - v60;
    }

    v73 = (a6 + v76);
    if (v70 + v57 > v73)
    {
      v55[50] = v73 - v70;
    }

    result = 0;
    v55[73] = v46;
    v55[74] = v45;
    v55[75] = v44;
    v55[76] = v43;
    v74 = a1 + 4 * a2;
    *(v74 + 260) = 1;
    *(v74 + 276) = 0;
    if (a2 == 2)
    {
      result = 0;
      *&v75 = 0xFC00FC00FC00FC00;
      *(&v75 + 1) = 0xFC00FC00FC00FC00;
      *(v25 + 32) = v75;
    }
  }

  return result;
}

uint64_t kern_GetDisplaySize(uint64_t a1, float64x2_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 2072));
  v4 = (a1 + 1432);
  if (*(a1 + 1432) == 0.0)
  {
    output.i64[0] = 0xAAAAAAAAAAAAAAAALL;
    output.i64[1] = 0xAAAAAAAAAAAAAAAALL;
    outputCnt = 2;
    v5 = IOConnectCallScalarMethod(*(a1 + 20), 8u, 0, 0, &output, &outputCnt);
    if (!v5)
    {
      *v4 = vcvtq_f64_u64(output);
    }
  }

  else
  {
    v5 = 0;
  }

  pthread_mutex_unlock((a1 + 2072));
  *a2 = *v4;
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

double *__CGRectStandardize(double *result)
{
  v1 = result[2];
  if (v1 < 0.0 || result[3] < 0.0)
  {
    v2 = result[1];
    v3 = fabs(v2) == INFINITY;
    v4 = 0.0;
    if (fabs(*result) == INFINITY)
    {
      v5 = 0.0;
      v6 = 0.0;
      v7 = 0.0;
    }

    else
    {
      v5 = 0.0;
      v6 = 0.0;
      v7 = 0.0;
      if (!v3)
      {
        v4 = result[3];
        v5 = -v1;
        v7 = v1 + *result;
        if (v1 >= 0.0)
        {
          v5 = result[2];
          v7 = *result;
        }

        v8 = v2 + v4;
        if (v4 >= 0.0)
        {
          v6 = result[1];
        }

        else
        {
          v4 = -v4;
          v6 = v8;
        }
      }
    }

    *result = v7;
    result[1] = v6;
    result[2] = v5;
    result[3] = v4;
  }

  return result;
}

uint64_t IOMobileFramebufferSetBrightnessCorrection(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2616)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t kern_SetBrightnessCorrection(uint64_t a1, unsigned int a2)
{
  input[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 2144);
  input[0] = a2;
  input[1] = v2;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x32u, input, 2u, 0, 0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_SetIdleBufferEvent(uint64_t a1, __IOSurface *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = setIdleBuffer(a1, a2);
  if (!result)
  {
    *(a1 + 704) = MEMORY[0x223DF84E0](a3);
    *(a1 + 724) = MEMORY[0x223DF84E0](a3);
    *(a1 + 104) = a4;
    *(a1 + 144) = a5;
    v10 = *(a1 + 2424);
    if (v10)
    {

      return v10(a1);
    }

    else
    {
      return 3758097090;
    }
  }

  return result;
}

uint64_t setIdleBuffer(uint64_t a1, IOSurfaceRef buffer)
{
  v2 = 3758097090;
  if (buffer)
  {
    if (IOSurfaceGetPlaneCount(buffer) < 2)
    {
      Width = IOSurfaceGetWidth(buffer);
      Height = IOSurfaceGetHeight(buffer);
    }

    else
    {
      Width = IOSurfaceGetWidthOfPlane(buffer, 0);
      Height = IOSurfaceGetHeightOfPlane(buffer, 0);
    }

    v7 = Height;
    if (a1)
    {
      v8 = *(a1 + 2416);
      if (v8)
      {
        v12 = -1431655766;
        v9 = v8(a1, &v12);
        if (v9)
        {
          return v9;
        }

        else
        {
          v11 = *(a1 + 2232);
          if (v11)
          {
            v2 = v11(a1, 0, buffer, 0, 0.0, 0.0, Width, v7, 0.0, 0.0, Width, v7);
            if (!v2)
            {
              *(a1 + 404) = 8;
              *(a1 + 360) |= 1u;
            }
          }
        }
      }
    }
  }

  return v2;
}

uint64_t IOMobileFramebufferSetIdleBufferEvent(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2536)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t kern_SwapSetAmbientLux(uint64_t a1, float a2)
{
  pthread_mutex_lock((a1 + 2072));
  *(a1 + 1050) = 1;
  *(a1 + 1054) = a2;
  pthread_mutex_unlock((a1 + 2072));
  return 0;
}

uint64_t IOMobileFramebufferSwapSetAmbientLux(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2392)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t RelbufinfoNotifyFunc(uint64_t result, uint64_t a2, uint64_t *a3, int a4)
{
  if (result)
  {
    if (a4 == 5)
    {
      v4 = result;
      v5 = *a3;
      v6 = a3[1] | (a3[2] << 32);
      v7 = a3[3] | (a3[4] << 32);
      result = kdebug_trace();
      v8 = *(v4 + 2024);
      if (v8)
      {
        v9 = *(v4 + 1968);

        return v8(v4, v5, v6, v7, v9);
      }
    }
  }

  return result;
}

uint64_t kern_SwapEnd(uint64_t a1)
{
  v2 = IOConnectCallStructMethod(*(a1 + 20), 5u, (a1 + 24), 0x560uLL, 0, 0);
  v3 = *(a1 + 3464);
  if (v3)
  {
    IOMFBGainMapRelease(a1, v3);
    *(a1 + 3464) = 0;
  }

  v4 = *(a1 + 2168) + 1;
  *(a1 + 2168) = v4;
  if (v4 >= 0x3E && core_analytics_send_data(a1, 0, "com.apple.iomfb.underrun"))
  {
    if (core_analytics_send_data(a1, 4, "com.apple.iomfb.underrunType"))
    {
      v6 = 4;
      (*(a1 + 2912))(a1, 17, 1, &v6);
    }

    v6 = 0;
    (*(a1 + 2912))(a1, 17, 1, &v6);
    *(a1 + 2168) = 0;
  }

  return v2;
}

uint64_t core_analytics_send_data(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 2176) || (pthread_once(&open_core_analytics_s_ca_once, find_core_analytics), v6 = s_core_analytics_send_event_fn, *(a1 + 2176) = s_core_analytics_send_event_fn, *(a1 + 2184) = s_core_analytics_lib, v6))
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    if (v7)
    {
      v8 = v7;
      if (a2 <= 1)
      {
        if (a2)
        {
          if (!core_analytics_dict_insert(a1, @"CurrentCode", v7) || !core_analytics_dict_insert(a1, @"TimezeroDelta", v8) || !core_analytics_dict_insert(a1, @"SaturatePositiveCount", v8) || !core_analytics_dict_insert(a1, @"SaturateNegativeCount", v8) || !core_analytics_dict_insert(a1, @"SageUIImageType", v8) || !core_analytics_dict_insert(a1, @"SageUIBrightness", v8) || !core_analytics_dict_insert(a1, @"SageUIBrightnessDim", v8) || !core_analytics_dict_insert(a1, @"SageFCMTemp", v8) || !core_analytics_dict_insert(a1, @"SageSIPTemp", v8) || !core_analytics_dict_insert(a1, @"SageFCMSIPTempDelta", v8) || !core_analytics_dict_insert(a1, @"SageExpectedVoltPerNit", v8) || !core_analytics_dict_insert(a1, @"SageMeasuredVoltPerNit", v8))
          {
            goto LABEL_35;
          }

          v9 = @"SageVoltDeltaPct";
          goto LABEL_33;
        }
      }

      else
      {
        if (a2 == 2)
        {
          if (core_analytics_dict_insert(a1, @"SageUIImageType", v7) && core_analytics_dict_insert(a1, @"SageUIBrightness", v8) && core_analytics_dict_insert(a1, @"SageFCMTemp", v8) && core_analytics_dict_insert(a1, @"SageSIPTemp", v8) && (core_analytics_dict_insert(a1, @"SageFCMSIPTempDelta", v8) & 1) != 0 && core_analytics_dict_insert(a1, @"SageUpdateStatus", v8))
          {
            goto LABEL_34;
          }

          goto LABEL_35;
        }

        if (a2 == 3)
        {
          v9 = @"Time";
          goto LABEL_33;
        }

        v11 = core_analytics_dict_insert(a1, @"decomp_fail", v7);
        v12 = core_analytics_dict_insert(a1, @"downscale_fail", v8);
        if (v11 & 1) != 0 || (v12)
        {
          goto LABEL_34;
        }
      }

      v9 = @"underrun";
LABEL_33:
      if (core_analytics_dict_insert(a1, v9, v8))
      {
LABEL_34:
        (*(a1 + 2176))(a3, v8);
        v10 = 1;
LABEL_36:
        xpc_release(v8);
        return v10;
      }

LABEL_35:
      v10 = 0;
      goto LABEL_36;
    }
  }

  return 0;
}

uint64_t core_analytics_dict_insert(uint64_t a1, const __CFString *a2, void *a3)
{
  if (a1)
  {
    v3 = *(a1 + 2224);
    if (v3)
    {
      v6 = v3();
      if (v6)
      {
        v7 = v6;
        CStringPtr = CFStringGetCStringPtr(a2, 0);
        valuePtr = 0;
        v9 = CFGetTypeID(v7);
        if (v9 == CFBooleanGetTypeID())
        {
          if (CFBooleanGetValue(v7))
          {
            v10 = 1;
            xpc_dictionary_set_uint64(a3, CStringPtr, 1uLL);
LABEL_12:
            CFRelease(v7);
            return v10;
          }
        }

        else
        {
          v11 = CFGetTypeID(v7);
          if (v11 == CFNumberGetTypeID() && CFNumberGetValue(v7, kCFNumberSInt64Type, &valuePtr))
          {
            xpc_dictionary_set_uint64(a3, CStringPtr, valuePtr);
            v10 = 1;
            goto LABEL_12;
          }
        }

        v10 = 0;
        goto LABEL_12;
      }
    }
  }

  return 0;
}

CFTypeRef kern_CopyProperty(uint64_t a1, CFStringRef key)
{
  v3 = IORegistryEntrySearchCFProperty(*(a1 + 16), "IOService", key, 0, 0);
  if (!v3)
  {
    FastestEncoding = CFStringGetFastestEncoding(key);
    CStringPtr = CFStringGetCStringPtr(key, FastestEncoding);
    if (key != @"underrun")
    {
      syslog(3, " %s key : %s not found \n", "kern_CopyProperty", CStringPtr);
    }
  }

  return v3;
}

uint64_t IOMobileFramebufferSwapDebugInfo(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2280)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t kern_SwapDebugInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 88) = a2;
  *(a1 + 96) = a3;
  return 0;
}

uint64_t IOMobileFramebufferSwapEnd(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2424)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t kern_GetBlock(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v12 = (a6 + 2);
  MEMORY[0x28223BE20]();
  v14 = v24 - v13;
  if (v12)
  {
    memset(v24 - v13, 170, 8 * v12);
    *v14 = a2;
    *(v14 + 1) = 0;
    v15 = (v14 + 8);
    if (!a6)
    {
      v16 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    *v14 = a2;
    *(v14 + 1) = 0;
    v15 = (v14 + 8);
  }

  v17 = 0;
  do
  {
    *&v14[8 * (v17 + 2)] = *(a5 + 4 * v17);
    ++v17;
  }

  while (a6 != v17);
  v16 = *v15;
LABEL_8:
  if (v16 >= a4)
  {
    result = 0;
  }

  else
  {
    do
    {
      v18 = (v16 + a3);
      v19 = v16 + 4096;
      v20 = a4 - v16;
      if (v19 <= a4)
      {
        v20 = 4096;
      }

      v24[0] = v20;
      result = IOConnectCallMethod(*(a1 + 20), 0x4Fu, v14, v12, 0, 0, 0, 0, v18, v24);
      v16 = *(v14 + 1) + 4096;
      *(v14 + 1) = v16;
    }

    while (v16 < a4 && result == 0);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOMobileFramebufferGetBlock(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2904)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t IOMobileFramebufferSwapSetDisplayEdr(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2368)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t kern_SwapSetBrightness(uint64_t a1, double a2)
{
  pthread_mutex_lock((a1 + 2072));
  if (*(a1 + 3521) == 1)
  {
    cf = 0;
    s_bc_7(*(a1 + 3576), &cf, a2);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    syslog(5, "SwapSetBrightness: Brightness control is not enabled\n");
  }

  *(a1 + 876) = 1;
  *(a1 + 886) = a2;
  pthread_mutex_unlock((a1 + 2072));
  return 0;
}

uint64_t IOMobileFramebufferSwapSetBrightness(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2328)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t kern_SwapSetDisplayEdr(uint64_t a1, double a2)
{
  pthread_mutex_lock((a1 + 2072));
  if ((*(a1 + 3521) & 1) == 0)
  {
    syslog(5, "SwapSetDisplayEdr: Brightness control is not enabled\n");
  }

  *(a1 + 882) = 1;
  *(a1 + 918) = a2;
  pthread_mutex_unlock((a1 + 2072));
  return 0;
}

uint64_t IOMFBGainEncoderCreate(int a1, void *a2, double a3, double a4, double a5, double a6)
{
  v9 = IOMFBgainencoder_new(a5, a6, a1 != 0, 0);
  if (!v9)
  {
    return 3758097084;
  }

  v10 = v9;
  IOMFBgainencoder_set_origin(v9, a3, a4);
  result = 0;
  *a2 = v10;
  return result;
}

uint64_t IOMFBgainencoder_set_origin(uint64_t result, int a2, int a3)
{
  *(result + 272) = a2;
  *(result + 276) = a3;
  return result;
}

void *IOMFBgainencoder_new(int a1, int a2, char a3, char a4)
{
  v8 = malloc_type_malloc(0x138uLL, 0x103004008784C41uLL);
  v9 = v8;
  if (v8)
  {
    v8[38] = 0;
    *(v8 + 17) = 0u;
    *(v8 + 18) = 0u;
    *(v8 + 15) = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 13) = 0u;
    *(v8 + 14) = 0u;
    *(v8 + 11) = 0u;
    *(v8 + 12) = 0u;
    *(v8 + 9) = 0u;
    *(v8 + 10) = 0u;
    *(v8 + 7) = 0u;
    *(v8 + 8) = 0u;
    *(v8 + 5) = 0u;
    *(v8 + 6) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    *v8 = 0u;
    *(v8 + 301) = a4;
    *(v8 + 300) = a3;
    if (a1 | a2)
    {
      if (a2 <= 16)
      {
        v10 = 16;
      }

      else
      {
        v10 = a2;
      }

      v11 = 3 * a1 * a2;
      *v8 = malloc_type_malloc(v10, 0x7BB2836DuLL);
      v9[1] = malloc_type_malloc(200 * a2, 0x28BD334BuLL);
      v9[2] = malloc_type_malloc(v11, 0xF969614FuLL);
      v12 = malloc_type_malloc(0x18uLL, 0x10100406F90CC4AuLL);
      v9[3] = v12;
      v13 = *v9;
      v12[15] = 0;
      *(v12 + 13) = 0;
      *(v12 + 2) = v13;
      *(v12 + 2) = v10;
      *v12 = 0xFFFFFFFFLL;
      v12[12] = 0;
      v14 = malloc_type_malloc(0x18uLL, 0x10100406F90CC4AuLL);
      v9[4] = v14;
      v15 = v9[1];
      v14[15] = 0;
      *(v14 + 13) = 0;
      *(v14 + 2) = v15;
      *(v14 + 2) = 200 * a2;
      *v14 = 0xFFFFFFFFLL;
      v14[12] = 0;
      v16 = malloc_type_malloc(0x18uLL, 0x10100406F90CC4AuLL);
      v9[5] = v16;
      v17 = v9[2];
      v16[15] = 0;
      *(v16 + 13) = 0;
      *(v16 + 2) = v17;
      *(v16 + 2) = v11;
      *v16 = 0xFFFFFFFFLL;
      v16[12] = 0;
      v9[6] = malloc_type_malloc(0x10uLL, 0x10200403A5D3213uLL);
      v9[7] = malloc_type_malloc(0x10uLL, 0x10200403A5D3213uLL);
      v9[8] = malloc_type_malloc(0x10uLL, 0x10200403A5D3213uLL);
      v19 = v9[5];
      v18 = v9[6];
      *v18 = 0;
      v18[1] = 0;
      *v18 = v19;
      *(v18 + 2) = 0;
      v20 = v9[7];
      v21 = v9[5];
      *v20 = 0;
      v20[1] = 0;
      *v20 = v21;
      *(v20 + 2) = 0;
      v22 = v9[8];
      v23 = v9[5];
      *v22 = 0;
      v22[1] = 0;
      *v22 = v23;
      *(v22 + 2) = 0;
      *(v9 + 66) = a1;
      *(v9 + 67) = a2;
      *(v9 + 70) = 0;
      *(v9 + 61) = -1;
    }

    *(v9 + 59) = 255;
    if (map_version)
    {
      v24 = v9[5];
      if ((*v24 & 0x80000000) != 0)
      {
        v25 = 0;
        *(v9 + 76) = 0;
      }

      else
      {
        *(v9 + 76) = *v24;
        v25 = 8 - v24[1];
      }

      *(v9 + 77) = v25;
      bw_set(v24, 32, 0);
    }

    *(v9 + 27) = 0u;
    *(v9 + 25) = 0u;
    *(v9 + 23) = 0u;
    *(v9 + 21) = 0u;
    *(v9 + 19) = 0u;
    *(v9 + 17) = 0u;
    *(v9 + 15) = 0u;
    *(v9 + 13) = 0u;
    *(v9 + 11) = 0u;
    *(v9 + 9) = 0u;
  }

  return v9;
}

uint64_t IOMFBGainEncoderStartRow(_DWORD *a1)
{
  if (IOMFBgainencoder_start_row(a1))
  {
    return 0;
  }

  else
  {
    return 3758097084;
  }
}

uint64_t IOMFBgainencoder_start_row(_DWORD *a1)
{
  if ((a1[61] & 0x80000000) != 0)
  {
    goto LABEL_4;
  }

  result = finish_row(a1);
  if (!result)
  {
    return result;
  }

  v3 = a1[61];
  if ((v3 & 0x80000000) != 0)
  {
LABEL_4:
    v3 = 0;
    a1[61] = 0;
  }

  return v3 < a1[67];
}

uint64_t IOMFBgainencoder_emit_run(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 280);
  if ((v5 + a2) > *(a1 + 264))
  {
    return 0;
  }

  v28 = v3;
  v29 = v4;
  if (!v5)
  {
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
    *(a1 + 240) = 0;
  }

  v9 = 0;
  v26 = -1431655766;
  v27 = -21846;
  do
  {
    *(&v26 + v9) = vcvts_n_s32_f32(*(a3 + 4 * v9), 8uLL);
    ++v9;
  }

  while (v9 != 3);
  v10 = v26;
  v11 = HIWORD(v26);
  v12 = v27;
  v13 = (HIWORD(v26) << 9) | (v26 << 18) | v27;
  if (v13)
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  if (v13 == 67240192)
  {
    v15 = 2;
  }

  else
  {
    v15 = v14;
  }

  if (*(a1 + 240))
  {
    if (!v5)
    {
      goto LABEL_25;
    }

LABEL_18:
    if (v13)
    {
      v17 = v13 == 67240192;
    }

    else
    {
      v17 = 1;
    }

    if (!v17 || v15 == *(a1 + 232))
    {
      goto LABEL_39;
    }

    goto LABEL_25;
  }

  update_run_map(a1, 1);
  *(a1 + 240) = 1;
  v16 = *(a1 + 280);
  if (v16)
  {
    *(a1 + 256) += v16;
    goto LABEL_18;
  }

LABEL_25:
  if (*(a1 + 252) || (v13 != 67240192 ? (v19 = v13 == 0) : (v19 = 1), !v19 ? (v20 = 0) : (v20 = 1), *(a1 + 256) && v20))
  {
    result = update_pos_map(a1);
    if (!result)
    {
      return result;
    }
  }

  if (v15 == 3)
  {
    *(a1 + 232) = 3;
    if (*(a1 + 240) != 1)
    {
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  *(a1 + 260) = v15 != 1;
LABEL_39:
  *(a1 + 232) = v15;
  if (*(a1 + 240) != 1)
  {
    goto LABEL_47;
  }

  if (v15 != 3)
  {
    *(a1 + 256) += a2;
    goto LABEL_47;
  }

LABEL_41:
  for (i = a2; i; --i)
  {
    append_gain_map(a1, v10, *(a1 + 48));
    append_gain_map(a1, v11, *(a1 + 56));
    if (!*(a1 + 300))
    {
      append_gain_map(a1, v12, *(a1 + 64));
    }

    ++*(a1 + 252);
  }

LABEL_47:
  v22 = *(a1 + 280) + a2;
  *(a1 + 280) = v22;
  if (v22 != *(a1 + 264))
  {
    return 1;
  }

  if (!*(a1 + 240))
  {
    update_run_map(a1, 0);
    return 1;
  }

  if (!*(a1 + 252) && !*(a1 + 256) || (result = update_pos_map(a1), result))
  {
    v23 = *(a1 + 248);
    if (v23 <= 19)
    {
      v24 = v23 + 1;
      v25 = (a1 + 4 * v23 + 152);
      do
      {
        *v25 = 0;
        *(v25 - 20) = 0;
        ++v25;
        v17 = v24++ == 20;
      }

      while (!v17);
    }

    return 1;
  }

  return result;
}

uint64_t IOMFBGainEncoderEmitRun(uint64_t a1, int a2, uint64_t a3)
{
  if (IOMFBgainencoder_emit_run(a1, a2, a3))
  {
    return 0;
  }

  else
  {
    return 3758097084;
  }
}

double update_run_map(uint64_t a1, int a2)
{
  v3 = *(a1 + 236);
  if (v3 == a2)
  {
    ++*(a1 + 296);
  }

  else
  {
    if (v3 == 255)
    {
      *(a1 + 302) = a2 == 1;
    }

    else
    {
      append_run_map(a1);
    }

    *(a1 + 296) = 1;
    *(a1 + 236) = a2;
    if (a2 == 1)
    {
      result = 0.0;
      *(a1 + 136) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0u;
      *(a1 + 184) = 0u;
      *(a1 + 200) = 0u;
      *(a1 + 216) = 0u;
    }
  }

  return result;
}

unsigned int *append_gain_map(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *a3;
  if (*(a3 + 8) == a2)
  {
    result = bw_set(v4, 1, 0);
  }

  else
  {
    bw_set(v4, 1, 1);
    v8 = *a3;
    v9 = 1;
    if (a2)
    {
      bw_set(v8, 1, 1);
      v8 = *a3;
      v10 = a2 - 1;
      v9 = 8;
    }

    else
    {
      v10 = 0;
    }

    result = bw_set(v8, v9, v10);
    *(a3 + 8) = a2;
  }

  ++*(a1 + 292);
  return result;
}

unsigned int *bw_set(unsigned int *result, int a2, int a3)
{
  if (*(result + 13))
  {
    v3 = 1;
  }

  else
  {
    v3 = a2 == 0;
  }

  if (!v3)
  {
    v4 = 1 << (a2 - 1);
    v5 = result[1];
    do
    {
      if (v5)
      {
        v6 = *(result + 12);
      }

      else
      {
        v7 = *result;
        v8 = *result + 1;
        *result = v8;
        if (v7 < -1 || v8 >= result[2])
        {
          *(result + 13) = 1;
          return result;
        }

        *(*(result + 2) + v8) = 0;
        v5 = 8;
        result[1] = 8;
        v6 = 128;
        *(result + 12) = 0x80;
      }

      if ((v4 & a3) != 0)
      {
        *(*(result + 2) + *result) |= v6;
        v5 = result[1];
        v6 = *(result + 12);
      }

      result[1] = --v5;
      *(result + 12) = v6 >> 1;
      v4 >>= 1;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t update_pos_map(uint64_t a1)
{
  v1 = *(a1 + 248);
  if (v1 > 19)
  {
    return 0;
  }

  v4 = a1 + 4 * v1;
  v5 = *(v4 + 72);
  v6 = *(a1 + 252);
  v7 = *(a1 + 256);
  v8 = *(a1 + 152 + 4 * v1);
  *(v4 + 72) = v7;
  *(a1 + 152 + 4 * (*(a1 + 248))++) = *(a1 + 252);
  bw_set(*(a1 + 32), 1, *(a1 + 260));
  egk_set(a1, v7 - v5);
  if (v7 != v5)
  {
    bw_set(*(a1 + 32), 1, v7 - v5 < 1);
  }

  egk_set(a1, v6 - v8);
  if (v6 != v8)
  {
    bw_set(*(a1 + 32), 1, v6 - v8 < 1);
  }

  ++*(a1 + 288);
  *(a1 + 252) = 0;
  *(a1 + 256) = 0;
  return 1;
}

unsigned int *egk_set(uint64_t a1, int a2)
{
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -a2;
  }

  v4 = v3 + 1;
  v5 = __clz(v3 + 1);
  bw_set(*(a1 + 32), 32 - v5, 2 * ~(-1 << -v5));
  v6 = *(a1 + 32);

  return bw_set(v6, v5 ^ 0x1F, v4);
}

uint64_t finish_row(_DWORD *a1)
{
  v2 = a1[70];
  v3 = a1[66];
  if (v3 <= v2 || (result = IOMFBgainencoder_emit_run(a1, v3 - v2, &finish_row_ones), result))
  {
    ++a1[61];
    a1[70] = 0;
    return 1;
  }

  return result;
}

_DWORD *IOMFBGainEncoderFinishEncoding(uint64_t a1, unsigned int *a2)
{
  if (!IOMFBgainencoder_finish(a2))
  {
    return 0;
  }

  v4 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v5 = v4;
  if (v4)
  {
    output = 0xAAAAAAAAAAAAAAAALL;
    outputCnt = -1431655766;
    *v4 = 0;
    atomic_store(1u, v4 + 1);
    *__n = 0u;
    *v25 = 0u;
    inputStruct = 0u;
    v23 = 0u;
    v26 = IOMFBgainencoder_row_1_coded(a2) != 0;
    IOMFBgainencoder_get_origin(a2, (&inputStruct | 0xC), &v23);
    IOMFBgainencoder_get_size(a2, &v23 + 1, &v23 + 2);
    BYTE11(inputStruct) = *(a1 + 3472);
    HIDWORD(v23) = IOMFBgainencoder_count(a2, 0);
    LODWORD(__n[1]) = IOMFBgainencoder_count(a2, 1);
    HIDWORD(v25[0]) = IOMFBgainencoder_count(a2, 2);
    HIDWORD(__n[0]) = IOMFBgainencoder_map_size(a2, 0);
    LODWORD(v25[0]) = IOMFBgainencoder_map_size(a2, 1u);
    v6 = IOMFBgainencoder_map_size(a2, 2u);
    v7 = v6 + HIDWORD(__n[0]) + LODWORD(v25[0]) + 0x3FFF;
    v8 = v7 & 0xFFFFC000;
    HIDWORD(v25[1]) = v6;
    DWORD2(inputStruct) = v7 & 0xFFC000 | (BYTE11(inputStruct) << 24);
    v9 = malloc_type_aligned_alloc(0x4000uLL, v7 & 0xFFFFC000, 0x8D621322uLL);
    *&inputStruct = v9;
    if (v9)
    {
      v10 = v9;
      LODWORD(__n[0]) = 0;
      v11 = IOMFBgainencoder_map(a2, 0);
      memcpy(v10, v11, HIDWORD(__n[0]));
      v12 = HIDWORD(__n[0]);
      HIDWORD(__n[1]) = HIDWORD(__n[0]);
      v13 = inputStruct;
      v14 = IOMFBgainencoder_map(a2, 1);
      memcpy((v13 + v12), v14, LODWORD(v25[0]));
      v15 = (LODWORD(v25[0]) + HIDWORD(__n[1]));
      LODWORD(v25[1]) = LODWORD(v25[0]) + HIDWORD(__n[1]);
      v16 = inputStruct;
      v17 = IOMFBgainencoder_map(a2, 2);
      memcpy((v16 + v15), v17, HIDWORD(v25[1]));
      if (HIDWORD(v25[1]) + LODWORD(v25[1]) < v8)
      {
        bzero((inputStruct + (HIDWORD(v25[1]) + LODWORD(v25[1]))), v8 + ~HIDWORD(v25[1]) - LODWORD(v25[1]) + 1);
      }

      outputCnt = 1;
      v18 = IOConnectCallMethod(*(a1 + 20), 0x56u, 0, 0, &inputStruct, 0x48uLL, &output, &outputCnt, 0, 0);
      free(inputStruct);
      if (!v18)
      {
        *v5 = output;
        return v5;
      }
    }

    free(v5);
    return 0;
  }

  return v5;
}

uint64_t IOMFBgainencoder_finish(uint64_t a1)
{
  while (*(a1 + 244) < *(a1 + 268))
  {
    result = finish_row(a1);
    if (!result)
    {
      return result;
    }
  }

  append_run_map(a1);
  bw_pad_to_n_byte(*(a1 + 24));
  bw_pad_to_n_byte(*(a1 + 32));
  if (map_version)
  {
    v3 = *(a1 + 40);
    v4 = *v3;
    if (*v3 < 0)
    {
      v4 = 0;
      v5 = -32;
    }

    else
    {
      v5 = -24 - v3[1];
    }

    v6 = *(a1 + 304);
    v7 = *(a1 + 308);
    v10 = *v3;
    v11 = *(v3 + 2);
    LODWORD(v10) = v6;
    DWORD1(v10) = 8 - v7;
    BYTE12(v10) = 1 << (7 - v7);
    v8 = v6 + ((v7 + 31) >> 3);
    v9 = *(v11 + v8);
    bw_set(&v10, 32, v5 - v7 + 8 * (v4 - v6));
    *(v11 + v8) |= v9;
  }

  return !*(*(a1 + 24) + 13) && !*(*(a1 + 40) + 13) && *(*(a1 + 32) + 13) == 0;
}

unsigned int *append_run_map(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (map_version)
  {
    v2 |= *(a1 + 236) << 14;
  }

  result = bw_set(*(a1 + 24), 16, v2);
  ++*(a1 + 284);
  return result;
}

unsigned int *bw_pad_to_n_byte(unsigned int *result)
{
  v1 = result;
  v2 = result[1];
  if ((v2 - 1) <= 6)
  {
    result = bw_set(result, v2, 0);
  }

  v3 = *v1 + 1;
  v4 = -v3 < 0;
  v5 = -v3 & 0xF;
  v6 = v3 & 0xF;
  if (!v4)
  {
    v6 = -v5;
  }

  if (v6)
  {
    v7 = 0;
    v8 = 16 - v6;
    do
    {
      result = bw_set(v1, 8, 0);
      ++v7;
    }

    while (v8 > v7);
  }

  return result;
}

uint64_t IOMFBgainencoder_count(unsigned int *a1, int a2)
{
  if (a2 == 2)
  {
    return a1[73];
  }

  if (a2 == 1)
  {
    return a1[72];
  }

  if (a2)
  {
    return 0;
  }

  return a1[71];
}

uint64_t IOMFBgainencoder_get_origin(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  *a2 = *(result + 272);
  *a3 = *(result + 276);
  return result;
}

uint64_t IOMFBgainencoder_map_size(uint64_t a1, unsigned int a2)
{
  if (a2 > 2)
  {
    return 0;
  }

  else
  {
    return (**(a1 + 8 * a2 + 24) + 1);
  }
}

uint64_t IOMFBgainencoder_get_size(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  *a2 = *(result + 264);
  *a3 = *(result + 268);
  return result;
}

uint64_t IOMFBgainencoder_map(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 0:
      return *a1;
    case 2:
      a1 += 16;
      return *a1;
    case 1:
      a1 += 8;
      return *a1;
  }

  return 0;
}

void IOMFBgainencoder_free(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    free(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    free(v5);
  }

  v6 = a1[4];
  if (v6)
  {
    free(v6);
  }

  v7 = a1[5];
  if (v7)
  {
    free(v7);
  }

  v8 = a1[6];
  if (v8)
  {
    free(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    free(v9);
  }

  v10 = a1[8];
  if (v10)
  {
    free(v10);
  }

  free(a1);
}

void IOMFBGainMapRelease(uint64_t a1, atomic_uint *a2)
{
  if (a2 && atomic_fetch_add(a2 + 1, 0xFFFFFFFF) == 1)
  {
    v4 = *a2;
    if (a1)
    {
      v3 = *(a1 + 2912);
      if (v3)
      {
        v3();
      }
    }

    free(a2);
  }
}

uint64_t kern_SetParameter(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *inputStruct)
{
  v4 = 3758097090;
  if (a1)
  {
    v7 = a3 && inputStruct == 0;
    v8 = v7;
    if (a3 <= 0x20 && !v8)
    {
      if (a2 != 8)
      {
        v11 = *(a1 + 20);
        input = a2;
        v12 = IOConnectCallMethod(v11, 0x44u, &input, 1u, inputStruct, 8 * a3, 0, 0, 0, 0);
        if (a2 == 10)
        {
          if (!a3)
          {
            return v4;
          }

          if (*inputStruct == 3)
          {
            if (core_analytics_send_data(a1, 2, "com.apple.TritiumVSHCompensation.Status"))
            {
              if (get_vsh_update_status(a1) == 1 && core_analytics_send_data(a1, 1, "com.apple.TritiumVSHCompensation.CalibStop"))
              {
                v15 = 1;
                (*(a1 + 2912))(a1, 17, 1, &v15);
              }

              v15 = 2;
              (*(a1 + 2912))(a1, 17, 1, &v15);
            }

            if (core_analytics_send_data(a1, 3, "com.apple.TritiumVSHCompensation.CumulativeOnTime"))
            {
              v15 = 3;
              (*(a1 + 2912))(a1, 17, 1, &v15);
            }
          }
        }

        return v12;
      }

      if (a3 == 1 && *inputStruct <= 1u)
      {
        v4 = 0;
        *(a1 + 2148) = *inputStruct;
      }
    }
  }

  return v4;
}

uint64_t kern_SwapSetCEStrength(uint64_t a1, double a2)
{
  pthread_mutex_lock((a1 + 2072));
  *(a1 + 1058) = 1;
  v4 = a2;
  *(a1 + 1062) = v4;
  pthread_mutex_unlock((a1 + 2072));
  return 0;
}

uint64_t IOMobileFrameBufferSwapSetContrastEnhancerStrength(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2400)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t kern_SwapSetGCPStrength(uint64_t a1, double a2)
{
  pthread_mutex_lock((a1 + 2072));
  *(a1 + 1066) = 1;
  *(a1 + 1074) = a2;
  pthread_mutex_unlock((a1 + 2072));
  return 0;
}

uint64_t IOMobileFrameBufferSwapSetContrastPreservationStrength(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2408)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097095;
  }
}

void iomfb_populate_all_display_infos()
{
  if (iomfb_populate_all_display_infos_onceToken != -1)
  {
    iomfb_populate_all_display_infos_cold_1();
  }

  v0 = s_number_display_pipes;
  v1 = s_number_display_instances;
  if (s_number_display_pipes < s_number_display_instances)
  {
    syslog(3, "%s: Reference FB count = %d < Enumerated FB count = %d - shouldn't happen - error\n", "iomfb_populate_all_display_infos", s_number_display_pipes, s_number_display_instances);
    v0 = s_number_display_pipes;
    v1 = s_number_display_instances;
  }

  if (v0 == v1)
  {
    syslog(3, "%s: All Display Instances enumerated successfully - FB Count = %d\n");
  }

  else
  {
    syslog(3, "%s: All display instances are NOT enumerated: Disp_len %d, Ref_FB = %d, Act_FB = %d\n");
  }
}

uint64_t IOMobileFramebufferGetMainDisplay(uint64_t *a1)
{
  iomfb_populate_all_display_infos();
  v2 = s_display_infos_len;
  if (!s_display_infos_len)
  {
    return 3758097088;
  }

  for (i = &s_display_infos; *(i + 152) != 1; i += 20)
  {
    if (!--v2)
    {
      return 3758097088;
    }
  }

  return iomfb_get_display(i, a1);
}

void __iomfb_populate_all_display_infos_block_invoke()
{
  v39 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&s_cond_mutex);
  if (!s_number_display_pipes)
  {
    v0 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/arm-io");
    if (v0)
    {
      v1 = v0;
      iterator = 0;
      if (MEMORY[0x223DF83B0](v0, "IODeviceTree", &iterator))
      {
        v2 = 1;
      }

      else
      {
        v2 = iterator == 0;
      }

      if (!v2)
      {
        v32 = v1;
        v3 = IOIteratorNext(iterator);
        if (v3)
        {
          v4 = v3;
          v5 = 0;
          v6 = *MEMORY[0x277CBECE8];
          mainPort = *MEMORY[0x277CD28A0];
          do
          {
            v7 = CFStringCreateWithCString(v6, "device_type", 0x600u);
            if (v7)
            {
              v8 = v7;
              v9 = IORegistryEntrySearchCFProperty(v4, "IODeviceTree", v7, v6, 0);
              if (v9)
              {
                v10 = v9;
                *&v11 = 0xAAAAAAAAAAAAAAAALL;
                *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
                *&buffer[16] = v11;
                v38 = v11;
                *buffer = v11;
                if (CFDataGetLength(v9) <= 0x30)
                {
                  v12.length = CFDataGetLength(v10);
                }

                else
                {
                  v12.length = 48;
                }

                v12.location = 0;
                CFDataGetBytes(v10, v12, buffer);
                v14 = *buffer == 0x2D79616C70736964 && *&buffer[8] == 0x6574737973627573 && buffer[16] == 109;
                if (v14 || (*buffer == 0x707369642D747865 ? (v15 = *&buffer[8] == 0x736275732D79616CLL) : (v15 = 0), v15 ? (v16 = *&buffer[13] == 0x6D65747379736275) : (v16 = 0), v16))
                {
                  ++s_number_display_pipes;
                }

                CFRelease(v10);
              }

              CFRelease(v8);
            }

            if (v5)
            {
              v5 = 1;
            }

            else
            {
              v17 = CFStringCreateWithCString(v6, "compatible", 0x600u);
              if (v17)
              {
                v18 = v17;
                v19 = IORegistryEntrySearchCFProperty(v4, "IODeviceTree", v17, v6, 0);
                if (v19)
                {
                  v20 = v19;
                  *&v21 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  *&buffer[16] = v21;
                  v38 = v21;
                  *buffer = v21;
                  if (CFDataGetLength(v19) <= 0x30)
                  {
                    v22.length = CFDataGetLength(v20);
                  }

                  else
                  {
                    v22.length = 48;
                  }

                  v22.location = 0;
                  CFDataGetBytes(v20, v22, buffer);
                  v23 = *buffer ^ 0x7472697661726170 | *&buffer[8] ^ 0x6764657A696C6175 | *&buffer[16] ^ 0x2C73636968706172 | *&buffer[19] ^ 0x7570672C73636968;
                  v5 = v23 == 0;
                  if (!v23)
                  {
                    syslog(3, "%s: compatible: %s \n", "getDisplayListNumber", buffer);
                    existing = 0;
                    v24 = IOServiceMatching("AppleParavirtGPU");
                    if (IOServiceGetMatchingServices(mainPort, v24, &existing))
                    {
                      syslog(3, "%s: IOServiceGetMatchingServices for AppleParavirtGPU failed - shouldn't happen - error\n");
                      goto LABEL_44;
                    }

                    v26 = IOIteratorNext(existing);
                    if (v26)
                    {
                      v27 = v26;
                      v25 = 0;
                      do
                      {
                        valuePtr = 0;
                        CFProperty = IORegistryEntryCreateCFProperty(v27, @"DisplayPortCount", v6, 0);
                        if (CFProperty)
                        {
                          v29 = CFProperty;
                          if (!CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr))
                          {
                            syslog(3, "%s: AppleParavirtGPU DisplayPortCount was not a 32 bit number - shouldn't happen - error\n", "getParavirtDisplayCount");
                          }

                          CFRelease(v29);
                        }

                        else
                        {
                          syslog(3, "%s: AppleParavirtGPU missing DisplayPortCount - shouldn't happen - error\n", "getParavirtDisplayCount");
                        }

                        syslog(6, "%s: Found AppleParavirtGPU with DisplayPortCount %u\n", "getParavirtDisplayCount", valuePtr);
                        v25 += valuePtr;
                        IOObjectRelease(v27);
                        v27 = IOIteratorNext(existing);
                      }

                      while (v27);
                      IOObjectRelease(existing);
                    }

                    else
                    {
                      IOObjectRelease(existing);
                      syslog(3, "%s: Did not find a AppleParavirtGPU - shouldn't happen - error\n");
LABEL_44:
                      v25 = 1;
                    }

                    s_number_display_pipes += v25;
                  }

                  CFRelease(v20);
                }

                else
                {
                  v5 = 0;
                }

                CFRelease(v18);
                goto LABEL_57;
              }

              v5 = 0;
            }

LABEL_57:
            v4 = IOIteratorNext(iterator);
          }

          while (v4);
        }

        IOObjectRelease(iterator);
        v1 = v32;
      }

      IOObjectRelease(v1);
    }

    else
    {
      syslog(3, "%s: IORegistryEntryFromPath unable to find /arm-io node\n", "getDisplayListNumber");
    }
  }

  syslog(6, "%s: %d\n", "getDisplayListNumber", s_number_display_pipes);
  pthread_mutex_unlock(&s_cond_mutex);
  if (s_number_display_pipes > s_number_display_instances)
  {
    *buffer = 0xAAAAAAAAAAAAAAAALL;
    pthread_mutex_lock(&s_thr_init_mutex);
    v30 = pthread_create(buffer, 0, iomfb_populate_thread, 0);
    pthread_dependency_init_np();
    pthread_mutex_unlock(&s_thr_init_mutex);
    syslog(3, "%s: Spawn separate thread and wait for all FBs to be enumerated\n", "iomfb_populate_all_display_infos_block_invoke");
    if (v30)
    {
      syslog(3, "%s: pthread_create error %d\n", "iomfb_populate_all_display_infos_block_invoke", v30);
    }

    pthread_detach(*buffer);
    syslog(3, "%s: pthread_dependency_wait_np expect: %d current: %d \n", "iomfb_populate_all_display_infos_block_invoke", s_number_display_pipes, s_number_display_instances);
    pthread_dependency_wait_np();
    if (s_number_display_pipes != s_number_display_instances)
    {
      syslog(3, "%s: Timeout: expect: %d current: %d\n", "iomfb_populate_all_display_infos_block_invoke", s_number_display_pipes, s_number_display_instances);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t iomfb_populate_thread()
{
  pthread_mutex_lock(&s_thr_init_mutex);
  syslog(3, "%s: iomfb_populate_matched_displays\n", "iomfb_populate_thread");
  pthread_once(&s_open_media_toolbox, open_media_toolbox);
  notification = 0;
  pthread_mutex_lock(&s_display_infos_mutex);
  if (!s_display_infos_len && (s_notification_port_0 || (s_notification_port_0 = IONotificationPortCreate(*MEMORY[0x277CD2898])) != 0))
  {
    v1 = IOServiceMatching("IOMobileFramebuffer");
    if (v1)
    {
      if (!IOServiceAddMatchingNotification(s_notification_port_0, "IOServiceFirstMatch", v1, iomfb_match_callback, 0, &notification))
      {
        RunLoopSource = IONotificationPortGetRunLoopSource(s_notification_port_0);
        Current = CFRunLoopGetCurrent();
        CFRunLoopAddSource(Current, RunLoopSource, *MEMORY[0x277CBF048]);
        if (s_virt_context_len)
        {
          v4 = s_display_infos_len;
          if (s_display_infos_len <= 0xF)
          {
            v5 = 1;
            v6 = *MEMORY[0x277CBED00];
            do
            {
              v7 = &s_display_infos[20 * v4];
              v7[2] = v5 - 1;
              snprintf(v7 + 24, 0x80uLL, "%s%d", "wireless", v5 - 1);
              *v7 = CFStringCreateWithCStringNoCopy(0, v7 + 24, 0x600u, v6);
              *(v7 + 2) = 2;
              v8 = s_display_infos_len;
              s_displays[s_display_infos_len] = v7;
              v4 = v8 + 1;
              s_display_infos_len = v4;
            }

            while (v4 <= 0xF && v5++ < s_virt_context_len);
          }
        }
      }
    }
  }

  pthread_mutex_unlock(&s_display_infos_mutex);
  if (notification)
  {
    syslog(3, "%s: Local call to iomfb_match_callback\n", "iomfb_populate_matched_displays");
    iomfb_match_callback(v0, notification);
  }

  pthread_mutex_unlock(&s_thr_init_mutex);
  if (s_number_display_pipes != s_number_display_instances)
  {
    syslog(3, "%s: Start Runloop for 30 seconds\n", "iomfb_populate_thread");
    CFRunLoopRunInMode(*MEMORY[0x277CBF058], 30.0, 1u);
    pthread_mutex_lock(&s_cond_mutex);
    if (s_number_display_pipes == s_number_display_instances)
    {
      syslog(3, "%s: Runloop Timer expired: FBs enumerated, no signalling needed from here as Callback would have notified main thread\n");
    }

    else if (s_thread_notified)
    {
      syslog(3, "%s: Runloop Timer expired: FB mismatch but still main thread notified - so avoiding notify here\n");
    }

    else
    {
      s_thread_notified = 1;
      syslog(3, "%s: Runloop Timer expired: FB still not enumerated, notify main thread\n", "iomfb_populate_thread");
      pthread_dependency_fulfill_np();
    }

    pthread_mutex_unlock(&s_cond_mutex);
  }

  return 0;
}

void open_media_toolbox()
{
  v0 = 0;
  v1 = "/System/Library/Frameworks/MediaToolbox.framework/MediaToolbox";
  v2 = 1;
  do
  {
    while (1)
    {
      v3 = v2;
      v4 = dlopen(v1, 2);
      if (v4)
      {
        break;
      }

      syslog(3, "IOMFB: %s not found\n", v1);
      v2 = 0;
      v0 = 1;
      v1 = "/System/Library/PrivateFrameworks/MediaToolbox.framework/MediaToolbox";
      if ((v3 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v5 = v4;
    v6 = dlsym(v4, "FigInstallVirtualDisplay");
    v7 = v6;
    if (v6)
    {
      v6();
    }

    dlclose(v5);
    v2 = 0;
    v8 = (v7 != 0) | v0;
    v0 = 1;
    v1 = "/System/Library/PrivateFrameworks/MediaToolbox.framework/MediaToolbox";
  }

  while ((v8 & 1) == 0);
  if (v7)
  {
    return;
  }

LABEL_10:
  syslog(3, "IOMFB: FigInstallVirtualDisplay not found\n");
}

uint64_t IOMobileFramebufferInstallVirtualDisplays(__int128 *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0xC)
  {
    return 3758097090;
  }

  v4 = *a1;
  v5 = a1[2];
  xmmword_280B0A998 = a1[1];
  unk_280B0A9A8 = v5;
  s_virt_funcs = v4;
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[6];
  xmmword_280B0A9D8 = a1[5];
  unk_280B0A9E8 = v8;
  xmmword_280B0A9B8 = v6;
  unk_280B0A9C8 = v7;
  v9 = a1[7];
  v10 = a1[8];
  v11 = a1[10];
  xmmword_280B0AA18 = a1[9];
  unk_280B0AA28 = v11;
  xmmword_280B0A9F8 = v9;
  unk_280B0AA08 = v10;
  s_virt_context_len = a3;
  if (a3)
  {
    memcpy(&s_virt_contexts, a2, ((8 * a3 + 0x7FFFFFFF8) & 0x7FFFFFFF8) + 8);
  }

  return 0;
}

uint64_t iomfb_match_callback(uint64_t a1, io_iterator_t a2)
{
  pthread_mutex_lock(&s_display_infos_mutex);
  v2 = s_display_infos_len;
  if (s_display_infos_len <= 0xF)
  {
    v3 = *MEMORY[0x277CBECE8];
    contentsDeallocator = *MEMORY[0x277CBED00];
    do
    {
      v4 = IOIteratorNext(a2);
      if (!v4)
      {
        break;
      }

      v5 = v4;
      v6 = IORegistryEntrySearchCFProperty(v4, "IOService", @"dfr", v3, 0);
      if (v6)
      {
        v7 = v6;
        v8 = CFBooleanGetValue(v6) != 0;
        CFRelease(v7);
      }

      else
      {
        v8 = 0;
      }

      v9 = &s_display_infos[20 * v2];
      v10 = IORegistryEntrySearchCFProperty(v5, "IOService", @"AppleTV", v3, 0);
      if (v10 && (v11 = v10, v12 = CFBooleanGetValue(v10), CFRelease(v11), v12))
      {
        v13 = 0;
        v14 = 0;
        *(v9 + 5) = v5;
        *(v9 + 152) = 0;
        if (!v8)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v15 = IORegistryEntrySearchCFProperty(v5, "IOService", @"external", v3, 0);
        if (v15)
        {
          v16 = v15;
          Value = CFBooleanGetValue(v15);
          v14 = Value == 0;
          CFRelease(v16);
          *(v9 + 5) = v5;
          v13 = v14 && !v8;
          *(v9 + 152) = v13;
          if (!v8)
          {
            if (Value)
            {
LABEL_14:
              v18 = iomfb_match_callback_s_num++;
              *(v9 + 4) = v18;
              snprintf(v9 + 24, 0x80uLL, "%s-%d", "external", v18);
              syslog(3, "%s: %s\n", "iomfb_match_callback", v9 + 24);
              v19 = 1;
            }

            else
            {
LABEL_18:
              v9[3] = 0x7972616D697270;
              *(v9 + 4) = 0;
              syslog(3, "%s: %s\n", "iomfb_match_callback", v9 + 24);
              v19 = 0;
            }

            v20 = 1;
            goto LABEL_20;
          }
        }

        else
        {
          *(v9 + 5) = v5;
          v13 = !v8;
          *(v9 + 152) = !v8;
          if (!v8)
          {
            goto LABEL_18;
          }

          v14 = 1;
        }
      }

      v20 = 0;
      *(v9 + 4) = 0;
      *(v9 + 6) = 7497316;
      v19 = !v14;
LABEL_20:
      *v9 = CFStringCreateWithCStringNoCopy(0, v9 + 24, 0x600u, contentsDeallocator);
      if (v8)
      {
        v21 = 3;
      }

      else
      {
        v21 = v19;
      }

      *(v9 + 2) = v21;
      v22 = s_display_infos_len;
      s_displays[s_display_infos_len] = v9;
      v2 = v22 + 1;
      s_display_infos_len = v22 + 1;
      if (v20)
      {
        if (isServicingTwoExternalDisplay(v5) && !*(v9 + 2))
        {
          v23 = &s_display_infos[20 * s_display_infos_len];
          v24 = iomfb_match_callback_s_num++;
          *(v23 + 4) = v24;
          snprintf(v23 + 24, 0x80uLL, "%s-%d", "external", v24);
          *(v23 + 5) = v5;
          *(v23 + 152) = v13;
          syslog(3, "%s: %s service is 0x%x\n", "iomfb_match_callback", v23 + 24, v5);
          *v23 = CFStringCreateWithCStringNoCopy(0, v23 + 24, 0x600u, contentsDeallocator);
          *(v23 + 2) = 1;
          v25 = s_display_infos_len;
          s_displays[s_display_infos_len] = v23;
          s_display_infos_len = v25 + 1;
          ++s_number_display_instances;
          ++s_number_display_pipes;
        }

        pthread_mutex_lock(&s_cond_mutex);
        if (s_number_display_pipes == ++s_number_display_instances && (s_thread_notified & 1) == 0)
        {
          s_thread_notified = 1;
          syslog(3, "%s: Notify main thread as all FB callbacks hit\n", "iomfb_match_callback");
          pthread_dependency_fulfill_np();
        }

        pthread_mutex_unlock(&s_cond_mutex);
        v2 = s_display_infos_len;
      }
    }

    while (v2 < 0x10);
  }

  return pthread_mutex_unlock(&s_display_infos_mutex);
}

BOOL isServicingTwoExternalDisplay(io_registry_entry_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = IORegistryEntrySearchCFProperty(a1, "IOService", @"IOMFBIntDcpUsedForExtWhenLidClose", *MEMORY[0x277CBECE8], 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFBooleanGetValue(v1) != 0;
  CFRelease(v2);
  return v3;
}

uint64_t IOMobileFramebufferOpen(io_service_t a1, task_port_t a2, uint32_t a3, uint64_t *a4)
{
  if (a4)
  {
    v8 = _ioMobileFramebufferAlloc();
    *a4 = v8;
    if (v8)
    {
      *(v8 + 16) = a1;
      v9 = IOServiceOpen(a1, a2, a3, (v8 + 20));
      v10 = *a4;
      if (v9)
      {
        CFRelease(v10);
        *a4 = 0;
        syslog(3, " %s:  failed IOServiceOpen. return %d \n");
      }

      else
      {
        if (!*(v10 + 1508) || !*(v10 + 1512))
        {
          *v68 = 0;
          getEDTProperty(v10, @"canvas-width", &v68[4]);
          getEDTProperty(*a4, @"canvas-height", v68);
          v10 = *a4;
          if (*&v68[4])
          {
            *(v10 + 1508) = *&v68[4];
          }

          if (*v68)
          {
            *(v10 + 1512) = *v68;
          }
        }

        if (*(v10 + 3472) == -1)
        {
          DriverIntProp = getDriverIntProp(v10, @"GainMapVersion");
          if (DriverIntProp == -1)
          {
            v12 = 0;
          }

          else
          {
            v12 = DriverIntProp;
            IOMFBgainencoder_set_map_version(DriverIntProp);
          }

          v10 = *a4;
          *(*a4 + 3472) = v12;
        }

        if (*(v10 + 3520) == 1)
        {
          *(v10 + 2280) = benchmark_SwapDebugInfo;
          v67 = benchmark_SupportedFrameInfo;
          v66 = benchmark_ChangeFrameInfo;
          v65 = benchmark_DisableNotifications;
          v64 = benchmark_EnableNotifications;
          v63 = benchmark_SetIdleBufferEvent;
          v62 = benchmark_SetIdleBuffer;
          v61 = benchmark_SwapCancelAll;
          v60 = benchmark_SwapCancel;
          v59 = benchmark_SwapWaitWithTimeout;
          v58 = benchmark_SwapWait;
          v57 = benchmark_SwapSignal;
          v56 = benchmark_SwapSetColorMatrix;
          v55 = benchmark_SwapEnd;
          v54 = benchmark_SwapBegin;
          v53 = benchmark_SwapSetPulseWidthMaximization;
          v52 = benchmark_SwapSetDisplayEdr;
          v51 = benchmark_SwapSetBrightnessLimit;
          v50 = benchmark_SwapSetIndicatorBrightnessLimit;
          v49 = benchmark_SwapSetSecureAnimation;
          v48 = benchmark_SwapSetIndicatorBrightness;
          v47 = benchmark_SwapSetBrightness;
          v46 = benchmark_SwapSetParams;
          v44 = benchmark_SwapSubtitleRegion;
          v13 = benchmark_SwapSetEventSignal;
          v14 = benchmark_SwapSetEventSignalOnGlass;
          v15 = benchmark_SwapSetEventWait;
          v16 = benchmark_SwapSetLayer;
          v45 = 2936;
          v43 = 2928;
          v42 = 2552;
          v41 = 2544;
          v17 = 2536;
          v18 = 2528;
          v19 = 2496;
          v20 = 2488;
          v21 = 2480;
          v22 = 2472;
          v23 = 2464;
          v24 = 2432;
          v25 = 2424;
          v26 = 2416;
          v27 = 2448;
          v28 = 2368;
          v29 = 2360;
          v30 = 2352;
          v31 = 2344;
          v32 = 2336;
          v33 = 2328;
          v34 = 2320;
          v35 = 2288;
          v36 = 2264;
          v37 = 2256;
          v38 = 2248;
          v39 = 2232;
        }

        else
        {
          *(v10 + 2280) = kern_SwapDebugInfo;
          *(*a4 + 2232) = kern_SwapSetLayer;
          *(*a4 + 2240) = kern_SwapSecureLayer;
          *(*a4 + 2248) = kern_SwapSetEventWait;
          *(*a4 + 2256) = kern_SwapSetEventSignalOnGlass;
          *(*a4 + 2264) = kern_SwapSetEventSignal;
          *(*a4 + 2288) = kern_SwapSubtitleRegion;
          *(*a4 + 2320) = kern_SwapSetParams;
          *(*a4 + 2328) = kern_SwapSetBrightness;
          *(*a4 + 2336) = kern_SwapSetIndicatorBrightness;
          *(*a4 + 2344) = kern_SwapSetSecureAnimation;
          v67 = kern_SetColorRemapMode;
          v66 = kern_SupportedFrameInfo;
          v65 = kern_ChangeFrameInfo;
          v64 = kern_DisableNotifications;
          v63 = kern_EnableNotifications;
          v62 = kern_SetIdleBufferEvent;
          v61 = kern_SetIdleBuffer;
          v60 = kern_SwapCancelAllGetCurrent;
          v59 = kern_SwapGetCurrent;
          v58 = kern_SwapCancelAll;
          v57 = kern_SwapCancel;
          v56 = kern_SwapWaitWithTimeout;
          v55 = kern_SwapWait;
          v54 = kern_SwapSignal;
          v53 = kern_SwapSetColorMatrix;
          v52 = kern_SwapEnd;
          v51 = kern_SwapBegin;
          v50 = kern_SwapSetLayerEDRCompensation;
          v49 = kern_SwapSetPulseWidthMaximization;
          v48 = kern_SwapSetGCPStrength;
          v47 = kern_SwapSetCEStrength;
          v46 = kern_SwapSetAmbientLux;
          v44 = kern_SwapSetUserLuminanceAdjustment;
          v13 = kern_SwapSetDisplayEdrHeadroom;
          v14 = kern_SwapSetDisplayEdr;
          v15 = kern_SwapSetBrightnessLimit;
          v16 = kern_SwapSetIndicatorBrightnessLimit;
          v45 = 2440;
          v43 = 2936;
          v42 = 2928;
          v41 = 2552;
          v17 = 2544;
          v18 = 2536;
          v19 = 2528;
          v20 = 2512;
          v21 = 2504;
          v22 = 2496;
          v23 = 2488;
          v24 = 2480;
          v25 = 2472;
          v26 = 2464;
          v27 = 2432;
          v28 = 2424;
          v29 = 2416;
          v30 = 2456;
          v31 = 2448;
          v32 = 2408;
          v33 = 2400;
          v34 = 2392;
          v35 = 2384;
          v36 = 2376;
          v37 = 2368;
          v38 = 2360;
          v39 = 2352;
        }

        *(*a4 + v39) = v16;
        *(*a4 + v38) = v15;
        *(*a4 + v37) = v14;
        *(*a4 + v36) = v13;
        *(*a4 + v35) = v44;
        *(*a4 + v34) = v46;
        *(*a4 + v33) = v47;
        *(*a4 + v32) = v48;
        *(*a4 + v31) = v49;
        *(*a4 + v30) = v50;
        *(*a4 + v29) = v51;
        *(*a4 + v28) = v52;
        *(*a4 + v27) = v53;
        *(*a4 + v26) = v54;
        *(*a4 + v25) = v55;
        *(*a4 + v24) = v56;
        *(*a4 + v23) = v57;
        *(*a4 + v22) = v58;
        *(*a4 + v21) = v59;
        *(*a4 + v20) = v60;
        *(*a4 + v19) = v61;
        *(*a4 + v18) = v62;
        *(*a4 + v17) = v63;
        *(*a4 + v41) = v64;
        *(*a4 + v42) = v65;
        *(*a4 + v43) = v66;
        *(*a4 + v45) = v67;
        *(*a4 + 2272) = kern_SwapSetBlit;
        *(*a4 + 2296) = iomfb_SwapSetTimestamp;
        *(*a4 + 2304) = iomfb_AnnounceNextSwapTimestamp;
        *(*a4 + 2312) = iomfb_SwapSetTimestamps;
        *(*a4 + 2192) = kern_GetLayerDefaultSurface;
        *(*a4 + 2200) = kern_CopyLayerDisplayedSurface;
        *(*a4 + 2208) = kern_GetDisplaySize;
        *(*a4 + 2216) = kern_GetID;
        *(*a4 + 2224) = kern_CopyProperty;
        *(*a4 + 2520) = kern_SurfaceIsReplaceable;
        *(*a4 + 2800) = kern_GetRunLoopSource;
        *(*a4 + 2560) = kern_SetTVOutMode;
        *(*a4 + 2568) = kern_SetTVOutSignalType;
        *(*a4 + 2576) = kern_SetWSSInfo;
        *(*a4 + 2584) = kern_RequestPowerChange;
        *(*a4 + 2592) = kern_SetWhiteOnBlackMode;
        *(*a4 + 2600) = kern_SetColorRemapMode;
        *(*a4 + 2608) = kern_GetColorRemapMode;
        *(*a4 + 2616) = kern_SetBrightnessCorrection;
        *(*a4 + 2624) = kern_EnableStatistics;
        *(*a4 + 2632) = kern_SetDebugFlags;
        *(*a4 + 2640) = kern_SetFlags;
        *(*a4 + 2648) = kern_SetGammaTable;
        *(*a4 + 2656) = kern_SetContrast;
        *(*a4 + 2664) = kern_GetGammaTable;
        *(*a4 + 2672) = kern_SetDisplayDevice;
        *(*a4 + 2680) = kern_SetDigitalOutMode;
        *(*a4 + 2688) = kern_GetDigitalOutState;
        *(*a4 + 2704) = kern_GetSupportedDigitalOutModes;
        *(*a4 + 2720) = kern_GetHDCPDownstreamState;
        *(*a4 + 2712) = iomfb_GetHDCPAuthenticationProtocol;
        *(*a4 + 2728) = kern_HDCPSendRequest;
        *(*a4 + 2736) = kern_HDCPGetReply;
        *(*a4 + 2752) = kern_printDisplayRegs;
        *(*a4 + 2760) = kern_GetDotPitch;
        *(*a4 + 2768) = kern_GetDotPitchFloat;
        *(*a4 + 2776) = kern_GetDisplayArea;
        *(*a4 + 2784) = kern_EnableDisableDithering;
        *(*a4 + 2792) = kern_SetUnderrunColor;
        *(*a4 + 2808) = kern_GetCRCNotifyMessageCount;
        *(*a4 + 2816) = kern_EnableDisableVideoPowerSavings;
        *(*a4 + 2824) = kern_SetVideoDACGain;
        *(*a4 + 2832) = kern_SetLine21Data;
        *(*a4 + 2840) = kern_GetDebugTraces;
        *(*a4 + 2848) = kern_EnableDebugTracing;
        *(*a4 + 2856) = kern_EnableVBLTraces;
        *(*a4 + 2864) = kern_PrintDebugTraces;
        *(*a4 + 2872) = kern_SetLogLevel;
        *(*a4 + 2880) = kern_SPLCSetBrightness;
        *(*a4 + 2888) = kern_SPLCGetBrightness;
        *(*a4 + 2896) = kern_SetBlock;
        *(*a4 + 2904) = kern_GetBlock;
        *(*a4 + 2912) = kern_SetParameter;
        *(*a4 + 2920) = kern_CreateStatistics;
        *(*a4 + 2944) = kern_FactoryPortal;
        *(*a4 + 2952) = kern_GetCurrentAbsoluteTime;
        *(*a4 + 2960) = kern_SwapWARSettings;
        *(*a4 + 2968) = kern_GetLinkQuality;
        *(*a4 + 2744) = kern_GetProtectionOptions;
        *(*a4 + 2976) = kern_GetBufBlock;
        *(*a4 + 2696) = kern_SetClamshellState;
        *(*a4 + 2984) = kern_ingest_timestamp;
        *(*a4 + 2992) = kern_egest_timestamp;
        syslog(3, " %s:  success, return %d \n", "IOMobileFramebufferOpen", 0);
        return 0;
      }
    }

    else
    {
      v9 = 3758097085;
      syslog(3, " %s:  failed _ioMobileFramebufferAlloc return %d \n");
    }
  }

  else
  {
    v9 = 3758097090;
    syslog(3, " %s:  failed, bad argument return %d \n", "IOMobileFramebufferOpen", -536870206);
  }

  return v9;
}

uint64_t iomfb_get_display(uint64_t a1, uint64_t *a2)
{
  v4 = IOMobileFramebufferOpen(*(a1 + 20), *MEMORY[0x277D85F48], 0, a2);
  if (!v4 && (*(a1 + 152) & 1) == 0)
  {
    if (*a2)
    {
      v5 = *(*a2 + 2224);
      if (v5)
      {
        v6 = v5();
        if (v6)
        {
          v7 = v6;
          v8 = CFGetTypeID(v6);
          if (v8 == CFBooleanGetTypeID() && CFBooleanGetValue(v7))
          {
            *(*a2 + 2064) = 9;
          }

          CFRelease(v7);
        }
      }
    }
  }

  return v4;
}

uint64_t _ioMobileFramebufferAlloc()
{
  if (!kIOMobileFramebufferID)
  {
    pthread_once(&IOMobileFramebufferGetTypeID_once, ioMobileFramebufferClassInitialize);
  }

  keyExistsAndHasValidFormat = -86;
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 20) = 0;
  *(Instance + 3024) = 1;
  *(Instance + 1504) = 0;
  *(Instance + 1512) = 0;
  *(Instance + 1448) = 0;
  *(Instance + 1400) = 0u;
  *(Instance + 1416) = 0u;
  *(Instance + 1432) = 0u;
  *(Instance + 1456) = 0u;
  *(Instance + 1472) = 0u;
  *(Instance + 1520) = 0u;
  *(Instance + 1536) = 0u;
  *(Instance + 1552) = 0u;
  *(Instance + 1568) = 0u;
  *(Instance + 1584) = 0u;
  *(Instance + 1600) = 0u;
  *(Instance + 1616) = 0u;
  *(Instance + 1632) = 0u;
  *(Instance + 1648) = 0u;
  *(Instance + 1664) = 0u;
  *(Instance + 1680) = 0u;
  *(Instance + 1696) = 0u;
  *(Instance + 1712) = 0u;
  *(Instance + 1728) = 0u;
  *(Instance + 1744) = 0u;
  *(Instance + 1760) = 0u;
  *(Instance + 1776) = 0u;
  *(Instance + 1792) = 0u;
  *(Instance + 1808) = 0u;
  *(Instance + 1824) = 0u;
  *(Instance + 1840) = 0u;
  *(Instance + 1856) = 0u;
  *(Instance + 1872) = 0u;
  *(Instance + 1888) = 0u;
  *(Instance + 1904) = 0u;
  *(Instance + 1920) = 0u;
  *(Instance + 1936) = 0u;
  *(Instance + 1952) = 0u;
  *(Instance + 1968) = 0u;
  *(Instance + 1984) = 0u;
  *(Instance + 2000) = 0u;
  *(Instance + 2016) = 0u;
  *(Instance + 2064) = 1;
  *(Instance + 2136) = xmmword_223D0EFA0;
  *(Instance + 3464) = 0;
  *(Instance + 2152) = 0u;
  *(Instance + 2168) = 0;
  *(Instance + 2176) = 0u;
  *(Instance + 3568) = 0u;
  *(Instance + 3584) = 0u;
  *(Instance + 3600) = 0u;
  *(Instance + 3840) = 0;
  *(Instance + 3472) = -1;
  pthread_mutex_init((Instance + 2072), 0);
  *(Instance + 2040) = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"canvas_width", @"com.apple.iokit.IOMobileGraphicsFamily", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    *(Instance + 1508) = AppIntegerValue;
  }

  v2 = CFPreferencesGetAppIntegerValue(@"canvas_height", @"com.apple.iokit.IOMobileGraphicsFamily", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    *(Instance + 1512) = v2;
  }

  if (CFPreferencesGetAppBooleanValue(@"enable_ktrace", @"com.apple.iokit.IOMobileGraphicsFamily", &keyExistsAndHasValidFormat))
  {
    v3 = 1;
  }

  else
  {
    v3 = keyExistsAndHasValidFormat == 0;
  }

  v4 = v3;
  *(Instance + 3512) = v4;
  v5 = CFPreferencesGetAppIntegerValue(@"override_display_width", @"com.apple.iokit.IOMobileGraphicsFamily", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    *(Instance + 1448) = 1;
    *(Instance + 1432) = v5;
  }

  v6 = CFPreferencesGetAppIntegerValue(@"override_display_height", @"com.apple.iokit.IOMobileGraphicsFamily", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    *(Instance + 1440) = v6;
  }

  v7 = CFPreferencesGetAppIntegerValue(@"override_panel_width", @"com.apple.iokit.IOMobileGraphicsFamily", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    *(Instance + 1456) = v7;
  }

  v8 = CFPreferencesGetAppIntegerValue(@"override_panel_height", @"com.apple.iokit.IOMobileGraphicsFamily", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    *(Instance + 1464) = v8;
  }

  *(Instance + 3520) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"benchmark", @"com.apple.iokit.IOMobileGraphicsFamily", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    *(Instance + 3520) = AppBooleanValue != 0;
  }

  return Instance;
}

uint64_t ioMobileFramebufferClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  kIOMobileFramebufferID = result;
  return result;
}

void getEDTProperty(uint64_t a1, const __CFString *a2, UInt8 *a3)
{
  parent = -1431655766;
  IORegistryEntryGetParentEntry(*(a1 + 16), "IOService", &parent);
  v5 = IORegistryEntrySearchCFProperty(parent, "IOService", a2, *MEMORY[0x277CBECE8], 0);
  if (v5)
  {
    v6 = v5;
    if (CFDataGetLength(v5) <= 4)
    {
      v7.length = CFDataGetLength(v6);
    }

    else
    {
      v7.length = 4;
    }

    v7.location = 0;
    CFDataGetBytes(v6, v7, a3);
    CFRelease(v6);
  }
}

const __CFNumber *getDriverIntProp(uint64_t a1, const __CFString *a2)
{
  result = IORegistryEntryCreateCFProperty(*(a1 + 16), a2, *MEMORY[0x277CBECE8], 0);
  if (result)
  {
    v3 = result;
    valuePtr = -1431655766;
    if (!CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr))
    {
      valuePtr = 0;
    }

    CFRelease(v3);
    return valuePtr;
  }

  return result;
}

uint64_t IOMFBgainencoder_set_map_version(unsigned int a1)
{
  if (a1 > 1)
  {
    return 0;
  }

  map_version = a1;
  return 1;
}

uint64_t ioMobileFramebufferFinalize(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 1400;
  do
  {
    v4 = *(v3 + v2);
    if (v4)
    {
      CFRelease(v4);
    }

    v2 += 8;
  }

  while (v2 != 32);
  v5 = 0;
  v6 = (a1 + 1568);
  v7 = MEMORY[0x277D85F48];
  do
  {
    v8 = *(v6 - 5);
    if (v8)
    {
      IONotificationPortDestroy(v8);
    }

    *(v6 - 5) = 0;
    if (*v6)
    {
      CFMachPortInvalidate(*v6);
      CFRelease(*v6);
    }

    v9 = *(v6 - 4);
    if (v9)
    {
      mach_port_mod_refs(*v7, v9, 1u, -1);
      *(v6 - 4) = 0;
    }

    if (*(v6 - 1))
    {
      MEMORY[0x223DF82E0](*(a1 + 20), v5, *v7);
      *(v6 - 1) = 0;
    }

    ++v5;
    v6 += 8;
  }

  while (v5 != 8);
  v10 = *(a1 + 20);
  if (v10)
  {
    IOServiceClose(v10);
    *(a1 + 20) = 0;
  }

  v11 = *(a1 + 2152);
  if (v11)
  {
    free(v11);
    *(a1 + 2152) = 0;
  }

  v12 = *(a1 + 2160);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 2160) = 0;
  }

  v13 = *(a1 + 3008);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 3008) = 0;
  }

  v14 = *(a1 + 3016);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 3016) = 0;
  }

  v15 = *(a1 + 3000);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 3000) = 0;
  }

  if (*(a1 + 2040) == 1)
  {
    v16 = *(a1 + 2032);
    if (v16)
    {
      v17 = *(a1 + 2044);
      if (v17)
      {
        for (i = 0; i < v17; ++i)
        {
          v19 = *(*(a1 + 2032) + 8 * i);
          if (v19)
          {
            free(v19);
            v17 = *(a1 + 2044);
          }
        }

        v16 = *(a1 + 2032);
      }

      free(v16);
      *(a1 + 2032) = 0;
      *(a1 + 2044) = 0;
      *(a1 + 2040) = 0;
    }
  }

  v20 = *(a1 + 3568);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 3568) = 0;
  }

  v21 = *(a1 + 3576);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 3576) = 0;
  }

  *(a1 + 3840) = 0;

  return pthread_mutex_destroy((a1 + 2072));
}

uint64_t IOMobileFramebufferGetDigitalOutState(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2688)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t kern_GetDigitalOutState(uint64_t a1, _DWORD *a2)
{
  output = 0xAAAAAAAAAAAAAAAALL;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x19u, 0, 0, &output, &outputCnt);
  if (!result)
  {
    *a2 = output;
  }

  return result;
}

uint64_t IOMobileFramebufferRequestPowerChange(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2584)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t kern_RequestPowerChange(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  if (!a2 && core_analytics_send_data(a1, 3, "com.apple.TritiumVSHCompensation.CumulativeOnTime"))
  {
    v5 = 3;
    (*(a1 + 2912))(a1, 17, 1, &v5);
  }

  result = IOConnectCallScalarMethod(*(a1 + 20), 0xCu, input, 1u, 0, 0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOMobileFramebufferGetDigitalOutMode(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  result = 3758097095;
  memset(v9, 0, 44);
  if (a1)
  {
    v5 = *(a1 + 2904);
    if (v5)
    {
      result = v5(a1, 64, v9, 44, 0, 0);
      if (!result)
      {
        v8 = DWORD2(v9[0]);
        *a2 = DWORD1(v9[0]);
        *a3 = v8;
      }
    }
  }

  return result;
}

IONotificationPort *IOMobileFramebufferPowerNotifyFunc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 1432) = 0u;
  result = iomfb_GetMachMessageCount(*(a1 + 1592));
  if (result <= 0)
  {
    v8 = *(a1 + 1640);
    v9 = *(a1 + 1584);

    return v8(a1, a3, a4, v9);
  }

  return result;
}

IONotificationPort *iomfb_GetMachMessageCount(IONotificationPort *result)
{
  if (result)
  {
    v7 = 0xAAAAAAAAAAAAAAAALL;
    *&v1 = 0xAAAAAAAAAAAAAAAALL;
    *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *port_info_out = v1;
    v6 = v1;
    port_info_outCnt = 10;
    v2 = *MEMORY[0x277D85F48];
    MachPort = IONotificationPortGetMachPort(result);
    if (mach_port_get_attributes(v2, MachPort, 2, port_info_out, &port_info_outCnt))
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

uint64_t virt_GetProtectionOptions(uint64_t a1)
{
  v1 = *(a1 + 3040);
  if (*v1 < 2)
  {
    return 3758097095;
  }

  else
  {
    return (*(v1 + 168))(*(a1 + 3032));
  }
}

uint64_t IOMobileFramebufferGetProtectionOptions(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2744)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t virt_SwapBegin(uint64_t a1, int *a2)
{
  pthread_mutex_lock((a1 + 2072));
  v4 = *(a1 + 3024);
  if ((v4 + 1) > 1)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 3024) = v5;
  *(a1 + 3456) = 0;
  bzero((a1 + 24), 0x560uLL);
  v6 = *(a1 + 3464);
  if (v6)
  {
    IOMFBGainMapRelease(a1, v6);
    *(a1 + 3464) = 0;
    v5 = *(a1 + 3024);
  }

  *(a1 + 176) = v5;
  *a2 = v5;
  pthread_mutex_unlock((a1 + 2072));
  return 0;
}

uint64_t virt_SwapEnd(uint64_t a1)
{
  pthread_mutex_lock((a1 + 2072));
  if (*(a1 + 3456) == 1)
  {
    v2 = 3758097084;
    syslog(6, "IOMFB: ignoring cancelled swap\n");
    goto LABEL_28;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    v3 = mach_absolute_time();
  }

  v4 = (*(a1 + 2984))(a1, v3);
  v5 = 0;
  v6 = a1 + 180;
  while (!*(a1 + 4 * v5 + 180))
  {
    if (++v5 == 4)
    {
      LODWORD(v5) = 0;
      break;
    }
  }

  v7 = *(v6 + 4 * v5);
  if (!v7)
  {
LABEL_16:
    v12 = (a1 + 16 * v5);
    v2 = (*(*(a1 + 3040) + 24))(*(a1 + 3032), 0, v7, *(a1 + 176), v4, *(a1 + 4 * v5 + 372), v12[49], v12[50], v12[51], v12[52], v12[73], v12[74], v12[75], v12[76]);
    if (*(a1 + 3064))
    {
      ++*(a1 + 3056);
    }

    if (!v7)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  v8 = IOSurfaceLookup(*(v6 + 4 * v5));
  if (v8)
  {
    v9 = v8;
    v10 = *MEMORY[0x277CD29D8];
    IOSurfaceSetTimestamp();
    if (*(a1 + 32))
    {
      (*(a1 + 2984))(a1);
      IOSurfaceSetTimestamp();
    }

    if (*(a1 + 40))
    {
      v11 = *MEMORY[0x277CD2B78];
      (*(a1 + 2984))(a1);
      IOSurfaceSetTimestamp();
    }

    CFRelease(v9);
    goto LABEL_16;
  }

  v2 = 3758097084;
  syslog(3, "IOMFB: surface lookup failure for id: %d\n", v7);
LABEL_21:
  v13 = a1 + 3072;
  v14 = -1;
  while (*(v13 + 8) != v7)
  {
    ++v14;
    v13 += 24;
    if (v14 > 0xE)
    {
      goto LABEL_28;
    }
  }

  (*(*(a1 + 3040) + 128))(*(a1 + 3032), v7, *(v13 + 16), v2);
  if (*v13)
  {
    CFRelease(*v13);
  }

  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
LABEL_28:
  pthread_mutex_unlock((a1 + 2072));
  return v2;
}

uint64_t virt_SwapSetLayer(uint64_t a1, unsigned int a2, __IOSurface *a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v13 = 3758097084;
  result = 3758097090;
  if (a1 && a2 <= 3)
  {
    pthread_mutex_lock((a1 + 2072));
    v26 = a1 + 180;
    if (a3)
    {
      v27 = 0;
      while (!*(v26 + v27))
      {
        v27 += 4;
        if (v27 == 16)
        {
          v13 = 0;
          *(v26 + 4 * a2) = IOSurfaceGetID(a3);
          *(a1 + 4 * a2 + 372) = a4;
          v28 = (a1 + 16 * a2);
          v28[49] = a5;
          v28[50] = a6;
          v28[51] = a7;
          v28[52] = a8;
          v28[73] = a9;
          v28[74] = a10;
          v28[75] = a11;
          v28[76] = a12;
          break;
        }
      }
    }

    else
    {
      v13 = 0;
      *(v26 + 4 * a2) = 0;
    }

    pthread_mutex_unlock((a1 + 2072));
    return v13;
  }

  return result;
}

uint64_t IOMobileFramebufferGetWirelessSurfaceWithOptions(uint64_t a1, uint64_t a2, IOSurfaceRef *a3, unsigned int a4, double a5, double a6)
{
  if (!a1)
  {
    return 3758097090;
  }

  v24 = -1431655766;
  result = IOMobileFramebufferIsMainDisplay(a1, &v24);
  if (result)
  {
    return result;
  }

  if (v24)
  {
    return 3758097090;
  }

  v13 = *(a1 + 3488);
  if (v13)
  {
    v14 = *(v13 + 3504);
  }

  else
  {
    v14 = 0;
  }

  v15 = 0;
  while (1)
  {
    v16 = a1 + v15;
    if (!*(a1 + v15 + 3088))
    {
      break;
    }

    v15 += 24;
    if (v15 == 384)
    {
      return 3758097086;
    }
  }

  v17 = *(a1 + 3040);
  if (!v17)
  {
    return 3758097084;
  }

  v18 = *(v17 + 120);
  if (!v18)
  {
    return 3758097084;
  }

  v19 = *(v17 + 112);
  if (v19)
  {
    v19(*(a1 + 3032), (a4 >> 1) & 1);
    v18 = *(*(a1 + 3040) + 120);
  }

  v20 = *(a1 + 3032);
  v21 = (*(a1 + 2992))(a1, a2);
  v22 = (a1 + v15 + 3080);
  result = v18(v20, v14, v21, 1, v22, v16 + 3088, a5, a6);
  if (!result)
  {
    v23 = IOSurfaceLookup(*v22);
    *(v16 + 3072) = v23;
    *a3 = v23;
    result = 3758097084;
    if (*(v16 + 3072))
    {
      return 0;
    }
  }

  *(v16 + 3088) = 0;
  return result;
}

uint64_t IOMobileFramebufferIsMainDisplay(uint64_t a1, _DWORD *a2)
{
  output[1] = *MEMORY[0x277D85DE8];
  outputCnt = 1;
  *a2 = 0;
  if (a1)
  {
    if (*(a1 + 20))
    {
      output[0] = 0xAAAAAAAAAAAAAAAALL;
      pthread_mutex_lock((a1 + 2072));
      v4 = *(a1 + 2140);
      if (v4 == -1)
      {
        v5 = IOConnectCallScalarMethod(*(a1 + 20), 0x12u, 0, 0, output, &outputCnt);
        if (v5)
        {
          v4 = *(a1 + 2140);
        }

        else
        {
          v4 = LODWORD(output[0]) == 1;
          *(a1 + 2140) = v4;
        }
      }

      else
      {
        v5 = 0;
      }

      if (v4 == 1)
      {
        *a2 = 1;
      }

      pthread_mutex_unlock((a1 + 2072));
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 3758097090;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t virt_SwapCancel(uint64_t a1, int a2)
{
  pthread_mutex_lock((a1 + 2072));
  if (*(a1 + 176) == a2)
  {
    v4 = 0;
    *(a1 + 3456) = 1;
  }

  else
  {
    v4 = 3758097090;
  }

  v5 = 0;
  v6 = a1 + 180;
  while (!*(v6 + 4 * v5))
  {
    if (++v5 == 4)
    {
      LODWORD(v5) = 0;
      break;
    }
  }

  v7 = *(v6 + 4 * v5);
  if (v7)
  {
    v8 = a1 + 3072;
    v9 = -1;
    while (*(v8 + 8) != v7)
    {
      ++v9;
      v8 += 24;
      if (v9 > 0xE)
      {
        goto LABEL_16;
      }
    }

    v10 = *(v8 + 16);
    (*(*(a1 + 3040) + 128))(*(a1 + 3032));
    if (*v8)
    {
      CFRelease(*v8);
    }

    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
  }

LABEL_16:
  pthread_mutex_unlock((a1 + 2072));
  return v4;
}

uint64_t IOMobileFramebufferSwapCancel(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2488)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t kern_GetProtectionOptions(uint64_t a1, uint64_t *a2)
{
  result = 3758097090;
  if (a1 && a2)
  {
    output = 0xAAAAAAAAAAAAAAAALL;
    outputCnt = 1;
    result = IOConnectCallScalarMethod(*(a1 + 20), 0x52u, 0, 0, &output, &outputCnt);
    if (!result)
    {
      *a2 = output;
    }
  }

  return result;
}

uint64_t AppleDisplayManagerGetTypeID()
{
  result = kAppleDisplayManagerID;
  if (!kAppleDisplayManagerID)
  {
    pthread_once(&AppleDisplayManagerGetTypeID_once, appleDisplayManageClassInitialize);
    return kAppleDisplayManagerID;
  }

  return result;
}

uint64_t appleDisplayManageClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  kAppleDisplayManagerID = result;
  return result;
}

uint64_t AppleDisplayManagerOpen(io_service_t a1, task_port_t a2, uint32_t a3, uint64_t a4)
{
  if (a4)
  {
    if (!kAppleDisplayManagerID)
    {
      pthread_once(&AppleDisplayManagerGetTypeID_once, appleDisplayManageClassInitialize);
    }

    Instance = _CFRuntimeCreateInstance();
    *(Instance + 20) = 0;
    pthread_mutex_init((Instance + 24), 0);
    *a4 = Instance;
    *(Instance + 16) = a1;
    v9 = IOServiceOpen(a1, a2, a3, (Instance + 20));
    v10 = *a4;
    if (v9)
    {
      CFRelease(v10);
      *a4 = 0;
      syslog(3, " %s:  failed IOServiceOpen. return %d \n", "AppleDisplayManagerOpen", v9);
    }

    else
    {
      v10[11] = kern_DisplayWallEnumerate;
      *(*a4 + 96) = kern_DisplayWallValidateConfig;
      *(*a4 + 104) = kern_DisplayWallEnable;
      *(*a4 + 112) = kern_DisplayWallDisable;
      *(*a4 + 120) = kern_DisplayWallStatus;
      syslog(3, " %s:  success, return %d \n");
    }
  }

  else
  {
    v9 = 3758097090;
    syslog(3, " %s:  failed, bad argument return %d \n");
  }

  return v9;
}

uint64_t kern_DisplayWallEnumerate(uint64_t a1, void *a2)
{
  v2 = 3758097090;
  outputStructCnt = 644;
  if (a1 && a2)
  {
    pthread_mutex_lock((a1 + 24));
    v5 = IOConnectCallStructMethod(*(a1 + 20), 3u, 0, 0, a2, &outputStructCnt);
    if (outputStructCnt == 644)
    {
      v6 = 0;
    }

    else
    {
      v6 = -536870199;
    }

    if (v5)
    {
      v2 = v5;
    }

    else
    {
      v2 = v6;
    }

    pthread_mutex_unlock((a1 + 24));
    syslog(5, "kern_DisplayWallEnumerate called \n");
  }

  return v2;
}

uint64_t kern_DisplayWallValidateConfig(uint64_t a1, const void *a2)
{
  if (!a1 || !a2)
  {
    return 3758097090;
  }

  pthread_mutex_lock((a1 + 24));
  v4 = IOConnectCallStructMethod(*(a1 + 20), 4u, a2, 0x28uLL, 0, 0);
  pthread_mutex_unlock((a1 + 24));
  syslog(5, "kern_DisplayWallValidateConfig called \n");
  return v4;
}

uint64_t kern_DisplayWallEnable(uint64_t a1, const void *a2)
{
  if (!a1 || !a2)
  {
    return 3758097090;
  }

  pthread_mutex_lock((a1 + 24));
  v4 = IOConnectCallStructMethod(*(a1 + 20), 5u, a2, 0x28uLL, 0, 0);
  pthread_mutex_unlock((a1 + 24));
  syslog(5, "kern_DisplayWallEnable called \n");
  return v4;
}

uint64_t kern_DisplayWallDisable(uint64_t a1, unsigned int a2)
{
  input = a2;
  if (!a1)
  {
    return 3758097090;
  }

  pthread_mutex_lock((a1 + 24));
  v3 = IOConnectCallScalarMethod(*(a1 + 20), 6u, &input, 1u, 0, 0);
  pthread_mutex_unlock((a1 + 24));
  syslog(5, "kern_DisplayWallDisable called \n");
  return v3;
}

uint64_t kern_DisplayWallStatus(uint64_t a1, unsigned int a2)
{
  input = a2;
  if (!a1)
  {
    return 3758097090;
  }

  pthread_mutex_lock((a1 + 24));
  v3 = IOConnectCallScalarMethod(*(a1 + 20), 7u, &input, 1u, 0, 0);
  pthread_mutex_unlock((a1 + 24));
  syslog(5, "kern_DisplayWallStatus called \n");
  return v3;
}

uint64_t AppleDisplayManagerOpenDefault(uint64_t a1)
{
  if (!s_notification_port)
  {
    s_notification_port = IONotificationPortCreate(*MEMORY[0x277CD2898]);
    if (!s_notification_port)
    {
      return 0;
    }
  }

  v2 = 3758097084;
  v3 = IOServiceMatching("AppleDisplayManager");
  if (!v3)
  {
    return v2;
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v3);
  v5 = *MEMORY[0x277D85E08];
  if (!MatchingService)
  {
    fwrite("Didn't find ADM service \n", 0x19uLL, 1uLL, v5);
    return 3758097090;
  }

  v6 = MatchingService;
  fwrite("Found ADM service\n", 0x12uLL, 1uLL, v5);
  s_adm_info_0 = v6;
  RunLoopSource = IONotificationPortGetRunLoopSource(s_notification_port);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, RunLoopSource, *MEMORY[0x277CBF048]);
  v9 = s_adm_info_0;
  v10 = *MEMORY[0x277D85F48];

  return AppleDisplayManagerOpen(v9, v10, 0, a1);
}

uint64_t AppleDisplayManagerDisplayWallEnumerate(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 88)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t AppleDisplayManageDisplayWallValidateConfig(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 96)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t AppleDisplayManageDisplayWallEnable(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 104)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t AppleDisplayManageDisplayWallDisable(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 112)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t AppleDisplayManageDisplayWallStatus(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 120)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t appleDisplayManagerFinalize(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2)
  {
    IOServiceClose(v2);
    *(a1 + 20) = 0;
  }

  return pthread_mutex_destroy((a1 + 24));
}

uint64_t IOMobileFramebufferGetFrameworkInfo(void *a1)
{
  result = 3758097090;
  if (a1)
  {
    *a1 = 0;
    return 3758097136;
  }

  return result;
}

uint64_t IOMobileFramebufferGetLayerDefaultSurface(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2192)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferCopyLayerDisplayedSurface(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2200)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferGetDisplaySize(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2208)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferGetCanvasSizes(uint64_t a1, void *a2, _DWORD *a3)
{
  result = 3758097090;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        *(a1 + 1504) = 0;
        v7 = *(a1 + 2208);
        if (v7)
        {
          result = v7(a1, a1 + 1472);
          if (!result)
          {
            v8 = *(a1 + 1504);
            v9 = v8 + 1;
            *(a1 + 1504) = v8 + 1;
            v10 = *(a1 + 1508);
            if (v10 && (v11 = *(a1 + 1512)) != 0)
            {
              v12 = v11;
              *(a1 + 1488) = v10;
            }

            else
            {
              if (*(a1 + 1432) != 1080.0 || *(a1 + 1440) != 1920.0)
              {
                goto LABEL_13;
              }

              *(a1 + 1488) = 0x4093680000000000;
              v12 = 2208.0;
            }

            *(a1 + 1496) = v12;
            v9 = v8 + 2;
            *(a1 + 1504) = v8 + 2;
LABEL_13:
            result = 0;
            *a2 = a1 + 1472;
            *a3 = v9;
          }
        }
      }
    }
  }

  return result;
}

uint64_t IOMobileFramebufferSetCanvasSize(_DWORD *a1, double a2, double a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v15 = a3;
  valuePtr = a2;
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  v6 = CFNumberCreate(v4, kCFNumberSInt32Type, &v15);
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v13 = v15;
    input[0] = valuePtr;
    input[1] = v15;
    a1[377] = valuePtr;
    a1[378] = v13;
    CFPreferencesSetAppValue(@"canvas_width", v5, @"com.apple.iokit.IOMobileGraphicsFamily");
    CFPreferencesSetAppValue(@"canvas_height", v7, @"com.apple.iokit.IOMobileGraphicsFamily");
    CFPreferencesAppSynchronize(@"com.apple.iokit.IOMobileGraphicsFamily");
    v14 = a1[5];
    if (v14)
    {
      v9 = IOConnectCallScalarMethod(v14, 0x35u, input, 2u, 0, 0);
    }

    else
    {
      v9 = 0;
    }

LABEL_13:
    CFRelease(v5);
    v10 = v9;
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = 0;
  v10 = 0;
  if (v5)
  {
    goto LABEL_13;
  }

  if (v6)
  {
LABEL_8:
    CFRelease(v7);
  }

LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t IOMobileFramebufferGetID(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2216)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferCopyProperty(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2224)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t IOMobileFramebufferSwapSecureLayer(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2240)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSwapSetEventSignalOnGlass(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2256)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSwapActiveRegion(uint64_t a1, unsigned int a2, double a3, double a4, double a5, double a6)
{
  result = 3758097090;
  if (a1 && a2 <= 3)
  {
    v8 = a1 + 416;
    v9 = *(a1 + 416 + 4 * a2);
    if (v9 == 4)
    {
      return 3758097128;
    }

    *(v8 + 4 * a2) = v9 + 1;
    v10 = (a1 + (a2 << 6) + 432);
    v11 = &v10[4 * v9];
    v12 = a3;
    v13 = vcvtas_u32_f32(v12);
    v14 = a4;
    v15 = vcvtas_u32_f32(v14);
    *v11 = v13;
    v11[1] = v15;
    v16 = a5;
    v17 = vcvtas_u32_f32(v16);
    v18 = a6;
    v19 = vcvtas_u32_f32(v18);
    v11[2] = v17;
    v11[3] = v19;
    if (v17)
    {
      v20 = v19 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      if (v9 < 1)
      {
        return 0;
      }

      v21 = v13 + v17;
      v22 = v15 + v19;
      while (1)
      {
        if (v10[2] + *v10 > v13)
        {
          v23 = v10[1];
          v24 = v10[3] + v23 > v15 && *v10 < v21;
          if (v24 && v23 < v22)
          {
            break;
          }
        }

        v10 += 4;
        if (!--v9)
        {
          return 0;
        }
      }
    }

    --*(v8 + 4 * a2);
  }

  return result;
}

uint64_t IOMobileFramebufferSwapDirtyRegion(uint64_t a1, double a2, double a3, double a4, double a5)
{
  result = 3758097090;
  if (a1)
  {
    *(a1 + 688) = a2;
    *(a1 + 692) = a3;
    v7 = vcvtpd_s64_f64(a4 + a2 - a2);
    *(a1 + 696) = v7;
    v8 = vcvtpd_s64_f64(a5 + a3 - a3);
    *(a1 + 700) = v8;
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      result = 0;
      *(a1 + 740) = 1;
    }
  }

  return result;
}

uint64_t IOMobileFramebufferSwapSubtitleRegion(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2288)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSwapSetTimestamp(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2296)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferAnnounceNextSwapTimestamp(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2304)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSwapSetParams(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a1 && a4 <= 4)
  {
    return (*(a1 + 2320))();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSwapWorkaroundSettings(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2960)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSwapSetIndicatorBrightness(uint64_t a1)
{
  if (a1 && *(a1 + 2328))
  {
    return (*(a1 + 2336))();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t IOMobileFramebufferSwapSetSecureAnimation(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2344)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t IOMobileFramebufferSwapSetIndicatorBrightnessLimit(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2352)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t IOMobileFramebufferSwapSetBrightnessLimit(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2360)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t IOMobileFramebufferSwapSetDisplayEdrHeadroom(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2376)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t IOMobileFrameBufferSwapSetUserLuminanceAdjustment(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2384)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t IOMobileFramebufferSwapSetColorMatrix(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2432)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSwapSetLayerEDRCompensation(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2456)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t IOMobileFramebufferSwapSignal(uint64_t a1)
{
  result = 3758097090;
  if (a1)
  {
    if (*(a1 + 2464))
    {
      return 3758097095;
    }

    else
    {
      return 3758097090;
    }
  }

  return result;
}

uint64_t IOMobileFramebufferSwapWaitWithTimeout(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2480)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSwapCancelAll(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2496)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSwapGetCurrent(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2504)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSwapCancelAllGetCurrent(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2512)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferWaitSurface(uint64_t a1)
{
  if (!*(a1 + 176))
  {
    return 0;
  }

  v1 = *(a1 + 2472);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSurfaceIsReplaceable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 3758097090;
  if (a1 && a2 && a4)
  {
    v6 = *(a1 + 2520);
    if (v6)
    {
      return v6(a1);
    }

    else
    {
      return 3758097095;
    }
  }

  return result;
}

uint64_t IOMobileFramebufferSetIdleBuffer(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2528)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferGetVSyncRunLoopSource(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2800)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t IOMobileFramebufferEnableVSyncNotifications(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2544)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferDisableVSyncNotifications(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2552)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSetTVOutMode(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2560)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSetTVOutSignalType(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2568)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSetWSSInfo(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2576)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSetWhiteOnBlackMode(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2592)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSetColorRemapMode(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2600)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSwapSetColorRemapMode(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2440)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferGetColorRemapMode(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2608)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferEnableStatistics(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2624)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSetDebugFlags(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2632)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSetFlags(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2640)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSetGammaTable(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2648)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferGetGammaTable(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2664)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSetMatrix(uint64_t a1, unsigned int a2, void *inputStruct)
{
  input = a2;
  result = 3758097090;
  if (a1)
  {
    if (inputStruct)
    {
      return IOConnectCallMethod(*(a1 + 20), 0x37u, &input, 1u, inputStruct, 0x48uLL, 0, 0, 0, 0);
    }
  }

  return result;
}

uint64_t IOMobileFramebufferGetMatrix(uint64_t a1, unsigned int a2, void *outputStruct)
{
  v3 = 3758097090;
  v8 = 72;
  input = a2;
  if (a1 && outputStruct)
  {
    v4 = IOConnectCallMethod(*(a1 + 20), 0x36u, &input, 1u, 0, 0, 0, 0, outputStruct, &v8);
    if (v8 != 72 && v4 == 0)
    {
      return 3758097097;
    }

    else
    {
      return v4;
    }
  }

  return v3;
}

uint64_t IOMobileFramebufferSetDisplayDevice(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2672)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSetDigitalOutMode(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2680)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSetClamshellState(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2696)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferGetSupportedDigitalOutModes(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2704)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

double IOMobileFramebufferGetBandwidth(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  v5 = 0u;
  v6 = 0u;
  if (a1)
  {
    v3 = *(a1 + 2904);
    if (v3)
    {
      if (!v3(a1, 115, &v5, 32, 0, 0))
      {
        *a2 = v5;
        *(a2 + 16) = v6;
        result = *(&v6 + 1);
        *(a2 + 24) = *(&v6 + 1);
      }
    }
  }

  return result;
}

uint64_t IOMobileFramebufferGetHotPlugRunLoopSource(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2800)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t IOMobileFramebufferEnablePowerNotifications(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2544)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferDisablePowerNotifications(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2552)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferEnableHotPlugDetectNotifications(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2544)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferDisableHotPlugDetectNotifications(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2552)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferEnableNeedSwapNotifications(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2544)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferDisableNeedSwapNotifications(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2552)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferGetHDCPDownstreamState(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2720)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferGetHDCPRunLoopSource(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2800)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t IOMobileFramebufferGetHDCPAuthenticationProtocol(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2712)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t IOMobileFramebufferHDCPSendRequest(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2728)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferHDCPGetReply(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2736)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFrameBufferprintDisplayRegs(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 2752);
    if (v1)
    {
      return v1();
    }
  }

  return result;
}

uint64_t IOMobileFramebufferGetDotPitch(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2760)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferGetDotPitchFloat(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2768)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferGetDisplayArea(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2776)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferEnableDisableDithering(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2784)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSetUnderrunColor(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2792)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferGetCRCRunLoopSource(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2800)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t IOMobileFramebufferGetCRCNotifyMessageCount(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2808)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t IOMobileFramebufferEnableCRCNotifications(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2544)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferDisableCRCNotifications(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2552)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferGetRunLoopSource(uint64_t a1, unsigned int a2)
{
  if (a1 && a2 <= 7 && (v2 = *(a1 + 2800)) != 0)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

uint64_t IOMobileFramebufferEnableDisableVideoPowerSavings(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2816)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSetVideoDACGain(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2824)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSetLine21Data(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2832)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFrameBufferGetDebugTraces(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2840)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFrameBufferEnableDebugTracing(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2848)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFrameBufferEnableVBLTraces(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2856)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFrameBufferPrintDebugTraces(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 2864);
    if (v1)
    {
      return v1();
    }
  }

  return result;
}

uint64_t IOMobileFrameBufferSetLogLevel(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2872)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSPLCSetBrightness(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2880)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSPLCGetBrightness(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2888)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferSwapSetToneMapConfig(uint64_t a1, _OWORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 3758097095;
  if (a1)
  {
    v9 = *(a1 + 2896);
    if (v9)
    {
      v10 = a2[3];
      v13[2] = a2[2];
      *v14 = v10;
      *&v14[12] = *(a2 + 60);
      v11 = a2[1];
      v13[0] = *a2;
      v13[1] = v11;
      v15 = a3;
      return v9(a1, 107, v13, 76, &v15, 1, a7, a8);
    }
  }

  return v8;
}

uint64_t IOMobileFramebufferSetBlock(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2896)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t IOMobileFramebufferGetBufBlock(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2976)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t IOMobileFramebufferSwapSetICCMatrix(uint64_t a1, int a2, int a3, __int128 *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = 3758097095;
  v9 = 1;
  if (a1)
  {
    v5 = *(a1 + 2896);
    if (v5)
    {
      v6 = a4[1];
      v10 = *a4;
      v11 = v6;
      *v12 = a4[2];
      *&v12[12] = *(a4 + 44);
      v13 = *(a1 + 176);
      v14 = a2;
      v15 = a3;
      v4 = v5();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t IOMobileFramebufferSwapSetICCCurve(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = 3758097095;
  bzero(v15, 0x290uLL);
  v15[0] = 1;
  if (a1)
  {
    v11 = *(a1 + 2896);
    if (v11)
    {
      v12 = *a5;
      v15[2] = *a5;
      if (a2 != 17 || *(a1 + 2144))
      {
        if (v12 > 13)
        {
          if (v12 <= 15)
          {
            if (v12 == 14)
            {
              v25 = *(a5 + 8);
              v26 = *(a5 + 24);
            }

            else
            {
              v23 = *(a5 + 8);
              v24 = *(a5 + 24);
            }

            goto LABEL_24;
          }

          if (v12 == 16)
          {
            v27 = *(a5 + 8);
            goto LABEL_24;
          }

          if (v12 == 17)
          {
            v22 = *(a5 + 8);
            goto LABEL_24;
          }
        }

        else
        {
          if (v12 > 11)
          {
            if (v12 == 12)
            {
              memcpy(v21, (a5 + 8), sizeof(v21));
            }

            else
            {
              v28 = *(a5 + 8);
              v29 = *(a5 + 16);
            }

            goto LABEL_24;
          }

          if (v12 == 8)
          {
            v17 = *(a5 + 12);
            v18 = *(a5 + 8);
            v19 = *(a5 + 16);
            v20 = 4 * v18;
          }

          else if (v12 == 9)
          {
            v17 = *(a5 + 24);
            v18 = *(a5 + 8);
            v19 = *(a5 + 32);
            v20 = 4 * v18;
LABEL_24:
            v30[0] = *(a1 + 176);
            v30[1] = a2;
            v30[2] = a4;
            v30[3] = a3;
            v10 = v11(a1, 51, v15, 656, v30, 4);
            goto LABEL_25;
          }
        }

        *v16 = *(a5 + 8);
        *&v16[12] = *(a5 + 20);
        goto LABEL_24;
      }

      v10 = 3758097126;
    }
  }

LABEL_25:
  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t IOMobileFramebufferSetPreset(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2896)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t IOMobileFramebufferSetParameter(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2912)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferCreateStatistics(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2920)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t IOMobileFramebufferFactoryPortal(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2944)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferGetCurrentAbsoluteTime(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2952)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOMobileFramebufferGetLinkQuality(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2968)) != 0)
  {
    return v1();
  }

  else
  {
    return 0x80000000;
  }
}

uint64_t IOMobileFramebufferSetDroppable(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 3758097090;
  }

  result = 0;
  *(a1 + 869) = a2;
  return result;
}

__n128 IOMobileFramebufferGetBrightnessControlInfo(uint64_t a1, __n128 *a2)
{
  if (a1 && a2 && *(a1 + 3521) == 1)
  {
    result = *(a1 + 3528);
    a2[1].n128_u64[0] = *(a1 + 3544);
    *a2 = result;
  }

  return result;
}

uint64_t IOMobileFramebufferSetBrightnessControlCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 3758097095;
  v9 = 0;
  if (a1[291])
  {
    if (a1[292])
    {
      pthread_once(&s_bc_once, iomfb_bc_load_lib);
      if (s_bc_9 == 1)
      {
        a1[444] = a2;
        a1[445] = a3;
        if (a2)
        {
          v7 = a1[446];
          if (v7)
          {
            CFRelease(v7);
          }

          v3 = 0;
          a1[446] = s_bc_0(iomfb_bc_up, a1, &v9);
        }

        else
        {
          iomfb_bc_invalid(a1);
          return 0;
        }
      }
    }
  }

  return v3;
}

void iomfb_bc_load_lib()
{
  v0 = dlopen("/System/Library/PrivateFrameworks/BrightnessControl.framework/BrightnessControl", 2);
  s_bc_lib = v0;
  if (v0)
  {
    s_bc_0 = dlsym(v0, "BCBrtControlNewMonitorForAllDisplaysWithHandler");
    s_bc_1 = dlsym(s_bc_lib, "BCBrtControlGetContainerID");
    s_bc_2 = dlsym(s_bc_lib, "BCBrtControlGetMinNits");
    s_bc_3 = dlsym(s_bc_lib, "BCBrtControlGetMaxNits");
    s_bc_4 = dlsym(s_bc_lib, "BCBrtControlGetCapabilities");
    s_bc_5 = dlsym(s_bc_lib, "BCBrtControlGetIsValid");
    s_bc_6 = dlsym(s_bc_lib, "BCBrtControlSetDisplayInvalidHandler");
    s_bc_7 = dlsym(s_bc_lib, "BCBrtControlSetNits");
    v1 = dlsym(s_bc_lib, "BCBrtControlSetDisplayService");
    s_bc_8 = v1;
    if (s_bc_0 && s_bc_1 && s_bc_2 && s_bc_3 && s_bc_4 && s_bc_5 && s_bc_6 && s_bc_7)
    {
      s_bc_9 = 1;
    }

    if (!v1)
    {
    }
  }

  else
  {
    syslog(3, "IOMFB: %s not found\n");
  }
}

void iomfb_bc_up(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    return;
  }

  if (*(a1 + 2144) == 2)
  {
    return;
  }

  if (!s_bc_5(a2))
  {
    return;
  }

  v4 = s_bc_4(a2);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  Value = CFDictionaryGetValue(v4, @"BuiltIn");
  if (!Value)
  {
    goto LABEL_13;
  }

  v7 = Value;
  v8 = CFGetTypeID(Value);
  if (v8 == CFNumberGetTypeID())
  {
    valuePtr = 0;
    CFNumberGetValue(v7, kCFNumberIntType, &valuePtr);
    v9 = valuePtr == 0;
    goto LABEL_10;
  }

  v10 = CFGetTypeID(v7);
  if (v10 != CFBooleanGetTypeID())
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v9 = v7 == *MEMORY[0x277CBED10];
LABEL_10:
  v11 = !v9;
LABEL_14:
  v12 = *(a1 + 2144);
  if (!v12)
  {
    if (v11)
    {
      v14 = 0;
      v15 = 0;
      syslog(6, "matched IOMFB (%p) to BC (%p) for embedded panel");
      goto LABEL_33;
    }

LABEL_21:
    v16 = *(a1 + 2224);
    if (v16)
    {
      v15 = v16(a1, @"DisplayContainerID");
    }

    else
    {
      v15 = 0;
    }

    v17 = s_bc_1(a2);
    if (!v17)
    {
      v14 = 0;
      goto LABEL_42;
    }

    v18 = CFUUIDCreateString(*MEMORY[0x277CBECE8], v17);
    v14 = v18;
    if (!v15 || !v18)
    {
LABEL_42:
      if (!v15)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    if (CFStringCompare(v15, v18, 0) == kCFCompareEqualTo || (v19 = CFDictionaryGetValue(v5, @"kUSBContainerID")) != 0 && CFStringCompare(v15, v19, 1uLL) == kCFCompareEqualTo)
    {
      if (!isServicingTwoExternalDisplay(*(a1 + 16)) || *(a1 + 2144))
      {
        syslog(6, "matched IOMFB (%p) to BC (%p) for external display");
        goto LABEL_33;
      }

      CStringPtr = CFStringGetCStringPtr(v15, 0x600u);
      syslog(6, "Warning: tried to match BC (%p) to IOMFB (%p) disp type (%d) with container ID (%s) - skip", a2, a1, 0, CStringPtr);
    }

LABEL_43:
    CFRelease(v15);
LABEL_44:
    if (v14)
    {
      CFRelease(v14);
    }

    return;
  }

  if (v12 != 3)
  {
    goto LABEL_21;
  }

  v13 = CFDictionaryGetValue(v5, @"DFR");
  if (v13 && CFBooleanGetValue(v13))
  {
    v14 = 0;
    v15 = 0;
    syslog(6, "matched IOMFB (%p) to BC (%p) for DFR");
LABEL_33:
    pthread_mutex_lock((a1 + 2072));
    v20 = *(a1 + 3576);
    if (v20)
    {
      if (s_bc_8)
      {
        (s_bc_8)();
        v20 = *(a1 + 3576);
      }

      CFRelease(v20);
    }

    *(a1 + 3521) = 1;
    *(a1 + 3576) = a2;
    CFRetain(a2);
    *(a1 + 3528) = 1;
    *(a1 + 3536) = s_bc_3(a2);
    *(a1 + 3544) = s_bc_2(a2);
    s_bc_6(a2, iomfb_bc_invalid, a1);
    if (s_bc_8)
    {
      (s_bc_8)(a2, *(a1 + 16));
    }

    pthread_mutex_unlock((a1 + 2072));
    v21 = *(a1 + 3552);
    if (v21)
    {
      v21(a1, 1, *(a1 + 3560));
    }

    goto LABEL_42;
  }
}

uint64_t iomfb_bc_invalid(uint64_t a1)
{
  pthread_mutex_lock((a1 + 2072));
  *(a1 + 3521) = 0;
  v2 = *(a1 + 3576);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 3576) = 0;
  *(a1 + 3528) = 0;
  *(a1 + 3544) = 0;
  *(a1 + 3536) = 0;
  result = pthread_mutex_unlock((a1 + 2072));
  v4 = *(a1 + 3552);
  if (v4)
  {
    v5 = *(a1 + 3560);

    return v4(a1, 0, v5);
  }

  return result;
}

uint64_t IOMobileFramebufferGetBrightnessControlCapabilities(uint64_t a1)
{
  pthread_once(&s_bc_once, iomfb_bc_load_lib);
  if (s_bc_9 != 1 || *(a1 + 3521) != 1 || !*(a1 + 3576))
  {
    return 0;
  }

  v2 = s_bc_4;

  return v2();
}

uint64_t IOMobileFramebufferScheduleWithDispatchQueue(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = 3758097084;
  v7 = a2;
  v8 = a1 + (a2 << 6);
  InfoKeyInitialize(a1);
  pthread_mutex_lock((a1 + 2072));
  if (!*(v8 + 1544))
  {
    v9 = v8 + 1520;
    if (!*(v9 + 16))
    {
      if (!*(v9 + 8) || !*(v9 + 40))
      {
        if (a2 == 3 && *(a1 + 3840) == 1)
        {
          NotificationPort = IODataQueueAllocateNotificationPort();
          *(v9 + 32) = NotificationPort;
          if (!NotificationPort)
          {
            syslog(3, "IODataQueueAllocateNotificationPort failed\n");
            v6 = 0;
            goto LABEL_14;
          }

          v11 = MEMORY[0x223DF82D0](*(a1 + 20), 3, NotificationPort, 0);
          if (v11)
          {
            v6 = v11;
            syslog(3, "IOConnectSetNotificationPort failed, error: %d\n", v11);
            goto LABEL_14;
          }

          *(v9 + 40) = 0;
          v20 = 0xAAAAAAAAAAAAAAAALL;
          v21 = 0xAAAAAAAAAAAAAAAALL;
          v18 = MEMORY[0x223DF82C0](*(a1 + 20), 3, *MEMORY[0x277D85F48], &v21, &v20, 1);
          if (v18)
          {
            v6 = v18;
            syslog(3, "IOConnectMapMemory failed, error: %d\n", v18);
            goto LABEL_14;
          }

          *(v9 + 40) = v21;
          v19 = dispatch_source_create(MEMORY[0x277D85D08], *(v9 + 32), 0, a3);
          dispatch_set_context(v19, a1);
          dispatch_source_set_event_handler_f(v19, FrameInfoNotifyFuncIOShqDispatchQueue);
          dispatch_source_set_cancel_handler_f(v19, DispatchQueueCancelHandler);
          dispatch_resume(v19);
        }

        else
        {
          v12 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
          *(v9 + 8) = v12;
          LODWORD(v21) = notificationLimit[v7];
          v13 = *MEMORY[0x277D85F48];
          MachPort = IONotificationPortGetMachPort(v12);
          if (MEMORY[0x223DF8660](v13, MachPort, 1, &v21, 1))
          {
            syslog(5, "couldn't set mach port limit\n");
          }

          v15 = *(a1 + 20);
          v16 = IONotificationPortGetMachPort(*(v9 + 8));
          MEMORY[0x223DF82D0](v15, a2, v16, 0);
          IONotificationPortSetDispatchQueue(*(v9 + 8), a3);
        }
      }

      v6 = 0;
      *(v9 + 24) = a3;
    }
  }

LABEL_14:
  pthread_mutex_unlock((a1 + 2072));
  return v6;
}

uint64_t InfoKeyInitialize(uint64_t result)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((*(result + 2040) & 1) == 0)
  {
    v1 = result;
    if (*(result + 2936))
    {
      pthread_mutex_lock((result + 2072));
      if ((*(v1 + 2040) & 1) == 0)
      {
        do
        {
          *&v2 = 0xAAAAAAAAAAAAAAAALL;
          *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v15 = v2;
          v16 = v2;
          *__s1 = v2;
          v14 = v2;
          v11 = 0;
          v12 = -1431655766;
          *(v1 + 2040) = 1;
          v3 = (*(v1 + 2936))(v1, 0, &v12, __s1, &v11);
          v4 = v12;
          if (v3)
          {
            v5 = 1;
          }

          else
          {
            v5 = v12 == 0;
          }

          if (v5)
          {
            break;
          }

          *(v1 + 2044) = v12;
          v6 = malloc_type_calloc((v4 + 1), 8uLL, 0x50040EE9192B6uLL);
          *(v1 + 2032) = v6;
          *v6 = strndup(__s1, 0x40uLL);
          *(v1 + 3840) = v11;
          if (*(v1 + 2044) >= 2u)
          {
            v7 = 1;
            while (1)
            {
              v8 = (*(v1 + 2936))(v1, v7, &v12, __s1, &v11) ? 0 : strndup(__s1, 0x40uLL);
              *(*(v1 + 2032) + 8 * v7) = v8;
              if (!*(*(v1 + 2032) + 8 * v7))
              {
                break;
              }

              if (++v7 >= *(v1 + 2044))
              {
                goto LABEL_19;
              }
            }

            v9 = 0;
            do
            {
              free(*(*(v1 + 2032) + 8 * v9++));
            }

            while (v7 != v9);
            free(*(v1 + 2032));
            *(v1 + 2044) = 0;
          }

LABEL_19:
          ;
        }

        while (*(v1 + 2040) != 1);
      }

      result = pthread_mutex_unlock((v1 + 2072));
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void FrameInfoNotifyFuncIOShqDispatchQueue(uint64_t a1)
{
  dataSize = 0;
  v2 = *(a1 + 1752);
  if (v2)
  {
    v3 = IODataQueuePeek(v2);
    if (v3)
    {
      v4 = v3;
      v5 = 1;
      do
      {
        memcpy((a1 + 3584), v4->data, v4->size);
        PackAndDispatchFrameInfoNotifictionData(a1);
        IODataQueueDequeue(*(a1 + 1752), 0, &dataSize);
        v4 = IODataQueuePeek(*(a1 + 1752));
        ++v5;
      }

      while (v4);
    }
  }

  else
  {
    syslog(3, "FrameInfoNotifyFuncIOShqDispatchQueue IO Data Queue not available");
  }
}

uint64_t DispatchQueueCancelHandler(uint64_t result)
{
  v1 = result;
  v2 = MEMORY[0x277D85F48];
  if (*(result + 1752))
  {
    result = MEMORY[0x223DF82E0](*(result + 20), 3, *MEMORY[0x277D85F48]);
    *(v1 + 1752) = 0;
  }

  v3 = *(v1 + 1744);
  if (v3)
  {
    result = mach_port_mod_refs(*v2, v3, 1u, -1);
    *(v1 + 1744) = 0;
  }

  return result;
}

uint64_t IOMobileFramebufferUnscheduleFromDispatchQueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 3758097084;
  v7 = a1 + (a2 << 6);
  pthread_mutex_lock((a1 + 2072));
  v8 = *(v7 + 1528);
  if (v8)
  {
    v9 = v7 + 1520;
    if (*(v9 + 24) == a3)
    {
      IONotificationPortSetDispatchQueue(v8, 0);
      v10 = MEMORY[0x277D85F48];
      if (*(v9 + 40))
      {
        MEMORY[0x223DF82E0](*(a1 + 20), a2, *MEMORY[0x277D85F48]);
        *(v9 + 40) = 0;
      }

      v11 = *(v9 + 32);
      if (v11)
      {
        mach_port_mod_refs(*v10, v11, 1u, -1);
        *(v9 + 32) = 0;
      }

      v6 = 0;
      *(v9 + 24) = 0;
    }
  }

  pthread_mutex_unlock((a1 + 2072));
  return v6;
}

uint64_t IOMobileFramebufferSupportedFrameInfo(uint64_t a1)
{
  if (!*(a1 + 2936))
  {
    return 0;
  }

  InfoKeyInitialize(a1);
  return *(a1 + 2032);
}

uint64_t IOMobileFramebufferRelbufInfo(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a1)
  {
    v10 = 3758097095;
    syslog(3, "IOMFB: IOMobileFramebufferRelbufInfo : fb passed is NULL\n");
    return v10;
  }

  if (!getDriverIntProp(a1, @"SupportRelbufInfoCb"))
  {
    v10 = 3758097095;
    syslog(3, "IOMFB: IOMobileFramebufferRelbufInfo API is not supported\n");
    return v10;
  }

  if (a2 && a4)
  {
    syslog(5, "IOMFB: IOMobileFramebufferRelbufInfo API is enabled\n");
    v8 = *(a1 + 2544);

    return v8(a1, 7, a2, a3);
  }

  if (!*(a1 + 2552))
  {
    return 3758097090;
  }

  syslog(5, "IOMFB: IOMobileFramebufferRelbufInfo API is disabled\n");
  v11 = *(a1 + 2552);

  return v11(a1, 7);
}

uint64_t IOMobileFramebufferFrameInfo(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9)
{
  result = 3758097090;
  if (a2 && a4)
  {
    if (a1)
    {
      if (*(a1 + 2544))
      {
        if (*(a1 + 2928))
        {
          if (*(a1 + 2936))
          {
            InfoKeyInitialize(a1);
            *(a1 + 2048) = 0;
            result = figure_frame_info_mask(a1, 1, &a9);
            if (!result)
            {
              result = (*(a1 + 2544))(a1, 3, a2, a3);
              if (!result)
              {
                return (*(a1 + 2928))(a1, *(a1 + 2048));
              }
            }
          }
        }
      }
    }
  }

  else if (a1)
  {
    v13 = *(a1 + 2552);
    if (v13)
    {

      return v13(a1, 3);
    }
  }

  return result;
}

uint64_t figure_frame_info_mask(uint64_t a1, int a2, const char **a3)
{
  v13 = a3 + 1;
  v5 = *a3;
  if (*a3)
  {
    v6 = 0;
    v7 = *(a1 + 2032);
    while (v7)
    {
      v8 = *v7;
      if (!*v7)
      {
        break;
      }

      v9 = 0;
      while (strncmp(v8, v5, 0x40uLL))
      {
        v8 = v7[++v9];
        if (!v8)
        {
          return 3758097090;
        }
      }

      v6 |= 1 << v9;
      v10 = v13++;
      v5 = *v10;
      if (!*v10)
      {
        goto LABEL_13;
      }
    }

    return 3758097090;
  }

  else
  {
    v6 = 0;
LABEL_13:
    result = 0;
    if (a2)
    {
      v12 = *(a1 + 2048) | v6;
    }

    else
    {
      v12 = *(a1 + 2048) & ~v6;
    }

    *(a1 + 2048) = v12;
  }

  return result;
}

uint64_t IOMobileFramebufferChangeFrameInfo(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9)
{
  result = 3758097090;
  if (a1)
  {
    if (*(a1 + 2928))
    {
      if (*(a1 + 2936))
      {
        InfoKeyInitialize(a1);
        result = figure_frame_info_mask(a1, a2 != 0, &a9);
        if (!result)
        {
          v12 = *(a1 + 2928);
          if (v12)
          {
            return v12(a1, *(a1 + 2048));
          }
        }
      }
    }
  }

  return result;
}

uint64_t IOMobileFramebufferGetTypeID()
{
  result = kIOMobileFramebufferID;
  if (!kIOMobileFramebufferID)
  {
    pthread_once(&IOMobileFramebufferGetTypeID_once, ioMobileFramebufferClassInitialize);
    return kIOMobileFramebufferID;
  }

  return result;
}

uint64_t benchmark_SwapBegin(uint64_t a1, int *a2)
{
  bzero((a1 + 24), 0x560uLL);
  v4 = benchmark_SwapBegin_s_swapid++;
  *(a1 + 176) = v4;
  if (a2)
  {
    *a2 = v4;
  }

  v5 = *(a1 + 3464);
  if (v5)
  {
    IOMFBGainMapRelease(a1, v5);
    *(a1 + 3464) = 0;
  }

  return 0;
}

uint64_t benchmark_SwapEnd(uint64_t a1)
{
  v2 = *(a1 + 176);
  v3 = *(a1 + 1768);
  v4 = *(a1 + 1712);
  global_queue = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = __benchmark_SwapEnd_block_invoke;
  v7[3] = &__block_descriptor_tmp;
  v7[4] = v3;
  v7[5] = a1;
  v8 = v2;
  v7[6] = v4;
  dispatch_async(global_queue, v7);
  return 0;
}

uint64_t benchmark_EnableNotifications(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + (a2 << 6);
  *(v4 + 1576) = a3;
  *(v4 + 1520) = a4;
  return 0;
}

uint64_t benchmark_DisableNotifications(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + (a2 << 6));
  v2[98] = 0u;
  v2[97] = 0u;
  v2[96] = 0u;
  v2[95] = 0u;
  return 0;
}

uint64_t benchmark_SupportedFrameInfo(int a1, unsigned int a2, unsigned int *a3, char *__dst, _DWORD *a5)
{
  *a3 = 5;
  *a5 = 0;
  if (*a3 <= a2)
  {
    return 3758097090;
  }

  strncpy(__dst, benchmark_SupportedFrameInfo_names[a2], 0x40uLL);
  return 0;
}

uint64_t kern_SwapSecureLayer(uint64_t a1, char a2, int a3, char a4, double a5, double a6, double a7, double a8)
{
  pthread_mutex_lock((a1 + 2072));
  *(a1 + 1376) = 1;
  *(a1 + 1377) = a2;
  *(a1 + 1380) = a3;
  *(a1 + 1392) = a7;
  *(a1 + 1396) = a8;
  *(a1 + 1384) = a5;
  *(a1 + 1388) = a6;
  *(a1 + 871) = (a4 & 0x40) != 0;
  pthread_mutex_unlock((a1 + 2072));
  return 0;
}

uint64_t kern_SwapSetEventSignalOnGlass(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 720) = MEMORY[0x223DF84E0](a2);
  *(a1 + 136) = a3;
  return 0;
}

uint64_t kern_SwapSubtitleRegion(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  v6 = 0;
  while (1)
  {
    v7 = a1 + v6;
    if ((*(a1 + v6 + 761) & 1) == 0)
    {
      break;
    }

    v6 += 21;
    if (v6 == 105)
    {
      syslog(3, "%s no more available region!\n", "kern_SwapSubtitleRegion");
      return 3758097090;
    }
  }

  result = 0;
  *(v7 + 757) = a2;
  *(v7 + 741) = a3;
  *(v7 + 745) = a4;
  *(v7 + 749) = a5;
  *(v7 + 761) = 1;
  *(v7 + 753) = a6;
  return result;
}

uint64_t kern_SwapSetParams(uint64_t a1, uint64_t *a2, unint64_t a3, int a4)
{
  pthread_mutex_lock((a1 + 2072));
  v8 = 0;
  if (a4 > 1)
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        v8 = 0;
        *(a1 + 1338) = 1;
      }

      else if (a4 == 4)
      {
        v8 = 0;
        *(a1 + 1339) = 1;
      }

      goto LABEL_19;
    }

    if (!a2 || a3 == 73)
    {
      v8 = 0;
      *(a1 + 948) = 1;
      *(a1 + 949) = *a2;
      v10 = *(a2 + 1);
      v11 = *(a2 + 2);
      v12 = *(a2 + 3);
      *(a1 + 1006) = *(a2 + 57);
      *(a1 + 981) = v11;
      *(a1 + 997) = v12;
      *(a1 + 965) = v10;
      goto LABEL_19;
    }

LABEL_17:
    v8 = 3758097090;
    goto LABEL_19;
  }

  if (!a4)
  {
    if (!a2 || a3 == 524)
    {
      v8 = 0;
      *(a1 + 870) = 1;
      *(a1 + 80) = a2;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (a4 == 1)
  {
    v8 = 3758097090;
    if (a2)
    {
      if (a3 <= 0xC)
      {
        v8 = 0;
        *(a1 + 934) = 1;
        v9 = *a2;
        *(a1 + 944) = *(a2 + 2);
        *(a1 + 936) = v9;
      }
    }
  }

LABEL_19:
  pthread_mutex_unlock((a1 + 2072));
  return v8;
}

uint64_t kern_SwapSetIndicatorBrightness(uint64_t a1, int a2, double a3)
{
  pthread_mutex_lock((a1 + 2072));
  if ((*(a1 + 3521) & 1) == 0)
  {
    syslog(5, "SwapSetIndicatorBrightness: Brightness control is not enabled\n");
  }

  *(a1 + 878) = 1;
  *(a1 + 877) = a2;
  v6 = 0.0;
  if (a2)
  {
    v6 = a3;
  }

  *(a1 + 894) = v6;
  pthread_mutex_unlock((a1 + 2072));
  return 0;
}

uint64_t kern_SwapSetSecureAnimation(uint64_t a1, char a2)
{
  pthread_mutex_lock((a1 + 2072));
  *(a1 + 879) = a2;
  pthread_mutex_unlock((a1 + 2072));
  return 0;
}

uint64_t kern_SwapSetIndicatorBrightnessLimit(uint64_t a1, double a2)
{
  pthread_mutex_lock((a1 + 2072));
  if (*(a1 + 3521) == 1)
  {
    *(a1 + 880) = 1;
    *(a1 + 902) = a2;
  }

  else
  {
    syslog(5, "SwapSetIndicatorBrightnessLimit: Brightness control is not enabled\n");
  }

  pthread_mutex_unlock((a1 + 2072));
  return 0;
}

uint64_t kern_SwapSetBrightnessLimit(uint64_t a1, double a2)
{
  pthread_mutex_lock((a1 + 2072));
  if ((*(a1 + 3521) & 1) == 0)
  {
    syslog(5, "SwapSetBrightnessLimit: Brightness control is not enabled\n");
  }

  *(a1 + 881) = 1;
  *(a1 + 910) = a2;
  pthread_mutex_unlock((a1 + 2072));
  return 0;
}

uint64_t kern_SwapSetDisplayEdrHeadroom(uint64_t a1, double a2)
{
  pthread_mutex_lock((a1 + 2072));
  if ((*(a1 + 3521) & 1) == 0)
  {
    syslog(5, "SwapSetDisplayEdrHeadroom: Brightness control is not enabled\n");
  }

  *(a1 + 884) = 1;
  *(a1 + 1022) = a2;
  pthread_mutex_unlock((a1 + 2072));
  return 0;
}

uint64_t kern_SwapSetUserLuminanceAdjustment(uint64_t a1, double a2)
{
  pthread_mutex_lock((a1 + 2072));
  if (a2 == 0.0)
  {
    v4 = 3758097090;
  }

  else
  {
    if ((*(a1 + 3521) & 1) == 0)
    {
      syslog(5, "SwapSetUserLuminanceAdjustmen: Brightness control is not enabled\n");
    }

    v4 = 0;
    *(a1 + 883) = 1;
    *(a1 + 926) = a2;
  }

  pthread_mutex_unlock((a1 + 2072));
  return v4;
}

uint64_t kern_SwapSetPulseWidthMaximization(uint64_t a1, char a2)
{
  pthread_mutex_lock((a1 + 2072));
  *(a1 + 885) = 1;
  *(a1 + 935) = a2;
  pthread_mutex_unlock((a1 + 2072));
  return 0;
}

uint64_t kern_SwapSetLayerEDRCompensation(uint64_t a1, unsigned int a2, int a3, double a4)
{
  if (a2 < 4)
  {
    v6 = a3;
    if (a4 != 0.0 || a3 == 0)
    {
      pthread_mutex_lock((a1 + 2072));
      v10 = a1 + 9 * a2;
      *(v10 + 1348) = v6;
      *(v10 + 1340) = a4;
      pthread_mutex_unlock((a1 + 2072));
      return 0;
    }

    else
    {
      v5 = 3758097090;
      syslog(3, "%s - Cannot use zero gamma value for %d layer\n");
    }
  }

  else
  {
    v5 = 3758097090;
    syslog(3, "%s - Exceeded max number of layers: %d\n");
  }

  return v5;
}

uint64_t kern_SwapSetColorMatrix(uint64_t a1, float *a2, int a3, int a4)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[0] = v4;
  v12[1] = v4;
  v11[2] = v4;
  v11[3] = v4;
  v11[0] = v4;
  v11[1] = v4;
  v10[0] = v4;
  v10[1] = v4;
  *(a1 + 847) = 1;
  LOBYTE(v10[0]) = a2 == 0;
  v13 = a3;
  v14 = a4;
  if (a2)
  {
    v5 = v12 + 1;
    v6 = 3;
    v7 = a2;
    do
    {
      *(v5 - 12) = vcvts_n_s32_f32(*v7, 0x20uLL);
      *v5++ = vcvts_n_s32_f32(v7[12], 0x20uLL);
      ++v7;
      --v6;
    }

    while (v6);
    for (i = 0; i != 9; ++i)
    {
      *(v11 + i) = vcvts_n_s32_f32(a2[i + 3], 0x20uLL);
    }
  }

  return IOConnectCallStructMethod(*(a1 + 20), 0x45u, v10, 0x88uLL, 0, 0);
}

uint64_t kern_SwapSignal(uint64_t a1, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  input[1] = a3;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x14u, input, 2u, 0, 0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_SwapWaitWithTimeout(uint64_t a1, unsigned int a2, unsigned int a3, double a4)
{
  input[4] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  input[1] = a3;
  input[2] = (a4 * 1000.0);
  input[3] = 0xAAAAAAAAAAAAAAAALL;
  result = IOConnectCallScalarMethod(*(a1 + 20), 6u, input, 3u, 0, 0);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_SwapCancel(uint64_t a1, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = a2;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x34u, v4, 1u, 0, 0);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_SwapCancelAll(uint64_t a1)
{
  input[2] = *MEMORY[0x277D85DE8];
  v2 = (*(a1 + 2984))();
  input[0] = HIDWORD(v2);
  input[1] = v2;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x51u, input, 2u, 0, 0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_SwapGetCurrent(uint64_t a1, _DWORD *a2)
{
  outputCnt = 1;
  if (!a2)
  {
    return 3758097090;
  }

  output = 0xAAAAAAAAAAAAAAAALL;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x5Bu, 0, 0, &output, &outputCnt);
  if (!result)
  {
    *a2 = output;
  }

  return result;
}

uint64_t kern_SwapCancelAllGetCurrent(uint64_t a1, _DWORD *a2)
{
  outputCnt = 1;
  if (!a2)
  {
    return 3758097090;
  }

  output = 0xAAAAAAAAAAAAAAAALL;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x5Cu, 0, 0, &output, &outputCnt);
  if (!result)
  {
    *a2 = output;
  }

  return result;
}

uint64_t kern_SetIdleBuffer(uint64_t a1, __IOSurface *a2)
{
  result = setIdleBuffer(a1, a2);
  if (!result)
  {
    result = 3758097090;
    if (a1)
    {
      v4 = *(a1 + 2424);
      if (v4)
      {

        return v4(a1);
      }
    }
  }

  return result;
}

uint64_t kern_EnableNotifications(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  input[4] = *MEMORY[0x277D85DE8];
  input[0] = NotifyCallbackFuncs[a2];
  input[1] = a1;
  input[2] = a2;
  input[3] = 0;
  v4 = a1 + (a2 << 6);
  *(v4 + 1576) = a3;
  *(v4 + 1520) = a4;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x48u, input, 4u, 0, 0);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_DisableNotifications(uint64_t a1, unsigned int a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = 0u;
  v4[1] = a2;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x48u, v4, 4u, 0, 0);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_ChangeFrameInfo(uint64_t a1, unsigned int a2)
{
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = 3;
  input[1] = a2;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x49u, input, 2u, 0, 0);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_SupportedFrameInfo(uint64_t a1, unsigned int a2, _DWORD *a3, void *outputStruct, _DWORD *a5)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  v11 = 64;
  outputCnt = 2;
  output = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  result = IOConnectCallMethod(*(a1 + 20), 0x4Au, input, 1u, 0, 0, &output, &outputCnt, outputStruct, &v11);
  v8 = v13;
  *a3 = output;
  *a5 = v8;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_SetColorRemapMode(uint64_t a1, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = a2;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x33u, v4, 1u, 0, 0);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_SwapSetBlit(uint64_t a1, IOSurfaceRef buffer, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v10 = 3758097090;
  v11 = (a1 + 1114);
  v12 = *(a1 + 1114);
  if (v12 < 6)
  {
    if (buffer)
    {
      v16 = fabs(a4) == INFINITY;
      if (fabs(a3) != INFINITY && !v16 && a5 != 0.0 && a6 != 0.0)
      {
        v20 = fabs(a8) == INFINITY;
        if (fabs(a7) != INFINITY && !v20 && a9 != 0.0 && a10 != 0.0)
        {
          ID = IOSurfaceGetID(buffer);
          v10 = 0;
          v25 = (a1 + 36 * v12 + 1118);
          *v25 = ID;
          v25[1] = a3;
          v25[2] = a4;
          v25[3] = a5;
          v25[4] = a6;
          v25[5] = a7;
          v25[6] = a8;
          v25[7] = a9;
          v25[8] = a10;
          ++*v11;
        }
      }
    }
  }

  else
  {
    syslog(3, "%s - exceeded max number of blits: %d\n", "IOReturn kern_SwapSetBlit(IOMobileFramebufferRef, IOSurfaceRef, CGRect, CGRect, uint32_t)", 6);
  }

  return v10;
}

uint64_t kern_GetLayerDefaultSurface(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  input[0] = 0xAAAAAAAAAAAAAAAALL;
  input[1] = 0xAAAAAAAAAAAAAAAALL;
  v12 = 1;
  if (!a2)
  {
    connect = -1431655766;
    output = 0xAAAAAAAAAAAAAAAALL;
    pthread_mutex_lock((a1 + 2072));
    if (!*(a1 + 1400))
    {
      v6 = *(a1 + 1508);
      *&v7 = v6;
      *(&v7 + 1) = HIDWORD(v6);
      *input = v7;
      v8 = IOConnectCallScalarMethod(*(a1 + 20), 3u, input, 2u, &output, &v12);
      if (v8)
      {
        v3 = v8;
        goto LABEL_7;
      }

      v11 = output;
      connect = output;
      if (!output)
      {
        v3 = IOServiceOpen(*(a1 + 16), *MEMORY[0x277D85F48], 3u, &connect);
        if (!v3)
        {
          *(a1 + 1400) = IOSurfaceLookupFromMachPort(connect);
          IOServiceClose(connect);
        }

        goto LABEL_7;
      }

      *(a1 + 1400) = IOSurfaceLookupFromMachPort(output);
      mach_port_deallocate(*MEMORY[0x277D85F48], v11);
    }

    v3 = 0;
LABEL_7:
    *a3 = *(a1 + 1400);
    pthread_mutex_unlock((a1 + 2072));
    goto LABEL_8;
  }

  v3 = 3758097084;
LABEL_8:
  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t kern_CopyLayerDisplayedSurface(uint64_t a1, unsigned int a2, IOSurfaceRef *a3)
{
  v3 = 3758097090;
  if (a2 <= 3 && a1 && a3)
  {
    output = 0xAAAAAAAAAAAAAAAALL;
    pthread_mutex_lock((a1 + 2072));
    outputCnt = 1;
    input = a2;
    v3 = IOConnectCallScalarMethod(*(a1 + 20), 0x53u, &input, 1u, &output, &outputCnt);
    if (!v3)
    {
      v7 = output;
      v8 = IOSurfaceLookupFromMachPort(output);
      mach_port_deallocate(*MEMORY[0x277D85F48], v7);
      *a3 = v8;
    }

    pthread_mutex_unlock((a1 + 2072));
  }

  return v3;
}

uint64_t kern_GetID(uint64_t a1, _DWORD *a2)
{
  outputCnt = 1;
  if (!a2)
  {
    return 3758097090;
  }

  output = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock((a1 + 2072));
  if (*(a1 + 2136))
  {
    v4 = 0;
  }

  else
  {
    v4 = IOConnectCallScalarMethod(*(a1 + 20), 7u, 0, 0, &output, &outputCnt);
    if (!v4)
    {
      *(a1 + 2136) = output;
    }
  }

  pthread_mutex_unlock((a1 + 2072));
  *a2 = *(a1 + 2136);
  return v4;
}

uint64_t kern_SurfaceIsReplaceable(uint64_t a1, IOSurfaceRef buffer, uint64_t a3, BOOL *a4)
{
  output = 0;
  input = IOSurfaceGetID(buffer);
  outputCnt = 1;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x31u, &input, 1u, &output, &outputCnt);
  *a4 = output != 0;
  return result;
}

uint64_t kern_GetRunLoopSource(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v5 = a1 + (a2 << 6);
  shouldFreeInfo = -86;
  memset(&context, 0, sizeof(context));
  InfoKeyInitialize(a1);
  pthread_mutex_lock((a1 + 2072));
  if (!*(v5 + 1544) && !*(v5 + 1536))
  {
    if (a2 == 3 && *(a1 + 3840) == 1)
    {
      NotificationPort = IODataQueueAllocateNotificationPort();
      *(v5 + 1552) = NotificationPort;
      if (!NotificationPort)
      {
        syslog(3, "IODataQueueAllocateNotificationPort failed\n");
        goto LABEL_15;
      }

      if (MEMORY[0x223DF82D0](*(a1 + 20), 3, NotificationPort, 0))
      {
        syslog(3, "IOConnectSetNotificationPort failed, error: %d\n");
        goto LABEL_15;
      }

      *(v5 + 1560) = 0;
      v16 = 0xAAAAAAAAAAAAAAAALL;
      v17 = 0xAAAAAAAAAAAAAAAALL;
      if (MEMORY[0x223DF82C0](*(a1 + 20), 3, *MEMORY[0x277D85F48], &v17, &v16, 1))
      {
        syslog(3, "IOConnectMapMemory failed, error: %d\n");
        goto LABEL_15;
      }

      *(v5 + 1560) = v17;
      context.info = a1;
      v14 = *MEMORY[0x277CBECE8];
      v15 = CFMachPortCreateWithPort(*MEMORY[0x277CBECE8], *(v5 + 1552), FrameInfoNotifyFuncIOShq, &context, &shouldFreeInfo);
      *(v5 + 1568) = v15;
      RunLoopSource = CFMachPortCreateRunLoopSource(v14, v15, 0);
    }

    else
    {
      v7 = IONotificationPortCreate(*MEMORY[0x277CD28A0]);
      *(v5 + 1528) = v7;
      LODWORD(v17) = notificationLimit[v4];
      v8 = *MEMORY[0x277D85F48];
      MachPort = IONotificationPortGetMachPort(v7);
      if (MEMORY[0x223DF8660](v8, MachPort, 1, &v17, 1))
      {
        syslog(3, "Lib:couldn't set mach port limit\n");
      }

      v10 = *(a1 + 20);
      v11 = IONotificationPortGetMachPort(*(v5 + 1528));
      MEMORY[0x223DF82D0](v10, a2, v11, 0);
      RunLoopSource = IONotificationPortGetRunLoopSource(*(v5 + 1528));
    }

    *(v5 + 1536) = RunLoopSource;
  }

LABEL_15:
  pthread_mutex_unlock((a1 + 2072));
  return *(v5 + 1536);
}

uint64_t kern_SetTVOutMode(uint64_t a1, unsigned int a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 2072));
  if ((*(a1 + 1448) & 1) == 0)
  {
    *(a1 + 1432) = 0u;
  }

  v7[0] = a2;
  v4 = IOConnectCallScalarMethod(*(a1 + 20), 0xAu, v7, 1u, 0, 0);
  pthread_mutex_unlock((a1 + 2072));
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t kern_SetTVOutSignalType(uint64_t a1, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = a2;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x10u, v4, 1u, 0, 0);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_SetWSSInfo(uint64_t a1, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  input[1] = a3;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0xBu, input, 2u, 0, 0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_SetWhiteOnBlackMode(uint64_t a1, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = a2;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x13u, v4, 1u, 0, 0);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_GetColorRemapMode(uint64_t a1, int *a2)
{
  output[1] = *MEMORY[0x277D85DE8];
  outputCnt = 1;
  if (a2)
  {
    output[0] = 0xAAAAAAAAAAAAAAAALL;
    result = IOConnectCallScalarMethod(*(a1 + 20), 0x39u, 0, 0, output, &outputCnt);
    v4 = output[0];
    if (result)
    {
      v4 = 6;
    }

    *a2 = v4;
  }

  else
  {
    result = 3758097090;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_EnableStatistics(uint64_t a1, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = a2;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0xDu, v4, 1u, 0, 0);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_SetDebugFlags(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  input[2] = *MEMORY[0x277D85DE8];
  outputCnt = 1;
  output = 0xAAAAAAAAAAAAAAAALL;
  input[0] = a2;
  input[1] = a3;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0xFu, input, 2u, &output, &outputCnt);
  if (a4)
  {
    *a4 = output;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_SetFlags(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  input[2] = *MEMORY[0x277D85DE8];
  outputCnt = 1;
  output = 0xAAAAAAAAAAAAAAAALL;
  input[0] = a2;
  input[1] = a3;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0xEu, input, 2u, &output, &outputCnt);
  if (a4)
  {
    *a4 = output;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_GetGammaTable(uint64_t a1, void *a2)
{
  v2 = 3758097085;
  if (a2)
  {
    pthread_mutex_lock((a1 + 2072));
    v5 = *(a1 + 2152);
    if (v5)
    {
LABEL_3:
      memcpy(a2, v5, 0xC0CuLL);
      v2 = 0;
LABEL_16:
      pthread_mutex_unlock((a1 + 2072));
      return v2;
    }

    v6 = malloc_type_malloc(0xC0CuLL, 0x100004026944624uLL);
    *(a1 + 2152) = v6;
    if (v6)
    {
      outputStructCnt = 3084;
      v7 = IOConnectCallStructMethod(*(a1 + 20), 0x1Bu, 0, 0, v6, &outputStructCnt);
      v8 = -536870199;
      if (outputStructCnt == 3084)
      {
        v8 = 0;
      }

      if (v7)
      {
        v2 = v7;
      }

      else
      {
        v2 = v8;
      }

      v5 = *(a1 + 2152);
      if (!v7 && outputStructCnt == 3084)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v5 = 0;
    }

    free(v5);
    *(a1 + 2152) = 0;
    goto LABEL_16;
  }

  return 3758097090;
}

uint64_t kern_SetDisplayDevice(uint64_t a1, unsigned int a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a2 <= 4)
  {
    pthread_mutex_lock((a1 + 2072));
    if ((*(a1 + 1448) & 1) == 0)
    {
      *(a1 + 1432) = 0u;
    }

    v7[0] = a2;
    v2 = IOConnectCallScalarMethod(*(a1 + 20), 0x16u, v7, 1u, 0, 0);
    pthread_mutex_unlock((a1 + 2072));
  }

  else
  {
    v2 = 3758097090;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t kern_SetDigitalOutMode(uint64_t a1, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 2072));
  if ((*(a1 + 1448) & 1) == 0)
  {
    *(a1 + 1432) = 0u;
  }

  input[0] = a2;
  input[1] = a3;
  v6 = IOConnectCallScalarMethod(*(a1 + 20), 0x17u, input, 2u, 0, 0);
  pthread_mutex_unlock((a1 + 2072));
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t kern_GetSupportedDigitalOutModes(uint64_t a1, void *a2, void *a3)
{
  *a2 = 0;
  *a3 = 0;
  v6 = *(a1 + 2160);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 2160) = 0;
  }

  v7 = 3758097084;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return 3758097090;
  }

  v9 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 2160) = Mutable;
  if (Mutable)
  {
    CFProperty = IORegistryEntryCreateCFProperty(v8, @"ColorElements", v9, 0);
    if (CFProperty)
    {
      v12 = CFProperty;
      v13 = CFGetTypeID(CFProperty);
      TypeID = CFArrayGetTypeID();
      v15 = *(a1 + 2160);
      if (v13 != TypeID)
      {
        CFRelease(v15);
        *(a1 + 2160) = 0;
        v21 = v12;
        goto LABEL_14;
      }

      CFDictionarySetValue(v15, @"ColorElements", v12);
      *a2 = v12;
      CFRelease(v12);
      v16 = IORegistryEntryCreateCFProperty(v8, @"TimingElements", v9, 0);
      if (v16)
      {
        v17 = v16;
        v18 = CFGetTypeID(v16);
        v19 = CFArrayGetTypeID();
        v20 = *(a1 + 2160);
        if (v18 == v19)
        {
          CFDictionarySetValue(v20, @"TimingElements", v17);
          *a3 = v17;
          CFRelease(v17);
          return 0;
        }

        CFRelease(v20);
        *(a1 + 2160) = 0;
        v21 = v17;
LABEL_14:
        CFRelease(v21);
        return v7;
      }
    }

    CFRelease(*(a1 + 2160));
    *(a1 + 2160) = 0;
  }

  return v7;
}

uint64_t kern_GetHDCPDownstreamState(uint64_t a1, void *outputStruct)
{
  if (!outputStruct)
  {
    return 3758097090;
  }

  outputStructCnt = 16;
  if (IOConnectCallStructMethod(*(a1 + 20), 0x18u, 0, 0, outputStruct, &outputStructCnt))
  {
    v4 = *(a1 + 2160) != 0;
    *outputStruct = 0x1000150434448;
    outputStruct[1] = (v4 << 27);
  }

  return 0;
}

uint64_t kern_HDCPSendRequest(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  input[4] = *MEMORY[0x277D85DE8];
  v5 = 3758097090;
  if (a1 && a2 && a4)
  {
    if (*(a1 + 2064) == 1)
    {
      a4();
      v5 = 0;
    }

    else
    {
      input[0] = a2;
      input[1] = a3;
      input[2] = IOMobileFramebufferHdcpNotifyFunc;
      input[3] = a1;
      *(a1 + 1704) = a4;
      *(a1 + 1648) = a5;
      v5 = IOConnectCallScalarMethod(*(a1 + 20), 0x2Fu, input, 4u, 0, 0);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t kern_HDCPGetReply(uint64_t a1, _OWORD *a2, uint64_t *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  HDCPDownstreamState = 3758097090;
  if (a1 && a2 && a3)
  {
    if (*(a1 + 2064) == 1)
    {
      input[0] = 0xAAAAAAAAAAAAAAAALL;
      input[1] = 0xAAAAAAAAAAAAAAAALL;
      if (*a3 < 0x10)
      {
        syslog(4, "IOMFB: hdcp reply too small for upstread header\n");
      }

      else
      {
        *a3 = 16;
        HDCPDownstreamState = kern_GetHDCPDownstreamState(a1, input);
        if (!HDCPDownstreamState)
        {
          *a2 = *input;
        }
      }
    }

    else
    {
      output = 0xAAAAAAAAAAAAAAAALL;
      input[0] = a2;
      *(a1 + 1704) = 0;
      *(a1 + 1648) = 0;
      input[1] = *a3;
      outputCnt = 1;
      HDCPDownstreamState = IOConnectCallScalarMethod(*(a1 + 20), 0x30u, input, 2u, &output, &outputCnt);
      if (!HDCPDownstreamState)
      {
        *a3 = output;
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return HDCPDownstreamState;
}

uint64_t kern_GetDotPitch(uint64_t a1, _DWORD *a2)
{
  outputCnt = 1;
  if (!a2)
  {
    return 3758097090;
  }

  output = 0xAAAAAAAAAAAAAAAALL;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x1Cu, 0, 0, &output, &outputCnt);
  if (!result)
  {
    *a2 = output;
  }

  return result;
}

uint64_t kern_GetDotPitchFloat(uint64_t a1, float *a2)
{
  outputCnt = 1;
  if (!a2)
  {
    return 3758097090;
  }

  output = 0xAAAAAAAAAAAAAAAALL;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x5Au, 0, 0, &output, &outputCnt);
  if (!result)
  {
    *a2 = output;
  }

  return result;
}

uint64_t kern_GetDisplayArea(uint64_t a1, void *outputStruct)
{
  if (!outputStruct)
  {
    return 3758097090;
  }

  outputStructCnt = 8;
  return IOConnectCallStructMethod(*(a1 + 20), 0x1Du, 0, 0, outputStruct, &outputStructCnt);
}

uint64_t kern_EnableDisableDithering(uint64_t a1, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = a2;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x1Eu, v4, 1u, 0, 0);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_SetUnderrunColor(uint64_t a1, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = a2;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x1Fu, v4, 1u, 0, 0);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_EnableDisableVideoPowerSavings(uint64_t a1, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = a2;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x21u, v4, 1u, 0, 0);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_SetVideoDACGain(uint64_t a1, float a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = vcvtd_n_u64_f64(a2, 0xBuLL);
  if (v4[0] <= 0xFFF)
  {
    result = IOConnectCallScalarMethod(*(a1 + 20), 0x22u, v4, 1u, 0, 0);
  }

  else
  {
    result = 3758097090;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_SetLine21Data(uint64_t a1, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = a2;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x23u, v4, 1u, 0, 0);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_SPLCSetBrightness(uint64_t a1, unsigned int a2)
{
  input[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 2144);
  input[0] = a2;
  input[1] = v2;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x42u, input, 2u, 0, 0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_SPLCGetBrightness(uint64_t a1, _DWORD *a2)
{
  output[1] = *MEMORY[0x277D85DE8];
  outputCnt = 1;
  output[0] = 0;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x43u, 0, 0, output, &outputCnt);
  if (!result)
  {
    if (a2)
    {
      result = 0;
      *a2 = output[0];
    }

    else
    {
      result = 3758097090;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_SetBlock(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v12 = (a6 + 2);
  MEMORY[0x28223BE20]();
  v14 = v22 - v13;
  if (v12)
  {
    memset(v22 - v13, 170, 8 * v12);
    *v14 = a2;
    *(v14 + 1) = 0;
    v15 = (v14 + 8);
    if (!a6)
    {
      v16 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    *v14 = a2;
    *(v14 + 1) = 0;
    v15 = (v14 + 8);
  }

  v17 = 0;
  do
  {
    *&v14[8 * (v17 + 2)] = *(a5 + 4 * v17);
    ++v17;
  }

  while (a6 != v17);
  v16 = *v15;
LABEL_8:
  if (v16 >= a4)
  {
    result = 0;
  }

  else
  {
    do
    {
      if (v16 + 4096 <= a4)
      {
        v18 = 4096;
      }

      else
      {
        v18 = a4 - v16;
      }

      result = IOConnectCallMethod(*(a1 + 20), 0x4Eu, v14, v12, (v16 + a3), v18, 0, 0, 0, 0);
      v16 = *(v14 + 1) + 4096;
      *(v14 + 1) = v16;
    }

    while (v16 < a4 && result == 0);
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_SwapWARSettings(uint64_t a1, int a2, _OWORD *a3)
{
  pthread_mutex_lock((a1 + 2072));
  *(a1 + 849) = a2;
  *(a1 + 853) = *a3;
  pthread_mutex_unlock((a1 + 2072));
  return 0;
}

uint64_t kern_GetLinkQuality(uint64_t a1)
{
  output[1] = *MEMORY[0x277D85DE8];
  outputCnt = 1;
  output[0] = 0;
  if (IOConnectCallScalarMethod(*(a1 + 20), 0x50u, 0, 0, output, &outputCnt))
  {
    result = 0x80000000;
  }

  else
  {
    result = LODWORD(output[0]);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_GetBufBlock(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v12 = (a6 + 2);
  MEMORY[0x28223BE20]();
  v14 = v22 - v13;
  if (v12)
  {
    memset(v22 - v13, 170, 8 * v12);
    *v14 = a2;
    *(v14 + 1) = 0;
    v15 = (v14 + 8);
    if (!a6)
    {
      v16 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    *v14 = a2;
    *(v14 + 1) = 0;
    v15 = (v14 + 8);
  }

  v17 = 0;
  do
  {
    *&v14[8 * (v17 + 2)] = *(a5 + 4 * v17);
    ++v17;
  }

  while (a6 != v17);
  v16 = *v15;
LABEL_8:
  if (v16 >= a4)
  {
    result = 0;
  }

  else
  {
    do
    {
      if (v16 + 4096 <= a4)
      {
        v18 = 4096;
      }

      else
      {
        v18 = a4 - v16;
      }

      result = IOConnectCallMethod(*(a1 + 20), 0x55u, v14, v12, (v16 + a3), v18, 0, 0, 0, 0);
      v16 = *(v14 + 1) + 4096;
      *(v14 + 1) = v16;
    }

    while (v16 < a4 && result == 0);
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_SetClamshellState(uint64_t a1, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = a2;
  result = IOConnectCallScalarMethod(*(a1 + 20), 0x59u, v4, 1u, 0, 0);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kern_egest_timestamp(uint64_t a1, uint64_t a2)
{
  if (!a2 || *(a1 + 2148))
  {
    return a2;
  }

  v4 = mach_continuous_time();
  v5 = mach_absolute_time();
  return (a2 - v4 + v5) & ~((a2 - v4 + v5) >> 63);
}

uint64_t IOMobileFramebufferGetServiceObject(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t IOMobileFramebufferSwapSetBackgroundColor(uint64_t a1, float a2, float a3, float a4)
{
  if (!a1)
  {
    return 3758097090;
  }

  result = 0;
  v6 = vcvtms_s32_f32((a2 * 255.0) + 0.5);
  v7 = vcvtms_s32_f32((a3 * 255.0) + 0.5);
  v8 = vcvtms_s32_f32((a4 * 255.0) + 0.5);
  v9 = v6 & ~(v6 >> 31);
  if (v9 >= 255)
  {
    v9 = 255;
  }

  v10 = v7 & ~(v7 >> 31);
  if (v10 >= 255)
  {
    v10 = 255;
  }

  v11 = v8 & ~(v8 >> 31);
  if (v11 >= 255)
  {
    v11 = 255;
  }

  *(a1 + 364) = (v11 << 16) | (v10 << 8) | v9 | 0xFF000000;
  *(a1 + 356) |= 0x8000000080000000;
  return result;
}

uint64_t IOMobileFramebufferSwapUIEdgeBlendMode(uint64_t a1, unsigned int a2, int a3, float a4)
{
  result = 3758097090;
  if (a1 && a2 <= 1 && a4 >= -1.0 && a4 <= 0.0)
  {
    v6 = a1 + 4 * a2;
    *(v6 + 260) = a3;
    *(v6 + 276) = a4;
    syslog(5, "IOMFB framebuffer->transaction.uiEdgeMode[layerIndex] = %d d \n", a3);
    syslog(5, "IOMFB framebuffer->transaction.uiSoftEdgeCoverage[layerIndex] = %f f \n", *(v6 + 276));
    return 0;
  }

  return result;
}

uint64_t IOMobileFramebufferSwapSetVideoDestEdgeAlpha(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 388) = a2;
  *(a1 + 396) = a3;
  return 0;
}

uint64_t IOMobileFramebufferSwapSetGammaTable(uint64_t a1, unsigned int a2)
{
  result = 3758097090;
  if (a1)
  {
    if (a2 <= 2)
    {
      result = 0;
      *(a1 + 368) = a2;
    }
  }

  return result;
}

uint64_t IOMobileFramebufferSetContrast()
{
  v0 = MEMORY[0x28223BE20]();
  v34 = *MEMORY[0x277D85DE8];
  result = 3758097090;
  if (v0 && *(v0 + 2656))
  {
    v3 = v1;
    memset(v30, 170, sizeof(v30));
    v4 = *(v0 + 2664);
    if (v4 && !v4(v0, v30))
    {
      memset(v33, 170, sizeof(v33));
      memset(v32, 170, sizeof(v32));
      memset(__b, 170, sizeof(__b));
      v5 = vcvtms_u32_f32((v3 * 0.5) * 257.0);
      LODWORD(v6) = vcvtmd_u64_f64((1.0 - (v3 * 0.5)) * 257.0);
      if (v5 >= 256)
      {
        v7 = 256;
      }

      else
      {
        v7 = v5;
      }

      if (v6 >= 256)
      {
        v6 = 256;
      }

      else
      {
        v6 = v6;
      }

      if (v5 < 1)
      {
        v15 = 0;
      }

      else
      {
        v8 = v30[0];
        v9 = v30[257];
        v10 = __b;
        v11 = v32;
        v12 = v33;
        v13 = v7;
        v14 = v30[514];
        do
        {
          *v12++ = v8;
          *v11++ = v9;
          *v10++ = v14;
          --v13;
        }

        while (v13);
        v15 = v7;
      }

      if (v6 > v15)
      {
        v16 = ((v6 & ~(v6 >> 31)) - (v7 & ~(v7 >> 31)));
        v17 = v6 - v15;
        v18 = 257.0 / v16;
        v19 = &__b[4 * v15];
        v20 = &v32[4 * v15];
        v21 = &v33[4 * v15];
        v22 = 0.0;
        do
        {
          v23 = vcvtms_u32_f32(v22);
          *v21++ = v30[v23];
          *v20++ = v30[v23 + 257];
          *v19++ = v30[v23 + 514];
          v22 = v18 + v22;
          --v17;
        }

        while (v17);
        v15 = v6;
      }

      if (v15 <= 0x100)
      {
        v24 = v30[256];
        v25 = v30[513];
        v26 = 4 * v15;
        v27 = v30[770];
        do
        {
          *&v33[v26] = v24;
          *&v32[v26] = v25;
          *&__b[v26] = v27;
          v26 += 4;
        }

        while (v26 != 1028);
      }

      memcpy(v30, v33, 0x404uLL);
      memcpy(&v30[257], v32, 0x404uLL);
      memcpy(&v30[514], __b, 0x404uLL);
      v28 = *(v0 + 2648);
      if (v28)
      {
        v28(v0, v30);
      }
    }

    result = (*(v0 + 2656))(v0, v3);
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

CFArrayRef IOMobileFramebufferCreateDisplayList(const __CFAllocator *a1)
{
  iomfb_populate_all_display_infos();
  v2 = s_display_infos_len;
  if (!s_display_infos_len)
  {
    return 0;
  }

  return CFArrayCreate(a1, s_displays, v2, 0);
}

uint64_t IOMobileFramebufferOpenByName(const __CFString *a1, uint64_t *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  iomfb_populate_all_display_infos();
  if (!a1 || !a2)
  {
    syslog(3, " %s:  Bad Argument\n", "IOMobileFramebufferOpenByName");
    result = 3758097090;
    goto LABEL_34;
  }

  v4 = 0;
  *a2 = 0;
  v5 = s_display_infos;
  while (1)
  {
    if (!*v5)
    {
      syslog(3, "\n%s: Name is null idx=%d", "IOMobileFramebufferOpenByName", v4);
LABEL_10:
      v7 = 0;
LABEL_11:
      v8 = -536870212;
      goto LABEL_31;
    }

    if (CFStringCompare(a1, *v5, 0) == kCFCompareEqualTo)
    {
      break;
    }

    ++v4;
    v5 += 20;
    if (v4 == 16)
    {
      goto LABEL_10;
    }
  }

  if (*(v5 + 2) != 2)
  {
    display = iomfb_get_display(v5, a2);
    if (!display)
    {
      v11 = *a2;
LABEL_23:
      v19 = *(v5 + 2);
      *(v11 + 2144) = v19;
      if (s_thread_notified == 1)
      {
        input[0] = v19;
        v20 = *(v11 + 20);
      }

      else
      {
        sleep(3u);
        if (s_thread_notified != 1)
        {
          v8 = 0;
          goto LABEL_30;
        }

        v21 = *a2;
        input[0] = *(v5 + 2);
        v20 = *(v21 + 20);
      }

      v7 = 1;
      IOConnectCallScalarMethod(v20, 0x58u, input, 1u, 0, 0);
      v8 = 0;
      goto LABEL_31;
    }

    v8 = display;
    goto LABEL_30;
  }

  if (!s_virt_context_len)
  {
    syslog(3, "IOMFB: no virtual display context installed\n");
    v7 = 1;
    goto LABEL_11;
  }

  v9 = *(v5 + 4);
  v10 = _ioMobileFramebufferAlloc();
  if (!v10)
  {
    syslog(3, "IOMFB: framebuffer allocation failed\n");
    v8 = -536870211;
    goto LABEL_30;
  }

  v11 = v10;
  v12 = *MEMORY[0x277CBECE8];
  v13 = MEMORY[0x277CBF138];
  v14 = MEMORY[0x277CBF150];
  *(v10 + 3000) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v11 + 3008) = CFDictionaryCreateMutable(v12, 0, v13, v14);
  Mutable = CFDictionaryCreateMutable(v12, 0, v13, v14);
  *(v11 + 3016) = Mutable;
  v8 = -536870211;
  if (!*(v11 + 3000))
  {
LABEL_30:
    v7 = 1;
    goto LABEL_31;
  }

  v16 = Mutable;
  v17 = *(v11 + 3008);
  v7 = 1;
  if (v17 && v16)
  {
    setIntValue(v17, @"MaxSrcRectWidth", 1920);
    setIntValue(*(v11 + 3008), @"MaxSrcRectTotal", 2073600);
    setIntValue(*(v11 + 3008), @"MaxSrcBufferWidth", 1919);
    setIntValue(*(v11 + 3008), @"MaxSrcBufferHeight", 1079);
    setIntValue(*(v11 + 3016), @"RGBLayer_MinScaleFraction", 1);
    setIntValue(*(v11 + 3016), @"RGBLayer_MaxScale", 1);
    setIntValue(*(v11 + 3016), @"YUVLayer_MinScaleFraction", 1);
    setIntValue(*(v11 + 3016), @"YUVLayer_MaxScale", 1);
    CFDictionarySetValue(*(v11 + 3000), @"IOMFBMaxSrcPixels", *(v11 + 3008));
    CFDictionarySetValue(*(v11 + 3000), @"IOMFBScalingLimits", *(v11 + 3016));
    *(v11 + 3440) = 0u;
    *(v11 + 3424) = 0u;
    *(v11 + 3408) = 0u;
    *(v11 + 3392) = 0u;
    *(v11 + 3376) = 0u;
    *(v11 + 3360) = 0u;
    *(v11 + 3344) = 0u;
    *(v11 + 3328) = 0u;
    *(v11 + 3312) = 0u;
    *(v11 + 3296) = 0u;
    *(v11 + 3280) = 0u;
    *(v11 + 3264) = 0u;
    *(v11 + 3248) = 0u;
    *(v11 + 3232) = 0u;
    *(v11 + 3216) = 0u;
    *(v11 + 3200) = 0u;
    *(v11 + 3184) = 0u;
    *(v11 + 3168) = 0u;
    *(v11 + 3152) = 0u;
    *(v11 + 3136) = 0u;
    *(v11 + 3120) = 0u;
    *(v11 + 3104) = 0u;
    *(v11 + 3088) = 0u;
    *(v11 + 3072) = 0u;
    *(v11 + 3040) = &s_virt_funcs;
    *(v11 + 3032) = s_virt_contexts[v9];
    *(v11 + 2704) = virt_GetSupportedDigitalOutModes;
    *(v11 + 2680) = virt_SetDigitalOutMode;
    *(v11 + 2192) = virt_GetLayerDefaultSurface;
    *(v11 + 2208) = virt_GetDisplaySize;
    *(v11 + 2584) = kern_RequestPowerChange;
    *(v11 + 2216) = kern_GetID;
    *(v11 + 2224) = virt_CopyProperty;
    *(v11 + 2232) = virt_SwapSetLayer;
    *(v11 + 2248) = virt_SwapSetEventWait;
    *(v11 + 2256) = virt_SwapSetEventSignalOnGlass;
    *(v11 + 2264) = virt_SwapSetEventSignal;
    *(v11 + 2280) = virt_SwapDebugInfo;
    *(v11 + 2296) = iomfb_SwapSetTimestamp;
    *(v11 + 2312) = iomfb_SwapSetTimestamps;
    *(v11 + 2416) = virt_SwapBegin;
    *(v11 + 2424) = virt_SwapEnd;
    *(v11 + 2464) = virt_SwapSignal;
    *(v11 + 2472) = virt_SwapWait;
    *(v11 + 2480) = virt_SwapWaitWithTimeout;
    *(v11 + 2488) = virt_SwapCancel;
    *(v11 + 2800) = virt_GetRunLoopSource;
    *(v11 + 2544) = virt_EnableNotifications;
    *(v11 + 2552) = virt_DisableNotifications;
    *(v11 + 2720) = virt_GetHDCPDownstreamState;
    *(v11 + 2712) = iomfb_GetHDCPAuthenticationProtocol;
    *(v11 + 2728) = virt_HDCPSendRequest;
    *(v11 + 2736) = virt_HDCPGetReply;
    *(v11 + 2744) = virt_GetProtectionOptions;
    *(v11 + 2624) = virt_EnableStatistics;
    *(v11 + 2920) = virt_CreateStatistics;
    *(v11 + 2984) = virt_gest_timestamp;
    *(v11 + 2992) = virt_gest_timestamp;
    *(v11 + 16) = 0;
    *a2 = v11;
    goto LABEL_23;
  }

LABEL_31:
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *input = 0u;
  v24 = 0u;
  CFStringGetCString(a1, input, 128, 0x8000100u);
  syslog(3, " %s: Framebuffer found=%d return %d Name = %s\n", "IOMobileFramebufferOpenByName", v7, v8, input);
  if (v7)
  {
    result = v8;
  }

  else
  {
    result = 3758097090;
  }

LABEL_34:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOMobileFramebufferInstallVirtualDisplay(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v4 = *a3;
  v5 = a3[2];
  xmmword_280B0A998 = a3[1];
  unk_280B0A9A8 = v5;
  s_virt_funcs = v4;
  v6 = a3[3];
  v7 = a3[4];
  v8 = a3[6];
  xmmword_280B0A9D8 = a3[5];
  unk_280B0A9E8 = v8;
  xmmword_280B0A9B8 = v6;
  unk_280B0A9C8 = v7;
  v9 = a3[7];
  v10 = a3[8];
  v11 = a3[10];
  xmmword_280B0AA18 = a3[9];
  unk_280B0AA28 = v11;
  xmmword_280B0A9F8 = v9;
  unk_280B0AA08 = v10;
  s_virt_contexts = a4;
  s_virt_context_len = 1;
  return 0;
}

uint64_t IOMobileFramebufferGetSecondaryDisplay(uint64_t *a1)
{
  iomfb_populate_all_display_infos();
  v2 = s_display_infos_len;
  if (!s_display_infos_len)
  {
    return 3758097088;
  }

  for (i = s_display_infos; (i[19] & 1) != 0 || *(i + 2) == 2; i += 20)
  {
    if (!--v2)
    {
      return 3758097088;
    }
  }

  return iomfb_get_display(i, a1);
}

uint64_t IOMobileFramebufferEnableMirroring(uint64_t a1, uint64_t a2, unsigned int a3)
{
  input[1] = *MEMORY[0x277D85DE8];
  v10 = -1431655766;
  v11 = -1;
  v12 = 0xAAAAAAAAFFFFFFFFLL;
  if (!a1 || !a2)
  {
    v7 = 3758097090;
    syslog(4, "IOMFB: missing framebuffer for mirorr enable\n");
    goto LABEL_6;
  }

  v13 = -1431655766;
  IsMainDisplay = IOMobileFramebufferIsMainDisplay(a1, &v13);
  if (!IsMainDisplay)
  {
    v7 = 3758097090;
    if (!v13)
    {
      goto LABEL_6;
    }

    if (a3)
    {
      IsMainDisplay = IOMobileFrameBufferGetMirroringCapability(a2, &v10);
      if (IsMainDisplay)
      {
        goto LABEL_4;
      }

      if (v10 != 1)
      {
        goto LABEL_6;
      }
    }

    input[0] = a3;
    v7 = IOConnectCallScalarMethod(*(a1 + 20), 0x29u, input, 1u, 0, 0);
    if (v7)
    {
      syslog(4, "IOMFB: mirror enable kernel failure\n");
    }

    else if (a3)
    {
      v7 = 0;
      *(a2 + 3488) = a1;
      *(a1 + 3496) = a2;
      goto LABEL_6;
    }

    *(a2 + 3488) = 0;
    *(a1 + 3496) = 0;
    goto LABEL_6;
  }

LABEL_4:
  v7 = IsMainDisplay;
LABEL_6:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t IOMobileFrameBufferGetMirroringCapability(uint64_t a1, void *a2)
{
  v2 = 3758097090;
  if (a1 && a2)
  {
    v6 = -1431655766;
    if (IOMobileFramebufferIsMainDisplay(a1, &v6) || !v6)
    {
      outputStructCnt = 20;
      return IOConnectCallStructMethod(*(a1 + 20), 0x2Au, 0, 0, a2, &outputStructCnt);
    }

    else
    {
      syslog(5, "Error -  IOMobileFrameBufferGetMirroringCapability called on internal framebuffer \n");
      return 3758097126;
    }
  }

  return v2;
}

uint64_t IOMobileFramebufferSetRenderingAngle(uint64_t a1, float *a2)
{
  if (a1 && a2)
  {
    v10 = -1431655766;
    IsMainDisplay = IOMobileFramebufferIsMainDisplay(a1, &v10);
    if (IsMainDisplay | v10)
    {
      v5 = (*a2 * 180.0) / 3.14159265;
      inputStruct = v5;
      HIDWORD(v6) = -1527099483 * v5;
      LODWORD(v6) = HIDWORD(v6);
      if ((v6 >> 1) < 0x2D82D83)
      {
        v7 = IOConnectCallStructMethod(*(a1 + 20), 0x2Bu, &inputStruct, 4uLL, 0, 0);
        if (v7)
        {
          syslog(4, "IOMobileFramebufferSetRenderingAngle - kernel rejected the rendering angle trap\n");
          *(a1 + 3504) = 0;
        }

        else
        {
          *(a1 + 3504) = inputStruct;
        }
      }

      else
      {
        v7 = 3758097126;
        syslog(4, "IOMobileFramebufferSetRenderingAngle error - angle needs to be a multiple of 90\n");
      }
    }

    else
    {
      v7 = 3758097126;
      syslog(4, "IOMobileFramebufferSetRenderingAngle - can only set rending angle for internal display\n");
    }
  }

  else
  {
    syslog(4, "IOMobileFramebufferSetRenderingAngle - bad argument\n");
    return 3758097090;
  }

  return v7;
}

uint64_t IOMobileFramebufferSetMirrorContentRegion(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (!a1)
  {
    return 3758097090;
  }

  v5 = a2;
  v6 = a3;
  *v10 = v5;
  *&v10[1] = v6;
  v7 = a4;
  v8 = a5;
  *&v10[2] = v7;
  *&v10[3] = v8;
  return IOConnectCallStructMethod(*(a1 + 20), 0x2Cu, v10, 0x10uLL, 0, 0);
}

uint64_t IOMobileFramebufferGetMirrorError(uint64_t a1, _DWORD *a2)
{
  v2 = 3758097090;
  if (a1 && a2)
  {
    if (*(a1 + 3488))
    {
      v2 = 0;
      *a2 = 0;
    }

    else
    {
      syslog(3, "IOMobileFramebufferGetMirrorError - no mirror source\n");
    }
  }

  return v2;
}

uint64_t IOMobileFramebufferReadyForSwap(void *a1, BOOL *a2, uint64_t a3)
{
  v13 = 0.0;
  v14 = 0.0;
  result = 3758097090;
  if (a1)
  {
    if (a2)
    {
      v12 = -1431655766;
      result = IOMobileFramebufferIsMainDisplay(a1, &v12);
      if (!result)
      {
        if (v12)
        {
          v7 = 1;
        }

        else
        {
          v8 = a1[436];
          if (v8)
          {
            v9 = *(v8 + 3504);
            v10 = *(v8 + 2208);
            if (v10)
            {
              v10();
            }
          }

          else
          {
            v11 = a1[276];
            if (v11)
            {
              v11(a1, &v13);
            }

            v9 = 0;
          }

          v7 = (*(a1[380] + 120))(a1[379], v9, a3, 1, 0, 0, v13, v14) == 0;
        }

        result = 0;
        *a2 = v7;
      }
    }
  }

  return result;
}

uint64_t IOMobileFramebufferGetWirelessSurface(uint64_t a1, double a2, double a3, uint64_t a4, IOSurfaceRef *a5)
{
  v9 = (*(a1 + 2992))();

  return IOMobileFramebufferGetWirelessSurfaceWithOptions(a1, v9, a5, 0, a2, a3);
}

uint64_t IOMobileFramebufferKernelTests(uint64_t a1, _DWORD *inputStruct)
{
  if (*inputStruct < 0x15u)
  {
    v4 = *(a1 + 20);

    return IOConnectCallStructMethod(v4, 0x38u, inputStruct, 0x9CuLL, 0, 0);
  }

  else
  {
    syslog(3, "%s: passed %d surfaces, > %d\n", "IOReturn IOMobileFramebufferKernelTests(IOMobileFramebufferRef, struct IOMFBKernelTestsArguments)", *inputStruct, 20);
    return 3758097090;
  }
}

uint64_t IOMFBGainEncoderEmitEmptyRows(_DWORD *a1, unsigned int a2)
{
  if (IOMFBgainencoder_emit_empty_rows(a1, a2))
  {
    return 0;
  }

  else
  {
    return 3758097084;
  }
}

uint64_t IOMFBGainEncoderRepeatPreviousRow()
{
  if (IOMFBgainencoder_repeat_row())
  {
    return 0;
  }

  else
  {
    return 3758097084;
  }
}

uint64_t IOMFBGainMapRetain(uint64_t result)
{
  if (result)
  {
    atomic_fetch_add((result + 4), 1u);
  }

  return result;
}

uint64_t IOMobileFramebufferSwapSetGainMap(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 3464);
  if (v4)
  {
    IOMFBGainMapRelease(a1, v4);
  }

  v5 = (a1 + 1030);
  *(a1 + 1034) = 1;
  if (a2)
  {
    *v5 = *a2;
    *(a1 + 3464) = a2;
    atomic_fetch_add(a2 + 1, 1u);
  }

  else
  {
    *v5 = 0;
    *(a1 + 3464) = 0;
  }

  return 0;
}

uint64_t IOMobileFramebufferSetTwilightStrength(uint64_t a1, float a2)
{
  v2 = 0.0;
  if (a2 >= 0.0)
  {
    v2 = a2;
  }

  if (a2 <= 1.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1.0;
  }

  *(a1 + 1042) = (2 * (v3 * 2147483650.0)) | 1;
  return 0;
}

uint64_t IOMobileFramebufferSetAmmoliteStrength(uint64_t a1, float a2)
{
  v2 = 0.0;
  if (a2 >= 0.0)
  {
    v2 = a2;
  }

  if (a2 <= 1.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1.0;
  }

  *(a1 + 1046) = (2 * (v3 * 2147483650.0)) | 1;
  return 0;
}

uint64_t IOMobileFramebufferCalibrationBegin(uint64_t a1)
{
  if (!a1)
  {
    return 3758097090;
  }

  v5 = -1431655766;
  result = IOMobileFramebufferIsMainDisplay(a1, &v5);
  if (!result)
  {
    if (v5)
    {
      v4 = 1;
      v3 = *(a1 + 2912);
      if (v3)
      {
        v3(a1, 20, 1, &v4);
      }

      return 0;
    }

    else
    {
      syslog(3, "IOMobileFramebufferCalibrationBegin called on external framebuffer \n");
      return 3758097126;
    }
  }

  return result;
}

uint64_t IOMobileFramebufferCalibrationToolboxCommand(uint64_t a1, int a2, unsigned int *a3, size_t a4, _DWORD *a5, uint64_t a6)
{
  v55 = 0;
  v54 = 0;
  v6 = 3758097090;
  if (!a1)
  {
    return v6;
  }

  v56 = -1431655766;
  IsMainDisplay = IOMobileFramebufferIsMainDisplay(a1, &v56);
  if (IsMainDisplay)
  {
    return IsMainDisplay;
  }

  if (!v56)
  {
    syslog(3, "IOMobileFramebufferCalibrationBegin called on external framebuffer \n");
    return 3758097126;
  }

  if (a2 > 16908289)
  {
    if (a2 != 16908293)
    {
      if (a2 != 16908290)
      {
        goto LABEL_22;
      }

      LODWORD(input[0]) = -1;
      v20 = *(a1 + 2904);
      if (v20)
      {
        v20(a1, 96, input, 4, 0, 0);
      }

      if (!a5 || a6 != 4)
      {
        return v6;
      }

      v6 = 0;
      v21 = input[0];
LABEL_21:
      *a5 = v21;
      return v6;
    }

    v6 = 0;
    if (a5 && a6 == 8)
    {
      v29 = UserCalibration_ReadEAN(&v55, &v54);
      if (v29 == -536870160)
      {
        goto LABEL_52;
      }

      v6 = v29;
      if (v29)
      {
        goto LABEL_54;
      }

      if (v54 < 0x25)
      {
LABEL_52:
        v30 = 0;
      }

      else
      {
        v30 = *(v55 + 12);
      }

      v6 = 0;
      *a5 = v30;
    }

LABEL_54:
    v34 = v55;
    if (!v55)
    {
      return v6;
    }

    goto LABEL_78;
  }

  if (a2 == 16842757)
  {
    v6 = 0;
    LODWORD(input[0]) = 0;
    if (!a5 || a6 != 4)
    {
      return v6;
    }

    v25 = *(a1 + 2904);
    if (!v25 || (v25(a1, 99, input, 4, 0, 0), v21 = input[0], *input == 0.0))
    {
      v26 = UserCalibration_ReadEAN(&v55, &v54);
      v27 = v55;
      if (v26 || (v54 < 0x25 ? (v28 = 0) : (v28 = 4 * *(v55 + 2)), v26 = UserCalibration_SetCalibrationData(a1, v55, v28, 0), v26))
      {
        v6 = v26;
        if (!v27)
        {
          return v6;
        }
      }

      else
      {
        v43 = *(a1 + 2904);
        if (v43)
        {
          v43(a1, 99, input, 4, 0, 0);
        }

        v6 = 0;
        *a5 = input[0];
        if (!v27)
        {
          return v6;
        }
      }

      v34 = v27;
      goto LABEL_78;
    }

    v6 = 0;
    goto LABEL_21;
  }

  if (a2 == 16842758)
  {
    v15 = IOServiceMatching("AppleNVMeEAN");
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v15);
    if (!MatchingService)
    {
      return v6;
    }

    v17 = MatchingService;
    connect = -1431655766;
    v18 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect);
    IOObjectRelease(v17);
    if (v18)
    {
      return v6;
    }

    input[0] = 1430470988;
    v19 = IOConnectCallMethod(connect, 5u, input, 1u, 0, 0, 0, 0, 0, 0);
    IOServiceClose(connect);
    if (v19)
    {
      syslog(3, "UserCalibration_EraseEAN   failed \n");
      return v6;
    }

    v39 = 4;
    goto LABEL_72;
  }

LABEL_22:
  if (!a3 && !a4)
  {
    return v6;
  }

  if (a2 > 16842754)
  {
    if (a2 > 16908287)
    {
      switch(a2)
      {
        case 16908288:
          if (*a3)
          {
            v44 = MEMORY[0x277CBED28];
          }

          else
          {
            v44 = MEMORY[0x277CBED10];
          }

          v45 = *v44;
          v46 = *(a1 + 16);
          v47 = @"IOMFBTemperatureCompensationEnable";
          break;
        case 16908291:
          if (*a3)
          {
            v49 = MEMORY[0x277CBED28];
          }

          else
          {
            v49 = MEMORY[0x277CBED10];
          }

          v45 = *v49;
          v46 = *(a1 + 16);
          v47 = @"NormalModeEnable";
          break;
        case 16908289:
          v35 = 0;
          v36 = *a3;
          LODWORD(input[0]) = v36;
          if (v36 != 1 && v36 <= 0xA)
          {
            v37 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, input);
            v38 = IORegistryEntrySetCFProperty(*(a1 + 16), @"APTFixedRR", v37);
            if (v37)
            {
              CFRelease(v37);
            }

            if (v38)
            {
              return 3758097090;
            }

            else
            {
              return 0;
            }
          }

          return v35;
        default:
          return v6;
      }

LABEL_102:
      v33 = IORegistryEntrySetCFProperty(v46, v47, v45) == 0;
      goto LABEL_103;
    }

    if (a2 == 16842755)
    {
      IsMainDisplay = UserCalibration_SetCalibrationData(a1, a3, a4, 1);
      if (IsMainDisplay)
      {
        return IsMainDisplay;
      }

      IsMainDisplay = UserCalibration_WriteEAN(a3, a4);
      if (IsMainDisplay)
      {
        return IsMainDisplay;
      }

      v39 = 2;
LABEL_72:
      input[0] = v39;
      v40 = *(a1 + 2912);
      if (v40)
      {
        v41 = a1;
        v42 = 20;
LABEL_85:
        v40(v41, v42, 1, input);
        return 0;
      }

      return 0;
    }

    if (a2 != 16842756)
    {
      if (a2 != 16842759)
      {
        return v6;
      }

      LODWORD(input[0]) = *a3;
      v31 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, input);
      v32 = IORegistryEntrySetCFProperty(*(a1 + 16), @"CMDegammaMethod", v31);
      if (v31)
      {
        CFRelease(v31);
      }

      v33 = v32 == 0;
LABEL_103:
      if (v33)
      {
        return 0;
      }

      else
      {
        return 3758097090;
      }
    }
  }

  else if (a2 <= 16842751)
  {
    if (a2 == 0x1000000)
    {
      input[0] = *a3;
      v40 = *(a1 + 2912);
      if (v40)
      {
        v41 = a1;
        v42 = 21;
        goto LABEL_85;
      }

      return 0;
    }

    if (a2 != 16777221)
    {
      if (a2 != 16777222)
      {
        return v6;
      }

      if (a4 != 11200)
      {
        return 0;
      }

      v22 = malloc_type_aligned_alloc(0x4000uLL, 0x4000uLL, 0x100004052888210uLL);
      memcpy(v22, a3, 0x2BC0uLL);
      *&v23 = 0xAAAAAAAAAAAAAAAALL;
      *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *input = v23;
      v52 = 0x4000;
      v53 = 0xAAAAAAAAAAAA0000;
      LODWORD(input[0]) = 1;
      LOBYTE(input[1]) = 1;
      v51 = v22;
      v24 = *(a1 + 2896);
      if (v24)
      {
        v6 = v24(a1, 22, input, 40, 0, 0);
      }

      else
      {
        v6 = 3758097095;
      }

      v34 = v22;
LABEL_78:
      free(v34);
      return v6;
    }

    if (*a3)
    {
      v48 = MEMORY[0x277CBED28];
    }

    else
    {
      v48 = MEMORY[0x277CBED10];
    }

    v45 = *v48;
    v46 = *(a1 + 16);
    v47 = @"uniformity2D";
    goto LABEL_102;
  }

  return UserCalibration_SetCalibrationData(a1, a3, a4, 1);
}

uint64_t UserCalibration_ReadEAN(void **a1, _DWORD *a2)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v4 = 3758097090;
  v5 = IOServiceMatching("AppleNVMeEAN");
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v5);
  if (MatchingService)
  {
    v7 = MatchingService;
    connect = -1431655766;
    v8 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect);
    IOObjectRelease(v7);
    if (!v8)
    {
      *a1 = 0;
      output = 0xAAAAAAAAAAAAAAAALL;
      input = 1430470988;
      outputCnt = 1;
      v9 = 3758097136;
      if (!IOConnectCallMethod(connect, 3u, &input, 1u, 0, 0, &output, &outputCnt, 0, 0))
      {
        v10 = output;
        if (output)
        {
          *a2 = output >> 2;
          v11 = malloc_type_malloc(v10, 0x100004052888210uLL);
          *a1 = v11;
          if (v11)
          {
            v18[0] = 1430470988;
            v18[1] = v11;
            v18[2] = output;
            if (!IOConnectCallMethod(connect, 4u, v18, 3u, 0, 0, 0, 0, 0, 0))
            {
              IOServiceClose(connect);
              v9 = 0;
LABEL_12:
              v4 = v9;
              goto LABEL_13;
            }

            v9 = 3758097136;
          }

          else
          {
            v9 = 3758097085;
          }
        }
      }

      IOServiceClose(connect);
      if (*a1)
      {
        free(*a1);
      }

      *a1 = 0;
      syslog(3, "UserCalibration_ReadEAN failed: 0x%X", v9);
      goto LABEL_12;
    }
  }

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t UserCalibration_SetCalibrationData(uint64_t a1, const void *a2, size_t a3, int a4)
{
  if (a3 >> 19)
  {
    return 0;
  }

  if (a4)
  {
    v8 = 3758097090;
    if (!a1 || (v9 = *(a1 + 2584)) == 0 || (v8 = v9(a1, 0), v8))
    {
      syslog(3, "UserCalibration_SetCalibrationData Power up Failed with %x\n", v8);
      return v8;
    }
  }

  v10 = malloc_type_aligned_alloc(0x4000uLL, (a3 + 0x3FFF) & 0xFC000, 0x100004052888210uLL);
  memcpy(v10, a2, a3);
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16 = v11;
  v19 = -1431655766;
  LODWORD(v16) = 1;
  DWORD2(v16) = a3;
  v17 = v10;
  v18 = (a3 + 0x3FFF) & 0xFC000;
  if (!a1)
  {
    free(v10);
    v8 = 3758097095;
    syslog(3, "UserCalibration_SetCalibrationData Failed with %x\n");
    return v8;
  }

  v12 = *(a1 + 2896);
  if (v12)
  {
    v8 = v12(a1, 97, &v16, 32, 0, 0);
    free(v10);
    if (!v8)
    {
      if (a4)
      {
        v13 = *(a1 + 2584);
        if (v13)
        {
          v8 = v13(a1, 1);
          if (!v8)
          {
            return 0;
          }
        }

        else
        {
          v8 = 3758097090;
        }

        syslog(3, "UserCalibration_SetCalibrationData Power up Failed with %x\n");
        return v8;
      }

      return 0;
    }
  }

  else
  {
    free(v10);
    v8 = 3758097095;
  }

  syslog(3, "UserCalibration_SetCalibrationData Failed with %x\n", v8);
  v15 = *(a1 + 2584);
  if (v15)
  {
    v15(a1, 1);
  }

  return v8;
}

uint64_t UserCalibration_WriteEAN(const void *a1, size_t a2)
{
  input[3] = *MEMORY[0x277D85DE8];
  v4 = 3758097090;
  v5 = IOServiceMatching("AppleNVMeEAN");
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v5);
  if (MatchingService)
  {
    v7 = MatchingService;
    connect = -1431655766;
    v8 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect);
    IOObjectRelease(v7);
    if (!v8)
    {
      output = 0;
      outputCnt = 1;
      v9 = (a2 + 4095) & 0xFFFFFFFFFFFFF000;
      v10 = malloc_type_aligned_alloc(0x1000uLL, v9, 0x100004052888210uLL);
      memcpy(v10, a1, a2);
      input[0] = 1430470988;
      input[1] = v10;
      input[2] = v9;
      v11 = IOConnectCallMethod(connect, 2u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
      free(v10);
      if (v11)
      {
        syslog(3, "UserCalibration_WriteEAN EANSize write failed  input_buffer_size 0x%zx ret 0x%x \n", v9, v11);
      }

      else
      {
        v4 = 0;
      }

      IOServiceClose(connect);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t IOMobileFrameBufferGetAutoLuminanceBoost(uint64_t a1, int *a2)
{
  v2 = 3758097090;
  if (a1)
  {
    v8 = -1;
    v9 = -1431655766;
    IsMainDisplay = IOMobileFramebufferIsMainDisplay(a1, &v9);
    if (IsMainDisplay)
    {
      return IsMainDisplay;
    }

    else if (v9)
    {
      v7 = *(a1 + 2904);
      if (v7)
      {
        v2 = v7(a1, 119, &v8, 4, 0, 0);
        if (!v2)
        {
          *a2 = v8;
        }
      }

      else
      {
        return 3758097095;
      }
    }

    else
    {
      return 3758097126;
    }
  }

  return v2;
}

uint64_t IOMobileFramebufferGetPulseWidthMaximization(uint64_t a1, BOOL *a2)
{
  valuePtr = 0;
  if (!a1)
  {
    return 3758097090;
  }

  v8 = -1431655766;
  result = IOMobileFramebufferIsMainDisplay(a1, &v8);
  if (!result)
  {
    if (v8)
    {
      v5 = *(a1 + 2224);
      if (v5)
      {
        v6 = v5(a1, @"enablePulseWidthMaximization");
        result = 3758097136;
        if (v6)
        {
          CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr);
          CFRelease(v6);
          result = 0;
          *a2 = valuePtr == 1;
        }
      }

      else
      {
        return 3758097136;
      }
    }

    else
    {
      return 3758097095;
    }
  }

  return result;
}

uint64_t IOMobileFramebufferSwapSetPulseWidthMaximization(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 2448)) != 0)
  {
    return v1();
  }

  else
  {
    return 3758097095;
  }
}

void find_core_analytics()
{
  v0 = dlopen("/System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics", 2);
  s_core_analytics_lib = v0;
  if (v0)
  {
    s_core_analytics_send_event_fn = dlsym(v0, "analytics_send_event");
    if (s_core_analytics_send_event_fn)
    {
      return;
    }
  }

  else
  {
    syslog(3, "IOMFB: %s not found\n", "/System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics");
  }

  syslog(3, "IOMFB: %s not found\n", "analytics_send_event");
}

IONotificationPort *IOMobileFramebufferHotPlugNotifyFunc(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  result = iomfb_GetMachMessageCount(*(a1 + 1528));
  if (result <= 0)
  {
    v8 = *(a1 + 1576);
    if (v8)
    {
      v9 = *(a1 + 1520);

      return v8(a1, a3 | (a4 << 32), v9);
    }
  }

  return result;
}